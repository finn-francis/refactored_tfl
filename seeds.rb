def seed_data
  lines = [{name: "Bakerloo Line", stations: ["Queen's Park", "Kilburn Park", "Maida Vale", "Warwick Avenue", "Paddington", "Edgware Road", "Marylebone", "Baker Street", "Regent's Park", "Oxford Circus", "Piccadilly Circus", "Charing Cross", "Embankment", "River Thames", "Waterloo", "Lambeth North", "Elephant & Castle"]},
  {name: "Central Line", stations: ["Leytonstone", "Leyton", "Stratford", "Mile End", "Bethnal Green", "Liverpool Street", "Bank", "St. Paul's", "Chancery Lane", "Holborn", "Tottenham Court Road", "Oxford Circus", "Bond Street", "Marble Arch", "Lancaster Gate", "Queensway", "Notting Hill Gate", "Holland Park"]},
  {name: "Circle Line", stations: ["Hammersmith", "Goldhawk Road", "Shepherd's Bush Market", "Wood Lane", "Latimer Road", "Ladbroke Grove", "Westbourne Park", "Royal Oak", "Paddington Mainline Station (Platforms ", "Edgware Road", "Baker Street", "Great Portland Street", "Euston Square", "Farringdon", "Barbican", "Moorgate", "Liverpool Street", "Aldgate", "Tower Hill", "Monument", "Cannon Street", "Mansion House", "Blackfriars", "Temple", "Embankment", "Westminster", "St. James's Park", "Victoria", "Sloane Square", "South Kensington", "Gloucester Road", "High Street Kensington", "Notting Hill Gate", "Bayswater", "Edgware Road"]},
  {name: "District - Ealing Broadway Branch (to Bow Road)", stations: ["Ealing Broadway", "Ealing Common", "Acton Town", "Chiswick Park", "Turnham Green", "Stamford Brook", "Ravenscourt Park", "Hammersmith", "Barons Court", "West Kensington", "Kensington (Olympia)", "Earl's Court", "Gloucester Road", "South Kensington", "Sloane Square", "Victoria", "St. James's Park", "Westminster", "Embankment", "Temple", "Blackfriars", "Mansion House", "Cannon Street", "Monument", "Tower Hill", "Aldgate East", "Whitechapel", "Stepney Green", "Mile End", "Bow Road"]},
  {name: "District Turnham Green to Edgware Road", stations: ["Turnham Green", "Stamford Brook", "Ravenscourt Park", "Hammersmith", "Barons Court", "West Kensington", "Kensington (Olympia)", "Earl's Court", "High Street Kensington", "Notting Hill Gate", "Bayswater", "Paddington", "Edgware Road"]},
  {name: "District Wimbledon to Bow Road", stations: ["Wimbledon", "Wimbledon Park", "Southfields", "East Putney", "Putney Bridge", "Parsons Green", "Fulham Broadway", "West Brompton", "Earl's Court", "Gloucester Road", "South Kensington", "Sloane Square", "Victoria", "St. James's Park", "Westminster", "Embankment", "Temple", "Blackfriars", "Mansion House", "Cannon Street", "Monument", "Tower Hill", "Aldgate East", "Whitechapel", "Stepney Green", "Mile End", "Bow Road"]},
  {name: "District - Kensington Olympia Branch", stations: ["Wimbledon", "Wimbledon Park", "Southfields", "East Putney", "Putney Bridge", "Parsons Green", "Fulham Broadway", "West Brompton", "Earl's Court", "High Street Kensington", "Notting Hill Gate", "Bayswater", "Paddington", "Edgware Road"]},
  {name: "Hammersmith & City Line", stations: ["Hammersmith", "Goldhawk Road", "Shepherd's Bush Market", "White City", "Wood Lane", "Latimer Road", "Ladbroke Grove", "Westbourne Park", "Royal Oak", "Paddington", "Edgware Road", "Baker Street", "Great Portland Street", "Euston Square", "King's Cross St. Pancras", "Farringdon", "Barbican", "Moorgate", "Liverpool Street", "Aldgate East", "St. Mary's (Whitechapel Road)", "Whitechapel", "Stepney Green", "Mile End", "Bow Road"]},
  {name: "Jubilee Line", stations: ["Stanmore", "Canons Park", "Queensbury", "Kingsbury", "Wembley Park", "Neasden", "Dollis Hill", "Willesden Green", "Kilburn", "West Hampstead", "Finchley Road", "Swiss Cottage", "St. John's Wood", "Baker Street", "Bond Street", "Green Park", "Charing Cross", "Aldwych", "Ludgate Circus", "Cannon Street", "Fenchurch Street"]},
  {name: "Metropolitan Line", stations: ["Aldgate", "Baker Street", "Finchley Road", "Wembley Park", "Preston Road", "Northwick Park", "Harrow-on-the-Hill", "West Harrow", "Rayners Lane"]},
  {name: "Northern Line - Bank branch", stations: ["Edgware", "Burnt Oak", "Colindale", "Hendon Central", "Brent Cross", "Golders Green", "North End", "Hampstead", "Belsize Park", "Chalk Farm", "Camden Town", "Mornington Crescent", "Euston", "King's Cross St. Pancras", "Angel", "City Road", "Old Street", "Moorgate", "Lothbury", "Bank", "London Bridge", "Borough", "Elephant & Castle", "Kennington", "Oval", "Stockwell", "Clapham North", "Clapham Common", "Clapham South", "Balham", "Tooting Bec", "Tooting Broadway", "Colliers Wood", "South Wimbledon", "Morden"]},
  {name: "Northern Line - Charing Cross Branch", stations: ["High Barnet", "Totteridge and Whetstone", "Woodside Park", "West Finchley", "Finchley Central", "East Finchley", "Highgate", "Archway", "Tufnell Park", "Kentish Town", "Camden Town", "Mornington Crescent", "Euston", "Warren Street", "Goodge Street", "Tottenham Court Road", "Leicester Square", "Charing Cross", "Embankment", "Waterloo", "Kennington"]},
  {name: "Northern - ?????", stations: ["Highgate", "Archway", "Tufnell Park", "Kentish Town", "South Kentish Town", "Crouch End", "Stroud Green", "Finsbury Park", "Drayton Park", "Highbury & Islington", "Essex Road", "Nine Elms"]},
  {name: "Piccadilly Line - Uxbridge Branch", stations: ["Cockfosters", "Oakwood", "Southgate", "Arnos Grove", "Bounds Green", "Wood Green", "Turnpike Lane", "Manor House", "Finsbury Park", "Arsenal", "Holloway Road", "Caledonian Road", "York Road", "King's Cross St. Pancras", "Russell Square", "Holborn", "Aldwych", "Covent Garden", "Leicester Square", "Piccadilly Circus", "Green Park", "Down Street", "Hyde Park Corner", "Knightsbridge", "Brompton Road", "South Kensington", "Gloucester Road", "Earl's Court", "Barons Court", "Hammersmith", "Acton Town", "Ealing Common", "North Ealing", "Park Royal", "Park Royal & Twyford Abbey", "Alperton", "Sudbury Town", "Sudbury Hill", "South Harrow", "Rayners Lane", "Uxbridge"]},
  {name: "Piccadilly Line - Heathrow Branch", stations: ["Cockfosters", "Oakwood", "Southgate", "Arnos Grove", "Bounds Green", "Wood Green", "Turnpike Lane", "Manor House", "Finsbury Park", "Arsenal", "Holloway Road", "Caledonian Road", "York Road", "King's Cross St. Pancras", "Russell Square", "Holborn", "Aldwych", "Covent Garden", "Leicester Square", "Piccadilly Circus", "Green Park", "Down Street", "Hyde Park Corner", "Knightsbridge", "Brompton Road", "South Kensington", "Gloucester Road", "Earl's Court", "Barons Court", "Hammersmith", "Acton Town", "South Ealing", "Northfields", "Boston Manor", "Osterley", "Hounslow East", "Hounslow Central", "Hounslow West", "Hatton Cross", "Heathrow T123", "Heathrow Terminal 5"]},
  {name: "Victoria Line", stations: ["Walthamstow Central", "Blackhorse Road", "Tottenham Hale", "Seven Sisters", "Finsbury Park", "Highbury & Islington", "King's Cross St. Pancras", "Euston", "Warren Street", "Oxford Circus", "Green Park", "Victoria", "Pimlico", "Vauxhall", "Stockwell", "Brixton"]},
  {name: "Waterloo & City Line", stations: ["Bank", "Waterloo"]}]

  station_names = lines.map {|line| line[:stations]}.flatten.uniq.sort

  # Build out a bunch of station objects in the stations array.
  # Each station has an empty array ready to be loaded with line info, but
  # there are no lines put in place yet.
  @stations = station_names.inject([]) do |all_stations, station_name|
    all_stations << Station.new(station_name)
  end

  @lines = lines.inject([]) do |lines, line_raw|
    # Build a new Line object with just its name.  Its stations array is empty.
    line = Line.new(line_raw[:name])
    # Go through each station for this line in sequence
    line_raw[:stations].each do |station_name|
      # Find the matching station object we built above
      station = @stations.select {|s| s.name == station_name}.first
      # Update the station objects built above so they know about the line(s) they're on
      station.lines.push line
      # Update our new line object so it knows about the stations it has.
      line.stations.push station
    end
    # Done building this line, so put it in the resulting array
    lines << line
  end
end
