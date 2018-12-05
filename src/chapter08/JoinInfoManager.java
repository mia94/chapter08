package chapter08;

import java.util.ArrayList;

public class JoinInfoManager {
	private ArrayList<JoinInfo> array = null;
	
	public JoinInfoManager(){
		if(array == null){
			array = new ArrayList<>();
		}
	}
	
	public void addJoin(JoinInfo info){
		array.add(info);
	}
	
	public void delJoin(JoinInfo info){
		array.remove(info);
	}
	
	public ArrayList<JoinInfo> getJoinList(){
		return array;
	}
}
