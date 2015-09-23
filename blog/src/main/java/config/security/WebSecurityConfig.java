package config.security;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	// Queries por defecto!!!
	public static final String USERS_BY_USERNAME_QUERY = "select username, password, enabled from users where username = ?";
	public static final String AUTHORITIES_BY_USERNAME_QUERY = "select username, authority from authorities where username = ?";
	@Autowired
	private DataSource dataSource;

	@Bean // Es necesario cuando se activa la seguridad en métodos
	@Override
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		auth
//			.inMemoryAuthentication()
//			.withUser("user").password("123").roles("USER");
		auth
			.jdbcAuthentication()
			.dataSource(dataSource)
			.passwordEncoder(new ShaPasswordEncoder())
			.usersByUsernameQuery(USERS_BY_USERNAME_QUERY)
			.authoritiesByUsernameQuery(AUTHORITIES_BY_USERNAME_QUERY);
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.csrf().disable()
			.authorizeRequests()
				.antMatchers("/admin**", "/app/admin/**").hasRole("USER").and()
			.formLogin()
				.loginProcessingUrl("/entrar")
				.usernameParameter("usuario")
				.passwordParameter("clave")
				.defaultSuccessUrl("/")
				.loginPage("/app/login-form")
				.permitAll()
				.and()
			.logout()
				.logoutUrl("/app-logout")
				.logoutSuccessUrl("/").and()
			.rememberMe()
				.key("rememberMe")
				.rememberMeParameter("remember-me");
	}
}






