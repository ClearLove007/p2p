package p2p.model;

public class Product {

	private int pid;
	private String pname;
	private String starttime;
	private String endtime;
	private int rate;
	private int time;
	private double lowmoney;

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public double getLowmoney() {
		return lowmoney;
	}

	public void setLowmoney(double lowmoney) {
		this.lowmoney = lowmoney;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getStarttime() {
		return starttime;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}

	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", starttime=" + starttime + ", endtime=" + endtime
				+ ", rate=" + rate + ", time=" + time + ", lowmoney=" + lowmoney + "]";
	}

	
}
