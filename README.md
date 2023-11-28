# ravintolat

<title>Ravintolat</title>

Sovelluksessa näkyy tietyn alueen ravintolat, joista voi etsiä tietoa ja lukea arvioita. 
Jokainen käyttäjä on peruskäyttäjä tai ylläpitäjä.
Alue kiinnitetään sovelluksessa.

<h2>Ominaisuudet</h2>
<ul>
<li> Käyttäjä voi kirjautua sisään ja ulos sekä luoda uuden tunnuksen (web-sivu). 
<li> Käyttäjä näkee ravintolat kartalla ja voi painaa ravintolasta, jolloin siitä näytetään lisää tietoa (kuten kuvaus ja aukioloajat) (karttapohjalla, googlemaps?).
<li>Käyttäjä voi siirtyä karttapohjalta ravintolan tietohin (web-sivulle) 
<li>Käyttäjä voi antaa arvion (tähdet ja kommentti) ravintolasta ja lukea muiden antamia arvioita (web-sivu). 
<li>Ylläpitäjä voi lisätä ja poistaa ravintoloita sekä määrittää ravintolasta näytettävät tiedot (web-sivu).
<li>Käyttäjä voi etsiä kaikki ravintolat, joiden kuvauksessa on annettu sana (web-sivu).
<li>Käyttäjä näkee myös listan, jossa ravintolat on järjestetty parhaimmasta huonoimpaan arvioiden mukaisesti (web-sivu).
<li>Ylläpitäjä voi tarvittaessa poistaa käyttäjän antaman arvion (web-sivu).
<li>Ylläpitäjä voi luoda ryhmiä, joihin ravintoloita voi luokitella. Ravintola voi kuulua yhteen tai useampaan ryhmään (web-sivu).
</ul>

<h2>Toteutustilanne 19.11.2023</h2>
<ul>
<li> /index sivulla näytetään alueen ravintolat ja tarjotaan mahdollisuus kirjautua sisään
<li> createdb.sql luo tietokannan cuisinerating, 
<li> add_data.sql vie kantaan pohjatiedot
</ul>

<h2>Tiedostot githubissa</h2>
<ul>
<li>app.py 
  <ul> <li> tiedostossa tarvittavat python kirjastot sovelluksen rakentamiseen
      <li>/index sivulla näytetään alueen ravintolat ja tarjotaan mahdollisuus kirjautua sisään
</ul>


<li> createdb.sql luo tietokannan cuisinerating, sisältää taulut: users, cuisines, restaurants, reviews, statuslogging
<ul><li>users - käyttäjät, sähköpostiosoittet, salasana hajautusarvona
    <li>cuisines - ravintolatyypit
    <li>restaurants - ravintolat
    <li>reviews - käyttäjien antamat arvostelut
    <li>statuslogging - lokitietoja sovelluksen
</ul>
<li> add_data.sql vie kantaan pohjatiedot, joita tarvitaan sovelluksen rakentamiseen ja testaukseen
</ul>
</ul>
<li> rquirements.txt pitää sisällään luettelon tarvittavist python kirjastoista. Käyttö: pip install -r requirements.txt
</ul>

