package companyDb;

public class companyDo {
	
	private int num;
	private String name;
	private String number;
	private String period;
	private String job;
	private String image;
	
	@Override
	public String toString() {
		return "companyDo [num=" + num + ", name=" + name + ", number=" + number + ", "
				+ "period=" + period + ", job=" + job + ", image=" + image
				+ "]";
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}

