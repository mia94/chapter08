package chapter08;

import java.util.ArrayList;

public class BookInfoManager {
	private ArrayList<BookInfo> array = null;
	
	public BookInfoManager(){
		if(array == null){
			array = new ArrayList<>();
		}
	}
	
	public void addBook(BookInfo info){
		array.add(info);
	}
	
	public ArrayList<BookInfo> getBookList(){
		return array;
	}
}
