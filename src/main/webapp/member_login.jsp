<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
							<div class="login-box well">
								<form method="post" action="member_login">
									<h2>로그인</h2>
									<div class="form-group">
										<label for="username-email">회원 Email</label> 
										<input name="member_id" value='' id="member-email"
											placeholder="E-mail address" type="text"
											class="form-control" />
									</div>
									<div class="form-group">
										<label for="password">비밀번호</label>
											<input name="member_passwd" id="member_passwd" 
											value='' placeholder="Password" type="password"
											class="form-control" />
									</div>
									<div class="form-group">
										<input type="submit" class="btn btn-outline-success" value="Login" />
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
				<!-- end body -->
				<!-- modal footer -->
			<div class="modal-footer">
				<a href="regist" style="font-size: 0.8rem; text-decoration: none">회원이
					아니세요? Sign in</a>
			</div>
			<!-- end footer -->
		</div>
	</div>
</div>