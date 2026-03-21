# JVF DTM Viewer – Manuál

## Popis

Prohlížeč geodetických dat ve formátu JVF DTM 1.4.3.
Zobrazuje body a linie v souřadnicovém systému S-JTSK (EPSG:5514).
Pracuje lokálně bez serveru, bez instalace.


## Soubory

    index.html          hlavní soubor, otevřít v prohlížeči
    colors.js           nastavení barev vrstev
    about.js            kontaktní údaje (o aplikaci)
    download_libs.bat   stažení knihoven (pouze pokud chybí složka libs/)
    libs/
        three.min.js        knihovna 3D grafiky
        OrbitControls.js    ovládání kamery
        CSS2DRenderer.js    vykreslování popisků bodů


## Spuštění

1. Otevřít index.html v prohlížeči (Chrome, Edge, Firefox)

2. Otevřít JVF soubor
   - kliknout na tlačítko "Otevřít JVF XML soubor"
   - nebo přetáhnout soubor do okna

Složka libs/ je součástí distribuce – žádná instalace není potřeba.

Pokud složka libs/ chybí nebo jsou soubory poškozeny:
   - spustit download_libs.bat
   - potřebuje připojení k internetu (stáhne knihovny z cdn.jsdelivr.net)


## Ovládání

    Levé tlač. (drag)    otáčení pohledu
    Pravé tlač. (drag)   posun pohledu
    Kolečko myši         přiblížení / oddálení ke kurzoru
    Fit                  nastaví pohled na viditelná data
    Top                  pohled kolmo shora
    Klik na prvek        zobrazí detail v info panelu (vpravo nahoře)


## Popisky bodů

Tlačítka Aa a Z v panelu Body zapínají a vypínají zobrazení
čísla bodu a výšky Z nad každým bodem ve scéně.
Každé tlačítko funguje nezávisle.


## Info panel

Kliknutím na bod nebo linii se zobrazí detail prvku:

    Body    číslo bodu, Y/X/H, třída přesnosti, způsob pořízení,
            ID, datum vkladu, vložil
    Linie   délka 2D, počet vrcholů, atributy záznamu

Panel zavřete tlačítkem ✕ nebo kliknutím do prázdného prostoru.


## Legenda

Vlevo je seznam vrstev rozdělených do skupin.
Kliknutí na vrstvu ji skryje nebo zobrazí.
Fit a Top berou v úvahu pouze aktuálně viditelné vrstvy.


## Záznamy

V horní části legendy jsou zaškrtávací políčka pro filtrování
záznamů podle hodnoty ZapisObjektu:

    i    vložené
    u    upravené
    r    referenční
    d    smazané (skryté výchozně)


## Barvy vrstev

Soubor colors.js obsahuje barevné nastavení.
Každý řádek odpovídá jednomu typu objektu.

Příklad:

    HraniceBudovy:   { color: 0xff4444 },
    PodrobnyBodZPS:  { color: 0x4ade80, sz: 4 },

    color   barva ve formátu 0xRRGGBB (hex)
    sz      velikost bodu nebo šířka linie v pixelech

Po úpravě souboru stačí obnovit stránku v prohlížeči (F5).
Pokud colors.js chybí, použijí se výchozí barvy ze schématu.


## Skupiny vrstev

    Geodetické body       podrobné body ZPS, výškové body
    Budovy                hranice budov, definiční body
    Zdi                   zdi, hranice zdí
    Plot                  plot
    Stavby – zpevnění     zpevněné plochy, schodiště, terasy
    Vegetace / plochy     zahrady, les, zemědělská plocha
    Vodstvo               vodní toky, nádrže, kanály
    Elektrické sítě       trasy, zařízení
    Plynovodní sítě       trasy, zařízení
    Vodovod / kanalizace  trasy, zařízení
    TI sítě – ostatní     teplovody, produktovody, kolektory
    Doprava               komunikace, železnice, cyklostezky
    Letectvo              letiště, heliporty
    Podzemní / spec.      podzemní objekty, vrty
    Oblast změny          hranice změny (skrytá výchozně)
    Ostatní / Neznámé     typy mimo schéma (automatická barva)


## Tooltip

Při najetí myší na bod se zobrazí souřadnice:

    Y    easting  (S-JTSK)
    X    northing (S-JTSK)
    H    výška (Balt po vyrovnání)


## Poznámky

- Soubor musí být validní XML ve formátu JVF DTM
- Podporovaný formát: verze 1.4.3 a kompatibilní
- Polygony (-plocha) nejsou zobrazovány
- Aplikace neupravuje ani neskrývá původní soubor
