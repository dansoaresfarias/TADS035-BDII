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
        
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario
		where estadoCivil = "Solteiro"
			order by nome;        
        
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario
		where estadoCivil = "Solteiro" or 
			estadoCivil = "Solteira"
			order by nome;
            
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario
		where estadoCivil like "Solteir%"
			order by nome;

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario
		where salario >= 3500 and 
			sexo = 'M'
			order by nome;
            
            
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario
		where sexo = 'F' and
			dataAdm <= '2020-03-04'
			order by nome;            
            
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario
		where dataNasc >= '1990-01-01' and
			dataNasc <= '2000-12-31'
			order by nome;
            
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario
		where dataNasc between '1990-01-01' and '2000-12-31'
			order by nome;

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario
		where nome like "%Costa"
			order by nome;

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario
		where nome like "%Costa%"
			order by nome;
            
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario
		where salario > avg(salario)
			order by nome;
            
select avg(salario) from funcionario;

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario
		where salario > (select avg(salario) from funcionario)
			order by salario desc;
            
select Funcionario_cpf from enderecofunc
	where cidade like "olinda";
    
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario
		where cpf in (select Funcionario_cpf from enderecofunc
							where cidade like "olinda")
			order by salario desc;
-- cross join implicito            
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario, enderecofunc
		where cidade like "olinda"
			order by nome;
    
-- inner join implicito            
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão"
    from funcionario, enderecofunc
		where cidade like "olinda" and
			cpf = Funcionario_cpf
			order by nome;    
    
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão",
    cidade "Cidade"
    from funcionario, enderecofunc
		where cidade like "olinda" and
			cpf = Funcionario_cpf
			order by nome;     

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão",
    cidade "Cidade"
    from funcionario, enderecofunc
		where cpf = Funcionario_cpf
			order by nome; 
            
-- Inner join explicito            
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	estadoCivil "Estado Civil", 
    date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    email "E-mail", concat(ch, "h") "Carga-horária", 
    concat("R$ ", format(salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(comissao, 2, 'de_DE')) "Comissão",
	date_format(dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão",
    cidade "Cidade"
    from funcionario
		inner join enderecofunc on cpf = Funcionario_cpf
			where cidade like "olinda"
			order by nome; 

select dep.cpf "CPF do Dependente", dep.nome "Dependente", 
	date_format(dep.dataNasc, '%d/%m/%Y') "Data de Nascimento do Dependente",
    dep.parentesco "Parentesco",  func.nome "Reponsável"
		from dependente dep
			inner join funcionario func 
							on func.cpf = dep.Funcionario_cpf
				order by func.nome;

select date_format(fer.dataInicio, '%d/%m/%Y') "Data Início",
	date_format(fer.dataFim, '%d/%m/%Y') "Data Fim",
    fer.qtdDias "Quantidade de Dias", fer.anoRef "Ano de Aquisição",
    func.nome "Funcionário"
    from ferias fer
		inner join funcionario func on func.cpf = fer.Funcionario_cpf
			order by func.nome;

select func.cpf "CPF", func.nome "Funcionario",
	count(dep.cpf) "Quantidade de Dependentes"
	from funcionario func
		inner join dependente dep on dep.Funcionario_cpf = func.cpf
			group by func.cpf
				order by func.nome;

select func.cpf "CPF", func.nome "Funcionario",
	count(dep.cpf) "Quantidade de Dependentes"
	from funcionario func
		left join dependente dep on dep.Funcionario_cpf = func.cpf
			group by func.cpf
				order by func.nome;


