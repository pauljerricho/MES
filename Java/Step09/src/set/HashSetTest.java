package set;

import java.util.HashSet;
import java.util.Iterator;

public class HashSetTest {
	/*
	 * Set
	 * 		1. 데이터 중복 X
	 * 		2. 자동 정렬
	 */
	public static void main(String[] args) {
		HashSet<String> set = new HashSet<String>();
		
		
		//데이터 추가
		set.add("JAVA");
		set.add("HTML5/CSS");
		set.add("Database");
		set.add("JavaScript");
		set.add("Jsp");
		set.add("Spring");
		set.add("Android");
		//전체 데이터 조회 1
		/*Iterator<String> it = set.iterator(); //데이터를 처음부터 끝까지 접근할 준비 끝
		while(it.hasNext()) {
			System.out.println(it.next()); //해시값 기준으로 데이터가 들어간다.
		}*/
		//전체 데이터 조회 2
		Object[] arr = set.toArray();
		for(int i = 0; i<arr.length;i++)
			System.out.println(arr[i]);
		
		//데이터 개수
		System.out.println(set.size());
		
		//데이터 삭제
		set.remove("Jsp");
		System.out.println(set);
		
		//set에 내용이 비었나?
		System.out.println(set.isEmpty());
		
		//데이터 비우기
		set.clear();
		System.out.println(set);
		
	}
		
}
