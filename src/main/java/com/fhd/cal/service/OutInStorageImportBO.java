package com.fhd.cal.service;

import com.fhd.cal.entity.InStorageDistribution;
import com.fhd.cal.entity.OutStorageDistribution;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by vincent on 2014/12/25 0025.
 */
@Service
public class OutInStorageImportBO {

    public List<OutStorageDistribution> importOutStorage(File excelFile,Integer ignoreRows) {

        List<OutStorageDistribution> outStorageDistributions = new ArrayList<OutStorageDistribution>();

        boolean isE2007 = false;    //判断是否是excel2007格式

        if(excelFile.getName().endsWith("xlsx"))
            isE2007 = true;
        try {
            InputStream input = new FileInputStream(excelFile);  //建立输入流
            Workbook wb  = null;
            //根据文件格式(2003或者2007)来初始化
            if(isE2007)
                wb = new XSSFWorkbook(input);
            else
                wb = new HSSFWorkbook(input);
            Sheet sheet = wb.getSheetAt(0);     //获得第一个表单
            for (int rowIndex = ignoreRows; rowIndex <= sheet.getLastRowNum(); rowIndex++) {
                OutStorageDistribution outStorageDistribution = new OutStorageDistribution();
                Row row = sheet.getRow(rowIndex);  //获得行数据
                System.out.println("Row #" + row.getRowNum());  //获得行号从0开始
                Iterator<Cell> cells = row.cellIterator();    //获得第一行的迭代器
                while (cells.hasNext()) {
                    Cell cell = cells.next();
                    System.out.println("Cell #" + cell.getColumnIndex());
                    switch (cell.getCellType()) {   //根据cell中的类型来输出数据
                        case HSSFCell.CELL_TYPE_NUMERIC:
                            System.out.println(cell.getNumericCellValue());
                            break;
                        case HSSFCell.CELL_TYPE_STRING:
                            System.out.println(cell.getStringCellValue());
                            break;
                        case HSSFCell.CELL_TYPE_BOOLEAN:
                            System.out.println(cell.getBooleanCellValue());
                            break;
                        case HSSFCell.CELL_TYPE_FORMULA:
                            System.out.println(cell.getCellFormula());
                            break;
                        default:
                            System.out.println("unsuported sell type");
                            break;
                    }
                }
                outStorageDistributions.add(outStorageDistribution);
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }



        return outStorageDistributions;
    }

    public List<InStorageDistribution> importInStorage(File excelFile) {
        return null;
    }


}
