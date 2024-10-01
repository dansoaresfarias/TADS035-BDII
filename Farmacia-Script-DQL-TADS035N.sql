select * from funcionario;

select cpf, nome, sexo, estadoCivil, dataNasc, email, ch, salario, comissao,
	dataAdm
    from funcionario;
    
select cpf as "CPF", nome "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", dataNasc "Data de Nascimento", 
    email "E-mail", ch "Carga-horária", salario "Salário", comissao "Comissão",
	dataAdm "Data de Admissão"
    from funcionario;

select cpf as "CPF", nome "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", dataNasc "Data de Nascimento", 
    email "E-mail", ch "Carga-horária", salario "Salário", comissao "Comissão",
	dataAdm "Data de Admissão"
    from funcionario
		order by nome;
        
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario
		order by nome;
        
        
        
