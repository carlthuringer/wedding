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
                [ partyMember "Jill Cammarata, Maid of Honor" party.jill jill
                , partyMember "Paul Cammarata, Bridesman" party.paul paul
                , partyMember "Joanna Nichols, Bridesmaid" party.joanna joanna
                , partyMember "Kate Slingerland, Bridesmaid" party.kate kate
                , partyMember "Carolyn Radville, Bridesmaid" party.carolyn carolyn
                , partyMember "Beth Lula, Bridesmaid" party.beth beth
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
                , partyMember "Sarah Beatty, Groomsmaid" party.sarah sarah
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
Joanna and Nicole also met their freshman year of college at Drake University, where they lived on the same floor—just two doors down from each other to be exact. Admiring Joanna’s creativity and thoughtfulness, Nicole is so happy to have met Joanna a little over 10 years ago, and they’ve been great friends ever since. Nicole is so proud of Joanna for recently completing her master’s degree from DePaul and feels so lucky to have such a great friend as her. She is so thankful that Joanna will be standing up for Nicole on her wedding day.
"""


kate : String
kate =
    """
Kate and Nicole met freshman year of college at Drake University in Des Moines, IA. While taking very different classes during their time at Drake (Kate majored in biochemistry, while Nicole majored in journalism and graphic design), Nicole and Kate enjoyed their many road trips together to and from the Chicagoland area to Des Moines.
After finishing her master’s degree at the University of Minnesota, Kate moved back to Chicago, when she and Nicole became even closer friends. Nicole is so proud to have a friend like Kate and is thrilled to have her stand up as a bridesmaid.
"""


carolyn : String
carolyn =
    """
Carolyn and Nicole have been friends since they were little girls. They met when Carolyn’s family moved in across the street from Nicole’s family on Kensington Avenue in La Grange Park, IL, and they’ve been friends ever since (20+ years!). While they went to different elementary schools and colleges, they attended the same high school, where they swam for the Lyons Townships girls swim team for four years.
Nicole is proud to have Carolyn has a lifelong friend, and is honored to have her stand up for her as a bridesmaid.
"""


beth : String
beth =
    """
It’s been a joy for Nicole to watch her cousin Beth grow into the young woman she is today. Beth attends Indiana University where she is majoring in graphic design. From spending holidays, birthdays, and trips up to the cabin to chatting about art and anime, Nicole and Beth enjoy spending family time together. Nicole admires Beth’s artistic and creative talents, and is so happy that Beth will be able to participate in Nicole and Carl’s special day as a bridesmaid.
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
