package com.fhd.cal.repository;

import com.fhd.cal.entity.AssetsEntity;
import com.fhd.cal.entity.Sheet1Entity;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by vincent on 2015/1/7 0007.
 */
public interface Sheet1Dao extends PagingAndSortingRepository<Sheet1Entity, Integer>, JpaSpecificationExecutor<Sheet1Entity> {
}
