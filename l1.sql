use avaliacao_22a;

select * from livros;

# 1
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) 
VALUES ('As Crônicas de Nárnia', 'C.S. Lewis', 1950, true, 'fantasia', '978-0064471190', 'HarperCollins', 768, 'inglês');

# 2
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) values
('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, true, 'Ficção', '978-0241968581', 'Penguin Books', 422, 'Espanhol'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, true, 'Fantasia', '978-0439708180', 'Bloomsbury', 309, 'Inglês'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, true, 'Fantasia', '978-0618640157', 'HarperCollins', 423, 'Inglês');

# 3
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) 
values ('os Olimpianos', 'Gustave Courbet', 1974, true, 'história', '200-3200842069', 'Principis', 380, 'francês');

# 4
update livros
set disponivel = false
where ano_publicacao < 2000;

# 5
update livros
set editora = 'Plume House'
where titulo = '1984';

# 6
update livros
set idioma = 'Inglês'
where editora = 'Penguin Books';

# 7
update livros
set titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
where ISBN = '978-0439708180';

# 8
delete from livros where categoria = 'terror';

# 9
delete from livros where idioma = 'francês' and ano_publicacao < 1970;

# 10
delete from livros where titulo = 'As Crônicas de Nárnia';

# 11
delete from livros where editora = 'Penguin Books';

# 12
select * from livros
where quantidade_paginas > 500;

# 13
select categoria, count(categoria) from livros
group by categoria;

# 14
select * from livros 
limit 5;

# 15 
select sum(quantidade_paginas), avg(quantidade_paginas) from livros 
where categoria = 'drama';
	
# 16
select avg(ano_publicacao) from livros;

# 17
select max(ano_publicacao), min(ano_publicacao) from livros;

# 18
select * from livros 
order by ano_publicacao desc;

# 19
select titulo from livros where idioma = 'inglês'
union
select titulo from livros where idioma = 'Português';

# 20
select * from livros 
where autor = 'George Orwell';