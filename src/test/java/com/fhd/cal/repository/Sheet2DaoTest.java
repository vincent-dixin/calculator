package com.fhd.cal.repository;

import com.fhd.cal.entity.AssetsEntity;
import com.fhd.cal.modules.test.spring.SpringTransactionalTestCase;
import org.junit.Test;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ContextConfiguration;

import javax.annotation.Resource;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * Created by vincent on 2015/1/5 0005.
 */
@DirtiesContext
@ContextConfiguration(locations = { "/spring-config.xml" })
public class Sheet2DaoTest extends SpringTransactionalTestCase {

    @Resource
    private Sheet2Dao sheet2Dao;

    @Test
    public void testFindAll() throws Exception {
        assertThat(sheet2Dao.findAll()).hasSize(17284);
        assertThat(sheet2Dao.findBySceneAndSheet1id(1,1)).hasSize(64);
    }
}
