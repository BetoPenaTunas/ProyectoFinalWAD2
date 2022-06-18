package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PersonaDAO implements Validar {

    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps = null;
    ResultSet rs = null;

    @Override
    public int validar(Persona per) {
        int r = 0;
        String sql = "select * from cliente WHERE correo=? AND clave=?";
//        String sql = "select * from cliente;";
        System.out.println("Ya pasé BRO");
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, per.getCorreo());
            ps.setString(2, per.getClave());
            rs = ps.executeQuery();   //Esto retornará un registro;
            while (rs.next()) {
                r += 1;   //Se incrementa en 1, por que el ResultSet tendrá un sólo registro por recorrer
                per.setId(rs.getInt("id"));
                per.setNombre(rs.getString("nombre"));
                per.setApellidos(rs.getString("apellidos"));
                per.setCorreo(rs.getString("correo"));
                per.setClave(rs.getString("clave"));
                per.setEscuela(rs.getString("escuela"));
                per.setDinero(rs.getFloat("dinero"));
                per.setNumero(rs.getString("numero"));
            }
            if (r == 1) {   //Si se recorre una vez, significa que sí encontró el registro
                return 1;
            } else {
                return 0;   //Si r!=1 significa que ResultSet está vacio
            }
        } catch (SQLException e) {
            System.out.println(e);
            System.out.println("Error Al Obtener Datos");
            return 0;
        } finally {
            try {
                if (ps != null) {

                    ps.close();

                }

                if (rs != null) {
                    rs.close();
                }

                if (con != null) {
                    con.close();
                }

            } catch (SQLException ex) {
                System.out.println(ex);
            }
        }

    }

    public void insert(Persona p) {
        try {
            String sql = "insert into cliente values(?,?,?,?,?,?,?,?,?,?);";
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, p.getId());
            ps.setString(2, p.getNombre());
            ps.setString(3, p.getApellidos());
            ps.setString(4, p.getCorreo());
            ps.setString(5, p.getClave());
            ps.setString(6, p.getSexo());
            ps.setString(7, p.getEscuela());
            ps.setFloat(8, p.getDinero());
            ps.setString(9, p.getNumero());
            ps.setInt(10, p.getEdad());
            ps.executeUpdate();

            System.out.println("Se ha insertado el nuevo registro");

        } catch (SQLException ex) {
            System.out.println(ex);
        } finally {

            try {
                if (ps != null) {
                    ps.close();
                }

                if (rs != null) {
                    rs.close();
                }

                if (con != null) {
                    con.close();
                }

            } catch (SQLException ex) {
                System.out.println(ex);
            }

        }

    }

}
