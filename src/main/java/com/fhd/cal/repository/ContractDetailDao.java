package com.fhd.cal.repository;

import com.fhd.cal.entity.AssetsEntity;
import com.fhd.cal.entity.ContractDetailEntity;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;


/**
 * Created by vincent on 2015/1/5 0005.
 */
public interface ContractDetailDao extends PagingAndSortingRepository<ContractDetailEntity, String>, JpaSpecificationExecutor<ContractDetailEntity> {

    public List<ContractDetailEntity> findByAssetsIdAndTradeType(String assetsId,String tradeType);

}
