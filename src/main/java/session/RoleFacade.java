package session;

import entity.Role;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Stateless
public class RoleFacade extends AbstractFacade<Role> {

    @PersistenceContext(unitName = "JPTVR19WebShopPU")
    private EntityManager entityManager;

    @Override
    protected EntityManager getEntityManager() {
        return entityManager;
    }

    public RoleFacade() {
        super(Role.class);
    }

    public Role findByName(String roleName) {
        try {
            return (Role) entityManager.createQuery("SELECT r FROM Role r WHERE r.roleName = :roleName")
                    .setParameter("roleName", roleName)
                    .getSingleResult();
        } catch (Exception e) {
            return null;
        }
    }

}