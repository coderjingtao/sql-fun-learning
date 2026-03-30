## Hospital Secrets

### Background Story

You are a data analyst at "Boxhill Hospital". The hospital director recently noticed that the appointment system has accumulated a large amount of data and wants to understand patient visit patterns. He hopes you can analyze which departments are busiest and which time periods have the most patients, providing scientific basis for hospital scheduling and resource allocation!

### Data Description

We have a hospital appointments table `hospital_appointments`, which records patient appointment information:

- `appointment_id`: Appointment ID
- `patient_id`: Patient ID
- `patient_name`: Patient name
- `patient_age`: Patient age
- `patient_gender`: Patient gender (M/F)
- `department`: Department (Internal Medicine, Surgery, Pediatrics, Obstetrics, Orthopedics, Ophthalmology)
- `doctor_name`: Doctor name
- `appointment_date`: Appointment date
- `appointment_time`: Appointment time period (Morning/Afternoon)
- `registration_fee`: Registration fee (USD)
- `is_emergency`: Is emergency (1/0)
- `visit_type`: Visit type (First Visit/Follow-up)

### Task Requirements

The director wants to understand the visit situation of each department. Please write a SQL query:

1. Calculate total registration fee revenue for each department
2. Count the number of appointments for each department
3. Calculate average patient age for each department
4. Calculate emergency ratio for each department
5. Find the most popular time period for each department (Morning/Afternoon)
6. Calculate male-to-female patient ratio for each department
7. Sort by total registration fee revenue in descending order

Return fields:

- Department name (department)
- Total registration fee (total_fee)
- Number of visits (total_visits)
- Average age (avg_age, 1 decimal place)
- Emergency ratio (emergency_ratio, 1 decimal place, with % symbol)
- Popular time period (popular_time)
- Gender ratio (gender_ratio, format like "60.0%:40.0%")

### Example Result

```
Department: Internal Medicine, Total Fee: 1200 USD, Visits: 40, Avg Age: 45.5, Emergency Ratio: 15.0%, Popular Time: Morning, Gender Ratio: 55.0%:45.0%
```

Let's see which department is most popular among patients!
