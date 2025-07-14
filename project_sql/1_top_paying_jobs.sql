SELECT job_id,
    job_title,
    job_location,
    job_posted_date,
    job_schedule_type,
    salary_year_avg,
    name as company_name
FROM job_postings_fact
LEFT JOIN company_dim ON Job_postings_fact.company_id=company_dim.company_id
WHERE job_title = 'Data Analyst'
    and job_location = 'Anywhere'
    and salary_year_avg IS NOT NULL
order by salary_year_avg desc
limit 10;