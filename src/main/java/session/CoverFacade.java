package session;

import entity.Cover;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Stateless
public class CoverFacade extends AbstractFacade<Cover> {

    @PersistenceContext(unitName = "JPTVR19WebShopPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CoverFacade() {
        super(Cover.class);
    }

}