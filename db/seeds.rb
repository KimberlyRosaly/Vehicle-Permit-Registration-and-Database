
users = [
    {id: 1, username: "administrator", password: "123456789"},
    {id: 2, username: "superintendent", password: "123456789"},
    {id: 3, username: "porter", password: "123456789"}
]

users.each do |u|
    User.create(u)
end



apartments = [
    {id: 1, building: "401B", unit: "1B", number: "401B1B", user_id: 1},
    {id: 2, building: "401B", unit: "6B", number: "401B6B", user_id: 1}   
]

apartments.each do |a|
    Apartment.create(a)
end

permits = [
    {number: "000908", tenant_name: "Rixin Core", contact_number: "1234567890", 
        vehicle_plate: "XRX", vehicle_color: "Red", vehicle_year: "1989", 
        vehicle_make_model: "Mazda Maziatah",
        apartment_id: 2, user_id: 1},
    {number: "123408", tenant_name: "Pupper Doge", contact_number: "0001234444", 
        vehicle_plate: "XRAVENX", vehicle_color: "Black", vehicle_year: "2020", 
        vehicle_make_model: "Mercedes Bleeper", 
        apartment_id: 2, user_id: 1},
    {number: "898989", tenant_name: "Jenni Em", contact_number: "9997778888", 
        vehicle_plate: "AT8VYN", vehicle_color: "Blue", vehicle_year: "1965", 
        vehicle_make_model: "Trucker Pixie",
        apartment_id: 1, user_id: 1}    
]

permits.each do |p|
    Permit.create(p)
end
