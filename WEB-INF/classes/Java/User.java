package pawfect_home;

public class User   {
    
    private String firstname ;
	private String lastname;
	private String email;
    private long phone;
    private String location;
	private String username;
	private String password;
    
    /**
     * Full constuctor
     *   
     * @param firstname
     * @param lastname
     * @param email
     * @param phone
     * @param location
     * @param username
     * @param password
     */
    public User(String firstname, String lastname, String email, long phone, String location, String username, String password) {        
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.phone = phone;
        this.location = location;
        this.username = username;
        this.password = password;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getPhone() {
        return phone;
    }

    public void setPhone(long phone) {
        this.phone = phone;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public void setPassword(String password) {
        this.password = password;        
    }  

    public String getPassword() {
        return password;
    }


}