package cn.wmyskxz.dao;

import cn.wmyskxz.entity.Category;
import cn.wmyskxz.entity.News;
import cn.wmyskxz.entity.User;
import org.apache.ibatis.annotations.Param;

public interface AdminDao {

    //根据用户名、密码查询用户
    User findUser(@Param(value="user")User user);

    //根据id删除新闻类型
    void categoryDelete(int id);

    //根据类型id查询
    Category findCategoryById(int id);

    //根据id修改新闻类型
    void categoryUpdate(@Param(value="category")Category category);

    //发布新闻类型
    void categoryAdd(@Param(value="category")Category category);

    //根据id删除新闻
    void newsDelete(int id);

    //更新新闻
    void newsUpdate(@Param(value = "news") News news);

    //发布新闻
    void newsAdd(@Param(value = "news") News news);
}
