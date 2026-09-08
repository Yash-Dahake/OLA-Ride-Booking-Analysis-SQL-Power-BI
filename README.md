# 🚗 OLA Data Analyst Project – SQL & Power BI

## 📌 Project Overview

This project analyzes **103,024 OLA booking records** to understand ride performance, cancellations, revenue, vehicle performance, payment methods, and customer/driver ratings.

The project uses **SQL for data analysis** and **Power BI for interactive dashboard development**.

---

## 🎯 Project Objectives

* Analyze overall ride and booking performance
* Identify successful and cancelled rides
* Analyze vehicle-type performance
* Understand revenue and payment methods
* Identify major cancellation reasons
* Analyze customer and driver ratings
* Find important business insights from booking data

---

## 🛠️ Tools & Technologies

* **SQL / MySQL** – Data analysis and business queries
* **Power BI** – Dashboard and visualization
* **Excel / CSV** – Dataset and data preparation
* **GitHub** – Project documentation

---

## 📊 Dataset

The dataset contains **103,024 OLA booking records**.

### Main Columns

* Date
* Time
* Booking_ID
* Booking_Status
* Customer_ID
* Vehicle_Type
* Pickup_Location
* Drop_Location
* V_TAT
* C_TAT
* cancelled_Rides_by_Customer
* cancelled_Rides_by_Driver
* Incomplete_Rides
* Incomplete_Rides_Reason
* Booking_Value
* Payment_Method
* Ride_Distance
* Driver_Ratings
* Customer_Rating

---

# 🗄️ SQL Analysis

The project includes **10 SQL business questions**:

1. Retrieve all successful bookings
2. Find the average ride distance for each vehicle type
3. Get the total number of cancelled rides by customers
4. Find the top 5 customers by number of rides
5. Find rides cancelled by drivers due to personal and car-related issues
6. Find maximum and minimum driver ratings for Prime Sedan
7. Retrieve rides where payment was made using UPI
8. Find average customer rating for each vehicle type
9. Calculate total booking value of successfully completed rides
10. Retrieve incomplete rides along with the reason

---

# 📈 Power BI Dashboard

The Power BI dashboard is divided into **5 pages**.

## 1. Overall Dashboard – Executive View

* **Total Bookings:** 103,024
* **Total Booking Value:** 35M
* **Successful Bookings:** 62.09%
* **Cancelled Bookings:** 28.08%
* **Driver Not Found:** 9.83%

This page provides an overall view of OLA's booking performance and identifies the major performance gaps.

---

## 2. Vehicle Type Dashboard

This page analyzes fleet performance across different vehicle categories.

### Key Insights

* **Prime Sedan** is the strongest value-driving vehicle category.
* **Auto and Bike** have the highest booking volume.
* **Prime SUV and Luxury** have higher average fares but lower overall ride volume.
* Affordable vehicle categories show strong customer demand.

---

## 3. Revenue Dashboard

This page focuses on revenue and payment performance.

### Key Insights

* Daily revenue remains relatively stable between **1M and 1.2M**.
* **UPI and Credit Cards** account for the majority of digital payments.
* Cash contributes a smaller portion of total transactions.
* Revenue performance remains consistent throughout the analyzed period.

---

## 4. Cancellation Dashboard

This page analyzes cancellation patterns and operational issues.

### Key Insights

* **28.08%** of total bookings were cancelled.
* Customer cancellations form the larger share.
* Major customer cancellation reasons include:

  * Change of plans
  * Driver taking too long
* Major driver cancellation reasons include:

  * Heading towards home
  * Location/routing constraints

---

## 5. Ratings Dashboard

This page analyzes customer and driver service ratings.

### Key Insights

* Average ratings remain stable between approximately **3.8 and 4.2**.
* **Prime Sedan and Prime SUV** receive slightly higher ratings.
* **Auto and Bike** show comparatively more variation in ratings.
* Premium vehicle categories generally demonstrate stronger service sentiment.

---

# 📊 Dashboard Visuals

The dashboard includes:

* Ride Volume Over Time
* Booking Status Breakdown
* Top 5 Vehicle Types by Ride Distance
* Average Customer Ratings by Vehicle Type
* Cancellation Reasons
* Revenue by Payment Method
* Top 5 Customers by Booking Value
* Ride Distance Distribution
* Driver Rating Distribution
* Customer vs Driver Ratings

---

# 🔄 Project Workflow

```text
Raw OLA Booking Data
        ↓
Data Cleaning & Preparation
        ↓
SQL Analysis
        ↓
Business Questions
        ↓
Power BI Data Modeling
        ↓
Dashboard Development
        ↓
Business Insights
```

---

# 💡 Key Business Insights

* OLA processed **103,024 bookings** in the analyzed dataset.
* Approximately **62.09%** of bookings were successfully completed.
* **28.08%** of bookings were cancelled, representing a significant performance gap.
* **9.83%** of demand was lost because a driver was not found.
* Prime Sedan is a major contributor to completed rides and revenue.
* Auto and Bike have strong demand because of their affordability.
* Digital payments, especially UPI and Credit Cards, dominate transactions.
* Customer and driver ratings remain relatively stable.

---

# 📁 Project Structure

```text
OLA-Data-Analyst-Project/
│
├── Dataset/
│   └── OLA_Bookings.csv
│
├── SQL/
│   └── OLA_Analysis.sql
│
├── PowerBI/
│   └── OLA_Dashboard.pbix
│
├── Images/
│   ├── overall_dashboard.png
│   ├── vehicle_dashboard.png
│   ├── revenue_dashboar.png
│   ├── cancellation_dashboard.png
│   └── ratings_dashboard.png
│
└── README.md
```

---

# 🎯 Conclusion

This project demonstrates how **SQL and Power BI** can be used to transform raw OLA booking data into meaningful business insights.

The analysis helps identify **ride performance, revenue trends, fleet performance, cancellation problems, payment behavior, and service quality**, supporting data-driven operational decisions.

## 👨‍💻 Author

**Yash Dahake**

Data Analyst | SQL | Power BI | Excel | Python

---
