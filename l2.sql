# 1
SELECT * FROM livros 
WHERE disponivel = true;

# 2
SELECT * FROM livros 
WHERE editora = 'HarperCollins';

# 3
SELECT * FROM livros 
WHERE ano_publicacao BETWEEN 2000 AND 2010;

# 4
SELECT autor, COUNT(autor) AS num_livros 
FROM livros 
GROUP BY autor 
HAVING COUNT(autor) > 3;

# 5
SELECT * FROM livros 
WHERE titulo LIKE '%Senhor%';

# 6
SELECT * FROM livros 
WHERE categoria IN ('Fantasia', 'Ficção Científica', 'Fábula');

# 7
SELECT DISTINCT idioma FROM livros;

# 8
SELECT * FROM livros 
WHERE numero_paginas BETWEEN 200 AND 400;

# 9
SELECT EXISTS(SELECT * FROM livros 
WHERE categoria = 'História') AS existe_historia;

# 10
SELECT titulo, ano_publicacao FROM livros 
ORDER BY ano_publicacao;