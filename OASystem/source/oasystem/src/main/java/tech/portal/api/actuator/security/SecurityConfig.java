package tech.portal.api.actuator.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Value("${management.access.iplist}")
    private String iplist;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        //得到iplist列表
        String iprule = "";
        //hasIpAddress('10.0.0.0/16') or hasIpAddress('127.0.0.1/32')
        String[] splitAddress=iplist.split(",");
        for(String ip : splitAddress){
            if (iprule.equals("")) {
                iprule = "hasIpAddress('"+ip+"')";
            } else {
                iprule += " or hasIpAddress('"+ip+"')";
            }
        }
        //String actuatorRule = "hasAnyRole('ADMIN','DEV') or ("+iprule+")";
        String actuatorRule = iprule;

        //login和logout
//        http.formLogin()
//                .defaultSuccessUrl("/home/session")
//                .failureUrl("/login-error.html")
//                .permitAll()
//                .and()
//                .logout();

        //匹配的页面，符合限制才可访问
        http.authorizeRequests()
                .antMatchers("/oasystem/actuator/**").access(actuatorRule);
                //.antMatchers("/goods/**").hasAnyRole("ADMIN","DEV");

        //剩下的页面，允许访问
        http.authorizeRequests().anyRequest().permitAll();

        //禁用CSRF token不然会403
        http.csrf().disable();
    }

//    @Autowired
//    public  void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//        //添加两个账号用来做测试
//        auth.inMemoryAuthentication().passwordEncoder(new BCryptPasswordEncoder())
//                .withUser("lhdadmin")
//                .password(new BCryptPasswordEncoder().encode("123456"))
//                .roles("ADMIN","USER")
//                .and()
//                .withUser("lhduser")
//                .password(new BCryptPasswordEncoder().encode("123456"))
//                .roles("USER");
//    }
}