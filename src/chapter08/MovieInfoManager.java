package chapter08;

import java.util.ArrayList;

public class MovieInfoManager {
	private ArrayList<MovieInfo> array = null;
	
	public MovieInfoManager(){
		if(array == null){
			array = new ArrayList<>();
		}
	}
	
	public void addMovie(MovieInfo info){
		array.add(info);
	}
	
	public void delMovie(int index){
		array.remove(index);
	}
	
	public ArrayList<MovieInfo> getMovieList(){
		return array;
	}
	
}
