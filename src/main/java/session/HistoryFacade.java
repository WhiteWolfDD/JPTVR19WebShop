package session;

import entity.Buyer;
import entity.History;

import java.util.List;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Stateless
public class HistoryFacade extends AbstractFacade<History> {

    @PersistenceContext(unitName = "JPTVR19WebShopPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public HistoryFacade() {
        super(History.class);
    }

    public List<History> findBoughtProducts(History history) {
        try {
            return em.createQuery("SELECT h FROM History h WHERE h.takeOn = NULL AND h.buyer = :buyer")
                    .setParameter("history", history)
                    .getResultList();
        } catch (Exception e) {
            return null;
        }
    }
}
