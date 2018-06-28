package cn.mapper;

import cn.pojo.User;

import java.util.List;

/**
 * @author TyCoding
 * @date 2018/6/24 上午9:44
 */
public interface UserMapper {

    List<User> getUser();

    void saveUser(User user);

    void deleteUser(int id);

    void updateUser(User user);

    User findById(int id);
}
