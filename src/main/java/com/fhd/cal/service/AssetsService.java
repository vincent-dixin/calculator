package com.fhd.cal.service;

import com.fhd.cal.entity.AssetsEntity;
import com.fhd.cal.entity.ContractDetailEntity;
import com.fhd.cal.repository.AssetsDao;
import com.fhd.cal.repository.ContractDetailDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by vincent on 2015/1/5 0005.
 */
@Service
public class AssetsService {

    @Resource
    private AssetsDao assetsDao;

    @Resource
    private ContractDetailDao contractDetailDao;

    public Iterable<AssetsEntity> assetsList() {
        return assetsDao.findAll();
    }

    public List<ContractDetailEntity> contractDetailList(String assetsId,String tradeType) {
        return contractDetailDao.findByAssetsIdAndTradeType(assetsId,tradeType);
    }


}
