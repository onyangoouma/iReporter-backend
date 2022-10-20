puts "🌱 Seeding spices..."

Incident.create(
    incident_type: 'redflag',
    title: 'Bad roads',
    description:'Traffic moves on the left side of the road, which can be very disorienting to those not accustomed to it.',
    location: '-42.2078,98.33',
    date:Faker::Date.between(from: '2021-08-21', to: '2022-08-21'),
    image_url:[],
    status: 'Under-Investigation'
)

Incident.create(
    incident_type: 'redflag',
    title: 'Leader tips street thugs',
    description: 'Leader tips  street thugs for them to keep silence of the evidence they have against him.',
    location: '-33.2078,18.023',
    date: Faker::Date.between(from: '2021-08-21', to: '2022-08-21'),
    image_url:[],
    status: 'Draft'
)
Incident.create(
    incident_type: 'intervention',
    title: 'Bridge contruction needed',
    description: 'Design error, construction mistakes, hydraulic, collision, and overload.',
    location: '-42.2078,98.33',
    date: Faker::Date.between(from: '2021-08-21', to: '2022-08-21'),
    image_url:[],
    status: 'Under-Investigation'
)
Incident.create(
    incident_type: 'redflag',
    title: 'Fraud case',
    description: 'lured by greed and an easy financial gain. pressured by negative influences such as loss of employment or status, gambling addictions, health problems or crippling debts.',
    location: '6.5922139, 3.3427375',
    date:Faker::Date.between(from: '2021-08-21', to: '2022-08-21'),
    image_url:[],
    status: "Resolved"
)


puts "🌱 Done spices..."
