package org.pivotal.gemfire.rest;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.data.gemfire.repository.config.EnableGemfireRepositories;

/**
 * Created by cblack on 11/1/13.
 */

@Configuration
@ImportResource("classpath:spring/cache_config.xml")
@ComponentScan
@EnableGemfireRepositories
public class GemFireConfig {

}
