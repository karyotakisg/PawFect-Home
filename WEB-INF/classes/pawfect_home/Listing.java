package pawfect_home;
import java.sql.Date;


public class Listing{

    private java.sql.Date upload_date;
    private boolean stay_at_owner;
    private java.sql.Date start_date;
    private java.sql.Date end_date;
    private int price;
    private String description;
    private String username;
    private int postid;

    public Listing(java.sql.Date upload_date, boolean stay_at_owner, java.sql.Date start_date, java.sql.Date end_date, int price, String description, String username) {
        this.upload_date = upload_date;
        this.stay_at_owner = stay_at_owner;
        this.start_date = start_date;
        this.end_date = end_date;
        this.price = price;
        this.description = description;
        this.username = username;
    }

    public Listing(java.sql.Date upload_date, boolean stay_at_owner, java.sql.Date start_date, java.sql.Date end_date, int price, String description, String username,int postid) {
        this.upload_date = upload_date;
        this.stay_at_owner = stay_at_owner;
        this.start_date = start_date;
        this.end_date = end_date;
        this.price = price;
        this.description = description;
        this.username = username;
        this.postid = postid;
    }


    public void setUpload_date(java.sql.Date upload_date) {
        this.upload_date = upload_date;
    }
    public java.sql.Date getUpload_date() {
        return upload_date;
    }


    public void setStay_at_owner(boolean stay_at_owner) {
        this.stay_at_owner = stay_at_owner;
    }
    public boolean getStay_at_owner() {
        return stay_at_owner;
    }


    public void setStart_date(java.sql.Date start_date) {
        this.start_date = start_date;
    }
    public java.sql.Date getStart_date() {
        return start_date;
    }


    public void setEnd_date(java.sql.Date end_date) {
        this.end_date = end_date;
    }
    public java.sql.Date getEnd_date() {
        return end_date;
    }


    public void setPrice(int price) {
        this.price = price;
    }
    public int getPrice() {
        return price;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    public String getDescription() {
        return description;
    }

    public void getUsername(String username){
        this.username = username; 
    }
    
    public String getUsername() { 
        return username; 
    }

    public int getPostid() {
        return postid;
    }
    
}