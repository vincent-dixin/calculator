package com.fhd.cal.repository;

import static org.assertj.core.api.Assertions.*;

import com.fhd.cal.entity.AssetsEntity;
import com.fhd.cal.modules.test.spring.SpringTransactionalTestCase;
import org.junit.Test;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ContextConfiguration;

import javax.annotation.Resource;

/**
 * Created by vincent on 2015/1/5 0005.
 */
@DirtiesContext
@ContextConfiguration(locations = { "/spring-config.xml" })
public class AssetsDaoTest extends SpringTransactionalTestCase {

    @Resource
    private AssetsDao assetsDao;


    @Test
    public void testFindAll() throws Exception {
        Iterable<AssetsEntity> assetsEntities = assetsDao.findAll();

        assertThat(assetsEntities).hasSize(4);

    }
}
