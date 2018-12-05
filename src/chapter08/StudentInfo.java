package chapter08;

public class StudentInfo {
	private String name;
	private int math;
	private int eng;
	private int kor;
	
	//get set
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	
	//함수
	public int sumScore(){
		return math + eng + kor;
	}
	
	public double avgScore(){
		return (math + eng + kor)/3.0;
	}
	
}























