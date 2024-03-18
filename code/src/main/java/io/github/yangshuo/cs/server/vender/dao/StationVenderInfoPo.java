package io.github.yangshuo.cs.server.vender.dao;

import java.util.Objects;

/**
 * @user Jack Yang
 * @since 1.0.0
 */
public class StationVenderInfoPo {
    private int venderId;
    private String venderName;

    public int getVenderId() {
        return venderId;
    }

    public void setVenderId(int venderId) {
        this.venderId = venderId;
    }

    public String getVenderName() {
        return venderName;
    }

    public void setVenderName(String venderName) {
        this.venderName = venderName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        StationVenderInfoPo that = (StationVenderInfoPo) o;
        return venderId == that.venderId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(venderId);
    }

    @Override
    public String toString() {
        return "StationVenderInfoPo{" +
                "id=" + venderId +
                ", name='" + venderName + '\'' +
                '}';
    }
}
