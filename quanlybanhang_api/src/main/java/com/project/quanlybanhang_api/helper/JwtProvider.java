package com.project.quanlybanhang_api.helper;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.google.gson.Gson;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

@Component
public class JwtProvider {
	
	private String SECRECT_KEY = "YWRtaW4xMjM0NTY3ODkwQGFkbWluMTIzNDU2Nzg5MEBhZG1pbjEyMzQ1Njc4OTA=";	
	private long JWT_EXPIRED = 8 * 60 * 60 * 1000;	
	
	public String generateToken(String data) {
		Date now = new Date();
		Date expriedDate = new Date(now.getTime() + JWT_EXPIRED);		
		return Jwts.builder()
				.setSubject(data)
				.setIssuedAt(now)
				.setExpiration(expriedDate)
				.signWith(SignatureAlgorithm.HS256, SECRECT_KEY)
				.compact();
	}	
	public String decodeToken(String token) {
		return Jwts.parser().setSigningKey(SECRECT_KEY)
				.parseClaimsJws(token)
				.getBody().getSubject();
	}	
	public boolean validationToken(String token) {
		try {
			Jwts.parser().setSigningKey(SECRECT_KEY).parseClaimsJws(token);			
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
