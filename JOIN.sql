select b.book_id, a.name, a.author_id, b.title
from books as b 
join authors as a 
    on a.author_id = b.author_id
where a.author_id between 1 and 5;

select c.name, b.title, a.name, t.type
from transactions as t 
join books as b 
    on t.book_id = b.book_id
join clients as C 
    on t.client_id = c.client_id
join authors as a 
 on b.author_id = a.author_id
where c.gender = 'M'
    and t.type IN ('sell', 'lend');