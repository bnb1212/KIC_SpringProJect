<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- 모달 팝업창입니다. 로그인 모달 -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
		<!-- modal header -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span><span class="sr-only">Close</span>
				</button>
			</div>
		<!--  end header -->
			<!-- modal body -->
			<div class="modal-body">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="control-group">
								<form id='loginform' novalidate="novalidate" method="post" action="member_login">
									<h2>로그인</h2>
									<div class="control-group">
									<div class="form-group floating-label-form-group controls mb-0 pb-2">
                                    <label>회원 Email</label><input class="form-control" name="member_email" id="member_email" 
                                    type="email" placeholder="E-mail address" required="required" data-validation-required-message="이메일을 입력해주세요" />
                                    <p class="help-block text-danger"></p>
                            	</div>
									  </div>
									  <div class="control-group">
									<div class="form-group floating-label-form-group controls mb-0 pb-2">
                                    <label>Password</label><input class="form-control" name="member_passwd" id="member_passwd" type="password"
                                     placeholder="Password" required="required" data-validation-required-message="비밀번호를 입력해주세요" />
                                    <p class="help-block text-danger"></p>
                                	</div>
                                	</div>
									 <div id="success"></div>
									<input type="submit" class="btn btn-outline-success" id="login_submit" value="Login" />
								</form>
									</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end body -->
				<!-- modal footer -->
			<div class="modal-footer">
				<a href="member_regist" style="font-size: 0.8rem; text-decoration: none">회원이
					아니세요? Sign in</a>
			</div>
			<!-- end footer -->
			</div>
		</div>
	</div>

