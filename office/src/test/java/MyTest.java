import com.jarod.factory.Connection;
import com.jarod.mapper.UserInfoMapper;
import com.jarod.newpojo.SelectUsernamePassword;
import com.jarod.pojo.FileInfo;
import com.jarod.pojo.UserInfo;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class MyTest {

    private SqlSession session;

    @Before
    public void b1() throws IOException {
        InputStream inputStream = Resources.getResourceAsStream("SqlMapConfig.xml");
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(inputStream);
        session = factory.openSession();
    }
    @Test
    public  void  t1() throws Exception {
        UserInfoMapper userInfoMapper = session.getMapper(UserInfoMapper.class);
        SelectUsernamePassword usernamePassword = new SelectUsernamePassword("123456","123456");
        System.out.println(userInfoMapper.findByUsernameAndPassword(usernamePassword));
    }
    @Test
    public void t2() throws IOException {
        SqlSessionFactory factory= Connection.init();
        SqlSession sqlSession=factory.openSession();
        UserInfoMapper dao=sqlSession.getMapper(UserInfoMapper.class);
        UserInfo userInfo=dao.findbyid(1);
        System.out.println(userInfo.getUsername());
    }
}
