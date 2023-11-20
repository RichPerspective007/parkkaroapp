<!--Write a program in Jupiter Notebook(python) to store a car number id, the date, the time of the car entering the parking and the time of the car leaving the parking.  -->

## Software 05 Data storage using pandas

Here's a basic example of how you can create a program in a Jupyter Notebook using Python to store car parking information:

```python
# Import necessary libraries
import pandas as pd
from datetime import datetime

# Create an empty DataFrame to store parking information
columns = ['CarNumber', 'EntryDate', 'EntryTime', 'ExitTime']
parking_data = pd.DataFrame(columns=columns)

# Function to record car entry
def record_entry(car_number):
    entry_date = datetime.now().date()
    entry_time = datetime.now().time()
    parking_data.loc[len(parking_data)] = [car_number, entry_date, entry_time, None]
    print(f"Car {car_number} entered the parking lot at {entry_time}")

# Function to record car exit
def record_exit(car_number):
    exit_time = datetime.now().time()
    index = parking_data[parking_data['CarNumber'] == car_number].index[0]
    parking_data.at[index, 'ExitTime'] = exit_time
    print(f"Car {car_number} exited the parking lot at {exit_time}")

# Simulate car entries and exits
record_entry('ABC123')
record_entry('XYZ789')

record_exit('ABC123')

# Display the parking data
parking_data
```

In this example, we're using the `pandas` library to create a DataFrame to store the car parking information. We define two functions: `record_entry` and `record_exit` to simulate cars entering and exiting the parking lot. The parking data is stored in the `parking_data` DataFrame, and you can view it at the end of the program.

Remember that this is a basic example, and in a real-world scenario, you might want to incorporate error handling, data validation, and possibly even persist the data to a file or a database for long-term storage.
