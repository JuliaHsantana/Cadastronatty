<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" media="screen"
	href="./css/estilo.css" />
<meta charset="UTF-8">
<link rel="shortcut icon" href="imagens/logosem.png" type="image/x-icon">
<title>Natty Academy - Update</title>
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
				<li><a href=".\ServletAluno?cmd=listar">Listar todos</a></li>
			</ul>
		</nav>
	</header>



	<jsp:useBean id="aluno" scope="session"
		class="br.edu.exemplo.model.Aluno" />
	<%
	SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
	%>
	<form action="ServletAluno?cmd=atualizar" method="post"
		style="border: 1px solid #ccc">

		<div class="container">
			<h1>To Update</h1>
			<p>Please fill in this form to register the student.</p>
			<hr>

			<label for="ra"><b>RA</b></label> <input type="text" placeholder="RA"
				name="txtRa" value="<%=aluno.getRa()%>" readonly="readonly" /> <label
				for="nome"><b>Nome Completo</b></label> <input type="text"
				placeholder="Digite o nome" name="txtNome"
				value="<%=aluno.getNome()%>" /> <label for="email"><b>E-mail</b></label>
			<input type="text" placeholder="Digite o e-mail" name="txtEmail"
				value="<%=aluno.getEmail()%>" /> <label for="endereco"><b>Endereço</b></label>
			<input type="text" placeholder="Digite o endereço" name="txtEndereco"
				value="<%=aluno.getEndereco()%>" /> <label for="data"><b>Data
					de Nascimento</b></label> <input type="date" name="txtData"
				value="<%=aluno.getDataNascimento()%>" /> <label for="periodo"><b>Período</b></label>
			<select size="1" name="cmbPeriodo">
				<option><%=aluno.getPeriodo()%></option>
				<option>Manhã</option>
				<option>Tarde</option>
				<option>Noite</option>
			</select>

			<p>
				By creating an account you agree to our <a href="#"
					style="color: dodgerblue">Terms & Privacy</a>.
			</p>

			<div class="clearfix">
				<button type="button" class="cancelbtn">Cancel</button>
				<button type="submit" class="signupbtn">Update</button>
			</div>
		</div>

	</form>
</body>
</html>