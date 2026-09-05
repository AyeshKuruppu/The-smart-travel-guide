:- module(roads, [
    road/3,
    estimate/3
]).

/* Road Facts */
road(colombo, kegalle, 78).
road(colombo, kurunegala, 95).
road(colombo, galle, 125).
road(colombo, puttalam, 130).

road(kegalle, kandy, 38).
road(kegalle, kurunegala, 55).

road(kandy, kurunegala, 45).
road(kandy, nuwara_eliya, 77).
road(kandy, badulla, 120).

road(nuwara_eliya, badulla, 65).
road(badulla, monaragala, 57).
road(monaragala, matara, 180).

road(galle, matara, 45).

road(kurunegala, puttalam, 60).
road(kurunegala, anuradhapura, 75).

road(anuradhapura, polonnaruwa, 105).
road(anuradhapura, trincomalee, 110).
road(anuradhapura, jaffna, 200).

road(polonnaruwa, trincomalee, 110).

/* Heuristic Estimates */
estimate(colombo, jaffna, 300).     estimate(kurunegala, jaffna, 250).
estimate(anuradhapura, jaffna, 150). estimate(colombo, anuradhapura, 180).
estimate(kurunegala, anuradhapura, 70). estimate(colombo, polonnaruwa, 200).
estimate(kurunegala, polonnaruwa, 150). estimate(anuradhapura, polonnaruwa, 100).
estimate(colombo, trincomalee, 220). estimate(kurunegala, trincomalee, 180).
estimate(anuradhapura, trincomalee, 100). estimate(colombo, kurunegala, 90).
estimate(colombo, kandy, 100).      estimate(kegalle, kandy, 40).
estimate(colombo, galle, 100).      estimate(colombo, matara, 150).
estimate(galle, matara, 50).        estimate(colombo, nuwara_eliya, 150).
estimate(kandy, nuwara_eliya, 70).  estimate(colombo, monaragala, 220).
estimate(badulla, monaragala, 50).   estimate(colombo, badulla, 190).
estimate(nuwara_eliya, badulla, 60). estimate(colombo, kegalle, 70).
estimate(colombo, puttalam, 120).   estimate(kurunegala, puttalam, 55).