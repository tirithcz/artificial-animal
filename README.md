# artificial-animal
Virtual game agent - animal




TYPY OBJEKTU IN-WORLD:
===========================================================================
3 + 4 +  sin(3 ^ 4) * pi  + ( 15 ^ 4) 

        
        - animals
        - resources
        - food / water / magic things
        - interactables
        - buildings
        - blueprints (abstract)
        - agents
        - service (system) objects -  vejce pro rozeni, update machines, etc


    rev. 1.1 ---


function sigmoid(t) {
    return 1/(1+Math.pow(Math.E, -t));
}


var Lifestages = {
    IMMATURE:1,
    MATURE: 2,
    BREEDING: 3,
    DEAD: 4
}

var Classes = {
    PLANT:1,
    FUNGUS:2,
    INSECT:3,
    BIRD:4,
    HERBIVORE:5,
    CARNIVORE:6
}

var ObjectsType = {
    PLANT:1,
    ANIMAL:2,
    BIRD:4,
    BEAST:5,
    WATER:6,
    WORK_RESOURCES:6,   /* field, pool with fish, woods , mines etc */
    LANDSCAPING:8,
    BUILDING:9
    };

^ Class                ^ Name                 ^ Id       ^ Type      ^ Features              ^ Comm Channel          ^ Note   ^
| INTERATIVE_OBJECT    |          | CLASS     |                       |                       |        |
| PLANT                |          | CLASS     |                       |                       |        |
| ANIMAL               |          | CLASS     |                       |                       |        |
| RESOURCE             |          | CLASS     |                   |                       |                       |        |
| AGENT                |          | CLASS     |                   |                       |                       |        |
|                      |          |           |                   |                       |                       |        |

^ Level      ^ Class               ^ Type               ^ Name                 ^ Id               ^ Features              ^ Comm Channel          ^ Note   ^
| 0.0        | OBJECT              |                    |                      |                  |                       |                       |        |
| 0.0        |                     |  INTERACTIVE       |                      |                  |                       |                       |        |
| 0.0        |                     |  OBSTACLE          |                      |                  |                       |                       |        |
| 0.0        |                     |  ABSTRACT          | BluePrint            |                  |                       |                       |        |
| 0.0        | RESOURCE_OBJECT     |                    |                      |                  |                       |                       |        |
| 0.0        |                     |  Water             |                      |                  |                       |                       |        |
| 0.0        |                     |  Food              |                      |                  |                       |                       |        |
| 0.0        |                     |  -other work res-  |                      |                  |                       |                       |        |
| 0.0        |                     |                    |                      |                  |                       |                       |        |
| 0.0        |                     |                    |                      |                  |                       |                       |        |
| 1.0        | PLANT               |                    |                      |                  |                       |                       |        |
| 0.0        |                     |                    |                      |                  |                       |                       |        |
| 0.0        |                     |                    |                      |                  |                       |                       |        |
| 0.0        |                     |                    |                      |                  |                       |                       |        |
| 0.0        |                     |                    |                      |                  |                       |                       |        |
| 10.0        | ANIMAL              |                    |                      |                  |                       |                       |        |
| 0.0        |                     |  BIRD              |                      |                  |                       |                       |        | 
| 0.0        |                     |  HERBIVORE         | cow                  |                  |                       |                       |        |
| 0.0        |                     |  HERBIVORE         | sheep                |                  |                       |                       |        |
| 0.0        |                     |  HERBIVORE         | tabuk                |                  |                       |                       |        |
| 0.0        |                     |  CARNIVORE         | dog                  |                  |                       |                       |        |
| 0.0        |                     |  CARNIVORE         | wolf                 |                  |                       |                       |        |
| 0.0        |                     |  CARNIVORE         | cat                  |                  |                       |                       |        |
| 0.0        |                     |                    | boar                 |                  |                       |                       |        |
| 0.0        |                     |                    |                      |                  |                       |                       |        |
| 100.0        | AGENT               | AGENT              | $name                |                  |                       |                       |        |
| 1000.0        | STRUCTURES          | HOUSE              |                      |                  |                       |                       |        |
| 9999.0        | SYSTEM_OBJECT       |                    |                      |                  |                       |                       |        |


        - resource (food, water, field, rock-stones, fishing pool, tree, tree, forest)
        - abstract (blueprint, location of mating partner, active Home pos)
        - interactive objects
        - animal
        - structure - building
        - agent     
        - system object 

    [ SL In-World touch at agent will DO ]

        - agent will send his ID and info 


AGENT OBJECT STRUCTURE 
===========================================================================

    - brain             LSL 
    - comm              LSL
    - config            NC 
    - Egg               OBJECT 
    - genetic           LSL

    - Person Data:
        - needs
        - personality
            - Sloopy    <-> neat 
            - Shy       <-> Outgoing 
            - Serious   <-> Playful 
            - Lazy      <-> active 
            - Mean      <-> nice
        - skills
            - cooking / mechanical / logic / body / etc
        - relationships
    - Motive Engine:
        - Physical:
            - Hunger
            - Comfort
            - Hygiene
            - Bladder 
            
        - Mental:
            - Energy
            - Fun 
            - Social 
            - Room (neat close enviroment)

    INTERACTION TYPES:
    ==================
    NORMAL
        - advertised .. autonomous
        - manual .. player selected

    PUSHED
        - Carpool
        - Fire
    FUNCTIONAL
        - Clean 
        - Repair 
        - Cook 
        - Etc

FURrious

    CALCULATION INTENSITIES OF EMOTIONS
    ===================================

    Joy = ( 1.7 * expectation^0.5 ) + ( -0.7 * desirability )
    Sad = (   2 * expectation^2) - desirability
    Dissappointment = Hope * desirability 
    Relief = Fear * desirability 
    Hope = ( 1.7 * expectation^0.5) + ( -0.7 * desirability )
    Fear = ( 2 * expectation^2 ) - desirability

Plutchik’s types      Emotion types in OCC model 
-------------------------------------------------------------------------------------
Happiness               Happy_for,  Gloating,  Joy,  Pride,  Admiration,  Love,  
                        Hope, Satisfaction, Relief, Gratification, Gratitude 
Disgust                 Hate              
Anger                   Anger,Reproach, Hate 
Sadness                 Resentment,Pity,Distress,Shame,Disappointment, Remorse
Fear                    Fear, Fear-confirmed 
Surprise                By contex    




INTERACTIVE OBJECTS
===========================================================================     
    LOCAL VARIABLES:
        localPos
        localRot





===========================================================================     
COMMUNICATION
=========================================================================== 



    COMMUNICATION > AGENT vs INTERACTIVE OBJECT
    ----------------------------------------------------------------------- 
        AGENT>INTERACTIVE_OBJECT 
            ? | !
                GIVE_ID
                GIVE_TYPE
                GIVE_POS
                GIVE_ROT            
                GIVE_STATUS
                GIVE_INFO
                IS_AVAILABLE
                IS_IN_USE?          
                GIVE_ACTION_LIST
                GIVE_ANIMATION_LIST
                GIVE_POSE_LIST
                            
                START_USING=$agentID
                END_USING=$agentID



    COMMUNICATION > AGENT VS RESOURCE
    -----------------------------------------------------------------------
FROM=AGENT|123654; TO=OBJECT|123654; MSG(GIVE_STATUS,GIVE_POS);
FROM=PET|123654; TO=OBJECT|123654; MSG(GIVE_STATUS,GIVE_POS);
FROM=OBJECT|123654; TO=AGENT|123654; MSG(AVAILABLE=true,POS=<1,1,1>;FOOD_LEFT=15;);
FROM=AGENT;FOOD_CONSUME;fe40bd63-bc8a-ac19-abd3-4a9cb4f9feb6;5;agentKey

AGENT^FOOD_CONSUME^fe40bd63-bc8a-ac19-abd3-4a9cb4f9feb6^5^agentKey

        AGENT>RESOURCE
            ? | !
                ^GIVE_ID
                ^GIVE_TYPE
                ^GIVE_POS
                ^GIVE_ROT            
                ^GIVE_STATUS
                ^GIVE_FOOD / ^GIVE_WATER / ^GIVE_RESOURCE_LIST         
                ^IS_AVAILABLE            
                ^START_USING
                ^END_USING
                ?FOOD_LOCATION
                ^FOOD_CONSUME
                ^WATER_CONSUME


    COMMUNICATION > AGENT VS ANIMAL
    -----------------------------------------------------------------------
    COMMUNICATION > AGENT vs STRUCTURE 
    -----------------------------------------------------------------------
    COMMUNICATION > AGENT vs AGENT
    -----------------------------------------------------------------------
        AGENT>ALL 
        AGENT>agentID   
            ? | !
            LOOKING_FOR = MATE 
            GIVE_POS
            GIVE_ROT
            ASKING_FOR = MEET, MATE, KNOWLEDGE, HELP, FOOD, WATER, 




    COMMUNICATION > AGENT vs SYSTEM
    -----------------------------------------------------------------------
        USER=key
        TO= agentID / all 
        TYPE = ! | ORDER   ,  ? | QUESTION

            GIVE_LOCALPOS
            GIVE_ID
            GIVE_STATE
            GIVE_INFO
            GIVE_VARIABLES=
            GIVE_GENOME
            GIVE_NC=name of internal notecard
            GIVE_VERSION

            SET_STATE=
            SET_AGE=
            SET_HUNGER=
            SET_ENERGY=
            SET_MOOD=
            SET_HOME_POS=
            SET_RANGE=
            SET_TITLE_MODE=
            SET_ACTION=
            SET_MATE=
            SET_GENDER=

            
            DO_POSE=
            DO_ANIMATION=
            DO_MOVE_TO_POS=
            DO_ROT=
            DO_SHOW_RANGE=
            DO_SHOW_MATE=
            DO_SHOW_ID=
            DO_ACTIVITY=
                DO_WALK_TO_POS=







===========================================================================     
BRAIN SCRIPT VARIABLES
===========================================================================     
        agentID
        age
            ageAdult
            ageOld
            ageMax
        gender
        stateCurrent
        stateLast
        mood 
            moodLast
            moodCurrent
        energy
        hunger
        jobID
        jobName


        Intentions  - Plans
            plans_active
            plans_done
            plans_fail
            plans_future

        Believes    - kb 
            kb_locations
            kb_objects          
            kb_agents                       
            kb_resources
            kb_factBase         
            kb_knowledge
            kb_blueprints
            kb_UsersLanguage
            kb_Users
            kb_commands

        Desires     - Goals     
            goals_current
            goals_done
            goals_buffer

    /////////////// BREEDING ///////////////
        partnerID
        partnerName
        partnerLastPos
        partnerAge

        ageBreedingMin 
        ageBreedingMax
        breeding_childrenCount

    /////////////// MORE-LESS SYSTEM ///////////////
        agentName
        activeRange = 10
        titleON = true

        ownerID
        ownerName
        ownerDisplayName


        homePos
        homeRot
        homeSim 

        scaleCurrent

        scaleMax 
        scaleMin
        scaleAdult                      // final scale
        scaleChild                      // start scale



        localPos = <1,1,1>;             // CURRENT POS
        localRot = <1,1,1,1>;           // CURRENT AGENT ROT

        globalPos
        globalRot

        
        listAnimations
        listPoses

        security                        // OWNER ONLY, FRIENDS, GROUP, EVERYONE, ESTATE GROUP







AGENT STATE MACHINE TABLE
=========================================================================== 

      
      { name: 'active',     from: 'init',       to: 'yellow' },
      { name: 'mining',     from: 'active',     to: 'red'    },
      { name: 'mating',     from: 'active',     to: 'active' },
      { name: 'sleep',      from: 'active',     to: 'yellow' },
      { name: 'dead',       from: '*',          to: 'green'  },
      





float   GROWTH_AMOUNT = 0.10;             // 10% size increase each day for MaxAge days
integer MaxAge = 7;                     // can get pregnant in 7 days
integer UNITS_OF_FOOD = 168;            // food bowl food qty, used by food bowl only
float   secs_to_grow = 86400;             // grow daily = 86400
float   FOOD_BOWL_SCAN_INTERVAL = 1800.0;   // look for food every 3 hours
float   fPregnancy = 172800.0;            // how many seconds to lay an egg  = 2 days or 48 hours.
float fDaysToAdult = 7;                 // 7 days to become old enough to breed.
integer SECONDS_BETWEEN_FOOD_NORMAL = 14400;    // this number of seconds to get hungry
integer SECONDS_BETWEEN_FOOD_HUNGRY = 3600;     // this number of seconds before hunger count increases
integer MAXIMUM_HUNGER = 30;            // not used, just displayed






===========================================================================     
  AGENT > TRAITS
=========================================================================== 

        TĚLO :
            BARVY
            PROPORCE
            POHLAVÍ


        PSYCHÉ
            POVAHA
            TRAITS

        vLASTNOSTI
            - vitalita
            - energie
            - hlad
            - zizen
            - teplota: zima / teplo
            - cas: noc / den
            - věk



        BIOLOGICKÉ FUNGOVÁNÍ

            - hormony ?
            - odolnost: proti chladu, bolesti, nemocem
            - 



        # TRAITS =============

        dundant or unnecessary?

            Charity: -1=greedy, +1=altruistic
            Integrity: -1=treacherous, +1=loyal
            Orthodoxy: -1=anarchist, +1=conformist
            Violence: -1=pacifist, +1=warlike
            Wit: -1=unintelligent, +1=insightful/shrewd

            Those motivations are:





Grey          - neutral: normal motion or sitting
Pink          - displaying
Red           - angry (fighting)
Orange        - frightened (screeching)
Lavender      - aroused
Purple        - mounting
Blue          - playing
Green         - grooming

grooming
: want-to-groom, partner-chosen, groom, choose-grooming-partner
–  explore
: want-new-loc, leave
life
D
grooming
C
(want-to-groom)
groom-gp
(partner-chosen
aligned-w-target)
groom
no-vert-gp (partner-overlap)
go-to-partner-edge
align-w-gp
(partner-chosen
very-near-target)
engage
get-near-gp (partner-chosen)
approach
choose-gp ()
choose-grooming-partner
wandering
C
()
get-moving
(want-new-loc
target-chosen touching-target)
forget-target
move-away
(want-new-loc
target-chosen)
leave
choose-wander (want-new-loc)
choose-isolated-place
sit ()
wait
Fig. 2.
Reactive plan supporting the coordination of the ALife agents. See text for explanation.
–  primate
: aligned-w-target, go-to-partner-edge, engage, touching-target, approach,
wait
The behavior
novelty
is not monitored or controlled by this plan, and in fact has no
impact in the primate behavior below




Plutchik’s types      Emotion types in OCC model 
-------------------------------------------------------------------------------------
Happiness               Happy-for,  Gloating,  Joy,  Pride,  Admiration,  Love,  
                        Hope, Satisfaction, Relief, Gratification, Gratitude 
Disgust                 Hate              
Anger                   Anger,Reproach, Hate 
Sadness                 Resentment,Pity,Distress,Shame,Disappointment, Remorse
Fear                    Fear, Fear-confirmed 
Surprise                By contex



    Zobrazuje:

        - food
        - water
        - energy
        - health

        - mood 

        - condition
        - activity

        - aktuální plány/přání - myšlenky








    - wandering
        - watch people (woogle)
        - graze
        - run 
        - explore
            - choose: wander to new location
            - choose: wander to know location 
        - approach 
        - forget-target
    - get-moving
    - idle
        - sleep
        - lie
        - sit
    - play
        - follow 
        - dance 
        - greet-other 
        - cheer-up
    - fight
    - eat
    - blink







Aktivities Constructed Agents
=================================================
play game (follow-the-leader)    
watch people (Woggles)
do the chute
fight
sleep
dance
blink
greet other
run away
cheer-up 



////////////////////////////////////////////////////////////////////////////////////////////////////////////////





# VIRTUAL PET ==============================================================

Example of common features

    - Responds to calling
    - Responds to touching
    - Training the pet
    - Supplies or toys for the pet
    - Dressing up the pet
    - Competition or trial amongst pets
    - Meeting other pets
    - Complaining when it needs care

 [https://en.wikipedia.org/wiki/Digital_pet]


# ODKAZY ==================================================


  * https://en.wikipedia.org/wiki/Convergent_evolution
  * https://en.wikipedia.org/wiki/Creatures_%28video_game_series%29#Creatures
  * http://web.archive.org/web/20010211102518/http://www.dreamscape.com/lummoxjr/creatures/novasubterra.html
  * http://www.salon.com/2002/01/02/grand/
  * https://stevegrand.wordpress.com/2011/03/06/introduction-to-an-artificial-mind/
  * http://my.safaribooksonline.com/1592730019/ch16

  * [[http://www.gamasutra.com/view/feature/3271/from_creatures_to_androids.php]]


nnn
https://youtu.be/JPcbwUtSy7c
http://mandara.sakura.ne.jp/Tempura-simstream2222.mp3


00: 00              //




TĚLO
    BARVY
    PROPORCE
    POHLAVÍ


PSYCHÉ
    POVAHA
    TRAITS

vLASTNOSTI
    - vitalita
    - energie
    - hlad
    - zizen
    - teplota: zima / teplo
    - cas: noc / den
    - věk



BIOLOGICKÉ FUNGOVÁNÍ

    - hormony ?
    - odolnost: proti chladu, bolesti, nemocem
    - 



# TRAITS =============

dundant or unnecessary?

    Charity: -1=greedy, +1=altruistic
    Integrity: -1=treacherous, +1=loyal
    Orthodoxy: -1=anarchist, +1=conformist
    Violence: -1=pacifist, +1=warlike
    Wit: -1=unintelligent, +1=insightful/shrewd

    Those motivations are:

    Pleasure ("kill the orcs and bring me the fine elven wine from their treasure room")
    Reputation ("kill the orcs to make me look good as mayor")
    Justice ("kill the orcs because they killed our mayor")
    Security ("kill the orcs to keep me safe")
    Conquest ("kill the orcs to clear the land for my realm's expansion")
    Wealth ("kill the orcs to free up my trade route")
    Guidance ("kill the orcs to learn how to become a better warrior")



{
  "root": {
    "genom": {
      "version": "0-01",
      "Body": {
        "limbs": {
          "ID": "02",
          "type": "HEAD",
          "attackedTo": "01",
          "color": "blue",
          "params": "on_top()"
        },
        "organ": {
          "ID": "05",
          "type": "INNER",
          "name": "HORMONE_CREATOR",
          "attackedTo": "02",
          "params": "ENDORFINE"
        }
      },
      "Traits": {
        "CHARITY": {
          "value": 0,
          "max": 0,
          "min": 0,
          "critical": 0
        },
        "INTEGRITY": {
          "value": 0,
          "max": 0,
          "min": 0,
          "critical": 0
        },
        "VIOLENCE": {
          "value": 0,
          "max": 0,
          "min": 0,
          "critical": 0
        },
        "WIT": {
          "value": 0,
          "max": 0,
          "min": 0,
          "critical": 0
        },
        "motivations": [
          "Pleasure",
          "Reputation",
          "Justice",
          "Security",
          "Conquest",
          "Wealth",
          "Guidance"
        ]
      },
      "Personality": {
        "integrity": 0,
        "integrityGoal": 100,
        "happines": 0,
        "happinesGoal": 100,
        "happinesMid": 80,
        "happinesLow": 40,
        "happinesCritical": 10
      },
      "Needs": {
        "social": {
          "value": 0,
          "max": 0,
          "min": 0,
          "critical": 0
        },
        "hunger": {
          "value": 0,
          "max": 0,
          "min": 0,
          "critical": 0
        },
        "water": {
          "value": 0,
          "max": 0,
          "min": 0,
          "critical": 0
        },
        "food": {
          "value": 0,
          "max": 0,
          "min": 0,
          "critical": 0
        },
        "energy": {
          "value": 0,
          "max": 0,
          "min": 0,
          "critical": 0
        }
      },
      "AgentAttributes": {
        "age": {
          "value": 1,
          "Adult": 4,
          "Old": 60,
          "Max": 75
        },
        "STATE_CONDITION": {
          "value": "HEALTHY",
          "history": 545405055,
          "list": [
            "DEAD",
            "HEALTHY",
            "TIRED",
            "SICK",
            "INJURED"
          ]
        },
        "STATE_ACTIVITY": {
          "value": "SLEEP",
          "history": 1126445005454,
          "list": [
            "DEAD",
            "SLEEP",
            "WANDER",
            "PET",
            "EAT",
            "FOLLOW",
            "RUN",
            "FINDING",
            "LAYING",
            "PLAY",
            "POO",
            "FIGHT"
          ]
        },
        "sex": "01",
        "mood": "PLAYFULL"
      },
      "Matting": {
        "charismaAgent": 60,
        "charismaSeeking": 60,
        "seekingTimeout": "20m",
        "seekingAgeMax": "AGE_OLD",
        "seekingAgeMin": "AGE_ADULT",
        "activity": "LOW"
      },
      "Breeding": {
        "breedPause": "60m",
        "breedChance": 1.9,
        "deadChange": 0.6,
        "countChilds": 0,
        "coundMax": 12,
        "countCritical": 8
      }
    }
  }
}

# SPORE CREATURE EXAMPLE ===============================================================
<creature>
    <status>1</status>
    <input>500267423060</input>
    <cost>4065</cost>
    <health>3.0</health>
    <height>1.3428643</height>
    <meanness>9.0</meanness>
    <cuteness>71.26385</cuteness>
    <sense>1.0</sense>
    <bonecount>44.0</bonecount>
    <footcount>4.0</footcount>
    <graspercount>0.0</graspercount>
    <basegear>0.0</basegear>
    <carnivore>1.0</carnivore>
    <herbivore>0.0</herbivore>
    <glide>0.0</glide>
    <sprint>2.0</sprint>
    <stealth>2.0</stealth>
    <bite>3.0</bite>
    <charge>2.0</charge>
    <strike>4.0</strike>
    <spit>0.0</spit>
    <sing>1.0</sing>
    <dance>2.0</dance>
    <gesture>5.0</gesture>
    <posture>0.0</posture>
</creature>



# LIFE CYCLE ==========================================================

life cycle is modelled for the creatures:
    childhood, 
    adolescence, 
    adulthood, 
    senescence


INSPIRATION FROM CREATURES FAMOUS GAME
Norns have their own simulated biochemistry, haploid genetics, and neural network to serve as a brain. From Creatures 2 onwards, Norns also possess organs determined by their genetics;[31] mutation and injury can render these defunct, with typically fatal consequences. Each of these has grown somewhat over the course of the series, allowing the creatures to become more complex and intelligent. Norns are omnivores and eat a variety of foods, including carrots, lemons, seeds, insects, fish, honey, and other things. The Norns that the player starts with require some degree of training and discipline from the player in order to make good decisions to maintain their health; however, later on they can evolve to be more independent and hardy, with better-developed instincts and a more robust biochemistry. The player can take advantage of this to breed certain colours or traits through artificial selection, and through many generations the changes can become quite pronounced.

  * [[http://www.gamasutra.com/view/feature/3271/from_creatures_to_androids.php]]



# AGENT GENOME - JSON ====================================================================

{

  "common-info": {
    "female": true,
    "max-health": 10,
    "max-hunger": 10,
    "max-age": 10,
    "max-energy": 10,
    "max-force": 10,
    "adult-age": 10,
    "breed-pause": 10,
    "parents": {
      "father": {
        "ID": "24008",
        "name": "Joe",
        "genome": "498484556454984"
      },
      "mother": {
        "ID": "20466",
        "name": "lyra",
        "genome": "0564054056454645640"
      }
    },
    "cuteness": 77,
    "strike": 4,
    "sprint": 2
  },
  "creature-needs": {
    "energy": 100,
    "hunger": 100,
    "health": 100,
    "temperature": 100
  },
  "genome": [
    1,
    2,
    3
  ],
  "body": {
    "tall": "b",
    "size": "d"
  },
  "String": "Hello World"
}
---------------------------------------------------------------------------

C2 COBs on Jimbo's Creatures - If you're looking for great COBs for Creatures 2, then check out Jimbo's Creatures. Jimbo seems to be updating his website almost daily with lots of new, groovy COBs created by Mr Nstuff, JayD and many others. Take a look at the Albian Cactus Critter, move buttons for submarines and rowing boats, room number locator, lava lamp, cactus organizer and many, many more.

Lummox's Nova Subterra Norns - These highly intelligent Norns are the result of Project Gemlode that has been in the works for 4 months. The Nova Subterra Norns have 14 brain lobes, that's an extra 4 lobes compared to normal C2 Norns. These new lobes are the search, sub-attention, afterdrive, and change lobes. The Norns also have two additional chemicals, SeaASH1 and SeaASH2, which are used in the search and sub-attention lobes. Although it's perfectly safe to interbreed your Nova Subterra Norns, Lummox doesn't advise you interbreed them with other third party breeds as they are likely to die before their time. 


=========================================================================== 
    ACTIVITIES - ACTIVITY
=========================================================================== 


list    activities = [ "wander", "idle", "play",  "eat",  "fight",   ];

list aktivities = [ "play", "woggles", "fight", "sleep", "dance", "blink", "greet-over", "run-away", "cheer-up"];

        - wandering
            - watch people (woogle)
            - graze
            - run 
            - explore
            - choose: 
                - want-new-loc:     wander to new location
                - choose-isolated-place 
                - 
            - approach 
            - forget-target
        - get-moving
        - idle
            - sleep
            - lie
            - sit
            - wait
        - play                     happines++ social++ energy--
            - follow 
            - dance 
            - greet-other 
            - cheer-up
        - fight 
            - engage
            - leave 
            - forget-target 
            - follow-target

        - eat
        - blink

events:
    onHunger        activity-to: eat
    onHappy
    onLowEnergy
    onAttack
    onDetectAvatar
    onOrder
    onIntentionDone
    onPosition

triggers:
    LowEnergy
    lowFood
    lowHappines

movement-type:
    approach
    move-away
    want-new-loc
    choose-wander 
    choose-isolated-place
    move-to-taget
    move-to-person
    run
    graze
    watch

Desires list:
    want-wander
    want-explore
    want-eat
    want-new-location 
    want-dance
    want-follow 
    want-greet
    want-sleep
    want-sit
    want-leave
    want-watch-people
    want-cheer-up

???





Intentions:
eat=|find-object:bowl|move-to: bowl|eat
eat:9:{find-object(bowl)|move-to(bowl)|eat}
wander:6:{choose:explore{want-new-loc,move-to-taget},watch-people{}}
?
run-away


stateList:
    name, group, parent name, Accuracy, min-mood, from, to, affect

basic commands:
    move-to
    choose
    find-object
    go-home
    follow 
    move-to-taget


knowledge-base:
home:LOCATION:
breezy:avatar:friend,owner
karel:avatar:enemy






// FRAMES FACTS KB - QUICK SEARCH LIST          // TYPE( OBJECT, RELATION ), IS, HAVE, IS-PART, SIMILAR-TO, DOMAIN-CATEGORY, DESCRIPTION, PARENT-OBJECT, ATTRIBUTES( )
 var relationType = {        
             SIMILAR : 0,
             DOMAIN_CATEGORY:1,
             HAVE:3,
             IS:4,
         };



// FACTS - CONTS


// FACTS - RECORDS

var knowledgebase_facts = {

    type : ['thing', 'feature', 'dna', 'expressions'],

    cast : {
        dna : Array,
        expressions : Array
    },

    indexes : ['id', 'population_id'],

    facts : [
        {
            dog : type(OBJECT);        // TYPE( OBJECT, RELATION ), IS, HAVE, IS-PART, SIMILAR-TO, DOMAIN-CATEGORY, DESCRIPTION, PARENT-OBJECT, ATTRIBUTES( )
            relation: [ IS, IS-

                ],
            IS-PART : nature;
            SIMILAR-TO : [ wolf, fox, wild-dog ]
            "attributes": [ 
                        { IS : "animal"},
                        { HAVE : "fur" },
                    ],
            IS: [ 
                        { animal, canine, being, },
                        { HAVE : "fur" },
                    ],                    
            "sister-term" : [ {"canine"},{"wolf"},{"animal>domestic"},{"bitch"},{"wild--dog"},  ]
        }
    ],

};

const dog = {
    attributes: ['graph:source', 'graph:reference', 'graph:output'],
    IS: ['animal:object', 'canine:object', 'live:feature', 'being', 'organism'],
    PART_OF: ['nature'],
    HAVE: ['fur', 'body', 'tail', 'head', 'legs{4}', '', '', ],
    SIMILAR_TO: ['graph:output', 'graph:fallacy'],
    DOMAIN_CATEGORY: [ 'animal','organism',],

}


    being = {
        attributes: [ 'existent|existing', ],
        IS: [ 'life' ,'living', ]
        antonym: [ 'nonbeing', 'nonexistence' ],

        },

    life → (alive ┌ dead)

    human = {
        IS|PART_OF: [world, human race, humanity, humankind, human beings, humans, mankind, man],
        HAVE: [ human body, physical body, material body, aem, hand, facesoma, build, figure, physique, anatomy, shape, bod, chassis, frame, form, flesh ]
        attributes: [
                { 'needs' : [ nutrition, air, food, warm, water ] },
                { ''}
            ],






====================================================================================================






# TRAITS
Adventurous
Aggresive
Clueless
Destructive
Friendly
Genius
Hunter
Hydrophobic
Hyper
Independent
Lazy
Like Swimming
Loyal
Noisy
Non-Destructive
Playful
Proud
Quiet
Shy
Skittish



# ACTIVITIES

be_ill
chase
chase
chase
complain_for
complain_for_food
cover_eyes
crouch
dance_with_paws
eye_contact
faint
faint
give_me_ball
glad
handshake
head_down
head_down
head_down
hide_head
hide_head
hit_dead
hit_ground
hug_me
hug_me
hurrah
kick
lean
lie
lie
look_around
look_around
look_around
look_away
look_away
mouth_open
move_backward
move_backward
neat
observe
once_again
once_again
piggy
piss
recharge
refuse
resit
resit
rest
rest
roar
roar
roar
rumple
search_looking_around
search_wandering
search_wandering_colect
shake_arm_and_leg
shake_arms
shake_head
show_me_face
show_me_face
sleep
snooze
stop
stretch
touch
touch
tremble
turn_and_ingore
turn_and_ingore
weep
yawn


=================================================================================================================
=================================================================================================================
=================================================================================================================
=================================================================================================================


 AI CHROMOSOMES
 =====================
Genetic algorithms work by combining, mutating, and testing a set of values on a problem
space. Te chromosome contains those values. In our case, a sample chromosome might
look like the following:

	Aggression = 0.5, LimbicBrainValue = 0.2, SpaceGain = 0.2, Seek_Pie = 1.0
	
	Or encoded, this would be: 0.5|0.2|0.2|1.0.

Te key with encoding is to create a ﬂexible enough data structure that makes it easy to
import values into the reptile brain
Because this isn’t a structure needed fsor performance
compactness isn’t as important as readability and exportability. DSictionaries work well
here, and a few small variables let the chromosome keep some information about itself.
In our chromosome, we stored the following:

	Genes (Dictionary[string, ﬂoat]) → Tese values will get changed and mutated.

	Best & Worst Score (Float) → Indicators of the range of ftness.

	Total games (Integer) → How many games has this chromosome played.

	Total Sore (Float) → Combined ftness of all games played.

	Average Score (Float) → Could be calculated, but occasionally nice to have around.

	several conflicting goals



			Table 3. FAtiMA-PSI Goal attributes
			Attributes 				Description
			---------------------------------------------------------------------------------------------
			ID 						The goal identifier or name
			PreConditions 			A list of conditions that determine when the goal becomes active
			SuccessConditions 		A list of conditions used to determine if the goal is successful
			FailureConditions 		A list of conditions that determine the goal failure
			EffectsOnDrives 		Specifies the effects that the goal will have on the agent’s energy,
									integrity and affiliation drives if the goal succeeds
