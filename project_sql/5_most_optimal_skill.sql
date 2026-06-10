-- what are the most optimal skills to learn. (aka its high in demand and also a high-paying skill)
-- get the job count and avg salary per skill
-- helps indentify which skill is most optimal by looking for presence of demand and good salary per skill




SELECT skills_dim.skill_id, skills_dim.skills, count(job_postings_fact.job_id) AS Demand, round(avg(job_postings_fact.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact 
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE salary_year_avg IS NOT NULL AND
job_work_from_home = TRUE AND
job_title_short = 'Data Analyst'
GROUP BY skills_dim.skill_id
HAVING count(job_postings_fact.job_id) > 10
ORDER BY Demand DESC
LIMIT 10


-- results in: 

[
  {
    "skill_id": 0,
    "skills": "sql",
    "demand": "398",
    "avg_salary": "97237"
  },
  {
    "skill_id": 181,
    "skills": "excel",
    "demand": "256",
    "avg_salary": "87288"
  },
  {
    "skill_id": 1,
    "skills": "python",
    "demand": "236",
    "avg_salary": "101397"
  },
  {
    "skill_id": 182,
    "skills": "tableau",
    "demand": "230",
    "avg_salary": "99288"
  },
  {
    "skill_id": 5,
    "skills": "r",
    "demand": "148",
    "avg_salary": "100499"
  },
  {
    "skill_id": 183,
    "skills": "power bi",
    "demand": "110",
    "avg_salary": "97431"
  },
  {
    "skill_id": 7,
    "skills": "sas",
    "demand": "63",
    "avg_salary": "98902"
  },
  {
    "skill_id": 186,
    "skills": "sas",
    "demand": "63",
    "avg_salary": "98902"
  },
  {
    "skill_id": 196,
    "skills": "powerpoint",
    "demand": "58",
    "avg_salary": "88701"
  },
  {
    "skill_id": 185,
    "skills": "looker",
    "demand": "49",
    "avg_salary": "103795"
  }
]