insert into cliente (cpf, nome, sexo, email, telefone, dataNasc)
	value ("321.654.789-00", "Patrícia Oliveira", 'F', 
		"patricia.oliveira@bol.com", "81981907665", "1990-12-14");

insert into enderecoCli (cliente_cpf, uf, cidade, bairro, rua,
	numero, comp, cep)
    value ("321.654.789-00", "PE", "Recife", "Santo Amaro", 
		"Rua Ilha Joaneiro", 145, "H", "50040-130");
        
insert into planosaude (cliente_cpf, numero, nome)
	value ("321.654.789-00", "543867-90", "Unimed Recife");

insert into cliente (cpf, nome, sexo, email, telefone, dataNasc)
	values ("112.654.789-10", "Deivid Santos", 'M', 
		"deivid.santos@gmail.com", "81981907644", "1998-05-18"),
			("345.654.789-10", "Larissa Nunes", 'F', 
		"larissa.nunes@gmail.com", "81981905644", "2004-07-12"),
			("666.654.789-10", "Zuíla Lima", 'F', 
		"zuila.lima@gmail.com", "81991909944", "1999-11-04");

INSERT INTO cliente (cpf, nome, sexo, email, telefone, dataNasc)
VALUES
    ("444.654.789-10", "Bruno Martins", 'M', "bruno.martins@gmail.com", "81981987655", "1990-02-28"),
    ("555.654.789-10", "Ana Clara Sousa", 'F', "ana.clara@gmail.com", "81992874563", "2001-03-19"),
    ("234.654.789-10", "Gabriel Ferreira", 'M', "gabriel.ferreira@gmail.com", "81985673434", "1996-06-07"),
    ("876.654.789-10", "Mariana Costa", 'F', "mariana.costa@gmail.com", "81987654743", "1997-10-15"),
    ("987.654.789-10", "Lucas Oliveira", 'M', "lucas.oliveira@gmail.com", "81985692334", "1993-09-22"),
    ("132.654.789-10", "Patrícia Mendes", 'F', "patricia.mendes@gmail.com", "81998347347", "1995-04-11"),
    ("456.654.789-10", "Tiago Farias", 'M', "tiago.farias@gmail.com", "81987654789", "1994-12-21"),
    ("234.654.111-10", "Camila Ribeiro", 'F', "camila.ribeiro@gmail.com", "81989811234", "1999-05-08"),
    ("432.654.789-10", "Felipe Araújo", 'M', "felipe.araujo@gmail.com", "81987455632", "1989-11-30"),
    ("765.654.789-10", "Raquel Almeida", 'F', "raquel.almeida@gmail.com", "81989745322", "1991-03-03"),
    ("986.654.789-10", "Pedro Henrique", 'M', "pedro.henrique@gmail.com", "81985671234", "1992-07-19"),
    ("321.654.789-10", "Natália Souza", 'F', "natalia.souza@gmail.com", "81988451234", "2000-02-01"),
    ("654.654.789-10", "Ricardo Nascimento", 'M', "ricardo.nascimento@gmail.com", "81988653421", "1995-06-30"),
    ("789.654.789-10", "Vanessa Rocha", 'F', "vanessa.rocha@gmail.com", "81988765432", "1996-01-15"),
    ("321.321.789-10", "Diego Barros", 'M', "diego.barros@gmail.com", "81987653214", "1988-10-10"),
    ("456.456.789-10", "Juliana Cavalcanti", 'F', "juliana.cavalcanti@gmail.com", "81987542145", "1997-04-28"),
    ("567.567.789-10", "Igor Sales", 'M', "igor.sales@gmail.com", "81987675432", "1994-11-12"),
    ("987.987.789-10", "Amanda Lima", 'F', "amanda.lima@gmail.com", "81981234567", "2002-08-23"),
    ("888.654.789-10", "Paulo Andrade", 'M', "paulo.andrade@gmail.com", "81987654321", "1993-09-15"),
    ("999.654.789-10", "Sabrina Matos", 'F', "sabrina.matos@gmail.com", "81989871234", "2000-12-02"),
    ("111.111.789-10", "Fernando Campos", 'M', "fernando.campos@gmail.com", "81986547899", "1987-07-05"),
    ("222.222.789-10", "Alessandra Borges", 'F', "alessandra.borges@gmail.com", "81983214785", "1990-01-17"),
    ("333.333.789-10", "Rodrigo Alves", 'M', "rodrigo.alves@gmail.com", "81987652341", "1989-05-24"),
    ("444.444.789-10", "Bianca Reis", 'F', "bianca.reis@gmail.com", "81985671423", "2003-06-11"),
    ("555.555.789-10", "Gustavo Neves", 'M', "gustavo.neves@gmail.com", "81982134567", "1992-03-22"),
    ("666.666.789-10", "Cláudia Dias", 'F', "claudia.dias@gmail.com", "81988765431", "1995-08-18"),
    ("777.777.789-10", "Renato Moraes", 'M', "renato.moraes@gmail.com", "81987659871", "1996-09-06");

INSERT INTO enderecoCli (cliente_cpf, uf, cidade, bairro, rua, numero, comp, cep)
VALUES
    ("112.654.789-10", "PE", "Recife", "Boa Viagem", "Rua dos Navegantes", 1234, "Apt 203", "51020-020"),
    ("345.654.789-10", "PE", "Olinda", "Casa Caiada", "Avenida Governador Carlos de Lima Cavalcanti", 567, "", "53130-100"),
    ("666.654.789-10", "PE", "Jaboatão", "Piedade", "Rua José Nunes da Cunha", 89, "Bloco B", "54400-080"),
    ("444.654.789-10", "PE", "Recife", "Santo Amaro", "Rua do Príncipe", 678, "", "50050-070"),
    ("555.654.789-10", "PE", "Olinda", "Carmo", "Rua 15 de Novembro", 45, "Casa", "53010-100"),
    ("234.654.789-10", "PE", "Jaboatão", "Candeias", "Avenida Bernardo Vieira de Melo", 1324, "Apt 402", "54410-000"),
    ("876.654.789-10", "PE", "Recife", "Casa Forte", "Rua Parnamirim", 556, "", "52060-010"),
    ("987.654.789-10", "PE", "Olinda", "Ribeira", "Rua de São Bento", 98, "", "53120-070"),
    ("132.654.789-10", "PE", "Recife", "Madalena", "Rua Real da Torre", 324, "Bloco C", "50710-020"),
    ("456.654.789-10", "PE", "Jaboatão", "Barra de Jangada", "Rua Desembargador Antônio Pereira", 567, "", "54420-120"),
    ("234.654.111-10", "PE", "Olinda", "Varadouro", "Rua do Sol", 210, "Casa", "53110-070"),
    ("432.654.789-10", "PE", "Recife", "Aflitos", "Rua do Futuro", 987, "Apt 201", "52060-030"),
    ("765.654.789-10", "PE", "Jaboatão", "Piedade", "Avenida Beira Mar", 340, "Cobertura", "54400-010"),
    ("986.654.789-10", "PE", "Olinda", "Jardim Atlântico", "Rua do Farol", 432, "", "53140-090"),
    ("321.654.789-10", "PE", "Recife", "Santo Amaro", "Rua Ilha Joaneiro", 145, "H", "50040-130"),
    ("654.654.789-10", "PE", "Olinda", "Bonsucesso", "Rua Joaquim Nabuco", 230, "", "53130-220"),
    ("789.654.789-10", "PE", "Recife", "Derby", "Avenida Agamenon Magalhães", 254, "Bloco 1", "52011-010"),
    ("321.321.789-10", "PE", "Jaboatão", "Candeias", "Rua Aniceto Varejão", 324, "Apt 702", "54420-120"),
    ("456.456.789-10", "PE", "Recife", "Boa Vista", "Rua da Aurora", 785, "", "50050-000"),
    ("567.567.789-10", "PE", "Olinda", "Casa Caiada", "Rua do Atlântico", 123, "", "53130-200"),
    ("987.987.789-10", "PE", "Recife", "Encruzilhada", "Rua Professor José dos Anjos", 243, "", "52041-000"),
    ("888.654.789-10", "PE", "Olinda", "Amparo", "Rua do Bonfim", 78, "", "53120-090"),
    ("999.654.789-10", "PE", "Jaboatão", "Barra de Jangada", "Rua Paulo Freire", 678, "Casa", "54420-180"),
    ("111.111.789-10", "PE", "Recife", "Graças", "Rua das Graças", 456, "", "52011-060"),
    ("222.222.789-10", "PE", "Olinda", "Ribeira", "Rua da Sé", 112, "", "53120-200"),
    ("333.333.789-10", "PE", "Recife", "Boa Viagem", "Avenida Boa Viagem", 2345, "Apt 908", "51021-000"),
    ("444.444.789-10", "PE", "Jaboatão", "Piedade", "Rua Arão Lins de Andrade", 432, "Bloco D", "54410-040"),
    ("555.555.789-10", "PE", "Recife", "Espinheiro", "Rua Quarenta e Oito", 987, "Apt 303", "52020-010"),
    ("666.666.789-10", "PE", "Olinda", "Varadouro", "Avenida Presidente Kennedy", 123, "", "53110-200"),
    ("777.777.789-10", "PE", "Recife", "Pina", "Rua da Moeda", 56, "Apt 202", "51011-020");

