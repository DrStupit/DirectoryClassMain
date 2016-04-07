/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Kerev
 */
@Entity
@Table(name="company")
public class PojoCompany {
    
    @Id
    private int compid;
    
    private String compname;
    private String compemail;
    private String comppassword;
    private String compaddress;
    private String compcontact;
    private int catid;

    public int getCompid() {
        return compid;
    }

    public void setCompid(int compid) {
        this.compid = compid;
    }

    public String getCompname() {
        return compname;
    }

    public void setCompname(String compname) {
        this.compname = compname;
    }

    public String getCompemail() {
        return compemail;
    }

    public void setCompemail(String compemail) {
        this.compemail = compemail;
    }

    public String getComppassword() {
        return comppassword;
    }

    public void setComppassword(String comppassword) {
        this.comppassword = comppassword;
    }

    public String getCompaddress() {
        return compaddress;
    }

    public void setCompaddress(String compaddress) {
        this.compaddress = compaddress;
    }

    public String getCompcontact() {
        return compcontact;
    }

    public void setCompcontact(String compcontact) {
        this.compcontact = compcontact;
    }

    public int getCatid() {
        return catid;
    }

    public void setCatid(int catid) {
        this.catid = catid;
    }
    
    
    
}
