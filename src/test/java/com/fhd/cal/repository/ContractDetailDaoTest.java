package com.fhd.cal.repository;

import static org.assertj.core.api.Assertions.*;

import com.fhd.cal.entity.AssetsEntity;
import com.fhd.cal.entity.ContractDetailEntity;
import com.fhd.cal.modules.test.spring.SpringTransactionalTestCase;
import org.junit.Test;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ContextConfiguration;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by vincent on 2015/1/6 0006.
 */
@DirtiesContext
@ContextConfiguration(locations = { "/spring-config.xml" })
public class ContractDetailDaoTest extends SpringTransactionalTestCase {

    @Resource
    private ContractDetailDao contractDetailDao;

    @Test
    public void testFindByAssetsAndTradeType() throws Exception {

        List<ContractDetailEntity> contractDetailEntities = contractDetailDao.findByAssetsIdAndTradeType("1", "3");
        assertThat(contractDetailEntities).hasSize(2);

    }
}
