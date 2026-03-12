# Module 1 Homework docker & SQL
## Question 1. Understanding Docker images
**Asnwer:** if you don't need any configuration in dockerfile you can run bash
```bash
docker run -it --entrypoint=bash python:3.13.11-slim
```
The version of `pip` is 25.3 by using command `pip --version`

## Question 2. Understanding Docker networking and docker-compose
**Answer:** db:5432, postgres:5432

## Question 3. Counting short trips
**Answer:** 8,007

SQL:
```sql
select count(*) from green_taxi
where trip_distance <= 1 and lpep_pickup_datetime >= '2025-11-01' and lpep_pickup_datetime < '2025-12-01';
```

## Question 4. Longest trip for each day
**Answer:** 2025-11-14

SQL:
```sql
select lpep_pickup_datetime, trip_distance from green_taxi
where trip_distance <= 100
order by trip_distance desc;
```

## Question 5. Biggest pickup zone
**Answer:** East Harlem North

SQL:
```sql
select 
    "Zone", 
    SUM(total_amount) as total_revenue
from green_taxi
left join taxi_zone_lookup
    on "PULocationID" = "LocationID"
where lpep_pickup_datetime >= '2025-11-18' 
  and lpep_pickup_datetime < '2025-11-19'
group by "Zone"
order by total_revenue desc;
```

## Question 6. Largest tip
**Answer:** Yorkville West

SQL:
```sql
select 
    do_loc."Zone" as dropoff_zone,
    t.tip_amount
from green_taxi t
join taxi_zone_lookup pu_loc 
    on t."PULocationID" = pu_loc."LocationID"
join taxi_zone_lookup do_loc 
    on t."DOLocationID" = do_loc."LocationID"
where pu_loc."Zone" = 'East Harlem North'
  and t.lpep_pickup_datetime >= '2025-11-01'
  and t.lpep_pickup_datetime < '2025-12-01'
order by t.tip_amount desc;
```

## Question 7. Terraform Workflow
**Answer:** terraform init, terraform apply -auto-approve, terraform destroy