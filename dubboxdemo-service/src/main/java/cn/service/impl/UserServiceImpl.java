package cn.service.impl;

import cn.mapper.UserMapper;
import cn.pojo.User;
import cn.service.UserService;
import com.alibaba.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @author TyCoding
 * @date 2018/6/24 上午9:22
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    /**
     * 查询所有用户
     * @return 返回查询结果
     */
    public List<User> getUser() {
        return userMapper.getUser();
    }

    /**
     * 保存用户信息
     * @param user 用户信息
     */
    public void saveUser(User user) {
        userMapper.saveUser(user);
    }

    /**
     * 删除用户信息
     * @param id 需要删除用户信息的Id值
     */
    public void deleteUser(int id) {
        userMapper.deleteUser(id);
    }

    /**
     * 更新用户信息
     * @param user 需要更新的数据
     */
    public void updateUser(User user) {
        userMapper.updateUser(user);
    }

    /**
     * 根据id查询用户信息
     * @param id 用户的id值
     */
    public User findById(int id) {
        return userMapper.findById(id);
    }
}
