# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'
DatabaseCleaner.clean_with(:truncation)

monkey = User.create(username: "monkey", email: "monkey@email.com", password: "monkey")
scout = User.create(username: "scout", email: "scout@email.com", password: "scout")

roote_a = Roote.create(name: "Escape Creek", category: "Canyon", location: "Big Thompson Canyon, Waltonia, CO", difficulty: "3A II", 
                    content: "A quick half day, good for early season, potentially wet, training canyon without a long approach. Escape Canyon drains a short gulch near the town of Waltonia, east of Estes Park. The upper gulch is tame - relatively open and forested. But the short last stretch breaks through a large pegmatite crag, forming a number of dry falls. These dry falls are the technical section of this canyon. This technical section is one of the best dry foothills canyons on the Front Range. For most of summer and autumn, the canyon is dry. If you descend it during this time, the route is little more than a sport rappelling route, though it is pretty. During winter small ice flows form, which makes the canyon potentially dangerous to descend. Spring is the best time to go. The longest rappel reaches 60 feet or so, but a 50 meter rope is recommended, as a number of rappels can be combined.", 
                    author_id: "1")
roote_b = Roote.create(name: "Seven Teacups", category: "Canyon", location: "Sequoia Forest, Sierras, CA", difficulty: "3C III", 
                    content: "Seven Teacups, often abbreviated 7TC, is a short section of Dry Meadow Creek just before it joins the Kern River and is one of the best Class C canyons in California. This canyon is best descended in summer or fall, or whenever the flow is not extremely high as there are flow-related challenges. The technical descent is relatively short and, because the terrain is relatively forgiving with short jumps and multiple escape points, this canyon makes for a perfect practice ground before attempting longer and more difficult Class C Sierra canyons. But note that once you get into teacup2 and pull the rope, it is extremely difficult to escape the watercourse until after some of the most challenging features in the canyon: the approach to, and descent of, the corkscrew waterfall. In higher flow, safe descent usually requires advanced swiftwater techniques.", 
                    author_id: "2")
roote_c = Roote.create(name: "Saigon", category: "Boulder", location: "Buttermilks, Bishop, CA", difficulty: "V6", 
                    content: "This awesome singular prow problem on perfect rock is a 3 move wonder in between easier sections, but man, those are 3 killer moves. Teasingly easy entry moves lead to two height-dependent crux sequences. For most taller people like myself, its a wild lean out right with the right hand to a sloper-type thingy utilizing a left heel hook. A left hand power up to a bulbous crimp sets you up for the big, flying move to a killer jug! Match and crank off a few knobs and small but positive plates up off the deck, to the blunt top out.", 
                    author_id: "1")
roote_d = Roote.create(name: "Tommy's Arete", category: "Boulder", location: "Chaos Canyon, RMNP, CO", difficulty: "V7", 
                    content: "This is the amazing arete on the right side of the boulder can't miss it. Sit start low and go right hand to a small crimp, from there follow good holds to a shelf, then bust out the crux and top 'er. Watch out for the rock behind you. Bring lots of pads!", 
                    author_id: "2")
roote_e = Roote.create(name: "Fire Fly", category: "Sport", location: "Yosemite Falls, Yosemite, CA", difficulty: "5.8", 
                    content: "A good little line that can be climbed while walking off any of the Five Open Book routes. The base of the climb is on a large grassy ledge about 50 ft. down from the granite scramble with the rap rings on it. The crux is a ten foot section just past the first bolt. After that the route cuts right and pleasantly climbs up easy face holds, passing over a grassy terrace before gaining the anchor. Bolts are about every 20 ft. or so.", 
                    author_id: "1")
roote_f = Roote.create(name: "Namaste", category: "Sport", location: "Kolob Canyon, Zion, UT", difficulty: "5.11d", 
                    content: "If you've seen images of this, you need to hike in and climb it. It is one of the coolest desert sport routes I've done. Most of the holds are big and none of the moves are hard, but by the end, you're getting pumped. I think there might be a kneebar somewhere around mid-height to shake out. Getting down from Huecos Rancheros and Namaste is a little tricky if you are leading and cleaning since you need two ropes and the routes are very steep.", 
                    author_id: "2")
roote_g = Roote.create(name: "The Moonlight Buttress", category: "Trad/Aid", location: "Moonlight Buttress, Zion, UT", difficulty: "5.8 C1", 
                    content: "This route is great. The line can be spotted from the road as a distinct dihedral with a roof/chimney at the top that runs up just past half way. The rock looks blank above that but a beautiful, direct, crack system runs almost the whole way up. This is a great easy aid route or a hardcore free climb on beautiful crack systems. The belays are all bolted and the bolts are in great condition (thanks to the ASCA, I think). A hammer is nice for cleaning but do not nail anything on the route. The start is a pain in the ass. On the far left side of the 3rd class ledges, locate a right angling ramp. It is somewhat obvious.", 
                    author_id: "1")
roote_h = Roote.create(name: "The Third Flatiron", category: "Trad/Aid", location: "Flatirons, Boulder, CO", difficulty: "5.4", 
                    content: "Six pitches of cruiser climbing! The final pitch is the crux, consisting of a blank-ish slabby section. Regardless, this is one of the best beginner trad climbs in the universe. Good feet and hands are abundant, so if you're not standing and holding on to something great, you're likely off route. Can be done in 5 pitches with a 70m rope. Two fun rappels to end this excellent climb.", 
                    author_id: "2")
roote_i = Roote.create(name: "Call the Copps", category: "Ice/Alpine", location: "Boulder Canyon, Boulder, CO", difficulty: "WI3 M3 R", 
                    content: "Believe it or not, ice climbs form in the Flatirons. They tend to provide a strange experience as they frequently feel serious and committing despite their proximity to Boulder. Protection tends to be scarce as does ice that provides good sticks, however the angle of the routes tends to compensate for the thickness and quality of the ice. The routes on the Flatirons seem to come in a few days after a big dump of snow during cold weather.", 
                    author_id: "1")
roote_j = Roote.create(name: "Hessie Chimney", category: "Ice/Alpine", location: "Hessie Trailhead, Eldora, CO", difficulty: "WI4 M5", 
                    content: "The first pitch is normally about half rock and half ice, though this year I got exactly two ice sticks on the entire pitch. The first half is well-protected chimney climbing, one foot on rock, one on ice. At a ledge halfway up, step left to place small wire pro as high as you can reach, then step back right to the crux, a reach high to good ice (hopefully), with poor feet. This section has ledge-fall potential if, like this year, the ice is thin or poorly bonded. In good years, you quickly reach solid ice and the wire to the left is sufficient pro. Carry on up more chimney climbing, in thin years like this, or good ice when it's fat. Easier climbing leads to a big tree ledge on the left at about 175 feet, or a stance lower on the right if you have short ropes. Two options for pitch two; I've only done the left. Move the belay up left to the base of an obvious iced-up corner system. Easier-than-it-looks rock climbing and thin ice to the top. Seemed about the same difficulty as the first pitch. The right-hand variation is steeper, supposedly harder and forms more rarely. In three visits, I've never seen it formed properly. Great climbing -- mostly very well protected, and hard enough to be interesting but easy enough to be accessible to us mortals.", 
                    author_id: "2")

comment_a = Comment.create(content: "Awesome little half day canyon. Tends to be very dry during the summer months, so check it out in the spring.", rating: "3", user_id: "1", roote_id: "1")
comment_b = Comment.create(content: "Truly one of the most beautiful canyons I've experienced. Highly recommended, worth the long approach!", rating: "5", user_id: "2", roote_id: "2")
comment_c = Comment.create(content: "This one is definitely soft if your taller and much, much more difficult if you're on the short side.", rating: "4", user_id: "1", roote_id: "3")
comment_d = Comment.create(content: "Be very careful about the rocks behind! Had a buddy crack his head, it was not an enjoyable hike out.", rating: "2", user_id: "2", roote_id: "4")
comment_e = Comment.create(content: "One of my favorite climbs in the valley! Stunning views, stiff climbing, excellent in every way.", rating: "5", user_id: "1", roote_id: "5")
comment_f = Comment.create(content: "This is totally an endurance route. Holds are great, some funky moves, but the steep angle will get you pumped!", rating: "4", user_id: "2", roote_id: "6")
comment_g = Comment.create(content: "Can't miss this classic. Easiest climbed as clean aid, but also possible as trad with strong stemming skills", rating: "5", user_id: "1", roote_id: "7")
comment_h = Comment.create(content: "Such a fun climb! Tons of locals free this climb, so expect plenty of traffic on the route and plan accordingly", rating: "5", user_id: "2", roote_id: "8")
comment_i = Comment.create(content: "This climb gets direct exposure and tends to be super slippery in the afternoon hours! Beware!", rating: "3", user_id: "1", roote_id: "9")
comment_j = Comment.create(content: "One of the best around Eldora. There is some scree in the early spring, this route is at it's best early in the season.", rating: "4", user_id: "2", roote_id: "10")
comment_k = Comment.create(content: "This place is pretty magical. Each teacup presents a new set of rappelling challenges, making it technical and exciting all the way through.", rating: "5", user_id: "1", roote_id: "2")
comment_l = Comment.create(content: "Crux goes into the shade by 2 in the afternoon in spring, plan accordingly. Expect tons of chalk and some blown out pinscars from aid climbers.", rating: "4", user_id: "2", roote_id: "7")