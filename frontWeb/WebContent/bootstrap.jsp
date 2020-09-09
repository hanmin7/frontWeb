<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <!-- 반응형웹위해 기기별로 사이즈 조절 가능하게 -->

<title>Insert title here</title>
<style>
	.container {min-height : 500p;}
	/* div {border : 1px solid blue;} */
	
	.card {
		display : inline-block;
	}
</style>
</head>
<body>
<div class="container">
<div>
			<div class="card" style="width: 18rem;">
				<img src="./images/Chrysanthemum.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>

			<div class="card" style="width: 18rem;">
				<img src="./images/Desert.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>

			<div class="card" style="width: 18rem;">
				<img src="./images/Desert.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>

		</div>


	<div>
		<a href="#" class="btn btn-info">링크버튼</a>
		<span class="btn btn-outline-warning">스팬버튼</span>
		<button class="btn btn-primary">버튼<span class="badge badge-danger">4</span></button>
	</div>
	
	
<div class="alert alert-success" role="alert">
  A simple primary <a href="#" class="alert-link">an example link</a> alert—check it out!
</div>
  <!-- Content here -->
   <div class="row justify-content-end">
   		<div class="col-2">로고</div>
   		<div class="col-6">메뉴</div>
   </div>
   
   
   <div class="row">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">#</th>
						<th scope="col">First</th>
						<th scope="col">Last</th>
						<th scope="col">Handle</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
				</tbody>
			</table>


			<div class="col-xl-4 col-md-6 col-sm-12">One of three columns</div>
			<div class="col-xl-4 col-md-6 col-sm-12">
				<form>
					<div class="form-group row">
						<label class="col-3">id</label>
						<div class="col-9">
							<input class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-3">pw</label>
						<div class="col-9">
						<input class="form-control">
						</div>
					</div>
					<div class="form-group">
						<button class="btn btn-success">등록</button>
					</div>
				</form>
			</div>
			<div class="col-xl-4 col-md-12 col-sm-12">One of three columns</div>
			<!-- 12에서 등분 나눔.  -->
	</div>
  
</div>
</body>
</html>