CREATE TABLE My_data.Gender AS
    SELECT DISTINCT member_gender AS name,
                 CASE
                    WHEN member_gender = 'Male' THEN 1
                    WHEN member_gender = 'Female' THEN 2
                    ELSE 0 
                 END AS gender_id
    FROM My_data.Trips
    WHERE member_gender IS NOT NULL;