package chapter08;

import java.util.ArrayList;

public class BoardInfoManager {
	ArrayList<BoardInfo> array = null;
	
	public BoardInfoManager(){
		if(array == null){
			array = new ArrayList<>();
		}
	}
	
	public void addBoard(BoardInfo info){
		array.add(info);
	}
	
	public ArrayList<BoardInfo> getBoardList(){
		return array;
	}
	
	public void clearAll(){
		array.clear();
	}
	
	public void remove(int index){
		array.remove(index);
	}
}
