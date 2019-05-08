package heigvd.ch.segfaultapi.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import lombok.NonNull;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity

@Table(name = "Utilisateur")
public class Utilisateur {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Getter
    @Setter
    @Column(name = "utilisateur_id")
    private Integer utilisateurID;

    @Column(name = "nom_utilisateur")
    @Getter
    @Setter
    private String nomUtilisateur;

    @Column(name = "mail_utilisateur")
    @Getter
    @Setter
    private String mailUtilisateur;

    @Column(name = "mot_de_passe")
    @Getter
    @Setter
    @JsonIgnore // Cacher mot de passe
    private String motDePasse;

    @Column(name = "role_utilisateur")
    @Getter
    @Setter
    private int roleUtilisateur;

    @Getter
    @Setter
    @ManyToMany
    @JoinTable(
            name = "Appartient",
            joinColumns = @JoinColumn(name ="departement_id"),
            inverseJoinColumns = @JoinColumn(name = "utilisateur_id")
    )
    private Set<Departement> departementSet;

    /*@Getter
    @ManyToOne
    @Setter
    @JoinColumn(name = "role_utilisateur", referencedColumnName = "role_id", insertable= false, updatable=false)
    private Role role;*/
    @ManyToMany(fetch = FetchType.LAZY)
    @Getter
    @JoinTable(name = "user_roles",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles = new HashSet<>();

    /*
    @OneToMany(mappedBy = "Utilisateur")
    private Set<Vote> voteSet;
*/
/*
    @Getter
    @Setter
    @ManyToMany
    @JoinTable(
            name = "Vote",
            joinColumns = @JoinColumn(name ="utilisateur_id"),
            inverseJoinColumns = @JoinColumn(name = "message_id")
    )
    private Set<Message> messageSet;
*/

    public Utilisateur () {
    }

    public Utilisateur ( String nomUtilisateur, String mailUtilisateur, String motDePasse){
        this.nomUtilisateur=nomUtilisateur;
        this.mailUtilisateur=mailUtilisateur;
        this.motDePasse=motDePasse;
    }
    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }
}
