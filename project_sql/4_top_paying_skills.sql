SELECT
skills,
round(avg(salary_year_avg), 2) as average_salary
from Job_postings_fact
INNER JOIN skills_job_dim ON Job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst'
AND salary_year_avg IS NOT NULL
GROUP BY skills
ORDER BY average_salary DESC
LIMIT 25 ;