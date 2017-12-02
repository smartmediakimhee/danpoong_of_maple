package com.DAO;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

public class ImotionAnalysis {
	
	private Process ps = null;
	private String[] cmd = null;
	
	private String py = "py";
	private String url = "C:/Users/pc-18/Desktop/TextAnalysis.py";
	private String function = "print";
	
	private String str = null;
	private ArrayList<String> result_list = null;
	
	public ArrayList<String> textImotionAnalysis() {
		/* 리뷰 혹은 포스트의 텍스트 감정분석 코드 */
		cmd = new String[] {py, url, function};
		
		try {
			ps = new ProcessBuilder(cmd).start();
			
			BufferedReader stdOut = new BufferedReader(new InputStreamReader(ps.getInputStream()));
			
			while((str = stdOut.readLine()) != null) {
				result_list.add(str);
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return result_list;
		
	}
}
