package chapter08;

import java.util.ArrayList;

public class StudentInfoManager {
	ArrayList<StudentInfo> array = null;
	
	public StudentInfoManager(){
		if(array == null){
			array = new ArrayList<>();
		}
	}
	
	public void addStudent(StudentInfo info){
		array.add(info);
	}
	
	public ArrayList<StudentInfo> getStudentList(){
		return array;
	}
	
	public StudentInfo getStudentInfo(int i){
		return array.get(i);//array[i]는 배열일때 사용, 리스트일때는 get사용
	}
}
