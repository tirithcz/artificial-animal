integer handleListenPet;
integer handleListenControl;
key toucherID;
key ownerID;
key targetkey;
string targetname;
string toucherName;
integer dialogChannel = -66;
integer dialogChannelControl = 0;

float   timerGap = 5.0; 
integer timerMax = 2;      // in timer ticks - 12ticks per minute
integer timerCount = 0;
//======================================================================//
//=                            DWARF VARIABLES                           =//
//======================================================================//
float aSocial 	= 100.0;
float aFood 	= 100.0;
float aWater	= 100.0;
float aEnergy	= 100.0;

float integrity		= 0;
float integrityGoal	= 100;
float happines		= 0;
float happinesGoal	= 100;
float happinesMid  	= 80;
float happinesLow 	= 40;
float happinesCritical = 10;
	
integer mood = 0;
integer moodPrevious = 0;

integer stateActivity     = 0;
integer stateCondition    = 0;
integer stateMood         = 0;

string  stateActivityHistory  = "0112";
string  stateConditionHistory = "0112";
string  stateMoodHistory      = "0112";
integer stateDuration = 0;

string stateCurrent = "none";
float  stateWeight ;
string statePossible = "";

list propousalStates = [];
list state_Activity = [	"rest", 		0.8,	"any",   		"wander,play,eat,follow,rest",
						"sit", 			0.8,	"rest",   		"to:yellow",
						"lie", 			0.8,	"rest",   		"to:yellow",
						"sleep",		0.8,	"rest",   		"to:yellow",
						"wait", 		0.8,	"rest",   		"to:yellow",
						
						"wander", 		0.8,	"rest,play,wander,sleep",   		"to:yellow",
						"graze", 		0.8,	"wander",   		"to:yellow",
						"watch-people",	0.8,	"wander",   		"to:yellow",
						"explore", 		0.8,	"wander",   		"to:yellow",
						"follow", 		0.8,	"wander",   		"to:yellow",

						"play", 		0.2,	"rest,play,wander,sleep",   "to:red",
						"follow", 		0.2,	"play",   "to:red",
						"dance", 		0.2,	"play",   "to:red",
						"greet", 		0.2,	"play",   "to:red",
						"cheer-up",		0.2,	"play",   "to:red",
						

						"eat", 			0.4,	"hungry",  "to:red",
						

						"follow",  		0.35,	"from:play",     "to:yellow",
						

						"dance", 		0.2,	"play",     "		to:green" ,
						"fight", 		0.65,	"attack",  "to:green"  ];

switchState(string input, string from){
string name ;
string fromState ;
string to;
float  weight;
	stateDuration = 0;
	integer run = 1;
	integer index = 0;
llOwnerSay("test hledani " + (string)llSubStringIndex("rest,play,wander,sleep","wander") );

while(run){
	name 	= llList2String(state_Activity,(index*4));
	weight 	= llList2Float(state_Activity,(index*4+1));
	fromState 	= llList2String(state_Activity,(index*4+2));
	to 		= llList2String(state_Activity,(index*4+3));
	llOwnerSay("state: " + name + " weight: " + (string)weight + " from:"+fromState + "   to:"+to);
	if(name==input && fromState=="any") {
		stateCurrent = name;
		stateWeight  = weight;
		statePossible = fromState;
		llOwnerSay("BINGO!!!--------------");
		return ;
	}

	
	index++;
	if( index*4>llGetListLength(state_Activity) ) run=0;
	}
 }


config_parse(string str, string cardName, integer lineNum)
{
    str = llStringTrim(str, STRING_TRIM_HEAD);  // delete leading spaces
 
    // lines beginning with slash are comments -- ignore them
    if (llGetSubString(str,0,0) == "/") {
        return;
    }
 
    list ldata  = llParseStringKeepNulls(str, ["="], [""]);
    string cmd  = llList2String(ldata,0);
    string arg1 = llList2String(ldata,1);
    string arg2 = llList2String(ldata,2);
    // %%% Add more lines such as the above as needed for more arguments.
 
    // %%% Process example commands -- replace this code with meaningful stuff! %%%
    if (cmd == "foo") {
        // another Foo configured: remember it
       // Foos    += [arg1];
        //FooVals += [(integer) arg2];
    } else if (cmd == "bar") {
        //Bar = (float) arg1;
    }
 
    // this one is a good one to keep
    else if (cmd == "debug") {
        //Debug = (integer) arg1;
    }
}

// EVENTS ==============================================
onHunger(){
	llOwnerSay("TOO HUNGRY! ");
	switchState("eat","hungry");
}
onLowEnergy(){
	llOwnerSay("TOO HUNGRY! ");
	switchState("rest","none");
}
onHappy(){
	llOwnerSay("TOO HUNGRY! ");
}
onAttack(){
	llOwnerSay("TOO HUNGRY! ");
}
onDetectAvatar(){
	llOwnerSay("TOO HUNGRY! ");
}
// TRIGGERS ============================================
triggers(){
	if(aFood < 30) onHunger();
	if(aEnergy < 40) onLowEnergy();

}

updateNeeds(){
	if(stateCurrent != "eat") aFood = aFood - 0.021;
  	if(stateCurrent != "rest" || stateCurrent != "lie" || stateCurrent != "sleep" || stateCurrent != "wait" ) {
		aEnergy = aEnergy - 0.15;
	} else {
		aEnergy = aEnergy + 0.75;
	}
	if(stateCurrent == "") {}

}

heartBeat_start(){
            llSetTimerEvent(timerGap);
            timerCount = 0;            
            llOwnerSay("timer running !" );

} 


default
{
	state_entry()
	{
		handleListenControl = llListen(dialogChannel, "", toucherID, "");
		//llOwnerSay(llList2String(state_Activity,0));
		switchState("rest","");
		heartBeat_start();
	}
	touch_start(integer total_number)
	{
		
		
		llOwnerSay("statusHunger:  " + aFood);
		llOwnerSay("statusWater:  " + aWater);
		llOwnerSay("statusEnergy:  " + aEnergy);
		llOwnerSay("happines:  " + happines);
		llOwnerSay("stateActivity:  " + stateActivity);
		llOwnerSay("stateMood:  " + stateMood);
		llOwnerSay("stateDuration:  " + stateDuration);

		llOwnerSay(" " + llRound( (720 / 0.21) ));

		integer index = llRound(llFrand(100));
		float pravdepodobnost = (index * 0.3);
		llOwnerSay("\nEntropy = " + (string)index + "     "  + (string)pravdepodobnost);
	}
	collision_start(integer num)
    {

    }       	
	listen(integer channel, string name, key id, string message)
    {
        if( message == "start")
        {
			heartBeat_start();
            
        }
}
	timer()
    {
		timerCount++ ;
		if( timerCount > timerMax) {
			timerCount = 0;
		}
	stateDuration++;
	updateNeeds();
	triggers();
		integer index = llRound(llFrand(100));
		llOwnerSay("\nentropy = " + (string)index );		

	}

	
}