package com.fhd.cal.repository;

import com.fhd.cal.entity.AssetsEntity;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;



/**
 * Created by vincent on 2015/1/5 0005.
 */
public interface AssetsDao extends PagingAndSortingRepository<AssetsEntity, String>, JpaSpecificationExecutor<AssetsEntity> {

}
