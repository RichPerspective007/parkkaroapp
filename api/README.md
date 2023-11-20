# The Park Karo API

## Overview

The Park Karo API provides information about a parking facility named "The Park Karo." The data is transmitted in JSON format and includes details such as the parking ID, name, location, available spaces, hourly rate, and more.

## API Endpoint

The API endpoint for accessing the parking information is:

```
GET /api/parking
```

## Response Format

The API returns data in JSON format. Here is an example response:

```json
{
    "id": "PARKLOT001",
    "name": "The 42 Parking",
    "location": "Kankaria Estates, Park Street area Kolkata-700071",
    "totalSpaces": 300,
    "availableSpaces": 150,
    "hourlyRate": 70,
    "isOpen": true,
    "coordinates": {
        "latitude": 22.548386,
        "longitude": 88.349224
    }
}
```

## Explanation of Data Structure

- **id (string):** A unique identifier for the parking facility.
  
- **name (string):** The name of the parking facility, in this case, "The Park Karo."

- **location (string):** The physical address of the parking facility, including city and postal code.

- **totalSpaces (integer):** The total number of parking spaces available in the facility.

- **availableSpaces (integer):** The number of parking spaces currently available for use.

- **hourlyRate (integer):** The cost per hour for parking in the facility.

- **isOpen (boolean):** Indicates whether the parking facility is currently open (true) or closed (false).

- **coordinates (object):** Contains the geographical coordinates of the parking facility.

  - **latitude (float):** The latitude of the parking facility's location.
  
  - **longitude (float):** The longitude of the parking facility's location.

## How to Use

To retrieve parking information, make a GET request to the provided endpoint. The response will be a JSON object containing details about "The Park Karo."

Example using cURL:

```bash
curl -X GET https://api.example.com/api/parking
```

Replace `https://api.example.com` with the actual base URL of the API.

Feel free to integrate this API into your applications to provide users with real-time information about parking availability at "The Park Karo."