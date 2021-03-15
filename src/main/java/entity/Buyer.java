package entity;

import java.io.Serializable;

import jakarta.persistence.*;

@Entity
public class Buyer implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String lastname;
    private Integer money;
    @Column(unique = true)
    private String email;
    private String town;
    private String phoneNumber;
    private String buyerDescription;
    private String birthDate;
    private String employee;
    private String employeeCompany;
    private String address;
    private String userWebsite;
    private String userGithub;
    private String userTwitter;
    private String userInstagram;
    private String userFacebook;
    private String userVk;
    private String userTelegram;
    @OneToOne
    private Avatar avatar;

    public Buyer() {
    }

    @Override
    public String toString() {
        return "Buyer{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", lastname='" + lastname + '\'' +
                ", money=" + money +
                ", email='" + email + '\'' +
                ", town='" + town + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", buyerDescription='" + buyerDescription + '\'' +
                ", birthDate='" + birthDate + '\'' +
                ", employee='" + employee + '\'' +
                ", employeeCompany='" + employeeCompany + '\'' +
                ", address='" + address + '\'' +
                ", userWebsite='" + userWebsite + '\'' +
                ", userGithub='" + userGithub + '\'' +
                ", userTwitter='" + userTwitter + '\'' +
                ", userInstagram='" + userInstagram + '\'' +
                ", userFacebook='" + userFacebook + '\'' +
                ", userVk='" + userVk + '\'' +
                ", userTelegram='" + userTelegram + '\'' +
                ", avatar=" + avatar +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Buyer buyer = (Buyer) o;

        if (id != null ? !id.equals(buyer.id) : buyer.id != null) return false;
        if (name != null ? !name.equals(buyer.name) : buyer.name != null) return false;
        if (lastname != null ? !lastname.equals(buyer.lastname) : buyer.lastname != null) return false;
        if (money != null ? !money.equals(buyer.money) : buyer.money != null) return false;
        if (email != null ? !email.equals(buyer.email) : buyer.email != null) return false;
        if (town != null ? !town.equals(buyer.town) : buyer.town != null) return false;
        if (phoneNumber != null ? !phoneNumber.equals(buyer.phoneNumber) : buyer.phoneNumber != null) return false;
        if (buyerDescription != null ? !buyerDescription.equals(buyer.buyerDescription) : buyer.buyerDescription != null)
            return false;
        if (birthDate != null ? !birthDate.equals(buyer.birthDate) : buyer.birthDate != null) return false;
        if (employee != null ? !employee.equals(buyer.employee) : buyer.employee != null) return false;
        if (employeeCompany != null ? !employeeCompany.equals(buyer.employeeCompany) : buyer.employeeCompany != null)
            return false;
        if (address != null ? !address.equals(buyer.address) : buyer.address != null) return false;
        if (userWebsite != null ? !userWebsite.equals(buyer.userWebsite) : buyer.userWebsite != null) return false;
        if (userGithub != null ? !userGithub.equals(buyer.userGithub) : buyer.userGithub != null) return false;
        if (userTwitter != null ? !userTwitter.equals(buyer.userTwitter) : buyer.userTwitter != null) return false;
        if (userInstagram != null ? !userInstagram.equals(buyer.userInstagram) : buyer.userInstagram != null)
            return false;
        if (userFacebook != null ? !userFacebook.equals(buyer.userFacebook) : buyer.userFacebook != null) return false;
        if (userVk != null ? !userVk.equals(buyer.userVk) : buyer.userVk != null) return false;
        if (userTelegram != null ? !userTelegram.equals(buyer.userTelegram) : buyer.userTelegram != null) return false;
        return avatar != null ? avatar.equals(buyer.avatar) : buyer.avatar == null;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (lastname != null ? lastname.hashCode() : 0);
        result = 31 * result + (money != null ? money.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (town != null ? town.hashCode() : 0);
        result = 31 * result + (phoneNumber != null ? phoneNumber.hashCode() : 0);
        result = 31 * result + (buyerDescription != null ? buyerDescription.hashCode() : 0);
        result = 31 * result + (birthDate != null ? birthDate.hashCode() : 0);
        result = 31 * result + (employee != null ? employee.hashCode() : 0);
        result = 31 * result + (employeeCompany != null ? employeeCompany.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (userWebsite != null ? userWebsite.hashCode() : 0);
        result = 31 * result + (userGithub != null ? userGithub.hashCode() : 0);
        result = 31 * result + (userTwitter != null ? userTwitter.hashCode() : 0);
        result = 31 * result + (userInstagram != null ? userInstagram.hashCode() : 0);
        result = 31 * result + (userFacebook != null ? userFacebook.hashCode() : 0);
        result = 31 * result + (userVk != null ? userVk.hashCode() : 0);
        result = 31 * result + (userTelegram != null ? userTelegram.hashCode() : 0);
        result = 31 * result + (avatar != null ? avatar.hashCode() : 0);
        return result;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTown() {
        return town;
    }

    public void setTown(String town) {
        this.town = town;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getBuyerDescription() {
        return buyerDescription;
    }

    public void setBuyerDescription(String buyerDescription) {
        this.buyerDescription = buyerDescription;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getEmployee() {
        return employee;
    }

    public void setEmployee(String employee) {
        this.employee = employee;
    }

    public String getEmployeeCompany() {
        return employeeCompany;
    }

    public void setEmployeeCompany(String employeeCompany) {
        this.employeeCompany = employeeCompany;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUserWebsite() {
        return userWebsite;
    }

    public void setUserWebsite(String userWebsite) {
        this.userWebsite = userWebsite;
    }

    public String getUserGithub() {
        return userGithub;
    }

    public void setUserGithub(String userGithub) {
        this.userGithub = userGithub;
    }

    public String getUserTwitter() {
        return userTwitter;
    }

    public void setUserTwitter(String userTwitter) {
        this.userTwitter = userTwitter;
    }

    public String getUserInstagram() {
        return userInstagram;
    }

    public void setUserInstagram(String userInstagram) {
        this.userInstagram = userInstagram;
    }

    public String getUserFacebook() {
        return userFacebook;
    }

    public void setUserFacebook(String userFacebook) {
        this.userFacebook = userFacebook;
    }

    public String getUserVk() {
        return userVk;
    }

    public void setUserVk(String userVk) {
        this.userVk = userVk;
    }

    public String getUserTelegram() {
        return userTelegram;
    }

    public void setUserTelegram(String userTelegram) {
        this.userTelegram = userTelegram;
    }

    public Avatar getAvatar() {
        return avatar;
    }

    public void setAvatar(Avatar avatar) {
        this.avatar = avatar;
    }

    public Buyer(String name, String lastname, Integer money, String email, String town, String phoneNumber, String buyerDescription, String birthDate, String employee, String employeeCompany, String address, String userWebsite, String userGithub, String userTwitter, String userInstagram, String userFacebook, String userVk, String userTelegram, Avatar avatar) {
        this.name = name;
        this.lastname = lastname;
        this.money = money;
        this.email = email;
        this.town = town;
        this.phoneNumber = phoneNumber;
        this.buyerDescription = buyerDescription;
        this.birthDate = birthDate;
        this.employee = employee;
        this.employeeCompany = employeeCompany;
        this.address = address;
        this.userWebsite = userWebsite;
        this.userGithub = userGithub;
        this.userTwitter = userTwitter;
        this.userInstagram = userInstagram;
        this.userFacebook = userFacebook;
        this.userVk = userVk;
        this.userTelegram = userTelegram;
        this.avatar = avatar;
    }
}