<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Sign Up</title>
</head>
<body>
	<h1 class="text-center">Sign Up</h1>
	<div class="container">
		<div class="row mt-5">
			<div class="col-md-5 offset-md-3">
				<form action="/data" method="post">
					<div class="form-group">
						<label for="exampleInputPassword1">UserId</label> <input
							type="text" class="form-control" id="exampleInputPassword1"
							name="user" />
						<c:if test="${!empty errors.getFieldErrors('user')}">
							<div class="text-danger">
								<c:forEach items="${errors.getFieldErrors('user')}" var="error">
                        ${error.defaultMessage}<br>
								</c:forEach>
							</div>
						</c:if>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Email</label> <input type="email"
							class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" name="email">
						<c:if test="${!empty errors.getFieldErrors('email')}">
							<div class="text-danger">
								<c:forEach items="${errors.getFieldErrors('email')}" var="error">
                        ${error.defaultMessage}<br>
								</c:forEach>
							</div>
						</c:if>
					</div>

					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1"
							name="agree"> <label class="form-check-label"
							for="exampleCheck1">Terms and Condition*</label>
						<c:if test="${!empty errors.getFieldErrors('agree')}">
							<div class="text-danger">
								<c:forEach items="${errors.getFieldErrors('agree')}" var="error">
                        ${error.defaultMessage}<br>
								</c:forEach>
							</div>
						</c:if>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>