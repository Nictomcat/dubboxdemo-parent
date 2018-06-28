package cn.pojo;

import java.io.Serializable;

/**
 * @author TyCoding
 * @date 2018/6/24 上午9:11
 */
public class User implements Serializable {

    private int id;
    private String name;
    private String age;
    private String interest;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getInterest() {
        return interest;
    }

    public void setInterest(String interest) {
        this.interest = interest;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age='" + age + '\'' +
                ", interest='" + interest + '\'' +
                '}';
    }
}
