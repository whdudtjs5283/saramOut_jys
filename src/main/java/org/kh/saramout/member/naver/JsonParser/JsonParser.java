package org.kh.saramout.member.naver.JsonParser;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import org.kh.saramout.member.model.vo.Member;

//넘어온 json파일 member객체에 담기
public class JsonParser {
	JSONParser jsonParser = new JSONParser();
	
	public Member changeJson(String string) throws ParseException {
		
		HashMap<String, Object> map = new HashMap<>();
		JSONParser jsonParser = new JSONParser();
		Member member = new Member();
		
		JSONObject jsonObject = (JSONObject) jsonParser.parse(string);
		
		jsonObject = (JSONObject) jsonObject.get("response");
		
		map.put("email", jsonObject.get("email"));
		map.put("nickname", jsonObject.get("nickname"));
		map.put("name",jsonObject.get("name"));
		
		member.setEmail(map.get("email").toString()); // email -> member.email에 넣기
		
		//member.setNickname(map.get("nickname").toString()); // nickname -> member.nickname 에 넣기
		
		
		return member;
		
	}
}
