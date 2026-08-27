-- Xom Data · Today's showtimes in time order
-- Problem: https://xomdata.com/practice/easy-join-004
-- Solved: 2026-08-27

-- Viết SQL của bạn ở đây
SELECT s.start_time , m.title, s.screen from showtimes s
inner join movies m on m.id= s.movie_id
order by start_time asc, title asc;
