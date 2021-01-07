package cn.wmyskxz.service;

import cn.wmyskxz.dao.AdminDao;
import cn.wmyskxz.entity.Category;
import cn.wmyskxz.entity.News;
import cn.wmyskxz.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao adminDao;

    //根据用户名、密码查询用户
    @Override
    @Transactional
    public User findUser(User user) {
        return adminDao.findUser(user);
    }

    //根据id删除新闻类型
    @Override
    @Transactional
    public void categoryDelete(int id) {
        adminDao.categoryDelete(id);
    }

    //根据类型id查询
    @Override
    @Transactional
    public Category findCategoryById(int id) {
        return adminDao.findCategoryById(id);
    }

    //根据id修改新闻类型
    @Override
    @Transactional
    public void categoryUpdate(Category category) {
        adminDao.categoryUpdate(category);
    }

    //发布新闻类型
    @Override
    @Transactional
    public void categoryAdd(Category category) {
        adminDao.categoryAdd(category);
    }

    //根据id删除新闻
    @Override
    @Transactional
    public void newsDelete(int id){
        adminDao.newsDelete(id);
    }

    //更新新闻
    @Override
    @Transactional
    public void newsUpdate(News news){
        adminDao.newsUpdate(news);
    }

    //发布新闻
    @Override
    @Transactional
    public void newsAdd(News news) {
        adminDao.newsAdd(news);
    }

}
