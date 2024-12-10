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
            
-- "CPF", "Funcionario", "Cargo", "Departamento", "Salario", "Comissao"
-- "Aux Escola", "Aux Saude", "Vale Alimentacao", "Vale Transporte", "Salario Bruto"
select func.cpf "CPF", func.nome "Funcionário", crg.nome "Cargo", 
	dep.nome "Departamento",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário",
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão"
	from funcionario func
    inner join trabalhar trab on trab.Funcionario_cpf = func.cpf
    inner join cargo crg on crg.cbo = trab.Cargo_cbo
    inner join departamento dep on dep.idDepartamento = trab.Departamento_idDepartamento
		order by func.nome;

select func.cpf "cpf", func.nome "funcionario", 
	count(dep.cpf)*180 "auxEscola"
		from funcionario func
        left join dependente dep on dep.funcionario_cpf = func.cpf
			where timestampdiff(year, dep.dataNasc, now()) < 6
				group by func.cpf
					order by func.nome;

select nome, timestampdiff(year, dataNasc, now()) "Idade" from dependente;

create view vAuxEscola as
	select func.cpf "cpf", func.nome "funcionario", 
	count(dep.cpf)*180 "auxEscola"
		from funcionario func
        left join dependente dep on dep.funcionario_cpf = func.cpf
			where timestampdiff(year, dep.dataNasc, now()) < 6
				group by func.cpf
					order by func.nome;

-- "CPF", "Funcionario", "Salario Bruto", "Comissao"
-- "Aux Escola", "Aux Saude", "Vale Alimentacao", "IRRF", "INSS", "Salario Líquido"
select func.cpf "CPF", func.nome "Funcionário",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário Bruto",
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(coalesce(vae.auxEscola, 0), 2, 'de_DE')) "Auxílio Escola"
	from funcionario func
    left join vauxescola vae on vae.cpf = func.cpf
		order by func.nome;

select cpf "cpf", nome "funcionario", 
	timestampdiff(year, dataNasc, now()) "idade",
    case 
		when timestampdiff(year, dataNasc, now()) <= 25 
			then 250
		when timestampdiff(year, dataNasc, now()) between 26 and 35
			then 350
		when timestampdiff(year, dataNasc, now()) between 36 and 45
			then 450
		when timestampdiff(year, dataNasc, now()) between 46 and 55
			then 550
		else 650
		end "auxSaude"    
		from funcionario
			order by nome;

create view vauxSaude as
	select cpf "cpf", nome "funcionario", 
		timestampdiff(year, dataNasc, now()) "idade",
		case 
			when timestampdiff(year, dataNasc, now()) <= 25 
				then 250
			when timestampdiff(year, dataNasc, now()) between 26 and 35
				then 350
			when timestampdiff(year, dataNasc, now()) between 36 and 45
				then 450
			when timestampdiff(year, dataNasc, now()) between 46 and 55
				then 550
			else 650
			end "auxSaude"    
			from funcionario
				order by nome;

-- "CPF", "Funcionario", "Salario Bruto", "Comissao"
-- "Aux Escola", "Aux Saude", "Vale Alimentacao", "IRRF", "INSS", "Salario Líquido"
select func.cpf "CPF", func.nome "Funcionário",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário Bruto",
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(coalesce(vae.auxEscola, 0), 2, 'de_DE')) "Auxílio Escola",
    concat("R$ ", format(vas.auxSaude, 2, 'de_DE')) "Auxílio Saúde"
	from funcionario func
    left join vauxescola vae on vae.cpf = func.cpf
    inner join vauxsaude vas on vas.cpf = func.cpf
		order by func.nome;

-- "CPF", "Funcionario", "Salario Bruto", "Comissao"
-- "Aux Escola", "Aux Saude", "Vale Alimentacao", "INSS", "IRRF", "Salario Líquido"
select func.cpf "CPF", func.nome "Funcionário",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário Bruto",
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(coalesce(vae.auxEscola, 0), 2, 'de_DE')) "Auxílio Escola",
    concat("R$ ", format(vas.auxSaude, 2, 'de_DE')) "Auxílio Saúde",
    concat("R$ ", format(550, 2, 'de_DE')) "Vale Alimentação"
	from funcionario func
    left join vauxescola vae on vae.cpf = func.cpf
    inner join vauxsaude vas on vas.cpf = func.cpf
		order by func.nome;
        
-- Criando a função do INSS
delimiter $$
create function calcINSS(sb decimal(7,2))
	returns decimal(6,2) deterministic
	begin
		declare inss decimal(6,2) default 0.0;
        
        if (sb <= 1412.00) 
			then set inss = sb * 0.075;
		elseif (sb >= 1412.01 and sb <= 2666.68) 
			then set inss = sb * 0.09;
		elseif (sb >= 2666.69 and sb <= 4000.03) 
			then set inss = sb * 0.12;
		elseif (sb >= 4000.04 and sb <= 7786.02) 
			then set inss = sb * 0.14;
		else set inss = 7786.02 * 0.14;
		end if;
        
        return inss;
    end $$
delimiter ;

-- "CPF", "Funcionario", "Salario Bruto", "Comissao"
-- "Aux Escola", "Aux Saude", "Vale Alimentacao", "INSS", "IRRF", "Salario Líquido"
select func.cpf "CPF", func.nome "Funcionário",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário Bruto",
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(coalesce(vae.auxEscola, 0), 2, 'de_DE')) "Auxílio Escola",
    concat("R$ ", format(vas.auxSaude, 2, 'de_DE')) "Auxílio Saúde",
    concat("R$ ", format(550, 2, 'de_DE')) "Vale Alimentação",
    concat("-R$ ", format(calcINSS(func.salario), 2, 'de_DE')) "INSS"
	from funcionario func
    left join vauxescola vae on vae.cpf = func.cpf
    inner join vauxsaude vas on vas.cpf = func.cpf
		order by func.nome;

-- Criando a função do IRRF
delimiter $$
create function calcIRRF(sb decimal(7,2))
	returns decimal(6,2) deterministic
	begin
		declare irrf decimal(6,2) default 0.0;
        if sb >= 2259.21 and sb <= 2826.65
			then set irrf = sb * 0.075;
		elseif sb >= 2826.66 and sb <= 3751.05
			then set irrf = sb * 0.15;
		elseif sb >= 3751.06 and sb <= 4664.68
			then set irrf = sb * 0.225;
		elseif sb >= 4664.69
			then set irrf = sb * 0.275;
		end if;
        return irrf;
    end $$
delimiter ;

-- "CPF", "Funcionario", "Salario Bruto", "Comissao"
-- "Aux Escola", "Aux Saude", "Vale Alimentacao", "INSS", "IRRF", "Salario Líquido"
select func.cpf "CPF", func.nome "Funcionário",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário Bruto",
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(coalesce(vae.auxEscola, 0), 2, 'de_DE')) "Auxílio Escola",
    concat("R$ ", format(vas.auxSaude, 2, 'de_DE')) "Auxílio Saúde",
    concat("R$ ", format(550, 2, 'de_DE')) "Vale Alimentação",
    concat("-R$ ", format(calcINSS(func.salario), 2, 'de_DE')) "INSS",
    concat("-R$ ", format(calcIRRF(func.salario), 2, 'de_DE')) "IRRF",
    concat("R$ ", format(func.salario + func.comissao + coalesce(vae.auxEscola, 0) 
    + vas.auxSaude + 550 - calcINSS(func.salario) - 
    calcIRRF(func.salario), 2, 'de_DE'))  "Salário Líquido"
	from funcionario func
    left join vauxescola vae on vae.cpf = func.cpf
    inner join vauxsaude vas on vas.cpf = func.cpf
		order by func.nome;

delimiter $$
create procedure calcPrecoFinal(in precoComp decimal(6,2), 
								out precoFinal decimal(6,2))
		set precoFinal = precoComp + precoComp * 0.60 + 
						precoComp * 0.37  + precoComp * 0.3058; 
		$$
delimiter ;


call calcPrecoFinal(5, @precoDip);

select @precoDip;

delimiter $$
create procedure calcPrecoFinal2(inout preco decimal(6,2))
		set preco = preco + preco * 0.60 + 
						preco * 0.37  + preco * 0.3058; 
		$$
delimiter ;

set @precoTadala = 9;

call calcPrecoFinal2(@precoTadala);

select @precoTadala;

delimiter $$
create procedure cadFuncionario(in pcpf varchar(14),
								in pnome varchar(60), 
								in pnomeSocial varchar(45),
								in pemail varchar(45), 
								in psexo char(1), 
								in pestadoCivil varchar(15), 
								in pdataNasc date, 
								in pch int, 
								in psalario decimal(7,2),
								in pcomissao decimal(6,2), 
								in pdataAdm datetime,
								in puf char(2), 
								in pcidade varchar(60), 
								in pbairro varchar(60), 
								in prua varchar(70), 
								in pnumero int, 
								in pcomp varchar(45), 
								in pcep varchar(9),
								in nNumTel1 varchar(15),
								in nNumTel2 varchar(15),
								in nNumTel3 varchar(15))
	begin
		insert into funcionario (cpf, nome, nomeSocial, email, sexo, estadoCivil,
			dataNasc, ch, salario, comissao, dataAdm)
			value (pcpf, pnome, pnomeSocial, pemail, psexo, pestadoCivil,
			pdataNasc, pch, psalario, pcomissao, pdataAdm);
		insert into enderecofunc
			value (pcpf, puf, pcidade, pbairro, prua, pnumero, pcomp, pcep);
		insert into telefone (numero, Funcionario_cpf)
			value (nNumTel1, pcpf);
		if(nNumTel2 is not null) 
			then insert into telefone (numero, Funcionario_cpf)
					value (nNumTel2, pcpf);
		end if;
        if(nNumTel3 is not null) 
			then insert into telefone (numero, Funcionario_cpf)
					value (nNumTel3, pcpf);
		end if;
    end $$
delimiter ;

call cadFuncionario("708.888.777-00", "Marcela Alves", "Belarmino", "mab@uol.com",
	'F', "Divorciada", '1998-11-20', 40, 4000, 500, '2024-11-25', "PE", "Recife",
	"Campina do Barreto", "Rua Direita", 178, null, "50370-580", 
    "(81)998562356", "(81)987456123", null);

delimiter $$
create trigger trg_aft_insert_itensvendaprod after insert
on itensvendaprod
for each row
	begin
		update venda 
			set valorTotal =  valorTotal + new.valordevenda * new.quantidade  - new.descontoProd
				where idVenda = new.Venda_idVenda;
		update produto
			set quantidade = quantidade - new.quantidade
				where idProduto = new.Produto_idProduto;
    end $$
delimiter ;

drop trigger trg_aft_insert_itensvendaprod;

insert into venda (datavenda, valortotal, desconto, Funcionario_cpf, Cliente_cpf)
	value ('2024-12-02 21:34', 0.0, 0.0, "111.222.333-44", "012.345.678-90");

insert into itensvendaprod
	values (266, 7, 10, 1, 0.0),
		(266, 8, 12, 7, 24.0),
        (266, 9, 40, 2, 20.0);

delimiter $$
create trigger trg_aft_insert_itensvendaprod after insert
on itensvendaprod
for each row
	begin
		update venda
			set valorTotal = valorTotal + new.valorDeVenda * new.quantidade 
								- new.descontoProd * new.quantidade
				where idVenda = new.Venda_idVenda;
		update produto
			set quantidade = quantidade - new.quantidade
				where idProduto = new.Produto_idProduto;
    end $$
delimiter ;    

drop trigger trg_aft_insert_itensvendaprod;

insert into venda (dataVenda, valorTotal, desconto, Funcionario_CPF, Cliente_CPF)
	value ('2024-12-09 20:03', 0.0, 0.0, "123.456.789-02", "624.987.130-54");
    
insert into itensvendaprod
	values (264, 1, 5.0, 4, 0.0), 
			(264, 2, 7.0, 3, 2.33),
            (264, 3, 15.0, 2, 0.0),
            (264, 4, 10.0, 2, 2.5);
    
delimiter $$
create trigger tgr_aft_delete_itensvendaprod after delete
on itensvendaprod
for each row
	begin
		update venda
			set valorTotal = valorTotal - (old.valorDeVenda * old.quantidade 
								- old.descontoProd * old.quantidade)
				where idVenda = old.Venda_idVenda;
		update produto
			set quantidade = quantidade + old.quantidade
				where idProduto = old.Produto_idProduto;
    end $$
delimiter ;    
    
delete from itensvendaprod
	where Venda_idVenda = 264 and Produto_idProduto = 4;
            
delimiter $$
create trigger trg_aft_update_itensvendaprod after update
on itensvendaprod
for each row
	begin
		if (new.quantidade > old.quantidade) then
			update venda
				set valorTotal = valorTotal + new.valorDeVenda * (new.quantidade - old.quantidade) 
								- new.descontoProd * (new.quantidade - old.quantidade)
					where idVenda = new.Venda_idVenda;
			update produto
				set quantidade = quantidade - (new.quantidade - old.quantidade)
					where idProduto = new.Produto_idProduto;
		else
			update venda
			set valorTotal = valorTotal - (old.valorDeVenda * (old.quantidade - new.quantidade)
								- old.descontoProd * (old.quantidade - new.quantidade))
				where idVenda = old.Venda_idVenda;
			update produto
				set quantidade = quantidade + (old.quantidade - new.quantidade)
					where idProduto = old.Produto_idProduto;
        end if;
    end $$
delimiter ;
    
update itensvendaprod
	set quantidade = 10
		where Venda_idVenda = 264 and Produto_idProduto = 1;
        
update itensvendaprod
	set quantidade = 7
		where Venda_idVenda = 264 and Produto_idProduto = 1;






