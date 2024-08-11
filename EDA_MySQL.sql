#EDA using MySQL

Select * from layoffs_staging2
;


Select max(total_laid_off), max(percentage_laid_off) from layoffs_staging2
;


Select * from layoffs_staging2 where percentage_laid_off = 1
order by total_laid_off desc
;

Select * from layoffs_staging2 where percentage_laid_off = 1
order by funds_raised_millions desc
;

Select company, sum(total_laid_off)
 from layoffs_staging2 
 group by company
 order by 2 desc
;

select min(`date`), max(`date`)
from layoffs_staging2;

Select country, sum(total_laid_off)
 from layoffs_staging2 
 group by country
 order by 2 desc
;

Select * from layoffs_staging2;

Select stage, sum(total_laid_off)
 from layoffs_staging2 
 group by stage
 order by 2 desc
;

Select company, avg(percentage_laid_off)
 from layoffs_staging2 
 group by company
 order by 2 desc
;

select substring(`date`,1,7) as `Month`, sum(total_laid_off)
from layoffs_staging2
where substring(`date`,1,7) is not null
group by `Month`
order by 1 asc;

With Rolling_Total as
(
select substring(`date`,1,7) as `Month`, sum(total_laid_off) as total_off
from layoffs_staging2
where substring(`date`,1,7) is not null
group by `Month`
order by 1 asc)

select `Month`, total_off, sum(total_off) over(order by `Month`) as rolling_total
from Rolling_Total; 

Select company, sum(total_laid_off)
 from layoffs_staging2 
 group by company
 order by 2 desc
 ;
 
 Select company, Year(`date`), sum(total_laid_off)
 from layoffs_staging2 
 group by company, Year(`date`)
 order by 3 desc
 ;
 
 With Company_Year (company, years, total_laid_off) as
 (Select company, Year(`date`), sum(total_laid_off)
 from layoffs_staging2 
 group by company, Year(`date`)
 order by 3 desc),
 Company_Year_Rank as
 (select *, dense_rank() over( partition by years order by total_laid_off desc) as ranking
 from Company_Year
 where years is not null)
 
 select * from Company_Year_Rank
 where Ranking <= 5
 ;
 

 ;
 
 