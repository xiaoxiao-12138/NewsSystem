package cn.wmyskxz.controller;

import cn.wmyskxz.entity.Category;
import cn.wmyskxz.entity.News;
import cn.wmyskxz.entity.User;
import cn.wmyskxz.service.AdminService;
import cn.wmyskxz.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/admin")
public class AdminController {

    @Resource
    private AdminService adminService;
    @Resource
    private UserService userService;

    //跳转到登录界面
    @RequestMapping("/login")
    public String login(){
        return "/login";
    }

    //登陆验证
    @PostMapping("/loginVerify")
    public String login(User user, HttpSession session, Model model){
        User admin = adminService.findUser(user);
        if (admin == null) {
            model.addAttribute("msg","用户名或密码错误");
            return "/login";
        }else {
            session.setAttribute("admin",admin);
            List<Category> allCategory = userService.findAllcategory();
            model.addAttribute("allCategory",allCategory);
            return "/categoryList";
        }
    }

    //查看所有新闻类型
    @RequestMapping("/categoryList")
    public String categoryList(Model model){
        List<Category> allCategory = userService.findAllcategory();
        model.addAttribute("allCategory",allCategory);
        return "/categoryList";
    }

    //根据id删除新闻类型
    @RequestMapping("/categoryDelete/{id}")
    public String categoryDelete(@PathVariable("id")int id, Model model){
        adminService.categoryDelete(id);
        return "redirect:/admin/categoryList";
    }

    //跳转到类型更新页面
    @RequestMapping("/categoryIofo/{id}")
    public String categoryUpdate(@PathVariable("id")int id, Model model){
        Category category = adminService.findCategoryById(id);
        model.addAttribute("category",category);
        return "/categoryUpdate";
    }

    //根据id修改类型名称
    @RequestMapping("/categoryUpdate")
    public String categoryUpdate(Category category){
        System.out.println(category.getId() + "   " + category.getCategoryName());
        adminService.categoryUpdate(category);
        return "redirect:/admin/categoryList";
    }

    //跳转到类型发布页面
    @RequestMapping("/categoryInput")
    public String categoryInput(){
        return "/categoryAdd";
    }

    //发布新闻类型
    @RequestMapping("/categoryAdd")
    public String categoryAdd(Category category){
        adminService.categoryAdd(category);
        return "redirect:/admin/categoryList";
    }

    //查看所有新闻
    @RequestMapping("/newsList")
    public String newsList(Model model){
        List<News> allNews = userService.findAllNews();
        List<Category> categorys = userService.findAllcategory();
        model.addAttribute("categorys",categorys);
        model.addAttribute("allNews",allNews);
        return "/newsList";
    }

    //根据id类型查看新闻
    @RequestMapping("/reachNews")
    public String reachNews(Category category,Model model){
        System.out.println("ID是"+category.getId());
        if (category.getId() == 0) {
            return "redirect:/admin/newsList";
        }else {
            List<News> allNews = userService.allNewsByCid(category.getId());
            List<Category> categorys = userService.findAllcategory();
            model.addAttribute("categorys",categorys);
            model.addAttribute("allNews",allNews);
            return "/newsList";
        }
    }

    //跳到新闻详情页面
    @RequestMapping("/newsDetailAdmin/{id}")
    public String newsDetailAdmin(@PathVariable("id")int id, Model model){
        News news = userService.findNewsById(id);
        model.addAttribute("news",news);
        return "/newsDetailAdmin";
    }

    //根据id删除新闻
    @RequestMapping("/newsDelete/{id}")
    public String newsDelete(@PathVariable("id")int id){
        adminService.newsDelete(id);
        return "redirect:/admin/newsList";
    }

    //显示新闻修改详情页
    @RequestMapping("/newsInfo/{id}")
    public String newsInfo(@PathVariable("id") int id,Model model){
        News news = userService.findNewsById(id);
        List<Category> categorys = userService.findAllcategory();
        model.addAttribute("news",news);
        model.addAttribute("categorys",categorys);
        return "/newsUpdate";
    }

    //修改新闻信息
    @RequestMapping("/newsUpdate")
    public String newsUpdate(News news){
        adminService.newsUpdate(news);
        return "redirect:/admin/newsList";
    }

    //跳转到发布新闻页面
    @RequestMapping("/newsInput")
    public String newsInput(Model model){
        List<Category> categorys = userService.findAllcategory();
        model.addAttribute("categorys",categorys);
        return "newsAdd";
    }

    //发布新闻
    @RequestMapping("/newsAdd")
    public String newsAdd(News news){
        news.setIssueTime(new Date());
        adminService.newsAdd(news);
        return "redirect:/admin/newsList";
    }

    //注销
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.setAttribute("admin",null);
        return "redirect:/admin/login";
    }
}