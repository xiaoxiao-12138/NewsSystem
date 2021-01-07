import cn.wmyskxz.dao.UserDao;
import cn.wmyskxz.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class UserDaoTest {

    @Autowired
    private UserDao userDao;

   /* @Test
    public void testFindUserById() {
        int id = 1;
        User user = userDao.findUserById(id);
        System.out.println(user.getId() + ":" + user.getUsername());
    }*/
}