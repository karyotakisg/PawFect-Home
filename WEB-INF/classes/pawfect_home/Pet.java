package pawfect_home;

public class Pet {

    private String pet_name;
    private String kind_of_pet;
    private String breed;
    private int pet_size;
    private String picture;


    public Pet(String pet_name, String kind_of_pet, String breed, int pet_size, String picture) {
        this.pet_name = pet_name;
        this.kind_of_pet = kind_of_pet;
        this.breed = breed;
        this.pet_size = pet_size;
        this.picture = picture;
    }


    public void setPet_name(String pet_name) {
        this.pet_name = pet_name;
    }
    public String getPet_name() {
        return pet_name;
    }


    public void setKind_of_pet(String kind_of_pet) {
        this.kind_of_pet = kind_of_pet;
    }
    public String getKind_of_pet() {
        return kind_of_pet;
    }


    public void setBreed(String breed) {
        this.breed = breed;
    }
    public String getBreed() {
        return breed;
    }


    public void setPet_size(int pet_size) {
        this.pet_size = pet_size;
    }
    public int getPet_size() {
        return pet_size;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
    public String getPicture() {
        return picture;
    }
}