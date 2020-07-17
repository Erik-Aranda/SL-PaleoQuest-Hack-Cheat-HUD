key owner;

string name = "HPV1.0 - ErikV7 Hud's";
string MAINTEXTURE = "8c58522d-f1a8-19a9-c4a0-d7d96c3e81f4";

vector finalmeta;
vector color = <0.565,0.612,0.753>;

integer A_TG;
integer Listens;
integer MS;

float PULSE = 0.8;
float xs = 0.4;
float TIME_DELAY_SECONDS_PASS_REGIONS = 8.0;
float X1_SPEED = 0.044444444;
float X2_SPEED = 1.5;

string lastregion;
string text1 = "[INFO] ";
string text2 = " selected.";
string text3 = "Mision ";
string A = "RESET";
string B = "LISTO";
string C = "STOP";
string D = "MS1";
string E = "MS2";
string F = "MS3";
string G = "MS4";
string H = "MS5";
string I = "+GetPos";

list PARK = ["Portal Park 1","Portal Park 2"];
list LR1 = ["PaleoQuest A1","PaleoQuest B1","PaleoQuest C1"];
list LR2 = ["PaleoQuest A2","PaleoQuest B2","PaleoQuest C2"];
list LR3 = ["PaleoQuest A3","PaleoQuest B3","PaleoQuest C3"];
list LR4 = ["PaleoQuest A4","PaleoQuest B4","PaleoQuest C4"];
list LR5 = ["PaleoQuest A5","PaleoQuest B5","PaleoQuest C5"];
list LR6 = ["PaleoQuest A6","PaleoQuest B6","PaleoQuest C6"];

list X1_Portal = [

    <99.49020, 160.40470, 58.0>,
    <96.58038, 168.91550, 58.0>,
    <94.47966, 177.39240, 58.0>,
    <89.83400, 184.36360, 58.0>,
    <81.74136, 196.48570, 58.0>,
    <76.18853, 206.92200, 58.0>,
    <75.0, 207.0, 58.0>,//208.0

    <0,0,0>
];

list X2_RG = [

    <132,168,200>,
    <138.24470, 98.12054,200>,
    <149,6,36>,
    <149,5,36>,
    <149,0,36>,
    <149,-1,36>,
    <0,0,0>
];

list X3_RG = [
   // <109.73870, 175.16300, 39.72600>,
   // <107.37060, 190.02070, 45.81015>,
    <150,250,91>,
    <76,229,91>,
    <0,0,0>
];

Teleport()
{
    llOwnerSay("@sit=y");
    llOwnerSay("@tplocal[:0]=y");
    llOwnerSay("@tplocal=y");
    llOwnerSay("@tplm=y");
    llOwnerSay("@tploc=y");
}

TeleportNO()
{
    llOwnerSay("@sit=n");
    llOwnerSay("@tplocal[:0]=n");
    llOwnerSay("@tplocal=n");
    llOwnerSay("@tplm=n");
    llOwnerSay("@tploc=n");
}

integer random_integer(integer min, integer max)
{
    return min + (integer)llFrand(max - min + 1);
}

RLVTeleportAgent(key LLAVE,string REGION,integer X,integer Y,integer Z)
{   
    llOwnerSay("@accepttp=[:"+(string)LLAVE+"]=add");
    llSleep(DEG_TO_RAD);
    llOwnerSay("@tpto:"+REGION+"/"+(string)X+"/"+(string)Y+"/"+(string)Z+">[;0]=force"); 
}

ResetV()
{
    A_TG=0;
}

MoveTarget2(vector Pos,key WHOS,float SPEEDZX)
{
    do
    {
        llPushObject(WHOS,(Pos-llGetPos())*(llVecDist(llGetPos(),Pos)),ZERO_VECTOR,FALSE);
        llMoveToTarget(Pos,SPEEDZX);
    }
    while(llVecDist(Pos,llGetPos()) > 40.0);
    llMoveToTarget(Pos,SPEEDZX);
}

ProLAVA2(list pos,float SPEED2X,float dists)
{
    finalmeta=llList2Vector(pos,A_TG);
    if(finalmeta==ZERO_VECTOR)
    {
        llStopMoveToTarget();
        finalmeta=ZERO_VECTOR;
        ResetV();
    }
    else
    {
        MoveTarget2(finalmeta,owner,SPEED2X);
        if(llVecDist(llGetPos(),finalmeta)<=dists)
        {
            A_TG+=1;
        }
    }
}

Server()
{
    llSetMemoryLimit(65535);
    llScriptProfiler(PROFILE_SCRIPT_MEMORY);
    owner = llGetOwner();
    llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
    if(llKey2Name(owner)!="Reddlyy Resident")
    {
        llOwnerSay("@remoutfit:alpha=n");
        llSleep(0.1);
        llOwnerSay("@detach=n");
        llSleep(1.5);
        llOwnerSay("@detach=force");
        llSleep(1.5);
        llOwnerSay("@detach=y");
        llSleep(0.1);
        llOwnerSay("@remoutfit:alpha=y");

        llOwnerSay("@recvim_sec=n");
    }
    else
    {
        llOwnerSay("Bienvenido creador.");

        llOwnerSay("@recvim_sec=y");
    }
    llOwnerSay("@detach=y");
    llOwnerSay("@remoutfit:alpha=y");
    llOwnerSay("@detach=y");
    llOwnerSay("@remoutfit:alpha=y");
    llSetLinkPrimitiveParamsFast(LINK_SET,[PRIM_POSITION,<0.00000, -0.41529, -0.12672>]);
    llSetObjectName(name);
    llOwnerSay("@clear");
    llSetTimerEvent(0.0);
    llOwnerSay(">> [INFO] Recuerde de tener Always Run Enabled, RLV Enabled.");
    llOwnerSay(">> [INFO] Activar CTRL+R(Running)");
    llSetText("",color,1.0);
    llSetScale(<0.10000,0.10000,0.10000>);
    llListenRemove(Listens);
    llSetTexture(MAINTEXTURE,ALL_SIDES);
    llSetColor(color, ALL_SIDES);
    llResetTime();
    Listens = llListen(1,"",owner,"");
    llRequestPermissions(owner,0x4|0x10|0x20|0x400|0x800|0x8000);
    llOwnerSay(text1+"HUD System Ready.");
}

string Strings1()
{
    return(
    "\nScript '"+llGetScriptName()+"'- Memoria: "+(string)llGetUsedMemory()+" de 65535"+
    "\nCanal de comandos en /1"
    );
}

X()
{
    llListenRemove(Listens);
    Listens = llListen(1,"",owner,"");
    llDialog(owner,"\n"+Strings1(),
    [
    A,
    B,
    C,
    D,
    E,
    F,
    G,
    H,
    I
    ],1);
}

default
{
    state_entry()
    {
        Server();
    }
    attach(key ID)
    {
        if(ID!=NULL_KEY)
        {
            Server();
        }
        else
        {
            llDie();
        }
    }
    run_time_permissions(integer perm)
    {
        if(perm & PERMISSION_TAKE_CONTROLS)
        {
            llTakeControls(
            CONTROL_FWD |
            CONTROL_BACK |
            CONTROL_LEFT |
            CONTROL_RIGHT |
            CONTROL_ROT_LEFT |
            CONTROL_ROT_RIGHT |
            CONTROL_UP |
            CONTROL_DOWN |
            CONTROL_LBUTTON |
            CONTROL_ML_LBUTTON ,
            TRUE,TRUE);
        }
    }
    control(key id, integer level, integer edge)
    {
        if(level & CONTROL_FWD && PULSE!=0.0)
        {
            llApplyImpulse(<PULSE,0,0>,TRUE);
        }
    }
    touch_start(integer no)
    {
        if(llGetParcelFlags(llGetPos()) & 0x00000002)
        {
            llSetLinkPrimitiveParamsFast(0xFFFFFFFC,[6,llGetLocalPos()-<0,.01,.01>]);
            llSleep(0.04);
            llSetLinkPrimitiveParamsFast(0xFFFFFFFC,[6,llGetLocalPos()+<0,.019,.019>]);
            llSleep(0.07);
            llSetLinkPrimitiveParamsFast(0xFFFFFFFC,[6,llGetLocalPos()-<0,.014,.014>]);
            llSleep(0.07);
            llSetLinkPrimitiveParamsFast(0xFFFFFFFC,[6,llGetLocalPos()+<0,.005,.005>]);
            llSleep(0.04);
        }  
        llTargetOmega(<xs,0.0,0.0>,TWO_PI,0.1);
        X();
    }
    listen(integer channel, string name, key id, string message)
    {
        if(llGetOwnerKey(id)==owner & channel==1)
        {
            if(message==B)
            {
                llOwnerSay(text1+"Ready.");
                llListenRemove(Listens);
                return;
            }
            else if(message==A)
            {
                TeleportNO();
                llOwnerSay(text1+"Reseted/Started.");
                MS=0;
                llSetTimerEvent(DEG_TO_RAD);
                llListenRemove(Listens);
                return;
            }
            else if(message==C)
            {
                Teleport();
                llSetTimerEvent(0.0);
                llStopMoveToTarget();
                llOwnerSay(text1+"Stop.");
                llListenRemove(Listens);
                return;
            }
            else if(message==D)
            {
                llOwnerSay(text1+text3+"1"+text2);
                ResetV();
                MS=0;
                llSetTimerEvent(DEG_TO_RAD);
                llListenRemove(Listens);
                return;
            }
            else if(message==E)
            {
                llOwnerSay(text1+text3+"2"+text2);
                ResetV();
                llSetTimerEvent(DEG_TO_RAD);
                llListenRemove(Listens);
                return;
            }
            else if(message==F)
            {
                llOwnerSay(text1+text3+"3"+text2);
                ResetV();
                llSetTimerEvent(DEG_TO_RAD);
                llListenRemove(Listens);
                return;
            }
            else if(message==G)
            {
                llOwnerSay(text1+text3+"4"+text2);
                ResetV();
                llSetTimerEvent(DEG_TO_RAD);
                llListenRemove(Listens);
                return;
            }
            else if(message==H)
            {
                llOwnerSay(text1+text3+"5"+text2);
                ResetV();
                llSetTimerEvent(DEG_TO_RAD);
                llListenRemove(Listens);
                return;
            }
            else if(message==I)
            {
                llSay(0X0,text1+"Pos: "+(string)llGetPos());
                X();
                return;
            }
        }
    }
    collision(integer num)
    {
        llMoveToTarget(llGetPos()+<0,0,0.4>,2.0);
        llSleep(0.05);
        llStopMoveToTarget();
    }
    timer()
    {
        string region = llGetRegionName();
        if(region!=lastregion|finalmeta==ZERO_VECTOR)
        {
            finalmeta=ZERO_VECTOR;
            llStopMoveToTarget();
            llStopMoveToTarget();
            ResetV();
            if(MS==1)
            {
                MS=2;
            }
        }
        if(~llListFindList(PARK,(list)region))
        {
            ProLAVA2(X1_Portal,X1_SPEED,1.1);
            if(region==llGetRegionName())
            {
                lastregion=region;
            }
        }
        else if(llGetSubString(region,0,10)!="PaleoQuest " & region!="" & region!=" ")
        {
            Teleport();
            llStopMoveToTarget();
            integer RANDOM = random_integer(0,1);
            RLVTeleportAgent(owner,llList2String(PARK,RANDOM),0,0,0);
            llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
            TeleportNO();
        }
        if(~llListFindList(LR1,(list)region))
        {
            ProLAVA2(X2_RG,X1_SPEED,1.1);
            MS=0;
            if(region==llGetRegionName())
            {
                lastregion=region;
            }
        }
        else if(~llListFindList(LR2,(list)region))
        {
            if(MS==0|MS==1)
            {
                ProLAVA2(X3_RG,X2_SPEED,1.1);
                MS=1;
            }
            if(MS==2)
            {
                llOwnerSay("Ready");
                MS=3;
            }
        }
        else if(~llListFindList(LR3,(list)region))
        {

        }
        else if(~llListFindList(LR4,(list)region))
        {

        }
        else if(~llListFindList(LR5,(list)region))
        {

        }
    }
}