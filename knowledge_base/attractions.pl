:- module(attractions, [
    attraction/6
]).


% KANDY
attraction(kandy, 'Temple of the Tooth Relic', religious, 5, 1500, 'Sacred site holding a tooth relic of the Buddha. The evening drumming ceremony gives you chills.').
attraction(kandy, 'Kandy Lake', scenic, 3, 0, 'Calm lake in the city centre, great for a morning jog or an evening walk.').
attraction(kandy, 'Royal Botanical Garden Peradeniya', scenic, 4, 2000, 'Huge gardens with a famous palm avenue and one of Asia\'s largest orchid collections.').
attraction(kandy, 'Bahirawakanda Buddha Statue', scenic, 3, 0, 'Short steep climb, but the sunset view over Kandy city makes it worth it.').

% COLOMBO 
attraction(colombo, 'Galle Face Green', scenic, 3, 0, 'Seaside promenade that fills up with kites, food carts and sunset crowds every evening.').
attraction(colombo, 'Gangaramaya Temple', religious, 4, 0, 'Buddhist, Hindu and Chinese influences mixed together, plus a quirky little antiques museum.').
attraction(colombo, 'Independence Square', heritage, 3, 0, 'Open memorial hall with wide lawns, popular for morning walks and evening picnics.').
attraction(colombo, 'Pettah Market', shopping, 3, 0, 'Chaotic street market, great for haggling and a dose of real city life.').

% GALLE
attraction(galle, 'Galle Fort', heritage, 5, 0, 'Dutch-era fortress city with cobblestone streets, cafes and an old lighthouse.').
attraction(galle, 'Jungle Beach', beach, 4, 0, 'Quieter, sheltered beach, good for a calm swim and decent snorkeling.').
attraction(galle, 'Galle Lighthouse', scenic, 3, 0, 'Small lighthouse on the fort ramparts, a favourite sunset spot.').

% NUWARA ELIYA
attraction(nuwara_eliya, 'Gregory Lake', scenic, 4, 0, 'Cool misty lake surrounded by pine trees, nice for boating or just tea and a view.').
attraction(nuwara_eliya, 'Horton Plains National Park', scenic, 5, 1500, 'Home to World\'s End, a sudden cliff drop best seen early morning before the clouds roll in.').
attraction(nuwara_eliya, 'Pedro Tea Estate', heritage, 3, 300, 'Working tea factory tour that ends with a fresh cup grown right on the hillside.').

% ANURADHAPURA
attraction(anuradhapura, 'Sri Maha Bodhi', religious, 5, 0, 'Grown from a cutting of the Buddha\'s original Bodhi tree, one of the oldest trees on record.').
attraction(anuradhapura, 'Ruwanwelisaya Stupa', heritage, 4, 0, 'Massive white dagoba over two thousand years old, still active with pilgrims at dawn.').

% POLONNARUWA
attraction(polonnaruwa, 'Gal Vihara', heritage, 5, 1000, 'Four huge Buddha statues carved into a single rock face, remarkably well preserved.').
attraction(polonnaruwa, 'Royal Palace Ruins', heritage, 3, 1000, 'Crumbling remains of a seven-storey royal palace, still impressive in scale.').

% MATARA
attraction(matara, 'Polhena Beach', beach, 4, 0, 'Shallow reef-protected beach, great for beginner snorkelers and families.').
attraction(matara, 'Star Fort Matara', heritage, 2, 0, 'Small star-shaped Dutch fort, quick twenty-minute stop if you\'re nearby.').

% TRINCOMALEE
attraction(trincomalee, 'Koneswaram Temple', religious, 4, 0, 'Ancient Hindu temple perched dramatically on a clifftop over the ocean.').
attraction(trincomalee, 'Pigeon Island', beach, 4, 1500, 'Protected marine park with easy snorkeling among reef sharks and coral.').

% JAFFNA
attraction(jaffna, 'Jaffna Fort', heritage, 3, 0, 'Old Dutch fort by the lagoon, peaceful for an evening walk.').
attraction(jaffna, 'Nallur Kandaswamy Temple', religious, 4, 0, 'Colourful, important Hindu temple, especially lively during its annual festival.').

% OTHERS
attraction(kurunegala, 'Ethugala Rock', scenic, 2, 0, 'Rock outcrop with a Buddha statue and a decent view over the paddy fields.').
attraction(badulla, 'Muthiyangana Raja Maha Vihara', religious, 2, 0, 'One of the oldest, most respected temples in the hill country.').
attraction(kegalle, 'Pinnawala Elephant Orphanage', scenic, 4, 2500, 'Watch rescued elephants bathe in the river, though the ethics are debated among travellers.').