package com.fhd.cal.repository;

import com.fhd.cal.entity.Sheet2Entity;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

/**
 * Created by vincent on 2015/1/7 0007.
 */
public interface Sheet2Dao extends PagingAndSortingRepository<Sheet2Entity, Integer>, JpaSpecificationExecutor<Sheet2Entity> {

    public List<Sheet2Entity> findBySceneAndSheet1id(Integer scene,Integer sheet1_Id);

}
