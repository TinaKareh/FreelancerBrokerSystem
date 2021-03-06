/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Filter;

import Constants.UserType;
import Model.Freelancer;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author GraceTina
 */
@WebFilter(filterName = "FRLoginFilter", urlPatterns = {"/freelancer/*"})
public class FRLoginFilter implements Filter {

    // The filter configuration object we are associated with.  If
    // this value is null, this filter instance is not currently
    // configured. 
    private FilterConfig filterConfig = null;

    public FRLoginFilter() {
    }

    /**
     *
     * @param request The servlet request we are processing
     * @param response The servlet response we are creating
     * @param chain The filter chain we are processing
     *
     * @exception IOException if an input/output error occurs
     * @exception ServletException if a servlet error occurs
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpReq = (HttpServletRequest) request;
        HttpSession session = httpReq.getSession();
        
        // LOG.log(Level.INFO, "LOGIN - FR _ FILTER");
        if (session == null) {
            // LOG.log(Level.INFO, "LOGIN - FR _ NO SESSION");
            ((HttpServletResponse) response).sendRedirect("/login");
        } else {
            UserType uType = (UserType) session.getAttribute("uType");
            if (uType == UserType.FR) {
                // LOG.log(Level.INFO, "LOGIN - FR _ FRELANCER FOUND");
                request.setAttribute("user", (Freelancer) session.getAttribute("user"));
                chain.doFilter(request, response);
            } else {
                // LOG.log(Level.INFO, "LOGIN - FR _ FREELANCER NOT FOUND");
                ((HttpServletResponse) response).sendRedirect("/login");
            }
        }

    }
   //  private static final Logger LOG = Logger.getLogger(FRLoginFilter.class.getName());

    /**
     * Set the filter configuration object for this filter.
     *
     * @param filterConfig The filter configuration object
     */
    public void setFilterConfig(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
    }

    /**
     * Destroy method for this filter
     */
    @Override
    public void destroy() {
    }

    /**
     * Init method for this filter
     */
    @Override
    public void init(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
        if (filterConfig != null) {
        }
    }
}
