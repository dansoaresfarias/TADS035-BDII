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

select func.cpf as "CPF", upper(func.nome) "Funcionário", func.sexo "Gênero", 
	func.estadoCivil "Estado Civil", 
    date_format(func.dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    func.email "E-mail", concat(func.ch, "h") "Carga-horária", 
    concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
	date_format(func.dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão",
    endF.cidade "Cidade"
    from funcionario func
		inner join enderecofunc endF on func.cpf = endF.Funcionario_cpf
			order by nome; 

select func.cpf as "CPF", upper(func.nome) "Funcionário", func.sexo "Gênero", 
	func.estadoCivil "Estado Civil", 
    date_format(func.dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    func.email "E-mail", concat(func.ch, "h") "Carga-horária", 
    concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
	date_format(func.dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão",
    endF.cidade "Cidade", tel.numero "Telefone"
    from funcionario func
		inner join enderecofunc endF on func.cpf = endF.Funcionario_cpf
        inner join telefone tel on tel.Funcionario_cpf = func.cpf
			order by nome;

select func.cpf as "CPF", upper(func.nome) "Funcionário", func.sexo "Gênero", 
	func.estadoCivil "Estado Civil", 
    date_format(func.dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    func.email "E-mail", concat(func.ch, "h") "Carga-horária", 
    concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
	date_format(func.dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão",
    endF.cidade "Cidade", tel.numero "Telefone"
    from funcionario func
		inner join enderecofunc endF on func.cpf = endF.Funcionario_cpf
        left join telefone tel on tel.Funcionario_cpf = func.cpf
			order by func.nome; 
            
select func.cpf as "CPF", upper(func.nome) "Funcionário", func.sexo "Gênero", 
	func.estadoCivil "Estado Civil", 
    date_format(func.dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    func.email "E-mail", concat(func.ch, "h") "Carga-horária", 
    concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário", 
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
	date_format(func.dataAdm, "%h:%i %d/%m/%Y") "Data de Admissão",
    endF.cidade "Cidade", coalesce(tel.numero, "Não informado") "Telefone", 
    crg.nome "Cargo",
    dep.nome "Departamento", coalesce(grt.nome, "Não tem") "Gerente"
    from funcionario func
		inner join enderecofunc endF on func.cpf = endF.Funcionario_cpf
        left join telefone tel on tel.Funcionario_cpf = func.cpf
        inner join trabalhar trb on trb.Funcionario_cpf = func.cpf
        inner join cargo crg on crg.cbo = trb.Cargo_cbo
        inner join departamento dep on dep.idDepartamento = trb.Departamento_idDepartamento
        left join funcionario grt on grt.cpf = dep.Gerente_cpf
			order by func.nome;

-- "Departamento", "Qtd Funcionários", "Investimento Salarial + Comissão", 
-- "Média Salarial", "Média Comissão", "Gerente"
select dep.nome "Departamento", count(trb.Funcionario_cpf) "Qtd Funcionários",
	concat("R$ ", format(sum(func.salario + func.comissao), 2, 'de_DE')) "Investimento Salarial + Comissão",
    concat("R$ ", format(avg(func.salario), 2, 'de_DE')) "Média Salarial", 
    concat("R$ ", format(avg(func.comissao), 2, 'de_DE')) "Média Comissão", 
    coalesce(grt.nome, "Não tem") "Gerente"
	from departamento dep
		inner join trabalhar trb on trb.Departamento_idDepartamento = dep.idDepartamento
        inner join funcionario func on func.cpf = trb.Funcionario_cpf
        left join funcionario grt on grt.cpf = dep.Gerente_cpf
			group by trb.Departamento_idDepartamento
				order by dep.nome;

-- pix para: 81999985671 

select date_format(vnd.dataVenda, "%d/%m/%Y - %h:%i") "Data da Venda",
	concat("R$ ", format(vnd.valorTotal, 2, 'de_DE')) "Valor Total",
    cli.nome "Cliente",
    func.nome "Funcionario"
	from venda vnd
		inner join cliente cli on cli.cpf = vnd.Cliente_cpf
        inner join funcionario func on func.cpf = vnd.Funcionario_cpf
			order by vnd.dataVenda;
            
select date_format(vnd.dataVenda, "%d/%m/%Y - %h:%i") "Data da Venda",
	concat("R$ ", format(vnd.valorTotal, 2, 'de_DE')) "Valor Total",
    cli.nome "Cliente",
    func.nome "Funcionario"
	from venda vnd
		inner join cliente cli on cli.cpf = vnd.Cliente_cpf
        inner join funcionario func on func.cpf = vnd.Funcionario_cpf
			where vnd.dataVenda between '2021-04-01' and '2021-06-30'
				order by vnd.dataVenda;   
   
select year(dataVenda) "Periodo" , 
	count(idVenda) "Quantidade de Vendas", 
	concat("R$ ", format(sum(valorTotal-coalesce(desconto, 0)), 2, 'de_DE')) "Balanço" 
	from venda
		where year(dataVenda) = 2021
			group by year(dataVenda);

select date_format(dataVenda, "%m/%Y") "Periodo" , 
	count(idVenda) "Quantidade de Vendas", 
	concat("R$ ", format(sum(valorTotal-coalesce(desconto, 0)), 2, 'de_DE')) "Balanço" 
	from venda
		where year(dataVenda) = 2021
			group by date_format(dataVenda, "%m/%Y");

select date_format(dataVenda, "%m/%Y") "Periodo" , 
	count(idVenda) "Quantidade de Vendas", 
	concat("R$ ", format(sum(valorTotal-coalesce(desconto, 0)), 2, 'de_DE')) "Balanço" 
	from venda
		group by date_format(dataVenda, "%m/%Y")
			order by sum(valorTotal-coalesce(desconto, 0)) desc;
   
select upper(tipo) "Forma de Pagamento", count(idFormaPag) "Quantidade de Vendas", 
	sum(valorPago) "Faturamento" 
	from formapag
		group by tipo
			order by sum(valorPago) desc;   

select coalesce(endC.cidade, "Não informada") "Cidade", count(idVenda) "Quantidade",
	concat("R$ ", format(sum(valorTotal-coalesce(desconto, 0)), 2, 'de_DE')) "Faturamento"
	from venda vnd
		inner join cliente cli on cli.cpf = vnd.Cliente_cpf
		left join enderecocli endC on endC.Cliente_cpf = cli.cpf
			group by endC.cidade
				order by sum(valorTotal-coalesce(desconto, 0));

select coalesce(endC.cidade, "Não informada") "Cidade", 
	coalesce(endC.bairro, "Não informada") "Bairro",
    count(idVenda) "Quantidade",
	concat("R$ ", format(sum(valorTotal-coalesce(desconto, 0)), 2, 'de_DE')) "Faturamento"
	from venda vnd
		inner join cliente cli on cli.cpf = vnd.Cliente_cpf
		left join enderecocli endC on endC.Cliente_cpf = cli.cpf
			group by endC.cidade, endC.bairro
				order by sum(valorTotal-coalesce(desconto, 0)) desc;

create view RelatorioBairro as
	select coalesce(endC.cidade, "Não informada") "Cidade", 
		coalesce(endC.bairro, "Não informada") "Bairro",
		count(idVenda) "Quantidade",
		concat("R$ ", format(sum(valorTotal-coalesce(desconto, 0)), 2, 'de_DE')) "Faturamento"
		from venda vnd
			inner join cliente cli on cli.cpf = vnd.Cliente_cpf
			left join enderecocli endC on endC.Cliente_cpf = cli.cpf
				group by endC.cidade, endC.bairro
					order by sum(valorTotal-coalesce(desconto, 0)) desc;
                    
select * from relatoriobairro;

select * from relatoriobairro
	where Cidade like "Recife";
    
select prod.nome "Produto", count(ivp.Venda_idVenda) "Frequência em venda",
	sum(ivp.quantidade) "Quantidade vendida",
	sum(ivp.valorDeVenda*ivp.quantidade) "Faturamento"
	from itensvendaprod ivp
		inner join produto prod on prod.idProduto = ivp.Produto_idProduto
			group by ivp.Produto_idProduto
				order by count(ivp.Venda_idVenda) desc;
                
select prod.nome "Produto", count(ivp.Venda_idVenda) "Frequência em venda",
	sum(ivp.quantidade) "Quantidade vendida",
	sum(ivp.valorDeVenda*ivp.quantidade) "Faturamento"
	from itensvendaprod ivp
		inner join produto prod on prod.idProduto = ivp.Produto_idProduto
			group by ivp.Produto_idProduto
				order by sum(ivp.quantidade) desc;
                
select srv.nome "Serviço", count(ivs.Venda_idVenda) "Frequência em venda",
	sum(ivs.quantidade) "Quantidade vendida",
	sum(ivs.valorVenda*ivs.quantidade) "Faturamento"
	from itensvendaservico ivs
		inner join servico srv on srv.idServico = ivs.Servico_idServico
			group by ivs.Servico_idServico
				order by sum(ivs.valorVenda*ivs.quantidade) desc
					limit 10;
            












