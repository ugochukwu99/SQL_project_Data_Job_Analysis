/*
Questions: what are the most in demand skills for data analysts?
Join job postings to inner join table similar to query 2
- Identify the top 5 In-demand skills for a data analyst.
focus on all job postings.
why? Retrieves the top 5 skills with the highest demand in the job market,
providing insights into the most valuable skills for job seekers 
*/


SELECT 
       skills_dim.skills,
       COUNT(skills_job_dim.job_id) AS demand_count
FROM 
       job_postings_fact
INNER JOIN 
       skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN 
       skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
       job_title = 'Data Analyst'
       -- AND job_work_from_home = True
GROUP BY 
       skills_dim.skills
ORDER BY 
       demand_count DESC
LIMIT 5;

/*
-Here's the breakdown of the most demanded skills for data analysts in 2023
-SQL and Excel remain fundamental, emphasizing the need for strong foundational skills in data processing and spreadsheet manipulation.
-Programming and Visualization Tools like Python, Tableau, and Power BI are essential, pointing towards the increasing importance of technical skills in data storytelling and decision support.
[
  {
    "skills": "sql",
    "demand_count": "24099"
  },
  {
    "skills": "excel",
    "demand_count": "15154"
  },
  {
    "skills": "python",
    "demand_count": "14246"
  },
  {
    "skills": "tableau",
    "demand_count": "12112"
  },
  {
    "skills": "power bi",
    "demand_count": "10156"
  }
]
*/