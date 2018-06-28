package cn.controller;

import cn.pojo.User;
import cn.service.UserService;
import com.alibaba.dubbo.config.annotation.Reference;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author TyCoding
 * @date 2018/6/24
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Reference
    private UserService userService;

    /**
     * 查询所有用户
     */
    @RequestMapping("/list")
    public String getUser(Model model){
        List list = userService.getUser();
        model.addAttribute("list",list);
        return "page/list";
    }

    /**
     * 跳转到添加用户页
     */
    @RequestMapping(value="/goAdd")
    public String goAdd(){
        return "page/add";
    }

    /**
     * 添加用户
     */
    @RequestMapping("/add")
    public String saveUser(Model model, User user){
        try{
            userService.saveUser(user);
            model.addAttribute("message","添加用户信息成功");
            return "redirect:list.do";
        }catch (Exception e){
            System.out.println("添加数据库信息失败");
            model.addAttribute("message","添加数用户信息失败");
            return "page/info";
        }
    }

    /**
     * 删除用户
     */
    @RequestMapping("/delete")
    public String deleteUser(Model model, int id){
        try{
            userService.deleteUser(id);
            return "redirect:list.do";
        }catch(Exception e){
            model.addAttribute("message","删除用户信息失败");
            return "page/info";
        }
    }

    /**
     * 跳转到用户信息更新页
     */
    @RequestMapping("/goUpdate")
    public String goUpdate(Model model, int id){
        User user = userService.findById(id);
        model.addAttribute("user",user);
        System.out.println(user.getName());
        return "page/update";
    }

    /**
     * 更新用户信息
     */
    @RequestMapping("/update")
    public String updateUpdate(Model model, User user){
        try{
            userService.updateUser(user);
            return "redirect:list.do";
        }catch (Exception e){
            model.addAttribute("message","更新用户信息失败");
            return "page/info";
        }
    }


}
