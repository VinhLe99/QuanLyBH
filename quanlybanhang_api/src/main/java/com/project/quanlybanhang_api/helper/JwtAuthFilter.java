package com.project.quanlybanhang_api.helper;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.filter.OncePerRequestFilter;

import com.google.gson.Gson;
import com.project.quanlybanhang_api.security.StaffDetailService;


@Component
public class JwtAuthFilter extends OncePerRequestFilter {

	@Autowired
	JwtProvider jwtProvider;
	
	@Autowired
	StaffDetailService detailService;	
	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		String token = getJwtToken(request);
		
		if(jwtProvider.validationToken(token)) {
			String jsonData = jwtProvider.decodeToken(token);			
			User userDetail = (User) detailService.loadUserByUsername(jsonData);

			UsernamePasswordAuthenticationToken authenticationToken =
					new UsernamePasswordAuthenticationToken(userDetail, null, userDetail.getAuthorities());
			authenticationToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));

			SecurityContextHolder.getContext().setAuthentication(authenticationToken);
		}
		filterChain.doFilter(request, response);		
	}	
	private String getJwtToken(HttpServletRequest request) {
		String authenToken = request.getHeader("Authorization");
		if(StringUtils.hasText(authenToken)&& authenToken.contains("Bearer")) {
			String token = authenToken.substring(7);
			return token;
		}
		return null;
	}

}
