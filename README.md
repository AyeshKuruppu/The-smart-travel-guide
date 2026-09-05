<div align="center">

# The Smart Travel Guide

### A Prolog-based travel agent for Sri Lanka

Find routes, explore attractions, check accommodation, and locate hospitals with most cost efficient ways.

[![SWI-Prolog](https://img.shields.io/badge/SWI--Prolog-Logic%20Programming-2563eb?style=for-the-badge&logo=prolog&logoColor=white)](https://www.swi-prolog.org/)
[![Academic Project](https://img.shields.io/badge/Academic%20Project-A.I.%20Subject-7c3aed?style=for-the-badge)](#)
[![Algorithms](https://img.shields.io/badge/Algorithms-BFS%20%7C%20DFS%20%7C%20A*-0f766e?style=for-the-badge)](#)
[![Domain](https://img.shields.io/badge/Domain-Sri%20Lanka%20Travel-e11d48?style=for-the-badge)](#)
[![GitHub contributors](https://img.shields.io/github/contributors/ShehanSulakshana/The-smart-travel-guide?style=for-the-badge&color=059669)](https://github.com/ShehanSulakshana/The-smart-travel-guide/graphs/contributors)


</div>


<p align="center">
  <img src="https://github.com/ShehanSulakshana/ShehanSulakshana/blob/main/ProjectAssets/prolog-smart-travel-ai.png" alt="The Smart Travel Guide system" width="800">
</p>


## Features

| Capability | Included |
| --- | --- |
| Route planning | BFS, DFS, and A* search |
| Road conditions | Block, and list roads |
| Attractions | Names, categories, ratings, costs, and descriptions |
| Accommodation | Destination hotel lookup |
| Healthcare | Nearest hospital and facilities |
| Interface | Interactive command-line menu |

## Requirements

- [SWI-Prolog](https://www.swi-prolog.org/Download.html)

## Run the Project

bash
swipl main.pl


prolog
?- start.


The menu provides route search, attraction lookup, hotel lookup, hospital lookup, blocked-road display, and exit.


## Supported Locations

The current road and travel data covers:

colombo · kegalle · kurunegala · galle · puttalam · kandy · nuwara_eliya · badulla · monaragala · matara · anuradhapura · polonnaruwa · trincomalee · jaffna

## Project Structure

text
The-smart-travel-guide/
├── main.pl
├── logic/
│   ├── graph.pl
│   ├── search.pl
│   └── display.pl
├── knowledge_base/
│   ├── roads.pl
│   ├── blocked.pl
│   ├── attractions.pl
│   ├── hotels.pl
│   └── hospitals.pl
└── README.md


| File or folder | Purpose |
| --- | --- |
| main.pl | Main menu and application workflow |
| logic/ | Graph rules, route algorithms, and output formatting |
| knowledge_base/ | Roads, closures, attractions, hotels, and hospitals |



## Contributors

| Contributor | Contribution |
| --- | --- |
| [Shehan Sulakshana](https://github.com/ShehanSulakshana) | Project structure, route search, application integration, and menu |
| [Ayesh Kuruppu](https://github.com/AyeshKuruppu) | Graph logic and result display |
| [Induwara Wanninayaka](https://github.com/InduwaraWanninayaka00) | Road, heuristic, and blocked-road data |
| [Gayan Thusitha](https://github.com/GayanT500) | Hotel and hospital data |
| [Sanath Wijesooriya](https://github.com/sanathw-sw) | Tourist-attraction data |

## Copyright

Copyright © 2026 The Smart Travel Guide Contributors. All rights reserved
