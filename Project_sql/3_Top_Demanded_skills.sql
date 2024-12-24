/*
Questions: what are the most in demand skills for data analysts?
Join job postings to inner join table similar to query 2
- Identify the top 5 In-demand skills for a data analyst.
focus on all job postings.
why? Retrieves the top 5 skills with the highest demand in the job market,
providing insights into the most valuable skills for job seekers 
*/



    SELECT 
         skills,
    COUNT (skills_job_dim.job_id) AS demand_count
    FROM        job_postings_fact
    INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    GROUP BY DESC
            skills
    ORDER BY
            demand_count
    LIMIT 5