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
<title>Natty Academy - Consult </title>
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
				<li><a href="ServletAluno?cmd=listar">Listar todos</a></li>
			</ul>
		</nav>
	</header>

	<jsp:useBean id="aluno" scope="session"
		class="br.edu.exemplo.model.Aluno" />
	<%
	SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
	%>
	<form>
	
	
	<div class="container">
			<h1>Consult</h1>
			<p>Please fill in this form to register the student.</p>
			<hr>

			<label for="ra"><b>RA</b></label> 
			<input type="text" placeholder="RA"
				name="txtRa" value="<%=aluno.getRa()%>" readonly="readonly" /> 
				
			<label
				for="nome"><b>Nome Completo</b></label> 
				<input type="text"
				placeholder="Digite o nome" name="txtNome"
				value="<%=aluno.getNome()%>" readonly="readonly" /> 
				
				<label for="email"><b>E-mail</b></label>
			<input type="text" placeholder="Digite o e-mail" name="txtEmail"
				value="<%=aluno.getEmail()%>" readonly="readonly"" /> 
				
				<label for="endereco"><b>Endereço</b>
				</label>
			<input type="text" placeholder="Digite o endereço" name="txtEndereco"
				value="<%=aluno.getEndereco()%>" readonly="readonly" /> 
				
				<label for="data"><b>Data
					de Nascimento</b></label> 
					<input type="date" name="txtData"
				readonly="readonly"
					value="<%=data.format(aluno.getDataNascimento())%>" /> 
				
				<label for="periodo"><b>Período</b></label>
			    <input type="text" name="txtIdade"
					value="<%=aluno.getPeriodo()%>" readonly="readonly" />

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