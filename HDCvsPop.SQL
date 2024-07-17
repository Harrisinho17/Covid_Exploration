-- Countries with Highest Death Count per Population

Select Location, MAX(cast(Total_deaths as int)) as TotalDeathCount
FROM "CovidExp"."CovidDeaths"
-- location = 'North America'
WHERE total_deaths is not null 
Group by Location
order by TotalDeathCount desc