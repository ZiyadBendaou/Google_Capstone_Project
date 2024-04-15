# Google Capstone Project

## Overview

In this project, I analyzed a dataset for Cyclistic, a bike sharing company in Chicago, using SQL for data analysis and Power BI for visualizations. The dataset provided insights into how annual members and casual riders use Cyclistic bikes differently. By leveraging SQL queries, I extracted, transformed, and analyzed the data to uncover trends and patterns. Additionally, I utilized Power BI for visualizations to present key insights and support decision-making.

## About the Company

Cyclistic launched a successful bike-share program in 2016, featuring over 5,800 bicycles and 600 docking stations across Chicago. The program offers various bike options, including reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive. Cyclistic aims to differentiate itself by promoting bike-share for both leisure and commuting purposes.

## Project Goals

- Analyze Cyclistic's bike trip data to understand how annual members and casual riders utilize the service differently.
- Develop marketing strategies to convert casual riders into annual members based on data insights.
- Utilize Power BI for visualizations to present key findings and support decision-making processes.

## Tools Used

- **Data Analysis**: SQL queries were used to extract and analyze the Cyclistic bike trip data.
- **Visualization**: Power BI was used for visualizations to present key insights.

## SQL Queries

### Query 1: Average Ride Length per User Category

```sql
SELECT
    member_casual,
    AVG(EXTRACT(EPOCH FROM ride_length)/60) AS avg_ride_length
FROM
    (
    SELECT member_casual, ride_length FROM trip_data_202304
    UNION ALL
    SELECT member_casual, ride_length FROM trip_data_202305
    UNION ALL
    SELECT member_casual, ride_length FROM trip_data_202306
    UNION ALL
    SELECT member_casual, ride_length FROM trip_data_202307
    UNION ALL
    SELECT member_casual, ride_length FROM trip_data_202308
    UNION ALL
    SELECT member_casual, ride_length FROM trip_data_202309
    UNION ALL
    SELECT member_casual, ride_length FROM trip_data_202310
    UNION ALL
    SELECT member_casual, ride_length FROM trip_data_202311
    UNION ALL
    SELECT member_casual, ride_length FROM trip_data_202312
    UNION ALL
    SELECT member_casual, ride_length FROM trip_data_202401
    UNION ALL
    SELECT member_casual, ride_length FROM trip_data_202402
    UNION ALL
    SELECT member_casual, ride_length FROM trip_data_202403
    ) AS all_rides
GROUP BY
    member_casual;
```
![](https://github.com/ZiyadBendaou/TripData_Analysis/blob/main/visualizations/avg_ride_length_by_user.png?raw=true)


### Query 2: Average Ride Length per Weekday

```sql
SELECT
    weekday,
    ROUND(AVG(EXTRACT(EPOCH FROM ride_length)/60),0) AS avg_ride_length
FROM
    (
    SELECT weekday, ride_length FROM trip_data_202304
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202305
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202306
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202307
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202308
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202309
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202310
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202311
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202312
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202401
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202402
    UNION ALL
    SELECT weekday, ride_length FROM trip_data_202403
    ) AS all_rides
GROUP BY
    weekday
ORDER BY
    weekday;
```
![](https://github.com/ZiyadBendaou/TripData_Analysis/blob/main/visualizations/avg_ride_length_by_weekday.png?raw=true)


### Query 3: Total Rides per Weekday

```sql
SELECT
    weekday,
    COUNT(*) AS ride_count
FROM
    (
    SELECT weekday FROM trip_data_202304
    UNION ALL
    SELECT weekday FROM trip_data_202305
    UNION ALL
    SELECT weekday FROM trip_data_202306
    UNION ALL
    SELECT weekday FROM trip_data_202307
    UNION ALL
    SELECT weekday FROM trip_data_202308
    UNION ALL
    SELECT weekday FROM trip_data_202309
    UNION ALL
    SELECT weekday FROM trip_data_202310
    UNION ALL
    SELECT weekday FROM trip_data_202311
    UNION ALL
    SELECT weekday FROM trip_data_202312
    UNION ALL
    SELECT weekday FROM trip_data_202401
    UNION ALL
    SELECT weekday FROM trip_data_202402
    UNION ALL
    SELECT weekday FROM trip_data_202403
    ) AS all_rides
GROUP BY
    weekday
ORDER BY
    ride_count DESC;
```
![](https://github.com/ZiyadBendaou/TripData_Analysis/blob/main/visualizations/ride_by_weekday.png?raw=true)


### Query 4: Rides per Hour of the Day

```sql
SELECT
    EXTRACT(HOUR FROM started_at) AS hour_of_day,
    COUNT(*) AS total_rides
FROM
    (
    SELECT started_at FROM trip_data_202304
    UNION ALL
    SELECT started_at FROM trip_data_202305
    UNION ALL
    SELECT started_at FROM trip_data_202306
    UNION ALL
    SELECT started_at FROM trip_data_202307
    UNION ALL
    SELECT started_at FROM trip_data_202308
    UNION ALL
    SELECT started_at FROM trip_data_202309
    UNION ALL
    SELECT started_at FROM trip_data_202310
    UNION ALL
    SELECT started_at FROM trip_data_202311
    UNION ALL
    SELECT started_at FROM trip_data_202312
    UNION ALL
    SELECT started_at FROM trip_data_202401
    UNION ALL
    SELECT started_at FROM trip_data_202402
    UNION ALL
    SELECT started_at FROM trip_data_202403
    ) AS all_rides
GROUP BY
    hour_of_day
ORDER BY
    total_rides DESC;
```
![](https://github.com/ZiyadBendaou/TripData_Analysis/blob/main/visualizations/rides_by_hour.png?raw=true)


### Query 5: Rides per User Category

```sql
SELECT
    member_casual,
    COUNT(*) AS total_rides
FROM
    (
    SELECT member_casual FROM trip_data_202304
    UNION ALL
    SELECT member_casual FROM trip_data_202305
    UNION ALL
    SELECT member_casual FROM trip_data_202306
    UNION ALL
    SELECT member_casual FROM trip_data_202307
    UNION ALL
    SELECT member_casual FROM trip_data_202308
    UNION ALL
    SELECT member_casual FROM trip_data_202309
    UNION ALL
    SELECT member_casual FROM trip_data_202310
    UNION ALL
    SELECT member_casual FROM trip_data_202311
    UNION ALL
    SELECT member_casual FROM trip_data_202312
    UNION ALL
    SELECT member_casual FROM trip_data_202401
    UNION ALL
    SELECT member_casual FROM trip_data_202402
    UNION ALL
    SELECT member_casual FROM trip_data_202403
    ) AS all_rides
GROUP BY
    member_casual;
```
![](https://github.com/ZiyadBendaou/TripData_Analysis/blob/main/visualizations/number_of_users_by_category.png?raw=true)


## Insights

### Average Ride Length per User Category

- Casual riders have an average ride length of 21 minutes, while members have an average ride length of 12 minutes.

### Ride Length per Weekday

- The average ride length varies slightly throughout the week, with longer rides on weekends (Sunday and Saturday) and shorter rides during weekdays.

### Rides per Day

- The number of rides peaks on weekends, with Sunday having the highest number of rides followed by Friday and Saturday. Weekdays see fewer rides, with Monday having the lowest number of rides.

### Rides per Hour of the Day

- The peak hours for rides are in the late afternoon and early evening, with 5 PM being the busiest hour. There's also significant activity during midday hours, with a drop in the early morning and late night.

### Rides per User Category

- Members account for a larger number of rides compared to casual riders, with over 3.6 million rides recorded for members and around 2.1 million rides for casual riders.


## Recommendations to Increase Membership

1. **Promotional Offers:** Launch targeted promotional campaigns offering discounts or incentives specifically aimed at encouraging casual riders to sign up for membership. Highlight the long-term savings and benefits of membership compared to pay-as-you-go options.

2. **Enhanced Onboarding Experience:** Streamline the membership signup process and ensure a smooth onboarding experience for new members. Provide clear instructions, easy-to-follow tutorials, and proactive customer support to assist users in transitioning from casual riding to membership.

3. **Community Engagement Events:** Organize community events and group rides exclusively for members to foster a sense of belonging and camaraderie among Cyclistic users. Encourage members to share their experiences and invite friends and family to join, leveraging social networks to promote membership.

4. **Localized Marketing Efforts:** Partner with local businesses, universities, and residential complexes to promote membership within specific neighborhoods or communities. Offer neighborhood-specific incentives or perks to incentivize residents to become members and actively participate in the bike-sharing program.

5. **Member Feedback Loop:** Implement a feedback loop where members can provide suggestions, report issues, and share their experiences with the Cyclistic team. Actively listen to member feedback and prioritize improvements based on their needs and preferences to enhance the overall membership experience.

6. **Referral Rewards Program:** Launch a referral rewards program where existing members earn rewards or credits for successfully referring new members to Cyclistic. Encourage members to share their positive experiences with friends and family, amplifying word-of-mouth marketing and driving membership growth.

By implementing these targeted recommendations, Cyclistic can further incentivize casual riders to become members, ultimately increasing membership and solidifying the bike-sharing program's sustainability and success.
