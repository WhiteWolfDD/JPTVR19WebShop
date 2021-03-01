package session;

import entity.Cart;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

import java.util.List;

@Stateless
public class CartFacade extends AbstractFacade<Cart> {

    @PersistenceContext(unitName = "JPTVR19WebShopPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CartFacade() {
        super(Cart.class);
    }


    public List<Cart> findCartProducts(Cart cart) {
        try {
            return (List<Cart>) em.createQuery("SELECT c FROM C u WHERE u.product=:product")
                    .setParameter("cart", cart)
                    .getSingleResult();
        } catch (Exception e) {
            return null;
        }
    }
}