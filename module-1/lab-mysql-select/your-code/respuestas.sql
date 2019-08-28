#Primer ejercicio

#USE publications;

#SELECT 
#    authors.au_id AS 'AUTHOR ID',
#    authors.au_lname AS 'LAST NAME',
#    authors.au_fname AS 'FIRST NAME',
#    titles.title_id AS 'TITLE',
#    publishers.pub_name AS 'PUBLISHER'
#FROM
#    authors
#        INNER JOIN
#    titleauthor ON authors.au_id = titleauthor.au_id
#        INNER JOIN
#    titles ON titleauthor.title_id = titles.title_id
#        INNER JOIN
#    publishers ON titles.pub_id = publishers.pub_id
# ORDER BY authors.au_id

# Segundo ejercicio
SELECT 
    authors.au_id AS 'AUTHOR ID',
    authors.au_lname AS 'LAST NAME',
    authors.au_fname AS 'FIRST NAME',
    publishers.pub_name AS 'PUBLISHER'
    count(titles.title) AS 'TITLE',
FROM
    authors
        LEFT JOIN
    titleauthor ON authors.au_id = titleauthor.au_id
        LEFT JOIN
    titles ON  titles.title= titleauthor.title_id
        LEFT JOIN
    publishers ON publishers.pub_id = titles.pub_id
ORDER BY publishers.pub_name, authors.au_id
ORDER BY count(titles.title) DESC

# Tercer ejercicio

SELECT 
    authors.au_id AS 'AUTHOR ID',
    authors.au_lname AS 'LAST NAME',
    authors.au_fname AS 'FIRST NAME',
    publishers.pub_name AS 'PUBLISHER'
    count(titles.title) AS 'TITLE',
FROM
    authors
        LEFT JOIN
    titleauthor ON authors.au_id = titleauthor.au_id
        LEFT JOIN
    titles ON  titles.title= titleauthor.title_id
        LEFT JOIN
    publishers ON publishers.pub_id = titles.pub_id
ORDER BY publishers.pub_name, authors.au_id
ORDER BY count(titles.title) DESC


# Cuarto ejercicio
#Usamos COALES(SUM((columna que quiero cambiar, lo que quiero poner)
#Lo que hace la funcion COALESCES es cambiar unos valores por otros.

#BONUS ejercicio