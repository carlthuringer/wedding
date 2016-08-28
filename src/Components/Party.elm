module Components.Party exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown exposing (toHtml)
import Messages exposing (Msg)
import Photos exposing (Photo, toImg, party)


filler =
    ("http://www.fillmurray.com/200/230", "http://www.fillmurray.com/200/230 300w")

view : Html Msg
view =
    div [ id "party" ]
        [ h1 [] [ text "Wedding Party" ]
        , div []
            [ h2 [] [ text "Bride's Party" ]
            , div
                [ classList
                    [ ( "flex", True )
                    , ( "wrap", True )
                    ]
                ]
                [ partyMember "Jill Cammarata, Maid of Honor" filler jill
                , partyMember "Paul Cammarata, Bridesman" filler paul
                , partyMember "Joanna Nichols, Bridesmaid" filler joanna
                , partyMember "Kate Slingerland, Bridesmaid" filler kate
                , partyMember "Carolyn Radville, Bridesmaid" filler carolyn
                , partyMember "Beth Lula, Bridesmaid" filler beth
                ]
            ]
        , div []
            [ h2 [] [ text "Groom's Party" ]
            , div
                [ classList
                    [ ( "flex", True )
                    , ( "wrap", True )
                    ]
                ]
                [ partyMember "Brian Thuringer, Best Man" party.brian brian
                , partyMember "Scott McAnally, Groomsman" party.scott scott
                , partyMember "Dustin Mitchell, Groomsman" party.dustin dustin
                , partyMember "David Abdemoulie, Groomsman" party.dave david
                , partyMember "Sarah Killian, Groomsmaid" party.sarah sarah
                ]
            ]
        ]


partyMember : String -> Photo -> String -> Html Msg
partyMember name image content =
    article [ class "three-columns" ]
        [ h3 [] [ text name ]
        , toImg image
        , toHtml [] content
        ]


jill : String
jill =
    """
Passionate about teaching music, Jill is an elementary school music teacher in Berwyn, IL and just recently bought a home in Willowbrook, IL. Nicole is thrilled that Jill accepted her proposal to be her Maid of Honor, and they have had fun wedding planning, cruising Pinterest, and going dress shopping together. Jill lives with her cat, Rainey, and enjoys making her own pottery. 

Being 18 months apart, Nicole and Jill have grown up laughing together, learning together, and occassionally arguing together, but as a result of these disagreements, they have grown closer over the years. Nicole is very proud of the young woman Jill has become and admires her patience and perseverance through the tough times.  
"""


paul : String
paul =
    """
Eleven years younger than Nicole, Paul has been a joy to watch grow up into the young man he is today. While he will always be Nicole's little brother, Paul will be a freshman at Iowa State University in the fall of 2016. He enjoys fishing, camping, playing video games and umpiring baseball games. 

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
Born and Raised in Michigan and Now I live in Mesa, Arizona. I work remotely for a company called Workinman Interactive designing artwork/graphics for various client-based projects and freelance art when there is time.
I was also living in Rochester, NY for quite a few years for college education and post-college work.

My favorite things are:
Metal music, Iced Coffee, hiking, video games, photography and art. I enjoy doing freelance art projects for metal bands and finished several commissions recently.
"""


scott : String
scott =
    """
I've known Carl since... well... birth! We have been cousins for 27 years and have shared a love for all things tech.

I worked as a high school social studies teacher for the past three years in South Carolina but am now taking on a new role as a stay at home father as my family moved back to Birmingham Michigan this past summer. My daughter Addison was born in January and needless to say she (happily) fills my time.

While on break from my teaching career I am still very involved in teaching high school marching band and [drum corps](http://goo.gl/knwDqG). I am looking forward to joining Carl and Nicole and their family and friends for this joyous occasion!
"""


dustin : String
dustin =
    """
At the age of 16, I was bitten by a radioactive spider, and...

Whoops, that was the parallel universe!

The real me, from THIS universe:

I'm a 33 year old engineer, living in Troy Mi. Despite the crazy weather, I do love my home state of Michigan!
I have two children. One is 13 years old and her name is Aeriana. The other is 6 months old (at the time of me writing this), and her name is Lucy. I'm happily married to Lucy's mom!

In between working and family life, I love to play video games, and train with weights.
I was lucky enough to have Carl stand up in my wedding, and I'm completely thrilled to be standing up in his!!
"""


david : String
david =
    """
Who am I? I'm David, a strength coach and owner of Chicago Strength & Conditioning.

I've known Carl for the past 3 years since we worked together at Groupon (I also tell computers what to do, and they listen). Carl trained with me for a year and competed in his first competition last October. Carl's strength basically quadrupled in that time.

I also have a great passion for board games. Carl, Nicole, Megan and I have spent many weekends playing games over the past couple of years.
"""


sarah : String
sarah =
    """
I live in Royal Oak, MI. I'm a Medical Laboratory Scientist and used to work as a Medical Microbiologist. Right now, I'm still working in the Microbiology field, filling a Business Analyst role at a company in Ann Arbor, MI.

My favorite things are:
Coffee, mixing cocktails for friends, video games, visual design, and science!
In my free time I volunteer for my professional organization (American Society for Clinical Laboratory Science), build websites (I just did the political signage and website for my father's local campaign - he won!), and tend my garden.

I first met Carl at Eastern Michigan University. I was the manager of the video game store on campus. Carl walked into the store one day (fresh back from his trip to Japan) and everyone said he looked like Jesus. o.O
We ended up having a close-knit group of friends thanks to that video game store. We're all still friends today!

Carl is one of the few people on this Earth that can have those lucid late-night conversations over a beer - most definitely one of the things I love most about Carl. Oh, and that we tend to have the same taste in video games!
"""
