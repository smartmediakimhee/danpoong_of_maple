package com.DAO;

import java.util.ArrayList;

public class Uclidian {
	
	public String calDisNear(AttributeDTO attr ,ArrayList<AttributeDTO> db_attr_list, ArrayList<String> db_type_list) {
		// ������ ���� ����� Analysis ���̺� �ִ� ������ ��ƿ� � ������ ���� ���� ������� �Ǻ� �� type�ڵ� ��ȯ
		
		String[] type_array = new String[db_type_list.size()];
		
		for (int i = 0; i < type_array.length; i++) {
			type_array[i] = db_type_list.get(i);
		}
		
		double[] score = new double[db_attr_list.size()];
		
		for (int i = 0; i < score.length; i++) {
			score[i] = sim_distance(attr, db_attr_list.get(i));
		}
		
		for (int i = 0; i < score.length-1; i++) {
			for (int j = i+1; j < score.length; j++) {
				if(score[i] < score[j]) {
					double temp = score[i];
					score[i] = score[j];
					score[j] = temp;
					
					String ttemp = type_array[i];
					type_array[i] = type_array[j];
					type_array[j] = ttemp;
				}
			}
		}
		
		
		return type_array[0];
	}
	
	public String calDisFar(AttributeDTO attr ,ArrayList<AttributeDTO> db_attr_list, ArrayList<String> db_type_list) {
		// ������ ���� ����� Analysis ���̺� �ִ� ������ ��ƿ� � ������ ���� ���� ������� �Ǻ� �� type�ڵ� ��ȯ
		
		String[] type_array = new String[db_type_list.size()];
		
		for (int i = 0; i < type_array.length; i++) {
			type_array[i] = db_type_list.get(i);
		}
		
		double[] score = new double[db_attr_list.size()];
		
		for (int i = 0; i < score.length; i++) {
			score[i] = sim_distance(attr, db_attr_list.get(i));
		}
		
		for (int i = 0; i < score.length-1; i++) {
			for (int j = i+1; j < score.length; j++) {
				if(score[i] < score[j]) {
					double temp = score[i];
					score[i] = score[j];
					score[j] = temp;
					
					String ttemp = type_array[i];
					type_array[i] = type_array[j];
					type_array[j] = ttemp;
				}
			}
		}
		
		
		return type_array[type_array.length-1];
	}
	
	public double sim_distance(AttributeDTO user_attr, AttributeDTO db_attr) {
		// ���� �� ��ü ���� ��Ŭ���� �Ÿ��� ����ϴ� �޼ҵ�
		
		double score = 0;
		
		score += (user_attr.getAlcohol()-db_attr.getAlcohol())*(user_attr.getAlcohol()-db_attr.getAlcohol());
		score += (user_attr.getFlavor()-db_attr.getFlavor())*(user_attr.getFlavor()-db_attr.getFlavor());
		score += (user_attr.getTaste()-db_attr.getTaste())*(user_attr.getTaste()-db_attr.getTaste());
		score += (user_attr.getFeel()-db_attr.getFeel())*(user_attr.getFeel()-db_attr.getFeel());
		score += (user_attr.getAtm()-db_attr.getAtm())*(user_attr.getAtm()-db_attr.getAtm());
		
		System.out.println(score);
		
		return 1/(1+Math.sqrt(score));
		
	}
	
}
