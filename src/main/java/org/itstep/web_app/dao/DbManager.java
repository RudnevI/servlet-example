package org.itstep.web_app.dao;

import org.itstep.web_app.entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DbManager {

    private static final String URL = "jdbc:sqlite:\\C:\\Users\\РудневИ\\Documents\\SpringServer\\web-app\\identifier.sqlite";

    private static final String INSERT_USER_QUERY = "INSERT INTO users(name, email) VALUES(?, ?)";

    private static final String GET_ALL_USERS_QUERY = "SELECT * FROM users";

    private static final String GET_USER_BY_ID = "SELECT * FROM users WHERE id = ?";



    public static void createUser (User user) throws ClassNotFoundException, SQLException {
    Class.forName("org.sqlite.JDBC");
        try (Connection connection = DriverManager.getConnection(URL);
             PreparedStatement statement = connection.prepareStatement(INSERT_USER_QUERY))


         {
             statement.setString(1, user.getName());
             statement.setString(2, user.getEmail());
             statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static List<User> getAllUsers() throws ClassNotFoundException {
        Class.forName("org.sqlite.JDBC");
        List<User>users = new ArrayList<>();
        try (Connection connection = DriverManager.getConnection(URL);
            PreparedStatement statement = connection.prepareStatement(GET_ALL_USERS_QUERY))

         {
             ResultSet resultSet = statement.executeQuery();

             while(resultSet.next()) {
                 users.add(new User(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3)));
             }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }

    public static User getUser(Integer id) throws ClassNotFoundException {
        Class.forName("org.sqlite.JDBC");
        User user = new User();
        try (Connection connection = DriverManager.getConnection(URL);
             PreparedStatement statement = connection.prepareStatement(GET_USER_BY_ID))

        {
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();

            user.setId(resultSet.getInt(1));
            user.setName(resultSet.getString(2));
            user.setEmail(resultSet.getString(3));

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

}
