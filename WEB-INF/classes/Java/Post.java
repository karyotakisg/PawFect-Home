import java.time.LocalDate;

public class Post{

    private int post_id;
    private LocalDate upload_date;
    private boolean stay_at_owner;
    private LocalDate start_date;
    private LocalDate end_date;
    private int price;
    private String description;


    public Post(int post_id, LocalDate upload_date, boolean stay_at_owner, LocalDate start_date, LocalDate end_date, int price, String description) {
        this.post_id = post_id;
        this.upload_date = upload_date;
        this.stay_at_owner = stay_at_owner;
        this.start_date = start_date;
        this.end_date = end_date;
        this.price = price;
        this.description = description;
    }

    public void setPost_id(int post_id) {
        this.post_id = post_id;
    }
    public int getPost_id() {
        return post_id;
    }


    public void setUpload_date(LocalDate upload_date) {
        this.upload_date = upload_date;
    }
    public LocalDate getUpload_date() {
        return upload_date;
    }


    public void setStay_at_owner(boolean stay_at_owner) {
        this.stay_at_owner = stay_at_owner;
    }
    public boolean getStay_at_owner() {
        return stay_at_owner;
    }


    public void setStart_date(LocalDate start_date) {
        this.start_date = start_date;
    }
    public LocalDate getStart_date() {
        return start_date;
    }


    public void setEnd_date(LocalDate end_date) {
        this.end_date = end_date;
    }
    public LocalDate getEnd_date() {
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

    //public void createPosting(int post_id, LocalDate upload_date, boolean stay_at_owner, LocalDate start_date, LocalDate end_date, int price, String description) {
        //Post Posting1 = new Post(2819372, LocalDate.of(2023, 11, 11),False, LocalDate.of(2023, 12, 11), LocalDate.of(2023, 12, 20), 20,"Zoe is very calm and good with kids, she needs to take her special medicine with her food everyday." );
    //}

    



    













}