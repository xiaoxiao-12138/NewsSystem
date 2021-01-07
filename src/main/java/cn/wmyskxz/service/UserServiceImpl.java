package cn.wmyskxz.service;

import cn.wmyskxz.dao.UserDao;
import cn.wmyskxz.entity.Category;
import cn.wmyskxz.entity.News;
import cn.wmyskxz.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    @Override
    @Transactional
    public List<Category> findAllcategory() {
        return userDao.findAllcategory();
    }

    @Override
    @Transactional
    public List<News> findAllNews() {
        return userDao.findAllNews();
    }

    @Override
    @Transactional
    public List<News> allNewsByCid(int cid) {
        return userDao.allNewsByCid(cid);
    }

    @Override
    @Transactional
    public News findNewsById(int id) {
        return userDao.findNewsById(id);
    }

    @Override
    @Transactional
    public List<News> findNewsByTitle(String title) {
        return userDao.findNewsByTitle(title);
    }


}