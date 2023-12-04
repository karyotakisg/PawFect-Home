import java.util.ArrayList;
import java.util.List;

public class UserDAO    {

/**
 * UserDAO provides all the necessary methods related to users.
 *  
 * @version 1.0
 */

    /**
	 * This method returns a List with all Users
	 * 
	 * @return List<User>
	 */
	public List <User> getUsers() {

		List <User> users = new ArrayList<User>();
		
		// adding some users for the sake of the example
		users.add(new User("Maria", "Kont", "mkont@gmail.com", 6994325, "Athens", "jdoe", "1111"));
		
		return users;

	} //End of getUsers


    /**
	 * This method is used to authenticate that an account exists.     
	 * 
	 * @param username, String the username
	 * @param password, String the password
	 * @return User, the User Object 
	 * @throws Exception, if the credentials are not valid or an error occurs.
	 */
    public User accountExists(String username, String password) throws Exception {
    
        List<User> users = getUsers();

		for (User user: users) {

			if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
				return user; // credentials are valid, so return the User object
			}

		}
		//credentials are Wrong, so throw an error
		throw new Exception("Wrong username or password");

    } // End of authenticate

    
} //End of class
