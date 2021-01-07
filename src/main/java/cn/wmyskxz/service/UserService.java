package cn.wmyskxz.service;

import cn.wmyskxz.entity.Category;
import cn.wmyskxz.entity.News;
import cn.wmyskxz.entity.User;

import java.util.List;

public interface UserService {

    // 根据 id 寻找对应的 User
    //public User findUserById(int id);

    //查询所有新闻类型
    public List<Category> findAllcategory();

    //查询所有新闻
    public List<News> findAllNews();

    //根据新闻类型查询新闻
    List<News> allNewsByCid(int cid);

    //根据新闻id查询新闻
    News findNewsById(int id);

    //根据新闻标题查询新闻
    List<News> findNewsByTitle(String title);
}