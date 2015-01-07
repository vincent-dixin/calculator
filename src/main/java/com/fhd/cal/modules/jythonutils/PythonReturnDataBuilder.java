package com.fhd.cal.modules.jythonutils;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.builder.ToStringBuilder;

import java.util.ArrayList;
import java.util.List;

public class PythonReturnDataBuilder {
	
	public static List<String[]> dataToList(String data){
		String[] tempStr = PythonReturnDataBuilder.dataToArray(data);
		List<String[]> list = new ArrayList<String[]>(tempStr.length);
		for(String oneArray : tempStr){
			list.add(oneArray.split(","));
		}
		return list;
	}

	public static String[][] dataTo2DArray(String data){
		String[] tempArray = PythonReturnDataBuilder.dataToArray(data);
		String[][] returnData = new String[tempArray.length][];
		for (int i = 0; i < tempArray.length; i++) {
			returnData[i] = tempArray[i].split(",");
		}
		return returnData;
	}
	
	public static String[] dataToArray(String data){
		data = StringUtils.replace(data," ","");
		return data.substring(2, data.length()-2).split("\\],\\[");
	}
	
	public static void main(String[] args) {
		String data = "[[1,2,5],[2,7,4,7],[8,9,23]]";
		String[][] dataToArray = PythonReturnDataBuilder.dataTo2DArray(data);
		for (String[] s : dataToArray) {
			System.out.println(ToStringBuilder.reflectionToString(s));
		}
		List<String[]> dataToList = PythonReturnDataBuilder.dataToList(data);
		for (String[] strings : dataToList) {
			System.out.println(ToStringBuilder.reflectionToString(strings));
		}

		//System.out.println(tempArray);
		
		
		
		
	}
}
