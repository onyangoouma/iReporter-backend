puts "📃 Seeding data..."

User.create( name: 'Edwin Rotich', username: 'EdwinRotich', email: 'edwinrotich@gmail.com',password_digest: 'edwinrotich')
User.create( name: 'John Kamau', username: 'JohnKamau', email: 'johnkamau@gmail.com',password_digest: 'johnkamau')
User.create( name: 'Peter Ndegwa', username: 'PeterNdegwa', email: 'peterndegwa@gmail.com',password_digest: 'peterndegwa')
User.create( name: 'James Situma', username: 'JamesSituma', email: 'jamessituma@gmail.com',password_digest: 'jamessituma')
User.create( name: 'Harrison Ouma', username: 'HarrisonOuma', email: 'harrisonouma@gmail.com',password_digest: 'harrisonouma')


puts "📃 Done Seeding ..."