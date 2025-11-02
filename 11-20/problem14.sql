SELECT 
    s.user_id, 
    ROUND(
        SUM(CASE WHEN action = 'confirmed' THEN 1.0 ELSE 0.0 END) 
        / CASE WHEN COUNT(action) = 0 THEN 1.0 ELSE COUNT(action) END, 
        2
    ) AS confirmation_rate
FROM 
    signups s 
LEFT JOIN 
    confirmations c ON s.user_id = c.user_id 
GROUP BY 
    s.user_id;
