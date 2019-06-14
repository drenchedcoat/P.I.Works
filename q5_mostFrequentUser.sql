SELECT username, emailaddress, UserId, COUNT(*) as TotalLogins
FROM i_user_login_logs INNER JOIN i_user
WHERE username != "Administrator"
GROUP BY UserId
HAVING COUNT(*) = ( SELECT MAX(TotalLogin) as HighestLogin
                    FROM ( SELECT UserId, count(*) as TotalLogin
                           FROM i_user_login_logs
                           GROUP BY UserId
                         ) AS t
                  )
