package cn.wmyskxz.controller;

import cn.wmyskxz.entity.Category;
import cn.wmyskxz.entity.News;
import cn.wmyskxz.entity.User;
import cn.wmyskxz.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;


@Controller
@RequestMapping("/")
public class UserController {

    @Resource
    private UserService userService;

    //所有新闻展示
    @RequestMapping("/index")
    public String index(Model model){
        List<Category> categories = userService.findAllcategory();
        List<News> news = userService.findAllNews();
        model.addAttribute("categorys",categories);
        model.addAttribute("news",news);
        return "index";
    }

    //根据新闻类型展示
    @RequestMapping("/allNewsById/{cid}")
    public String allNewById(@PathVariable("cid") Integer cid, Model model){
        List<Category> categories = userService.findAllcategory();
        List<News> news = userService.allNewsByCid(cid);
        model.addAttribute("categorys",categories);
        model.addAttribute("news",news);
        return "index";
    }

    //根据新闻id查询新闻
    @RequestMapping("/findNewsById/{id}")
    public String findNewsById(@PathVariable("id") Integer id, Model model){
        News news = userService.findNewsById(id);
        model.addAttribute("news",news);
        return "newsDetail";
    }

    //根据新闻标题查询新闻
    @RequestMapping("/findNewsByTitle")
    public String findNewsByTitle(String title, Model model){
        List<Category> categories = userService.findAllcategory();
        List<News> news = userService.findNewsByTitle(title);
        model.addAttribute("categorys",categories);
        model.addAttribute("news",news);
        return "index";
    }
}