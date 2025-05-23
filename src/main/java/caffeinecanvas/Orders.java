package caffeinecanvas;


import java.sql.Timestamp;

public class Orders {
	private int orderId;
	private double totalprice;
	private Timestamp orderDate;
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	public Timestamp getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}
	public Barista getBarista() {
		return barista;
	}
	public void setBarista(Barista barista) {
		this.barista = barista;
	}
	private Barista barista;


}