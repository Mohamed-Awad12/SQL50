with daily_total as (
    select visited_on,sum(amount) 
    as amount
    from Customer
    group by visited_on
),

moving_avg as (
    select a.visited_on, sum(b.amount) AS amount,round(sum(b.amount) / 7, 2) AS average_amount
    from daily_total a
    join daily_total b 
    on b.visited_on between date_sub(a.visited_on, interval 6 day) and a.visited_on
    group by a.visited_on
    having count(b.visited_on) = 7
)

select visited_on, amount, average_amount
from moving_avg
order by visited_on;
