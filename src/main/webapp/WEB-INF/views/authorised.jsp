	<sec:authorize access="hasRole('ROLE_ADMIN)">
						<li><a href="admin/products">Product</a></li>
						</sec:authorize>
						
						
						<c:if test="${pageContext.request.userPrincipal.name==null}">
						<li class="active"><a href="<c:url vlaue="/login"/>">Login</a></li>
						</c:if>
						<c:if test="${pageContext.request.userPrincipal.name!=null}">
						<li class="active"><a href="<c:url vlaue="/logout"/>">LogOut</a></li>
						</c:if>

						
						<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/tags" %>
