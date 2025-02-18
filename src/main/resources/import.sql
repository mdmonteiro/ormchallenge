-- Populando Categorias
INSERT INTO categoria (id, descricao) VALUES (1, 'Curso');
INSERT INTO categoria (id, descricao) VALUES (2, 'Oficina');

-- Populando Atividades (Deve vir depois das Categorias)
INSERT INTO atividade (id, nome, descricao, preco, categoria_id) VALUES (1, 'Curso de HTML', 'Aprenda HTML de forma prática', 80.00, 1);

INSERT INTO atividade (id, nome, descricao, preco, categoria_id) VALUES (2, 'Oficina de Github', 'Controle versões de seus projetos', 50.00, 2);

-- Populando Participantes
INSERT INTO participante (id, nome, email) VALUES (1, 'José Silva', 'jose@gmail.com');

INSERT INTO participante (id, nome, email) VALUES (2, 'Tiago Faria', 'tiago@gmail.com');

INSERT INTO participante (id, nome, email) VALUES (3, 'Maria do Rosário', 'maria@gmail.com');

INSERT INTO participante (id, nome, email) VALUES (4, 'Teresa Silva', 'teresa@gmail.com');

-- Populando Blocos (Deve vir depois das Atividades)
INSERT INTO bloco (id, inicio, fim, atividade_id) VALUES (1, TIMESTAMP '2017-09-25 08:00:00 UTC', TIMESTAMP '2017-09-25 11:00:00 UTC', 1);

INSERT INTO bloco (id, inicio, fim, atividade_id) VALUES (2, TIMESTAMP '2017-09-25 14:00:00 UTC', TIMESTAMP '2017-09-25 18:00:00 UTC', 2);

INSERT INTO bloco (id, inicio, fim, atividade_id) VALUES (3, TIMESTAMP '2017-09-26 08:00:00 UTC', TIMESTAMP '2017-09-26 11:00:00 UTC', 2);

-- Relacionamento Participante ↔ Atividade (Deve vir depois de Atividades e Participantes)
INSERT INTO participante_atividade (participante_id, atividade_id) VALUES (1, 1);
INSERT INTO participante_atividade (participante_id, atividade_id) VALUES (1, 2);
INSERT INTO participante_atividade (participante_id, atividade_id) VALUES (2, 1);
INSERT INTO participante_atividade (participante_id, atividade_id) VALUES (3, 2);
INSERT INTO participante_atividade (participante_id, atividade_id) VALUES (4, 2);