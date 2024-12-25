/*
Answers:
-What are the top skill based on salary?
-look at the average salary associated with each skill for Data Analyst postions
-Focuses on roles with specified salaries regardless of location
-why? it reveals how different skill impact salary levels for data analytics and 
helps identify the most financially rewarding skills or improve
*/

SELECT 
       skills,
   ROUND(AVG(salary_year_avg), 0) AS Avg_salary
FROM        job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
     job_title = 'Data Analyst' AND
      salary_year_avg IS NOT NULL
GROUP BY 
    skills
ORDER BY 
    Avg_salary
LIMIT 25;

/*
Here's a breakdown of the results for top paying skills for Data Analysts:
- High Demand for Big Data & ML Skills: Top salaries are commanded by analysts skilled in big data technologies (PySpark, Couchbase), machine learning tools (DataRobot, Jupyter), and Python libraries (Pandas, NumPy), reflecting the industry's high valuation of data processing and predictive modeling capabilities.
- Software Development & Deployment Proficiency: Knowledge in development and deployment tools (GitLab, Kubernetes, Airflow) indicates a lucrative crossover between data analysis and engineering, with a premium on skills that facilitate automation and efficient data pipeline management.
- Cloud Computing Expertise: Familiarity with cloud and data engineering tools (Elasticsearch, Databricks, GCP) underscores the growing importance of cloud-based analytics environments, suggesting that cloud proficiency significantly boosts earning potential in data analytics.

[
  {
    "skills": "drupal",
    "avg_salary": "43656"
  },
  {
    "skills": "fortran",
    "avg_salary": "50000"
  },
  {
    "skills": "trello",
    "avg_salary": "59496"
  },
  {
    "skills": "macos",
    "avg_salary": "61507"
  },
  {
    "skills": "smartsheet",
    "avg_salary": "61656"
  },
  {
    "skills": "gdpr",
    "avg_salary": "64667"
  },
  {
    "skills": "node",
    "avg_salary": "65000"
  },
  {
    "skills": "graphql",
    "avg_salary": "65000"
  },
  {
    "skills": "vue",
    "avg_salary": "65000"
  },
  {
    "skills": "jquery",
    "avg_salary": "65000"
  },
  {
    "skills": "typescript",
    "avg_salary": "65000"
  },
  {
    "skills": "planner",
    "avg_salary": "66424"
  },
  {
    "skills": "dart",
    "avg_salary": "66445"
  },
  {
    "skills": "vb.net",
    "avg_salary": "67000"
  },
  {
    "skills": "colocation",
    "avg_salary": "67500"
  },
  {
    "skills": "sass",
    "avg_salary": "67699"
  },
  {
    "skills": "perl",
    "avg_salary": "70000"
  },
  {
    "skills": "seaborn",
    "avg_salary": "70000"
  },
  {
    "skills": "workfront",
    "avg_salary": "70000"
  },
  {
    "skills": "spreadsheet",
    "avg_salary": "72187"
  },
  {
    "skills": "plotly",
    "avg_salary": "72625"
  },
  {
    "skills": "ggplot2",
    "avg_salary": "73475"
  },
  {
    "skills": "wire",
    "avg_salary": "73500"
  },
  {
    "skills": "php",
    "avg_salary": "75125"
  },
  {
    "skills": "phoenix",
    "avg_salary": "75750"
  }
]
*/
