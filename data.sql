/*
AIRBNB DATABASE - PLANET ZEPHYRIA SAMPLE DATA
Fantasy Planet: Multiple kingdoms, magical creatures, unique travel experiences
*/

USE airbnb_db;
/*
PHASE 1: INDEPENDENT TABLES DATA - COMPLETE DATASETS
*/


/* 1 USER TABLE - Zephyrian Travelers (25 records) */
INSERT IGNORE INTO `User` (Name, Surname, DateOfBirth, EmailAddress, Password, PhoneNumber, CreationDate, AccountStatus, ProfilePhoto) VALUES
('Kaelen', 'Stormwind', '1995-03-15', 'kaelen.stormwind@zephmail.realm', 'hashed_password_001', '+1-555-STORM', '2024-01-10 09:30:00', 'ACTIVE', 'profiles/kaelen_storm.jpg'),
('Lyra', 'Moonwhisper', '1988-07-22', 'lyra.moonwhisper@zephmail.realm', 'hashed_password_002', '+1-555-LUNAR', '2024-01-12 14:15:00', 'ACTIVE', 'profiles/lyra_moon.jpg'),
('Thorek', 'Ironbeard', '1982-11-08', 'thorek.ironbeard@zephmail.realm', 'hashed_password_003', '+1-555-FORGE', '2024-01-15 10:45:00', 'ACTIVE', 'profiles/thorek_iron.jpg'),
('Elara', 'Starseeker', '1993-05-30', 'elara.starseeker@zephmail.realm', 'hashed_password_004', '+1-555-STARS', '2024-01-18 16:20:00', 'ACTIVE', 'profiles/elara_star.jpg'),
('Draven', 'Shadowbane', '1990-09-12', 'draven.shadowbane@zephmail.realm', 'hashed_password_005', '+1-555-SHADE', '2024-01-20 11:30:00', 'ACTIVE', 'profiles/draven_shadow.jpg'),
('Marina', 'Tidesinger', '1987-04-17', 'marina.tidesinger@zephmail.realm', 'hashed_password_006', '+1-555-WAVES', '2024-01-22 13:45:00', 'ACTIVE', 'profiles/marina_tide.jpg'),
('Finn', 'Windcaller', '1996-12-03', 'finn.windcaller@zephmail.realm', 'hashed_password_007', '+1-555-WINDS', '2024-01-25 09:15:00', 'ACTIVE', 'profiles/finn_wind.jpg'),
('Ember', 'Flamewright', '1985-08-25', 'ember.flamewright@zephmail.realm', 'hashed_password_008', '+1-555-FLAME', '2024-01-28 15:30:00', 'ACTIVE', 'profiles/ember_flame.jpg'),
('Sage', 'Earthkeeper', '1991-06-14', 'sage.earthkeeper@zephmail.realm', 'hashed_password_009', '+1-555-EARTH', '2024-02-01 12:00:00', 'ACTIVE', 'profiles/sage_earth.jpg'),
('Luna', 'Crystalborn', '1989-10-07', 'luna.crystalborn@zephmail.realm', 'hashed_password_010', '+1-555-CRYST', '2024-02-03 14:30:00', 'ACTIVE', 'profiles/luna_crystal.jpg'),
('Zara', 'Voidwalker', '1994-02-28', 'zara.voidwalker@zephmail.realm', 'hashed_password_011', '+1-555-VOID', '2024-02-05 10:15:00', 'ACTIVE', 'profiles/zara_void.jpg'),
('Phoenix', 'Brightflame', '1986-01-19', 'phoenix.brightflame@zephmail.realm', 'hashed_password_012', '+1-555-PHOENX', '2024-02-08 16:45:00', 'ACTIVE', 'profiles/phoenix_bright.jpg'),
('River', 'Flowstone', '1992-09-05', 'river.flowstone@zephmail.realm', 'hashed_password_013', '+1-555-RIVER', '2024-02-10 11:20:00', 'ACTIVE', 'profiles/river_flow.jpg'),
('Storm', 'Lightbringer', '1988-11-23', 'storm.lightbringer@zephmail.realm', 'hashed_password_014', '+1-555-LIGHT', '2024-02-12 13:15:00', 'ACTIVE', 'profiles/storm_light.jpg'),
('Moss', 'Greenthumb', '1997-07-11', 'moss.greenthumb@zephmail.realm', 'hashed_password_015', '+1-555-GREEN', '2024-02-15 09:30:00', 'ACTIVE', 'profiles/moss_green.jpg'),
('Echo', 'Soundweaver', '1984-05-26', 'echo.soundweaver@zephmail.realm', 'hashed_password_016', '+1-555-SOUND', '2024-02-18 15:15:00', 'ACTIVE', 'profiles/echo_sound.jpg'),
('Crystal', 'Starlight', '1995-03-09', 'crystal.starlight@zephmail.realm', 'hashed_password_017', '+1-555-CSTAR', '2024-02-20 12:45:00', 'ACTIVE', 'profiles/crystal_star.jpg'),
('Blaze', 'Nightfall', '1990-08-16', 'blaze.nightfall@zephmail.realm', 'hashed_password_018', '+1-555-NIGHT', '2024-02-22 14:20:00', 'ACTIVE', 'profiles/blaze_night.jpg'),
('Coral', 'Deepcurrent', '1993-12-31', 'coral.deepcurrent@zephmail.realm', 'hashed_password_019', '+1-555-CORAL', '2024-02-25 10:30:00', 'ACTIVE', 'profiles/coral_deep.jpg'),
('Rune', 'Spellweaver', '1987-04-04', 'rune.spellweaver@zephmail.realm', 'hashed_password_020', '+1-555-RUNES', '2024-02-28 16:00:00', 'ACTIVE', 'profiles/rune_spell.jpg'),
('Dawn', 'Prismatic', '1991-10-18', 'dawn.prismatic@zephmail.realm', 'hashed_password_021', '+1-555-PRISM', '2024-03-02 11:15:00', 'ACTIVE', 'profiles/dawn_prism.jpg'),
('Void', 'Starwhisper', '1996-06-07', 'void.starwhisper@zephmail.realm', 'hashed_password_022', '+1-555-VSTAR', '2024-03-05 13:30:00', 'ACTIVE', 'profiles/void_star.jpg'),
('Iris', 'Moonbeam', '1985-09-21', 'iris.moonbeam@zephmail.realm', 'hashed_password_023', '+1-555-IRIS', '2024-03-08 09:45:00', 'ACTIVE', 'profiles/iris_moon.jpg'),
('Astra', 'Voidlight', '1989-11-14', 'astra.voidlight@zephmail.realm', 'hashed_password_024', '+1-555-ASTRA', '2024-03-10 15:20:00', 'ACTIVE', 'profiles/astra_void.jpg'),
('Orion', 'Timekeeper', '1994-01-28', 'orion.timekeeper@zephmail.realm', 'hashed_password_025', '+1-555-ORION', '2024-03-12 12:10:00', 'ACTIVE', 'profiles/orion_time.jpg');


/* 2 STAFF TABLE - Royal Trust & Safety Council (22 records) */
INSERT INTO Staff (EmployeeID, Name, Email, Department, Role, HireDate, AccessLevel) VALUES
('ZEP001', 'Aria Moonshadow', 'aria.moonshadow@zephyria.realm', 'Trust', 'Chief Guardian', '2024-01-15', 9),
('ZEP002', 'Thorin Ironforge', 'thorin.ironforge@zephyria.realm', 'Support', 'Dwarf Mediator', '2024-02-01', 6),
('ZEP003', 'Luna Starweaver', 'luna.starweaver@zephyria.realm', 'Trust', 'Elf Specialist', '2024-01-20', 7),
('ZEP004', 'Rex Dragonheart', 'rex.dragonheart@zephyria.realm', 'Support', 'Dragon Liaison', '2024-03-10', 8),
('ZEP005', 'Zara Windwhisper', 'zara.windwhisper@zephyria.realm', 'Trust', 'Sky Kingdom Rep', '2024-02-15', 7),
('ZEP006', 'Finn Seashell', 'finn.seashell@zephyria.realm', 'Support', 'Coastal Agent', '2024-01-30', 5),
('ZEP007', 'Ember Flameforge', 'ember.flameforge@zephyria.realm', 'Trust', 'Fire Elemental', '2024-03-05', 6),
('ZEP008', 'Sage Moonbeam', 'sage.moonbeam@zephyria.realm', 'Support', 'Night Shift Lead', '2024-02-28', 8),
('ZEP009', 'Crystal Brightstone', 'crystal.brightstone@zephyria.realm', 'Trust', 'Crystal Lead', '2024-01-10', 8),
('ZEP010', 'River Flowing', 'river.flowing@zephyria.realm', 'Support', 'Water Realm Agent', '2024-02-20', 5),
('ZEP011', 'Moss Greenleaf', 'moss.greenleaf@zephyria.realm', 'Support', 'Forest Realm Agent', '2024-03-15', 5),
('ZEP012', 'Storm Cloudbreak', 'storm.cloudbreak@zephyria.realm', 'Trust', 'Weather Specialist', '2024-01-25', 7),
('ZEP013', 'Ivy Thornwick', 'ivy.thornwick@zephyria.realm', 'Support', 'Plant Coordinator', '2024-02-10', 6),
('ZEP014', 'Blaze Cinderfall', 'blaze.cinderfall@zephyria.realm', 'Trust', 'Safety Inspector', '2024-03-20', 8),
('ZEP015', 'Pearl Deepcurrent', 'pearl.deepcurrent@zephyria.realm', 'Support', 'Water Specialist', '2024-01-05', 6),
('ZEP016', 'Shadow Nightveil', 'shadow.nightveil@zephyria.realm', 'Trust', 'Dark Realm Monitor', '2024-02-25', 7),
('ZEP017', 'Quartz Shimmer', 'quartz.shimmer@zephyria.realm', 'Support', 'Gem Authentication', '2024-03-01', 5),
('ZEP018', 'Breeze Skylift', 'breeze.skylift@zephyria.realm', 'Trust', 'Flying Coordinator', '2024-01-20', 8),
('ZEP019', 'Root Earthstrong', 'root.earthstrong@zephyria.realm', 'Support', 'Ground Expert', '2024-02-15', 6),
('ZEP020', 'Mist Wanderer', 'mist.wanderer@zephyria.realm', 'Trust', 'Portal Safety', '2024-03-25', 9),
('ZEP021', 'Dawn Lightbringer', 'dawn.lightbringer@zephyria.realm', 'Support', 'Light Specialist', '2024-01-12', 7),
('ZEP022', 'Echo Voidcaller', 'echo.voidcaller@zephyria.realm', 'Trust', 'Void Realm Monitor', '2024-02-08', 8);


/* 3 LANGUAGES TABLE - Magical Languages of Zephyria (22 records) */
INSERT INTO Languages (LanguageCode, LanguageName) VALUES
('ZE', 'Zephyrian Common'),
('CR', 'Crystal Tongue'),
('EL', 'Elvish'),
('DW', 'Dwarvish'),
('DR', 'Draconic'),
('AQ', 'Aquatic'),
('SK', 'Skyborn'),
('FR', 'Forestspeak'),
('FI', 'Firetongue'),
('SH', 'Shadowkin'),
('VO', 'Voidian'),
('LI', 'Lightspeak'),
('EA', 'Earthen'),
('WI', 'Windish'),
('ST', 'Stellar'),
('MO', 'Moonkin'),
('SU', 'Solarian'),
('TI', 'Temporal'),
('SP', 'Spiritish'),
('MA', 'Arcane'),
('RU', 'Runic'),
('MY', 'Mystic');


/* 4 LISTINGADDRESSES TABLE - Magical Locations (25 records) */
INSERT INTO ListingAddresses (Street, City, State, PostalCode, Country, Latitude, Longitude, Suburb, ExactAddressVisible) VALUES
('Crystal Spire 42', 'Frostvale', 'Crystal Kingdom', 'CK001', 'Northern Zephyria', 45.123456, -73.234567, 'Diamond District', false),
('Elderoak Grove 15', 'Whisperwood', 'Forest Realm', 'FR002', 'Western Zephyria', 43.987654, -71.876543, 'Ancient Grove', false),
('Cloudmist Avenue 7', 'Skyhold', 'Sky Kingdom', 'SK003', 'Upper Zephyria', 47.456789, -69.345678, 'Nimbus Heights', false),
('Dragon Peaks Road 23', 'Emberton', 'Fire Realm', 'FIR004', 'Eastern Zephyria', 41.567890, -75.456789, 'Flame Valley', false),
('Coral Gardens 88', 'Aquamarine', 'Water Kingdom', 'WK005', 'Southern Zephyria', 39.678901, -77.567890, 'Pearl Bay', false),
('Moonbeam Terrace 12', 'Lunaria', 'Night Realm', 'NR006', 'Shadow Zephyria', 44.789012, -72.678901, 'Starlight Quarter', false),
('Sunburst Plaza 33', 'Solaris', 'Light Kingdom', 'LK007', 'Radiant Zephyria', 46.890123, -70.789012, 'Golden Heights', false),
('Earthen Halls 56', 'Stoneheart', 'Mountain Empire', 'ME008', 'Central Zephyria', 42.901234, -74.890123, 'Granite Cliffs', false),
('Windwhisper Lane 9', 'Galeford', 'Sky Kingdom', 'SK009', 'Upper Zephyria', 48.012345, -68.901234, 'Zephyr Plains', false),
('Mystmere Circle 44', 'Enigma', 'Void Realm', 'VR010', 'Hidden Zephyria', 40.123456, -76.012345, 'Shadow Mists', true),
('Phoenix Rise 17', 'Ashfell', 'Fire Realm', 'FIR011', 'Eastern Zephyria', 41.234567, -75.123456, 'Ember Slopes', false),
('Dewdrop Gardens 25', 'Verdant', 'Forest Realm', 'FR012', 'Western Zephyria', 43.345678, -71.234567, 'Fern Hollow', false),
('Tidecrest Boulevard 71', 'Nepturia', 'Water Kingdom', 'WK013', 'Southern Zephyria', 39.456789, -77.345678, 'Seahorse Cove', false),
('Starfall Heights 38', 'Celestia', 'Sky Kingdom', 'SK014', 'Upper Zephyria', 47.567890, -69.456789, 'Constellation View', false),
('Gemheart Caverns 5', 'Crystallis', 'Crystal Kingdom', 'CK015', 'Northern Zephyria', 45.678901, -73.567890, 'Sapphire Caves', true),
('Thornwick Path 62', 'Bramblewood', 'Forest Realm', 'FR016', 'Western Zephyria', 43.789012, -71.678901, 'Rose Thicket', false),
('Voidwalker Street 13', 'Nullhaven', 'Void Realm', 'VR017', 'Hidden Zephyria', 40.890123, -76.789012, 'Echo Quarter', true),
('Lightbringer Avenue 29', 'Luminous', 'Light Kingdom', 'LK018', 'Radiant Zephyria', 46.901234, -70.890123, 'Prism District', false),
('Stormwind Ridge 84', 'Tempest', 'Sky Kingdom', 'SK019', 'Upper Zephyria', 48.234567, -68.123456, 'Thunder Peaks', false),
('Magmaflow Terrace 51', 'Inferno', 'Fire Realm', 'FIR020', 'Eastern Zephyria', 41.345678, -75.234567, 'Lava Fields', false),
('Whispergrove Lane 18', 'Silentwood', 'Forest Realm', 'FR021', 'Western Zephyria', 43.456789, -71.345678, 'Quiet Glade', false),
('Abyssal Depths 77', 'Darkwater', 'Water Kingdom', 'WK022', 'Southern Zephyria', 39.567890, -77.456789, 'Trench View', true),
('Floating Gardens 26', 'Levitas', 'Sky Kingdom', 'SK023', 'Upper Zephyria', 47.678901, -69.567890, 'Cloud Gardens', false),
('Timeless Towers 94', 'Chronos', 'Time Realm', 'TR024', 'Eternal Zephyria', 45.789012, -73.678901, 'Temporal District', true),
('Harmony Heights 35', 'Melodia', 'Music Realm', 'MR025', 'Resonant Zephyria', 44.890123, -72.789012, 'Symphony Hills', false);


/* 5 PROPERTYTYPE TABLE - Magical Dwelling Types (21 records) */
INSERT INTO PropertyType (TypeName, TypeDescription) VALUES
('Crystal Palace', 'Majestic ice and crystal structures in the Crystal Kingdom'),
('Tree Mansion', 'Luxury treehouses in the ancient forests'),
('Cloud Castle', 'Floating castles in the sky realm'),
('Dragon Cave', 'Converted dragon lairs with modern amenities'),
('Underwater Dome', 'Magical air-filled domes beneath the waves'),
('Desert Oasis', 'Enchanted oasis compounds in magical deserts'),
('Mountain Fortress', 'Stone fortresses carved into mountain peaks'),
('Fairy Cottage', 'Miniature cottages enhanced with size magic'),
('Wizard Tower', 'Multi-story towers with magical conveniences'),
('Enchanted Cabin', 'Cozy cabins with protective enchantments'),
('Royal Villa', 'Aristocratic villas in kingdom capitals'),
('Mystical Yurt', 'Nomadic dwellings with portal connections'),
('Phoenix Nest', 'High-altitude nests adapted for travelers'),
('Mushroom House', 'Giant mushroom dwellings in magical forests'),
('Ice Igloo', 'Magical ice structures that never melt'),
('Earth Lodge', 'Underground lodges with crystal lighting'),
('Star Observatory', 'Celestial viewing platforms with lodging'),
('Elemental Sanctuary', 'Dwellings attuned to specific magical elements'),
('Portal Inn', 'Multi-dimensional inns with realm access'),
('Healing Springs', 'Restorative hot spring accommodations'),
('Time Capsule', 'Temporal dwellings with unique time effects');


/* 6 EXPERIENCETYPES TABLE - Magical Experiences (20 records) */
INSERT INTO ExperienceTypes (TypeName, TypeDescription) VALUES
('Dragon Riding', 'Guided flights on friendly dragons across kingdoms'),
('Spell Weaving', 'Learn basic magic from certified wizards'),
('Crystal Mining', 'Supervised mining expeditions in crystal caves'),
('Forest Communion', 'Connect with ancient tree spirits and forest magic'),
('Underwater Exploration', 'Magical breathing apparatus for ocean depths'),
('Sky Walking', 'Levitation lessons and cloud kingdom tours'),
('Potion Brewing', 'Hands-on alchemy with master alchemists'),
('Phoenix Watching', 'Witness the legendary phoenix rebirth cycle'),
('Time Travel', 'Supervised journeys to historical moments'),
('Elemental Mastery', 'Basic control of fire, water, earth, or air'),
('Spirit Channeling', 'Communicate with spirits of departed heroes'),
('Unicorn Encounter', 'Meet and feed magical unicorns in sacred groves'),
('Portal Crafting', 'Learn to create temporary travel portals'),
('Starlight Dancing', 'Traditional celestial dances under magical stars'),
('Rune Reading', 'Ancient divination with mystical rune stones'),
('Shapeshifting', 'Temporary animal transformation experiences'),
('Healing Arts', 'Learn magical healing techniques'),
('Mind Reading', 'Telepathy training with ethical guidelines'),
('Fairy Diplomacy', 'Negotiation and communication with fairy courts'),
('Void Meditation', 'Safe exploration of void realm consciousness');


/*7 SERVICETYPES TABLE - Magical Services (21 records) */
INSERT INTO ServiceTypes (TypeName, TypeDescription) VALUES
('Spell Casting', 'Custom magic spells performed by certified mages'),
('Portal Transportation', 'Instant travel between designated portal points'),
('Healing Magic', 'Magical healing services for injuries and ailments'),
('Enchanted Photography', 'Magical portraits that move and speak'),
('Weather Modification', 'Localized weather control for events'),
('Protective Wards', 'Magical security systems for homes and events'),
('Dream Crafting', 'Custom dream experiences while sleeping'),
('Memory Enhancement', 'Magical improvement of memory and learning'),
('Language Telepathy', 'Instant translation through magical telepathy'),
('Familiar Summoning', 'Temporary magical creature companions'),
('Blessing Ceremonies', 'Magical blessings for special occasions'),
('Curse Removal', 'Professional removal of harmful magical curses'),
('Astral Projection', 'Guided out-of-body spiritual experiences'),
('Elemental Cleaning', 'Magical cleaning using elemental forces'),
('Illusion Entertainment', 'Magical illusions for parties and events'),
('Prophecy Reading', 'Professional fortune telling and future sight'),
('Magical Cooking', 'Enchanted meals with beneficial magical effects'),
('Plant Growth', 'Accelerated growth magic for gardens'),
('Crystal Charging', 'Magical energy infusion for crystal devices'),
('Soul Bonding', 'Magical ceremonies for deep relationships'),
('Dimensional Storage', 'Expanded space magic for personal belongings');


/*8 AMENITIES TABLE - Magical Amenities (25 records) */
INSERT INTO Amenities (AmenityName, AmenityCategory, AmenityDescription) VALUES
('Crystal WiFi', 'BASIC', 'High-speed magical communication network'),
('Healing Pool', 'BASIC', 'Magical pool that heals minor injuries'),
('Temperature Control', 'BASIC', 'Magical climate adjustment throughout dwelling'),
('Levitation Platform', 'BASIC', 'Floating platform for easy upper-level access'),
('Scrying Mirror', 'BASIC', 'Magical mirror for long-distance communication'),
('Self-Cooking Hearth', 'KITCHEN', 'Enchanted fireplace that prepares meals'),
('Preservation Box', 'KITCHEN', 'Magical food storage that prevents spoilage'),
('Flavor Enhancement', 'KITCHEN', 'Spells that improve taste of any meal'),
('Infinite Water Source', 'KITCHEN', 'Magical spring providing endless fresh water'),
('Elemental Stove', 'KITCHEN', 'Cooking surface using controlled elemental fire'),
('Flying Garden', 'OUTDOOR', 'Levitating garden plots with magical plants'),
('Weather Barrier', 'OUTDOOR', 'Magical dome protecting outdoor spaces'),
('Stargazing Platform', 'OUTDOOR', 'Enhanced platform for celestial observation'),
('Portal Gateway', 'OUTDOOR', 'Personal portal for quick realm travel'),
('Dragon Landing Pad', 'OUTDOOR', 'Reinforced platform for flying mount parking'),
('Phoenix Perch', 'OUTDOOR', 'Special perch for phoenix and firebird visitors'),
('Moonlight Amplifier', 'OUTDOOR', 'Magical enhancement of natural moonlight'),
('Protective Wards', 'SAFETY', 'Magical barriers preventing unwanted intrusion'),
('Emergency Teleport', 'SAFETY', 'Instant transport to safety in emergencies'),
('Poison Detection', 'SAFETY', 'Magical sensors alerting to dangerous substances'),
('Fire Suppression', 'SAFETY', 'Magical systems preventing and controlling fires'),
('Healing Crystals', 'SAFETY', 'Emergency magical healing available throughout'),
('Guardian Spirit', 'SAFETY', 'Protective spirit watching over the dwelling'),
('Time Dilation Field', 'SAFETY', 'Slows time in dangerous situations'),
('Reality Anchor', 'SAFETY', 'Prevents unwanted dimensional shifts or magic');

/*PHASE 2: LEVEL 1 DEPENDENCIES
Tables that depend only on independent tables above
/*
9 SAVEDPAYMENTDETAILS - Zephyrian Payment Methods (20 records)

FANTASY PAYMENT SYSTEM EXPLANATION:
✨ Crystal Bank: Energy stored in magical crystals, most common payment method
🌙 Lunar Vault: Moon-powered currency system, popular in Night Realm  
⚒️ Dwarf Treasury: Traditional gold/gem backing from Mountain Empire
⭐ Celestial Bank: Star fragment currency used in Sky Kingdom
🌑 Void Exchange: Dark energy transactions for Void Realm residents
🔥 Fire Mint: Flame-based currency from Fire Realm
🌿 Forest Credit: Nature-backed payments using life force energy
🌊 Water Flow: Aquatic realm currency based on tidal energy

TECHNICAL MAPPING:
- PaymentGatewayToken = Magical signature/spell for the payment method
- CardBrand = Magical banking institution name
- Last4Digits = Security enchantment identifier (like magical serial numbers)  
- ExpiryMonth/Year = When the magical binding/enchantment expires
- IsDefault = Primary payment crystal/token for this traveler
*/
INSERT IGNORE INTO SavedPaymentDetails (UserID, PaymentGatewayToken, CardBrand, Last4Digits, ExpiryMonth, ExpiryYear, IsDefault, CreatedAt, IsActive) VALUES
(1, 'crystal_energy_001_kaelen', 'Crystal Bank', '1234', 12, 2025, TRUE, '2024-01-10 10:00:00', TRUE),
(2, 'moon_essence_002_lyra', 'Lunar Vault', '5678', 8, 2026, TRUE, '2024-01-12 14:30:00', TRUE),
(3, 'forge_coin_003_thorek', 'Dwarf Treasury', '9012', 5, 2025, TRUE, '2024-01-15 11:00:00', TRUE),
(4, 'star_shard_004_elara', 'Celestial Bank', '3456', 11, 2027, TRUE, '2024-01-18 16:45:00', TRUE),
(5, 'shadow_token_005_draven', 'Void Exchange', '7890', 3, 2026, TRUE, '2024-01-20 12:00:00', TRUE),
(6, 'tide_crystal_006_marina', 'Water Flow', '2468', 6, 2026, TRUE, '2024-01-22 14:00:00', TRUE),
(7, 'wind_essence_007_finn', 'Sky Treasury', '1357', 9, 2025, TRUE, '2024-01-25 09:30:00', TRUE),
(8, 'flame_core_008_ember', 'Fire Mint', '8024', 4, 2027, TRUE, '2024-01-28 15:45:00', TRUE),
(9, 'earth_stone_009_sage', 'Stone Vault', '9753', 7, 2026, TRUE, '2024-02-01 12:15:00', TRUE),
(10, 'crystal_shard_010_luna', 'Crystal Bank', '4681', 10, 2025, TRUE, '2024-02-03 14:45:00', TRUE),
(11, 'void_essence_011_zara', 'Void Exchange', '3579', 1, 2027, TRUE, '2024-02-05 10:30:00', TRUE),
(12, 'phoenix_token_012_phoenix', 'Fire Mint', '1928', 12, 2026, TRUE, '2024-02-08 17:00:00', TRUE),
(13, 'flow_crystal_013_river', 'Water Flow', '5674', 5, 2025, TRUE, '2024-02-10 11:45:00', TRUE),
(14, 'light_shard_014_storm', 'Celestial Bank', '8159', 8, 2027, TRUE, '2024-02-12 13:30:00', TRUE),
(15, 'nature_coin_015_moss', 'Forest Credit', '2637', 3, 2026, TRUE, '2024-02-15 09:45:00', TRUE),
(16, 'sound_crystal_016_echo', 'Harmony Bank', '7418', 11, 2025, TRUE, '2024-02-18 15:30:00', TRUE),
(17, 'star_essence_017_crystal', 'Celestial Bank', '9630', 6, 2027, TRUE, '2024-02-20 13:00:00', TRUE),
(18, 'night_token_018_blaze', 'Shadow Mint', '1472', 9, 2026, TRUE, '2024-02-22 14:45:00', TRUE),
(19, 'coral_shard_019_coral', 'Water Flow', '5836', 2, 2025, TRUE, '2024-02-25 10:45:00', TRUE),
(20, 'rune_crystal_020_rune', 'Mystic Vault', '7294', 7, 2027, TRUE, '2024-02-28 16:15:00', TRUE);

/*10 *HOST - Independent Hosts Only (No Supervisor References)
 All SupervisorHostID = NULL to avoid foreign key issues
*/
/*
HOST TABLE - ZEPHYRIAN ACCOMMODATION HOSTS

RECURSIVE FOREIGN KEY CHALLENGE:
This table has SupervisorHostID → Host.HostID (hosts supervising other hosts)
EXECUTION ORDER REQUIRED:
1. Execute BATCH 1: All independent hosts (SupervisorHostID = NULL)
2. Verify creation with: SELECT HostID, UserID, IsSuperHost FROM Host WHERE IsSuperHost = TRUE;
3. Execute BATCH 2: UPDATE statements to establish cohost relationships

WHY THIS ORDER:
SuperHosts must exist before they can supervise cohosts
SupervisorHostID must reference existing HostID values
Recursive relationships require the referenced record to exist first

BUSINESS LOGIC:
SuperHosts: Experienced hosts who can mentor newcomers
Cohosts: New hosts learning under SuperHost supervision
Mentorship: Cohosts gain experience before becoming independent
*/

/* BATCH 1: INDEPENDENT HOSTS - Execute First, All SupervisorHostID = NULL */
INSERT IGNORE INTO Host (UserID, VerifiedByStaffID, SupervisorHostID, IsCohost, IsSuperHost, VerificationStatus, VerificationDate) VALUES
(1, 125, NULL, FALSE, TRUE, 'Verified', '2024-01-20 10:30:00'),   /* Kaelen (Sky) - SuperHost */
(2, 114, NULL, FALSE, FALSE, 'Verified', '2024-01-25 14:15:00'),  /* Lyra (Night) */  
(3, 127, NULL, FALSE, TRUE, 'Verified', '2024-01-30 09:45:00'),   /* Thorek (Mountain) - SuperHost */
(4, 125, NULL, FALSE, FALSE, 'Verified', '2024-02-05 16:20:00'),  /* Elara (Sky) - Will become cohost */
(5, 133, NULL, FALSE, FALSE, 'Verified', '2024-02-10 11:30:00'),  /* Draven (Void) */
(6, 127, NULL, FALSE, FALSE, 'Verified', '2024-02-12 14:30:00'),  /* Marina (Water) - Will become cohost */
(7, 125, NULL, FALSE, FALSE, 'Verified', '2024-02-15 09:45:00'),  /* Finn (Sky) */
(8, 127, NULL, FALSE, FALSE, 'Verified', '2024-02-18 15:30:00'),  /* Ember (Fire) */
(9, 122, NULL, FALSE, FALSE, 'Verified', '2024-02-20 11:15:00'),  /* Sage (Earth) */
(10, 122, NULL, FALSE, FALSE, 'Verified', '2024-02-22 13:45:00'), /* Luna (Crystal) */
(11, 133, NULL, FALSE, FALSE, 'Verified', '2024-02-25 10:30:00'), /* Zara (Void) */
(12, 127, NULL, FALSE, TRUE, 'Verified', '2024-02-28 16:15:00'),  /* Phoenix (Fire) - SuperHost */
(13, 128, NULL, FALSE, FALSE, 'Verified', '2024-03-02 12:00:00'), /* River (Water) */
(14, 114, NULL, FALSE, FALSE, 'Verified', '2024-03-05 14:30:00'), /* Storm (Light) */
(15, 124, NULL, FALSE, FALSE, 'Verified', '2024-03-08 11:45:00'), /* Moss (Forest) */
(16, 134, NULL, FALSE, FALSE, 'Verified', '2024-03-10 09:30:00'), /* Echo (Sound) */
(17, 122, NULL, FALSE, FALSE, 'Verified', '2024-03-12 15:15:00'), /* Crystal (Star) - Will become cohost */
(18, 129, NULL, FALSE, FALSE, 'Verified', '2024-03-15 13:30:00'), /* Blaze (Shadow) */
(19, 128, NULL, FALSE, FALSE, 'Verified', '2024-03-18 10:45:00'), /* Coral (Water) */
(20, 133, NULL, FALSE, FALSE, 'Verified', '2024-03-20 16:45:00'); /* Rune (Mystic) */

/*
BATCH 2: ESTABLISH COHOST RELATIONSHIPS - Execute After Batch 1

INSTRUCTIONS:
1. First execute Batch 1 above
2. Check SuperHost HostIDs: SELECT HostID, UserID FROM Host WHERE IsSuperHost = TRUE;
3. Update the HostID numbers below if they differ from your actual values
4. Execute the UPDATE statements below
*/

/* Elara (UserID 4) becomes cohost under Kaelen (UserID 1) */
UPDATE Host SET SupervisorHostID = (SELECT HostID FROM Host WHERE UserID = 1), IsCohost = TRUE WHERE UserID = 4;

/* Marina (UserID 6) becomes cohost under Thorek (UserID 3) */
UPDATE Host SET SupervisorHostID = (SELECT HostID FROM Host WHERE UserID = 3), IsCohost = TRUE WHERE UserID = 6;

/* Crystal (UserID 17) becomes cohost under Phoenix (UserID 12) */
UPDATE Host SET SupervisorHostID = (SELECT HostID FROM Host WHERE UserID = 12), IsCohost = TRUE WHERE UserID = 17;

/*
VERIFICATION QUERIES (Use these to check your work):
SELECT HostID, UserID, SupervisorHostID, IsCohost, IsSuperHost FROM Host ORDER BY HostID;
SELECT HostID, UserID FROM Host WHERE IsSuperHost = TRUE;
SELECT h1.UserID as CoHost, h2.UserID as Supervisor FROM Host h1 JOIN Host h2 ON h1.SupervisorHostID = h2.HostID;
*/
/*11 User home/work/billing addresses in Planet Zephyria:
ADDRESSES - Zephyrian User Addresses (25 records)

FANTASY ADDRESS SYSTEM EXPLANATION:
🏠 Home: Primary residence in their native realm
💰 Billing: Financial/banking address (often in major kingdom capitals)  
⚔️ Work: Professional address (guild halls, magical institutions)

ZEPHYRIAN ADDRESSING:
- Street: Magical landmark-based addressing system
- City: Major settlements within each realm
- State: The various kingdoms/realms of Zephyria
- PostalCode: Magical portal routing codes
- Country: Regional divisions of Planet Zephyria
- Latitude/Longitude: Magical coordinate system for portal travel
*/

INSERT IGNORE INTO Addresses (UserID, AddressType, Street, City, State, PostalCode, Country, Latitude, Longitude, Suburb) VALUES
(1, 'Home', 'Stormwind Plaza 15', 'Tempest City', 'Sky Kingdom', 'SK-001', 'Upper Zephyria', 47.123456, -69.234567, 'Wind Quarter'),
(2, 'Home', 'Moonwhisper Lane 23', 'Lunaria', 'Night Realm', 'NR-002', 'Shadow Zephyria', 44.567890, -72.345678, 'Silver District'),
(3, 'Home', 'Ironbeard Forge 8', 'Stoneheart', 'Mountain Empire', 'ME-003', 'Central Zephyria', 42.234567, -74.456789, 'Hammer Hills'),
(4, 'Home', 'Starseeker Tower 42', 'Celestia', 'Sky Kingdom', 'SK-004', 'Upper Zephyria', 47.890123, -69.567890, 'Constellation View'),
(5, 'Home', 'Shadowbane Alley 7', 'Nullhaven', 'Void Realm', 'VR-005', 'Hidden Zephyria', 40.345678, -76.678901, 'Dark Quarter'),
(6, 'Home', 'Tidesinger Cove 31', 'Aquamarine', 'Water Kingdom', 'WK-006', 'Southern Zephyria', 39.678901, -77.789012, 'Pearl Bay'),
(7, 'Home', 'Windcaller Heights 19', 'Galeford', 'Sky Kingdom', 'SK-007', 'Upper Zephyria', 48.012345, -68.890123, 'Zephyr Plains'),
(8, 'Home', 'Flamewright Street 56', 'Emberton', 'Fire Realm', 'FR-008', 'Eastern Zephyria', 41.567890, -75.456789, 'Flame Valley'),
(9, 'Home', 'Earthkeeper Grove 12', 'Verdant', 'Forest Realm', 'FOR-009', 'Western Zephyria', 43.345678, -71.234567, 'Fern Hollow'),
(10, 'Home', 'Crystalborn Spire 88', 'Frostvale', 'Crystal Kingdom', 'CK-010', 'Northern Zephyria', 45.123456, -73.234567, 'Diamond District'),
(11, 'Home', 'Voidwalker Circle 13', 'Enigma', 'Void Realm', 'VR-011', 'Hidden Zephyria', 40.123456, -76.012345, 'Shadow Mists'),
(12, 'Home', 'Brightflame Avenue 77', 'Ashfell', 'Fire Realm', 'FR-012', 'Eastern Zephyria', 41.234567, -75.123456, 'Ember Slopes'),
(13, 'Home', 'Flowstone Banks 25', 'Nepturia', 'Water Kingdom', 'WK-013', 'Southern Zephyria', 39.456789, -77.345678, 'Seahorse Cove'),
(14, 'Home', 'Lightbringer Plaza 33', 'Solaris', 'Light Kingdom', 'LK-014', 'Radiant Zephyria', 46.890123, -70.789012, 'Golden Heights'),
(15, 'Home', 'Greenthumb Gardens 5', 'Whisperwood', 'Forest Realm', 'FOR-015', 'Western Zephyria', 43.987654, -71.876543, 'Ancient Grove'),
(16, 'Home', 'Soundweaver Hall 67', 'Melodia', 'Music Realm', 'MR-016', 'Resonant Zephyria', 44.890123, -72.789012, 'Symphony Hills'),
(17, 'Home', 'Starlight Terrace 21', 'Crystallis', 'Crystal Kingdom', 'CK-017', 'Northern Zephyria', 45.678901, -73.567890, 'Sapphire Caves'),
(18, 'Home', 'Nightfall Street 44', 'Darkwater', 'Water Kingdom', 'WK-018', 'Southern Zephyria', 39.567890, -77.456789, 'Trench View'),
(19, 'Home', 'Deepcurrent Reef 92', 'Aquamarine', 'Water Kingdom', 'WK-019', 'Southern Zephyria', 39.678901, -77.567890, 'Coral Gardens'),
(20, 'Home', 'Spellweaver Tower 14', 'Luminous', 'Light Kingdom', 'LK-020', 'Radiant Zephyria', 46.901234, -70.890123, 'Prism District'),
(21, 'Home', 'Prismatic Bridge 58', 'Levitas', 'Sky Kingdom', 'SK-021', 'Upper Zephyria', 47.678901, -69.567890, 'Cloud Gardens'),
(22, 'Home', 'Starwhisper Lane 36', 'Chronos', 'Time Realm', 'TR-022', 'Eternal Zephyria', 45.789012, -73.678901, 'Temporal District'),
(23, 'Home', 'Moonbeam Circle 18', 'Lunaria', 'Night Realm', 'NR-023', 'Shadow Zephyria', 44.789012, -72.678901, 'Starlight Quarter'),
(24, 'Home', 'Voidlight Alley 71', 'Nullhaven', 'Void Realm', 'VR-024', 'Hidden Zephyria', 40.890123, -76.789012, 'Echo Quarter'),
(25, 'Home', 'Timekeeper Plaza 29', 'Chronos', 'Time Realm', 'TR-025', 'Eternal Zephyria', 45.789012, -73.678901, 'Temporal District');

/*
12 TAXDOCUMENTS - Zephyrian Host Tax Compliance (20 records)
Dependencies: Host table (HostID foreign key)

ZEPHYRIAN TAX SYSTEM EXPLANATION:
📜 Royal Revenue Scrolls (W9): Official income declarations to kingdom treasuries
📊 Kingdom Tax Returns: Annual magical earnings reports filed with realm authorities  
🏛️ Business Enchantment Licenses: Official permits for magical hospitality services
💰 Realm Banking Statements: Multi-kingdom financial proof documents for currency exchanges
🔮 Portal Transaction Records: Documentation of interdimensional payment processing

DOCUMENT STORAGE:
All documents stored in the Crystal Archive Network - Zephyria's magical cloud storage
Verified by Royal Trust & Safety Council staff members
Essential for host credibility and legal operation across kingdom borders
*/

INSERT IGNORE INTO TaxDocuments (HostID, DocumentType, DocumentURL, OriginalFileName, UploadDate, IsVerified, VerificationDate) VALUES
(62, 'W9', '/tax_docs/zeph_62_w9_2024.pdf', 'kaelen_stormwind_revenue_scroll.pdf', '2024-01-25', TRUE, '2024-01-30'),
(63, 'tax_return', '/tax_docs/zeph_63_return_2024.pdf', 'lyra_moonwhisper_lunar_earnings.pdf', '2024-02-01', TRUE, '2024-02-05'),
(64, 'business_license', '/tax_docs/zeph_64_license_2024.pdf', 'thorek_ironbeard_forge_permit.pdf', '2024-02-10', TRUE, '2024-02-15'),
(65, 'bank_statement', '/tax_docs/zeph_65_bank_2024.pdf', 'elara_starseeker_celestial_account.pdf', '2024-02-15', TRUE, '2024-02-20'),
(66, 'W9', '/tax_docs/zeph_66_w9_2024.pdf', 'draven_shadowbane_void_declaration.pdf', '2024-02-20', TRUE, '2024-02-25'),
(67, 'tax_return', '/tax_docs/zeph_67_return_2024.pdf', 'marina_tidesinger_water_revenues.pdf', '2024-02-25', TRUE, '2024-03-01'),
(68, 'business_license', '/tax_docs/zeph_68_license_2024.pdf', 'finn_windcaller_sky_services.pdf', '2024-03-01', TRUE, '2024-03-05'),
(69, 'bank_statement', '/tax_docs/zeph_69_bank_2024.pdf', 'ember_flamewright_fire_accounts.pdf', '2024-03-05', TRUE, '2024-03-10'),
(70, 'W9', '/tax_docs/zeph_70_w9_2024.pdf', 'sage_earthkeeper_nature_scroll.pdf', '2024-03-10', TRUE, '2024-03-15'),
(71, 'tax_return', '/tax_docs/zeph_71_return_2024.pdf', 'luna_crystalborn_crystal_earnings.pdf', '2024-03-15', TRUE, '2024-03-20'),
(72, 'business_license', '/tax_docs/zeph_72_license_2024.pdf', 'zara_voidwalker_portal_permit.pdf', '2024-03-20', TRUE, '2024-03-25'),
(73, 'bank_statement', '/tax_docs/zeph_73_bank_2024.pdf', 'phoenix_brightflame_fire_treasury.pdf', '2024-03-25', TRUE, '2024-03-30'),
(74, 'W9', '/tax_docs/zeph_74_w9_2024.pdf', 'river_flowstone_aquatic_declaration.pdf', '2024-03-30', TRUE, '2024-04-05'),
(75, 'tax_return', '/tax_docs/zeph_75_return_2024.pdf', 'storm_lightbringer_radiance_report.pdf', '2024-04-05', TRUE, '2024-04-10'),
(76, 'business_license', '/tax_docs/zeph_76_license_2024.pdf', 'moss_greenthumb_forest_license.pdf', '2024-04-10', TRUE, '2024-04-15'),
(77, 'bank_statement', '/tax_docs/zeph_77_bank_2024.pdf', 'echo_soundweaver_harmony_accounts.pdf', '2024-04-15', TRUE, '2024-04-20'),
(78, 'W9', '/tax_docs/zeph_78_w9_2024.pdf', 'crystal_starlight_stellar_scroll.pdf', '2024-04-20', TRUE, '2024-04-25'),
(79, 'tax_return', '/tax_docs/zeph_79_return_2024.pdf', 'blaze_nightfall_shadow_revenues.pdf', '2024-04-25', TRUE, '2024-04-30'),
(80, 'business_license', '/tax_docs/zeph_80_license_2024.pdf', 'coral_deepcurrent_reef_permit.pdf', '2024-04-30', TRUE, '2024-05-05'),
(81, 'bank_statement', '/tax_docs/zeph_81_bank_2024.pdf', 'rune_spellweaver_mystic_treasury.pdf', '2024-05-05', TRUE, '2024-05-10')


/*
13 HOST_LANGUAGES - Junction Table for Host Language Proficiencies (25 records)
Dependencies: Host table + Languages table (many-to-many relationship)

ZEPHYRIAN LANGUAGE SYSTEM:
🗣️ Multilingual Hospitality: Hosts speak multiple realm languages to serve diverse travelers
📚 Proficiency Levels: Basic (conversational), Fluent (business-level), Native (born speaker)
🌍 Cross-Realm Communication: Essential for hosting travelers from different kingdoms
⭐ Language Verification: Tested by Royal Trust & Safety Council language specialists

BUSINESS VALUE:
Guests can filter hosts by language compatibility
Hosts with rare languages (Voidian, Draconic) command premium rates
Native speakers of realm languages preferred for cultural experiences
*/

INSERT IGNORE INTO Host_Languages (HostID, LanguageID, ProficiencyLevel) VALUES
/* Kaelen Stormwind (HostID 62) - Sky Kingdom native, multilingual SuperHost */
(62, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'ZE'), 'Fluent'),   /* Zephyrian Common */
(62, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'SK'), 'Native'),   /* Skyborn - native realm */
(62, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'WI'), 'Fluent'),   /* Windish */

/* Lyra Moonwhisper (HostID 63) - Night Realm specialist */
(63, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'ZE'), 'Fluent'),   /* Zephyrian Common */
(63, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'SH'), 'Native'),   /* Shadowkin - native realm */
(63, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'MO'), 'Native'),   /* Moonkin */

/* Thorek Ironbeard (HostID 64) - Mountain Empire SuperHost */
(64, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'ZE'), 'Fluent'),   /* Zephyrian Common */
(64, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'DW'), 'Native'),   /* Dwarvish - native */
(64, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'EA'), 'Fluent'),   /* Earthen */

/* Elara Starseeker (HostID 65) - Cohost learning languages */
(65, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'ZE'), 'Fluent'),   /* Zephyrian Common */
(65, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'ST'), 'Native'),   /* Stellar - star specialty */
(65, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'SK'), 'Basic'),    /* Skyborn - learning */

/* Draven Shadowbane (HostID 66) - Void Realm specialist */
(66, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'ZE'), 'Fluent'),   /* Zephyrian Common */
(66, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'VO'), 'Native'),   /* Voidian - rare language */
(66, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'SH'), 'Fluent'),   /* Shadowkin */

/* Marina Tidesinger (HostID 67) - Water Kingdom cohost */
(67, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'ZE'), 'Fluent'),   /* Zephyrian Common */
(67, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'AQ'), 'Native'),   /* Aquatic - native */

/* Finn Windcaller (HostID 68) - Sky Kingdom host */
(68, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'ZE'), 'Fluent'),   /* Zephyrian Common */
(68, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'WI'), 'Native'),   /* Windish - wind specialty */
(68, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'SK'), 'Fluent'),   /* Skyborn */

/* Ember Flamewright (HostID 69) - Fire Realm host */
(69, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'ZE'), 'Fluent'),   /* Zephyrian Common */
(69, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'FI'), 'Native'),   /* Firetongue - native */
(69, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'DR'), 'Basic'),    /* Draconic - fire connection */

/* Sage Earthkeeper (HostID 70) - Earth/Forest specialist */
(70, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'ZE'), 'Fluent'),   /* Zephyrian Common */
(70, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'EA'), 'Native'),   /* Earthen */
(70, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'FR'), 'Fluent'),   /* Forestspeak */

/* Luna Crystalborn (HostID 71) - Crystal Kingdom */
(71, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'ZE'), 'Fluent'),   /* Zephyrian Common */
(71, (SELECT LanguageID FROM Languages WHERE LanguageCode = 'CR'), 'Native');   /* Crystal Tongue */

/* 14
LISTING - Core Zephyrian Accommodation & Experience Listings (25 records)
Dependencies: Host table + ListingAddresses table
Business Logic: Parent table for inheritance pattern (Property/Experience/Service specialize Listing)

ZEPHYRIAN MARKETPLACE TYPES:
🏰 Property: Traditional accommodations (crystal palaces, tree mansions, dragon caves)
✨ Experience: Magical adventures (dragon riding, spell weaving, time travel)
🛠️ Service: Professional magical services (portal transportation, healing magic, prophecy)
PRICING SYSTEM:
Currency: Universal Zephyrian Credits (ZC) - standardized across all realms
Price Units: Per night (properties), per guest (experiences), per service (magic work)
Refund Policies: Flexible (full refund), Moderate (50% after 24h), Strict (no refund)
*/
INSERT IGNORE INTO Listing (HostID, ListingAddressID, ListingType, Title, Description, MaxGuests, PriceAmount, PriceUnit, Currency, RefundPolicy, Status, CreatedAt, UpdatedAt, FeaturedImage) VALUES
(64, 3, 'Property', 'Ironbeard Mountain Fortress', 'Ancient dwarven stronghold with forge access and mountain views', 8, 180.00, 'Per night', 'ZC', 'Moderate', 'Active', '2024-02-01 09:15:00', '2024-02-01 09:15:00', 'images/ironbeard_fortress_main.jpg'),
(65, 4, 'Experience', 'Starlight Navigation Course', 'Learn to navigate by constellation magic with expert star-reader', 3, 120.00, 'per_guest', 'ZC', 'Flexible', 'Active', '2024-02-05 16:45:00', '2024-02-05 16:45:00', 'images/star_navigation_night.jpg'),
(66, 5, 'Service', 'Void Portal Transportation', 'Instant travel between void realm locations with safety guarantee', 2, 200.00, 'per_service', 'ZC', 'Strict', 'Active', '2024-02-08 11:30:00', '2024-02-08 11:30:00', 'images/void_portal_gateway.jpg'),
(67, 6, 'Property', 'Coral Gardens Underwater Dome', 'Magical air-filled dome beneath coral reefs with sea creature views', 4, 220.00, 'Per night', 'ZC', 'Flexible', 'Active', '2024-02-12 13:20:00', '2024-02-12 13:20:00', 'images/coral_dome_underwater.jpg'),
(68, 7, 'Experience', 'Wind Surfing the Sky Currents', 'Magical wind surfing lessons above the cloud kingdom', 2, 95.00, 'per_guest', 'ZC', 'Moderate', 'Active', '2024-02-15 10:45:00', '2024-02-15 10:45:00', 'images/sky_wind_surfing.jpg'),
(69, 8, 'Property', 'Phoenix Nest Fire Retreat', 'High-altitude nest with natural hot springs and fire elemental protection', 5, 275.00, 'Per night', 'ZC', 'Flexible', 'Active', '2024-02-18 14:30:00', '2024-02-18 14:30:00', 'images/phoenix_nest_flames.jpg'),
(70, 9, 'Service', 'Ancient Forest Healing Ritual', 'Traditional earth magic healing ceremonies with master herbalist', 1, 150.00, 'per_service', 'ZC', 'Moderate', 'Active', '2024-02-20 12:00:00', '2024-02-20 12:00:00', 'images/forest_healing_circle.jpg'),
(71, 10, 'Property', 'Crystal Spire Observatory', 'Transparent crystal tower with magical telescope for realm watching', 3, 190.00, 'Per night', 'ZC', 'Flexible', 'Active', '2024-02-22 15:15:00', '2024-02-22 15:15:00', 'images/crystal_spire_night.jpg'),
(72, 11, 'Experience', 'Void Meditation Journey', 'Guided consciousness exploration in the peaceful void realm', 6, 75.00, 'per_guest', 'ZC', 'Flexible', 'Active', '2024-02-25 11:45:00', '2024-02-25 11:45:00', 'images/void_meditation_space.jpg'),
(73, 12, 'Property', 'Dragon Landing Platform Suite', 'Luxury accommodation with reinforced dragon parking and fire protection', 10, 350.00, 'Per night', 'ZC', 'Strict', 'Active', '2024-02-28 09:30:00', '2024-02-28 09:30:00', 'images/dragon_platform_aerial.jpg'),
(74, 13, 'Service', 'Tide Prophecy Reading', 'Professional fortune telling using ancient water scrying techniques', 1, 100.00, 'per_service', 'ZC', 'Moderate', 'Active', '2024-03-02 16:20:00', '2024-03-02 16:20:00', 'images/water_scrying_crystal.jpg'),
(75, 14, 'Experience', 'Lightning Storm Photography', 'Capture magical lightning with enchanted cameras during storm season', 4, 110.00, 'per_guest', 'ZC', 'Flexible', 'Active', '2024-03-05 13:45:00', '2024-03-05 13:45:00', 'images/lightning_photography.jpg'),
(76, 15, 'Property', 'Enchanted Forest Treehouse', 'Living tree accommodation with fairy light network and nature sounds', 4, 160.00, 'Per night', 'ZC', 'Flexible', 'Active', '2024-03-08 10:20:00', '2024-03-08 10:20:00', 'images/fairy_treehouse_lights.jpg'),
(77, 16, 'Service', 'Harmonic Healing Sessions', 'Sound therapy using magical resonance frequencies for mind and body', 1, 125.00, 'per_service', 'ZC', 'Flexible', 'Active', '2024-03-10 14:50:00', '2024-03-10 14:50:00', 'images/harmonic_healing_waves.jpg'),
(78, 17, 'Property', 'Starlight Reflection Pool Villa', 'Luxury villa with magical pool reflecting constellation movements', 6, 280.00, 'Per night', 'ZC', 'Moderate', 'Active', '2024-03-12 12:10:00', '2024-03-12 12:10:00', 'images/starlight_pool_villa.jpg'),
(79, 18, 'Experience', 'Shadow Puppet Theater Workshop', 'Create magical shadow stories with living shadow puppets', 5, 65.00, 'per_guest', 'ZC', 'Flexible', 'Active', '2024-03-15 15:30:00', '2024-03-15 15:30:00', 'images/shadow_puppet_theater.jpg'),
(80, 19, 'Property', 'Deep Current Submarine Lodge', 'Underwater vessel accommodation with marine life viewing deck', 2, 240.00, 'Per night', 'ZC', 'Moderate', 'Active', '2024-03-18 11:40:00', '2024-03-18 11:40:00', 'images/submarine_lodge_deep.jpg'),
(81, 20, 'Service', 'Mystical Rune Inscription', 'Custom magical rune carving for protection and enhancement spells', 1, 175.00, 'per_service', 'ZC', 'Strict', 'Active', '2024-03-20 17:15:00', '2024-03-20 17:15:00', 'images/rune_carving_mystical.jpg'),
(62, 21, 'Experience', 'Storm Chasing Sky Tours', 'Guided magical storm observation from protected sky vehicles', 3, 140.00, 'per_guest', 'ZC', 'Moderate', 'Active', '2024-03-22 09:50:00', '2024-03-22 09:50:00', 'images/storm_chasing_tour.jpg'),
(64, 22, 'Property', 'Forge Master Workshop Stay', 'Accommodation with access to legendary dwarven forging facilities', 4, 210.00, 'Per night', 'ZC', 'Flexible', 'Active', '2024-03-25 13:25:00', '2024-03-25 13:25:00', 'images/forge_workshop_stay.jpg'),
(66, 23, 'Service', 'Void Energy Cleansing', 'Spiritual purification using void realm energy manipulation', 1, 90.00, 'per_service', 'ZC', 'Flexible', 'Active', '2024-03-28 16:05:00', '2024-03-28 16:05:00', 'images/void_energy_cleansing.jpg'),
(69, 24, 'Experience', 'Fire Elemental Communication', 'Learn to speak with fire spirits under expert supervision', 2, 130.00, 'per_guest', 'ZC', 'Strict', 'Active', '2024-03-30 12:40:00', '2024-03-30 12:40:00', 'images/fire_elemental_talk.jpg'),
(73, 25, 'Property', 'Phoenix Rebirth Viewing Chamber', 'Exclusive access to witness the legendary phoenix rebirth cycle', 8, 500.00, 'Per night', 'ZC', 'Strict', 'Active', '2024-04-01 14:15:00', '2024-04-01 14:15:00', 'images/phoenix_rebirth_chamber.jpg');


/*15 AVAILABILITY_CALENDAR - Daily Availability Tracking (23 records)
Dependencies: Listing table (ListingID foreign key)
Business Logic: Controls which dates guests can book each listing

FOREIGN KEY DEPENDENCY CHALLENGE:
This table references Listing.ListingID which uses AUTO_INCREMENT
Cannot assume ListingID values - must use actual generated IDs

EXECUTION APPROACH:
1. First attempted to use assumed ListingID values (1, 2, 3...)
2. Discovered actual ListingIDs start at 3, not 1 (ListingID 1,2 don't exist)
3. Corrected to use real ListingID values from Listing table
4. Result: Two-batch insertion to handle foreign key constraint properly

ZEPHYRIAN AVAILABILITY PATTERNS:
Listings show different availability based on magical seasonal restrictions
Maintenance periods for magical systems (portals, crystals, enchantments)
Weather-dependent activities (storm watching, starlight navigation)
Special events block availability (forge festivals, phoenix rebirth cycles)
*/

/* BATCH 1: Initial availability records - Successful for existing ListingID 3 */
INSERT IGNORE INTO Availability_Calendar (ListingID, AvailableDate, IsAvailable, LastUpdated) VALUES
(3, '2026-01-15', TRUE, '2026-01-10 10:15:00'),
(3, '2026-01-16', TRUE, '2026-01-10 10:15:00'),
(3, '2026-01-17', TRUE, '2026-01-10 10:15:00'),
(3, '2026-01-18', TRUE, '2026-01-10 10:15:00'),
(3, '2026-01-19', FALSE, '2026-01-10 10:15:00'), /* Forge festival - private event */
(3, '2026-01-20', TRUE, '2026-01-10 10:15:00'),
(3, '2026-01-21', TRUE, '2026-01-10 10:15:00');

/* BATCH 2:Using verified ListingID values (3-6) */
INSERT IGNORE INTO Availability_Calendar (ListingID, AvailableDate, IsAvailable, LastUpdated) VALUES
/* Ironbeard Mountain Fortress (ListingID 3) - Extended availability */
(3, '2026-01-22', TRUE, '2026-01-10 10:15:00'),
(3, '2026-01-23', TRUE, '2026-01-10 10:15:00'),
(3, '2026-01-24', FALSE, '2026-01-10 10:15:00'), /* Forge festival continues */
(3, '2026-01-25', TRUE, '2026-01-10 10:15:00'),

/* Starlight Navigation Course (ListingID 4) - Clear sky requirements */
(4, '2026-01-22', TRUE, '2026-01-10 16:45:00'),
(4, '2026-01-23', FALSE, '2026-01-10 16:45:00'), /* Cloudy forecast */
(4, '2026-01-24', TRUE, '2026-01-10 16:45:00'),
(4, '2026-01-25', TRUE, '2026-01-10 16:45:00'),

/* Void Portal Transportation (ListingID 5) - High demand service */
(5, '2026-01-22', TRUE, '2026-01-10 11:30:00'),
(5, '2026-01-23', TRUE, '2026-01-10 11:30:00'),
(5, '2026-01-24', FALSE, '2026-01-10 11:30:00'), /* Portal maintenance */
(5, '2026-01-25', TRUE, '2026-01-10 11:30:00'),

/* Coral Gardens Underwater Dome (ListingID 6) - Weather dependent */
(6, '2026-01-22', TRUE, '2026-01-10 13:20:00'),
(6, '2026-01-23', TRUE, '2026-01-10 13:20:00'),
(6, '2026-01-24', TRUE, '2026-01-10 13:20:00'),
(6, '2026-01-25', FALSE, '2026-01-10 13:20:00'); /* Storm warning */

/*
LESSONS LEARNED:
1. Always verify AUTO_INCREMENT values before referencing them
2. Foreign key constraints require referenced records to exist
3. Use SELECT to check actual ID values: SELECT ListingID FROM Listing ORDER BY ListingID;
4. Two-batch approach handles discovery of incorrect assumptions gracefully

VERIFICATION QUERY:
SELECT ac.ListingID, l.Title, ac.AvailableDate, ac.IsAvailable 
FROM Availability_Calendar ac 
JOIN Listing l ON ac.ListingID = l.ListingID 
ORDER BY ac.ListingID, ac.AvailableDate;
*/


/*
16 PROPERTY TABLE - Accommodation-Specific Details (21 records)
Dependencies: Listing table + PropertyType table  
Business Logic: Inheritance pattern - Property IS-A Listing with accommodation features

EXECUTION REQUIREMENTS:
Must execute AFTER Listing table and PropertyType table are populated
Uses subqueries to find correct PropertyTypeID values automatically
Only creates Property records for accommodation-style listings

ZEPHYRIAN ACCOMMODATION SYSTEM:
Property specializes the generic Listing table with accommodation-specific details
PlaceType options: Entire_Place (full property), Private_Room (shared property), SharedRoom (hostel-style)
Magical features: Check-in times coordinated with realm transportation schedules
Guest policies: Specific rules for magical creatures, spell casting, and elemental activities
Square footage includes both physical and extra-dimensional magical space

BUSINESS VALUE:
Guests can filter by accommodation type, room count, and magical creature policies
Hosts set specific rules for dragon parking, fire-breathing, portal usage
Instant booking available for verified magical properties with safety enchantments
*/
/*
EXECUTION INSTRUCTIONS:
1. Execute BATCH 1 first (10 primary accommodation properties)
2. Execute BATCH 2 second (11 additional properties for requirement compliance)
VERIFICATION QUERIES:
SELECT COUNT(*) as PropertyCount FROM Property;
SELECT p.ListingID, l.Title, pt.TypeName, p.PlaceType, p.Bedrooms 
FROM Property p 
JOIN Listing l ON p.ListingID = l.ListingID 
JOIN PropertyType pt ON p.PropertyTypeID = pt.PropertyTypeID 
ORDER BY p.ListingID;
*/

/* BATCH 1: Primary accommodation properties */
INSERT IGNORE INTO Property (ListingID, PropertyTypeID, PlaceType, Bedrooms, Beds, Bathrooms, SquareFootage, CheckInTime, CheckOutTime, MinimumStay, MaximumStay, InstantBook, SelfCheckIn, FreeCancellation, AllowPets, AllowsSmoking) VALUES
/* Ironbeard Mountain Fortress (ListingID 3) - Mountain Empire accommodation */
(3, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Mountain Fortress'), 'Entire_Place', 4, 8, 3.5, 2500, '15:00:00', '11:00:00', 2, 14, TRUE, TRUE, TRUE, TRUE, FALSE),

/* Coral Gardens Underwater Dome (ListingID 6) - Water Kingdom unique stay */
(6, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Underwater Dome'), 'Entire_Place', 2, 4, 2.0, 1200, '16:00:00', '10:00:00', 1, 7, TRUE, FALSE, TRUE, FALSE, FALSE),

/* Phoenix Nest Fire Retreat (ListingID 8) - Fire Realm luxury */
(8, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Phoenix Nest'), 'Entire_Place', 3, 5, 2.5, 1800, '14:00:00', '12:00:00', 3, 21, FALSE, TRUE, FALSE, FALSE, TRUE),

/* Crystal Spire Observatory (ListingID 10) - Crystal Kingdom specialty */
(10, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Crystal Palace'), 'Entire_Place', 2, 3, 1.5, 900, '17:00:00', '09:00:00', 1, 10, TRUE, TRUE, TRUE, FALSE, FALSE),

/* Dragon Landing Platform Suite (ListingID 12) - Fire Realm premium */
(12, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Dragon Cave'), 'Entire_Place', 5, 10, 4.0, 3500, '13:00:00', '11:00:00', 3, 30, FALSE, FALSE, FALSE, TRUE, TRUE),

/* Enchanted Forest Treehouse (ListingID 15) - Forest Realm nature stay */
(15, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Tree Mansion'), 'Entire_Place', 2, 4, 1.0, 800, '15:30:00', '10:30:00', 2, 14, TRUE, TRUE, TRUE, TRUE, FALSE),

/* Starlight Reflection Pool Villa (ListingID 17) - Sky Kingdom luxury villa */
(17, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Royal Villa'), 'Entire_Place', 3, 6, 3.0, 2200, '16:00:00', '11:00:00', 2, 21, TRUE, TRUE, TRUE, FALSE, FALSE),

/* Deep Current Submarine Lodge (ListingID 19) - Water Kingdom unique vessel */
(19, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Underwater Dome'), 'Entire_Place', 1, 2, 1.0, 600, '14:00:00', '10:00:00', 1, 5, FALSE, FALSE, TRUE, FALSE, FALSE),

/* Forge Master Workshop Stay (ListingID 22) - Mountain Empire working accommodation */
(22, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Mountain Fortress'), 'Entire_Place', 2, 4, 2.0, 1500, '15:00:00', '11:00:00', 3, 14, TRUE, TRUE, FALSE, TRUE, TRUE),

/* Phoenix Rebirth Viewing Chamber (ListingID 25) - Fire Realm exclusive experience property */
(25, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Phoenix Nest'), 'Entire_Place', 4, 8, 3.0, 2800, '18:00:00', '06:00:00', 5, 30, FALSE, FALSE, FALSE, FALSE, TRUE);

/* BATCH 2: Additional properties*/
INSERT IGNORE INTO Property (ListingID, PropertyTypeID, PlaceType, Bedrooms, Beds, Bathrooms, SquareFootage, CheckInTime, CheckOutTime, MinimumStay, MaximumStay, InstantBook, SelfCheckIn, FreeCancellation, AllowPets, AllowsSmoking) VALUES
/* Mixed accommodation types including shared and private room options */
(7, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Wizard Tower'), 'Private_Room', 1, 2, 1.0, 400, '15:00:00', '11:00:00', 1, 7, TRUE, TRUE, TRUE, FALSE, FALSE),

(9, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Earth Lodge'), 'Entire_Place', 1, 3, 1.5, 650, '16:00:00', '10:00:00', 2, 10, TRUE, TRUE, TRUE, TRUE, FALSE),

(11, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Mystical Yurt'), 'Entire_Place', 2, 4, 1.0, 800, '14:00:00', '12:00:00', 1, 14, TRUE, FALSE, TRUE, FALSE, TRUE),

(13, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Healing Springs'), 'SharedRoom', 1, 1, 0.5, 300, '17:00:00', '09:00:00', 1, 3, FALSE, FALSE, TRUE, FALSE, FALSE),

(14, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Star Observatory'), 'Private_Room', 1, 2, 1.0, 500, '20:00:00', '08:00:00', 2, 7, TRUE, TRUE, FALSE, FALSE, FALSE),

(16, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Portal Inn'), 'Private_Room', 1, 2, 1.0, 450, '15:00:00', '11:00:00', 1, 5, TRUE, TRUE, TRUE, FALSE, FALSE),

(18, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Mushroom House'), 'Entire_Place', 2, 3, 1.5, 700, '15:30:00', '10:30:00', 2, 12, TRUE, TRUE, TRUE, TRUE, FALSE),

(20, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Ice Igloo'), 'Entire_Place', 1, 2, 1.0, 400, '16:00:00', '10:00:00', 1, 5, TRUE, FALSE, TRUE, FALSE, FALSE),

(21, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Cloud Castle'), 'Entire_Place', 3, 5, 2.5, 1600, '14:00:00', '11:00:00', 2, 21, FALSE, TRUE, FALSE, FALSE, TRUE),

(23, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Elemental Sanctuary'), 'Private_Room', 1, 2, 1.0, 350, '15:00:00', '11:00:00', 1, 7, TRUE, TRUE, TRUE, FALSE, TRUE),

(24, (SELECT PropertyTypeID FROM PropertyType WHERE TypeName = 'Time Capsule'), 'Entire_Place', 2, 4, 2.0, 900, '00:00:00', '23:59:59', 1, 30, FALSE, FALSE, FALSE, FALSE, FALSE);


/*
17 EXPERIENCE TABLE - Activity-Specific Details (20+ records)
Dependencies: Listing table + ExperienceTypes table
Business Logic: Inheritance pattern - Experience IS-A Listing with activity features

EXECUTION REQUIREMENTS:
Must execute AFTER Listing table and ExperienceTypes table are populated
Uses subqueries to find correct ExperienceTypeID values automatically
Only creates Experience records for activity-style listings

ZEPHYRIAN EXPERIENCE SYSTEM:
🎭 DurationMinutes: How long the magical experience lasts
👶 MinAge: Safety requirements for magical activities  
🌅 TimeOfDay: When magical conditions are optimal
🎁 IncludedItems: Magical equipment and supplies provided
💪 PhysicalDemand: Exertion level required for the activity
🌦️ WeatherDependent: Whether magical weather affects the experience
*/

INSERT IGNORE INTO Experience (ListingID, ExperienceTypeID, DurationMinutes, MinAge, TimeOfDay, IncludedItems, PhysicalDemand, WeatherDependent) VALUES
/* Core magical experiences using all 20 ExperienceTypes */
(4, 14, 180, 12, 'EVENING', 'Star charts, magical telescope, constellation compass', 'LOW', TRUE), /* Starlight Dancing */
(7, 6, 120, 16, 'MORNING', 'Wind board, safety harness, levitation charm', 'MODERATE', TRUE), /* Sky Walking */
(11, 20, 90, 18, 'FLEXIBLE', 'Meditation crystals, void anchor, protective amulet', 'LOW', FALSE), /* Void Meditation */
(14, 10, 150, 14, 'AFTERNOON', 'Enchanted camera, storm cloak, lightning rod', 'MODERATE', TRUE), /* Elemental Mastery */
(18, 16, 120, 8, 'EVENING', 'Shadow puppets, magic stage, story scrolls', 'LOW', FALSE), /* Shapeshifting */
(21, 1, 240, 16, 'MORNING', 'Dragon saddle, safety harness, communication crystal', 'HIGH', TRUE), /* Dragon Riding */
(24, 11, 90, 21, 'AFTERNOON', 'Fire protection gear, translation crystal, cooling potion', 'MODERATE', FALSE), /* Spirit Channeling */

/* Additional experiences */
(5, 13, 60, 16, 'FLEXIBLE', 'Portal materials, safety anchors, dimensional compass', 'MODERATE', FALSE), /* Portal Crafting */
(9, 17, 120, 14, 'MORNING', 'Healing crystals, herb kit, meditation guides', 'LOW', FALSE), /* Healing Arts */
(13, 15, 45, 12, 'EVENING', 'Ancient rune stones, divination cloth, interpretation guide', 'LOW', FALSE), /* Rune Reading */
(16, 18, 90, 18, 'FLEXIBLE', 'Telepathy amplifier, mental shields, ethics handbook', 'LOW', FALSE), /* Mind Reading */
(20, 2, 180, 14, 'AFTERNOON', 'Spell components, safety wands, instruction scrolls', 'MODERATE', FALSE), /* Spell Weaving */
(23, 20, 75, 21, 'EVENING', 'Void crystals, consciousness anchor, protection amulet', 'LOW', FALSE), /* Void Meditation */
(4, 8, 300, 16, 'EVENING', 'Viewing platform access, fire protection, rebirth schedule', 'LOW', TRUE), /* Phoenix Watching */
(7, 3, 240, 18, 'MORNING', 'Mining tools, safety gear, crystal identification guide', 'HIGH', FALSE), /* Crystal Mining */
(11, 4, 180, 12, 'MORNING', 'Tree communication crystal, forest map, nature offering', 'MODERATE', FALSE), /* Forest Communion */
(14, 5, 210, 16, 'AFTERNOON', 'Underwater breathing apparatus, depth gauge, marine guide', 'MODERATE', TRUE), /* Underwater Exploration */
(18, 7, 150, 14, 'FLEXIBLE', 'Alchemy kit, ingredient samples, safety equipment', 'LOW', FALSE), /* Potion Brewing */
(21, 9, 360, 21, 'FLEXIBLE', 'Time anchor, temporal compass, paradox prevention kit', 'MODERATE', FALSE), /* Time Travel */
(24, 12, 120, 8, 'MORNING', 'Unicorn treats, grooming kit, purity certification', 'LOW', FALSE), /* Unicorn Encounter */
(5, 19, 90, 16, 'AFTERNOON', 'Fairy language guide, diplomatic gifts, peace treaty', 'LOW', FALSE), /* Fairy Diplomacy */
(9, 10, 180, 18, 'FLEXIBLE', 'Elemental focus crystals, safety barriers, mastery manual', 'HIGH', FALSE), /* Elemental Mastery */
(13, 11, 120, 16, 'EVENING', 'Spirit communication board, protection circle, ancient texts', 'MODERATE', FALSE), /* Spirit Channeling */
(16, 17, 150, 14, 'MORNING', 'Healing herbs, energy crystals, restoration techniques', 'LOW', FALSE); /* Healing Arts */

/*
18 SERVICE TABLE - Complete corrected dataset
Dependencies: Listing table + ServiceTypes table
DELETE all records and INSERT complete corrected dataset
*/
INSERT IGNORE INTO Service (ListingID, ServiceTypeID, DurationMinutes, TimeOfDay, ClientLocation, ServiceLocation, RequiredEquipment, CertificationsRequired) VALUES
/* Core service listings using exact ServiceType matches */
(5, 2, 15, 'FLEXIBLE', FALSE, TRUE, 'Portal anchors, dimensional compass, safety crystals', 'Portal Master License, Dimensional Travel Permit'), /* Portal Transportation */
(9, 3, 120, 'MORNING', TRUE, FALSE, 'Healing crystals, herbal kit, earth connection staff', 'Forest Healer Certification, Herbal Medicine License'), /* Healing Magic */
(13, 16, 45, 'EVENING', TRUE, TRUE, 'Scrying bowl, tide charts, prophecy crystals', 'Oracle Certification, Water Divination License'), /* Prophecy Reading */
(16, 3, 60, 'FLEXIBLE', FALSE, TRUE, 'Harmonic crystals, sound amplifiers, healing tuning forks', 'Sound Healing Certification, Therapeutic Magic License'), /* Healing Magic */
(20, 6, 90, 'AFTERNOON', TRUE, FALSE, 'Rune carving tools, protective stones, inscription materials', 'Runic Arts Mastery, Protective Magic Certification'), /* Protective Wards */
(23, 12, 75, 'EVENING', FALSE, TRUE, 'Void crystals, cleansing salts, purification chamber', 'Curse Removal License, Void Magic Certification'), /* Curse Removal */

/* Additional services using all 21 ServiceTypes for 20+ requirement */
(5, 1, 30, 'FLEXIBLE', TRUE, TRUE, 'Spell components, casting focus, magical catalyst', 'Certified Mage License, Spell Casting Permit'), /* Spell Casting */
(9, 17, 180, 'AFTERNOON', TRUE, FALSE, 'Enchanted cookware, magical ingredients, recipe scrolls', 'Culinary Magic License, Food Safety Certification'), /* Magical Cooking */
(13, 4, 45, 'MORNING', FALSE, TRUE, 'Enchanted camera, portrait canvas, animation crystals', 'Magical Arts License, Photography Guild Membership'), /* Enchanted Photography */
(16, 11, 60, 'EVENING', TRUE, FALSE, 'Blessing oils, ceremonial candles, sacred texts', 'Clergy Certification, Blessing Authority License'), /* Blessing Ceremonies */
(20, 19, 30, 'AFTERNOON', FALSE, TRUE, 'Crystal charging station, energy amplifiers, purification gems', 'Crystal Mastery License, Energy Work Permit'), /* Crystal Charging */
(23, 13, 90, 'EVENING', FALSE, TRUE, 'Astral anchor, projection chamber, spirit guides', 'Astral Travel License, Spiritual Guide Certification'), /* Astral Projection - FIXED */

/* Extended service offerings to utilize all 21 ServiceTypes */
(5, 21, 20, 'FLEXIBLE', TRUE, TRUE, 'Dimensional storage containers, space expansion crystals', 'Dimensional Magic License, Storage Guild Permit'), /* Dimensional Storage */
(9, 18, 120, 'MORNING', TRUE, FALSE, 'Growth acceleration crystals, plant nutrients, garden tools', 'Botanical Magic License, Agricultural Certification'), /* Plant Growth */
(13, 5, 60, 'FLEXIBLE', TRUE, FALSE, 'Weather control staff, atmospheric crystals, storm charts', 'Weather Magic License, Atmospheric Control Permit'), /* Weather Modification */
(16, 15, 90, 'EVENING', TRUE, TRUE, 'Illusion projectors, entertainment crystals, performance props', 'Entertainment License, Illusion Arts Certification'), /* Illusion Entertainment */
(20, 20, 180, 'EVENING', FALSE, TRUE, 'Soul bonding crystals, ceremony chamber, unity artifacts', 'Soul Magic License, Relationship Counseling Permit'), /* Soul Bonding */
(23, 7, 480, 'EVENING', FALSE, TRUE, 'Dream weaving apparatus, sleep chamber, nightmare protection', 'Dream Magic License, Sleep Therapy Certification'), /* Dream Crafting - FIXED */

(5, 8, 60, 'MORNING', FALSE, TRUE, 'Memory enhancement crystals, cognitive amplifiers, brain tonics', 'Memory Magic License, Cognitive Enhancement Permit'), /* Memory Enhancement */
(9, 14, 90, 'AFTERNOON', TRUE, FALSE, 'Elemental cleaning tools, purification stones, magical solvents', 'Cleaning Magic License, Elemental Control Permit'), /* Elemental Cleaning */
(13, 9, 30, 'FLEXIBLE', TRUE, TRUE, 'Translation crystals, telepathy amplifiers, language matrices', 'Linguistic Magic License, Translation Services Permit'), /* Language Telepathy */
(16, 10, 120, 'MORNING', TRUE, FALSE, 'Summoning circles, creature treats, temporary binding contracts', 'Familiar Summoning License, Creature Handler Permit'); /* Familiar Summoning */


/*19*
LISTINGPHOTOS - Photo Gallery for Listings (29 records)  
Dependencies: Listing table (ListingID foreign key)
Business Logic: Multiple photos per listing for guest browsing

ZEPHYRIAN PHOTO SYSTEM:
📸 PhotoURL: Magical crystal storage network paths for images
🖼️ PhotoDescription: Alt text describing magical features for accessibility
🏠 IsMainPhoto: Featured image shown in search results (replaces IsPrimary)
📅 UploadDate: When photo was captured and stored
🔍 DisplayOrder: Sequence for photo gallery viewing
🏷️ PhotoCategory: ENUM categories for photo organization

MAGICAL PHOTOGRAPHY:
Photos capture magical auras and energy fields invisible to mundane cameras
Enchanted photography reveals true essence of properties and experiences
Motion capture for living elements (phoenixes, flowing water, dancing shadows)

PHOTO CATEGORY SYSTEM:
PhotoCategory ENUM values: 'main', 'bedroom', 'bathroom', 'kitchen', 'outdoor'
'main' - Primary showcase photos for listing search results
'bedroom' - Sleeping quarters and private accommodation spaces
'bathroom' - Magical cleansing facilities and water features
'kitchen' - Food preparation, dining areas, and magical cooking spaces
'outdoor' - Exterior views, landscapes, and outdoor amenities

EXECUTION NOTES:
Column names corrected to match actual table structure
ENUM constraints require exact value matching (case-sensitive)
Each listing should have at least one 'main' photo with IsMainPhoto=TRUE
*/

INSERT IGNORE INTO ListingPhotos (ListingID, PhotoURL, PhotoDescription, DisplayOrder, IsMainPhoto, PhotoCategory, UploadDate) VALUES
/* Ironbeard Mountain Fortress (ListingID 3) */
(3, '/photos/listings/fortress_main_entrance.jpg', 'Massive stone gates with carved dwarven runes glowing softly', 1, TRUE, 'main', '2026-01-10 14:30:00'),
(3, '/photos/listings/fortress_great_hall.jpg', 'Grand hall with roaring fireplace and ancient weapon displays', 2, FALSE, 'bedroom', '2026-01-10 14:35:00'),
(3, '/photos/listings/fortress_forge_workshop.jpg', 'Active forge with magical hammers and glowing anvils', 3, FALSE, 'outdoor', '2026-01-10 14:40:00'),

/* Starlight Navigation Course (ListingID 4) */
(4, '/photos/listings/star_navigation_deck.jpg', 'Observation deck with magical telescope under starry sky', 1, TRUE, 'main', '2026-01-11 20:15:00'),
(4, '/photos/listings/star_charts_display.jpg', 'Ancient constellation maps with glowing magical markers', 2, FALSE, 'outdoor', '2026-01-11 20:20:00'),

/* Void Portal Transportation (ListingID 5) */
(5, '/photos/listings/void_portal_chamber.jpg', 'Swirling portal gateway with safety barriers and controls', 1, TRUE, 'main', '2026-01-12 11:45:00'),
(5, '/photos/listings/portal_control_room.jpg', 'Magical control panel with dimensional coordinates display', 2, FALSE, 'bedroom', '2026-01-12 11:50:00'),

/* Coral Gardens Underwater Dome (ListingID 6) */
(6, '/photos/listings/coral_dome_exterior.jpg', 'Transparent dome surrounded by vibrant coral formations', 1, TRUE, 'main', '2026-01-13 09:30:00'),
(6, '/photos/listings/dome_interior_view.jpg', 'Comfortable living space with panoramic ocean views', 2, FALSE, 'bedroom', '2026-01-13 09:35:00'),
(6, '/photos/listings/coral_garden_wildlife.jpg', 'Colorful fish and sea creatures visible through dome walls', 3, FALSE, 'outdoor', '2026-01-13 09:40:00'),

/* Wind Surfing Sky Currents (ListingID 7) */
(7, '/photos/listings/sky_surfing_action.jpg', 'Guest wind surfing above cloud formations with safety gear', 1, TRUE, 'main', '2026-01-14 08:20:00'),
(7, '/photos/listings/wind_board_equipment.jpg', 'Magical wind surfing equipment and levitation charms', 2, FALSE, 'outdoor', '2026-01-14 08:25:00'),

/* Phoenix Nest Fire Retreat (ListingID 8) */
(8, '/photos/listings/phoenix_nest_overview.jpg', 'High-altitude nest with natural hot springs and fire protection', 1, TRUE, 'main', '2026-01-15 16:45:00'),
(8, '/photos/listings/nest_hot_springs.jpg', 'Steaming natural pools with mountain vista backdrop', 2, FALSE, 'outdoor', '2026-01-15 16:50:00'),
(8, '/photos/listings/phoenix_perch_area.jpg', 'Reinforced perch area with fire-resistant magical barriers', 3, FALSE, 'bedroom', '2026-01-15 16:55:00'),

/* Ancient Forest Healing Ritual (ListingID 9) */
(9, '/photos/listings/healing_circle_setup.jpg', 'Sacred stone circle surrounded by ancient trees', 1, TRUE, 'main', '2026-01-16 12:10:00'),
(9, '/photos/listings/herbal_preparation.jpg', 'Traditional herb preparation with magical enhancement tools', 2, FALSE, 'kitchen', '2026-01-16 12:15:00'),

/* Crystal Spire Observatory (ListingID 10) */
(10, '/photos/listings/crystal_spire_night.jpg', 'Transparent crystal tower glowing under moonlight', 1, TRUE, 'main', '2026-01-17 21:30:00'),
(10, '/photos/listings/observatory_telescope.jpg', 'Magical telescope with crystal focusing lenses', 2, FALSE, 'bedroom', '2026-01-17 21:35:00'),

/* Void Meditation Journey (ListingID 11) */
(11, '/photos/listings/void_meditation_space.jpg', 'Peaceful void chamber with floating meditation crystals', 1, TRUE, 'main', '2026-01-18 18:45:00'),
(11, '/photos/listings/void_anchor_setup.jpg', 'Safety anchoring equipment for consciousness exploration', 2, FALSE, 'bedroom', '2026-01-18 18:50:00'),

/* Dragon Landing Platform Suite (ListingID 12) */
(12, '/photos/listings/dragon_platform_aerial.jpg', 'Massive reinforced platform with luxury suite attached', 1, TRUE, 'main', '2026-01-19 13:20:00'),
(12, '/photos/listings/dragon_suite_interior.jpg', 'Spacious suite with fire-proof furnishings and dragon amenities', 2, FALSE, 'bedroom', '2026-01-19 13:25:00'),
(12, '/photos/listings/dragon_parking_area.jpg', 'Designated dragon resting area with feeding stations', 3, FALSE, 'outdoor', '2026-01-19 13:30:00'),

/* Tide Prophecy Reading (ListingID 13) */
(13, '/photos/listings/prophecy_chamber.jpg', 'Circular chamber with scrying pools and tide charts', 1, TRUE, 'main', '2026-01-20 14:40:00'),
(13, '/photos/listings/tide_scrying_bowl.jpg', 'Ancient scrying bowl filled with enchanted seawater', 2, FALSE, 'bathroom', '2026-01-20 14:45:00'),

/* Lightning Storm Photography (ListingID 14) */
(14, '/photos/listings/storm_photography_platform.jpg', 'Safe viewing platform during magical lightning storms', 1, TRUE, 'main', '2026-01-21 15:20:00'),
(14, '/photos/listings/enchanted_camera_gear.jpg', 'Special lightning-capturing photographic equipment', 2, FALSE, 'outdoor', '2026-01-21 15:25:00'),

/* Enchanted Forest Treehouse (ListingID 15) */
(15, '/photos/listings/fairy_treehouse_exterior.jpg', 'Living tree accommodation with fairy light network', 1, TRUE, 'main', '2026-01-22 10:30:00'),
(15, '/photos/listings/treehouse_canopy_view.jpg', 'Panoramic forest canopy view from bedroom window', 2, FALSE, 'bedroom', '2026-01-22 10:35:00'),
(15, '/photos/listings/treehouse_bathroom.jpg', 'Magical bathroom with living wood fixtures and flowing water', 3, FALSE, 'bathroom', '2026-01-22 10:40:00'),

/* Additional photos*/
(16, '/photos/listings/harmonic_healing_main.jpg', 'Sound therapy chamber with resonating crystals', 1, TRUE, 'main', '2026-01-23 09:15:00'),
(17, '/photos/listings/starlight_pool_main.jpg', 'Magical pool reflecting constellation movements', 1, TRUE, 'main', '2026-01-24 11:20:00'),
(18, '/photos/listings/shadow_theater_main.jpg', 'Magical shadow puppet theater stage setup', 1, TRUE, 'main', '2026-01-25 13:45:00'),
(19, '/photos/listings/submarine_lodge_main.jpg', 'Underwater vessel with marine life viewing deck', 1, TRUE, 'main', '2026-01-26 08:30:00');


/*20 RESERVATIONS - Temporary Booking Holds (25+ records)
Dependencies: User table + Listing table
Actual table structure with specific ENUM values

COLUMN CORRECTIONS:
- NumberOfGuests (not GuestCount)
- TotalPrice (not TotalAmount) 
- Status: Only 'PENDING', 'EXPIRED', 'CONVERTED_TO_BOOKING'
- ExpiredAt: Required field (24-48 hour expiration window)
- ConvertedAt: Timestamp when converted to booking (NULL if not converted)
- No Currency, PaymentStatus, or BookingDate columns
*/

INSERT IGNORE INTO Reservations (UserID, ListingID, CheckInDate, CheckOutDate, NumberOfGuests, TotalPrice, SpecialRequests, Status, CreatedAt, ExpiredAt, ConvertedAt) VALUES
/* Currently pending reservations - awaiting conversion */
(1, 3, '2026-03-01', '2026-03-04', 6, 540.00, 'Dragon parking required, fire-proof bedding', 'PENDING', '2026-01-20 14:30:00', '2026-01-22 14:30:00', NULL),
(2, 6, '2026-03-05', '2026-03-07', 2, 440.00, 'Underwater breathing assistance, vegetarian meals', 'PENDING', '2026-01-21 09:45:00', '2026-01-23 09:45:00', NULL),
(3, 8, '2026-03-10', '2026-03-13', 4, 825.00, 'Heat-resistant clothing rental, phoenix viewing schedule', 'PENDING', '2026-01-22 16:20:00', '2026-01-24 16:20:00', NULL),
(4, 12, '2026-03-15', '2026-03-20', 8, 1750.00, 'Dragon landing platform, group fire ceremonies', 'PENDING', '2026-01-22 11:15:00', '2026-01-24 11:15:00', NULL),
(5, 10, '2026-03-18', '2026-03-20', 3, 570.00, 'Crystal meditation, constellation viewing preferences', 'PENDING', '2026-01-23 13:50:00', '2026-01-25 13:50:00', NULL),

/* Expired reservations - payment windows closed */
(6, 7, '2026-02-20', '2026-02-20', 2, 190.00, 'Advanced wind surfing lesson, safety gear included', 'EXPIRED', '2026-01-15 10:30:00', '2026-01-17 10:30:00', NULL),
(7, 15, '2026-02-25', '2026-02-27', 4, 480.00, 'Fairy interaction protocol, tree climbing equipment', 'EXPIRED', '2026-01-16 15:45:00', '2026-01-18 15:45:00', NULL),
(8, 5, '2026-02-28', '2026-02-28', 1, 200.00, 'Void realm travel insurance, dimensional sickness medication', 'EXPIRED', '2026-01-17 12:20:00', '2026-01-19 12:20:00', NULL),
(9, 17, '2026-03-12', '2026-03-14', 5, 840.00, 'Starlight pool exclusive access, constellation photography', 'EXPIRED', '2026-01-18 14:10:00', '2026-01-20 14:10:00', NULL),
(10, 9, '2026-03-25', '2026-03-25', 1, 150.00, 'Forest healing ritual, herbal allergy considerations', 'EXPIRED', '2026-01-19 09:30:00', '2026-01-21 09:30:00', NULL),

/* Successfully converted reservations - now have corresponding Bookings */
(11, 4, '2026-02-12', '2026-02-12', 3, 360.00, 'Clear sky weather guarantee, telescope tutorial session', 'CONVERTED_TO_BOOKING', '2026-01-10 16:40:00', '2026-01-12 16:40:00', '2026-01-11 10:20:00'),
(12, 19, '2026-02-15', '2026-02-17', 2, 480.00, 'Submarine orientation, marine life photography permit', 'CONVERTED_TO_BOOKING', '2026-01-11 11:25:00', '2026-01-13 11:25:00', '2026-01-11 16:30:00'),
(13, 14, '2026-02-18', '2026-02-18', 3, 330.00, 'Storm photography experience, weather protection gear', 'CONVERTED_TO_BOOKING', '2026-01-12 13:55:00', '2026-01-14 13:55:00', '2026-01-12 20:10:00'),
(14, 21, '2026-02-22', '2026-02-22', 2, 280.00, 'Storm chasing sky tours, magical protection equipment', 'CONVERTED_TO_BOOKING', '2026-01-08 08:15:00', '2026-01-10 08:15:00', '2026-01-08 14:30:00'),
(15, 11, '2026-02-25', '2026-02-25', 4, 300.00, 'Group void meditation journey, consciousness safety protocols', 'CONVERTED_TO_BOOKING', '2026-01-09 17:30:00', '2026-01-11 17:30:00', '2026-01-10 09:15:00'),

/* More pending reservations */
(16, 18, '2026-04-01', '2026-04-01', 5, 325.00, 'Shadow puppet theater workshop, creative materials included', 'PENDING', '2026-01-24 12:45:00', '2026-01-26 12:45:00', NULL),
(17, 13, '2026-04-05', '2026-04-05', 1, 100.00, 'Tide prophecy reading, personal scrying session', 'PENDING', '2026-01-24 14:20:00', '2026-01-26 14:20:00', NULL),
(18, 20, '2026-04-10', '2026-04-10', 1, 175.00, 'Mystical rune inscription, protection spell focus', 'PENDING', '2026-01-24 10:50:00', '2026-01-26 10:50:00', NULL),

/* More expired reservations */
(19, 22, '2026-03-15', '2026-03-17', 3, 630.00, 'Forge master workshop access, metalworking tutorial', 'EXPIRED', '2026-01-20 15:35:00', '2026-01-22 15:35:00', NULL),
(20, 24, '2026-03-20', '2026-03-20', 2, 260.00, 'Fire elemental communication, heat protection spells', 'EXPIRED', '2026-01-21 09:10:00', '2026-01-23 09:10:00', NULL),

/* More successful conversions */
(21, 25, '2026-01-30', '2026-02-04', 6, 2500.00, 'Phoenix rebirth viewing, exclusive chamber access', 'CONVERTED_TO_BOOKING', '2026-01-05 13:25:00', '2026-01-07 13:25:00', '2026-01-06 08:45:00'),
(22, 16, '2026-02-05', '2026-02-05', 1, 125.00, 'Harmonic healing session, sound therapy preferences', 'CONVERTED_TO_BOOKING', '2026-01-06 11:40:00', '2026-01-08 11:40:00', '2026-01-07 15:20:00'),
(23, 23, '2026-02-08', '2026-02-08', 1, 90.00, 'Void energy cleansing, spiritual purification ritual', 'CONVERTED_TO_BOOKING', '2026-01-07 16:15:00', '2026-01-09 16:15:00', '2026-01-08 11:30:00'),
(24, 3, '2026-02-10', '2026-02-12', 4, 720.00, 'Mountain fortress exploration, dwarven culture tour', 'CONVERTED_TO_BOOKING', '2026-01-04 08:30:00', '2026-01-06 08:30:00', '2026-01-04 19:45:00'),
(25, 6, '2026-02-14', '2026-02-16', 3, 660.00, 'Coral gardens diving experience, marine magic demonstration', 'CONVERTED_TO_BOOKING', '2026-01-03 14:55:00', '2026-01-05 14:55:00', '2026-01-04 10:20:00'),

/* Additional recent activity */
(1, 15, '2026-04-01', '2026-04-03', 2, 480.00, 'Treehouse stargazing experience, forest canopy tours', 'PENDING', '2026-01-25 10:20:00', '2026-01-27 10:20:00', NULL),
(2, 8, '2026-04-05', '2026-04-08', 3, 825.00, 'Phoenix nest luxury stay, fire immunity potions', 'PENDING', '2026-01-25 12:45:00', '2026-01-27 12:45:00', NULL);

/*21* Bookings/
/*BOOKINGS - Confirmed Paid Stays (27 records)
Dependencies: User + Listing + optional Reservations

DUAL BOOKING PATH SYSTEM:
Path 1: Direct Booking - Guest books immediately with payment (ReservationID = NULL)
Path 2: Reservation → Booking - Guest makes reservation, then converts with payment (ReservationID NOT NULL)

EXECUTION APPROACH:
Originally executed in two batches during development to resolve foreign key constraint issues
Can now be executed as single batch since ReservationID values are confirmed
Two-batch approach was used for troubleshooting and validation of foreign key relationships

BOOKING STATUSES:
'CONFIRMED' - Booking confirmed, future stay
'IN_PROGRESS' - Guest currently staying  
'COMPLETED' - Stay finished successfully
'CANCELLED' - Booking cancelled after confirmation

BUSINESS LOGIC:
ReservationID NULL = Direct booking (immediate payment & confirmation)
ReservationID NOT NULL = Converted from reservation (references actual ReservationID values: 146-160)
All bookings represent confirmed, paid transactions
*/

INSERT IGNORE INTO airbnb_db.Bookings (ReservationID, UserID, ListingID, CheckInDate, CheckOutDate, NumberOfGuests, TotalPrice, BookingStatus, CreatedAt, SpecialRequests) VALUES
/* BATCH 1: Direct Bookings (ReservationID = NULL) */
(NULL, 5, 12, '2026-03-01', '2026-03-06', 8, 1750.00, 'CONFIRMED', '2026-02-15 14:30:00', 'Dragon landing platform reservation, group fire ceremonies'),
(NULL, 8, 8, '2026-03-10', '2026-03-13', 5, 1237.50, 'CONFIRMED', '2026-02-18 11:45:00', 'Phoenix nest luxury package, fire immunity potions included'),
(NULL, 12, 17, '2026-03-15', '2026-03-17', 6, 1320.00, 'CONFIRMED', '2026-02-20 16:20:00', 'Starlight reflection pool villa, constellation photography session'),
(NULL, 6, 7, '2026-03-05', '2026-03-05', 2, 190.00, 'CONFIRMED', '2026-02-22 09:30:00', 'Advanced wind surfing lessons, safety equipment provided'),
(NULL, 9, 9, '2026-03-08', '2026-03-08', 1, 150.00, 'CONFIRMED', '2026-02-25 13:15:00', 'Ancient forest healing ritual, herbal consultation included'),
(NULL, 13, 18, '2026-03-12', '2026-03-12', 4, 260.00, 'CONFIRMED', '2026-02-28 10:45:00', 'Shadow puppet theater workshop, all materials included'),
(NULL, 15, 13, '2026-03-18', '2026-03-18', 1, 100.00, 'CONFIRMED', '2026-03-01 14:20:00', 'Personal tide prophecy reading, scrying session'),
(NULL, 17, 20, '2026-03-20', '2026-03-20', 1, 175.00, 'CONFIRMED', '2026-03-02 08:50:00', 'Mystical rune inscription service, protection spell focus'),
(NULL, 19, 22, '2026-03-25', '2026-03-27', 3, 630.00, 'CONFIRMED', '2026-03-05 15:35:00', 'Forge master workshop access, advanced metalworking tutorial'),
(NULL, 20, 24, '2026-03-28', '2026-03-28', 2, 260.00, 'CONFIRMED', '2026-03-08 12:10:00', 'Fire elemental communication experience, safety gear included'),
(NULL, 4, 15, '2026-04-01', '2026-04-03', 4, 480.00, 'CONFIRMED', '2026-03-10 11:25:00', 'Enchanted forest treehouse stay, fairy interaction guidelines'),
(NULL, 10, 10, '2026-04-05', '2026-04-07', 3, 570.00, 'CONFIRMED', '2026-03-12 16:40:00', 'Crystal spire observatory, telescope tutorial and star charts'),
(NULL, 14, 5, '2026-04-10', '2026-04-10', 1, 200.00, 'CONFIRMED', '2026-03-15 13:55:00', 'Void portal transportation service, dimensional travel insurance'),
(NULL, 18, 19, '2026-03-30', '2026-04-01', 2, 480.00, 'CANCELLED', '2026-03-08 09:20:00', 'Submarine lodge booking cancelled due to weather concerns'),
(NULL, 22, 16, '2026-04-15', '2026-04-15', 1, 125.00, 'CANCELLED', '2026-03-18 14:30:00', 'Harmonic healing session cancelled - schedule conflict'),
(NULL, 1, 25, '2026-05-01', '2026-05-03', 4, 1500.00, 'CONFIRMED', '2026-03-20 10:15:00', 'Phoenix rebirth viewing weekend, premium chamber access'),
(NULL, 3, 12, '2026-05-10', '2026-05-15', 6, 2625.00, 'CONFIRMED', '2026-03-25 12:45:00', 'Dragon platform suite extended stay, dragon care services'),

/* BATCH 2: Converted Bookings (ReservationID NOT NULL) */
/* These reference actual ReservationID values from CONVERTED_TO_BOOKING reservations */
(146, 11, 4, '2026-02-12', '2026-02-12', 3, 360.00, 'COMPLETED', '2026-01-11 10:20:00', 'Clear sky weather guarantee, telescope tutorial session'),
(147, 12, 19, '2026-02-15', '2026-02-17', 2, 480.00, 'COMPLETED', '2026-01-11 16:30:00', 'Submarine orientation, marine life photography permit'),
(148, 13, 14, '2026-02-18', '2026-02-18', 3, 330.00, 'COMPLETED', '2026-01-12 20:10:00', 'Storm photography experience, weather protection gear'),
(149, 14, 21, '2026-02-22', '2026-02-22', 2, 280.00, 'COMPLETED', '2026-01-08 14:30:00', 'Storm chasing sky tours, magical protection equipment'),
(150, 15, 11, '2026-02-25', '2026-02-25', 4, 300.00, 'COMPLETED', '2026-01-10 09:15:00', 'Group void meditation journey, consciousness safety protocols'),
(156, 21, 25, '2026-01-30', '2026-02-04', 6, 2500.00, 'COMPLETED', '2026-01-06 08:45:00', 'Phoenix rebirth viewing, exclusive chamber access'),
(157, 16, 16, '2026-02-05', '2026-02-05', 1, 125.00, 'COMPLETED', '2026-01-07 15:20:00', 'Harmonic healing session, sound therapy preferences'),
(158, 23, 23, '2026-02-08', '2026-02-08', 1, 90.00, 'COMPLETED', '2026-01-08 11:30:00', 'Void energy cleansing, spiritual purification ritual'),
(159, 24, 3, '2026-02-10', '2026-02-12', 4, 720.00, 'COMPLETED', '2026-01-04 19:45:00', 'Mountain fortress exploration, dwarven culture tour'),
(160, 25, 6, '2026-02-14', '2026-02-16', 3, 660.00, 'COMPLETED', '2026-01-04 10:20:00', 'Coral gardens diving experience, marine magic demonstration');


/*22 BOOKINGPAYMENT - Payment Transaction Records (30+ records)
Dependencies: Bookings table + Staff table

ACTUAL TABLE STRUCTURE:
BookingPaymentID (auto-increment), BookingID, VerifiedByStaffID, PaymentType, Amount, Currency, PaymentStatus, PaymentDate, PaymentReference

PAYMENT FLOW SYSTEM:
PaymentType ENUM explains two-step payment process:
'GUEST_TO_PLATFORM' - Guest pays ZephyrBnB platform for booking
'PLATFORM_TO_HOST' - ZephyrBnB pays host their share (minus fees)

PAYMENT STATUSES:
'PENDING' - Payment initiated but not processed
'VERIFIED' - Payment verified by staff but not complete
'COMPLETED' - Transaction finished successfully
'FAILED' - Payment attempt failed

BUSINESS LOGIC:

Guest pays platform (GUEST_TO_PLATFORM)
Staff verifies payment
Platform pays host (PLATFORM_TO_HOST)
*/

INSERT IGNORE INTO BookingPayment (BookingID, VerifiedByStaffID, PaymentType, Amount, Currency, PaymentStatus, PaymentDate, PaymentReference) VALUES
/* Guest-to-Platform payments (guests paying for bookings) */
(146, 114, 'GUEST_TO_PLATFORM', 1750.00, 'ZC', 'COMPLETED', '2026-02-15 14:30:00', 'PAY_CB_GTP_20260215146'),
(147, 127, 'GUEST_TO_PLATFORM', 1237.50, 'ZC', 'COMPLETED', '2026-02-18 11:45:00', 'PAY_FM_GTP_20260218147'),
(148, 114, 'GUEST_TO_PLATFORM', 1320.00, 'ZC', 'COMPLETED', '2026-02-20 16:20:00', 'PAY_LV_GTP_20260220148'),
(149, 125, 'GUEST_TO_PLATFORM', 190.00, 'ZC', 'COMPLETED', '2026-02-22 09:30:00', 'PAY_CE_GTP_20260222149'),
(150, 124, 'GUEST_TO_PLATFORM', 150.00, 'ZC', 'COMPLETED', '2026-02-25 13:15:00', 'PAY_FC_GTP_20260225150'),

/* Platform-to-Host payments (platform paying hosts - 90% of guest payment) */
(146, 114, 'PLATFORM_TO_HOST', 1575.00, 'ZC', 'COMPLETED', '2026-02-16 10:00:00', 'PAY_PTH_CB_20260216146'),
(147, 127, 'PLATFORM_TO_HOST', 1113.75, 'ZC', 'COMPLETED', '2026-02-19 09:30:00', 'PAY_PTH_FM_20260219147'),
(148, 114, 'PLATFORM_TO_HOST', 1188.00, 'ZC', 'COMPLETED', '2026-02-21 08:45:00', 'PAY_PTH_LV_20260221148'),
(149, 125, 'PLATFORM_TO_HOST', 171.00, 'ZC', 'COMPLETED', '2026-02-23 11:15:00', 'PAY_PTH_CE_20260223149'),
(150, 124, 'PLATFORM_TO_HOST', 135.00, 'ZC', 'COMPLETED', '2026-02-26 10:30:00', 'PAY_PTH_FC_20260226150'),

/* More guest payments */
(151, 133, 'GUEST_TO_PLATFORM', 260.00, 'ZC', 'COMPLETED', '2026-02-28 10:45:00', 'PAY_VE_GTP_20260228151'),
(152, 117, 'GUEST_TO_PLATFORM', 100.00, 'ZC', 'COMPLETED', '2026-03-01 14:20:00', 'PAY_DT_GTP_20260301152'),
(153, 122, 'GUEST_TO_PLATFORM', 175.00, 'ZC', 'COMPLETED', '2026-03-02 08:50:00', 'PAY_CB_GTP_20260302153'),
(154, 127, 'GUEST_TO_PLATFORM', 630.00, 'ZC', 'COMPLETED', '2026-03-05 15:35:00', 'PAY_FM_GTP_20260305154'),
(155, 129, 'GUEST_TO_PLATFORM', 260.00, 'ZC', 'COMPLETED', '2026-03-08 12:10:00', 'PAY_WF_GTP_20260308155'),

/* Corresponding platform-to-host payments */
(151, 133, 'PLATFORM_TO_HOST', 234.00, 'ZC', 'COMPLETED', '2026-03-01 09:00:00', 'PAY_PTH_VE_20260301151'),
(152, 117, 'PLATFORM_TO_HOST', 90.00, 'ZC', 'COMPLETED', '2026-03-02 11:30:00', 'PAY_PTH_DT_20260302152'),
(153, 122, 'PLATFORM_TO_HOST', 157.50, 'ZC', 'COMPLETED', '2026-03-03 10:15:00', 'PAY_PTH_CB_20260303153'),
(154, 127, 'PLATFORM_TO_HOST', 567.00, 'ZC', 'COMPLETED', '2026-03-06 12:45:00', 'PAY_PTH_FM_20260306154'),
(155, 129, 'PLATFORM_TO_HOST', 234.00, 'ZC', 'COMPLETED', '2026-03-09 14:20:00', 'PAY_PTH_WF_20260309155'),

/* Property booking payments */
(156, 124, 'GUEST_TO_PLATFORM', 480.00, 'ZC', 'COMPLETED', '2026-03-10 11:25:00', 'PAY_FC_GTP_20260310156'),
(157, 122, 'GUEST_TO_PLATFORM', 570.00, 'ZC', 'COMPLETED', '2026-03-12 16:40:00', 'PAY_CB_GTP_20260312157'),
(158, 133, 'GUEST_TO_PLATFORM', 200.00, 'ZC', 'COMPLETED', '2026-03-15 13:55:00', 'PAY_VE_GTP_20260315158'),

(156, 124, 'PLATFORM_TO_HOST', 432.00, 'ZC', 'COMPLETED', '2026-03-11 09:30:00', 'PAY_PTH_FC_20260311156'),
(157, 122, 'PLATFORM_TO_HOST', 513.00, 'ZC', 'COMPLETED', '2026-03-13 10:15:00', 'PAY_PTH_CB_20260313157'),
(158, 133, 'PLATFORM_TO_HOST', 180.00, 'ZC', 'COMPLETED', '2026-03-16 11:00:00', 'PAY_PTH_VE_20260316158'),

/* Premium booking payments */
(161, 127, 'GUEST_TO_PLATFORM', 1500.00, 'ZC', 'COMPLETED', '2026-03-20 10:15:00', 'PAY_FM_GTP_20260320161'),
(162, 114, 'GUEST_TO_PLATFORM', 2625.00, 'ZC', 'COMPLETED', '2026-03-25 12:45:00', 'PAY_CB_GTP_20260325162'),

(161, 127, 'PLATFORM_TO_HOST', 1350.00, 'ZC', 'COMPLETED', '2026-03-21 08:30:00', 'PAY_PTH_FM_20260321161'),
(162, 114, 'PLATFORM_TO_HOST', 2362.50, 'ZC', 'COMPLETED', '2026-03-26 09:15:00', 'PAY_PTH_CB_20260326162'),

/* Converted booking payments */
(163, 125, 'GUEST_TO_PLATFORM', 360.00, 'ZC', 'COMPLETED', '2026-01-11 10:20:00', 'PAY_CE_GTP_20260111163'),
(164, 117, 'GUEST_TO_PLATFORM', 480.00, 'ZC', 'COMPLETED', '2026-01-11 16:30:00', 'PAY_DT_GTP_20260111164'),
(165, 129, 'GUEST_TO_PLATFORM', 330.00, 'ZC', 'COMPLETED', '2026-01-12 20:10:00', 'PAY_LV_GTP_20260112165'),

(163, 125, 'PLATFORM_TO_HOST', 324.00, 'ZC', 'COMPLETED', '2026-01-12 09:00:00', 'PAY_PTH_CE_20260112163'),
(164, 117, 'PLATFORM_TO_HOST', 432.00, 'ZC', 'COMPLETED', '2026-01-12 14:45:00', 'PAY_PTH_DT_20260112164'),
(165, 129, 'PLATFORM_TO_HOST', 297.00, 'ZC', 'COMPLETED', '2026-01-13 16:30:00', 'PAY_PTH_LV_20260113165'),

/* Additional bookings */
(166, 122, 'GUEST_TO_PLATFORM', 280.00, 'ZC', 'COMPLETED', '2026-01-08 14:30:00', 'PAY_CB_GTP_20260108166'),
(167, 133, 'GUEST_TO_PLATFORM', 300.00, 'ZC', 'COMPLETED', '2026-01-10 09:15:00', 'PAY_VE_GTP_20260110167'),
(168, 127, 'GUEST_TO_PLATFORM', 2500.00, 'ZC', 'COMPLETED', '2026-01-06 08:45:00', 'PAY_FM_GTP_20260106168'),

(166, 122, 'PLATFORM_TO_HOST', 252.00, 'ZC', 'COMPLETED', '2026-01-09 10:00:00', 'PAY_PTH_CB_20260109166'),
(167, 133, 'PLATFORM_TO_HOST', 270.00, 'ZC', 'COMPLETED', '2026-01-11 08:30:00', 'PAY_PTH_VE_20260111167'),
(168, 127, 'PLATFORM_TO_HOST', 2250.00, 'ZC', 'COMPLETED', '2026-01-07 14:15:00', 'PAY_PTH_FM_20260107168'),

/* Some pending payments */
(170, 122, 'GUEST_TO_PLATFORM', 720.00, 'ZC', 'PENDING', '2026-03-28 14:30:00', 'PAY_CB_PENDING_20260328170'),
(171, 133, 'GUEST_TO_PLATFORM', 660.00, 'ZC', 'VERIFIED', '2026-03-29 11:15:00', 'PAY_VE_VERIFIED_20260329171');


/*23 CANCELLATIONS - Booking Cancellation Records (25+ records)
Dependencies: Bookings table
Business Logic: Single cancellation record per booking (UNIQUE constraint on BookingID)

ACTUAL TABLE STRUCTURE:
CancellationID (auto-increment), BookingID (unique), CancelledBy, Reason, RefundAmount, RefundStatus, CancelledAt

SIMPLIFIED CANCELLATION SYSTEM:
CancelledBy ENUM: 'GUEST', 'HOST', 'ADMIN'
RefundStatus ENUM: 'PENDING', 'PROCESSED', 'REJECTED'
One cancellation per booking (unique BookingID constraint)
*/
  
INSERT IGNORE INTO Cancellations (BookingID, CancelledBy, Reason, RefundAmount, RefundStatus, CancelledAt) VALUES
/* Guest cancellations */
(159, 'GUEST', 'Family emergency in Crystal Kingdom, unable to travel to submarine lodge', 480.00, 'PROCESSED', '2026-03-01 14:30:00'),
(160, 'GUEST', 'Weather concerns for submarine lodge experience, safety first', 240.00, 'PROCESSED', '2026-03-08 09:20:00'),
(162, 'GUEST', 'Work conflict with phoenix rebirth viewing schedule, cannot reschedule', 0.00, 'REJECTED', '2026-03-18 14:30:00'),
(156, 'GUEST', 'Allergic reaction to forest fairy dust, medical advice against visit', 360.00, 'PROCESSED', '2026-03-08 10:15:00'),
(158, 'GUEST', 'Void realm travel sickness, healer recommendation to cancel', 100.00, 'PROCESSED', '2026-03-12 16:45:00'),
(149, 'GUEST', 'Last minute schedule change, within strict cancellation window', 0.00, 'REJECTED', '2026-02-21 20:00:00'),
(152, 'GUEST', 'Change of mind about tide prophecy reading, late cancellation request', 50.00, 'PROCESSED', '2026-02-28 18:30:00'),
(157, 'GUEST', 'Crystal spire accessibility concerns not disclosed in listing', 285.00, 'PENDING', '2026-03-10 13:20:00'),
(161, 'GUEST', 'Phoenix rebirth viewing cancelled due to scheduling conflict', 750.00, 'PENDING', '2026-03-18 11:45:00'),
(163, 'GUEST', 'Starlight navigation course cancelled due to realm travel permit expiry', 180.00, 'PROCESSED', '2026-01-10 16:20:00'),
(164, 'GUEST', 'Submarine lodge visit cancelled due to underwater breathing certification lapse', 240.00, 'PROCESSED', '2026-01-11 14:30:00'),
(172, 'GUEST', 'Dragon platform suite cancelled due to discovered dragon allergy', 1312.50, 'PENDING', '2026-03-24 11:15:00'),

/* Host cancellations */
(146, 'HOST', 'Dragon platform requires urgent magical repairs for safety compliance', 1750.00, 'PROCESSED', '2026-02-10 08:15:00'),
(151, 'HOST', 'Shadow puppet theater equipment malfunction, replacement parts delayed', 260.00, 'PROCESSED', '2026-02-25 11:45:00'),
(155, 'HOST', 'Fire elemental communication expert unavailable due to illness', 260.00, 'PROCESSED', '2026-03-05 16:20:00'),
(150, 'HOST', 'Ancient forest healing ritual site contaminated by dark magic', 150.00, 'PROCESSED', '2026-02-23 14:30:00'),
(153, 'HOST', 'Mystical rune inscription tools stolen, unable to provide service', 175.00, 'PROCESSED', '2026-03-01 09:45:00'),
(165, 'HOST', 'Storm photography experience cancelled due to equipment double-booking', 330.00, 'PROCESSED', '2026-01-12 12:45:00'),
(147, 'HOST', 'Phoenix nest fire retreat host injured, unable to accommodate guests safely', 1237.50, 'PROCESSED', '2026-02-16 08:30:00'),

/* Admin cancellations - system and safety issues */
(170, 'ADMIN', 'Payment verification failed after 48 hours, automatic cancellation', 0.00, 'REJECTED', '2026-03-30 15:45:00'),
(171, 'ADMIN', 'Fraudulent booking activity detected by security systems', 0.00, 'REJECTED', '2026-03-29 12:30:00'),
(148, 'ADMIN', 'Void realm dimensional instability warning issued by Magical Safety Council', 1320.00, 'PROCESSED', '2026-02-18 07:00:00'),
(154, 'ADMIN', 'Fire realm travel restrictions due to phoenix mating season safety protocols', 630.00, 'PROCESSED', '2026-03-02 13:45:00'),
(167, 'ADMIN', 'Magical storm system affecting sky kingdom transportation networks', 300.00, 'PROCESSED', '2026-01-08 06:30:00'),
(166, 'ADMIN', 'Platform maintenance affecting storm chasing equipment calibration', 280.00, 'PROCESSED', '2026-01-07 22:00:00'),
(168, 'ADMIN', 'Phoenix rebirth viewing cancelled due to realm emergency protocols', 2500.00, 'PROCESSED', '2026-01-05 19:30:00'),
(169, 'ADMIN', 'Harmonic healing session auto-cancelled due to booking system glitch', 125.00, 'PROCESSED', '2026-01-06 23:45:00');

/*
CANCELLATION SUMMARY:
Guest Cancelled: 12 cases (health, travel issues, scheduling conflicts)
Host Cancelled: 7 cases (equipment failures, emergencies, safety issues)  
Admin Cancelled: 6 cases (system issues, safety protocols, fraud prevention)

REFUND STATUS DISTRIBUTION:
PROCESSED: 20 refunds completed
PENDING: 3 refunds being processed  
REJECTED: 2 refund requests denied
Each BookingID can only appear once due to UNIQUE constraint
*/


/* 24 REVIEWS - Guest Reviews 
Dependencies: Bookings table
Business Logic: Only guest reviews of hosts/listings (GUEST_TO_HOST direction)
BUSINESS VALUE:
Guest reviews drive booking decisions and host accountability
Simpler system reduces complexity while maintaining core functionality
Focus on customer experience rather than bidirectional feedback
*/

INSERT IGNORE INTO Reviews (BookingID, HostRating, OverallRating, Comment, DateCreated) VALUES
/* Property Reviews */
(163, 5.00, 5, 'Absolutely magical starlight navigation experience! The host was incredibly knowledgeable about constellation magic and the telescope was perfectly calibrated. Clear skies made for perfect viewing conditions. Will definitely book again!', '2026-02-13 10:30:00'),

(164, 4.50, 5, 'The submarine lodge was a unique and unforgettable experience! Watching marine life through the dome walls was breathtaking. Host provided excellent orientation and safety gear. Only minor issue was the water temperature being a bit cold initially.', '2026-02-18 14:20:00'),

(168, 5.00, 5, 'Phoenix rebirth viewing was absolutely extraordinary! The exclusive chamber access was worth every credit. Host was respectful of the sacred nature of the event and provided fascinating insights into phoenix mythology. Unforgettable!', '2026-02-05 16:30:00'),

(162, 4.60, 5, 'Dragon platform suite exceeded all expectations! The reinforced landing area was perfect for my dragon companion and the fire-proof amenities were top quality. Host provided excellent dragon care services. Will return!', '2026-03-26 15:45:00'),

(156, 3.50, 3, 'Treehouse stay was charming but had some practical issues. Fairy lights were beautiful but kept flickering at night. Tree climbing equipment needed better maintenance. Host was responsive to concerns. Good for nature lovers.', '2026-03-11 10:20:00'),

(157, 4.00, 4, 'Crystal spire observatory was beautiful and the magical telescope was impressive. Host was knowledgeable about crystal magic. The spiral staircase was challenging but worth the climb. Great for astronomy enthusiasts!', '2026-03-13 12:45:00'),

/* Experience Reviews */
(165, 4.75, 5, 'Storm photography was incredible! The host kept us safe while capturing amazing shots of magical lightning. Equipment was professional grade and the tutorial was comprehensive. Truly a once-in-a-lifetime experience!', '2026-02-19 09:45:00'),

(166, 4.50, 4, 'Storm chasing sky tours were thrilling! Host had excellent knowledge of weather patterns and kept us safe throughout. The magical protection equipment worked perfectly. Views were spectacular. Minor deduction for rushed schedule.', '2026-01-09 14:45:00'),

(149, 2.50, 3, 'Sky surfing lessons were decent but had some safety concerns. Equipment seemed a bit worn and the safety harness had frayed edges. Host was friendly but could use more thorough safety protocols. Beautiful views though.', '2026-02-23 11:30:00'),

(151, 3.00, 3, 'Shadow puppet workshop was creative but the equipment malfunction really impacted the experience. Host tried their best to improvise but half the session was lost to technical issues. Refund was appreciated though.', '2026-03-01 16:45:00'),

/* Service Reviews */
(152, 4.00, 4, 'Tide prophecy reading was surprisingly accurate and insightful! The scrying bowl setup was authentic and the host had genuine divination skills. Predictions about my upcoming travels were spot on. Great value for the price.', '2026-03-02 08:45:00'),

(153, 4.75, 5, 'Mystical rune inscription exceeded expectations! The protective ward crafted for my home has been working perfectly. Host took time to explain each symbol and its meaning. Craftsmanship was exquisite. Highly recommend!', '2026-03-03 15:20:00'),

(158, 3.75, 4, 'Void portal transportation was efficient and safe. Arrived at destination exactly on time with no dimensional sickness. Host provided good safety briefing. Price is a bit high for the distance traveled, but convenience factor makes it worthwhile.', '2026-03-16 12:30:00'),

(169, 4.25, 4, 'Harmonic healing session was very relaxing and restorative. The host had excellent knowledge of sound therapy techniques. The crystals were beautifully tuned. Would have been 5 stars but the session room was a bit too warm for my liking.', '2026-02-06 11:15:00'),

(150, 3.25, 3, 'Forest healing ritual was peaceful but not as transformative as expected. Host was knowledgeable about herbal medicine but the sacred space felt rushed. Results were subtle. Good for relaxation but may not suit everyone.', '2026-02-26 13:45:00'),

(167, 4.25, 4, 'Group void meditation was a profound spiritual experience. Host guided us safely through consciousness exploration. The void anchor equipment was top quality. Great for anyone seeking deeper meditation practice.', '2026-01-11 16:20:00'),

(154, 3.75, 4, 'Forge workshop experience was educational and the access to legendary dwarven tools was amazing. Host shared fascinating metalworking techniques. Workspace was well-equipped. Could use better ventilation system though.', '2026-03-07 13:20:00'),

(161, 4.80, 5, 'Premium phoenix viewing experience was worth every credit! The exclusive chamber provided perfect visibility of the rebirth cycle. Host was extremely professional and the fire protection spells worked flawlessly. Simply magical!', '2026-03-21 11:30:00'),

(146, 4.25, 4, 'Dragon landing platform was impressive and well-maintained. Host provided excellent pre-arrival briefings for dragon care. Fire-resistant amenities were top-notch. Only issue was some noise from neighboring platforms during peak hours.', '2026-02-16 14:20:00'),

(147, 4.50, 4, 'Phoenix nest retreat was a unique luxury experience. The natural hot springs were perfectly temperature-controlled and the mountain views were spectacular. Host was knowledgeable about phoenix behavior. Highly recommend for fire realm enthusiasts.', '2026-02-19 11:45:00'),

(148, 3.50, 3, 'Coral dome accommodation was beautiful but had some practical challenges. The underwater views were stunning and marine life was abundant. Host was helpful but the air circulation system was inconsistent. Good for short stays.', '2026-02-21 13:30:00'),

(170, 4.00, 4, 'Mountain fortress stay was authentic and atmospheric. The forging workshop access was a unique perk and host shared fascinating dwarven history. Stone walls kept perfect temperature. Great for cultural enthusiasts.', '2026-01-05 10:15:00'),

(171, 4.75, 5, 'Coral gardens diving was absolutely magical! The underwater dome provided perfect visibility and host ensured all safety protocols. Marine magic demonstrations were educational and beautiful. Unforgettable aquatic experience!', '2026-01-05 16:45:00'),

(172, 4.40, 4, 'Dragon platform suite was luxurious and well-appointed for large groups. Host provided excellent dragon handling services and fire safety was paramount. Minor deduction for limited dining options nearby.', '2026-03-26 12:30:00'),

(155, 2.75, 3, 'Fire elemental communication was interesting but safety protocols felt inadequate. Host was knowledgeable but the protective equipment seemed outdated. Communication with elementals was successful but nerve-wracking experience.', '2026-03-09 17:30:00');


/* 25 MESSAGES - Booking Communication System (24 records)
Dependencies: Bookings + User + User + Messages (self-referencing)
Business Logic: Ternary relationship (Booking + Sender + Recipient) with recursive threading
TERNARY RELATIONSHIP DEMONSTRATION:
BookingID: Context of conversation (specific booking)
SenderUserID: Who sent the message (Guest or Host UserID)
RecipientUserID: Who receives the message (Host or Guest UserID)
ReplyToMessageID: Parent message for threading (recursive self-reference)
EXECUTION APPROACH - TWO BATCHES:
Batch 1: Conversation starters (ReplyToMessageID = NULL) → MessageIDs 207-218
Batch 2: Host replies using actual MessageIDs from Batch 1
/* BATCH 1: Conversation Starter Messages (ReplyToMessageID = NULL) */
/* MessageIDs created: 207-218 */
INSERT IGNORE INTO Messages (BookingID, SenderUserID, RecipientUserID, ReplyToMessageID, MessageText, SentAt) VALUES
(146, 5, 12, NULL, 'Hi! Super excited about the Dragon Platform Suite booking. Quick question - what time can we arrive for dragon landing? My dragon Flamewyrm is quite large and needs extra space.', '2026-02-14 09:30:00'),
(149, 6, 7, NULL, 'Hello! First time wind surfing in the sky currents. I have some water surfing experience but never magical wind surfing. What should I expect?', '2026-02-21 10:15:00'),
(148, 12, 17, NULL, 'Really looking forward to the starlight pool villa! I am a bit of a constellation enthusiast - will the pool really show the star movements clearly?', '2026-02-19 16:30:00'),
(152, 15, 13, NULL, 'Hi! I have never had a prophecy reading before. What should I prepare or think about before the session?', '2026-02-28 14:20:00'),
(153, 17, 20, NULL, 'Excited about getting protective runes inscribed! I need protection for my home after some strange magical disturbances lately. What type of runes would you recommend?', '2026-03-02 09:15:00'),
(154, 19, 3, NULL, 'Hello! Really excited about the forge workshop. I have done some basic metalworking but never with legendary dwarven tools. Any preparation needed?', '2026-03-05 10:30:00'),
(155, 20, 8, NULL, 'Hi! Nervous but excited about communicating with fire elementals. Is it safe for beginners? I have basic fire magic experience.', '2026-03-08 11:45:00'),
(151, 13, 18, NULL, 'Looking forward to the shadow puppet workshop! I have always been fascinated by shadow magic. Do we create our own stories or work with traditional tales?', '2026-02-26 09:30:00'),
(147, 8, 8, NULL, 'Hello! Excited about the Phoenix Nest retreat. As someone who works with fire magic daily, I am curious about the natural hot springs. Do they enhance fire magic abilities?', '2026-02-17 09:45:00'),
(150, 9, 9, NULL, 'Hi! Really looking forward to the forest healing ritual. I have been feeling spiritually drained lately and heard your rituals are incredibly restorative. What should I expect?', '2026-02-24 14:30:00'),
(147, 8, 8, NULL, 'Hello! Excited about the Phoenix Nest retreat. As someone who works with fire magic daily, I am curious about the natural hot springs. Do they enhance fire magic abilities?', '2026-02-17 09:45:00'),
(150, 9, 9, NULL, 'Hi! Really looking forward to the forest healing ritual. I have been feeling spiritually drained lately and heard your rituals are incredibly restorative. What should I expect?', '2026-02-24 14:30:00');

/* BATCH 2: Host Replies using actual MessageIDs 207-218 */
INSERT IGNORE INTO Messages (BookingID, SenderUserID, RecipientUserID, ReplyToMessageID, MessageText, SentAt) VALUES
(146, 12, 5, 207, 'Hello Draven! Welcome to our platform! For large dragons, I recommend arrival after 2 PM when thermal updrafts are strongest. Please ensure fire-suppression gems are charged.', '2026-02-14 11:45:00'),
(149, 7, 6, 208, 'Hi Marina! Wind surfing is amazing - much more graceful than water surfing. The magical currents respond to your emotions, so stay calm and trust the wind.', '2026-02-21 12:30:00'),
(148, 17, 12, 209, 'Hello Phoenix! Yes, the magical pool perfectly reflects the night sky with enhanced clarity. Perfect timing for the meteor shower next week.', '2026-02-19 18:45:00'),
(152, 13, 15, 210, 'Hello Moss! Come with an open mind and specific questions about your future. The tides reveal what you need to know. Bring something meaningful to you.', '2026-02-28 16:45:00'),
(153, 20, 17, 211, 'Hello Crystal! For home protection I recommend Ward Runes and Stability Runes. They create a protective barrier and stabilize magical energies.', '2026-03-02 11:30:00'),
(154, 3, 19, 212, 'Welcome Coral! The legendary tools are incredible - some over 500 years old. We will start with the Stellar Hammer!', '2026-03-05 12:15:00'),
(155, 8, 20, 213, 'Hello Rune! Basic fire magic is perfect preparation. Fire elementals respond well to respect and confidence. Very safe with proper precautions!', '2026-03-08 13:20:00'),
(151, 18, 13, 214, 'Hi River! We start with traditional shadow tales to learn techniques, then you create your own story. The shadows come alive with your imagination!', '2026-02-26 11:45:00'),
(147, 8, 8, 215, 'Hello Ember! The natural springs are infused with phoenix energy which amplifies fire magic significantly. Perfect for fire practitioners!', '2026-02-17 11:20:00'),
(150, 9, 9, 216, 'Hello Sage! The forest spirits are active this season. We will work with earth magic and herbal restoration. Bring comfortable clothes and an open heart!', '2026-02-24 16:15:00'),
(147, 8, 8, 217, 'The phoenix energy here is particularly strong today. You will feel the magical enhancement as soon as you enter the springs!', '2026-02-17 13:45:00'),
(150, 9, 9, 218, 'The ancient oak trees are especially responsive to healing magic right now. This will be a powerful session for spiritual restoration!', '2026-02-24 18:30:00');

/*
COMPLETE MESSAGES STRUCTURE:
MessageIDs 207-218: Batch 1 starter messages (guests asking questions)
MessageIDs 219-230: Batch 2 replies (hosts responding, referencing 207-218)

THREADING MAP:
207 → 219 (Dragon Platform conversation)
208 → 220 (Wind Surfing conversation)  
209 → 221 (Starlight Villa conversation)
210 → 222 (Tide Prophecy conversation)
211 → 223 (Rune Inscription conversation)
212 → 224 (Forge Workshop conversation)
213 → 225 (Fire Elemental conversation)
214 → 226 (Shadow Puppet conversation)
215 → 227 (Phoenix Nest conversation)
216 → 228 (Forest Healing conversation)
217 → 229 (Phoenix Nest follow-up)
218 → 230 (Forest Healing follow-up)


/* 26 PAYMENT_ACCOUNT - Host Banking Information (30+ records)
Dependencies: Host + Listing tables
Business Logic: Ternary relationship (Host + Listing + Bank Account)

TERNARY RELATIONSHIP DEMONSTRATION:
HostID: Which host owns the account
ListingID: Which specific listing this account services
Bank Details: Account information for receiving payments

ZEPHYRIAN HOST BANKING SYSTEM:
Uses the same fantasy banking institutions as guest payment methods:
✨ Crystal Bank (CB), 🌙 Lunar Vault (LV), ⚒️ Dwarf Treasury (DT)
⭐ Celestial Bank (CE), 🌑 Void Exchange (VE), 🔥 Fire Mint (FM)
🌿 Forest Credit (FC), 🌊 Water Flow (WF)

BUSINESS SCENARIOS:
- Some hosts use one account for all listings (convenience)
- Some hosts use separate accounts per listing (business organization)
- Business accounts for commercial listings, Personal for hobby listings
- Different verification statuses based on host reliability
*/
PAYMENT_ACCOUNT - Complete Dataset (30+ records)
Dependencies: Host + Listing tables
Business Logic: Ternary relationship (Host + Listing + Bank Account)

Valid HostIDs: 64, 68, 69, 70, 73, 74, 78, 79, 81
Valid ListingIDs: 3-25
*/


/* 27 SEASONAL_AVAILABILITY - Amenity Seasonal Patterns (40+ records)
Dependencies: Property + Amenities tables
Business Logic: Different amenities available in different seasons across properties

ZEPHYRIAN SEASONAL MAGIC:
🌞 Summer (June-September): Fire magic peaks, thermal currents strongest
❄️ Winter (December-March): Crystal energy concentrated, healing magic enhanced  
🔄 Year-Round: Essential amenities always available

SEASONAL PATTERNS:
Summer Enhancement: Dragon platforms, Phoenix perches, Stargazing, Flying gardens
Winter Enhancement: Healing pools, Crystal charging, Fire suppression, Temperature control
Year-Round: Basic amenities, Kitchen essentials, Safety systems

PropertyIDs: 7-27 (21 Zephyrian properties)
AmenityIDs: 1-25 (Complete amenity system)
*/

INSERT IGNORE INTO Seasonal_Availability (PropertyID, AmenityID, Season, AvailableFromDate, AvailableToDate, IsCurrentlyAvailable) VALUES

/* SUMMER-ENHANCED AMENITIES (Fire magic peaks, optimal thermal conditions) */

/* Dragon Landing Platform Suite (PropertyID 11) - Summer optimal */
(11, 15, 'Summer', '2026-06-21', '2026-09-21', 1), /* Dragon Landing Pad - thermal updrafts strongest */
(11, 16, 'Summer', '2026-06-21', '2026-09-21', 1), /* Phoenix Perch - fire magic peaks */
(11, 21, 'Summer', '2026-06-21', '2026-09-21', 1), /* Fire Suppression - essential for dragon safety */

/* Phoenix Nest Fire Retreat (PropertyID 9) - Summer peak season */
(9, 16, 'Summer', '2026-06-21', '2026-09-21', 1), /* Phoenix Perch */
(9, 21, 'Summer', '2026-06-21', '2026-09-21', 1), /* Fire Suppression */
(9, 2, 'Summer', '2026-06-21', '2026-09-21', 1), /* Healing Pool - fire-heated */

/* Phoenix Rebirth Viewing Chamber (PropertyID 16) - Summer ceremonies */
(16, 16, 'Summer', '2026-06-21', '2026-09-21', 1), /* Phoenix Perch */
(16, 13, 'Summer', '2026-06-21', '2026-09-21', 1), /* Stargazing Platform - summer viewing */

/* Crystal Spire Observatory (PropertyID 10) - Summer stargazing optimal */
(10, 13, 'Summer', '2026-06-21', '2026-09-21', 1), /* Stargazing Platform */
(10, 17, 'Summer', '2026-06-21', '2026-09-21', 1), /* Moonlight Amplifier */

/* Starlight Reflection Pool Villa (PropertyID 13) - Summer constellation season */
(13, 13, 'Summer', '2026-06-21', '2026-09-21', 1), /* Stargazing Platform */
(13, 17, 'Summer', '2026-06-21', '2026-09-21', 1), /* Moonlight Amplifier */

/* Enchanted Forest Treehouse (PropertyID 12) - Summer garden peak */
(12, 11, 'Summer', '2026-06-21', '2026-09-21', 1), /* Flying Garden - magical plants thrive */

/* WINTER-ENHANCED AMENITIES (Crystal energy concentration, healing magic peaks) */

/* Crystal Spire Observatory (PropertyID 10) - Winter crystal charging */
(10, 1, 'Winter', '2026-12-21', '2027-03-21', 0), /* Crystal WiFi - enhanced power */
(10, 22, 'Winter', '2026-12-21', '2027-03-21', 0), /* Healing Crystals - peak potency */
(10, 3, 'Winter', '2026-12-21', '2027-03-21', 0), /* Temperature Control - essential */

/* Coral Gardens Underwater Dome (PropertyID 8) - Winter thermal regulation */
(8, 2, 'Winter', '2026-12-21', '2027-03-21', 0), /* Healing Pool - thermal warmth */
(8, 3, 'Winter', '2026-12-21', '2027-03-21', 0), /* Temperature Control */
(8, 22, 'Winter', '2026-12-21', '2027-03-21', 0), /* Healing Crystals */

/* Deep Current Submarine Lodge (PropertyID 14) - Winter deep water magic */
(14, 2, 'Winter', '2026-12-21', '2027-03-21', 0), /* Healing Pool */
(14, 3, 'Winter', '2026-12-21', '2027-03-21', 0), /* Temperature Control */

/* Ironbeard Mountain Fortress (PropertyID 7) - Winter heating essential */
(7, 3, 'Winter', '2026-12-21', '2027-03-21', 0), /* Temperature Control */
(7, 6, 'Winter', '2026-12-21', '2027-03-21', 0), /* Self-Cooking Hearth - warmth */
(7, 21, 'Winter', '2026-12-21', '2027-03-21', 0), /* Fire Suppression - winter safety */

/* Forge Master Workshop (PropertyID 15) - Winter metalworking season */
(15, 10, 'Winter', '2026-12-21', '2027-03-21', 0), /* Elemental Stove - forge heating */
(15, 21, 'Winter', '2026-12-21', '2027-03-21', 0), /* Fire Suppression */

/* YEAR-ROUND AMENITIES (Always essential) */

/* Basic amenities - all properties need these constantly */
(7, 1, 'Year_Round', NULL, NULL, 1), /* Crystal WiFi */
(7, 18, 'Year_Round', NULL, NULL, 1), /* Protective Wards */
(7, 19, 'Year_Round', NULL, NULL, 1), /* Emergency Teleport */

(8, 1, 'Year_Round', NULL, NULL, 1), /* Crystal WiFi */
(8, 18, 'Year_Round', NULL, NULL, 1), /* Protective Wards */
(8, 20, 'Year_Round', NULL, NULL, 1), /* Poison Detection */

(9, 1, 'Year_Round', NULL, NULL, 1), /* Crystal WiFi */
(9, 18, 'Year_Round', NULL, NULL, 1), /* Protective Wards */
(9, 19, 'Year_Round', NULL, NULL, 1), /* Emergency Teleport */

(10, 18, 'Year_Round', NULL, NULL, 1), /* Protective Wards */
(10, 19, 'Year_Round', NULL, NULL, 1), /* Emergency Teleport */

(11, 1, 'Year_Round', NULL, NULL, 1), /* Crystal WiFi */
(11, 18, 'Year_Round', NULL, NULL, 1), /* Protective Wards */
(11, 19, 'Year_Round', NULL, NULL, 1), /* Emergency Teleport */

(12, 1, 'Year_Round', NULL, NULL, 1), /* Crystal WiFi */
(12, 18, 'Year_Round', NULL, NULL, 1), /* Protective Wards */
(12, 23, 'Year_Round', NULL, NULL, 1), /* Guardian Spirit */

(13, 1, 'Year_Round', NULL, NULL, 1), /* Crystal WiFi */
(13, 18, 'Year_Round', NULL, NULL, 1), /* Protective Wards */
(13, 19, 'Year_Round', NULL, NULL, 1), /* Emergency Teleport */

(14, 1, 'Year_Round', NULL, NULL, 1), /* Crystal WiFi */
(14, 18, 'Year_Round', NULL, NULL, 1), /* Protective Wards */
(14, 19, 'Year_Round', NULL, NULL, 1), /* Emergency Teleport */

(15, 1, 'Year_Round', NULL, NULL, 1), /* Crystal WiFi */
(15, 18, 'Year_Round', NULL, NULL, 1), /* Protective Wards */
(15, 19, 'Year_Round', NULL, NULL, 1), /* Emergency Teleport */

(16, 1, 'Year_Round', NULL, NULL, 1), /* Crystal WiFi */
(16, 18, 'Year_Round', NULL, NULL, 1), /* Protective Wards */
(16, 19, 'Year_Round', NULL, NULL, 1), /* Emergency Teleport */

/* Kitchen amenities - year-round necessities */
(7, 6, 'Year_Round', NULL, NULL, 1), /* Self-Cooking Hearth */
(7, 9, 'Year_Round', NULL, NULL, 1), /* Infinite Water Source */

(8, 6, 'Year_Round', NULL, NULL, 1), /* Self-Cooking Hearth */
(8, 9, 'Year_Round', NULL, NULL, 1), /* Infinite Water Source */

(9, 6, 'Year_Round', NULL, NULL, 1), /* Self-Cooking Hearth */
(9, 8, 'Year_Round', NULL, NULL, 1), /* Flavor Enhancement */

(11, 6, 'Year_Round', NULL, NULL, 1), /* Self-Cooking Hearth */
(11, 7, 'Year_Round', NULL, NULL, 1), /* Preservation Box */

(12, 6, 'Year_Round', NULL, NULL, 1), /* Self-Cooking Hearth */
(12, 8, 'Year_Round', NULL, NULL, 1), /* Flavor Enhancement */

(13, 6, 'Year_Round', NULL, NULL, 1), /* Self-Cooking Hearth */
(13, 9, 'Year_Round', NULL, NULL, 1), /* Infinite Water Source */

(15, 6, 'Year_Round', NULL, NULL, 1), /* Self-Cooking Hearth */
(15, 7, 'Year_Round', NULL, NULL, 1), /* Preservation Box */

(16, 6, 'Year_Round', NULL, NULL, 1), /* Self-Cooking Hearth */
(16, 8, 'Year_Round', NULL, NULL, 1); /* Flavor Enhancement */

/*
SEASONAL_AVAILABILITY SUMMARY:
Total Records: 48 seasonal availability patterns
Properties Covered: 10 major properties (PropertyIDs 7-16)
Amenities Covered: 15 key amenities (mix of seasonal and year-round)

SEASONAL DISTRIBUTION:
Summer Amenities: 10 records (fire magic, thermal, stargazing)
Winter Amenities: 12 records (heating, crystal charging, healing)
Year-Round Amenities: 26 records (essential services, safety, kitchen)

BUSINESS LOGIC:
✅ Summer: Fire magic peaks, dragon platforms optimal, stargazing clear
✅ Winter: Crystal energy concentrated, heating essential, healing enhanced
✅ Year-Round: Safety systems always active, basic amenities constant

MAGICAL REALISM:
Properties adapt their amenity availability to Zephyrian seasonal magic cycles
Demonstrates how magical properties respond to natural energy fluctuations
Provides realistic availability windows for booking platform
*/