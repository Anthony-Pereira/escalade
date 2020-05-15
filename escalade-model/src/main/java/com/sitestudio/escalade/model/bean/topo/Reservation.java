package com.sitestudio.escalade.model.bean.topo;

import com.sitestudio.escalade.model.bean.compte.Compte;
import com.sitestudio.escalade.model.bean.referentiel.EnumPeriodeJour;

import java.time.LocalDateTime;

public class Reservation {

    private Integer id;
    private Topo topo;
    private LocalDateTime dateReservation;
    private EnumPeriodeJour periodeJour;
    private Compte reservePar;

    public Reservation(Integer id, Topo topo, LocalDateTime dateReservation, EnumPeriodeJour periodeJour, Compte reservePar) {
        this.id = id;
        this.topo = topo;
        this.dateReservation = dateReservation;
        this.periodeJour = periodeJour;
        this.reservePar = reservePar;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Topo getTopo() {
        return topo;
    }

    public void setTopo(Topo topo) {
        this.topo = topo;
    }

    public LocalDateTime getDateReservation() {
        return dateReservation;
    }

    public void setDateReservation(LocalDateTime dateReservation) {
        this.dateReservation = dateReservation;
    }

    public EnumPeriodeJour getPeriodeJour() {
        return periodeJour;
    }

    public void setPeriodeJour(EnumPeriodeJour periodeJour) {
        this.periodeJour = periodeJour;
    }

    public Compte getReservePar() {
        return reservePar;
    }

    public void setReservePar(Compte reservePar) {
        this.reservePar = reservePar;
    }

    @Override
    public String toString() {
        return "Reservation{" +
                "id=" + id +
                ", topo=" + topo +
                ", dateReservation=" + dateReservation +
                ", periodeJour=" + periodeJour +
                ", reservePar=" + reservePar +
                '}';
    }
}
