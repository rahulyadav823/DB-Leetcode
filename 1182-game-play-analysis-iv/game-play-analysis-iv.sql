With 
players as (
    select player_id , min(event_date) as first_login
    from activity
    group by 1
)
select round(
    count(Players.player_id) /(
        select count(distinct activity.player_id)
        from activity
    ),
    2
) as fraction

from players inner join activity on (
    players.player_id = activity.player_id 
    and datediff(players.first_login, activity.event_date) = -1
) ;