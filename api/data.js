const parkingData = [
  {
    id: 'PARKLOT001',
    name: "The 42 Parking",
    location: "Kankaria Estates,Park Street area Kolkata-700071",
    totalSpaces: 300,
    availableSpaces: 150,
    hourlyRate: 70,
    isOpen: true,
    coordinates: {
      latitude: 22.548386,
      longitude: 88.349224
    }
  },
  {
    id: 'PARKLOT002',
    name: "Dharmatala Sahid Minar",
    location: "Dharmtalla,Dufferin Road,Kolkata-700069",
    totalSpaces: 250,
    availableSpaces: 100,
    hourlyRate: 60,
    isOpen: true,
    coordinates: {
      latitude: 22.560118,
      longitude: 88.352455
    }
  },
  {
    id: 'PARKLOT003',
    name: "Camac street parking ground",
    location: "2C,Camac St,Elgin,Kolkata-700017",
    totalSpaces: 100,
    availableSpaces: 50,
    hourlyRate: 60,
    isOpen: false,
    coordinates: {
      latitude: 22.544545,
      longitude: 88.352562
    }
  },
  {
    id: 'PARKLOT004',
    name: "ICICI Lombard Network Garage",
    location: "P-256 & 257,CIT Road,Entally,Kolkata-700010",
    totalSpaces: 200,
    availableSpaces: 50,
    hourlyRate: 70,
    isOpen: true,
    coordinates: {
      latitude: 22.552074,
      longitude: 88.371661
    }
  },
  {
    id: 'PARKLOT005',
    name: "Sorvey Parking",
    location: "Fire Brigade Hrad Quater,New Market Area,Taltala",
    totalSpaces: 200,
    availableSpaces: 100,
    hourlyRate: 60,
    isOpen: false,
    coordinates: {
      latitude: 22.556116,
      longitude: 88.350916
    }
  },
  {
    id: 'PARKLOT006',
    name: "Consultive Parking",
    location: "Lake Market,Kalighat,Kolkata-700029",
    totalSpaces: 110,
    availableSpaces: 60,
    hourlyRate: 65,
    isOpen: false,
    coordinates: {
      latitude: 22.515589,
      longitude: 88.346903
    }
  },
  {
    id: 'PARKLOT007',
    name: "Adil's Parking",
    location: "Moulama Mohammed Ali Road near Madina Masjid,Babu Bazar,Khidirpur,Kolkata-700023",
    totalSpaces: 100,
    availableSpaces: 50,
    hourlyRate: 60,
    isOpen: true,
    coordinates: {
      latitude: 22.537797,
      longitude: 88.321559
    }
  },
  {
    id: 'PARKLOT008',
    name: "Parking",
    location: "Sreepally,Bhowanipore,Kolkata-700020",
    totalSpaces: 200,
    availableSpaces: 150,
    hourlyRate: 60,
    isOpen: false,
    coordinates: {
      latitude: 22.540053,
      longitude: 88.353535
    }
  },
  {
    id: 'PARKLOT009',
    name: "Car Parking",
    location: "Dover Terrace,Ballygunge,Kolkata-700019",
    totalSpaces: 240,
    availableSpaces: 80,
    hourlyRate: 60,
    isOpen: true,
    coordinates: {
      latitude: 22.522577,
      longitude: 88.358029
    }
  },
  {
    id: 'PARKLOT010',
    name: "Suman's Garage",
    location: "Baliya,Garia,Kolkata-700084",
    totalSpaces: 100,
    availableSpaces: 60,
    hourlyRate: 70,
    isOpen: false,
    coordinates: {
      latitude: 22.459333,
      longitude: 88.389005
    }
  },
  {
    id: 'PARKLOT011',
    name: "Maa Tara Garage",
    location: "188,Gopinagar,Behala,Kolkata-700034",
    totalSpaces: 220,
    availableSpaces: 170,
    hourlyRate: 60,
    isOpen: true,
    coordinates: {
      latitude: 22.492052,
      longitude: 88.311404
    }
  },
  {
    id: 'PARKLOT012',
    name: "IICB Parking Lot",
    location: "CSIR-IICB,Indian association for the cultivation of science,Poddar Nagar,Jadavpur,Kolkata-700032",
    totalSpaces: 200,
    availableSpaces: 90,
    hourlyRate: 60,
    isOpen: false,
    coordinates: {
      latitude: 22.497679,
      longitude: 88.369388
    }
  },
  {
    id: 'PARKLOT013',
    name: "Parking Zone",
    location: "Barrackpore station Road,West Bengal 700120",
    totalSpaces: 200,
    availableSpaces: 100,
    hourlyRate: 60,
    isOpen: false,
    coordinates: {
      latitude: 22.760074,
      longitude: 88.370822
    }
  },
  {
    id: 'PARKLOT014',
    name: "Jubilee Car Parking Service",
    location: "Azad Hind Bag, Maniktala, Kolkata-700006",
    totalSpaces: 300,
    availableSpaces: 120,
    hourlyRate: 60,
    isOpen: true,
    coordinates: {
      latitude: 22.588775,
      longitude: 88.369607
    }
  },  
  {
    id: 'PARKLOT015',
    name: "CC2 Parking Lot",
    location: "Action Area IID, Newtown,West Bengal-700052",
    totalSpaces: 250,
    availableSpaces: 100,
    hourlyRate: 80,
    isOpen: true,
    coordinates: {
      latitude: 22.623199,
      longitude: 88.450145
    }
  },
  {
    id: 'PARKLOT016',
    name: "Parking Zone",
    location: "Barrackpore station Road,West Bengal 700120",
    totalSpaces: 200,
    availableSpaces: 100,
    hourlyRate: 60,
    isOpen: false,
    coordinates: {
      latitude: 22.760074,
      longitude: 88.370822
    }
  },
  {
    id: 'PARKLOT017',
    name: "Car Parking",
    location: "V9WX+V5J, Chinsurah R S, Chinsurah, West Bengal 712101",
    totalSpaces: 200,
    availableSpaces: 80,
    hourlyRate: 70,
    isOpen: true,
    coordinates: {
      latitude: 22.897218,
      longitude: 88.397893
    }
  },
  {
    id: 'PARKLOT018',
    name: "Paul Car Parking",
    location: "9, Naihati, Kolkata, West Bengal 743165",
    totalSpaces: 150,
    availableSpaces: 70,
    hourlyRate: 60,
    isOpen: false,
    coordinates: {
      latitude: 22.893286,
      longitude: 88.424144
    }
  }, 
  {
    id: 'PARKLOT019',
    name: "Jyoti Parking",
    location: "Sukhsanatantala,Chandannagar,West Bengal-712136",
    totalSpaces: 100,
    availableSpaces: 50,
    hourlyRate: 70,
    isOpen: true,
    coordinates: {
      latitude: 22.857103,
      longitude: 88.355642
    }
  },
  {
    id: 'PARKLOT020',
    name: "Dakshineswar Temple Complex Car Parking 2",
    location: "M945+H8P, Dakshineswar, Kolkata, West Bengal 700076",
    totalSpaces: 200,
    availableSpaces: 180,
    hourlyRate: 60,
    isOpen: false,
    coordinates: {
      latitude: 22.656445,
      longitude: 88.358355
    }
  },
  {
    id: 'PARKLOT021',
    name: "Rangoli Mall Parking",
    location: "68, Ram Lochan Shire St, Belur Math, Howrah, West Bengal 711202",
    totalSpaces: 120,
    availableSpaces: 50,
    hourlyRate: 60,
    isOpen: true,
    coordinates: {
      latitude: 22.624692,
      longitude: 88.353680
    }
  },
  {
    id: 'PARKLOT022',
    name: "City Center-1 Parking",
    location: "CITY CENTRE 1 DC BLOCK PARKING LOT. SEC 1 KOLKATA 700064, DC Block, Sector 1, Bidhannagar, Kolkata, West Bengal 700064",
    totalSpaces: 300,
    availableSpaces: 200,
    hourlyRate: 80,
    isOpen: false,
    coordinates: {
      latitude: 22.589212,
      longitude: 88.408775
    }
  },
  {
    id: 'PARKLOT023',
    name: "Parking Place",
    location: "IB-172, IB-172, IB Block, Sector 3, Kolkata, West Bengal 700106",
    totalSpaces: 250,
    availableSpaces: 100,
    hourlyRate: 80,
    isOpen: true,
    coordinates: {
      latitude: 22.572509,
      longitude: 88.413432
    }
  },
  {
    id: 'PARKLOT024',
    name: "Parking Place",
    location: "HCMG+HHX, CK Block, Sector II, Bidhannagar, Kolkata, West Bengal 700091",
    totalSpaces: 200,
    availableSpaces: 100,
    hourlyRate: 80,
    isOpen: false,
    coordinates: {
      latitude: 22.572509,
      longitude: 88.413432
    }
  },
  {
    id: 'PARKLOT025',
    name: "Car Parking Garage",
    location: "H7VV+88C, Ramrajatala, Howrah, West Bengal 711104",
    totalSpaces: 250,
    availableSpaces: 100,
    hourlyRate: 60,
    isOpen: true,
    coordinates: {
      latitude: 22.593305,
      longitude: 88.293279
    }
  },
  {
    id: 'PARKLOT026',
    name: "RKG Garage",
    location: "19/62, Mall Rd, K.B.Sarani, Arjunpur, Dum Dum, Kolkata, West Bengal 700080",
    totalSpaces: 300,
    availableSpaces: 200,
    hourlyRate: 60,
    isOpen: false,
    coordinates: {
      latitude: 22.628571,
      longitude: 88.425438
    }
  },
  {
    id: 'PARKLOT027',
    name: "PARKING AREA, SCIENCE CITY, KOLKATA",
    location: "G9RW+R2J, JBS Haldane Ave, Mirania Gardens, East Topsia, Topsia, Kolkata-700046",
    totalSpaces: 300,     //max
    availableSpaces: 150,
    hourlyRate: 70,     //60 to 80
    isOpen: true,
    coordinates: {
      latitude: 22.540146,      //-100 to 100
      longitude: 88.396059
    }
  },
  {
    id: 'PARKLOT028',
    name: "RGKar Car Parking Area",
    location: "16/B, Bidhan Sarani, Shyam Bazar,Kolkata-700004",
    totalSpaces: 300,     
    availableSpaces: 150,
    hourlyRate: 65,     
    isOpen: true,
    coordinates: {
      latitude: 22.5982,      
      longitude: 88.3687
    }
  },
  {
    id: 'PARKLOT029',
    name: "HATIBAGAN CAR PARKING",
    location: "H9W7+FH6, Sovabazar St, Girish Park, Sovabazar, Darjipara, Kolkata-700006",
    totalSpaces: 150,
    availableSpaces: 40,
    hourlyRate: 65,
    isOpen: true,
    coordinates: {
      latitude: 22.5968,
      longitude: 88.3652
    }
  },
  {
    id: 'PARKLOT030',
    name: "Beriwala House Car Park",
    location: "50B, Muktaram Babu St, Raja Katra, Singhi Bagan, Jorasanko, Kolkata-700007",
    totalSpaces: 250,
    availableSpaces: 100,
    hourlyRate: 60,      
    isOpen: false,
    coordinates: {
      latitude: 22.5849,
      longitude: 88.3591
    }
  },
  {
    id: 'PARKLOT031',
    name: "TOWN PARKING",
    location: "H89W+426, Esplanade Row W, B.B.D. Bagh, Kolkata-700001",
    totalSpaces: 300,
    availableSpaces: 170,
    hourlyRate: 80,
    isOpen: true,
    coordinates: {
      latitude: 22.5683,
      longitude: 88.3433
    }
  },
  {
    id: 'PARKLOT032',
    name: "Alipore musuem Car Parking",
    location: "Judges Court Rd, Alipore, Kolkata-700027",
    totalSpaces: 250,
    availableSpaces: 80,    
    hourlyRate: 80,
    isOpen: true,
    coordinates: {
      latitude: 22.5256,
      longitude: 88.3398
    }
  },
  {
    id: 'PARKLOT033',
    name: "IOCL Parking",
    location: "Golf Gardens, Tollygunge, Kolkata-700095",
    totalSpaces: 100,
    availableSpaces: 35,
    hourlyRate: 75,
    isOpen: false,
    coordinates: {
      latitude: 22.4986,
      longitude: 88.3454
    }
  },
  {
    id: 'PARKLOT034',
    name: "Poka Parking",
    location: "Sreebhumi, Lake Town, South Dumdum-700048",
    totalSpaces: 100,
    availableSpaces: 60,
    hourlyRate: 60,
    isOpen: false,
    coordinates: {
      latitude: 22.5993,
      longitude: 88.4022
    }
  },
  {
    id: 'PARKLOT035',
    name: "Car Park",
    location: "3, 63, Aurobindo Sarani Rd, West Kamalapur, Kalidham, Colony, Dum Dum, Kolkata, North Dumdum-700055",
    totalSpaces: 300,
    availableSpaces: 150,
    hourlyRate: 70,
    isOpen: true,
    coordinates: {
      latitude: 22.6626,
      longitude: 88.4090
    }
  },
  {
    id: 'PARKLOT036',
    name: "Apanjan Car Parking",
    location: "4, Deshpran Sasmal Ave, Dunlop, U B Colony, Ashokgarh, Kolkata-700108",
    totalSpaces: 200,
    availableSpaces: 150,
    hourlyRate: 70,
    isOpen: true,
    coordinates: {
      latitude: 22.6519,
      longitude: 88.3786
    }
  },
  {
    id: 'PARKLOT037',
    name: "South City Mall Rooftop Parking",
    location: "375, Prince Anwar Shah Rd, South City Complex, Tollygunge, Kolkata-700068",
    totalSpaces: 300,
    availableSpaces: 200,
    hourlyRate: 80,
    isOpen: true,
    coordinates: {
      latitude: 22.5017,
      longitude: 88.3615
    }
  },
  {
  id: 'PARKLOT038',
  name: "S B Garage",
  location: "12/C, Lenin Sarani, Barabagan, Serampore, Dakshin Rajyadharpur, West Bengal 71220",
  totalSpaces: 200,
  availableSpaces: 100,
  hourlyRate: 60,
  isOpen: true,
  coordinates: {
    latitude: 22.752523,
    longitude: 88.336082
  }
},
{
  id: 'PARKLOT039',
  name: "Tan Garage",
  location: "P9J2+RGP, Mahesh Colony, Serampore, West Bengal 712248",
  totalSpaces: 150,
  availableSpaces: 75,
  hourlyRate: 75,
  isOpen: false,
  coordinates: {
    latitude: 22.732862,
    longitude: 88.351196
  }
},
{
  id: 'PARKLOT040',
  name: "GOSWAMI CAR PARKING",
  location: "Sarkarpara, Sheoraphuli, West Bengal 712223",
  totalSpaces: 150,
  availableSpaces: 50,
  hourlyRate: 70,
  isOpen: false,
  coordinates: {
    latitude: 22.774482,
    longitude: 88.323912
  }
}
  // Add more parking lots here...
];

module.exports = parkingData;