# JVF DTM Viewer - Manual

## Popis

Prohlizec geodetickych dat ve formatu JVF DTM 1.4.3.
Zobrazuje body a linie v souradnicovem systemu S-JTSK (EPSG:5514).
Pracuje lokalne bez serveru, bez instalace.


## Soubory

    index.html        hlavni soubor, otevrit v prohlizeci
    colors.js         nastaveni barev vrstev
    libs/
        three.min.js      knihovna 3D grafiky
        OrbitControls.js  ovladani kamery


## Prvni spusteni

1. Spustit download_libs.bat
   - stahne three.min.js a OrbitControls.js do slozky libs/
   - potrebuje pripojeni k internetu (pouze jednou)

2. Otevrit index.html v prohlizeci (Chrome, Edge, Firefox)

3. Otevrit JVF soubor
   - kliknout na tlacitko "Otevrit JVF XML soubor"
   - nebo pretahnout soubor do okna


## Ovladani

    Levy mys (drag)      otaceni pohledu
    Pravy mys (drag)     posun pohledu
    Kolecko mysi         priblizeni / oddialeni ke kurzoru
    Tlacitko Fit         nastavi pohled na vsechna data
    Tlacitko Shora       pohled kolmo shora


## Legenda

Vlevo je seznam vrstev rozdelenych do skupin.
Kliknuti na vrstvu ji skryje nebo zobrazi.

Smazane zaznamy (ZapisObjektu = d) jsou oddeleny a
skryte. Zobrazit je lze zatrzenim policka "Smazane zaznamy".


## Barvy vrstev

Soubor colors.js obsahuje barevne nastaveni.
Kazdy radek odpovida jednomu typu objektu.

Priklad:

    HraniceBudovy:   { color: 0xff4444 },
    PodrobnyBodZPS:  { color: 0x4ade80, sz: 4 },

    color   barva ve formatu 0xRRGGBB (hex)
    sz      velikost bodu nebo sirka linie v pixelech

Po uprave souboru staci obnovit stranku v prohlizeci (F5).
Pokud colors.js chybi, pouziji se vychozi barvy ze schematu.


## Skupiny vrstev

    Geodetické body       podrobné body ZPS, výškové body
    Budovy                hranice budov, definicni body
    Zdi                   zdi, hranice zdi
    Plot                  plot
    Stavby - zpevneni     zpevnene plochy, schodiste, terasy
    Vegetace / plochy     zahrady, les, zemedelska plocha
    Vodstvo               vodni toky, nadrze, kanaly
    Elektricke site       trasy, zarizeni
    Plynovodni site       trasy, zarizeni
    Vodovod / kanalizace  trasy, zarizeni
    TI site - ostatni     teplovody, produktovody, kolektory
    Doprava               komunikace, zeleznice, cyklostezky
    Letectvo              letiste, heliporty
    Podzemni / spec.      podzemni objekty, vrty
    Oblast zmeny          hranice zmeny (skryta vychozne)
    Ostatni / Nezname     typy mimo schema (automaticka barva)


## Tooltip

Pri najeti mysi na bod se zobrazi souradnice:

    Y    easting  (S-JTSK)
    X    northing (S-JTSK)
    H    vyska (Balt po vyrovnani)


## Poznamky

- Soubor musi byt validni XML ve formatu JVF DTM
- Podporovany format: verze 1.4.3 a kompatibilni
- Polygony (-plocha) nejsou zobrazovany
- Aplikace neupravuje ani neukryva puvodni soubor
