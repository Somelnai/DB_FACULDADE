
Alteração tabela departamento:
ALTER TABLE departamento CHANGE nome_departamento nome_departamento CHAR(20) NOT NULL,
CHANGE cod_departamento cod_departamento INT(4) AUTO_INCREMENT;

Alteração tabela disciplina:
ALTER TABLE disciplina CHANGE cod_disciplina cod_disciplina INT(4) AUTO_INCREMENT,
CHANGE fk_cod_departamento fk_cod_departamento INT(4) NOT NULL,
CHANGE nome nome CHAR(20), 
CHANGE carga_horaria carga_horaria INT(4) NOT NULL,
CHANGE descricao descricao TEXT(50), 
CHANGE numero_aluno numero_aluno INT(4) NOT NULL;

Alteração tabela professor:
ALTER TABLE professor CHANGE cod_professor cod_professor INT(4) AUTO_INCREMENT,
CHANGE fk_cod_departamento fk_cod_departamento INT(4),
CHANGE nome nome CHAR(20) NOT NULL,
CHANGE sobrenome sobrenome CHAR(50) NOT NULL,
CHANGE status status BOOLEAN;

Alteração tabela professor_disciplina:
ALTER TABLE professor_disciplina CHANGE fk_cod_professor fk_cod_professor INT(4) NOT NULL,
CHANGE fk_cod_departamento fk_cod_departamento INT(4) NOT NULL;

Alteração tabela curso:
ALTER TABLE curso CHANGE cod_curso cod_curso INT(4) AUTO_INCREMENT,
CHANGE fk_cod_departamento fk_cod_departamento INT(4),
CHANGE nome nome CHAR(20);

Alteração tabela curso_disciplina:
ALTER TABLE curso_disciplina CHANGE fk_cod_curso fk_cod_curso INT(4) NOT NULL,
CHANGE fk_cod_discIplina fk_cod_disciplina INT(4) NOT NULL;

Alteração tabela turma:
ALTER TABLE turma CHANGE cod_turma cod_turma INT(4) AUTO_INCREMENT,
CHANGE fk_cod_curso fk_cod_curso INT(4),
CHANGE periodo periodo CHAR(8),
CHANGE numero_aluno numero_aluno CHAR(4); 

Alteração tabela endereco:
ALTER TABLE endereco CHANGE cod_endereco cod_endereco INT(4) AUTO_INCREMENT,
CHANGE fk_cod_tipo_logradouro fk_cod_tipo_logradouro INT(4) NOT NULL,
CHANGE CEP CEP CHAR(8) NOT NULL,
CHANGE nome_rua nome_rua CHAR(50) NOT NULL,
CHANGE  numero_rua numero_rua INT(4) NOT NULL,
CHANGE bairro bairro CHAR(20) NOT NULL,
CHANGE complemento complemento CHAR(20) NULL;

Alteração tabela aluno:
ALTER TABLE aluno CHANGE fk_cod_curso fk_cod_curso INT(4),
CHANGE fk_cod_turma fk_cod_turma INT(4),
CHANGE fk_cod_endereco fk_cod_endereco INT(4),
CHANGE CPF CPF INT(11),
CHANGE RG RG INT(15),
CHANGE nome_pai nome_pai CHAR(50),
CHANGE nome_mae nome_mae CHAR(50);

Alteração tabela aluno_disciplina:
ALTER TABLE aluno_disciplina CHANGE fk_RA_aluno fk_RA_aluno INT(4) NOT NULL,
CHANGE fk_cod_disciplina fk_cod_disciplina INT(4) NOT NULL;

Alteração tabela telefone_aluno:
ALTER TABLE telefone_aluno CHANGE fk_RA_aluno fk_RA_aluno INT(4) NOT NULL,
CHANGE fk_cod_telefone fk_cod_telefone INT(4);

Alteração tabela historico:
ALTER TABLE historico CHANGE cod_historico cod_historico INT(4) AUTO_INCREMENT,
CHANGE fk_RA_aluno fk_RA_aluno INT(4) NOT NULL;

Alteração tabela disciplina_historico:
ALTER TABLE disciplina_historico CHANGE fk_cod_disciplina fk_cod_disciplina INT(4) NOT NULL,
CHANGE fk_cod_historico fk_cod_historico INT(4) NOT NULL;

Alteração tabela aluno:
ALTER TABLE aluno CHANGE CPF CPF CHAR(15);
ALTER TABLE aluno DROP RG;

Alteração tabela tipo_telefone:
ALTER TABLE tipo_telefone CHANGE tipo_telefone tipo_telefone CHAR(11);
 
Tabela dropada para alteração:
DROP TABLE professor_disciplina;