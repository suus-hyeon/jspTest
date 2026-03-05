package study.vo;

public class SungjukVO {
	private String name;
	private String hakbun;
	private int kor;
	private int eng;
	private int mat;
	private int soc;
	private int sci;
	private int tot;
	private double avg;
	private String grade;
	private String hostIP;
	
	public SungjukVO(String name, String hakbun, int kor, int eng, int mat, int soc, int sci, int tot, double avg, String grade, String hostIP) {
		this.name = name;
		this.hakbun = hakbun;
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
		this.avg = avg;
		this.tot = tot;
		this.grade = grade;
		this.soc = soc;
		this.sci = sci;
		this.hostIP = hostIP;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHakbun() {
		return hakbun;
	}
	public void setHakbun(String hakbun) {
		this.hakbun = hakbun;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMat() {
		return mat;
	}
	public void setMat(int mat) {
		this.mat = mat;
	}
	public int getSoc() {
		return soc;
	}
	public void setSoc(int soc) {
		this.soc = soc;
	}
	public int getSci() {
		return sci;
	}
	public void setSci(int sci) {
		this.sci = sci;
	}
	public int getTot() {
		return tot;
	}
	public void setTot(int tot) {
		this.tot = tot;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getHostIP() {
		return hostIP;
	}
	public void setHostIP(String hostIP) {
		this.hostIP = hostIP;
	}
	@Override
	public String toString() {
		return "SungjukVO [name=" + name + ", hakbun=" + hakbun + ", kor=" + kor + ", eng=" + eng + ", mat=" + mat
				+ ", soc=" + soc + ", sci=" + sci + ", tot=" + tot + ", avg=" + avg + ", grade=" + grade + ", hostIP=" + hostIP
				+ "]";
	}
	
}
