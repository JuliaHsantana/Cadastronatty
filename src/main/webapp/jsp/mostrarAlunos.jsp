<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.edu.exemplo.model.Aluno"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" media="screen"
	href="./css/estilo.css" />
<link rel="shortcut icon" href="./imagens/logosem.png"
	type="image/x-icon">
<title>Natty Academy - List</title>
</head>
<body>

	<header>
		<div>
			<a href="./index.html"> <img src="./imagens/logo1.jpeg"
				class="logo" alt="logo do site"></a> <span> Natty Academy</span>
		</div>
		<nav>
			<ul>
				<li><a href="html\incluir.html">Incluir Alunos</a></li>
				<li><a href="html\consultar.html">Consultar Alunos</a></li>
			</ul>
		</nav>
	</header>

	</br>
	</br>
	</br>
	</br>

	<section>
		<div
			class="container-md-fluid d-flex justify-content-center align-items-center m-4">
			<div class="row w-100">
				<div class="col-12 text-center table-responsive">
					<table class="table table-striped align-middle">
						<thead class="table-dark">
							<tr>
								<th scope="col" class="col-2">RA</th>
								<th scope="col" class="col-2">Nome</th>
								<th scope="col" class="col-2">Endereço</th>
								<th scope="col" class="col-2">Email</th>
								<th scope="col" class="col-1">Data de nascimento</th>
								<th scope="col" class="col-1">Período</th>
								<th scope="col" class="col-2">Ações
								<th>
							</tr>
						</thead>
						<tbody>
							<%
							SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
							List<Aluno> lista = new ArrayList<Aluno>();
							lista = (ArrayList) request.getAttribute("alunosList");
							for (Aluno a : lista) {
							%>
							<tr>
								<th scope="row"><%=a.getRa()%></th>
								<td scope="row"><%=a.getNome()%></td>
								<td scope="row"><%=a.getEndereco()%></td>
								<td scope="row"><%=a.getEmail()%></td>
								<td scope="row"><%=data.format(a.getDataNascimento())%></td>
								<td scope="row"><%=a.getPeriodo()%></td>
								<td scope="row">
									<div class="d-flex justify-content-around">
										<a class="btn btn-outline-primary btn-sm"
											href="ServletAluno?cmd=atu&txtRa=<%=a.getRa()%>">Editar</a> <a
											class="btn btn-outline-danger btn-sm"
											href="ServletAluno?cmd=excluir&txtRa=<%=a.getRa()%>"
											onclick="return confirm('Tem certeza que deseja excluir?')">Excluir</a>
									</div>
								</td>
								<%
								}
								%>


							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
</body>
</html>