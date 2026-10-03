
-- =========================================
-- AI Job Market Analysis SQL Project
-- Dataset: AI Job Market Dataset (2020-2026)
-- =========================================


-- =========================================
-- 1. DATABASE & TABLE SETUP
-- =========================================

CREATE DATABASE ai_job_market;

USE ai_job_market;

CREATE TABLE ai_job_market (
    job_id INT,
    job_title VARCHAR(100),
    company_size VARCHAR(50),
    company_industry VARCHAR(100),
    country VARCHAR(50),
    remote_type VARCHAR(50),
    experience_level VARCHAR(50),
    years_experience INT,
    education_level VARCHAR(50),
    skills_python INT,
    skills_sql INT,
    skills_ml INT,
    skills_deep_learning INT,
    skills_cloud INT,
    salary DECIMAL(12,2),
    job_posting_month INT,
    job_posting_year INT,
    hiring_urgency VARCHAR(50),
    job_openings INT
);


-- =========================================
-- 2. BASIC DATA ANALYSIS
-- =========================================

-- Q1. What is the total number of job postings?

SELECT COUNT(*) AS total_rows
FROM ai_job_market;


-- Q2. What are the distinct job titles?

SELECT DISTINCT job_title
FROM ai_job_market;


-- Q3. How many job postings are there for each job title?

SELECT
    job_title,
    COUNT(*) AS total_postings
FROM ai_job_market
GROUP BY job_title
ORDER BY total_postings;


-- Q4. How many job postings are there for each job title, ordered from highest to lowest?

SELECT
    job_title,
    COUNT(*) AS total_postings
FROM ai_job_market
GROUP BY job_title
ORDER BY total_postings DESC;


-- Q5. How many job postings are there in each company industry?

SELECT
    company_industry,
    COUNT(*) AS total_postings
FROM ai_job_market
GROUP BY company_industry;


-- Q6. How many job postings are there in each country?

SELECT
    country,
    COUNT(*) AS total_postings
FROM ai_job_market
GROUP BY country
ORDER BY total_postings DESC;


-- Q7. How many job postings are there for each remote work type?

SELECT
    remote_type,
    COUNT(*) AS total_postings
FROM ai_job_market
GROUP BY remote_type
ORDER BY total_postings DESC;


-- Q8. How many job postings are there for each experience level?

SELECT
    experience_level,
    COUNT(*) AS total_postings
FROM ai_job_market
GROUP BY experience_level
ORDER BY total_postings DESC;


-- Q9. How many job postings are there for each education level?

SELECT
    education_level,
    COUNT(*) AS total_postings
FROM ai_job_market
GROUP BY education_level
ORDER BY total_postings DESC;


-- =========================================
-- 3. SALARY ANALYSIS
-- =========================================

-- Q10. What is the average salary for each job title?

SELECT
    job_title,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY job_title
ORDER BY average_salary DESC;


-- Q11. What is the average salary for each experience level?

SELECT
    experience_level,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY experience_level
ORDER BY average_salary DESC;


-- Q12. What is the average salary for each remote work type?

SELECT
    remote_type,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY remote_type
ORDER BY average_salary DESC;


-- Q13. What is the average salary in each country?

SELECT
    country,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY country
ORDER BY average_salary DESC;


-- Q14. What is the average salary for each education level?

SELECT
    education_level,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY education_level
ORDER BY average_salary DESC;


-- Q15. What is the average salary for each company industry?

SELECT
    company_industry,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY company_industry
ORDER BY average_salary DESC;


-- Q16. What are the minimum, maximum, and average salaries?

SELECT
    MIN(salary) AS lowest_salary,
    MAX(salary) AS highest_salary,
    AVG(salary) AS average_salary
FROM ai_job_market;


-- =========================================
-- 4. JOB OPENINGS ANALYSIS
-- =========================================

-- Q17. What is the total number of job openings for each job title?

SELECT
    job_title,
    SUM(job_openings) AS total_job_openings
FROM ai_job_market
GROUP BY job_title
ORDER BY total_job_openings DESC;


-- Q18. What is the total number of job openings in each country?

SELECT
    country,
    SUM(job_openings) AS total_job_openings
FROM ai_job_market
GROUP BY country
ORDER BY total_job_openings DESC;


-- Q19. What is the total number of job openings for each experience level?

SELECT
    experience_level,
    SUM(job_openings) AS total_job_openings
FROM ai_job_market
GROUP BY experience_level
ORDER BY total_job_openings DESC;


-- =========================================
-- 5. HIRING URGENCY ANALYSIS
-- =========================================

-- Q20. How many job postings are there for each hiring urgency level?

SELECT
    hiring_urgency,
    COUNT(*) AS total_postings
FROM ai_job_market
GROUP BY hiring_urgency
ORDER BY total_postings DESC;


-- Q21. What is the average salary for each hiring urgency level?

SELECT
    hiring_urgency,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY hiring_urgency
ORDER BY average_salary DESC;


-- =========================================
-- 6. SKILL DEMAND ANALYSIS
-- =========================================

-- Q22. How many job postings require Python?

SELECT
    skills_python,
    COUNT(*) AS total_python
FROM ai_job_market
GROUP BY skills_python;


-- Q23. How many job postings require SQL?

SELECT
    skills_sql,
    COUNT(*) AS total_sql
FROM ai_job_market
GROUP BY skills_sql;


-- Q24. How many job postings require Machine Learning?

SELECT
    skills_ml,
    COUNT(*) AS total_ml
FROM ai_job_market
GROUP BY skills_ml;


-- Q25. How many job postings require Deep Learning?

SELECT
    skills_deep_learning,
    COUNT(*) AS total_deep_learning
FROM ai_job_market
GROUP BY skills_deep_learning;


-- Q26. How many job postings require Cloud skills?

SELECT
    skills_cloud,
    COUNT(*) AS total_cloud
FROM ai_job_market
GROUP BY skills_cloud;


-- =========================================
-- 7. SALARY BY SKILL
-- =========================================

-- Q27. What is the average salary based on Python skill requirement?

SELECT
    skills_python,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY skills_python;


-- Q28. What is the average salary based on SQL skill requirement?

SELECT
    skills_sql,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY skills_sql;


-- Q29. What is the average salary based on Machine Learning skill requirement?

SELECT
    skills_ml,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY skills_ml;


-- Q30. What is the average salary based on Deep Learning skill requirement?

SELECT
    skills_deep_learning,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY skills_deep_learning;


-- Q31. What is the average salary based on Cloud skill requirement?

SELECT
    skills_cloud,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY skills_cloud;


-- =========================================
-- 8. TIME-BASED ANALYSIS
-- =========================================

-- Q32. How many job postings are there for each year?

SELECT
    job_posting_year,
    COUNT(*) AS total_posting
FROM ai_job_market
GROUP BY job_posting_year
ORDER BY total_posting DESC;


-- Q33. What is the average salary for each year?

SELECT
    job_posting_year,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY job_posting_year
ORDER BY average_salary;


-- Q34. How many job postings are there for each month?

SELECT
    job_posting_month,
    COUNT(*) AS total_posting
FROM ai_job_market
GROUP BY job_posting_month
ORDER BY total_posting DESC;


-- Q35. What is the average salary for each month?

SELECT
    job_posting_month,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY job_posting_month
ORDER BY average_salary;


-- =========================================
-- 9. EXPERIENCE & COMPANY ANALYSIS
-- =========================================

-- Q36. What is the average salary for each number of years of experience?

SELECT
    years_experience,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY years_experience
ORDER BY average_salary DESC;


-- Q37. What is the average salary for each company size?

SELECT
    company_size,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY company_size
ORDER BY average_salary DESC;


-- Q38. What is the total number of job openings for each company size?

SELECT
    company_size,
    SUM(job_openings) AS total_job_openings
FROM ai_job_market
GROUP BY company_size
ORDER BY total_job_openings DESC;


-- Q39. What is the average number of job openings per posting in each country?

SELECT
    country,
    AVG(job_openings) AS total_job_openings
FROM ai_job_market
GROUP BY country
ORDER BY total_job_openings DESC;


-- =========================================
-- 10. MOST COMMON JOB TITLE BY COUNTRY
-- =========================================

-- Q40. Which job title has the highest number of postings in each country?

SELECT
    country,
    job_title,
    COUNT(*) AS job_count
FROM ai_job_market
GROUP BY country, job_title
ORDER BY country, job_count DESC;


-- Supporting query: Find the highest posting count in each country

SELECT
    country,
    MAX(job_count) AS highest_job_count
FROM (
    SELECT
        country,
        job_title,
        COUNT(*) AS job_count
    FROM ai_job_market
    GROUP BY country, job_title
) AS job_counts
GROUP BY country;


-- Final Q40 query

SELECT
    jc.country,
    jc.job_title,
    jc.job_count
FROM (
    SELECT
        country,
        job_title,
        COUNT(*) AS job_count
    FROM ai_job_market
    GROUP BY country, job_title
) AS jc
JOIN (
    SELECT
        country,
        MAX(job_count) AS highest_job_count
    FROM (
        SELECT
            country,
            job_title,
            COUNT(*) AS job_count
        FROM ai_job_market
        GROUP BY country, job_title
    ) AS counts
    GROUP BY country
) AS max_counts
ON jc.country = max_counts.country
AND jc.job_count = max_counts.highest_job_count
ORDER BY jc.country;


-- =========================================
-- 11. INTERMEDIATE ANALYSIS
-- =========================================

-- Q41. What are the minimum, maximum, and average salaries for each job title?

SELECT
    job_title,
    MIN(salary) AS lowest_salary,
    MAX(salary) AS highest_salary,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY job_title
ORDER BY average_salary DESC;


-- Q42. For each experience level, find total postings, total openings, and average salary.

SELECT
    experience_level,
    COUNT(*) AS total_job_postings,
    SUM(job_openings) AS total_job_openings,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY experience_level
ORDER BY average_salary DESC;


-- Q43. For each country, find total postings, total openings, and average salary.

SELECT
    country,
    COUNT(*) AS total_job_postings,
    SUM(job_openings) AS total_job_openings,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY country
ORDER BY total_job_openings DESC;


-- Q44. For each company industry, find total postings, total openings, and average salary.

SELECT
    company_industry,
    COUNT(*) AS total_job_postings,
    SUM(job_openings) AS total_job_openings,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY company_industry
ORDER BY average_salary DESC;


-- Q45. Which job titles have more than 8,500 total job openings?

SELECT
    job_title,
    SUM(job_openings) AS total_job_openings,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY job_title
HAVING total_job_openings > 8500;


-- Q46. Which job titles have an average salary higher than the overall average salary?

SELECT
    job_title,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY job_title
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM ai_job_market
)
ORDER BY average_salary DESC;


-- Q47. Which job titles have total openings higher than the average openings
-- of their respective experience level?

SELECT
    experience_level,
    job_title,
    SUM(job_openings) AS total_job_openings
FROM ai_job_market AS a
GROUP BY experience_level, job_title
HAVING SUM(job_openings) > (
    SELECT AVG(job_openings)
    FROM ai_job_market AS b
    WHERE b.experience_level = a.experience_level
)
ORDER BY total_job_openings DESC;


-- Q48. Which job titles have an average salary higher than their country's average salary?

SELECT
    country,
    job_title,
    AVG(salary) AS average_salary
FROM ai_job_market AS a
GROUP BY country, job_title
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM ai_job_market AS b
    WHERE b.country = a.country
)
ORDER BY average_salary DESC;


-- Q49. Which job titles have an average salary higher than their industry's average salary?

SELECT
    company_industry,
    job_title,
    AVG(salary) AS average_salary
FROM ai_job_market AS a
GROUP BY company_industry, job_title
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM ai_job_market AS b
    WHERE b.company_industry = a.company_industry
)
ORDER BY average_salary DESC;


-- =========================================
-- 12. ADVANCED SUBQUERIES
-- =========================================

-- Q50. Which job title has the highest average salary within each experience level?

SELECT
    a.experience_level,
    a.job_title,
    a.average_salary
FROM (
    SELECT
        experience_level,
        job_title,
        AVG(salary) AS average_salary
    FROM ai_job_market
    GROUP BY experience_level, job_title
) AS a
JOIN (
    SELECT
        experience_level,
        MAX(average_salary) AS highest_average_salary
    FROM (
        SELECT
            experience_level,
            job_title,
            AVG(salary) AS average_salary
        FROM ai_job_market
        GROUP BY experience_level, job_title
    ) AS x
    GROUP BY experience_level
) AS b
ON a.experience_level = b.experience_level
AND a.average_salary = b.highest_average_salary
ORDER BY a.experience_level;


-- Q51. Which job titles have an average salary higher than Data Analyst?

SELECT
    job_title,
    AVG(salary) AS average_salary
FROM ai_job_market
GROUP BY job_title
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM ai_job_market
    WHERE job_title = 'Data Analyst'
)
ORDER BY average_salary DESC;


-- Q52. Which job titles have an average salary higher than the average salary
-- of other job titles within the same industry?

SELECT
    company_industry,
    job_title,
    AVG(salary) AS average_salary
FROM ai_job_market AS a
GROUP BY company_industry, job_title
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM ai_job_market AS b
    WHERE b.company_industry = a.company_industry
)
ORDER BY company_industry, average_salary DESC;


-- =========================================
-- 13. CTE ANALYSIS
-- =========================================

-- Q53. Which job titles have an average salary above 120,000?

WITH job_salary AS (
    SELECT
        job_title,
        AVG(salary) AS average_salary
    FROM ai_job_market
    GROUP BY job_title
)
SELECT
    job_title,
    average_salary
FROM job_salary
WHERE average_salary > 120000
ORDER BY average_salary DESC;


-- Q54. Which job titles have an average salary above 120,000
-- and total job openings above 8,500?

WITH job_salary_openings AS (
    SELECT
        job_title,
        AVG(salary) AS average_salary,
        SUM(job_openings) AS total_job_openings
    FROM ai_job_market
    GROUP BY job_title
)
SELECT
    job_title,
    average_salary,
    total_job_openings
FROM job_salary_openings
WHERE average_salary > 120000
AND total_job_openings > 8500
ORDER BY average_salary DESC;


-- =========================================
-- 14. WINDOW FUNCTIONS
-- =========================================

-- Q55. Assign a row number to job postings based on salary
-- within each company industry.

SELECT
    company_industry,
    job_title,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY company_industry
        ORDER BY salary DESC
    ) AS rn
FROM ai_job_market;


-- Q55 Final. Find the highest-paid individual job posting in each industry.

WITH ranked_jobs AS (
    SELECT
        company_industry,
        job_title,
        salary,
        ROW_NUMBER() OVER (
            PARTITION BY company_industry
            ORDER BY salary DESC
        ) AS rn
    FROM ai_job_market
)
SELECT
    company_industry,
    job_title,
    salary
FROM ranked_jobs
WHERE rn = 1;


-- Q56. Rank job titles by their average salary.

WITH job_salary AS (
    SELECT
        job_title,
        AVG(salary) AS average_salary
    FROM ai_job_market
    GROUP BY job_title
)
SELECT
    job_title,
    average_salary,
    RANK() OVER (
        ORDER BY average_salary DESC
    ) AS salary_rank
FROM job_salary;


-- Q57. Rank job titles by average salary within each industry
-- using DENSE_RANK().

WITH job_salary AS (
    SELECT
        company_industry,
        job_title,
        AVG(salary) AS average_salary
    FROM ai_job_market
    GROUP BY company_industry, job_title
)
SELECT
    company_industry,
    job_title,
    average_salary,
    DENSE_RANK() OVER (
        PARTITION BY company_industry
        ORDER BY average_salary DESC
    ) AS salary_rank
FROM job_salary
ORDER BY company_industry, salary_rank;


-- Q58. Find the top 2 highest-paid job titles in each industry.

WITH job_salary AS (
    SELECT
        company_industry,
        job_title,
        AVG(salary) AS average_salary
    FROM ai_job_market
    GROUP BY company_industry, job_title
),
ranked_jobs AS (
    SELECT
        company_industry,
        job_title,
        average_salary,
        ROW_NUMBER() OVER (
            PARTITION BY company_industry
            ORDER BY average_salary DESC
        ) AS salary_rank
    FROM job_salary
)
SELECT
    company_industry,
    job_title,
    average_salary,
    salary_rank
FROM ranked_jobs
WHERE salary_rank <= 2
ORDER BY company_industry, salary_rank;


-- Q59. Find the highest-average-salary job title in each country.

WITH country_job_salary AS (
    SELECT
        country,
        job_title,
        AVG(salary) AS average_salary
    FROM ai_job_market
    GROUP BY country, job_title
),
ranked_jobs AS (
    SELECT
        country,
        job_title,
        average_salary,
        ROW_NUMBER() OVER (
            PARTITION BY country
            ORDER BY average_salary DESC
        ) AS salary_rank
    FROM country_job_salary
)
SELECT
    country,
    job_title,
    average_salary
FROM ranked_jobs
WHERE salary_rank = 1
ORDER BY country;


-- =========================================
-- 15. FINAL ADVANCED SQL ANALYSIS
-- =========================================

-- Q60. Find the top 2 highest-paid job titles in each industry,
-- along with their total job openings.

WITH job_summary AS (
    SELECT
        company_industry,
        job_title,
        AVG(salary) AS average_salary,
        SUM(job_openings) AS total_job_openings
    FROM ai_job_market
    GROUP BY company_industry, job_title
),
ranked_jobs AS (
    SELECT
        company_industry,
        job_title,
        average_salary,
        total_job_openings,
        ROW_NUMBER() OVER (
            PARTITION BY company_industry
            ORDER BY average_salary DESC
        ) AS salary_rank
    FROM job_summary
)
SELECT
    company_industry,
    job_title,
    average_salary,
    total_job_openings,
    salary_rank
FROM ranked_jobs
WHERE salary_rank <= 2
ORDER BY company_industry, salary_rank;
```
