package map;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class HashMapTest {
	/*
	 * Map 키값을 이용해서 데이터를 읽어오거나 저장 키값은 중복 X
	 */
	public static void main(String[] args) {
		// 키 값

		HashMap<String, Integer> map = new HashMap<String, Integer>();

		// 데이터 추가
		// 키값 데이터
		map.put("Java", 1000);
		map.put("Database", 2200);
		map.put("js/jQuery", 3300);
		map.put("Java", 3000); // 새값만 들어간다.
		map.put("Jsp", 4004);
		map.put("Android", 5000);

		System.out.println(map);

		// 데이터 읽기
		System.out.println(map.get("Java"));
		System.out.println(map.get("js/jQuery"));
		System.out.println(map.get("Jsp"));
		System.out.println(map.get("Android"));

		// 데이터 갯수
		System.out.println(map.size());

		// 데이터 검색 - contains - key
		System.out.println(map.containsKey("Java"));
		System.out.println(map.containsValue(3300));

		// keySet ---> 맵에 있는 키값을 set 객체로 리턴
		Set<String> key = map.keySet();
		System.out.println(key);

		System.out.println("===============================");
		// 데이터 초기화
		// map.clear();
		// System.out.println(map.isEmpty());

		// 키값을 모를때 맵이 가지고 있는 모든 값을 출력
		Iterator<String> it = key.iterator();
		while (it.hasNext()) {
			String k = it.next();
			System.out.println(k + " " + map.get(k));
		}  

	}

}
