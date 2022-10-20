puts "🌱 Seeding spices..."

Case.create(
    case_type: "redflag",
    title: "Bad roads",
    description:
    location: "-42.2078,98.33",
    date:Faker::Date.between(from: '2021-08-21', to: '2022-08-21'),
    image_url:[],
    status: "Under-investigation"
)

Case.create(
    case_type: "redflag",
    title: 'Leader tips street thugs'
    description:
    location: '-33.2078,18.023',
    date: Faker::Date.between(from: '2021-08-21', to: '2022-08-21')
    image_url:[],
    status: "draft"
)
Case.create(
    case_type: "intervention",
    title: "Bridge contruction needed",
    description:
    location: "-42.2078,98.33",
    date: Faker::Date.between(from: '2021-08-21', to: '2022-08-21'),
    image_url:[],
    status: "Under Investigation"
)
Case.create(
    case_type: "redflag",
    title: "Bad roads",
    description:
    location: '6.5922139, 3.3427375'
    date:Faker::Date.between(from: '2021-08-21', to: '2022-08-21'),
    image_url:[],
    status: "Resolved"
)


puts "🌱 Done spices..."
