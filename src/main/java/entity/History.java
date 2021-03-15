package entity;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

@Entity
public class History implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @OneToOne()
    private Product product;
    @OneToOne()
    private Buyer buyer;
    @Temporal(TemporalType.TIMESTAMP)
    private Date takeOn;
    private Integer quantity;

    public History() {
    }

    @Override
    public String toString() {
        return "History{" +
                "id=" + id +
                ", product=" + product +
                ", buyer=" + buyer +
                ", takeOn=" + takeOn +
                ", quantity=" + quantity +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        History history = (History) o;

        if (id != null ? !id.equals(history.id) : history.id != null) return false;
        if (product != null ? !product.equals(history.product) : history.product != null) return false;
        if (buyer != null ? !buyer.equals(history.buyer) : history.buyer != null) return false;
        if (takeOn != null ? !takeOn.equals(history.takeOn) : history.takeOn != null) return false;
        return quantity != null ? quantity.equals(history.quantity) : history.quantity == null;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (product != null ? product.hashCode() : 0);
        result = 31 * result + (buyer != null ? buyer.hashCode() : 0);
        result = 31 * result + (takeOn != null ? takeOn.hashCode() : 0);
        result = 31 * result + (quantity != null ? quantity.hashCode() : 0);
        return result;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Buyer getBuyer() {
        return buyer;
    }

    public void setBuyer(Buyer buyer) {
        this.buyer = buyer;
    }

    public Date getTakeOn() {
        return takeOn;
    }

    public void setTakeOn(Date takeOn) {
        this.takeOn = takeOn;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public History(Product product, Buyer buyer, Date takeOn, Integer quantity) {
        this.product = product;
        this.buyer = buyer;
        this.takeOn = takeOn;
        this.quantity = quantity;
    }
}