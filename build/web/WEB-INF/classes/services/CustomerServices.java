package services;


import dao.UserDAO;
import model.User;
import org.apache.commons.lang.RandomStringUtils;

public class CustomerServices {
    
    public String resetCustomerPassword(String email) {
    UserDAO userDAO = new UserDAO();
    String randomPassword = RandomStringUtils.randomAlphanumeric(10);
    userDAO.changePassword(randomPassword, email);
    return randomPassword;
}
}
