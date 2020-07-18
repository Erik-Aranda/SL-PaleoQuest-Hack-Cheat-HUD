// Copyright (C) ErikV7 - https://github.com/Erik-Aranda

key notecardQueryId;
key owner;

string inf = "PaleoQuest Hack/Cheat Engine by ErikV7";
string name = "HPV1.05 - ErikV7 Hud's";
string MAINTEXTURE = "8c58522d-f1a8-19a9-c4a0-d7d96c3e81f4";

vector finalmeta;
vector color = <0.565,0.612,0.753>;

integer notecardLine;
integer A_TG;
integer Listens;
integer MS;

float PULSE = 0.8;
float xs = 0.4;
float TIME_DELAY_SECONDS_PASS_REGIONS = 8.0;
float X1_SPEED = 0.044444444;
float X2_SPEED = 10.5;

string enganche;
string notecard_name = "vectors";
string text1 = "[INFO] ";
string text4 = "Click the 'TELEPORT'.";
string text5 = "Click 'READY' when ";
string A = "ST/RST";
string B = "READY";
string C = "STOP";
string D = "+MDump";
string E = "+MSelect";
string I = "+GetPos";

//Cameras:
string F = "<< Back";
string H = "[STOP]";
string J = "Next >>";
//////////

list PARK = ["Portal Park 1","Portal Park 2"];
list LR1 = ["PaleoQuest A1","PaleoQuest B1","PaleoQuest C1"];
list LR2 = ["PaleoQuest A2","PaleoQuest B2","PaleoQuest C2"];
list LR3 = ["PaleoQuest A3","PaleoQuest B3","PaleoQuest C3"];
list LR4 = ["PaleoQuest A4","PaleoQuest B4","PaleoQuest C4"];
list LR5 = ["PaleoQuest A5","PaleoQuest B5","PaleoQuest C5"];
list LR6 = ["PaleoQuest A6","PaleoQuest B6","PaleoQuest C6"];

list vectors = [];

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

NotecardAdjust(string list_vector_name)
{
    enganche=list_vector_name;
    notecardLine=0;
    if(llGetInventoryKey(notecard_name) == NULL_KEY)
    {
        llOwnerSay("[ERROR] Notecard '" + notecard_name + "' missing or unwritten");
        llResetScript();
    }
    else
    {
        notecardQueryId = llGetNotecardLine(notecard_name,notecardLine);
        llSetTimerEvent(0.0);
    }
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

ProLAVA2(string namx,float SPEED2X,float dists)
{
    list fantasma=[];
    if(vectors==fantasma)
    {
        NotecardAdjust(namx);
    }
    else
    {
        finalmeta=llList2Vector(vectors,A_TG);
        if(finalmeta==ZERO_VECTOR)
        {
            llStopMoveToTarget();
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
}

Server()
{
    llSetMemoryLimit(65535);
    llScriptProfiler(PROFILE_SCRIPT_MEMORY);
    llOwnerSay(text1+inf+" - Started.");
    llOwnerSay(text1+"Remember to have 'Always Run' Enabled and 'RLV' Enabled.");
    llOwnerSay(text1+"Activate 'CTRL + R' (Running)");
    owner = llGetOwner();
    string regionX = llGetRegionName();
    llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
    if(llKey2Name(owner)!="Reddlyy Resident")
    {
        if(llGetSubString(regionX,0,10)!="PaleoQuest ")
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
        }
    }
    llOwnerSay("@recvim_sec=y");
    llOwnerSay("@detach=y");
    llOwnerSay("@remoutfit:alpha=y");
    llOwnerSay("@clear");
    llSetLinkPrimitiveParamsFast(LINK_SET,[PRIM_POSITION,<0.00000, -0.41529, -0.12672>]);
    llSetObjectName(name);
    llSetTimerEvent(0.0);
    llSetText("",color,1.0);
    llSetScale(<0.1,0.1,0.1>);
    llListenRemove(Listens);
    llSetTexture(MAINTEXTURE,ALL_SIDES);
    llSetColor(color, ALL_SIDES);
    llResetTime();
    Listens = llListen(1,"",owner,"");
    llRequestPermissions(owner,0x4|0x10|0x20|0x400|0x800|0x8000);
    llOwnerSay(text1+"HUD System Ready.");
    X();
}

string Strings1()
{
    return(
    "\nScript '"+name+"'- Memory: "+(string)llGetUsedMemory()+" to 65535"+
    "\nButtons Commands Allowed to /1"
    );
}

X()
{
    llListenRemove(Listens);
    Listens = llListen(1,"",owner,"");
    llDialog(owner,inf+"\n"+Strings1(),
    [
    A,
    B,
    C,
    D,
    E,
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
        if(level & CONTROL_FWD)
        {
            string region = llGetRegionName();
            if(~llListFindList(PARK,(list)region)|~llListFindList(LR1,(list)region))
            {
                llApplyImpulse(<PULSE,0,0>,TRUE);
            }
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
            llTargetOmega(<xs,0.0,0.0>,TWO_PI,0.1);
            X();
        }  
    }
    listen(integer channel, string name, key id, string message)
    {
        if(llGetOwnerKey(id)==owner)
        {
            if(channel==1)
            {
                if(message==A)
                {
                    TeleportNO();
                    llOwnerSay(text1+"Reseted/Started.");
                    MS=0;//
                    enganche="";
                    vectors=[];
                    llSetTimerEvent(DEG_TO_RAD);
                    llListenRemove(Listens);
                    return;
                }
                else if(message==B)
                {
                    llOwnerSay(text1+"OK.");
                    if(MS==3|MS==7|MS==11|MS==18|MS==22|MS==25)
                    {
                        MS++;
                    }
                    llListenRemove(Listens);
                    return;
                }
                else if(message==C)
                {
                    Teleport();
                    llSetTimerEvent(0.0);
                    llStopMoveToTarget();
                    llOwnerSay(text1+"STOP.");
                    llListenRemove(Listens);
                    return;
                }
                else if(message==D)
                {
                    //LISTA DE LOS MS PARA INSERTAR
                    llListenRemove(Listens);
                    return;
                }
                else if(message==E)
                {
                    //LLTEXTBOX MS//ResetV();//MS=0;
                    return;
                }
                else if(message==F)
                {
                    //CAMARAS REGION LR4, COFRE
                    //CAMARA1 MISION COFRE: <246.88720, 196.77600, 33.04897>
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
    }
    collision(integer num)
    {
        string region = llGetRegionName();
        if(llListFindList(PARK,(list)region)==0xFFFFFFFF && llListFindList(LR1,(list)region)|llListFindList(LR3,(list)region)==0xFFFFFFFF && llListFindList(LR4,(list)region)==0xFFFFFFFF && llListFindList(LR6,(list)region)==0xFFFFFFFF)
        {
            llMoveToTarget(llGetPos()+<0,0,0.4>,2.0);
            llSleep(0.05);
            llStopMoveToTarget();
        }
    }
    timer()
    {
        string region = llGetRegionName();
        if(finalmeta==ZERO_VECTOR)
        {
            llStopMoveToTarget();
            ResetV();
            enganche="";
            vectors=[];
            if(MS==1|MS==5|MS==9|MS==13|MS==16)
            {
                MS++;
            }
            else if(MS==20)
            {
                llOwnerSay(text1+text4);
                MS=21;
            }
            else if(MS==21)
            {
                llOwnerSay(text1+text5+"get the key.");
                MS=22;
            }
            else if(MS==24)
            {
                llOwnerSay(text1+text5+"insert the key into the chest and go down with the ZEPPELIN below.");
                MS=25;               
            }
            else if(MS==27)
            {
                llOwnerSay(text1+text4);
                MS=28;
            }
            else if(MS==100)
            {
                llOwnerSay(text1+text4);
                MS=-1;
            }
        }
        if(~llListFindList(PARK,(list)region))
        {
            ProLAVA2("X1_PORTAL",X1_SPEED,1.1);
        }
        else if(llGetSubString(region,0,10)!="PaleoQuest ")
        {
            llSleep(1.0);
            Teleport();
            llStopMoveToTarget();
            integer RANDOM = random_integer(0,1);
            RLVTeleportAgent(owner,llList2String(PARK,RANDOM),0,0,0);
            llSleep(TIME_DELAY_SECONDS_PASS_REGIONS);
            TeleportNO();
        }
        if(~llListFindList(LR1,(list)region) & MS!=-1)
        {
            ProLAVA2("X2_RG",X1_SPEED,1.1);
            MS=100;
        }
        else if(~llListFindList(LR2,(list)region))
        {
            if(MS==-1|MS==1)
            {
                if(MS==-1)
                {
                    llMoveToTarget(<138,247,91>,X2_SPEED);
                    llSleep(3.0);
                    llStopMoveToTarget();
                    MS=1;
                }
                if(MS==1)
                {
                    ProLAVA2("X3_RG",X2_SPEED-8.5,1.1);
                }
            }
            else if(MS==2)
            {
                llOwnerSay(text1+text5+"have the mask.");
                MS=3;
            }
            else if(MS==4|MS==5)
            {
                ProLAVA2("X3_RG1",X2_SPEED-8.5,1.1);
                MS=5;
            }
            else if(MS==6)
            {
                llOwnerSay(text1+text5+"pass this duct.");
                MS=7;
            }
            else if(MS==8|MS==9)
            {
                ProLAVA2("X3_RG2",X2_SPEED-8.5,1.1);
                MS=9;
            }
            else if(MS==10)
            {
                llOwnerSay(text1+text5+"put the mask on the pharaoh.");
                MS=11;
            }
            else if(MS==12|MS==13)
            {
                if(MS==12)
                {
                    llOwnerSay(text1+"In a little minutes you will go to the other region.");
                    llSleep(5.0);
                    MS=13;
                }
                if(MS==13)
                {
                    ProLAVA2("X3_RG3",X2_SPEED-8.5,1.1);
                }
            }
            else if(MS==14)
            {
                llOwnerSay(text1+text4);
                MS=15;                
            }
        }
        else if(~llListFindList(LR3,(list)region))
        {
            if(MS==0|MS==15|MS==16)
            {
                ProLAVA2("X4_RG",X2_SPEED-8.0,1.1);
                MS=16;
            }
            else if(MS==17)
            {
                llOwnerSay(text1+text5+"grab/take the tooth.");
                MS=18;
            }
            else if(MS==19|MS==20)
            {
                ProLAVA2("X4_RG2",X2_SPEED-8.0,1.1);
                MS=20;
            }
        }
        else if(~llListFindList(LR4,(list)region))
        {
            if(MS==0|MS==20|MS==21)
            {
                ProLAVA2("X5_RG",X2_SPEED-8.0,1.1);
                MS=21;
            }
            else if(MS==23|MS==24)
            {
               ProLAVA2("X5_RG1",X2_SPEED-9.0,1.1);
               MS=24;
            }
            else if(MS==26|MS==27)
            {
                ProLAVA2("X5_RG2",X2_SPEED-8.0,1.1);
                MS=27;
            }
        }
        else if(~llListFindList(LR5,(list)region))
        {
            //Pasar al otro script si no hay memoria
        }
        else if(~llListFindList(LR6,(list)region))
        {
            //Pasar al otro script si no hay memoria
        }
    }
    dataserver(key query_id, string data)
    {
        if (query_id == notecardQueryId)
        {
            if (data == EOF)
            {
                llSetTimerEvent(DEG_TO_RAD);
            }
            else
            {
                ++notecardLine;
                if(data=="#"+enganche)
                {
                    enganche="OK";
                }
                else if(data=="<0,0,0>")
                {
                    enganche="";
                }
                else if(enganche=="OK")
                {
                    vectors = [(vector)data] + vectors;
                }
                notecardQueryId = llGetNotecardLine(notecard_name, notecardLine);
            }
        }
    }
}

// Copyright (C) ErikV7 - https://github.com/Erik-Aranda