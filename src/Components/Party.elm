module Components.Party exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown exposing (toHtml)
import Messages exposing (Msg)


view : Html Msg
view =
    div [ id "party" ]
        [ h2 [ class "center" ] [ text "Wedding Party" ]
        , div []
            [ h3 [] [ text "Bride's Party" ]
            , div
                [ classList
                    [ ( "flex", True )
                    , ( "wrap", True )
                    ]
                ]
                [ partyMember "Jill Cammarata" jill
                , partyMember "Paul Cammarata" paul
                , partyMember "Joanna Nichols" joanna
                , partyMember "Kate Slingerland" kate
                , partyMember "Carolyn Radville" carolyn
                , partyMember "Beth Lula" beth
                ]
            ]
        , div []
            [ h3 [] [ text "Groom's Party" ]
            , div
                [ classList
                    [ ( "flex", True )
                    , ( "wrap", True )
                    ]
                ]
                [ partyMember "Brian Thuringer" brian
                , partyMember "Scott McAnally" scott
                , partyMember "Dustin Mitchell" dustin
                , partyMember "David Abdemoulie" david
                , partyMember "Sarah Killian" sarah
                ]
            ]
        ]


partyMember : String -> String -> Html Msg
partyMember name content =
    article [ class "three-columns" ]
        [ h4 [] [ text name ]
        , toHtml [] content
        ]


jill : String
jill =
    """
Lorem markdownum sensimus bobus Philomela exhibuit paratu. Nubibus praesepibus
dictis leto vultu: tabo tundit Eryx tenus, trepidantibus cura regina, nec et.

Procul pertulit ut nulli a potuit conquerar quid sortite quidem sorore gelido
foribus; comas deus. Quoque et funda posuit fessa quo et mutato, tigres ille,
leonis. Inde exsiliantque erat fatebor fertur: Caune mixta Delius foret adeo
forma, Autolyci quis frugum suoque distat hanc, et. Adhuc simul!

> Illa arvis perspice vidit Achilles in auferat, dependent, umbras! Unus non
> anni placet Andron sine inimica. Labor posse an est, factoque lugebere et
> dapes superbus non solae conbibit. Mea quem Eoo silva praemia iacet armo, Luna
> regnum aquis, ira fuit petebant.

Lacrimantia intra visa: ventis vitam. ![placeholder](http://www.fillmurray.com/200/230) Probor sedes. Ille utque quidem est sic et
caede. Dum natus non, tot rutilum neque.

> Ora tabuit quarto salientis ventos est sensit umbra. Lumina cum cedere,
> Corythi poteram mori vagatur conchaeque canis minanti torrentem nam?

Ut surgit corpus, quoque, meum nostri. Nec ista mandata filia; habendus de
fertur arcum ipse poterat.

Creamur usus famae inanem aliquas hesternos pectora sacra, undis inpia et manu
dixit; saxo longo creverunt illum corpora. Moles erat factaque alta placidos,
flavam poma ut quae Troianae, illam arvis cumque suspendit arreptum si mihi.
"""


paul : String
paul =
    """
![placeholder](http://www.fillmurray.com/200/230)
Lorem markdownum frustraque ille, sufficiunt pugnando terrarum bos regnumque
iaculo ulterius Psecas valent sed spatio contenta. Regia idem: sequar Iuppiter
confertur saevaque corrigit audeat tuta parente frutices felicia, at carendum
iubes per ira erat.

Gradibus convivia cineres fracta, et quas adspeximus concita. Huic herba,
Nonacrinas illis, matre Eryx patebat Quas: nec vellet parva neque tumultus
paulatim firma iactis. Nam maiore; est in nisi; meae arma sua spectator. Colonis
ego, ut arte insequitur Phoebe abiit.

1. Troianaque doleas excutit
2. Ille sertaque malorum
3. Factum illo
4. Saxo enim
5. Delere serpentum et deus
6. Deus auro conchae formae

Hederae virtute verumtamen Ortygie, qua non, qui est officioque, amans mea:
absens poma urbis cetera quoque. Hasta magnum!

Ora loca, qui sacra templum incubat, alma saltatibus meritorum. Dabat fatalis
que voti sociis domum admota ab lecta lumina suscipimus primis reversurum
palmis. Et modo enim sunt est altoque habebat multorumque sequitur: Aeneas
victoria sequendi cui flamina corpus spes pressitque causa. Vestigia iunget
erroresque domus superbia, et cutis Aeoliique pastor dedere Agenorides nulla,
ille Damasicthona generi.

Des pedibus arbiter indice: carina quondam virginis garrula timorque haerentem
loci oculosque, aestibus ipse, salva a Amorque. Tamen quosque quod vix memores
timor cruori cetera quodque offensus domos! Notatas virum pendentiaque conde,
aut ex loca, temperie o abest credita.![placeholder](http://www.fillmurray.com/200/230)
"""


joanna : String
joanna =
    """
In alter possunt totidem. Iamque cervixque vellem Nessus indagine miranti
volubilibus exilio; cum officio cremabo permiscuit coniectos vixque?

- Nunc hic mortali tum solita
- Tumida postquam
- Mihi consonus
- Senis relevare
- Labefactum indutus

Mellaque septem imi tristis vertice clamat nubila probat ait induerat in domos:
deformes. Insistit notissima, desint rata occupat fuerit si, favilla est vultus;
arbor manet possem. ![placeholder](http://www.fillmurray.com/200/230)Est fore, ultor damno. Vulnere cornua, est vertice procul
qua induitur Austro et tectos Cyllenide referrem, in vicem. Conscia est conantur
fere; sui arbore valens?
"""


kate : String
kate =
    """
Lorem markdownum, est fletus membra pastores gemina, dis nexis est conluerant
fame dulcedine adsumptumque tenus! Terris populum dabunt patrium rostro iubet,
torvo Tyrium deorum. Ense tamen. Est felix, est et puellari non care totoque
erat!

> Desunt amorem undis forte oblita navis transtra ictu ieiunia certa origo;
> praecipuum mariti, abunde ne vasti sustinet. Coniunx qui armos Livor; ab
> flumina molarem ac sint, reppulit et intus. Sidera erit; olorinis sua abit
> pennae reliquerat crescunt ursae te. Perstet nostra: artes ubi atque agendo,
> gradus Cecropidae populo celerem invecta studiumque facies referentia mentes!
> Attonitos feci; fuit vidit, Titania sole sic, opem sis furens Achilles, quem
> primo creatus.

![placeholder](http://www.fillmurray.com/200/230) Data profugo, virgo Peleus inania. Nec parma, corpora nurus placerent potuisse
tanti rabie artifices velamina nitenti. Domus forma. Et gramen, utrumque in
Prima.
"""


carolyn : String
carolyn =
    """
1. Quirini te Dixerat exitio murmurat pudicos posset
2. Detractare vomit errare cohibentem
3. Quae harundine
4. Hostes uno quod taceam fatale

Scylaceaque Liber: hinc altis dedisse disertus solet, lacrimasque tecto ardent:
secutae. Si Ennomon flammam videam nocuisse dimittit Aonides iniuria carinis
radicibus atque venantum ambitione femina.

- Adest solent somniferam harundine
- Violentaque pater vocari
- Tibi ipsosque dum quicquam
- Quid possis regnum frequens se victa sint

![placeholder](http://www.fillmurray.com/200/230) Cuius confodit Ceres quoque donis; annos idem, reliquit per; sum erant facibus
oppidaque laetus facit. Est haec sic, volucres radice; gratia nec nomine solus
non istum, ab dictis protinus desine ducebat. Pati mensis in Alcyone Macareus
quoque, ense non, in cvrrvs et caedibus, et debueram. Lacessas Serpens caput,
sorores ademptum, montes nitidum pinu Latinum colebatur ignes.

Inque hunc hic candescere germana, ne ore urbesque quae est. Ne parat maris, ore
usque siqua, scelerata pars gentes, cuspis hoc Tonanti terras, retexite. Solis
accipiunt stabula soporem perire date natae sequiturque omnis quidem Iovis et
terrore septem obnoxia Troiaeque. Pro invida arbitrium Dianae qua vidit Cyclopis
bracchiaque Pentheus sine, ille inpune virum Pallorque sui victoremque.
"""


beth : String
beth =
    """
Something something something...
![placeholder](http://www.fillmurray.com/200/230) Cuius confodit Ceres quoque donis; annos idem, reliquit per; sum erant facibus
oppidaque laetus facit. Est haec sic, volucres radice; gratia nec nomine solus
non istum, ab dictis protinus desine ducebat. Pati mensis in Alcyone Macareus
quoque, ense non, in cvrrvs et caedibus, et debueram. Lacessas Serpens caput,
sorores ademptum, montes nitidum pinu Latinum colebatur ignes.
"""


brian : String
brian =
    """
Individualistic and rebellious, yet mild-mannered, the artist challenges our
sensibilities and expectations. Whether in his effort effect positive change in
the world around him, a surreal and inquisitive artistic expression, or a ravenous
truth-seeking debate, Brian seeks to know and be understood by those he loves.

He passes the time hiking in the parks around Mesa, Arizona where he has lived
with his partner Jillian for two years. He is just as avaricious when exploring the
natural world as elsewhere, and as he masters its challenges he is also humbled.
Brian has also grown in respect and responsibility with his employer, Workinman,
where he lends his sharp, striking style to their interactive media projects.

Brian hopes to one day grow his freelance art and design work to full-time,
cultivate his professional network, and work high-profile and exciting projects
in the concept art community. Carl is very proud of his younger brother and loves him
for the way Brian challenges him every day, his maturity, and indomitable spirit.
"""


scott : String
scott =
    """
Lorem markdownum, me senex artificum demit regnat potens; quae quoque esse
vertice. Pollice cecidisse pectora exaudire gravitas claudit vestigia letum et
Pandion accipe, inimicos nescit pericula possunt, fidissima. Loricamque dixit,
illi iste nisi utraque parte, et pavet liquescunt quidem. Exercet enim via
quibus, tua obvertit latus una fores.

- Et cupidine regnumque sedant castique
- Ab dixere iugulatus introrsus ut mugitu imitatur
- Trabe fele emi cruore ![placeholder](http://www.fillmurray.com/200/230)
- Cuius alto
- Sic atque quam sit
- Positis inquit
"""


dustin : String
dustin =
    """
Protinus viae Helicen nitentibus, viro suis sanguine ebur, ille crimen; aut
pollice, in iuventa. Postquam et rabies profectura turba. Quam ait confusa
laudant nihil.

1. Iam aut inmeritam anxia
2. Acuta torva
3. Haud sim sed inmitibus nunc
4. Suam magnanimi vidi
5. Remis vestemque amorem florentia finitimi summa pronus

Tristis esse cum! Liquidis agros agit, decrescunt cecidere ipsaque nunc iubet
admonita fudit nodoso.

1. Pariter si erigitur parent nitidissimus erit
2. Sublime soluti
3. Generum tibi illis tegebant obscura
4. Pigetque et ira factum crinalem pluma
5. Sanguis benignior et mentis ripae salutifera longa
"""


david : String
david =
    """
Insopitumque sine sanguine iacent virgo faticinasque nefas, non sum latices
terruit positi. Et sidera intus, manu figit bracchia iustissima dant nimiumque
adeo. Tuumque tantumque praemia nostras adamante excidit.

![placeholder](http://www.fillmurray.com/200/230)Nata tum; circumdata ubi, cessit sed vestrae avidum. Violas tot potior patiemur
colubris mihi mactare omnis. Fuit causa ferens, pars notatas cuius, sperare
relictus pthiam fossa tamen. Te quod vocato Horae, percussere necis. Vox male,
ego canos: ora declivis ignavus iungunt, Hic vires!
"""


sarah : String
sarah =
    """
![placeholder](http://www.fillmurray.com/200/230)
Lorem markdownum hanc solis ignibus, si sed domum tellure minorem Troiae rari!
Est fugias palus nec nullis, gemitu deprensa clipeus matrona sudataque nulla
animoque. Et undis procubuit, tenet? Primum ille mea ille harundine auctor!

- Est per Saturnius morte
- Aliud angues medioque et venisset coniugis arvaque
- Commendat Hylonome turba inpulsum

Madidis heros cavata spatium, aut vicibus, digna fessa eras crines, dum lucos.
Amoris videres in lina obsessum fuerat, cum, ponere; ego omnia Pittheam erit,
pavefactaque. Fata non percurrens nunc; nunc admissum, sortis altera tulimus
demittant.
"""
