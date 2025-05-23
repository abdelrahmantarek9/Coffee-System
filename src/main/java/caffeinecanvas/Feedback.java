package caffeinecanvas;


import java.sql.Date;

public class Feedback {
	private int id;
	private String email;
	private String location;
	private String Dine;
	private String foodQuality;
	private String ServiceQuality;
	private String Cleanliness;
	private String OrderAccuracy;
	private String SpeedOfService;
	private String OverallExperience;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDine() {
		return Dine;
	}
	public void setDine(String dine) {
		Dine = dine;
	}

	public String getFoodQuality() {
		return foodQuality;
	}
	public void setFoodQuality(String foodQuality) {
		this.foodQuality = foodQuality;
	}
	public String getServiceQuality() {
		return ServiceQuality;
	}
	public void setServiceQuality(String serviceQuality) {
		ServiceQuality = serviceQuality;
	}
	public String getCleanliness() {
		return Cleanliness;
	}
	public void setCleanliness(String cleanliness) {
		Cleanliness = cleanliness;
	}
	public String getOrderAccuracy() {
		return OrderAccuracy;
	}
	public void setOrderAccuracy(String orderAccuracy) {
		OrderAccuracy = orderAccuracy;
	}
	public String getSpeedOfService() {
		return SpeedOfService;
	}
	public void setSpeedOfService(String speedOfService) {
		SpeedOfService = speedOfService;
	}
	public String getOverallExperience() {
		return OverallExperience;
	}
	public void setOverallExperience(String overallExperience) {
		OverallExperience = overallExperience;
	}
}