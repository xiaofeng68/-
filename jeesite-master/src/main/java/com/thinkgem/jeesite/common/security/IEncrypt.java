package com.thinkgem.jeesite.common.security;
/**
 * 
 * @ClassName:     IEncrypt.java
 * @Description:   encrypt接口
 * @author         aztlde
 * @version        V1.0  
 * @Date           2014年8月7日 下午12:33:11
 */
public interface IEncrypt {
	public abstract String encode(String s)
			throws Exception;

		public abstract String decode(String s)
			throws Exception;
}
