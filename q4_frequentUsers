SELECT UserId, COUNT(*) as TotalLogins
FROM i_user_login_logs INNER JOIN i_user
WHERE TotalLogins > 3
GROUP BY UserId
HAVING COUNT(*) = ( SELECT UserId, count(*) as TotalLogin
                    FROM i_user_login_logs
                    GROUP BY UserId
                  ) AS t
