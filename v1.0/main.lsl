//en la mision 1 al agarrar la mascara ir bajando automaticamente
//22/33/37 --tabla chest
//--arena
key owner;

string inf = "PaleoQuest Hack/Cheat Engine by ErikV7";
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
float X2_SPEED = 10.5;

string text1 = "[INFO] ";
string text2 = " selected.";
string text3 = "Mision ";
string text4 = "Clickie el teleporte.";
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
    <75.0, 208.0, 58.0>,
    <0,0,0>
];

list X2_RG = [
    <132,168,200>,
    <138.24470, 98.12054,200>,
    <135.53500, 95.63962, 44.86023>,
    <0,0,0>
];

list X3_RG = [
    <143.84000, 195.53570, 44.45438>
    ,<143.82850, 187.68950, 44.37539>
    ,<143.82170, 183.40260, 43.10138>
    ,<143.81540, 179.70390, 40.57499>
    ,<143.92980, 175.52130, 37.59807>
    ,<143.84090, 172.08020, 35.19834>
    ,<143.84390, 168.51590, 32.70452>
    ,<143.34420, 164.70780, 31.61567>
    ,<140.47820, 162.88360, 31.22775>
    ,<135.36170, 160.91550, 31.43949>
    ,<131.74530, 160.00130, 31.46530>
    ,<125.56330, 159.94000, 31.38231>
    ,<120.99460, 160.20460, 32.05972>
    ,<117.74870, 162.72030, 33.80370>
    ,<116.62820, 166.16690, 35.68995>
    ,<115.98560, 170.12180, 37.67257>
    ,<114.29010, 173.77560, 38.92477>
    ,<112.79820, 174.30520, 39.60540>

    ,<110.00110, 178.04950, 40.05676>
    ,<109.78100, 182.41050, 43.10867>
    ,<109.01720, 185.97690, 45.10758>
    ,<106.92920, 190.32410, 46.58311>
    ,<104.37190, 195.92330, 47.46704>
    ,<101.17100, 202.31510, 48.33265>
    ,<97.74902, 209.00070, 49.77931>
    ,<94.18574, 214.29540, 51.71970>
    ,<90.65719, 218.14770, 54.47631>
    ,<87.02668, 221.61430, 57.30750>
    ,<86.04644, 221.91250, 59.68050>
    ,<86.83653, 224.38960, 64.96246>
    ,<84.47817, 223.98480, 67.54492>
    ,<83.42700, 224.25020, 70.35350>
    ,<79.28194, 225.14830, 76.06407>
    ,<79.28194, 225.14830, 80.06407>
    ,<79.28194, 225.14830, 86.06407>
    ,<81.87205, 222.33840, 89>
    ,<76,229,91>,
    <0,0,0>
];

list X3_RG1 = [
    <108.95410, 174.35630, 40.10312>
    ,<108.40030, 167.90600, 38.50663>
    ,<107.61000, 161.25250, 36.54779>
    ,<103.71690, 157.23510, 36.62732>
    ,<100.95850, 155.92200, 26.65405>
    ,<96.39584, 152.86390, 26.30483>
    ,<91.46626, 149.67870, 25.86415>
    ,<86.02652, 145.54460, 24.11540>
    ,<80.63638, 142.64320, 24.10796>
    ,<75.50500, 140.57220, 24.60662>
    ,<70.92320, 139.91840, 24.77701>
    ,<65.17085, 139.51670, 24.79299>
    ,<61.14621, 142.15780, 25.02567>
    ,<58.89279, 146.79530, 24.86998>
    ,<56.40110, 151.88520, 24.91568>
    ,<54.25420, 157.22280, 25.14917>
    ,<55.51469, 162.85660, 24.89863>
    ,<56.49632, 168.34200, 24.86642>
    ,<58.09291, 170.21900, 24.83716>
    ,<0,0,0>
];

list X3_RG2 = [
    <88.59565, 179.53740, 24.32866>
    ,<91.20442, 174.28830, 24.35065>
    ,<93.36200, 169.32890, 23.87472>
    ,<95.56005, 164.07920, 21.37090>
    ,<98.09425, 158.51770, 19.71022>
    ,<101.13230, 151.95860, 19.74773>
    ,<103.01420, 147.83020, 21.19850>
    ,<104.49030, 144.38820, 22.94032>
    ,<105.74000, 140.13400, 24.01546>
    ,<106.90400, 134.67210, 23.86416>
    ,<107.51230, 128.06160, 24.71464>
    ,<101.53700, 125.83770, 25.37147>
    ,<98.55225, 124.54350, 25.12312>
    ,<93.62211, 121.98930, 25.12312>
    ,<89.62265, 119.90070, 25.20727>
    ,<85.43815, 117.86490, 27.34381>
    ,<80.94273, 115.69280, 29.49443>
    ,<79.31570, 114.60020, 32.44046>
    ,<78.04038, 113.93480, 32.39785>
    ,<0,0,0>
];

list X3_RG3 = [
    <112.60060, 174.62760, 40.03616>
    ,<115.78630, 172.94140, 38.29955>
    ,<117.06120, 169.52150, 37.34637>
    ,<117.13200, 166.08570, 35.50599>
    ,<118.11420, 163.18670, 33.76733>
    ,<119.98100, 160.28200, 32.86390>
    ,<124.99340, 159.40930, 31.45237>
    ,<127.20470, 159.74620, 31.37331>
    ,<130.73070, 159.96240, 31.44472>
    ,<133.37870, 160.54480, 31.46365>
    ,<136.71720, 162.94840, 31.43031>
    ,<138.80300, 164.86390, 31.55889>
    ,<139.56620, 165.32190, 31.62335>
    ,<143.78100, 166.27050, 31.62569>
    ,<145.28620, 168.76420, 32.88470>
    ,<144.90780, 171.60900, 34.87916>
    ,<144.81450, 174.28050, 36.78516>
    ,<144.70810, 177.31570, 38.85463>
    ,<144.59150, 180.70100, 41.25279>
    ,<144.54490, 183.80730, 43.38408>
    ,<144.53610, 187.56430, 44.41003>
    ,<144.52530, 192.58210, 44.40237>
    ,<144.51650, 195.11770, 44.41003>
    ,<0,0,0>  
];

list X4_RG = [
    <106.33070, 53.68723, 44.16052>
    ,<108.99670, 50.12983, 44.13153>
    ,<112.06610, 46.77153, 41.02848>
    ,<116.27090, 42.59649, 36.12096>
    ,<119.47900, 39.40088, 32.93444>
    ,<123.79540, 35.82502, 31.35408>
    ,<129.29740, 34.97192, 32.21192>
    ,<134.36830, 35.60064, 33.23233>
    ,<139.13920, 38.06906, 33.16806>
    ,<143.62200, 41.01395, 32.64172>
    ,<148.38640, 43.49836, 32.08584>
    ,<153.18140, 45.90866, 31.79411>
    ,<160.99600, 49.66907, 31.32939>
    ,<164.35780, 53.81478, 31.26376>
    ,<164.64340, 59.67519, 31.27951>
    ,<164.82880, 65.57690, 31.27418>
    ,<168.06160, 70.09481, 31.26733>

    ,<161.39700, 78.46170, 31.27284>
    ,<154.91260, 80.86224, 31.73977>
    ,<154.07600, 81.55031, 32.39440>
    ,<152.02590, 84.63282, 31.03145>
    ,<151.34170, 87.11840, 27.64611>
    ,<150.05430, 88.09851, 24.85746>

    ,<153,91,27>

    ,<153.89560, 94.46835, 22.65027>
    ,<149,99,22>
    ,<146,104,23>
    ,<143,110,23>
    ,<138,115,23>
    ,<135,119,23>

    ,<130,122,23>
    ,<130,122,22>

    /////////////
    ,<127.70430, 123.42350, 22.58329>
    ,<123.54990, 125.42250, 22.66633>
    ,<121.74170, 126.35850, 22.98024>
    ,<117.09810, 128.27460, 22.62252>
    ,<110.61600, 129.48120, 22.93392>
    ,<103.21390, 129.64180, 22.89996>
    ,<98.13974, 127.74510, 22.36078>
    ,<94.09966, 122.87770, 22.33778>
    ,<89.81423, 117.60440, 22.48219>
    ,<86.10242, 111.60470, 22.42946>
    ,<81.97871, 105.39390, 22.72470>
    ,<79.81818, 102.84540, 22.62274>
    ,<73.71002, 96.21253, 22.79998>
    ,<70.44532, 93.36118, 22.98004>
    ,<67.40791, 90.87772, 22.66933>
    ,<63.48560, 87.66967, 22.22668>
    ,<59.73510, 84.22089, 22.42650>
    ,<51.71245, 77.84937, 22.93600>
    ,<47.23672, 75.31877, 22.90889>
    ,<44.60305, 72.78293, 22.73243>
    ,<41.03189, 72.23434, 26.24141>
    ,<40.96428, 68.17561, 26.15947>
    ,<40.34172, 64.51528, 26.09992>
    ,<39.50013, 61.04712, 26.03232>
    ,<38.20676, 57.40286, 24.46040>
    ,<36.43009, 53.36425, 23.93234>
    ,<34.95967, 50.73720, 22.80630>
    ,<33.13110, 46.46725, 21.39855>
    ,<31.42579, 44.29631, 21.39855>
    ,<30.01864, 42.57525, 21.39855>
    ////////

    ,<0,0,0>
];

list X4_RG2 = [
    <164.46070, 64.27122, 31.26733>
    ,<164.98290, 58.82456, 31.26733>
    ,<165.28540, 53.14528, 31.39428>
    ,<162.43540, 48.62593, 31.34687>
    ,<157.70100, 45.90595, 31.52882>
    ,<152.60340, 43.65036, 31.90851>
    ,<147.80940, 41.30067, 32.22155>
    ,<142.84890, 39.14581, 32.90464>
    ,<137.91940, 37.08432, 33.20158>
    ,<132.72710, 35.04110, 32.75866>
    ,<127.29140, 34.59353, 31.78606>
    ,<122.85700, 35.27712, 31.55479>
    ,<119.17530, 38.26922, 32.50477>
    ,<116.44660, 41.04040, 35.24057>
    ,<113.67040, 43.77537, 37.96456>
    ,<111.00750, 46.39946, 40.57642>
    ,<108.17410, 49.19075, 43.35494>
    ,<104.80670, 52.51311, 44.14566>
    ,<101.01960, 56.46041, 44.14566>
    ,<0,0,0>
];

list X5_RG = [
    <70.39618, 135.05840, 43.80316>
    ,<72.61140, 136.77280, 43.77277>
    ,<74.30286, 138.06580, 43.71659>
    ,<76.03869, 139.41200, 41.99319>
    ,<78.71398, 141.47800, 38.97456>
    ,<81.49541, 143.66230, 36.46643>
    ,<83.47952, 145.18320, 34.90347>
    ,<86.68113, 147.21290, 33.11848>
    ,<90.00478, 148.91960, 30.98581>
    ,<93.30963, 150.31360, 30.91111>
    ,<97.97467, 152.01780, 30.70438>
    ,<103.23860, 154.15710, 30.86770>
    ,<108.29070, 156.22370, 30.90215>
    ,<113.70780, 156.32310, 30.96559>
    ,<118.17810, 153.29760, 30.86486>
    ,<122.23420, 151.11070, 31.05169>
    ,<130.33020, 152.15600, 31.52749>
    ,<134.39880, 152.53150, 31.60748>
    ,<0,0,0>
];

list X5_RG1 = [
    <137.02430, 155.75560, 32.13622>
    ,<138.51060, 153.35580, 31.66108>
    ,<140.26070, 150.53230, 31.18905>
    ,<142.08350, 147.59880, 30.77538>
    ,<143.85030, 144.75800, 30.37968>
    ,<145.56940, 141.94890, 30.36817>
    ,<147.34780, 139.03990, 30.08713>
    ,<149.10530, 136.18790, 29.15060>
    ,<150.84590, 133.39160, 28.35719>
    ,<152.66330, 130.49800, 28.04091>
    ,<154.35500, 127.80570, 27.80196>
    ,<156.11380, 125.00180, 27.40787>
    ,<157.95890, 122.02940, 26.75548>
    ,<159.69700, 119.19930, 26.26954>
    ,<161.45990, 116.34870, 25.64402>
    ,<163.39910, 113.42600, 25.02815>
    ,<165.61620, 110.91620, 24.85942>
    ,<168.05950, 108.62820, 24.74073>
    ,<170.56890, 106.26480, 24.84810>
    ,<173.02590, 103.89730, 24.58793>
    ,<175.12080, 101.76510, 24.46794>
    ,<177.37370, 99.24412, 23.61777>
    ,<179.72000, 96.60994, 22.76014>
    ,<182.00580, 94.06660, 22.41607>
    ,<184.20400, 91.63577, 22.76124>
    ,<186.49130, 88.91241, 22.65521>
    ,<188.58070, 86.27271, 22.09104>
    ,<190.85260, 83.51041, 21.54026>
    ,<193.11510, 80.84332, 21.21495>
    ,<195.35960, 78.16009, 21.00861>
    ,<197.45230, 75.63243, 21.26086>
    ,<199.58460, 73.05919, 21.15764>

    ,<201.43740, 70.54178, 22.00801>
    ,<203.11700, 68.27359, 22.00300>
    ,<205.05550, 65.85287, 22.00005>

    ,<207.22590, 63.23077, 21.16336>
    ,<209.08600, 61.09668, 22.40497>
    ,<211.10980, 58.67941, 22.52069>
    ,<213.16720, 56.21572, 22.09954>
    ,<215.25210, 53.71096, 22.33008>
    ,<217.36710, 51.37151, 23.07730>
    ,<220.03150, 49.24458, 23.11249>
    ,<222.01230, 47.70410, 23.10021>
    ,<224.72020, 45.62290, 22.96317>
    ,<227.51820, 43.54395, 22.91783>
    ,<230.42190, 41.61481, 22.87374>
    ,<233.03910, 39.91177, 22.85630>
    ,<235.84690, 38.08622, 22.67066>
    ,<238.76140, 36.20195, 22.86391>
    ,<241.42660, 34.15375, 23.31812>
    ,<241.76780, 31.32317, 24.58822>
    ,<241.68740, 28.28731, 25.73878>
    ,<240.45070, 25.23414, 25.33521>
    ,<237.56800, 23.82509, 25.84630>
    ,<235.26970, 23.39517, 26.26736>
    ,<231.69180, 26.66834, 26.87507>
    ,<228.87790, 29.47585, 27.80024>
    ,<226.30380, 25.44596, 30.25912>
    ,<222.13610, 20.51753, 29.54010>
    ,<212.66210, 23.04573, 33.54337>
    ,<205.56000, 27.43641, 33.13270>
    ,<205.42280, 31.71648, 36.52414>
    ,<204.98280, 35.63380, 35.23249>
    ,<197.22800, 35.51786, 37.61471>
    ,<189.68680, 35.52944, 38.03711>
    ,<182.61010, 40.86297, 41.76402>
    ,<182.20140, 37.42768, 44.16845>
    ,<183.77460, 39.79864, 44.80467>
    ,<185.96580, 40.25813, 44.39828>
    ,<189.90180, 40.39558, 43.63609>
    ,<193.71460, 39.15561, 42.82729>
    ,<197.27370, 37.03325, 42.14081>
    ,<200.45790, 38.44848, 41.46162>
    ,<202.77380, 38.12233, 40.89918>
    ,<205.35800, 34.18313, 40.44118>
    ,<209.50630, 33.66386, 39.43681>
    ,<214.48140, 35.01682, 38.56378>
    ,<218.72010, 36.31485, 37.84420>
    ,<221.95560, 35.80148, 38.0>
    ,<224.02640, 33.37919, 38.0>
    ,<226.09620, 31.37152, 36.39725>
    ,<228.65620, 29.51390, 35.60025>
    ,<230.96810, 27.08361, 34.85199>
    ,<232.80670, 23.67239, 35.90969>
    ,<232.31660, 19.62470, 34.29228>
    ,<229.39400, 17.96422, 34.82031>
    ,<226.41120, 18.30593, 35.41694>
    ,<225.97670, 21.17680, 35.61219>
    ,<223.08770, 22.67472, 36.23219>
    ,<219.86210, 23.14472, 36.87895>
    ,<214.13940, 24.23435, 38.03803>
    ,<210.87050, 24.86438, 38.70050>
    ,<207.70880, 24.09940, 39.29923>
    ,<205.30870, 21.70237, 39.73210>
    ,<202.79070, 19.46028, 40.12114>
    ,<199.64720, 18.98771, 40.66561>
    ,<196.30660, 19.59622, 41.34159>
    ,<192.92320, 20.35974, 42.03159>
    ,<190.11000, 21.96184, 42.64545>
    ,<188.39170, 24.53193, 43.08000>
    ,<187.34810, 27.00753, 44.12300>
    ,<187.25010, 28.86639, 46.00475>
    ,<187.51420, 30.84270, 48.00010>
    ,<188.00090, 32.65334, 49.82642>
    ,<188.65100, 34.53163, 51.71714>
    ,<189.55450, 36.95944, 52.58272>
    ,<190.65760, 40.18737, 52.49365>
    ,<192.34380, 43.24530, 52.28351>
    ,<194.76200, 44.58213, 51.96954>
    ,<199.25360, 44.28617, 51.05630>
    ,<202.86270, 43.63744, 50.34901>
    ,<206.18030, 43.04130, 49.67822>
    ,<209.56850, 42.43248, 48.99328>
    ,<212.75450, 41.22409, 48.32822>
    ,<214.72550, 38.45527, 47.83711>
    ,<216.96760, 33.51873, 51.02182>
    ,<218.18090, 26.20458, 46.80281>
    ,<224.06530, 21.71114, 49.22956>
    ,<230.34510, 17.20520, 43.87731>
    ,<235.01340, 15.01763, 42.90899>
    ,<238.36250, 13.55000, 42.19904>
    ,<241.53080, 12.28146, 41.90471>
    ,<245.44740, 11.35290, 43.18304>
    ,<248.20610, 14.65158, 42.51050>
    ,<249.32730, 18.45746, 45.64432>
    ,<249.88830, 21.69612, 44.34062>
    ,<250.37090, 26.43768, 44.78385>
    ,<247.66760, 28.09766, 45.53484>
    ,<244.18630, 29.52274, 50.63076>
    ,<239.98520, 30.76476, 49.41042>
    ,<238.78880, 26.09642, 49.38054>
    ,<237.62340, 22.00676, 51.54903>
    ,<237.16490, 19.67410, 51.13557>
    ,<236.27740, 15.75807, 55.03211>
    ,<236.18490, 15.67606, 55.94376>
    ,<241.25060, 13.68652, 54.83137>
    ,<242.18290, 16.43887, 54.75290>
    ,<243.42760, 20.72202, 54.67821>
    ,<241.61350, 22.06460, 55.08553>
    ,<239.64750, 22.61835, 55.49086>
    ,<0,0,0>
];

list X5_RG2 = [
    <129.80490, 154.74200, 31.73330>
    ,<126.76880, 153.91380, 31.48357>
    ,<123.50800, 153.06300, 31.20167>
    ,<120.12190, 153.13230, 30.98949>
    ,<116.84920, 154.13640, 30.74534>
    ,<113.64750, 154.94920, 31.15942>
    ,<110.16330, 155.06030, 31.01124>
    ,<106.71630, 154.59050, 31.00235>
    ,<103.45790, 153.57960, 30.91366>
    ,<100.16720, 152.39830, 30.65909>
    ,<96.94772, 151.27110, 30.73128>
    ,<93.78695, 150.18840, 30.83976>
    ,<91.33906, 149.44180, 31.14199>
    ,<88.23915, 147.81150, 31.10113>
    ,<86.15946, 146.38860, 32.85539>
    ,<84.16008, 144.87260, 34.60741>
    ,<82.32940, 143.47320, 36.21656>
    ,<80.35722, 141.84160, 38.00465>
    ,<78.48920, 140.32840, 39.68410>
    ,<76.59283, 138.76540, 41.40084>
    ,<74.73598, 137.23500, 43.08181>
    ,<72.54607, 135.47880, 43.76814>
    ,<69.95167, 133.37190, 43.76814>
    ,<67.17587, 131.15070, 43.76814>
    ,<66.00878, 130.78830, 43.76814>
    ,<0,0,0>
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
    string regionX = llGetRegionName();
    llTargetOmega(<0.1,0.0,0.0>,TWO_PI,0.1);
    if(llKey2Name(owner)!="Reddlyy Resident")
    {
        if(llGetSubString(regionX,0,10)!="PaleoQuest " & regionX!="" & regionX!=" ")
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
        //llOwnerSay("@recvim_sec=n");
    }
    else
    {
        llOwnerSay("Bienvenido creador.");
    }
    llOwnerSay("@recvim_sec=y");

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
    X();
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
    llDialog(owner,inf+"\n"+Strings1(),
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
                llOwnerSay(text1+"OK.");

                if(MS==3)
                {
                    MS=4;
                }
                else if(MS==7)
                {
                    MS=8;
                }
                else if(MS==11)
                {
                    MS=12;
                }
                else if(MS==18)
                {
                    MS=19;
                }
                else if(MS==22)
                {
                    MS=23;
                }
                else if(MS==25)
                {
                    MS=26;
                }

                llListenRemove(Listens);
                return;
            }
            else if(message==A)
            {
                TeleportNO();
                llOwnerSay(text1+"Reseted/Started.");
                MS=0;//para cambiar a submisiones
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
                llOwnerSay(text1+"Clickear LISTO cuando obtenga la llave.");
                MS=22;
            }
            else if(MS==24)
            {
                llOwnerSay(text1+"Clickear LISTO cuando inserte la llave en el cofre y baje por el ZIPPLIN abajo");
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
            ProLAVA2(X1_Portal,X1_SPEED,1.1);
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
        if(~llListFindList(LR1,(list)region) && MS!=-1)
        {
            if(MS!=-1)
            {
                ProLAVA2(X2_RG,X1_SPEED,1.1);
                MS=100;
            }
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
                    ProLAVA2(X3_RG,X2_SPEED-8.5,1.1); //7.0 OK
                }
            }
            else if(MS==2)
            {
                llOwnerSay(text1+"Clickie LISTO cuando tenga la mascara.");
                MS=3;
            }
            else if(MS==4|MS==5)
            {
                ProLAVA2(X3_RG1,X2_SPEED-8.5,1.1);
                MS=5;
            }
            else if(MS==6)
            {
                llOwnerSay(text1+"Clickie LISTO cuando pase este conducto.");
                MS=7;
            }
            else if(MS==8|MS==9)
            {
                ProLAVA2(X3_RG2,X2_SPEED-8.5,1.1);
                MS=9;
            }
            else if(MS==10)
            {
                llOwnerSay(text1+"Clickie LISTO cuando haya puesto la mascara.");
                MS=11;
            }
            else if(MS==12|MS==13)
            {
                if(MS==12)
                {
                    llOwnerSay(text1+"En unos momentos sera llevado a la otra region..");
                    llSleep(5.0);
                    MS=13;
                }
                if(MS==13)
                {
                    ProLAVA2(X3_RG3,X2_SPEED-8.5,1.1);
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
                ProLAVA2(X4_RG,X2_SPEED-8.0,1.1);
                MS=16;
                if(finalmeta==ZERO_VECTOR)
                {
                    llStopMoveToTarget();
                    ResetV();
                    MS=17;
                }
            }
            else if(MS==17)
            {
                llOwnerSay(text1+"Clicke LISTO cuando agarre el diente.");
                MS=18;
            }
            else if(MS==19|MS==20)
            {
                ProLAVA2(X4_RG2,X2_SPEED-8.0,1.1);
                MS=20;
            }
        }
        else if(~llListFindList(LR4,(list)region))
        {
            if(MS==0|MS==20|MS==21)
            {
                ProLAVA2(X5_RG,X2_SPEED-8.0,1.1);
                MS=21;
            }
            else if(MS==23|MS==24)
            {
               ProLAVA2(X5_RG1,X2_SPEED-9.0,1.1);
               MS=24;
            }
            else if(MS==26|MS==27)
            {
                ProLAVA2(X5_RG2,X2_SPEED-8.0,1.1);
                MS=27;
            }
        }
        else if(~llListFindList(LR5,(list)region))
        {
            //Pasar al otro script
        }
        else if(~llListFindList(LR6,(list)region))
        {
            //Pasar al otro script
        }
    }
}