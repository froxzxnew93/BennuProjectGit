package modelo;
// Generated 15-nov-2018 0:20:26 by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * TProfesor generated by hbm2java
 */
public class TProfesor  implements java.io.Serializable {


     private Integer id;
     private String nombre;
     private Date fechaNac;
     private int idAsignatura;
     private int activo;
     private TMantenedorprofe TMantenedorprofe;

    public TProfesor() {
    }

	
    public TProfesor(String nombre, Date fechaNac, int idAsignatura, int activo) {
        this.nombre = nombre;
        this.fechaNac = fechaNac;
        this.idAsignatura = idAsignatura;
        this.activo = activo;
    }
    public TProfesor(String nombre, Date fechaNac, int idAsignatura, int activo, TMantenedorprofe TMantenedorprofe) {
       this.nombre = nombre;
       this.fechaNac = fechaNac;
       this.idAsignatura = idAsignatura;
       this.activo = activo;
       this.TMantenedorprofe = TMantenedorprofe;
    }

    public TProfesor(String parameter, Object object, int parseInt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public Date getFechaNac() {
        return this.fechaNac;
    }
    
    public void setFechaNac(Date fechaNac) {
        this.fechaNac = fechaNac;
    }
    public int getIdAsignatura() {
        return this.idAsignatura;
    }
    
    public void setIdAsignatura(int idAsignatura) {
        this.idAsignatura = idAsignatura;
    }
    public int getActivo() {
        return this.activo;
    }
    
    public void setActivo(int activo) {
        this.activo = activo;
    }
    public TMantenedorprofe getTMantenedorprofe() {
        return this.TMantenedorprofe;
    }
    
    public void setTMantenedorprofe(TMantenedorprofe TMantenedorprofe) {
        this.TMantenedorprofe = TMantenedorprofe;
    }




}


