//Maya ASCII 2022 scene
//Name: Spider-Spiderling_RIG_MASTER.ma
//Last modified: Mon, Feb 28, 2022 09:52:19 PM
//Codeset: 1252
requires maya "2022";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.0.0.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Education v2004 (Build: 19041)";
fileInfo "UUID" "D54F1711-41B0-289B-42E0-00AB1DBE801D";
createNode transform -s -n "persp";
	rename -uid "DE5039C1-49F7-3A9B-03F7-C0B7F34AC1A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 246.69037813673705 21.628362165288166 36.342800884129716 ;
	setAttr ".r" -type "double3" 1.461647255465478 2238.5999999985447 5.0285172102675647e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "EAC2E4A6-4986-53A1-8BCB-D78C6859FB27";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 233.16221918645516;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 29.957167476415634 -1.0445346832275391 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C58E5433-4D15-2540-5D5F-0BB075249C78";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 35.010017724200857 1000.1 8.3283742603825814 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BFF9CDCE-4F4F-7D38-E6F6-61BCADA13390";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 150.87672378282997;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "3FF1EE7D-4335-56DF-D08A-19A03524D0EB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 24.567510407053991 13.898541156713392 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "09DF031E-46B6-A42F-2E4A-EC9749027F16";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 89.349419943026433;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "907A203E-4881-B4ED-0450-DF957F01057B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 47.833083810047881 -36.099880446582091 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "38A93857-4E49-8BC3-110A-56B2F53B78F2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 323.30377284586444;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "Base_JNT";
	rename -uid "7A0C0065-46AE-1E71-5C92-089CF82BA672";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 71.181094143165723 90 ;
	setAttr ".bps" -type "matrix" 0 0.35042901427596573 -0.93658929416984871 0 0 0.93658929416984849 0.35042901427596573 0
		 1 0 0 0 0 27.417595860271472 6.9136255462508709 1;
	setAttr ".radi" 1.0445627491065896;
createNode joint -n "Ass01_JNT" -p "Base_JNT";
	rename -uid "913C4783-4920-F98E-F490-2BA25F176383";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.361109362927032e-15 ;
	setAttr ".bps" -type "matrix" 0 0.35042901427596573 -0.93658929416984871 0 0 0.93658929416984849 0.35042901427596573 0
		 1 0 0 0 0 27.417595860271472 6.9136255462508709 1;
	setAttr ".radi" 1.0445627491065896;
createNode joint -n "Ass02_JNT" -p "Ass01_JNT";
	rename -uid "344FF007-471A-837B-4430-58A9010543FA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 37.664029303935067 7.3274719625260332e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -20.513557783042312 -90 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 -5.5511151231257827e-17 0 0 -5.5511151231257827e-17 1.0000000000000004 0
		 0 40.61616452291053 -28.362101075114175 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode parentConstraint -n "Ass01_JNT_parentConstraint1" -p "Ass01_JNT";
	rename -uid "2B4DE49F-425F-69A6-285A-E89F2DF921AE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ass01_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-16 -3.5527136788005009e-15 
		0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Ass01_JNT_scaleConstraint1" -p "Ass01_JNT";
	rename -uid "B6EE052E-488C-5E84-F847-66B9F920C44D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ass01_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Head_JNT" -p "Base_JNT";
	rename -uid "6A3B3979-4419-5978-04B2-47943992E267";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 180 3.506825078624483 ;
	setAttr ".bps" -type "matrix" -1.2246467991473535e-16 -0.40706160934378804 0.91340070407157348 0
		 0 0.91340070407157303 0.40706160934378799 0 -1 4.9850669693864045e-17 -1.1185932485801914e-16 0
		 9.5836170760142318e-35 28.441278310618181 8.4956802422412405 1;
	setAttr ".radi" 1.0445627491065896;
	setAttr ".liw" yes;
createNode joint -n "Mouth_JNT" -p "Head_JNT";
	rename -uid "317D7A2D-4380-6A3B-45B2-AD915B617C97";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.017302641707441446 0.04093207333867855 1.1058228645734327 ;
	setAttr ".bps" -type "matrix" 0.00071439938866000815 -0.38935792974823813 0.921086256642493 0
		 0.00030198798543538887 0.9210865336884293 0.38935781263651376 0 -0.99999969921833987 -2.6183360046798557e-13 0.00077560507338794423 0
		 1.3250764809947067e-18 23.788176263587726 18.936720586787828 1;
	setAttr ".radi" 1.0445627491065896;
	setAttr ".liw" yes;
createNode joint -n "MouthEnd_JNT" -p "Mouth_JNT";
	rename -uid "2B2F3F2D-484F-D441-1FB0-AF9817774513";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 12.232787901068221 -2.6645352591003757e-14 8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.955561098270479 22.914553797244299 ;
	setAttr ".bps" -type "matrix" 1 -6.0066699757465514e-17 -2.4784861663018631e-16 0
		 7.5623109879232043e-17 1 3.3771924148261482e-10 0 2.4665599424045226e-16 -3.3771950005170757e-10 1.0000000000000004 0
		 0.0087390961981297869 19.025243291378484 30.204173402884322 1;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "L_Mandible01_JNT" -p "Mouth_JNT";
	rename -uid "46BD8A7E-4270-55C3-C14F-CE920551673F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 15.575512990477884 -9.0075975324777868 -37.763349548372318 ;
	setAttr ".bps" -type "matrix" -0.15619024184157021 -0.8611280839594575 0.48380061117136441 0
		 -0.26456129356857866 0.50838806340856746 0.8194808716065356 0 -0.95163644859725305 4.7020458590432213e-16 -0.30722641439369747 0
		 11.365367332826294 20.852861715995555 26.29166000956247 1;
	setAttr ".radi" 0.71175666742251398;
	setAttr ".liw" yes;
createNode joint -n "L_Mandible02_JNT" -p "L_Mandible01_JNT";
	rename -uid "ECB9D235-49FE-3D9E-6DF2-898A9AF8A224";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 58.664099939709054 -41.245749915430771 -8.6849738389177844 ;
	setAttr ".bps" -type "matrix" -0.71345818707205777 -0.6977687998277029 0.064000916297032251 0
		 -0.69497814953610648 0.7163230430378511 0.062343160654254354 0 -0.089346443506285567 -1.4920608642051995e-16 -0.99600060895201215 0
		 10.074718022031165 13.737088317066132 30.289457298358222 1;
	setAttr ".radi" 0.78049350283444707;
	setAttr ".liw" yes;
createNode joint -n "L_Mandible03_JNT" -p "L_Mandible02_JNT";
	rename -uid "F7D08297-4C88-E656-A640-6F856B655DDC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 7.1045863974499817 5.3290705182007514e-15 2.886579864025407e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 174.87399040986679 44.248267477676706 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 -5.4178047914141327e-16 2.3592239273284576e-16 0
		 3.8857805861880479e-16 1 -4.0245584642661925e-16 0 -3.0531133177191805e-16 1.9718161026153491e-16 1.0000000000000002 0
		 5.0058926910096959 8.7797295932452393 30.744157337706451 1;
	setAttr ".radi" 0.78049350283444707;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_Mandible02_JNT_parentConstraint1" -p "L_Mandible02_JNT";
	rename -uid "14CE2871-40C6-2130-976F-8F8BF49B3235";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Mandible02_CTLW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.3290705182007514e-14 2.9309887850104133e-14 
		-1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" -4.1347210859025721e-14 -4.1347210859025721e-14 
		1.5902773407317584e-14 ;
	setAttr ".lr" -type "double3" 3.8166656177562195e-14 4.4527765540489247e-14 -1.5902773407317571e-14 ;
	setAttr ".rst" -type "double3" 8.2633159125541233 7.1054273576010019e-15 3.5527136788005009e-15 ;
	setAttr ".rsrr" -type "double3" 3.8166656177562195e-14 4.4527765540489247e-14 -1.5902773407317571e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Mandible01_JNT_parentConstraint1" -p "L_Mandible01_JNT";
	rename -uid "27629797-4E98-DB6F-5B27-959F78F98D87";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Mandible01_CTLW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.3750779948604759e-14 4.6185277824406512e-14 
		-1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" -2.2263882770244611e-14 1.7493050748049341e-14 
		-5.9635400277440928e-15 ;
	setAttr ".lr" -type "double3" 2.6239576122074008e-14 -2.1468744099878734e-14 7.9513867036587406e-16 ;
	setAttr ".rst" -type "double3" 7.9255410276406266 0.16345662818327611 -11.359659386000704 ;
	setAttr ".rsrr" -type "double3" 2.6239576122074008e-14 -2.1468744099878734e-14 7.9513867036587406e-16 ;
	setAttr -k on ".w0";
createNode joint -n "R_Mandible01_JNT" -p "Mouth_JNT";
	rename -uid "ADE4F436-49E9-D3A0-650C-F19BC38C86BF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 15.497064020889288 -8.9640641142996635 142.24890341511036 ;
	setAttr ".bps" -type "matrix" -0.15619024184156999 0.86112808395945761 -0.48380061117136408 0
		 -0.26456129356857844 -0.50838806340856679 -0.81948087160653582 0 -0.95163644859725316 -5.4275658793401825e-16 0.30722641439369724 0
		 -11.365400000000003 20.852900000000059 26.29170000000002 1;
	setAttr ".radi" 0.71175666742251398;
	setAttr ".liw" yes;
createNode joint -n "R_Mandible02_JNT" -p "R_Mandible01_JNT";
	rename -uid "46684C59-47DC-85F3-5EFD-E1942535CFAB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 58.664099939709054 -41.245749915430743 -8.6849738389177578 ;
	setAttr ".bps" -type "matrix" -0.71345818707205733 0.69776879982770323 -0.064000916297032889 0
		 -0.69497814953610693 -0.71632304303785055 -0.062343160654254687 0 -0.089346443506286455 2.3185888536080544e-16 0.99600060895201192 0
		 -10.074699999999998 13.737100000000062 30.289500000000029 1;
	setAttr ".radi" 0.78049350283444707;
	setAttr ".liw" yes;
createNode joint -n "R_Mandible03_JNT" -p "R_Mandible02_JNT";
	rename -uid "161251C9-453A-5A6A-2E8E-67BC91D4FD15";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -7.1045833250548345 1.8734564950939614e-05 1.330581380187823e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5444437451708134e-14 174.87399040986676 44.248267477676706 ;
	setAttr ".bps" -type "matrix" 1 -7.6226918033577537e-17 4.163336342344337e-17 0 -1.662234709476827e-16 -0.99999999999999989 6.0716709226696358e-16 0
		 1.3877787807814457e-16 -2.1705380320248236e-16 -1.0000000000000002 0 -5.0058900000000035 8.7797300000000611 30.744200000000031 1;
	setAttr ".radi" 0.78049350283444707;
	setAttr ".liw" yes;
createNode parentConstraint -n "R_Mandible02_JNT_parentConstraint1" -p "R_Mandible02_JNT";
	rename -uid "5189B8DA-44AE-0C2B-AA85-A9B5AD34BA53";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Mandible02_CTLW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.489954481063819e-05 -1.634195505939573e-05 
		-1.8285390659400491e-06 ;
	setAttr ".tg[0].tor" -type "double3" 2.8624992133171654e-14 -2.5444437451708134e-14 
		-3.1805546814635168e-15 ;
	setAttr ".lr" -type "double3" -3.4986101496098694e-14 3.1010408144269294e-14 3.1805546814635081e-15 ;
	setAttr ".rst" -type "double3" -8.2633480483245023 -2.108514898679914e-06 -4.7404741351897428e-05 ;
	setAttr ".rsrr" -type "double3" -3.4986101496098694e-14 3.1010408144269294e-14 3.1805546814635085e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Mandible01_JNT_parentConstraint1" -p "R_Mandible01_JNT";
	rename -uid "8BCB0685-4052-F71B-D36B-87BCB8013106";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Mandible01_CTLW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 -4.2632564145606011e-14 
		1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416640443905503e-15 -2.2263882770244617e-14 
		7.1562480332929135e-15 ;
	setAttr ".lr" -type "double3" -1.113194138512231e-14 2.2263882770244617e-14 -8.7465253740246735e-15 ;
	setAttr ".rst" -type "double3" 7.9093241098159695 0.1566430430193293 11.371101140844441 ;
	setAttr ".rsrr" -type "double3" -1.113194138512231e-14 2.2263882770244617e-14 -8.7465253740246735e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Mouth_JNT_parentConstraint1" -p "Mouth_JNT";
	rename -uid "84AF2805-4B23-157C-FFC8-18BAD4BFC937";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Mouth_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.2434497875801753e-14 4.9737991503207013e-14 
		-5.0532494855204391e-15 ;
	setAttr ".tg[0].tor" -type "double3" 4.9696166897867459e-16 2.5419589368259202e-14 
		-2.6685952892654511e-15 ;
	setAttr ".lr" -type "double3" -4.8856573453206275e-16 -2.5417648111739753e-14 2.7789716467659531e-15 ;
	setAttr ".rst" -type "double3" 11.430952809653641 5.6843418860808015e-14 -1.4012130534356726e-15 ;
	setAttr ".rsrr" -type "double3" -4.8856573453206275e-16 -2.5417648111739753e-14 
		2.7789716467659531e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Head_JNT_parentConstraint1" -p "Head_JNT";
	rename -uid "2BD8EE31-4A92-D02A-1364-C59932B7E906";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-15 -3.5527136788005009e-15 
		-2.7610131682735413e-30 ;
	setAttr ".tg[0].tor" -type "double3" 3.5311250384401269e-31 2.5444437451708128e-14 
		-8.6325673110134139e-47 ;
	setAttr ".lr" -type "double3" -1.3241718894150474e-31 -2.5444437451708128e-14 2.9402522403799634e-47 ;
	setAttr ".rst" -type "double3" -1.1230074590491119 1.5131678912708537 9.5836170760142318e-35 ;
	setAttr ".rsrr" -type "double3" -1.3241718894150474e-31 -2.5444437451708128e-14 
		2.9402522403799634e-47 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Head_JNT_scaleConstraint1" -p "Head_JNT";
	rename -uid "A231BC3C-4FC8-005A-F88D-8889E252DD96";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "L_Leg0101_JNT" -p "Base_JNT";
	rename -uid "8887A462-4F2A-7E3D-F8CC-D0BB3F72F4F7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -134.16027374867687 -47.534592728085649 105.10322915352126 ;
	setAttr ".bps" -type "matrix" 0.73768509472681298 0.54884569849350962 0.393178204206521 0
		 -0.48434481166850651 0.8359236802754012 -0.25815054554392819 0 -0.47035178794992594 -1.3625218009405415e-08 0.88247900574025473 0
		 16.709768852198341 24.094550829972345 13.63643000545531 1;
	setAttr ".radi" 1.0445627491065896;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0102_JNT" -p "L_Leg0101_JNT";
	rename -uid "8BE3EABC-46F3-580A-AF79-B3BD2D62AD0A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 7.8066367582402547 -1.2040329197774982 1.090454253588645 ;
	setAttr ".r" -type "double3" 5.1567820405388405 -0.68950181958527146 0.010590139404867657 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 33.218251926201795 -18.087237840625431 -97.921757755310452 ;
	setAttr ".bps" -type "matrix" 0.20245635100408468 -0.85878113580262205 0.47064465016365553 0
		 0.27443347095951903 0.51109400877544686 0.81453617734938888 0 -0.94005196449729422 -0.03574737729403276 0.33915251592959833 0
		 22.538878418617916 27.372710190103007 17.978954167558378 1;
	setAttr ".radi" 0.79049204210092983;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0103_JNT" -p "L_Leg0102_JNT";
	rename -uid "B2BA4442-4073-2EC1-DDAF-90A22B25F4E2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 11.586419525860707 -1.5389510541578248e-15 -2.0483597305027569e-15 ;
	setAttr ".r" -type "double3" -1.017516831170577e-28 5.4956410865907974e-14 5.6291172627506131e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.2252092363893219 -0.7418926823728379 -12.373006490107791 ;
	setAttr ".bps" -type "matrix" 0.12676614480172002 -0.94873263112786677 0.28954574623935458 0
		 0.27463918669338622 0.31405875131505223 0.90881264177762544 0 -0.95315458434847022 -0.035686066687510308 0.3003711753478851 0
		 24.884622637026155 17.422511669798673 23.432040531956435 1;
	setAttr ".radi" 0.79049204210092983;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0104_JNT" -p "L_Leg0103_JNT";
	rename -uid "191A6446-4AA2-2A32-DEB2-A5B286BFAE9A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 18.451757687117333 -5.381684952356435e-15 3.8741119790425309e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.6031134302152275 0 0 ;
	setAttr ".bps" -type "matrix" 0.12676614480172002 -0.94873263112786677 0.28954574623935458 0
		 0.3663901219727318 0.31604248849346711 0.87514308772203897 0 -0.92178556240207865 -0.0048518140990736654 0.3876697522983088 0
		 27.223680823837515 -0.083272949633993676 28.774668480900566 1;
	setAttr ".radi" 0.79049204210092983;
	setAttr ".liw" yes;
createNode ikEffector -n "effector1" -p "L_Leg0103_JNT";
	rename -uid "6085FD1C-478C-5CCA-3CCD-F0B1BFC88D18";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "L_Leg0101_JNT_parentConstraint1" -p "L_Leg0101_JNT";
	rename -uid "3CFD2236-4004-4A64-9CBC-C38957C635A8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg01_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 7.1054273576010019e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -2.3854160110976365e-14 0 -3.1805546814635168e-15 ;
	setAttr ".lr" -type "double3" -7.9513867036587935e-15 -9.5416640443905487e-15 1.9083328088781101e-14 ;
	setAttr ".rst" -type "double3" -7.4609980776505633 -0.75646265961340475 16.709768852198341 ;
	setAttr ".rsrr" -type "double3" 2.2263882770244611e-14 -5.1684013573782167e-15 1.2722218725854064e-14 ;
	setAttr -k on ".w0";
createNode joint -n "L_Leg0201_JNT" -p "Base_JNT";
	rename -uid "D05D910B-4FAD-576C-91C3-E3AF45F72C7D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -117.38651387902705 -49.107148797657864 90.872441642239551 ;
	setAttr ".bps" -type "matrix" 0.75593515533247158 0.60957078185324232 0.23871636484183245 0
		 -0.58127613074751749 0.79273164558432185 -0.18356088339395221 0 -0.30113136793709638 -2.2204460492503131e-16 0.95358266513414214 0
		 17.443656312342796 24.05430977265906 8.7594506140478146 1;
	setAttr ".radi" 0.76873540017567943;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0202_JNT" -p "L_Leg0201_JNT";
	rename -uid "3EF96DB1-44C8-8D00-A72D-1680A21CE240";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 7.9081820347167655 -0.74003707844871169 0.48212778460711392 ;
	setAttr ".r" -type "double3" -11.492652240438129 1.3442744817511594 0.049111741849937073 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 29.678666208532768 -15.182331462457018 -102.87769128017038 ;
	setAttr ".bps" -type "matrix" 0.32392599830765328 -0.87628048243916234 0.35665734776754465 0
		 0.69821077205465909 0.47580815975036728 0.53489093552032263 0 -0.63841496333280512 0.075756921869609126 0.76595510533034195 0
		 23.706711217425017 28.288255667607064 11.242853639528082 1;
	setAttr ".radi" 0.7962992158625225;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0203_JNT" -p "L_Leg0202_JNT";
	rename -uid "AD3F78BE-40D9-30FE-606A-9581B40ADFAF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 11.797207177249719 3.0625557519547663e-15 -4.9740923805242516e-16 ;
	setAttr ".r" -type "double3" 7.5584675878640527e-31 3.8816470498994695e-14 -1.7901952041044068e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.5342110852402291 1.4730011514728616 -10.765218628474825 ;
	setAttr ".bps" -type "matrix" 0.20415884053327193 -0.95136604209079301 0.23069855176964088 0
		 0.79416239333583305 0.29875069712573643 0.52920139264554866 0 -0.57238558755720914 0.075170971281380422 0.8165317288589603 0
		 27.528133329557846 17.950593270891936 15.450414262430211 1;
	setAttr ".radi" 0.7962992158625225;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0204_JNT" -p "L_Leg0203_JNT";
	rename -uid "03BC3835-4FA8-6FD5-78A0-69BB70BEEAFB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 18.858209870028549 -5.2839913001851061e-15 -1.2491666035507639e-15 ;
	setAttr ".r" -type "double3" -1.3960149553363777e-14 1.025867551233195e-15 9.9932864245308492e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 12.233959541967709 0 0 ;
	setAttr ".bps" -type "matrix" 0.20415884053327193 -0.95136604209079301 0.23069855176964088 0
		 0.65483649699505453 0.30789524442624533 0.69020988160337782 0 -0.72767323025885455 0.01015738234991119 0.68584874247055527 0
		 31.378203591155977 0.0095327859253480085 19.800975968413741 1;
	setAttr ".radi" 0.7962992158625225;
	setAttr ".liw" yes;
createNode ikEffector -n "effector2" -p "L_Leg0203_JNT";
	rename -uid "A4AEBFFA-425A-817D-5A59-DEA25D8A2BCB";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "L_Leg0201_JNT_parentConstraint1" -p "L_Leg0201_JNT";
	rename -uid "479EE907-4D7D-487A-E116-A6B70C2AE9B0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg02_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 2.385416011097638e-14 -1.9083328088781101e-14 
		9.5416640443905503e-15 ;
	setAttr ".lr" -type "double3" -1.8288189418415221e-14 1.4312496066585827e-14 -2.2841965092409572e-30 ;
	setAttr ".rst" -type "double3" -2.9073730258190373 -2.5031870838542289 17.443656312342796 ;
	setAttr ".rsrr" -type "double3" -1.8288189418415221e-14 1.4312496066585827e-14 -2.2841965092409572e-30 ;
	setAttr -k on ".w0";
createNode joint -n "L_Leg0301_JNT" -p "Base_JNT";
	rename -uid "4A299507-43F0-CD2D-AEEE-7B828A9F5F82";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -64.808768022195366 -56.023799531101396 48.177190189575853 ;
	setAttr ".bps" -type "matrix" 0.82926977867486884 0.52064144790425093 -0.20308647641017202 0
		 -0.50569763867357642 0.85377542874233914 0.1238443196751626 0 0.23786872937925907 -8.3266726846886741e-16 0.97129731163197264 0
		 18.198039931256947 24.552137600474335 4.7719943426444438 1;
	setAttr ".radi" 0.73625548409930885;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0302_JNT" -p "L_Leg0301_JNT";
	rename -uid "3614FD64-4B88-1D0F-616C-8594E6E94AFD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 6.292179194193972 -0.1839509755420958 -1.1112923411594589 ;
	setAttr ".r" -type "double3" -3.9630037547879522 0.53631562105386787 0.0060306729550156394 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -27.656810297989857 15.80972285834598 -93.906257627540086 ;
	setAttr ".bps" -type "matrix" 0.35966874841181662 -0.85360458821967877 -0.37682568700420371 0
		 0.54959579816914261 0.52016700896076928 -0.65373598755432649 0 0.75404432896925933 0.028026590215716782 0.65622531206147472 0
		 23.244635855811634 27.671054063601463 2.3919612943292181 1;
	setAttr ".radi" 0.72765713257639075;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0303_JNT" -p "L_Leg0302_JNT";
	rename -uid "D7E45F19-42C6-57A5-2579-22BFA3C5DCD4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 12.520927654243955 -3.3541192093689739e-15 -8.5643953358770178e-16 ;
	setAttr ".r" -type "double3" -3.3321743793859664e-29 -1.9293752278130405e-14 2.5476274886458292e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.7970684981146392 0.59465029862738727 -13.080461429518831 ;
	setAttr ".bps" -type "matrix" 0.21811448110435463 -0.9494197921491716 -0.22589407121038418 0
		 0.59271333386892122 0.31275915581072461 -0.74220793199113155 0 0.77531733953689375 0.027995869909451611 0.63095107122616589 0
		 27.748022234168459 16.983132769172162 -2.3262458709111922 1;
	setAttr ".radi" 0.72765713257639075;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0304_JNT" -p "L_Leg0303_JNT";
	rename -uid "003B77F4-4C0F-1AB3-CCF1-5396DE63873C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 17.898035145747794 -2.6234756848788938e-15 2.0948883931397827e-15 ;
	setAttr ".r" -type "double3" -1.3972778792308577e-14 1.0527468046639147e-15 -7.6812401802363572e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.3546331598564683 0 0 ;
	setAttr ".bps" -type "matrix" 0.21811448110435463 -0.9494197921491716 -0.22589407121038418 0
		 0.64987176729799612 0.31398199169693741 -0.69215749288655692 0 0.72807469342201259 0.0041673931238107934 0.68548513742676753 0
		 31.651842882770744 -0.0096160387822763482 -6.369305896650701 1;
	setAttr ".radi" 0.72765713257639075;
	setAttr ".liw" yes;
createNode ikEffector -n "effector3" -p "L_Leg0303_JNT";
	rename -uid "4F31C111-4998-E599-86D3-64B5B59575A9";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "L_Leg0301_JNT_parentConstraint1" -p "L_Leg0301_JNT";
	rename -uid "711F4966-461C-342B-D9B8-7883114C01CE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg03_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 
		-1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.5444437451708134e-14 1.1131941385122309e-14 
		1.2722218725854067e-14 ;
	setAttr ".lr" -type "double3" -4.7708320221952752e-15 -5.5659706925611543e-15 -3.1805546814635164e-15 ;
	setAttr ".rst" -type "double3" 1.0016891439282309 -3.4342472406390137 18.198039931256947 ;
	setAttr ".rsrr" -type "double3" -2.3854160110976374e-14 -6.3611093629270351e-15 
		-9.5416640443905487e-15 ;
	setAttr -k on ".w0";
createNode joint -n "L_Leg0401_JNT" -p "Base_JNT";
	rename -uid "073788B9-4A09-F7FE-100D-038BE942EF1F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -23.990854501718768 -36.20989192648711 16.478966653378748 ;
	setAttr ".bps" -type "matrix" 0.59074497784125912 0.48549538776236767 -0.6444490667359204 0
		 -0.32806119054261018 0.87423922839316026 0.35788493513739422 0 0.73715414020074221 -3.6082248300317588e-16 0.67572462851734549 0
		 18.952423550171098 24.906461523389765 0.67676898282477715 1;
	setAttr ".radi" 0.73218047975435108;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0402_JNT" -p "L_Leg0401_JNT";
	rename -uid "B43DACE3-4FC4-B197-A9EA-CC917CBFFC6D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 6.5666759624010389 0.19477964319604801 -0.55038058702846371 ;
	setAttr ".r" -type "double3" -7.4257696993452607 1.0894110853018615 0.019054326021846348 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -15.119641566375002 9.0968935305997825 -88.71030876297506 ;
	setAttr ".bps" -type "matrix" 0.2032714362695783 -0.85190682556496911 -0.48263390240711396 0
		 0.23827720596313373 0.52114642226461028 -0.81953058495653397 0 0.94968663058679781 0.051586501302311384 0.30892415989702321 0
		 22.362039426015922 28.264836421039885 -3.8573162304434385 1;
	setAttr ".radi" 0.82436310065509644;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0403_JNT" -p "L_Leg0402_JNT";
	rename -uid "F717555E-4E7B-C080-4D28-42A674081FF5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 12.855133040397963 1.4884164394743406e-15 -3.5527136788004777e-15 ;
	setAttr ".r" -type "double3" 5.2860512180152197e-31 2.6275228625372161e-15 -1.8043465080664914e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.7151656953793029 1.1606192510432252 -14.219567999625745 ;
	setAttr ".bps" -type "matrix" 0.11924891108882384 -0.95466850945545356 -0.27274114881739425 0
		 0.21861222083617543 0.29320625183008558 -0.93071950166998629 0 0.9684980093449882 0.051362738846898154 0.24366672926959138 0
		 24.975120782574123 17.313460840379108 -10.061639255693336 1;
	setAttr ".radi" 0.82436310065509644;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0404_JNT" -p "L_Leg0403_JNT";
	rename -uid "409DE9EC-4223-C7EA-4606-A7AA7B65FF62";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 18.129175065876922 -3.0495279894105348e-15 9.1241559213115186e-17 ;
	setAttr ".r" -type "double3" -1.3842847367871765e-14 2.1239498904975753e-15 -8.9512632239497824e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.2852801434739813 0 0 ;
	setAttr ".bps" -type "matrix" 0.11924891108882384 -0.95466850945545356 -0.27274114881739425 0
		 0.35589300882401448 0.29754748435692846 -0.88589257860253756 0 0.9268871902633673 0.0085750572572820538 0.37524206176642122 0
		 27.137005168118602 0.0061083025814134828 -15.006211290272265 1;
	setAttr ".radi" 0.82436310065509644;
	setAttr ".liw" yes;
createNode ikEffector -n "effector4" -p "L_Leg0403_JNT";
	rename -uid "7C85E3E8-463C-3E1F-4C16-5B8A2733D7B7";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "L_Leg0401_JNT_parentConstraint1" -p "L_Leg0401_JNT";
	rename -uid "3DF87D6C-46ED-0686-C445-8F9C7C340B7D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg04_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -5.3290705182007514e-15 0 ;
	setAttr ".tg[0].tor" -type "double3" 6.3611093629270351e-15 0 4.7708320221952752e-15 ;
	setAttr ".lr" -type "double3" -4.7708320221952744e-15 -5.5659706925611528e-15 -1.5902773407317576e-15 ;
	setAttr ".rst" -type "double3" 4.9613987561898441 -4.5374770338477006 18.952423550171098 ;
	setAttr ".rsrr" -type "double3" -8.3489560388417288e-15 -4.7708320221952744e-15 
		-2.3854160110976368e-15 ;
	setAttr -k on ".w0";
createNode joint -n "R_Reg0101_JNT" -p "Base_JNT";
	rename -uid "CCDDFCA3-43A0-71A1-A8B7-3DB04B051EEE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -134.1602737486769 -47.534592728085656 -74.896770846478745 ;
	setAttr ".bps" -type "matrix" 0.7376850947268131 -0.54884569849350962 -0.3931782042065205 0
		 -0.48434481166850618 -0.83592368027540143 0.25815054554392852 0 -0.47035178794992594 1.3625217398782752e-08 -0.88247900574025451 0
		 -16.709800000000005 24.09460000000001 13.636400000000002 1;
	setAttr ".radi" 1.0445627491065896;
	setAttr ".liw" yes;
createNode joint -n "R_Reg0102_JNT" -p "R_Reg0101_JNT";
	rename -uid "022C025B-4C65-85C0-B747-E28E543387C1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -7.8066269394908758 1.2040974844651648 -1.0905256785238899 ;
	setAttr ".r" -type "double3" 5.1708346035240833 -0.6913822165100314 0.010533485264041999 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 33.218251926201773 -18.087237840625409 -97.921757755310452 ;
	setAttr ".bps" -type "matrix" 0.20242607984005809 0.8587813026147102 -0.47065736632923127 0
		 0.27420251403714135 -0.51108692079776696 -0.81461840188223622 0 -0.94012587641033352 0.035844576561019192 -0.33893731401966309 0
		 -22.538900000000005 27.372700000000005 17.979000000000003 1;
	setAttr ".radi" 0.79049204210092983;
	setAttr ".liw" yes;
createNode joint -n "R_Reg0103_JNT" -p "R_Reg0102_JNT";
	rename -uid "D581F7B3-431C-FDA1-9DB1-1BA253FA2E77";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -11.58639690757874 6.9534016020611489e-06 -1.153180239299445e-06 ;
	setAttr ".r" -type "double3" 7.5286131251878186e-20 2.7475173410525368e-14 2.8145749944106028e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.2252092363896603 -0.74189268237283379 -12.373006490107793 ;
	setAttr ".bps" -type "matrix" 0.12678510637979123 0.94873253394814261 -0.28953776235337864 0
		 0.2744044031882058 -0.31404802310497354 -0.90888726621885452 0 -0.95321968103432986 0.03578293185576778 -0.30015299678100171 0
		 -24.884285914697358 17.422515375970615 23.432217780253072 1;
	setAttr ".radi" 0.79049204210092983;
	setAttr ".liw" yes;
createNode joint -n "R_Reg0104_JNT" -p "R_Reg0103_JNT";
	rename -uid "17C98578-4052-213D-6941-9DBFA560E784";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -18.451764080810985 -1.3844533768292422e-06 5.0707325893739608e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.6031134302158074 -9.2022197139490589e-16 2.7849397088336978e-16 ;
	setAttr ".bps" -type "matrix" 0.12678510637979123 0.94873253394814261 -0.28953776235337864 0
		 0.3661628160844414 -0.31604126916423186 -0.8752386579111856 0 -0.92187327161458388 0.0049492639248746029 -0.38745990227277144 0
		 -27.223699999999994 -0.083272899999990102 28.774699999999992 1;
	setAttr ".radi" 0.79049204210092983;
	setAttr ".liw" yes;
createNode ikEffector -n "effector5" -p "R_Reg0103_JNT";
	rename -uid "4CAE2446-4781-F47C-8ECC-6FB9DDD25E57";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "R_Reg0101_JNT_parentConstraint1" -p "R_Reg0101_JNT";
	rename -uid "CE592419-4B75-62D1-3C5D-A4B872416D1A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg01_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -8.8817841970012523e-15 
		3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.3854160110976374e-14 -3.1805546814635168e-15 
		-1.9083328088781101e-14 ;
	setAttr ".lr" -type "double3" -2.2263882770244614e-14 1.9083328088781104e-14 1.2722218725854062e-14 ;
	setAttr ".rst" -type "double3" -7.4609527442580301 -0.75642712227402598 -16.709800000000005 ;
	setAttr ".rsrr" -type "double3" -2.2263882770244614e-14 1.9083328088781104e-14 1.2722218725854062e-14 ;
	setAttr -k on ".w0";
createNode joint -n "R_Reg0201_JNT" -p "Base_JNT";
	rename -uid "35421321-4B6A-BDF3-B591-7FAB2086820A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -117.38651387902708 -49.107148797657885 -89.127558357760464 ;
	setAttr ".bps" -type "matrix" 0.75593515533247191 -0.60957078185324198 -0.23871636484183234 0
		 -0.58127613074751705 -0.79273164558432185 0.18356088339395271 0 -0.30113136793709661 -4.4408920985006262e-16 -0.95358266513414203 0
		 -17.443700000000003 24.054300000000005 8.7594500000000028 1;
	setAttr ".radi" 0.76873540017567943;
	setAttr ".liw" yes;
createNode joint -n "R_Reg0202_JNT" -p "R_Reg0201_JNT";
	rename -uid "00EE530A-413C-5EE2-CEA6-049427CEFEBF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -7.9081847244803569 0.73997089533239624 -0.48218911233734829 ;
	setAttr ".r" -type "double3" -11.394859109426612 1.3328449874132056 0.049839023158956761 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 29.678666208532746 -15.182331462457027 -102.8776912801704 ;
	setAttr ".bps" -type "matrix" 0.32378051063144375 0.87627845840721308 -0.35679440055404321 0
		 0.69712902572127888 -0.47591311242512663 -0.53620689189782811 0 -0.63966968228308407 -0.075118391578269716 -0.76497053852717245 0
		 -23.706700000000016 28.288300000000007 11.242900000000004 1;
	setAttr ".radi" 0.7962992158625225;
	setAttr ".liw" yes;
createNode joint -n "R_Reg0203_JNT" -p "R_Reg0202_JNT";
	rename -uid "F4131EF4-42DA-1373-8E86-B1B1ECC85C6F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -11.79723542233139 6.4999332280990529e-06 6.8684744682911969e-06 ;
	setAttr ".r" -type "double3" 1.5781193878986449e-19 -6.5405952186671897e-14 3.0283656999483739e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.5342110852402318 1.4730011514728634 -10.765218628474793 ;
	setAttr ".bps" -type "matrix" 0.20425020141803815 0.9513672374545713 -0.23061273754662309 0
		 0.79317495897924317 -0.29890435461139109 -0.53059369694958081 0 -0.57372061115927031 -0.074542379170540379 -0.81565194417633136 0
		 -27.526414771344591 17.950633121300282 15.45207880121605 1;
	setAttr ".radi" 0.7962992158625225;
	setAttr ".liw" yes;
createNode joint -n "R_Reg0204_JNT" -p "R_Reg0203_JNT";
	rename -uid "D15FAFD1-471E-1CF2-FBEE-E9BB5950210B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -18.858219590882442 2.324820474086664e-05 1.4848213139018185e-05 ;
	setAttr ".r" -type "double3" -1.3960149553363777e-14 1.025867551233195e-15 9.9932864245308492e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 12.233959541967737 -6.631381760411808e-15 -1.7332478134334444e-15 ;
	setAttr ".bps" -type "matrix" 0.20425020141803815 0.9513672374545713 -0.23061273754662309 0
		 0.65358858986206414 -0.30791221118993262 -0.69138413736666315 0 -0.72876869473297856 -0.0095105046229502221 -0.68469390232351857 0
		 -31.378199999999996 0.0095327900000086174 19.800999999999995 1;
	setAttr ".radi" 0.7962992158625225;
	setAttr ".liw" yes;
createNode ikEffector -n "effector6" -p "R_Reg0203_JNT";
	rename -uid "B61DD260-4B63-04D3-48F8-1DA43CF00B24";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "R_Reg0201_JNT_parentConstraint1" -p "R_Reg0201_JNT";
	rename -uid "15E83722-4FED-E748-CAC4-0EA426F48544";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg02_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -5.3290705182007514e-15 5.3290705182007514e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.2263882770244621e-14 -1.7493050748049341e-14 
		6.361109362927032e-15 ;
	setAttr ".lr" -type "double3" -2.5444437451708134e-14 1.9083328088781097e-14 -6.3611093629270375e-15 ;
	setAttr ".rst" -type "double3" -2.9073758753317112 -2.5031964520022463 -17.443700000000003 ;
	setAttr ".rsrr" -type "double3" -2.5444437451708134e-14 1.9083328088781097e-14 -6.3611093629270375e-15 ;
	setAttr -k on ".w0";
createNode joint -n "R_Reg0301_JNT" -p "Base_JNT";
	rename -uid "F0A29AE0-4D6C-15A3-A15D-1BB427E0BC90";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -64.80876802219548 -56.023799531101403 -131.82280981042413 ;
	setAttr ".bps" -type "matrix" 0.82926977867486884 -0.52064144790425104 0.20308647641017175 0
		 -0.50569763867357687 -0.85377542874233936 -0.12384431967516069 0 0.23786872937925785 -6.6613381477509392e-16 -0.97129731163197297 0
		 -18.198000000000004 24.552099999999999 4.771989999999998 1;
	setAttr ".radi" 0.73625548409930885;
	setAttr ".liw" yes;
createNode joint -n "R_Reg0302_JNT" -p "R_Reg0301_JNT";
	rename -uid "A294B0C5-4606-46FB-B814-8E9AC42E6FC9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -6.292225447524455 0.1838813372391872 1.1112884109180792 ;
	setAttr ".r" -type "double3" -3.994240057981334 0.54054552877976969 0.0059316387942222066 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -27.656810297989782 15.809722858346056 -93.9062576275401 ;
	setAttr ".bps" -type "matrix" 0.35961497906882978 0.85360489624847813 0.37687630322156151 0
		 0.54918341230501633 -0.52015457050081682 0.65409235008225697 0 0.75437036426303472 -0.028247192563795338 -0.65584102466521599 0
		 -23.244600000000005 27.671100000000003 2.3919599999999965 1;
	setAttr ".radi" 0.72765713257639075;
	setAttr ".liw" yes;
createNode joint -n "R_Reg0303_JNT" -p "R_Reg0302_JNT";
	rename -uid "7AA905E8-47BA-3C50-A7FE-EB814FA49CBF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -12.52094507822973 1.7677714026831381e-05 6.5037979908311172e-06 ;
	setAttr ".r" -type "double3" 4.7763425958582018e-22 -9.6466510996093613e-15 1.2738173164140486e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.7970684981146376 0.59465029862737107 -13.080461429518831 ;
	setAttr ".bps" -type "matrix" 0.2181520517877602 0.9494195667629628 0.22585873582489283 0
		 0.59228944549102847 -0.31274005791762283 0.7425542868596291 0 0.77563064345132759 -0.02821599584119466 -0.63055607404732017 0
		 -27.747304787649789 16.983150596707041 -2.3268801965234562 1;
	setAttr ".radi" 0.72765713257639075;
	setAttr ".liw" yes;
createNode joint -n "R_Reg0304_JNT" -p "R_Reg0303_JNT";
	rename -uid "051030D3-4531-E545-4077-69A54704C75A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -17.8980568651703 3.9379984855258954e-06 3.6533594993670704e-07 ;
	setAttr ".r" -type "double3" -1.3972778792308577e-14 1.0527468046639147e-15 -7.6812401802363572e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.3546331598563102 6.1292678165261387e-16 -2.1854386893568841e-16 ;
	setAttr ".bps" -type "matrix" 0.2181520517877602 0.9494195667629628 0.22585873582489283 0
		 0.64947289162824973 -0.31397966299599595 0.69253283984585234 0 0.72841927853457467 -0.0043883336870828606 -0.68511757909618765 0
		 -31.651800000000001 -0.0096160400000080415 -6.3693100000000094 1;
	setAttr ".radi" 0.72765713257639075;
	setAttr ".liw" yes;
createNode ikEffector -n "effector7" -p "R_Reg0303_JNT";
	rename -uid "7A933400-4F7C-F74F-F96A-35ADC4460B8F";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "R_Reg0301_JNT_parentConstraint1" -p "R_Reg0301_JNT";
	rename -uid "F5930229-43CC-402B-DEE5-8286CB025F35";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg03_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 0 5.3290705182007514e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.4649298781342257e-14 1.4312496066585827e-14 
		0 ;
	setAttr ".lr" -type "double3" 2.8624992133171648e-14 -1.2722218725854064e-14 -3.1780125345961132e-30 ;
	setAttr ".rst" -type "double3" 1.0016800349053696 -3.4342839786293453 -18.198000000000004 ;
	setAttr ".rsrr" -type "double3" 2.8624992133171654e-14 -1.2722218725854064e-14 -3.1780125345961132e-30 ;
	setAttr -k on ".w0";
createNode joint -n "R_Reg0401_JNT" -p "Base_JNT";
	rename -uid "6C097EDE-4BC2-1FFF-9E76-069A777396B8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -23.990854501718765 -36.20989192648711 -163.52103334662124 ;
	setAttr ".bps" -type "matrix" 0.59074497784125912 -0.48549538776236778 0.6444490667359204 0
		 -0.32806119054261018 -0.87423922839316048 -0.35788493513739456 0 0.73715414020074221 6.106226635438361e-16 -0.6757246285173456 0
		 -18.952399999999997 24.906499999999991 0.67676899999999396 1;
	setAttr ".radi" 0.73218047975435108;
	setAttr ".liw" yes;
createNode joint -n "R_Reg0402_JNT" -p "R_Reg0401_JNT";
	rename -uid "5EF5B47F-47D1-1904-440D-E4806E0C338A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -6.5666326617175201 -0.19471801776649578 0.55039484876112965 ;
	setAttr ".r" -type "double3" -7.5307006647020378 1.1047940204905407 0.018302594724268064 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -15.119641566375043 9.0968935305997665 -88.710308762975089 ;
	setAttr ".bps" -type "matrix" 0.20302215128791762 0.85190931176922891 0.48273443072491284 0
		 0.23653329243462923 -0.52106998353535561 0.82008418703722075 0 0.95017577724148505 -0.052312491618579343 -0.30729366339740227 0
		 -22.362000000000002 28.264799999999994 -3.857320000000005 1;
	setAttr ".radi" 0.82436310065509644;
	setAttr ".liw" yes;
createNode joint -n "R_Reg0403_JNT" -p "R_Reg0402_JNT";
	rename -uid "FE47AD03-4176-BDEF-BB42-C3A65051B048";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -12.855158596173656 -2.7577141292312035e-05 -7.7859655007728179e-05 ;
	setAttr ".r" -type "double3" -2.3934326930698342e-19 1.5768544339424146e-14 -1.0825960218426628e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.7151656953788947 1.1606192510432374 -14.219567999625747 ;
	setAttr ".bps" -type "matrix" 0.1194256899670508 0.95466685166148313 0.27266959294106613 0
		 0.21683225189355398 -0.29308464793668798 0.9311740780770259 0 0.96887629711674972 -0.052082544893471014 -0.24200439955247779 0
		 -24.971962456612783 17.313389130302518 -10.062946356601245 1;
	setAttr ".radi" 0.82436310065509644;
	setAttr ".liw" yes;
createNode joint -n "R_Reg0404_JNT" -p "R_Reg0403_JNT";
	rename -uid "13BB2C75-402E-A838-8DC9-A39FCCBB7514";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -18.129123362259612 1.8688831136870476e-05 4.2802478709802472e-05 ;
	setAttr ".r" -type "double3" -5.0829556047855711 -119.03637008862925 -102.74517575528897 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 0.99999999999999989 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.2852801434734857 2.2916210910715857e-16 1.6597974344045991e-17 ;
	setAttr ".bps" -type "matrix" 0.99140166578152678 -0.046763527581418343 0.12221255898538488 0
		 0.049277949028402157 0.99862946585139456 -0.017631610048798867 0 -0.12122054621708483 0.023502391825101977 0.99234732667213421 0
		 -27.136999999999997 0.0061082999999797494 -15.0062 1;
	setAttr ".radi" 0.82436310065509644;
	setAttr ".liw" yes;
createNode ikEffector -n "effector8" -p "R_Reg0403_JNT";
	rename -uid "F5C92417-445A-AFEC-B628-518C77AB1E0D";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "R_Reg0401_JNT_parentConstraint1" -p "R_Reg0401_JNT";
	rename -uid "6CE8E724-4F7B-DA57-2714-CBBECAA783F3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg04_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.0658141036401503e-14 7.1054273576010019e-15 
		7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.1131941385122312e-14 -1.2722218725854067e-14 
		-4.7708320221952752e-15 ;
	setAttr ".lr" -type "double3" -1.2722218725854067e-14 1.7655625192200634e-31 1.5902773407317584e-15 ;
	setAttr ".rst" -type "double3" 4.961412223424313 -4.5374409910477951 -18.952399999999997 ;
	setAttr ".rsrr" -type "double3" -1.2722218725854067e-14 1.7655625192200634e-31 1.5902773407317584e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Base_JNT_parentConstraint1" -p "Base_JNT";
	rename -uid "0BADDD6C-49C6-51C6-D4C2-548E0EED6F2B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Base_CTLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-16 -3.5527136788005009e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 6.3611093629270335e-15 ;
	setAttr ".lr" -type "double3" 0 0 1.6946519262080315 ;
	setAttr ".rst" -type "double3" 0 27.417595860271472 6.9136255462508709 ;
	setAttr ".rsrr" -type "double3" 0 0 1.6946519262080315 ;
	setAttr -k on ".w0";
createNode transform -n "Master_GRP";
	rename -uid "9A866388-4B15-1C7D-3E19-BB9C7812D139";
	setAttr ".rp" -type "double3" 0 -5.9164567891575885e-31 1.0658141036401503e-14 ;
	setAttr ".sp" -type "double3" 0 -5.9164567891575885e-31 1.0658141036401503e-14 ;
createNode transform -n "Master_CTL" -p "Master_GRP";
	rename -uid "E1F79147-4C9C-8161-8DEF-76B3FC100838";
createNode nurbsCurve -n "Master_CTLShape" -p "Master_CTL";
	rename -uid "EF67448A-482E-96B6-BED4-C39B96CCB8F1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Base_GRP" -p "Master_CTL";
	rename -uid "DBC7D5D8-4181-4006-A8B7-51B9D8718C64";
	setAttr ".t" -type "double3" 0 27.417595860271476 6.9136255462508718 ;
	setAttr ".r" -type "double3" 90 69.486442216957698 90 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "Base_CTL" -p "Base_GRP";
	rename -uid "36A8F05A-4440-4D22-12F2-E3926EFEF76F";
createNode nurbsCurve -n "Base_CTLShape" -p "Base_CTL";
	rename -uid "3F267510-4C94-34E3-47EC-DA90F80B0D83";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -7.6379550235211502 -10.909435668647589 
		-3.9893347784388453 -10.801699583059309 -11.684625682176801 -3.4545886117400045e-16 
		-7.6379550235211449 -10.909435668647593 3.9893347784388453 -4.1969594540699878e-15 
		-9.0379614245691844 5.641771348514883 7.6379550235211306 -7.1664871804907868 3.9893347784388453 
		10.801699583059305 -6.3912971669615732 5.6514009456484059e-16 7.6379550235211271 
		-7.1664871804907868 -3.9893347784388453 -2.488096373095492e-15 -9.0379614245691844 
		-5.641771348514883 0 0 0 0 0 0 0 0 0;
createNode transform -n "Ass01_GRP" -p "Base_CTL";
	rename -uid "02A196EE-4665-A0AB-3E20-52B7248BA95A";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "Ass01_CTL" -p "Ass01_GRP";
	rename -uid "33AE633B-43EB-E6B8-EA17-EA93D93F7E56";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "Ass01_CTLShape" -p "Ass01_CTL";
	rename -uid "C8E58C0F-40B8-68B6-E86F-23B8C4057230";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 9.8739840738253122 5.1476202010875092 
		-2.1110501299684965 7.6140595522391763 2.4619561088748743 -1.8280766450629459e-16 
		9.8739840738253122 5.1476202010875163 2.1110501299684965 15.329924503778161 11.631386876485657 
		7.7284110198065301 20.785864933730998 18.1151535518839 2.1110501299684965 29.804621388620308 
		23.245007972050203 2.99057145198626e-16 20.785864933730998 18.1151535518839 -2.1110501299684965 
		15.329924503778161 11.631386876485657 -7.7284110198065301 0 0 0 0 0 0 0 0 0;
createNode transform -n "Head_GRP" -p "Base_CTL";
	rename -uid "D0BD62C2-4F5C-818D-39B3-2092E9F0B138";
	setAttr ".t" -type "double3" -1.1230074590491101 1.5131678912708537 -2.4491263967149566e-31 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 3.506825078624483 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.0865519508514615e-16 3.326194017871527e-18 -1.642146637880645e-47 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "Head_CTL" -p "Head_GRP";
	rename -uid "6476E41C-4E4D-1C28-8408-9CBFEFAA4455";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "Head_CTLShape" -p "Head_CTL";
	rename -uid "00052CC6-49B7-E13A-A427-84B93908AED6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 6.2616310403753266 2.2464904590819073 
		1.4794986948792079 7.9435776624090293 -0.16557555381691103 3.3310463153492151e-16 
		6.2616310403753213 2.2464904590819108 -1.4794986948792079 2.2010526942739452 8.0697329407614973 
		0.80221815602563407 -1.8595256518274352 13.892975422441078 0.56725389811669436 -3.5414722738611126 
		16.305041435339916 4.6258506773586299e-16 -1.8595256518274319 13.892975422441074 
		-0.56725389811669436 2.2010526942739452 8.0697329407614973 -0.80221815602563407 0 
		0 0 0 0 0 0 0 0;
createNode transform -n "Mouth_GRP" -p "Head_CTL";
	rename -uid "AA0CF6D0-41B0-67B1-7030-0CB1C7EF5B53";
	setAttr ".t" -type "double3" 11.43095280965364 1.6689254315339652e-15 -1.7159035939645858e-15 ;
	setAttr ".r" -type "double3" -0.017302641707441446 0.040932073338678564 1.1058228645734327 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002501e-15 0 ;
	setAttr ".rpt" -type "double3" 5.1987080574798623e-16 1.0743140786628491e-16 3.1601561700990922e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 3.9443045261050573e-31 0 ;
createNode transform -n "Mouth_CTL" -p "Mouth_GRP";
	rename -uid "10C15E52-4773-12D6-C2F6-A385E58B58BF";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Mouth_CTLShape" -p "Mouth_CTL";
	rename -uid "B95BCEF6-44F2-2927-B94E-49A527820482";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 1 0 ;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 7.5857354338609202 -2.3895349700680217 
		2.3905440975288323 10.282182994923406 -4.4842828597642779 -1.6653345369377348e-15 
		7.5857354338609202 -2.38953497006802 -2.3905440975288323 6.4238429845715768 1.7318356980743899 
		-0.4684975861532239 5.26195053528222 5.8532063662167992 -2.3905440975288323 2.5655029742197284 
		7.9479542559130589 -1.7486012637846216e-15 5.26195053528222 5.8532063662167975 2.3905440975288323 
		6.4238429845715768 1.7318356980743908 0.4684975861532239 0 0 0 0 0 0 0 0 0;
createNode transform -n "L_Mandible01_GRP" -p "Mouth_CTL";
	rename -uid "075B37FB-4E53-5EFE-21E3-26A237060D39";
	setAttr ".t" -type "double3" 7.925541027640632 0.16345662818326642 -11.359659386000702 ;
	setAttr ".r" -type "double3" 15.575512990477893 -9.0075975324777851 -37.763349548372304 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002509e-15 0 ;
	setAttr ".rpt" -type "double3" -1.9596062713862195e-16 8.0980393523478813e-16 -1.4774364747578138e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 -3.9443045261050608e-31 0 ;
createNode transform -n "L_Mandible01_CTL" -p "L_Mandible01_GRP";
	rename -uid "7D0EFD11-489E-8B09-35D2-5D829A0E1300";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Mandible01_CTLShape" -p "L_Mandible01_CTL";
	rename -uid "04499D95-405D-6798-1E46-8499310B847F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -2.5783250127890471 -7.4710209860243584 
		0.15801023276745174 0.87950792909213571 -4.9483094953948612 -2.8680789025768649 4.676192406470423 
		-0.10614653035020827 -4.5145662839597005 6.5876821445490163 4.2189945154071555 -3.8169619336431526 
		5.4942523790984614 5.49350467644914 -1.1839130188721847 2.0364194372172744 2.970793185819649 
		1.8421761164721355 -1.760265040161014 -1.8713697792250044 3.4886634978549727 -3.6717547782395967 
		-6.1965108249823659 2.7910591475384186 0 0 0 0 0 0 0 0 0;
createNode transform -n "L_Mandible02_GRP" -p "L_Mandible01_CTL";
	rename -uid "EFC6C7D7-4737-9EC6-2870-8F9AC3C14969";
	setAttr ".t" -type "double3" 8.2633159125541287 1.4210854715202004e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 58.664099939709033 -41.245749915430743 -8.6849738389177329 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 8.4933913248203357e-16 7.1209983598704555e-16 -1.1407995834521758e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "L_Mandible02_CTL" -p "L_Mandible02_GRP";
	rename -uid "B4834E1B-4D59-5358-00D4-79878F70FDBF";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Mandible02_CTLShape" -p "L_Mandible02_CTL";
	rename -uid "44B73736-425C-CD41-4DA4-A98581AB9F3D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -9.2035791906350817e-17 -1.5030585466834965 
		1.5030585466834965 -7.9698951391734051e-33 -2.1256457817605918 1.4930621550797993e-15 
		9.2035791906350817e-17 -1.5030585466834965 -1.5030585466834965 1.3015826513770927e-16 
		-1.1323717701439535e-15 -2.1256457817605936 9.2035791906350817e-17 1.5030585466834965 
		-1.5030585466834965 1.3038042438157924e-32 2.1256457817605945 1.1499764981874148e-15 
		-9.2035791906350817e-17 1.5030585466834965 1.5030585466834965 -1.3015826513770927e-16 
		-7.3230435271627025e-16 2.1256457817605936 0 0 0 0 0 0 0 0 0;
createNode transform -n "R_Mandible01_GRP" -p "Mouth_CTL";
	rename -uid "DF1B3DE3-4085-E8BC-5FC3-C28E395F9DA5";
	setAttr ".t" -type "double3" 7.9093241098159943 0.15664304301932269 11.371101140844431 ;
	setAttr ".r" -type "double3" 15.497064020889288 -8.9640641142996582 142.24890341511036 ;
createNode transform -n "R_Mandible01_CTL" -p "R_Mandible01_GRP";
	rename -uid "E88F4F29-445A-7961-4D0F-088723DA8C64";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 7.1054273576010019e-15 -3.5527136788005009e-15 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 -3.5527136788005009e-15 -3.5527136788005009e-15 ;
createNode nurbsCurve -n "R_Mandible01_CTLShape" -p "R_Mandible01_CTL";
	rename -uid "2CA3E81B-42AA-A9C8-2961-D584A97D52C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5783250127890454 3.5529628615682327 3.7600478916886688
		-0.87950792909213649 -0.59266144237707885 2.8680789025768658
		-4.676192406470423 -3.811911594105915 0.59650815950358105
		-6.5876821445490163 -4.2189945154071564 -1.7240090041287839
		-5.4942523790984614 -1.5754465519930183 -2.7341451055839343
		-2.0364194372172748 2.5701777519522908 -1.8421761164721349
		1.7602650401610132 5.7894279036811245 0.42939462660114852
		3.6717547782395954 6.1965108249823642 2.7499117902335195
		2.5783250127890454 3.5529628615682327 3.7600478916886688
		-0.87950792909213649 -0.59266144237707885 2.8680789025768658
		-4.676192406470423 -3.811911594105915 0.59650815950358105
		;
createNode transform -n "R_Mandible02_GRP" -p "R_Mandible01_CTL";
	rename -uid "C78AE9CF-4958-3048-1E51-ACAB82C0390F";
	setAttr ".t" -type "double3" 8.2633159125541287 1.4210854715202004e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 58.664099939709033 -41.245749915430743 -8.6849738389177329 ;
	setAttr ".rp" -type "double3" -12.283703342990608 7.9019681326678572 7.732987216747766 ;
	setAttr ".rpt" -type "double3" -4.2429284821176569 -7.9019681326678874 -7.732987216747782 ;
	setAttr ".sp" -type "double3" -12.283703342990608 7.9019681326678572 7.732987216747766 ;
createNode transform -n "R_Mandible02_CTL" -p "R_Mandible02_GRP";
	rename -uid "B3E982A2-4967-9CA8-9FE8-FB98122D1099";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -12.283703342990608 7.9019681326678546 7.732987216747766 ;
	setAttr ".sp" -type "double3" -12.283703342990608 7.9019681326678546 7.732987216747766 ;
createNode nurbsCurve -n "R_Mandible02_CTLShape" -p "R_Mandible02_CTL";
	rename -uid "1742F004-402D-EBB7-BF9E-A999F8D573E8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-12.283703342990595 5.4869685548952294 10.147986794520389
		-12.283703342990597 4.4866429766565084 7.7329872167477616
		-12.283703342990597 5.4869685548952285 5.3179876389751364
		-12.283703342990595 7.9019681326678555 4.3176620607364145
		-12.283703342990595 10.316967710440482 5.3179876389751355
		-12.283703342990593 11.317293288679203 7.7329872167477607
		-12.283703342990593 10.316967710440483 10.147986794520389
		-12.283703342990595 7.9019681326678581 11.148312372759111
		-12.283703342990595 5.4869685548952294 10.147986794520389
		-12.283703342990597 4.4866429766565084 7.7329872167477616
		-12.283703342990597 5.4869685548952285 5.3179876389751364
		;
createNode transform -n "L_Leg01_GRP" -p "Base_CTL";
	rename -uid "89D3B8BE-4877-44D1-0938-2BB1F2473958";
	setAttr ".t" -type "double3" -7.4609980776505669 -0.75646265961342252 16.709768852198337 ;
	setAttr ".r" -type "double3" -134.16027374867687 -47.534592728085627 105.10322915352126 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "L_Leg01_CTL" -p "L_Leg01_GRP";
	rename -uid "FA90D3D1-4696-61C9-0D66-30B5DFF999D9";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg01_CTLShape" -p "L_Leg01_CTL";
	rename -uid "8869540D-43F9-2494-9434-44A37EFBBF5B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 5.6525935908228622 0.63985169527463803 
		0.38664347217359074 9.003036988621858 -0.0093134300516855006 -7.2719608112947753e-15 
		5.6525935908228622 0.63985169527463848 -0.3866434721736125 4.085370341040413 2.2070749450570868 
		-9.7699626167013776e-15 2.5181470912579638 3.7742981948395355 -0.71532919834249564 
		1.8689819659316353 4.4234633201658635 -9.9920072216264089e-15 2.5181470912579633 
		3.774298194839536 0.7153291983424731 4.0853703410404112 2.2070749450570877 -9.7699626167013776e-15 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "L_Leg02_GRP" -p "Base_CTL";
	rename -uid "97A9D066-4D5D-AC73-5A8A-93A0E26A0D25";
	setAttr ".t" -type "double3" -2.9073730258190373 -2.5031870838542289 17.443656312342796 ;
	setAttr ".r" -type "double3" -117.38651387902708 -49.107148797657864 90.872441642239565 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "L_Leg02_CTL" -p "L_Leg02_GRP";
	rename -uid "2079DA69-4F5F-5010-80EB-9B8CCA7C3A95";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg02_CTLShape" -p "L_Leg02_CTL";
	rename -uid "532DA7BD-497D-4F5A-0A21-5AB848D82C62";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.6525935908228622 2.2070749450570872 -1.1805797776088582
		9.003036988621858 2.2070749450570899 -7.4076754577569929e-15
		5.6525935908228622 2.2070749450570872 1.1805797776088365
		4.085370341040413 2.2070749450570868 2.2163883751087665
		2.5181470912579638 2.2070749450570863 0.85189405143995334
		1.8689819659316353 2.2070749450570868 -9.7699900822343436e-15
		2.5181470912579633 2.2070749450570872 -0.85189405143997587
		4.0853703410404112 2.2070749450570872 -2.2163883751087861
		5.6525935908228622 2.2070749450570872 -1.1805797776088582
		9.003036988621858 2.2070749450570899 -7.4076754577569929e-15
		5.6525935908228622 2.2070749450570872 1.1805797776088365
		;
createNode transform -n "L_Leg03_GRP" -p "Base_CTL";
	rename -uid "419A3392-4954-B9DA-58E5-2C871E87DD8B";
	setAttr ".t" -type "double3" 1.0016891439282265 -3.4342472406390172 18.198039931256947 ;
	setAttr ".r" -type "double3" -64.808768022195352 -56.023799531101396 48.177190189575853 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "L_Leg03_CTL" -p "L_Leg03_GRP";
	rename -uid "00F5FD7B-4E79-32A7-4E5E-79A2C78D5F60";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg03_CTLShape" -p "L_Leg03_CTL";
	rename -uid "7D4587A1-4D38-8DA9-7467-38B49CE1D4D1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.6525935908228622 2.2070749450570872 -1.1805797776088582
		9.003036988621858 2.2070749450570899 -7.4076754577569929e-15
		5.6525935908228622 2.2070749450570872 1.1805797776088365
		4.085370341040413 2.2070749450570868 2.2163883751087665
		2.5181470912579638 2.2070749450570863 0.85189405143995334
		1.8689819659316353 2.2070749450570868 -9.7699900822343436e-15
		2.5181470912579633 2.2070749450570872 -0.85189405143997587
		4.0853703410404112 2.2070749450570872 -2.2163883751087861
		5.6525935908228622 2.2070749450570872 -1.1805797776088582
		9.003036988621858 2.2070749450570899 -7.4076754577569929e-15
		5.6525935908228622 2.2070749450570872 1.1805797776088365
		;
createNode transform -n "L_Leg04_GRP" -p "Base_CTL";
	rename -uid "E75AEBE6-4A81-6B21-0262-DF814423BF24";
	setAttr ".t" -type "double3" 4.9613987561898441 -4.5374770338477006 18.952423550171098 ;
	setAttr ".r" -type "double3" -23.990854501718783 -36.209891926487117 16.478966653378755 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "L_Leg04_CTL" -p "L_Leg04_GRP";
	rename -uid "8883C8DA-494D-7914-BE2C-A1B34D717077";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg04_CTLShape" -p "L_Leg04_CTL";
	rename -uid "5C09F6EF-4366-1A77-6BAF-D28D38C4984A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.6525935908228622 2.2070749450570872 -1.1805797776088582
		9.003036988621858 2.2070749450570899 -7.4076754577569929e-15
		5.6525935908228622 2.2070749450570872 1.1805797776088365
		4.085370341040413 2.2070749450570868 2.2163883751087665
		2.5181470912579638 2.2070749450570863 0.85189405143995334
		1.8689819659316353 2.2070749450570868 -9.7699900822343436e-15
		2.5181470912579633 2.2070749450570872 -0.85189405143997587
		4.0853703410404112 2.2070749450570872 -2.2163883751087861
		5.6525935908228622 2.2070749450570872 -1.1805797776088582
		9.003036988621858 2.2070749450570899 -7.4076754577569929e-15
		5.6525935908228622 2.2070749450570872 1.1805797776088365
		;
createNode transform -n "R_Leg01_GRP" -p "Base_CTL";
	rename -uid "6C1BF8FF-439E-3E8C-1638-18A36551440D";
	setAttr ".t" -type "double3" -7.4609527442580337 -0.75642712227404374 -16.709799999999998 ;
	setAttr ".r" -type "double3" -134.1602737486769 -47.534592728085649 -74.896770846478773 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "R_Leg01_CTL" -p "R_Leg01_GRP";
	rename -uid "C91121D6-4697-391C-88DF-6584704B059C";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 1.7763568394002505e-15 -8.8817841970012523e-16 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 -2.6645352591003757e-15 ;
createNode nurbsCurve -n "R_Leg01_CTLShape" -p "R_Leg01_CTL";
	rename -uid "AECF70F9-404B-1536-B3F4-9DB3E3917090";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.6525935908228577 -2.2070749450570859 1.1805797776088587
		-9.0030369886218526 -2.2070749450570886 7.9687030410998817e-15
		-5.6525935908228577 -2.2070749450570859 -1.180579777608836
		-4.0853703410404085 -2.2070749450570855 -2.2163883751087661
		-2.5181470912579598 -2.2070749450570846 -0.85189405143995311
		-1.8689819659316316 -2.207074945057085 9.9349980583205604e-15
		-2.5181470912579593 -2.2070749450570855 0.8518940514399761
		-4.0853703410404067 -2.2070749450570859 2.2163883751087865
		-5.6525935908228577 -2.2070749450570859 1.1805797776088587
		-9.0030369886218526 -2.2070749450570886 7.9687030410998817e-15
		-5.6525935908228577 -2.2070749450570859 -1.180579777608836
		;
createNode transform -n "R_Leg02_GRP" -p "Base_CTL";
	rename -uid "41940690-4088-59F2-42CC-6FBCAFF1C7E3";
	setAttr ".t" -type "double3" -2.9073758753317129 -2.5031964520022534 -17.4437 ;
	setAttr ".r" -type "double3" -117.38651387902711 -49.107148797657906 -89.127558357760449 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999989 ;
createNode transform -n "R_Leg02_CTL" -p "R_Leg02_GRP";
	rename -uid "005D3C2D-45C9-29A2-E39A-CCADAB87E094";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 1.7763568394002505e-15 -8.8817841970012523e-16 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 -2.6645352591003757e-15 ;
createNode nurbsCurve -n "R_Leg02_CTLShape" -p "R_Leg02_CTL";
	rename -uid "B98BEC66-40A1-3A16-AFB1-D98F3AF0572E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.6525935908228577 -2.2070749450570859 1.1805797776088587
		-9.0030369886218526 -2.2070749450570886 7.9687030410998817e-15
		-5.6525935908228577 -2.2070749450570859 -1.180579777608836
		-4.0853703410404085 -2.2070749450570855 -2.2163883751087661
		-2.5181470912579598 -2.2070749450570846 -0.85189405143995311
		-1.8689819659316316 -2.207074945057085 9.9349980583205604e-15
		-2.5181470912579593 -2.2070749450570855 0.8518940514399761
		-4.0853703410404067 -2.2070749450570859 2.2163883751087865
		-5.6525935908228577 -2.2070749450570859 1.1805797776088587
		-9.0030369886218526 -2.2070749450570886 7.9687030410998817e-15
		-5.6525935908228577 -2.2070749450570859 -1.180579777608836
		;
createNode transform -n "R_Leg03_GRP" -p "Base_CTL";
	rename -uid "AF83C4A1-49AD-1EFB-5122-40830D4DDFA9";
	setAttr ".t" -type "double3" 1.0016800349053687 -3.4342839786293453 -18.198 ;
	setAttr ".r" -type "double3" -64.80876802219548 -56.023799531101403 -131.82280981042413 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "R_Leg03_CTL" -p "R_Leg03_GRP";
	rename -uid "28C994DB-43A1-9EC0-36DB-D4B34E004565";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 1.7763568394002505e-15 -8.8817841970012523e-16 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 -2.6645352591003757e-15 ;
createNode nurbsCurve -n "R_Leg03_CTLShape" -p "R_Leg03_CTL";
	rename -uid "D9A19BC6-4D76-C17E-AE81-40A041F8FFE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.6525935908228577 -2.2070749450570859 1.1805797776088587
		-9.0030369886218526 -2.2070749450570886 7.9687030410998817e-15
		-5.6525935908228577 -2.2070749450570859 -1.180579777608836
		-4.0853703410404085 -2.2070749450570855 -2.2163883751087661
		-2.5181470912579598 -2.2070749450570846 -0.85189405143995311
		-1.8689819659316316 -2.207074945057085 9.9349980583205604e-15
		-2.5181470912579593 -2.2070749450570855 0.8518940514399761
		-4.0853703410404067 -2.2070749450570859 2.2163883751087865
		-5.6525935908228577 -2.2070749450570859 1.1805797776088587
		-9.0030369886218526 -2.2070749450570886 7.9687030410998817e-15
		-5.6525935908228577 -2.2070749450570859 -1.180579777608836
		;
createNode transform -n "R_Leg04_GRP" -p "Base_CTL";
	rename -uid "D76BA777-4F17-19A3-3FA9-27A2D0F9CE70";
	setAttr ".t" -type "double3" 4.9614122234243148 -4.537440991047788 -18.9524 ;
	setAttr ".r" -type "double3" -23.990854501718779 -36.209891926487117 -163.52103334662124 ;
createNode transform -n "R_Leg04_CTL" -p "R_Leg04_GRP";
	rename -uid "2627DAA5-4B92-ECBF-F517-CBADF842670B";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 1.7763568394002505e-15 -8.8817841970012523e-16 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 -2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 1.7763568394002505e-15 -2.6645352591003757e-15 ;
createNode nurbsCurve -n "R_Leg04_CTLShape" -p "R_Leg04_CTL";
	rename -uid "5AED32F4-48BF-D037-4DA8-EA9729A61CCE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.6525935908228577 -2.2070749450570859 1.1805797776088587
		-9.0030369886218526 -2.2070749450570886 7.9687030410998817e-15
		-5.6525935908228577 -2.2070749450570859 -1.180579777608836
		-4.0853703410404085 -2.2070749450570855 -2.2163883751087661
		-2.5181470912579598 -2.2070749450570846 -0.85189405143995311
		-1.8689819659316316 -2.207074945057085 9.9349980583205604e-15
		-2.5181470912579593 -2.2070749450570855 0.8518940514399761
		-4.0853703410404067 -2.2070749450570859 2.2163883751087865
		-5.6525935908228577 -2.2070749450570859 1.1805797776088587
		-9.0030369886218526 -2.2070749450570886 7.9687030410998817e-15
		-5.6525935908228577 -2.2070749450570859 -1.180579777608836
		;
createNode transform -n "L_Leg01IK_GRP" -p "Master_CTL";
	rename -uid "6E7FF22D-4023-910F-E2B3-1C832BB59307";
	setAttr ".t" -type "double3" 27.358412446643054 1.0658141036401503e-14 28.69673197106464 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999956 1 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002497e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 7.8886090522101119e-31 0 ;
createNode transform -n "L_Leg01IK_CTL" -p "L_Leg01IK_GRP";
	rename -uid "DA238834-45B9-E6B0-5600-81A59A8386EA";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg01IK_CTLShape" -p "L_Leg01IK_CTL";
	rename -uid "2167B5F0-45EE-AAD3-FD3A-14BA460112F6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".tw" yes;
createNode ikHandle -n "ikHandle1" -p "L_Leg01IK_CTL";
	rename -uid "F8312EE4-41CA-42A8-0E65-8E8F0D889349";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.13473162280553197 -0.083272949634004376 0.07793650983593281 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "6865CBA7-4862-FA96-10CB-B38787AE0193";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pCube1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 9.3326325884312169 -3.9159605362412826 22.141749300246957 ;
	setAttr -k on ".w0";
createNode transform -n "L_Leg02IK_GRP" -p "Master_CTL";
	rename -uid "1DCE3C33-4877-B113-0009-0B9C4F7EC394";
	setAttr ".t" -type "double3" 31.669175983295347 1.0658141036401503e-14 19.967435809343751 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999967 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002499e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 5.9164567891575877e-31 0 ;
createNode transform -n "L_Leg02IK_CTL" -p "L_Leg02IK_GRP";
	rename -uid "BFA8E20B-4631-90CA-9FD9-DCB61FAAD14A";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg02IK_CTLShape" -p "L_Leg02IK_CTL";
	rename -uid "7C2C2E41-4C95-2704-0426-ABA771EAF9FE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".tw" yes;
createNode ikHandle -n "ikHandle2" -p "L_Leg02IK_CTL";
	rename -uid "90BA436B-42A9-D7C6-341F-C888F2B29927";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.29097239213937343 0.0095327859253515612 -0.16645984093000266 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle2_poleVectorConstraint1" -p "ikHandle2";
	rename -uid "0B7A34F1-462E-B997-86EC-6BA2FBD8573C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pCube2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 21.057203029560757 -2.2051510507692846 22.312072586353068 ;
	setAttr -k on ".w0";
createNode transform -n "L_Leg03IK_GRP" -p "Master_CTL";
	rename -uid "0F5C63B8-4EAD-D70D-8EDC-188713B27A40";
	setAttr ".t" -type "double3" 31.561406894879042 1.0658141036401503e-14 -6.3282217642351819 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999967 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002493e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 1.1832913578315163e-30 0 ;
createNode transform -n "L_Leg03IK_CTL" -p "L_Leg03IK_GRP";
	rename -uid "EBF9D699-43E7-6627-4DC9-5AB0A48144AB";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg03IK_CTLShape" -p "L_Leg03IK_CTL";
	rename -uid "99B75C87-4B6F-1110-DC7C-488BF1D97939";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".tw" yes;
createNode ikHandle -n "ikHandle3" -p "L_Leg03IK_CTL";
	rename -uid "9526B736-4A38-67E4-FEF0-0BB72CB52830";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.090435987891694936 -0.0096160387822870133 -0.041084132415513785 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000004 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle3_poleVectorConstraint1" -p "ikHandle3";
	rename -uid "AFADFB88-4F9E-B1A8-AD39-1AADFFB2DABA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pCube3W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 16.190738240298565 -5.036520473751299 -17.166057989183404 ;
	setAttr -k on ".w0";
createNode transform -n "L_Leg04IK_GRP" -p "Master_CTL";
	rename -uid "944807AA-403F-96EC-D087-86B8ABC73438";
	setAttr ".t" -type "double3" 27.358412446643083 -3.5527136788005009e-15 -15.165287014372378 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002501e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 3.9443045261050573e-31 0 ;
createNode transform -n "L_Leg04IK_CTL" -p "L_Leg04IK_GRP";
	rename -uid "A9F5414E-456B-84F9-7FDA-ABB5A4348D91";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg04IK_CTLShape" -p "L_Leg04IK_CTL";
	rename -uid "FD42E3E6-4308-198A-95EF-2A8FB64AB089";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".tw" yes;
createNode ikHandle -n "ikHandle4" -p "L_Leg04IK_CTL";
	rename -uid "6C8B330F-4A55-C1D7-5A6C-32AA4FF7702E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.2214072785244845 0.0061083025814099318 0.15907572410011461 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle4_poleVectorConstraint1" -p "ikHandle4";
	rename -uid "169D1B68-4C07-670F-C2D2-EE8C59EC656D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pCube4W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 8.6759445823139032 -5.864953135024443 -21.296465407473086 ;
	setAttr -k on ".w0";
createNode transform -n "R_Leg01IK_GRP" -p "Master_CTL";
	rename -uid "8A66C04B-474A-2A38-5082-8480E36A82DC";
	setAttr ".t" -type "double3" -27.2237 -0.083272900000002537 28.774700000000003 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002497e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 7.8886090522101119e-31 0 ;
createNode transform -n "R_Leg01IK_CTL" -p "R_Leg01IK_GRP";
	rename -uid "B7C11038-44D8-B27B-002D-E89A2C8439D5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_Leg01IK_CTLShape" -p "R_Leg01IK_CTL";
	rename -uid "E2A33DAC-4763-80E6-02A8-4C9810B4CFD4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.9180581244561226 2.3991186704942365e-16 -3.918058124456123
		3.392866161555456e-16 3.392866161555456e-16 -5.5409709377719381
		-3.9180581244561226 2.399118670494236e-16 -3.9180581244561221
		-5.5409709377719407 1.7588678095030137e-32 -2.8724491187624153e-16
		-3.9180581244561226 -2.3991186704942365e-16 3.9180581244561226
		-5.5504284848016127e-16 -3.3928661615554579e-16 5.5409709377719416
		3.9180581244561226 -2.399118670494236e-16 3.9180581244561221
		5.5409709377719407 -4.6268396050550496e-32 7.556202503899795e-16
		3.9180581244561226 2.3991186704942365e-16 -3.918058124456123
		3.392866161555456e-16 3.392866161555456e-16 -5.5409709377719381
		-3.9180581244561226 2.399118670494236e-16 -3.9180581244561221
		;
createNode ikHandle -n "ikHandle5" -p "R_Leg01IK_CTL";
	rename -uid "58DCFEB3-4643-7386-68F5-76ABF9DACD8A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle5_poleVectorConstraint1" -p "ikHandle5";
	rename -uid "48F76153-439C-A94A-A5B6-2DB13B968A7D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg01_POLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -9.5932055865098036 -3.6866855623809016 22.777851131174138 ;
	setAttr -k on ".w0";
createNode transform -n "R_Leg02IK_GRP" -p "Master_CTL";
	rename -uid "698402AC-4EA8-D8F1-96F1-95A95272D3AE";
	setAttr ".t" -type "double3" -31.3782 0.0095327900000032884 19.800999999999995 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002499e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 5.9164567891575877e-31 0 ;
createNode transform -n "R_Leg02IK_CTL" -p "R_Leg02IK_GRP";
	rename -uid "C6444B26-4D94-1ACB-B489-2592CE7C078B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_Leg02IK_CTLShape" -p "R_Leg02IK_CTL";
	rename -uid "7F13B2A9-4299-0424-B3FD-BCA194CE1E0D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.9180581244561226 2.3991186704942365e-16 -3.918058124456123
		3.392866161555456e-16 3.392866161555456e-16 -5.5409709377719381
		-3.9180581244561226 2.399118670494236e-16 -3.9180581244561221
		-5.5409709377719407 1.7588678095030137e-32 -2.8724491187624153e-16
		-3.9180581244561226 -2.3991186704942365e-16 3.9180581244561226
		-5.5504284848016127e-16 -3.3928661615554579e-16 5.5409709377719416
		3.9180581244561226 -2.399118670494236e-16 3.9180581244561221
		5.5409709377719407 -4.6268396050550496e-32 7.556202503899795e-16
		3.9180581244561226 2.3991186704942365e-16 -3.918058124456123
		3.392866161555456e-16 3.392866161555456e-16 -5.5409709377719381
		-3.9180581244561226 2.399118670494236e-16 -3.9180581244561221
		;
createNode ikHandle -n "ikHandle6" -p "R_Leg02IK_CTL";
	rename -uid "FFD9DFA8-4D57-88FA-660D-03814BFA284D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle6_poleVectorConstraint1" -p "ikHandle6";
	rename -uid "EDB47397-4638-3757-76DC-2A8E64BAC8D8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pCube2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -16.737597225463929 -4.219754496715467 17.873625970001513 ;
	setAttr -k on ".w0";
createNode transform -n "R_Leg03IK_GRP" -p "Master_CTL";
	rename -uid "E55B6EB2-402C-7270-A5AE-138C37B01DF2";
	setAttr ".t" -type "double3" -31.651799999999994 -0.0096160400000062651 -6.3693100000000049 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002493e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 1.1832913578315163e-30 0 ;
createNode transform -n "R_Leg03IK_CTL" -p "R_Leg03IK_GRP";
	rename -uid "50071ABE-40D0-745E-AFF1-3085BEE9CCBA";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_Leg03IK_CTLShape" -p "R_Leg03IK_CTL";
	rename -uid "D4713A96-45BA-4F0B-DABD-03AF5FD37F9F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.9180581244561226 2.3991186704942365e-16 -3.918058124456123
		3.392866161555456e-16 3.392866161555456e-16 -5.5409709377719381
		-3.9180581244561226 2.399118670494236e-16 -3.9180581244561221
		-5.5409709377719407 1.7588678095030137e-32 -2.8724491187624153e-16
		-3.9180581244561226 -2.3991186704942365e-16 3.9180581244561226
		-5.5504284848016127e-16 -3.3928661615554579e-16 5.5409709377719416
		3.9180581244561226 -2.399118670494236e-16 3.9180581244561221
		5.5409709377719407 -4.6268396050550496e-32 7.556202503899795e-16
		3.9180581244561226 2.3991186704942365e-16 -3.918058124456123
		3.392866161555456e-16 3.392866161555456e-16 -5.5409709377719381
		-3.9180581244561226 2.399118670494236e-16 -3.9180581244561221
		;
createNode ikHandle -n "ikHandle7" -p "R_Leg03IK_CTL";
	rename -uid "54F416D2-4BBE-BC42-8264-6F99EE2F72B6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle7_poleVectorConstraint1" -p "ikHandle7";
	rename -uid "56BDB2DF-4CA4-1EBE-4B50-6B9156834E31";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pCube3W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -17.360469103040433 -4.4667703381467376 -18.429163340888312 ;
	setAttr -k on ".w0";
createNode transform -n "R_Leg04IK_GRP" -p "Master_CTL";
	rename -uid "2F2D6EF8-41AB-1C95-190F-FCB82EF67CB6";
	setAttr ".t" -type "double3" -27.137000000000004 0.006108300000002842 -15.0062 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002501e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 3.9443045261050573e-31 0 ;
createNode transform -n "R_Leg04IK_CTL" -p "R_Leg04IK_GRP";
	rename -uid "0BF46F22-41BB-EA02-8389-A0BB1E9D85D5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_Leg04IK_CTLShape" -p "R_Leg04IK_CTL";
	rename -uid "6F55D3BA-45BA-3F3F-B6AD-D1A458AAC57D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.9180581244561226 2.3991186704942365e-16 -3.918058124456123
		3.392866161555456e-16 3.392866161555456e-16 -5.5409709377719381
		-3.9180581244561226 2.399118670494236e-16 -3.9180581244561221
		-5.5409709377719407 1.7588678095030137e-32 -2.8724491187624153e-16
		-3.9180581244561226 -2.3991186704942365e-16 3.9180581244561226
		-5.5504284848016127e-16 -3.3928661615554579e-16 5.5409709377719416
		3.9180581244561226 -2.399118670494236e-16 3.9180581244561221
		5.5409709377719407 -4.6268396050550496e-32 7.556202503899795e-16
		3.9180581244561226 2.3991186704942365e-16 -3.918058124456123
		3.392866161555456e-16 3.392866161555456e-16 -5.5409709377719381
		-3.9180581244561226 2.399118670494236e-16 -3.9180581244561221
		;
createNode ikHandle -n "ikHandle8" -p "R_Leg04IK_CTL";
	rename -uid "66E5CA75-4151-0331-8226-0F8B3087D2D1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle8_poleVectorConstraint1" -p "ikHandle8";
	rename -uid "C5709280-4EF3-4D56-3680-09AFDF485DD1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pCube4W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -9.6159738940677748 -5.0459391173481691 -23.741529133359386 ;
	setAttr -k on ".w0";
createNode transform -n "L_Leg01_POL" -p "Master_CTL";
	rename -uid "67D3F58A-4BCB-7433-1253-AD9E5048FA32";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 31.871511007049122 23.456749653861714 40.120703467805328 ;
	setAttr ".sp" -type "double3" 31.871511007049122 23.456749653861714 40.120703467805328 ;
createNode mesh -n "L_Leg01_POLShape" -p "L_Leg01_POL";
	rename -uid "EC1392F3-4BE8-73FC-03B8-578259781172";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "L_Leg02_POL" -p "Master_CTL";
	rename -uid "E80E345E-4E8E-1015-75B2-DEB402288401";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 42.433763296315149 24.996372597489742 31.16067304859795 ;
	setAttr ".sp" -type "double3" 42.433763296315149 24.996372597489742 31.16067304859795 ;
createNode mesh -n "L_Leg02_POLShape" -p "L_Leg02_POL";
	rename -uid "43046B2B-4B99-6567-0D47-0882611429FF";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  11.606443 1.9892772 -8.7805662 
		10.673409 2.5304315 -9.4890413 10.905169 1.4287993 -8.7508364 9.9721346 1.9699535 
		-9.4593124 10.451095 0.54881638 -8.4310207 9.5180578 1.0899688 -9.1394968 11.152366 
		1.1092906 -8.4607496 10.219332 1.6504467 -9.1692257;
	setAttr -s 8 ".vt[0:7]"  31.16906357 23.77287865 39.72494125 31.28899193 22.82424355 40.01770401
		 31.52866364 24.089254379 40.60277557 31.648592 23.14061928 40.89553833 32.45402908 24.089254379 40.22370529
		 32.57395935 23.14061928 40.51646805 32.094432831 23.77287865 39.34587097 32.21435928 22.82424355 39.63863373;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "L_Leg03_POL" -p "Master_CTL";
	rename -uid "7B159680-45A4-7DEE-79D8-5EBE111127AB";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 39.435374096110202 22.634533589850172 -14.774096694854173 ;
	setAttr ".sp" -type "double3" 39.435374096110202 22.634533589850172 -14.774096694854173 ;
createNode mesh -n "L_Leg03_POLShape" -p "L_Leg03_POL";
	rename -uid "05007D36-41AA-1D71-B809-C4BB0F2E4426";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  8.029892 -0.37214279 -54.826206 
		7.5384407 0.16457176 -54.286926 8.5952148 -0.93050003 -55.410851 8.1037636 -0.39378548 
		-54.871571 7.589283 -1.8090019 -55.502674 7.0978317 -1.2722874 -54.963394 7.0239563 
		-1.2506485 -54.918034 6.5325127 -0.71393204 -54.37875;
	setAttr -s 8 ".vt[0:7]"  31.16906357 23.77287865 39.72494125 31.28899193 22.82424355 40.01770401
		 31.52866364 24.089254379 40.60277557 31.648592 23.14061928 40.89553833 32.45402908 24.089254379 40.22370529
		 32.57395935 23.14061928 40.51646805 32.094432831 23.77287865 39.34587097 32.21435928 22.82424355 39.63863373;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "L_Leg04_POL" -p "Master_CTL";
	rename -uid "21D1D732-4DB4-DB73-8860-AF805471FB4F";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 31.037984008329826 22.399883286015452 -25.153781637916527 ;
	setAttr ".sp" -type "double3" 31.037984008329826 22.399883286015452 -25.153781637916527 ;
createNode mesh -n "L_Leg04_POLShape" -p "L_Leg04_POL";
	rename -uid "75E22161-411E-E65E-0165-40A66256A143";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0 1 ;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.46743774 -0.60821724 -65.106705 
		-0.62614059 -0.057132721 -64.482704 0.13919449 -1.1733952 -66.051559 -0.019510269 
		-0.62231255 -65.427567 -1.0409107 -2.0565968 -66.066269 -1.1996155 -1.5055161 -65.442268 
		-1.6475449 -1.4914227 -65.121407 -1.8062477 -0.94033623 -64.497406;
	setAttr -s 8 ".vt[0:7]"  31.16906357 23.77287865 39.72494125 31.28899193 22.82424355 40.01770401
		 31.52866364 24.089254379 40.60277557 31.648592 23.14061928 40.89553833 32.45402908 24.089254379 40.22370529
		 32.57395935 23.14061928 40.51646805 32.094432831 23.77287865 39.34587097 32.21435928 22.82424355 39.63863373;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R_Leg01_POL" -p "Master_CTL";
	rename -uid "55A61CEC-460B-E0B5-F131-3EB79D3C64A6";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -32.132105586509809 23.686014437619097 40.756851131174137 ;
	setAttr ".sp" -type "double3" -32.132105586509809 23.686014437619097 40.756851131174137 ;
createNode mesh -n "R_Leg01_POLShape" -p "R_Leg01_POL";
	rename -uid "99E226A4-423A-452C-B94F-17AEE07903BE";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "R_Leg02_POL" -p "Master_CTL";
	rename -uid "372448F6-40CA-BD67-6346-E7A2B47E1BAD";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -40.444297225463941 24.068545503284533 29.116525970001515 ;
	setAttr ".sp" -type "double3" -40.444297225463941 24.068545503284533 29.116525970001515 ;
createNode mesh -n "R_Leg02_POLShape" -p "R_Leg02_POL";
	rename -uid "6A3F78E8-4041-E66E-AB29-D895F8BEEB3A";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -40.742104 24.247728 28.719381 
		-41.526367 25.198685 28.497711 -40.078861 22.938406 28.037893 -40.863125 23.889362 
		27.816221 -39.362225 22.938406 29.735342 -40.146488 23.889362 29.51367 -40.025471 
		24.247728 30.41683 -40.809734 25.198685 30.19516;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R_Leg03_POL" -p "Master_CTL";
	rename -uid "37CCDF15-4FBC-C19F-E228-6A9DA2741F7C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -40.605069103040435 23.204329661853272 -16.037203340888315 ;
	setAttr ".sp" -type "double3" -40.605069103040435 23.204329661853272 -16.037203340888315 ;
createNode mesh -n "R_Leg03_POLShape" -p "R_Leg03_POL";
	rename -uid "1923B765-4A34-1717-D28B-1F94E07A5281";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -40.167492 23.386755 -17.340477 
		-40.953999 24.336109 -17.109945 -39.522434 22.07255 -16.643932 -40.308941 23.021906 
		-16.413399 -40.256138 22.07255 -14.964462 -41.042645 23.021906 -14.73393 -40.901196 
		23.386755 -15.661008 -41.687702 24.336109 -15.430474;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "R_Leg04_POL" -p "Master_CTL";
	rename -uid "8EA1D2D5-4303-34A3-881F-36A528A983A1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -31.977973894067777 23.218860882651832 -27.598849133359384 ;
	setAttr ".sp" -type "double3" -31.977973894067777 23.218860882651832 -27.598849133359384 ;
createNode mesh -n "R_Leg04_POLShape" -p "R_Leg04_POL";
	rename -uid "5429627E-45AD-7FC4-5860-B0871BECF542";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -31.236048 23.39085 -28.86297 
		-32.128971 24.345287 -28.584427 -30.893574 22.092436 -27.972095 -31.786495 23.046871 
		-27.693552 -31.826979 22.092436 -26.613272 -32.719898 23.046871 -26.334728 -32.169453 
		23.39085 -27.504147 -33.062374 24.345287 -27.225603;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Blendshape_LIM" -p "Master_CTL";
	rename -uid "F607E000-49DC-71D6-7EE2-C783EAC763E1";
	setAttr ".t" -type "double3" 0 10.226978808637778 -42.558766851298572 ;
createNode nurbsCurve -n "Blendshape_LIMShape" -p "Blendshape_LIM";
	rename -uid "51119720-441F-C56A-03AB-3B8EBFAD1456";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 10 0 no 3
		11 0 1 2 3 4 5 6 7 8 9 10
		11
		0 -5.7829113015349867 1.5454282771362386
		0 5.4647762601372989 1.5454282771362386
		0 5.4647763906365086 2.4246316118913995
		0 9.0334582841463842 -0.016426968716494628
		0 5.4647763676670955 -2.4246316118913924
		0 5.4647762275013143 -1.5626475043091261
		0 -5.7829113015349867 -1.5626475043091261
		0 -5.7829104516045824 -2.3570968679197577
		0 -9.033458284146386 -0.016426955568441315
		0 -5.7829113886232015 2.2054896824574399
		0 -5.7829128486579 1.5101632462853587
		;
createNode transform -n "Squash_GRP" -p "Blendshape_LIM";
	rename -uid "5F908BB5-4578-BC6E-91CB-81A4679FDA4A";
createNode transform -n "Squash_CTL" -p "Squash_GRP";
	rename -uid "F278220D-484E-24B4-C362-B5ADAB32E05F";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -1 -5 -1 ;
	setAttr ".mxtl" -type "double3" 1 5 1 ;
	setAttr ".mtye" yes;
	setAttr ".xtye" yes;
createNode nurbsCurve -n "Squash_CTLShape" -p "Squash_CTL";
	rename -uid "79B8EDEF-4FB1-4BBD-097A-AAA5581D83A6";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Spider_Spiderling_MOD_MASTER:Spiderling_GEO";
	rename -uid "EB8D528F-446A-E688-CAEF-1EBCB146BB22";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 0 -1.0445346832275391 ;
	setAttr ".sp" -type "double3" 0 0 -1.0445346832275391 ;
createNode mesh -n "Spider_Spiderling_MOD_MASTER:Spiderling_GEOShape" -p "Spider_Spiderling_MOD_MASTER:Spiderling_GEO";
	rename -uid "01594D4D-42AD-096B-401D-55BF76488FEC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:619]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[9]" "f[62]" "f[67]" "f[382]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "f[10]" "f[63]" "f[68]" "f[383]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "f[7]" "f[60]" "f[65]" "f[380]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "f[12]" "f[65]" "f[70]" "f[385]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 4 "f[11]" "f[64]" "f[69]" "f[384]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 4 "f[8]" "f[61]" "f[66]" "f[381]";
	setAttr ".pv" -type "double2" 0.61160324513912201 0.59376126527786255 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 851 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.26447371 0.87063849 0.2359885
		 0.94205326 0.23906913 0.94487143 0.1458655 0.98017114 0.14588147 0.97514963 0.23967615
		 0.94394642 0.23712057 0.94050008 0.23204392 0.87762129 0.2336328 0.87843788 0.21713403
		 0.87316191 0.14619929 0.87500858 0.14641771 0.8062185 0.19777215 0.80728126 0.20176131
		 0.80879968 0.20241925 0.80627811 0.49418661 0.87244451 0.81350034 0.56753081 0.77801919
		 0.56746894 0.7778154 0.51866239 0.81328416 0.51850736 0.52985811 0.54504055 0.52831632
		 0.57748145 0.4713313 0.58607692 0.47105652 0.54988652 0.81307209 0.46948394 0.77759349
		 0.46985599 0.41218543 0.54591686 0.41422522 0.57832569 0.15132231 0.4594793 0.1523295
		 0.45946795 0.15277606 0.49873573 0.15178466 0.49874634 0.15268648 0.58540928 0.15379441
		 0.58539897 0.15398395 0.60877556 0.15296471 0.60878134 0.15233201 0.54859912 0.44939053
		 0.86008942 0.41638911 0.79610634 0.052887857 0.94428051 0.055986315 0.94148183 0.054864109
		 0.93992156 0.052286714 0.94335157 0.058745861 0.87788272 0.060339838 0.87707627 0.075277746
		 0.87271166 0.095057487 0.80695522 0.090416819 0.80592251 0.09105882 0.8084482 0.70068359
		 0.86757725 0.67083693 0.78810418 0.25311118 0.92408079 0.25277656 0.92511386 0.35348672
		 0.97053182 0.22660983 0.92845327 0.22622547 0.92925161 0.14598495 0.9425512 0.48366025
		 0.93145424 0.51189744 0.96378732 0.59958243 0.96303093 0.44944718 0.9512499 0.46672633
		 0.91191459 0.065830439 0.92874253 0.065451145 0.92794174 0.68721223 0.95973384 0.68841159
		 0.95981079 0.75796795 0.95306367 0.73394656 0.92873031 0.7487722 0.93714583 0.75010681
		 0.93802148 0.15336341 0.54858899 0.15439349 0.65354824 0.15332642 0.65355492 0.15459174
		 0.68927062 0.15362394 0.68927753 0.15474617 0.71322918 0.1538111 0.71324134 0.099176735
		 0.58873212 0.0994578 0.58643723 0.10176861 0.60102719 0.10121465 0.59989274 0.20704639
		 0.58541316 0.20737034 0.58771151 0.20554543 0.59896398 0.20501286 0.60011333 0.052505344
		 0.43124175 0.056297094 0.75504434 0.15339345 0.76054418 0.15103459 0.43556747 0.056087762
		 0.7549417 0.058701247 0.4539229 0.7089386 0.65838504 0.84370327 0.95917708 0.78109425
		 0.65707016 0.71730506 0.69903409 0.7425878 0.87781507 0.92926276 0.95098412 0.95381719
		 0.92562199 0.74981058 0.93696529 0.75557327 0.88257277 0.75665522 0.8828122 0.8433767
		 0.93227947 0.84339076 0.93344736 0.93703103 0.93469423 0.93675041 0.93576211 0.73552316
		 0.77249146 0.7701968 0.79032046 0.77572393 0.79492992 0.77681315 0.79551888 0.27206141
		 0.93768096 0.27128452 0.9373275 0.27955434 0.88439953 0.28056911 0.88440484 0.27178016
		 0.93861473 0.36122292 0.94061816 0.36128145 0.9416272 0.44943917 0.92751133 0.44981384
		 0.9284184 0.29542902 0.80768228 0.29640326 0.80811971 0.50542754 0.94065362 0.5043394
		 0.94087189 0.053427279 0.72921741 0.056702226 0.75359285 0.057044685 0.75370193 0.068950027
		 0.49621302 0.060995281 0.68275249 0.08425644 0.63132501 0.083408952 0.63069934 0.063188523
		 0.68468225 0.062280178 0.68425155 0.057189673 0.75266087 0.15420234 0.72889608 0.15430325
		 0.72984934 0.054941684 0.72956669 0.055967391 0.72947896 0.088068247 0.54581237 0.081735849
		 0.62872344 0.21756318 0.54441714 0.22555208 0.62758106 0.23552603 0.49433172 0.24710304
		 0.68153453 0.22392184 0.62958133 0.22306716 0.63024533 0.24584073 0.68306112 0.24493924
		 0.68350828 0.25258362 0.75398654 0.25306344 0.75480509 0.15206128 0.4355557 0.15546101
		 0.7605406 0.25279945 0.75389802 0.25182724 0.75264955 0.25218385 0.75253272 0.25524655
		 0.7280606 0.24479347 0.45180154 0.25168791 0.75161028 0.15450165 0.72984654 0.15456563
		 0.72888327 0.25270891 0.72835743 0.25373513 0.72843176 0.87766498 0.61370593 0.57072026
		 0.6305359 0.59695405 0.5654254 0.81377995 0.62987429 0.8792209 0.61375672 0.87738383
		 0.55777538 0.87848043 0.55759382 0.5701586 0.63137162 0.60101271 0.67240822 0.60002553
		 0.67281389 0.56852716 0.63189894 0.56822968 0.63091207 0.87719351 0.51822788 0.87829012
		 0.51822311 0.58104724 0.71615118 0.96028638 0.58068049 0.96282685 0.54369336 0.49708593
		 0.71702343 0.58211702 0.71620941 0.53204662 0.71445394 0.58330023 0.71291691 0.68683058
		 0.69688118 0.59848219 0.73176211 0.67437398 0.71479303 0.96420014 0.51784754 0.47225773
		 0.71664733 0.58362353 0.71181899 0.5998584 0.72691697 0.59946018 0.7278735 0.53377914
		 0.71342915 0.4974879 0.71560401 0.49784249 0.71460837 0.47225487 0.71621412 0.47224802
		 0.71522945 0.56719428 0.63116384 0.5676536 0.6322735 0.51135445 0.63864279 0.51159197
		 0.63767129 0.57539654 0.57229394 0.57644594 0.57217479 0.59690106 0.67432243 0.59598911
		 0.6748541 0.47173345 0.64029342 0.47172678 0.63935977 0.6191588 0.70435482 0.61836094
		 0.70498526 0.62188649 0.70193344 0.6211319 0.70262533 0.63794243 0.72373039 0.63771409
		 0.72475344 0.63806534 0.72538704 0.64313495 0.73599327 0.64224744 0.73641193 0.63657761
		 0.7269873 0.6365087 0.72608423 0.63598764 0.72678262 0.63916689 0.73773283 0.63823915
		 0.73812193 0.61441106 0.74525183 0.6141535 0.74631435 0.61530036 0.74014252 0.61498117
		 0.74112493 0.6443125 0.75977689 0.64308316 0.75954837 0.64288491 0.76064855 0.64799905
		 0.75870019 0.64071012 0.76326102 0.64901042 0.75791377 0.5841713 0.53709155 0.58522093
		 0.53683907 0.58578157 0.51225817 0.58657569 0.51207733 0.58576894 0.51125425 0.53105211
		 0.52250302 0.53029007 0.52161473 0.58630979 0.51121658 0.58521843 0.50941169 0.58574647
		 0.50947833 0.61335522 0.49576852 0.613702 0.49692973 0.47087783 0.52650255 0.47087049
		 0.52554995 0.58532107 0.50875103 0.58404267 0.50866872 0.54232895 0.4593249 0.54300439
		 0.45855477 0.61134863 0.49325755 0.61227226 0.49416277 0.51460183 0.52107871 0.51380646
		 0.52016389;
	setAttr ".uvst[0].uvsp[250:499]" 0.47086078 0.52432013 0.47085375 0.5234279
		 0.61269808 0.52763259 0.77830917 0.63351017 0.7515105 0.63630742 0.75039655 0.63563275
		 0.7494753 0.63487822 0.75014824 0.56720394 0.75124669 0.56741959 0.74840802 0.63355732
		 0.54543114 0.45574376 0.54580355 0.45482394 0.74811774 0.56584746 0.74922073 0.56687194
		 0.74994451 0.51878405 0.75104117 0.51877928 0.74781716 0.51879334 0.74891382 0.51878864
		 0.7477079 0.47173893 0.74880195 0.47070503 0.74972653 0.47036481 0.75082302 0.47013953
		 0.87703818 0.47868031 0.87813622 0.47885218 0.96260095 0.49201459 0.44743675 0.71737641
		 0.44701499 0.71596283 0.44664723 0.7149722 0.43209547 0.63922375 0.43184376 0.63825589
		 0.41064453 0.52340281 0.41140586 0.52250332 0.42704707 0.5217337 0.42785251 0.52080971
		 0.36162186 0.71807033 0.30699545 0.67458981 0.26992619 0.71458131 0.34492061 0.73336548
		 0.41378599 0.71878719 0.36040783 0.71453673 0.41239518 0.71526879 0.41287822 0.71982217
		 0.36011678 0.71340436 0.34400618 0.72944647 0.3436147 0.72846341 0.36146939 0.71251708
		 0.35495871 0.51382965 0.35575563 0.51399761 0.35774642 0.53879714 0.35669291 0.53856063
		 0.35522169 0.51298916 0.32760867 0.49908108 0.32794511 0.4979122 0.35579759 0.51296288
		 0.35576975 0.51119685 0.35627365 0.51111954 0.35744292 0.51036727 0.35616547 0.5104695
		 0.39771837 0.45964369 0.39840496 0.46040392 0.32899594 0.49632567 0.32990459 0.49538341
		 0.30582392 0.72490346 0.30559608 0.72669131 0.30115011 0.73744553 0.30027881 0.73699164
		 0.30591831 0.72604436 0.32180268 0.70346498 0.32254887 0.70414937 0.30711788 0.72738498
		 0.30704185 0.72828305 0.34249458 0.67389959 0.34348273 0.67430335 0.30763674 0.72808236
		 0.30510396 0.73929042 0.30419016 0.73886937 0.32452139 0.70588785 0.32532054 0.70652312
		 0.34661096 0.67580682 0.3475242 0.67633772 0.37262046 0.63197738 0.87683028 0.42274925
		 0.81280589 0.40714011 0.34540316 0.5673247 0.37329173 0.63284546 0.37508184 0.63229698
		 0.37481868 0.633304 0.37213564 0.63289422 0.37571228 0.63366407 0.37611902 0.6325714
		 0.36601329 0.57374573 0.36706454 0.57384884 0.32826728 0.74255961 0.32796761 0.74157244
		 0.29993156 0.76160735 0.29969183 0.76051921 0.29912052 0.76193422 0.30200672 0.76429182
		 0.50902295 0.88340718 0.51004362 0.88387591 0.50554168 0.94166797 0.5990026 0.93693733
		 0.59903008 0.9380855 0.69265288 0.93631333 0.69256872 0.93734336 0.5263837 0.79676992
		 0.52749437 0.79730028 0.95269024 0.92607224 0.93807387 0.9348473 0.94279814 0.8753885
		 0.8471837 0.69529623 0.91308486 0.78858429 0.91408539 0.78785378 0.92887008 0.88072133
		 0.92994708 0.88045561 0.9065969 0.79394281 0.90767133 0.79332727 0.45016637 0.92707902
		 0.43494993 0.87557513 0.43595231 0.87545788 0.41056982 0.80160809 0.41148838 0.8010627
		 0.6937499 0.93647718 0.68539405 0.87976933 0.68639213 0.87925035 0.66381156 0.79406714
		 0.664895 0.79348302 0.78224802 0.69716531 0.7842778 0.76768684 0.84281623 0.88610727
		 0.8417567 0.79896075 0.35793543 0.88310397 0.35371548 0.80887973 0.59778458 0.88445258
		 0.59576696 0.80057418 0.29477704 0.75951123 0.30299434 0.76480514 0.32875931 0.7466957
		 0.32899749 0.74776345 0.77730441 0.40381497 0.32907614 0.5297752 0.7504819 0.40125263
		 0.74741346 0.40402964 0.67278588 0.43625036 0.39524919 0.45686957 0.74847776 0.40269724
		 0.74937952 0.40192261 0.60044438 0.64412081 0.9141311 0.55123448 0.5050112 0.67117935
		 0.56919301 0.66617924 0.51623213 0.49188849 0.67310333 0.51911777 0.91490012 0.51806301
		 0.47195345 0.67202586 0.91230232 0.43738535 0.91384113 0.48489949 0.37427378 0.66758782
		 0.43888712 0.67165583 0.42499638 0.49257389 0.47049135 0.47611523 0.34523004 0.73438841
		 0.27868614 0.73198098 0.29378295 0.75869286 0.44749296 0.71836144 0.30731219 0.67233962
		 0.36131972 0.71963447 0.47226453 0.71763426 0.6649307 0.73182595 0.59814668 0.73279887
		 0.49704331 0.71800917 0.58185196 0.71726054 0.58044213 0.71740967 0.39239943 0.66967213
		 0.55146438 0.66854304 0.36122739 0.71211046 0.36138386 0.71438402 0.41069585 0.71428955
		 0.36309105 0.71862572 0.36253893 0.71769077 0.58247691 0.71055752 0.58227324 0.7127524
		 0.53069645 0.71794075 0.53168738 0.71900135 0.30135518 0.76490825 0.29845011 0.76070827
		 0.63974071 0.76379329 0.6413697 0.76390296 0.64365792 0.76097858 0.34290892 0.64561546
		 0.91300774 0.59876013 0.95977342 0.45506456 0.63614184 0.67069483 0.32802898 0.52961981
		 0.34454155 0.56775886 0.61374271 0.52746087 0.59782225 0.56584561 0.32737669 0.49692017
		 0.32665956 0.4986864 0.32965109 0.49437538 0.32824573 0.49574342 0.39486277 0.45595551
		 0.3716163 0.63229495 0.878223 0.42261428 0.61300087 0.49359015 0.61158717 0.49224588
		 0.67350537 0.60198396 0.614645 0.49652055 0.6138984 0.49474809 0.57128263 0.63159597
		 0.57173073 0.63083142 0.25900635 0.69662845 0.63655752 0.67206639 0.24786997 0.68029726
		 0.25623217 0.72786546 0.25046039 0.42898321 0.22628936 0.62676585 0.080971062 0.62790978
		 0.060210317 0.68153328 0.052439421 0.72903609 0.055828035 0.75586307 0.15556726 0.76153994
		 0.1532858 0.76154613 0.28999829 0.80331171 0.37237042 0.96945333 0.46717036 0.91290712
		 0.27481914 0.96129262 0.52018833 0.79169059 0.71397257 0.92607498 0.51070184 0.96391302
		 0.83322775 0.76967955 0.94377482 0.87494671 0.85320932 0.65423 0.7416203 0.87740564
		 0.76917875 0.78961504 0.84371746 0.96034998 0.75821149 0.95424294 0.92905146 0.9521656
		 0.9303906 0.95136636 0.75684917 0.9534719 0.73280674 0.92830306 0.047372155 0.11100592
		 0.045930915 0.11032463 0.053701572 0.11047291 0.052256517 0.11115237 0.061878316
		 0.25590131 0.082358412 0.26169151 0.084564053 0.32518077 0.063103251 0.33532277 0.052210085
		 0.36084357;
	setAttr ".uvst[0].uvsp[500:749]" 0.077749811 0.35230437 0.070708476 0.37792841
		 0.049046569 0.36242807 0.056645803 0.33422783 0.038696341 0.32039711 0.030893199
		 0.26296994 0.050932102 0.25415745 0.092645936 0.25762925 0.094436757 0.31452 0.036479704
		 0.21476409 0.050470762 0.21323594 0.072287612 0.21451202 0.079659276 0.21200147 0.058184855
		 0.21400163 0.058401637 0.10862858 0.043623678 0.33927199 0.17474124 0.26599079 0.17677763
		 0.26765203 0.17240348 0.26606897 0.17229372 0.26503584 0.13553104 0.34009847 0.13432983
		 0.3496514 0.080146901 0.39672402 0.12333491 0.37306044 0.12822303 0.38700238 0.12618563
		 0.3620365 0.1563963 0.36642575 0.1592491 0.37371486 0.16326648 0.38168976 0.1685605
		 0.35469791 0.16297621 0.35970679 0.10706129 0.20289305 0.11792123 0.20184752 0.093644463
		 0.23765454 0.1002812 0.22595331 0.09841039 0.21421662 0.90047973 0.015373234 0.89912492
		 0.01460113 0.90669447 0.015352 0.90523082 0.015898693 0.90368587 0.1577698 0.92313427
		 0.16483927 0.92117447 0.22692844 0.8994984 0.2352131 0.8857466 0.25821257 0.91189724
		 0.25382927 0.89973742 0.27719563 0.88240176 0.25931004 0.89327806 0.23352283 0.87675869
		 0.21855813 0.87303495 0.16236183 0.89317364 0.15525863 0.93345708 0.1616171 0.93108672
		 0.21693665 0.88193715 0.11575983 0.89569432 0.11530502 0.91686791 0.11818551 0.92424709
		 0.11631262 0.90315884 0.11662222 0.91141886 0.013922337 0.88003886 0.23698166 0.97797841
		 0.22992721 0.97777265 0.23301959 0.97602504 0.22854778 0.97683066 0.22758132 0.96266288
		 0.24637204 0.96124882 0.25551042 0.90733415 0.29601684 0.94744998 0.27634704 0.95071024
		 0.29047492 0.95202059 0.26627773 0.98064941 0.27426472 0.982454 0.28164619 0.9853465
		 0.28988653 0.9938392 0.26411605 0.98786396 0.26839933 0.98095757 0.13606496 0.98914999
		 0.14388229 0.94503719 0.14944798 0.95846575 0.14635876 0.96630043 0.13693805 0.34053105
		 0.051178396 0.3403993 0.04642494 0.34077996 0.044876426 0.34068814 0.052765653 0.20025881
		 0.031061724 0.12441773 0.030636311 0.13714741 0.013090417 0.19426091 0.010639146
		 0.0950417 0.024561971 0.099375851 0.02688162 0.11694611 0.046190456 0.092927553 0.04867208
		 0.12481166 0.037134022 0.20132901 0.041597947 0.19294222 0.060187265 0.13539107 0.057275936
		 0.19082488 0.070016578 0.13678436 0.069829881 0.24070357 0.043566525 0.23862369 0.057012841
		 0.23838417 0.06454438 0.24066035 0.022478908 0.24038844 0.036100373 0.34013864 0.057597324
		 0.11544476 0.008209005 0.12847815 0.10095564 0.13422807 0.1021999 0.13814412 0.1036019
		 0.14192353 0.10527145 0.12314043 0.098257706 0.11694939 0.090614244 0.1072943 0.081506893
		 0.095778473 0.082162604 0.081978299 0.087642938 0.073588587 0.060304254 0.094835736
		 0.11522751 0.089629211 0.11046456 0.10032491 0.12156988 0.10715858 0.12252989 0.081304647
		 0.11421044 0.20184897 0.13707979 0.2013555 0.12595099 0.20417939 0.10809394 0.2075132
		 0.097307667 0.2001984 0.081990272 0.4181096 0.13403884 0.41313165 0.13501874 0.41143435
		 0.13489428 0.41975331 0.13360006 0.42108709 0.28507504 0.43317938 0.36495122 0.41263396
		 0.35426417 0.40057862 0.29478046 0.43003625 0.39640981 0.43203384 0.391574 0.45081231
		 0.37085542 0.45442504 0.39701453 0.4400003 0.36359033 0.43198359 0.28219804 0.45293111
		 0.28795815 0.4594475 0.34902945 0.46362031 0.28858027 0.4719997 0.34471425 0.42741492
		 0.24041051 0.44192553 0.24028894 0.44989562 0.23926243 0.40522945 0.24408972 0.41960993
		 0.24201709 0.42493331 0.13334265 0.41058189 0.37738612 0.53547561 0.35626662 0.52954441
		 0.34858894 0.53313154 0.35320041 0.53460515 0.35404208 0.51367223 0.36077768 0.50665104
		 0.36844853 0.49847549 0.38004375 0.49985164 0.39180639 0.50638241 0.40621784 0.46659455
		 0.41999102 0.53523773 0.38946629 0.53065234 0.39569116 0.54130775 0.38278848 0.54150683
		 0.37532473 0.53531915 0.40422618 0.5179413 0.28603891 0.51041728 0.29002687 0.49525353
		 0.29533002 0.48562101 0.29894498 0.47997576 0.31297213 0.89107651 0.34809691 0.88983631
		 0.34276557 0.88991022 0.34093189 0.89162326 0.3498441 0.72825652 0.35607308 0.64034986
		 0.36848408 0.64801687 0.343503 0.71824658 0.33445448 0.61335474 0.38726717 0.6121242
		 0.3908253 0.59236807 0.36660236 0.61951905 0.35587156 0.64275432 0.37525034 0.73195583
		 0.36784834 0.72538495 0.39140648 0.66089344 0.39254653 0.72084415 0.3224577 0.65749228
		 0.3308039 0.77677453 0.36150861 0.77743196 0.3771354 0.77353764 0.32918489 0.77207607
		 0.33770579 0.77478093 0.35314628 0.89115465 0.33546317 0.64020729 0.39045849 0.62563729
		 0.26717705 0.62715495 0.26843145 0.62569481 0.26864484 0.62317878 0.26692903 0.61343461
		 0.2926136 0.62381452 0.28992718 0.57014287 0.35907757 0.57345718 0.3051306 0.58951187
		 0.30836713 0.60115433 0.30358499 0.58298743 0.26899394 0.5914911 0.27097791 0.57354867
		 0.26595631 0.5978471 0.26263195 0.60250974 0.25573149 0.71174216 0.28436834 0.70636606
		 0.27524573 0.69212157 0.31435928 0.69769943 0.30272934 0.7078988 0.29757386 0.22477886
		 0.41253933 0.22966093 0.41201815 0.23116073 0.41258821 0.22338694 0.41333225 0.22820204
		 0.2662347 0.22358921 0.18669698 0.24590629 0.19511539 0.24816948 0.25894433 0.20934284
		 0.16313404 0.20589995 0.1620228 0.223629 0.14356047 0.23623937 0.16751194 0.21720356
		 0.18846491 0.21740389 0.26884523 0.19668752 0.26165918 0.20028341 0.20391467 0.25878507
		 0.26225445 0.25614071 0.20533922 0.22003984 0.30987644 0.20591018 0.3094219 0.24936974
		 0.30887958 0.24179158 0.30693132 0.22770783 0.30852577 0.23601106 0.41407505 0.20358035
		 0.18497533 0.31810451 0.18198234 0.31653607 0.18417388 0.31523782 0.18246204 0.31735003
		 0.17637911 0.28694472 0.16554391 0.2884427 0.1749275 0.23134312 0.12418299 0.2759437
		 0.12966621 0.27266279 0.14419985;
	setAttr ".uvst[0].uvsp[750:850]" 0.27740899 0.15452483 0.30860671 0.13858303
		 0.30678865 0.14617699 0.31153873 0.13010123 0.31423092 0.15216899 0.32039198 0.15654117
		 0.32409573 0.28598508 0.3331764 0.27662545 0.28294149 0.27224612 0.298235 0.27525154
		 0.30736047 0.28571171 0.75099075 0.30001655 0.75267631 0.30034894 0.74420881 0.2996352
		 0.74590814 0.29938579 0.74394739 0.14750063 0.72267437 0.13900858 0.73126405 0.078055449
		 0.75139546 0.066126898 0.74778229 0.033975437 0.7740494 0.034191385 0.76883388 0.05970189
		 0.74983227 0.038851321 0.75832224 0.067225486 0.77880734 0.080696769 0.77592063 0.14272234
		 0.75512648 0.14973864 0.7920934 0.083550118 0.7866751 0.14151353 0.76776141 0.19134778
		 0.75313342 0.19216993 0.77585953 0.1918821 0.74516273 0.19106936 0.73053318 0.18996665
		 0.75791395 0.30025822 0.72817826 0.054384023 0.85122669 0.080646031 0.85023904 0.083713956
		 0.84887731 0.083815359 0.84785163 0.083042733 0.81646156 0.064554974 0.82395601 0.072041735
		 0.80776274 0.053199604 0.80972856 0.040935963 0.78872478 0.014744656 0.81714511 0.026756423
		 0.84076339 0.037511706 0.84528869 0.04362452 0.85147101 0.050219506 0.85173458 0.057650313
		 0.84571403 0.029013338 0.84082317 0.15881434 0.82981265 0.1528492 0.81024987 0.14177725
		 0.80087215 0.13405219 0.79463017 0.1142158 0.37059659 0.050512072 0.37035388 0.05217379
		 0.37062895 0.043855395 0.37095261 0.045507845 0.51912206 0.034980338 0.52631873 0.013720598
		 0.58618605 0.018690776 0.59901357 0.037627961 0.62959176 0.031089615 0.63290125 0.054962944
		 0.60679919 0.054294627 0.62506169 0.03357869 0.59844345 0.044476341 0.58635366 0.06522356
		 0.52572501 0.065892741 0.51757658 0.046008479 0.58355033 0.078033701 0.52763218 0.076311767
		 0.47771394 0.060817864 0.4760446 0.046569791 0.47770545 0.068763047 0.47666991 0.038715299
		 0.47697201 0.024349999 0.37075335 0.057287481 0.60874003 0.014068212 0.60162961 0.13280566
		 0.59769875 0.13238341 0.59769499 0.13120949 0.59826779 0.13006112 0.61064899 0.10940677
		 0.6038962 0.11715582 0.62111896 0.10008954 0.63281804 0.10014102 0.65682262 0.064400658
		 0.64769059 0.10496913 0.64005363 0.12995559 0.63445336 0.13514768 0.62857175 0.14184953
		 0.62126619 0.14287375 0.64895314 0.13359141 0.5152564 0.13665794 0.52097893 0.12477297
		 0.52788341 0.10395378 0.53236872 0.092550725 0.54942799 0.081071138;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 669 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0 -18.135777 -2.7178183 0 -20.464535 
		-2.0099893 0 -18.192833 11.790329 0 -21.684956 13.287413 0 -24.044056 -10.737466 
		9.1384077 -17.036104 -17.984705 8.8832197 -16.694496 -17.510687 0 -16.694506 -17.770521 
		0 -17.0361 -17.984705 0 -18.617313 -6.7486258 0 -20.316219 -7.602479 5.3953919 -18.617327 
		-6.7486219 3.6526175 -16.694502 -17.66367 3.7575457 -17.0361 -17.984705 6.7765193 
		-23.325251 -9.1492748 0 -25.298628 20.984821 10.170517 -19.804487 -3.3044386 0 -23.365644 
		-2.8685148 13.739053 -21.528307 10.11822 0 -29.104073 11.136126 0 -30.313686 21.971348 
		10.170517 -21.802702 -3.3044386 0 -21.273521 -3.3044386 10.999727 -21.174789 -3.3044386 
		0 -36.553818 17.861176 0 -25.917255 9.6573524 13.984175 -24.32131 9.6573524 15.696713 
		-27.112631 10.326221 0 -21.958393 20.740383 10.170517 -18.587055 -3.3044384 0 -23.268606 
		-2.3707674 13.39204 -19.657948 10.535798 0 -26.975143 12.303056 0 -27.69924 -7.5622959 
		7.1978531 -25.211821 -5.5703645 5.3716888 -17.901772 -2.9098959 0 -17.901768 -2.909898 
		-9.1384077 -17.036104 -17.984705 -8.8832197 -16.694496 -17.510687 -5.3953919 -18.617327 
		-6.7486219 -3.6526175 -16.694502 -17.66367 -3.7575457 -17.0361 -17.984705 -6.7765193 
		-23.325251 -9.1492748 -10.170517 -19.804487 -3.3044386 -13.739053 -21.528307 10.11822 
		-10.170517 -21.802702 -3.3044386 -10.999727 -21.174789 -3.3044386 -13.984175 -24.32131 
		9.6573524 -15.696713 -27.112631 10.326221 -10.170517 -18.587055 -3.3044384 -13.39204 
		-19.657948 10.535798 -7.1978531 -25.211821 -5.5703645 -5.3716888 -17.901772 -2.9098959 
		0.1020343 -34.153782 14.449864 -0.1020343 -34.153782 14.449864 0.1020343 -21.338875 
		-7.8220396 -0.1020343 -21.338875 -7.8220396 0.1020343 -25.125139 -4.9569716 -0.1020343 
		-25.125139 -4.9569716 0.1020343 -31.630785 2.1612263 -0.1020343 -31.630785 2.1612263 
		0.1020343 -37.163296 7.7534304 -0.1020343 -37.163296 7.7534304 0.1020343 -40.804394 
		11.924168 -0.1020343 -40.804394 11.924168 0.1020343 -30.725176 7.211628 -0.1020343 
		-30.725176 7.211628 0.1020343 -25.198767 -1.3546571 -0.1020343 -25.198767 -1.3546571 
		5.8400712 -24.621956 -5.7538252 -5.8400712 -24.621956 -5.7538252 0 -24.621948 -8.3246279 
		14.901514 -17.647369 20.344534 14.838797 -17.544979 20.170742 15.032021 -17.633959 
		20.192623 0 -17.737465 20.026432 0 -17.853804 20.194471 16.722946 -20.036467 21.228603 
		16.64241 -19.870722 21.337259 16.781446 -19.852016 21.183584 0 -22.197376 21.559324 
		0 -22.349117 21.421028 13.3606 -18.192833 11.790331 13.522865 -18.281715 11.795088 
		10.815518 -19.47489 -2.9157035 10.891872 -19.291269 -2.9954362 15.060157 -20.197462 
		11.897615 14.996977 -20.380606 11.927877 10.238272 -18.280685 -3.3851311 10.050206 
		-18.175447 -3.4171576 17.758514 -27.062405 21.55089 17.731926 -26.919523 21.684397 
		17.834869 -26.868755 21.500444 0 -31.051743 22.691442 0 -31.207741 22.556465 10.829269 
		-21.198744 -3.1337693 10.899544 -21.000309 -3.1580606 15.351981 -25.26235 11.157367 
		15.257173 -25.437796 11.113422 15.856001 -22.923737 20.315687 15.971215 -22.879562 
		20.147573 16.725634 -26.631508 21.133324 16.83246 -26.565357 20.959375 18.090553 
		-30.260885 22.057085 18.211702 -30.15427 21.901114 18.694769 -30.165396 23.107937 
		18.882734 -30.253216 23.087667 18.748346 -30.33742 23.214214 17.977379 -29.124836 
		18.531538 17.794582 -29.024733 18.546955 10.082467 -21.284849 -4.838326 10.204451 
		-21.109831 -5.0098214 12.799701 -23.460804 0.78004962 12.69936 -23.647289 0.8028037 
		18.818285 -30.631695 23.116369 18.943529 -30.533848 22.995039 18.862566 -30.716068 
		22.920683 16.520821 -27.152235 10.369463 16.425272 -27.338005 10.385482 18.031443 
		-29.443804 18.52286 17.952158 -29.62813 18.48283 16.482805 -26.755846 10.260605 16.237215 
		-26.607782 10.170024 12.782269 -22.938463 0.73013479 12.590487 -22.812397 0.74340713 
		16.740829 -23.223148 21.186344 16.693027 -23.072094 21.309107 16.821489 -23.034786 
		21.151546 0 -26.390495 21.845539 0 -26.557346 21.724091 10.845172 -19.957335 -2.9397252 
		10.904356 -19.757971 -2.9888482 15.087729 -22.399626 11.404617 15.037582 -22.589487 
		11.458909 14.829972 -19.654928 20.391909 14.963717 -19.631899 20.238903 9.9156332 
		-18.801023 -6.4736323 10.204451 -18.87505 -6.1863747 -15.032021 -17.633959 20.192623 
		-14.8395 -17.544924 20.17136 -14.901514 -17.647369 20.344534 -13.359041 -18.192833 
		11.790331 -13.52449 -18.283743 11.795197 -16.781446 -19.852016 21.183584 -16.640297 
		-19.86973 21.336754 -16.722946 -20.036467 21.228603 -15.060014 -20.197287 11.897605 
		-14.996598 -20.380608 11.927898 -10.050206 -18.175447 -3.4171576 -10.238272 -18.280685 
		-3.3851311 -10.891872 -19.291269 -2.9954362 -10.815518 -19.47489 -2.9157035 -17.834869 
		-26.868755 21.500444 -17.725948 -26.915764 21.683018 -17.758514 -27.062405 21.55089 
		-15.971215 -22.879562 20.147573 -15.856001 -22.923737 20.315687 -15.352537 -25.264 
		11.156848 -15.257094 -25.437796 11.113422 -10.899544 -21.000309 -3.1580606 -10.829269 
		-21.198744 -3.1337693 -16.83246 -26.565357 20.959375 -16.725634 -26.631508 21.133324 
		-18.211702 -30.15427 21.901114 -18.090553 -30.260885 22.057085 -9.9156332 -18.801023 
		-6.4736323;
	setAttr ".pt[166:331]" -10.204451 -18.87505 -6.1863747 -12.78215 -22.934855 
		0.72979015 -12.593783 -22.811037 0.74282604 -10.082467 -21.284849 -4.838326 -10.204451 
		-21.109831 -5.0098214 -12.799482 -23.454245 0.77942276 -12.69936 -23.647289 0.8028037 
		-18.748346 -30.33742 23.214214 -18.882721 -30.252405 23.089249 -18.694769 -30.165396 
		23.107937 -18.862566 -30.716068 22.920683 -18.941898 -30.529781 22.991253 -18.818285 
		-30.631695 23.116369 -16.520821 -27.152235 10.369463 -16.425272 -27.338005 10.385482 
		-18.031473 -29.44397 18.522854 -17.952158 -29.62813 18.48283 -16.482805 -26.755846 
		10.260605 -16.237215 -26.607782 10.170024 -17.977373 -29.124796 18.53154 -17.794619 
		-29.024719 18.546953 -16.821489 -23.034786 21.151546 -16.68959 -23.07019 21.308548 
		-16.740829 -23.223148 21.186344 -14.963717 -19.631899 20.238903 -14.829972 -19.654928 
		20.391909 -15.087503 -22.399265 11.404504 -15.037653 -22.589487 11.458909 -10.904356 
		-19.757971 -2.9888482 -10.845172 -19.957335 -2.9397252 0.13116516 -36.43314 18.910097 
		0.1020343 -36.238422 18.850845 -0.1020343 -36.238422 18.850845 -0.13116516 -36.43314 
		18.910097 0.1020343 -42.835213 14.830976 0.051022258 -42.793442 15.030725 -0.051022258 
		-42.793442 15.030725 -0.1020343 -42.835213 14.830976 -10.840399 -21.479767 -2.9068477 
		-15.51708 -26.830391 10.216256 -17.760868 -29.682884 21.39469 -17.645214 -29.781404 
		21.547852 0 -35.570564 18.073307 17.645214 -29.781404 21.547852 17.760868 -29.682884 
		21.39469 15.51708 -26.830391 10.216256 10.840399 -21.479767 -2.9068477 10.508975 
		-17.330435 -13.667244 10.515395 -17.30138 -13.835883 10.615078 -17.398504 -13.829202 
		10.618709 -17.397297 -13.694285 4.3528676 -17.330671 -13.665995 4.3334517 -17.310129 
		-13.785011 6.9028811 -13.913916 -21.908907 6.7934184 -13.90047 -22.044062 6.8851938 
		-13.82289 -22.093538 6.8846145 -13.753135 -21.983322 2.8385122 -13.914515 -22.247389 
		2.8498476 -13.927956 -22.366909 7.0441561 -13.971136 -22.46138 6.9684715 -14.06605 
		-22.429293 7.1742692 -14.182766 -22.45163 7.134634 -14.018423 -22.562029 2.902657 
		-14.050726 -22.487148 2.9464297 -14.170417 -22.470987 10.663208 -17.698967 -13.884551 
		10.725227 -17.615297 -13.836536 10.708059 -17.56044 -13.94236 10.733894 -17.661123 
		-14.008593 4.414897 -17.66238 -14.000616 4.445683 -17.720901 -13.894965 9.2220221 
		-13.672363 -18.457113 9.2202253 -13.5813 -18.374662 9.0562925 -13.311101 -18.125822 
		8.9329557 -13.313392 -18.126545 8.0857983 -9.8498077 -20.838236 7.9704485 -9.8809223 
		-20.808695 7.4612951 -6.8637905 -22.630163 7.3874087 -6.7311916 -22.729118 7.4898901 
		-6.7982016 -22.779778 7.4939132 -6.7989292 -23.21423 7.5090551 -6.7962589 -23.071396 
		7.4220247 -6.7101622 -23.129166 8.1668091 -10.038543 -21.214613 8.1744423 -9.9748344 
		-21.112261 5.8626842 -11.29504 -22.220043 5.9146285 -11.211508 -22.131952 6.1417294 
		-11.467611 -22.709671 6.0436831 -11.468044 -22.632193 5.8697586 -6.4780464 -23.130161 
		5.8601899 -6.5673275 -23.210991 5.0830078 -9.3734303 -22.831459 4.9862342 -9.3840828 
		-22.753057 2.9371579 -6.1994371 -23.135593 2.8753328 -6.294158 -23.132187 2.9943326 
		-6.302557 -23.209131 5.8642273 -6.4830761 -22.720957 5.8525772 -6.5630493 -22.631138 
		2.992264 -6.2847061 -22.627396 2.8799522 -6.286912 -22.710411 2.9409614 -6.188776 
		-22.718513 4.8008347 -9.2068729 -22.330898 4.8551731 -9.1152325 -22.254751 11.819809 
		-20.640003 -8.0187206 11.748904 -20.737488 -8.0506077 13.549809 -21.697344 -0.76105314 
		13.539452 -21.701067 -0.63297188 13.576876 -21.595814 -0.59958446 13.599078 -21.588123 
		-0.72447604 7.4207315 -26.231161 -2.8271074 7.5104604 -26.146408 -2.9150133 13.300151 
		-21.584925 -0.37760186 13.428536 -21.590469 -0.37793601 13.401326 -21.700157 -0.42926237 
		13.206898 -21.691477 -0.4769741 5.4730225 -27.112438 -3.2275972 5.3762484 -27.074486 
		-3.3389673 12.77726 -21.286228 -3.8971512 12.831262 -21.178837 -3.860621 12.339967 
		-18.709551 -6.7468481 12.25713 -18.617334 -6.7486234 13.023787 -17.441866 -0.028219499 
		12.980143 -17.456854 0.083836228 12.860889 -17.395533 0.10772812 12.93567 -17.361153 
		-0.0096046273 12.729767 -17.985027 -2.9340484 12.640407 -17.901772 -2.9098971 12.631676 
		-17.575151 0.1520256 12.777435 -17.462458 0.1833818 12.845127 -17.558367 0.19805051 
		12.73516 -17.645697 0.16503665 5.3295784 -17.394159 0.10286406 5.3538036 -17.361895 
		-0.013518821 5.1794343 -17.584173 0.16208941 5.2926254 -17.464128 0.17697126 9.204402 
		-20.837778 -7.6024837 9.1630507 -20.949362 -7.5797601 9.1173391 -20.316217 -7.6024795 
		9.2043972 -20.400341 -7.602478 0 -17.476677 0.18439917 0 -17.594519 0.15795107 0 
		-17.361586 -0.011853788 0 -17.39695 0.10362321 0 -17.31036 -13.785175 0 -17.330635 
		-13.666101 0 -13.996023 -22.553034 0 -13.936142 -22.447775 0 -14.155053 -22.495039 
		0 -14.049124 -22.553043 0 -17.733234 -13.905442 0 -17.662006 -14.002972 0 -29.63163 
		-5.0442104 0 -29.592505 -5.1594777 0 -29.631636 -4.8734584 0 -29.510469 -4.8095284 
		-6.8747439 -13.811641 -22.071751 -6.7997398 -13.90002 -22.042395 -6.9013691 -13.9118 
		-21.912256 -6.8938212 -13.643139 -21.993635 -2.8385122 -13.914515 -22.247389 -2.8498476 
		-13.927956 -22.366909 -7.0441561 -13.971136 -22.46138 -7.134634 -14.018423 -22.562029 
		-7.1742692 -14.182766 -22.45163 -6.9740219 -14.067844 -22.433567 -2.902657 -14.050726 
		-22.487148;
	setAttr ".pt[332:497]" -2.9464297 -14.170417 -22.470987 -13.599078 -21.588123 
		-0.72447604 -13.578679 -21.598383 -0.60220408 -13.53267 -21.704002 -0.63008094 -13.549809 
		-21.697344 -0.76105314 -7.4190269 -26.231934 -2.8274598 -7.5104604 -26.146408 -2.9150133 
		-13.206898 -21.691477 -0.4769741 -13.400645 -21.699369 -0.4260917 -13.426608 -21.59288 
		-0.37479094 -13.300151 -21.584925 -0.37760186 -5.4760976 -27.111036 -3.2269652 -5.3762484 
		-27.074486 -3.3389673 -7.4595714 -6.884387 -22.628229 -7.4898901 -6.7982016 -22.779778 
		-7.3874087 -6.7311916 -22.729118 -8.0853729 -9.8492231 -20.836899 -7.9710813 -9.8800297 
		-20.807667 -7.4220247 -6.7101622 -23.129166 -7.5090313 -6.7960758 -23.071735 -7.4939132 
		-6.7989292 -23.21423 -8.1666698 -10.038752 -21.214827 -8.1743441 -9.9746857 -21.111977 
		-10.618709 -17.397297 -13.694285 -10.620135 -17.406403 -13.839567 -10.523222 -17.304279 
		-13.818253 -10.508975 -17.330435 -13.667244 -10.707048 -17.558363 -13.942455 -10.723913 
		-17.61327 -13.83308 -10.668437 -17.697582 -13.887257 -10.733983 -17.661179 -14.008368 
		-8.9329557 -13.313392 -18.126545 -9.0562925 -13.311101 -18.125822 -9.2202253 -13.5813 
		-18.374662 -9.2220221 -13.672363 -18.457113 -4.9862342 -9.3840828 -22.753057 -5.0830078 
		-9.3734303 -22.831459 -2.9943326 -6.302557 -23.209131 -2.8791611 -6.2995453 -23.127583 
		-2.9371579 -6.1994371 -23.135593 -2.9409614 -6.188776 -22.718513 -2.8773808 -6.2828212 
		-22.707901 -2.992264 -6.2847061 -22.627396 -4.8551731 -9.1152325 -22.254751 -4.8008347 
		-9.2068729 -22.330898 -6.1430898 -11.467013 -22.709808 -6.0430627 -11.467461 -22.630777 
		-5.8616915 -11.29409 -22.217783 -5.9124494 -11.212469 -22.131704 -5.8697596 -6.4780455 
		-23.130194 -5.8601942 -6.567297 -23.210995 -5.8525772 -6.5630493 -22.631138 -5.8642273 
		-6.4830761 -22.720957 -4.414897 -17.66238 -14.000616 -4.445683 -17.720901 -13.894965 
		-11.748904 -20.737488 -8.0506077 -11.819809 -20.640003 -8.0187206 -12.77726 -21.286228 
		-3.8971512 -12.831262 -21.178837 -3.860621 -4.3528676 -17.330671 -13.665995 -4.3334517 
		-17.310129 -13.785011 -12.339967 -18.709551 -6.7468481 -12.25713 -18.617334 -6.7486234 
		-12.729767 -17.985027 -2.9340484 -12.640407 -17.901772 -2.9098971 -12.73516 -17.645697 
		0.16503665 -12.84755 -17.559074 0.19602591 -12.777688 -17.461077 0.18180498 -12.631676 
		-17.575151 0.1520256 -12.93567 -17.361153 -0.0096046273 -12.862484 -17.395073 0.10719982 
		-12.97981 -17.457767 0.084079444 -13.023787 -17.441866 -0.028219499 -5.1794343 -17.584173 
		0.16208947 -5.2926254 -17.464128 0.17697126 -5.3295784 -17.394159 0.10286406 -5.3538036 
		-17.361895 -0.013518821 -9.1630507 -20.949362 -7.5797601 -9.204402 -20.837778 -7.6024837 
		-9.2043972 -20.400341 -7.602478 -9.1173391 -20.316217 -7.6024795 19.688709 -13.892895 
		1.1401585 17.578211 -14.179899 1.1401585 19.763235 -13.731652 0.089177839 17.652737 
		-14.018661 0.089177839 17.941124 -24.013018 -2.8909345 16.9105 -21.259529 -4.4175358 
		17.564808 -23.97275 -2.5615234 16.534184 -21.227314 -1.9218035 22.769163 -0.4503457 
		3.979497 22.59623 -0.45034412 3.979497 22.59623 -0.45034254 3.4932234 22.769165 -0.45034727 
		3.4932234 19.587341 -9.9765511 1.5429075 19.56963 -10.055755 2.2871876 20.919264 
		-10.24771 2.2871869 20.936975 -10.1685 1.5429081 16.832561 -19.138195 -2.7941222 
		18.043119 -20.890284 -2.4110854 17.77677 -20.913677 -1.8708202 16.566212 -19.156918 
		-1.4877821 9.1014738 -16.869219 -4.5136333 9.5791702 -16.76128 -5.0411687 9.3463097 
		-17.656343 -4.7590089 9.8663082 -17.575489 -5.3321686 12.454738 -18.699734 -4.796999 
		12.454735 -18.673403 -3.7586949 12.454738 -17.295506 -3.4394886 12.45474 -17.280209 
		-4.4002547 3.729475 -19.458168 -4.8496017 3.7726369 -19.381809 -4.9440827 3.8633521 
		-19.520403 -4.8935485 3.9151988 -19.441694 -4.9962025 17.677795 -13.892895 6.6512642 
		15.686266 -14.179899 5.9526844 18.095997 -13.731652 5.684196 16.104469 -14.018661 
		4.9856162 17.363024 -24.013018 2.2689497 16.895805 -21.259529 0.48726392 16.898886 
		-23.97275 2.4552307 15.714609 -21.227314 2.7177501 19.644773 -0.4503457 10.350185 
		19.481588 -0.45034412 10.292946 19.642546 -0.45034254 9.8340826 19.805731 -0.45034727 
		9.891325 17.448828 -9.9765511 6.9977574 17.185757 -10.055755 7.6942196 18.459314 
		-10.24771 8.1409521 18.722385 -10.1685 7.4444914 16.284906 -19.138195 1.9933681 17.300438 
		-20.890284 2.7555103 16.870274 -20.913677 3.1771586 15.601167 -19.156918 3.1379066 
		10.578313 -16.869219 -2.500447 11.203698 -16.76128 -2.8401258 10.890571 -17.656343 
		-2.650949 11.570972 -17.575489 -3.0196788 13.836348 -18.699734 -1.6578991 13.492666 
		-18.673403 -0.67812699 13.387008 -17.295506 -0.37691304 13.705027 -17.280209 -1.2835191 
		5.6203418 -19.458168 -4.5956216 5.6923447 -19.381809 -4.6704903 5.7612195 -19.520403 
		-4.5927768 5.8441219 -19.441694 -4.6724834 19.688709 -13.892895 -12.362843 17.578211 
		-14.179899 -12.362836 19.763235 -13.731652 -11.311856 17.652737 -14.018661 -11.311853 
		17.941124 -24.013018 -8.3317432 16.9105 -21.259529 -6.8051429 17.564808 -23.97275 
		-8.6611509 16.534184 -21.227314 -9.3008699 22.769163 -0.4503457 -15.202173 22.59623 
		-0.45034412 -15.202173 22.59623 -0.45034254 -14.715901 22.769165 -0.45034727 -14.715901 
		19.587341 -9.9765511 -12.765585 19.56963 -10.055755 -13.509867 20.919264 -10.24771 
		-13.509864 20.936975 -10.1685 -12.765585 16.832561 -19.138195 -8.4285536 18.043119 
		-20.890284 -8.811594 17.77677 -20.913677 -9.3518581 16.566212 -19.156918 -9.7348919 
		10.819461 -16.869219 -7.1305709;
	setAttr ".pt[498:663]" 11.297159 -16.76128 -6.6030354 11.064298 -17.656343 
		-6.8851938 11.584297 -17.575489 -6.3120298 14.172726 -18.699734 -6.8471999 14.172723 
		-18.673403 -7.8855081 14.172724 -17.295506 -8.2047129 14.172727 -17.280209 -7.2439446 
		5.4474626 -19.458168 -6.7945967 5.4906249 -19.381809 -6.7001147 5.5813398 -19.520403 
		-6.7506561 5.6331863 -19.441694 -6.6479964 17.677795 -13.892895 -17.873941 15.686266 
		-14.179899 -17.175362 18.095997 -13.731652 -16.906874 16.104469 -14.018661 -16.208296 
		17.363024 -24.013018 -13.491626 16.895805 -21.259529 -11.709941 16.898886 -23.97275 
		-13.677909 15.714609 -21.227314 -13.940428 19.644773 -0.4503457 -21.572865 19.481588 
		-0.45034412 -21.515621 19.642546 -0.45034254 -21.056761 19.805731 -0.45034727 -21.114002 
		17.448828 -9.9765511 -18.220434 17.185757 -10.055755 -18.916897 18.459314 -10.24771 
		-19.36363 18.722385 -10.1685 -18.667168 16.284906 -19.138195 -13.216044 17.300438 
		-20.890284 -13.978185 16.870274 -20.913677 -14.399836 15.601167 -19.156918 -14.360582 
		9.8575544 -16.869219 -9.641798 10.48294 -16.76128 -9.3021193 10.16981 -17.656343 
		-9.4912987 10.850213 -17.575489 -9.12257 13.115591 -18.699734 -10.48435 12.771908 
		-18.673403 -11.46412 12.666251 -17.295506 -11.765339 12.984267 -17.280209 -10.85873 
		4.8995829 -19.458168 -7.5466232 4.9715858 -19.381809 -7.471755 5.0404606 -19.520403 
		-7.5494676 5.123363 -19.441694 -7.4697623 -19.688709 -13.892895 1.1401585 -17.578211 
		-14.179899 1.1401585 -19.763235 -13.731652 0.089177839 -17.652737 -14.018661 0.089177839 
		-17.941124 -24.013018 -2.8909345 -16.9105 -21.259529 -4.4175358 -17.564808 -23.97275 
		-2.5615234 -16.534184 -21.227314 -1.9218035 -22.769163 -0.4503457 3.979497 -22.59623 
		-0.45034412 3.979497 -22.59623 -0.45034254 3.4932234 -22.769165 -0.45034727 3.4932234 
		-19.587341 -9.9765511 1.5429075 -19.56963 -10.055755 2.2871876 -20.919264 -10.24771 
		2.2871869 -20.936975 -10.1685 1.5429081 -16.832561 -19.138195 -2.7941222 -18.043119 
		-20.890284 -2.4110854 -17.77677 -20.913677 -1.8708202 -16.566212 -19.156918 -1.4877821 
		-9.1014738 -16.869219 -4.5136333 -9.5791702 -16.76128 -5.0411687 -9.3463097 -17.656343 
		-4.7590089 -9.8663082 -17.575489 -5.3321686 -12.454738 -18.699734 -4.796999 -12.454735 
		-18.673403 -3.7586949 -12.454738 -17.295506 -3.4394886 -12.45474 -17.280209 -4.4002547 
		-3.729475 -19.458168 -4.8496017 -3.7726369 -19.381809 -4.9440827 -3.8633521 -19.520403 
		-4.8935485 -3.9151988 -19.441694 -4.9962025 -17.677795 -13.892895 6.6512642 -15.686266 
		-14.179899 5.9526844 -18.095997 -13.731652 5.684196 -16.104469 -14.018661 4.9856162 
		-17.363024 -24.013018 2.2689497 -16.895805 -21.259529 0.48726392 -16.898886 -23.97275 
		2.4552307 -15.714609 -21.227314 2.7177501 -19.644773 -0.4503457 10.350185 -19.481588 
		-0.45034412 10.292946 -19.642546 -0.45034254 9.8340826 -19.805731 -0.45034727 9.891325 
		-17.448828 -9.9765511 6.9977574 -17.185757 -10.055755 7.6942196 -18.459314 -10.24771 
		8.1409521 -18.722385 -10.1685 7.4444914 -16.284906 -19.138195 1.9933681 -17.300438 
		-20.890284 2.7555103 -16.870274 -20.913677 3.1771586 -15.601167 -19.156918 3.1379066 
		-10.578313 -16.869219 -2.500447 -11.203698 -16.76128 -2.8401258 -10.890571 -17.656343 
		-2.650949 -11.570972 -17.575489 -3.0196788 -13.836348 -18.699734 -1.6578991 -13.492666 
		-18.673403 -0.67812699 -13.387008 -17.295506 -0.37691304 -13.705027 -17.280209 -1.2835191 
		-5.6203418 -19.458168 -4.5956216 -5.6923447 -19.381809 -4.6704903 -5.7612195 -19.520403 
		-4.5927768 -5.8441219 -19.441694 -4.6724834 -19.688709 -13.892895 -12.362843 -17.578211 
		-14.179899 -12.362836 -19.763235 -13.731652 -11.311856 -17.652737 -14.018661 -11.311853 
		-17.941124 -24.013018 -8.3317432 -16.9105 -21.259529 -6.8051429 -17.564808 -23.97275 
		-8.6611509 -16.534184 -21.227314 -9.3008699 -22.769163 -0.4503457 -15.202173 -22.59623 
		-0.45034412 -15.202173 -22.59623 -0.45034254 -14.715901 -22.769165 -0.45034727 -14.715901 
		-19.587341 -9.9765511 -12.765585 -19.56963 -10.055755 -13.509867 -20.919264 -10.24771 
		-13.509864 -20.936975 -10.1685 -12.765585 -16.832561 -19.138195 -8.4285536 -18.043119 
		-20.890284 -8.811594 -17.77677 -20.913677 -9.3518581 -16.566212 -19.156918 -9.7348919 
		-10.819461 -16.869219 -7.1305709 -11.297159 -16.76128 -6.6030354 -11.064298 -17.656343 
		-6.8851938 -11.584297 -17.575489 -6.3120298 -14.172726 -18.699734 -6.8471999 -14.172723 
		-18.673403 -7.8855081 -14.172724 -17.295506 -8.2047129 -14.172727 -17.280209 -7.2439446 
		-5.4474626 -19.458168 -6.7945967 -5.4906249 -19.381809 -6.7001147 -5.5813398 -19.520403 
		-6.7506561 -5.6331863 -19.441694 -6.6479964 -17.677795 -13.892897 -17.873941 -15.686275 
		-14.179899 -17.175362 -18.095997 -13.731652 -16.906874 -16.104473 -14.018661 -16.208296 
		-17.363024 -24.013018 -13.491626 -16.895805 -21.259529 -11.709941 -16.898886 -23.97275 
		-13.677909 -15.714609 -21.227314 -13.940428 -19.64477 -0.45033759 -21.572865 -19.481586 
		-0.4503386 -21.515621 -19.64254 -0.45033836 -21.056761 -19.805735 -0.45034519 -21.114002 
		-17.448828 -9.9765482 -18.220434 -17.18576 -10.055752 -18.916897 -18.459316 -10.247707 
		-19.36363 -18.722399 -10.168502 -18.667168 -16.284912 -19.138206 -13.216044 -17.300425 
		-20.890284 -13.978185 -16.87027 -20.913675 -14.399836 -15.60117 -19.156931 -14.360582 
		-9.8575544 -16.869219 -9.641798 -10.48294 -16.76128 -9.3021193 -10.16981 -17.656343 
		-9.4912987 -10.850213 -17.575489 -9.12257 -13.115591 -18.699734 -10.48435 -12.771908 
		-18.673403 -11.46412 -12.666251 -17.295506 -11.765339;
	setAttr ".pt[664:668]" -12.984267 -17.280209 -10.85873 -4.8995829 -19.458168 
		-7.5466232 -4.9715858 -19.381809 -7.471755 -5.0404606 -19.520403 -7.5494676 -5.123363 
		-19.441694 -7.4697623;
	setAttr -s 669 ".vt";
	setAttr ".vt[0:165]"  -7.424617e-16 42.75970459 5.45737839 -3.3996243e-15 48.33085632 3.76401925
		 1.1934898e-15 42.89619827 -29.25087166 -1.6618651e-15 51.25050354 -32.83238983 6.6786854e-16 56.89422989 24.64301109
		 -21.86207008 40.12894821 41.98075104 -21.25157738 39.31168365 40.84679031 -3.3263323e-16 39.31168365 41.4683876
		 6.665675e-16 40.1289444 41.98075104 -2.3158558e-16 43.91171646 15.1003933 3.0531133e-16 47.97603226 17.14308548
		 -12.90754795 43.91172791 15.1003933 -8.73825932 39.31168365 41.21279907 -8.98928261 40.1289444 41.98075104
		 -16.21165657 55.17461777 20.84353065 3.7105735e-15 59.89559174 -51.24711227 -24.3312149 46.75180435 6.86076736
		 4.0371352e-15 55.27126312 5.81789398 -32.86832047 50.87574768 -25.25064087 1.3600232e-15 68.99945831 -27.68580246
		 8.3787144e-16 71.89325714 -53.60720825 -24.3312149 51.53219223 6.86076736 -1.1926224e-16 50.26621628 6.86076736
		 -26.31495667 50.030017853 6.86076736 1.5577816e-15 86.82170105 -43.77433014 -1.0234868e-16 61.37555695 -24.14809227
		 -33.45473862 57.55752945 -24.14809227 -37.55168915 64.2352829 -25.74824333 2.515349e-15 51.90465546 -50.66233826
		 -24.3312149 43.83930969 6.86076593 -7.0911159e-15 55.039115906 4.62711906 -32.038154602 46.40123749 -26.24962234
		 -2.6827499e-15 63.90636444 -30.47748184 5.39499e-16 65.63870239 17.04696846 -17.21962738 59.68796158 12.28160286
		 -12.85084248 42.19990158 5.91689491 3.6429193e-17 42.19989777 5.91689491 21.86207008 40.12894821 41.98075104
		 21.25157738 39.31168365 40.84679031 12.90754795 43.91172791 15.1003933 8.73825932 39.31168365 41.21279907
		 8.98928261 40.1289444 41.98075104 16.21165657 55.17461777 20.84353065 24.3312149 46.75180435 6.86076736
		 32.86832047 50.87574768 -25.25064087 24.3312149 51.53219223 6.86076736 26.31495667 50.030017853 6.86076736
		 33.45473862 57.55752945 -24.14809227 37.55168915 64.2352829 -25.74824333 24.3312149 43.83930969 6.86076593
		 32.038154602 46.40123749 -26.24962234 17.21962738 59.68796158 12.28160286 12.85084248 42.19990158 5.91689491
		 -0.24409956 81.080024719 -35.61335373 0.24409956 81.080024719 -35.61335373 -0.24409956 50.42256546 17.66835213
		 0.24409956 50.42256546 17.66835213 -0.24409956 59.48055267 10.81416798 0.24409956 59.48055267 10.81416798
		 -0.24409956 75.044181824 -6.21489716 0.24409956 75.044181824 -6.21489716 -0.24409956 88.27977753 -19.59328461
		 0.24409956 88.27977753 -19.59328461 -0.24409956 96.99047089 -29.57105637 0.24409956 96.99047089 -29.57105637
		 -0.24409956 72.87767029 -18.29711533 0.24409956 72.87767029 -18.29711533 -0.24409956 59.6566925 2.19624949
		 0.24409956 59.6566925 2.19624949 -13.97136688 58.27675629 12.72049522 13.97136688 58.27675629 12.72049522
		 0 58.27675629 18.87071037 -35.64931488 41.59127045 -49.71533585 -35.49927139 41.34632111 -49.29956818
		 -35.96152496 41.55918884 -49.35191727 1.8792209e-15 41.80680847 -48.95433044 1.8404264e-15 42.085128784 -49.3563385
		 -40.0067749023 47.30677795 -51.83032227 -39.81410599 46.91025925 -52.090263367 -40.14672852 46.86551285 -51.72262192
		 9.7326157e-17 52.47638321 -52.62151337 -2.2643404e-17 52.83939743 -52.29066467 -31.96294212 42.89619827 -29.25087547
		 -32.35113144 43.10883713 -29.26225471 -25.87426949 45.9632988 5.93078518 -26.056932449 45.52402115 6.12153149
		 -36.028835297 47.69193268 -29.50753593 -35.87769318 48.13006973 -29.57993317 -24.49330711 43.10637283 7.053809643
		 -24.043392181 42.85460663 7.13042784 -42.48419571 64.11512756 -52.60133743 -42.42058563 63.77331161 -52.92073059
		 -42.66685867 63.65185547 -52.48065567 1.2387241e-15 73.65893555 -55.32991409 1.0158214e-15 74.03213501 -55.0070037842
		 -25.90716553 50.08732605 6.4524703 -26.075286865 49.61260223 6.51058197 -36.72697449 59.80880737 -27.73661995
		 -36.50016403 60.22852707 -27.63148499 -37.93275833 54.21407318 -49.64632416 -38.20838928 54.10839462 -49.24414444
		 -40.013202667 63.084285736 -51.60238266 -40.26876831 62.92602539 -51.18624115 -43.27854156 71.76694489 -53.81232071
		 -43.568367 71.5118866 -53.4391861 -44.72402191 71.5384903 -56.32630157 -45.17369843 71.74859619 -56.27781296
		 -44.85219574 71.95004272 -56.58055496 -43.0077896118 69.04914093 -45.37805557 -42.57048035 68.80966187 -45.41493988
		 -24.12056923 50.29331589 10.53032875 -24.41239548 49.87461853 10.9406023 -30.62108803 55.49891663 -2.91066933
		 -30.38103676 55.94504929 -2.96510458 -45.019512177 72.65403748 -56.34647751 -45.31913757 72.41995239 -56.056213379
		 -45.12545013 72.855896 -55.87833023 -39.52322388 64.33003235 -25.85169411 -39.29463959 64.77444458 -25.89001465
		 -43.13713074 69.81221771 -45.35729218 -42.94745255 70.25318909 -45.26152802 -39.43227768 63.38173294 -25.59126854
		 -38.84474564 63.027519226 -25.37456894 -30.57938576 54.24930573 -2.79125667 -30.12057877 53.94771576 -2.82300854
		 -40.049560547 54.93036652 -51.72922134 -39.93519974 54.56899261 -52.022911072 -40.24252319 54.47974014 -51.64597702
		 2.916366e-15 62.50770187 -53.30623245 2.8363396e-15 62.90685654 -53.01568985 -25.9452095 47.11746597 5.98825264
		 -26.086797714 46.640522 6.10577106 -36.094795227 52.96022797 -28.32812309 -35.97483444 53.41444016 -28.45800591
		 -35.47816086 46.39401245 -49.8286705 -35.79812622 46.33892059 -49.46263504 -23.7214489 44.35119247 14.44251728
		 -24.41239548 44.52828598 13.75530434 35.96152496 41.55918884 -49.35191727 35.50095367 41.34618759 -49.30104828
		 35.64931488 41.59127045 -49.71533585 31.95921135 42.89619827 -29.25087547 32.35502243 43.11368561 -29.26251602
		 40.14672852 46.86551285 -51.72262192 39.80905151 46.90789032 -52.089054108 40.0067749023 47.30677795 -51.83032227
		 36.028495789 47.69150925 -29.50751114 35.87678528 48.13007355 -29.57998276 24.043392181 42.85460663 7.13042784
		 24.49330711 43.10637283 7.053809643 26.056932449 45.52402115 6.12153149 25.87426949 45.9632988 5.93078518
		 42.66685867 63.65185547 -52.48065567 42.40628815 63.76430893 -52.91742706 42.48419571 64.11512756 -52.60133743
		 38.20838928 54.10839462 -49.24414444 37.93275833 54.21407318 -49.64632416 36.72830582 59.81275558 -27.73537636
		 36.49997711 60.22852707 -27.63148499 26.075286865 49.61260223 6.51058197 25.90716553 50.08732605 6.4524703
		 40.26876831 62.92602539 -51.18624115 40.013202667 63.084285736 -51.60238266 43.568367 71.5118866 -53.4391861
		 43.27854156 71.76694489 -53.81232071 23.7214489 44.35119247 14.44251728;
	setAttr ".vt[166:331]" 24.41239548 44.52828598 13.75530434 30.57909966 54.24067307 -2.79043221
		 30.12846375 53.94446182 -2.82161832 24.12056923 50.29331589 10.53032875 24.41239548 49.87461853 10.9406023
		 30.62056351 55.48322296 -2.90916967 30.38103676 55.94504929 -2.96510458 44.85219574 71.95004272 -56.58055496
		 45.17366791 71.74665833 -56.28159714 44.72402191 71.5384903 -56.32630157 45.12545013 72.855896 -55.87833023
		 45.31523895 72.41023254 -56.047157288 45.019512177 72.65403748 -56.34647751 39.52322388 64.33003235 -25.85169411
		 39.29463959 64.77444458 -25.89001465 43.1371994 69.81261444 -45.35728073 42.94745255 70.25318909 -45.26152802
		 39.43227768 63.38173294 -25.59126854 38.84474564 63.027519226 -25.37456894 43.007774353 69.049049377 -45.37805939
		 42.57056808 68.80962372 -45.41493225 40.24252319 54.47974014 -51.64597702 39.92697906 54.56444168 -52.021575928
		 40.049560547 54.93036652 -51.72922134 35.79812622 46.33892059 -49.46263504 35.47816086 46.39401245 -49.8286705
		 36.094257355 52.95936584 -28.32785034 35.97500229 53.41444016 -28.45800591 26.086797714 46.640522 6.10577106
		 25.9452095 47.11746597 5.98825264 -0.31379011 86.53299713 -46.28369522 -0.24409956 86.067176819 -46.14194489
		 0.24409956 86.067176819 -46.14194489 0.31379011 86.53299713 -46.28369522 -0.24409956 101.84886169 -36.52509689
		 -0.12206198 101.74893188 -37.0029640198 0.12206198 101.74893188 -37.0029640198 0.24409956 101.84886169 -36.52509689
		 25.93379211 50.75962448 5.90959883 37.12194824 63.56007004 -25.48517227 42.4898262 70.38417053 -52.2276535
		 42.2131424 70.61986542 -52.59406662 1.4432899e-15 84.46943665 -44.28181839 -42.2131424 70.61986542 -52.59406662
		 -42.4898262 70.38417053 -52.2276535 -37.12194824 63.56007004 -25.48517227 -25.93379211 50.75962448 5.90959883
		 -25.14091682 40.83304977 31.65197945 -25.1562767 40.76351166 32.055438995 -25.3947506 40.99593353 32.039459229
		 -25.40343666 40.99304962 31.71666908 -10.41348743 40.83360291 31.64900589 -10.36703873 40.78452301 31.93374062
		 -16.51395607 32.65964127 51.36874771 -16.25208664 32.62747192 51.69210434 -16.47164345 32.44187546 51.81045532
		 -16.47025681 32.27496719 51.54675674 -6.79065275 32.66106415 52.17855072 -6.81777048 32.69321442 52.46441269
		 -16.85193253 32.79650879 52.69048309 -16.67086983 33.023571014 52.61366272 -17.1632061 33.30282593 52.66712952
		 -17.068386078 32.90963745 52.93124771 -6.94410801 32.98692322 52.75209427 -7.048826694 33.27325439 52.71341705
		 -25.50989342 41.71469116 32.17187881 -25.65826416 41.51448441 32.057003021 -25.61719131 41.38327408 32.31014633
		 -25.67899895 41.6241684 32.46860504 -10.56188202 41.62716675 32.44952011 -10.63553238 41.76717758 32.19677734
		 -22.062103271 32.081748962 43.11094666 -22.057804108 31.86389732 42.91371155 -21.66562462 31.21747971 42.31836319
		 -21.3705616 31.2229805 42.32010269 -19.34388351 22.93695641 48.80734634 -19.067928314 23.011377335 48.73671341
		 -17.84986687 15.79341888 53.094242096 -17.67310524 15.47620392 53.33100128 -17.91827393 15.63651371 53.45215225
		 -17.92790031 15.63824368 54.4914856 -17.96412468 15.63186169 54.14983749 -17.7559185 15.42589188 54.28804016
		 -19.5376873 23.38846207 49.7077446 -19.55594826 23.23604965 49.46293259 -14.025465012 26.39440536 52.11310577
		 -14.14973259 26.19458389 51.90238571 -14.69303226 26.80727768 53.28445435 -14.45847321 26.80831718 53.099094391
		 -14.042388916 14.87058735 54.29040909 -14.019497871 15.084179878 54.48380661 -12.16022301 21.79729462 53.57579422
		 -11.92870808 21.82279205 53.38825607 -7.02664566 14.20405388 54.30339432 -6.87873983 14.43066597 54.29525375
		 -7.1634264 14.45075607 54.47933578 -14.029156685 14.88261795 53.31142426 -14.001285553 15.073942184 53.096557617
		 -7.15847778 14.40806103 53.087608337 -6.88979101 14.41332817 53.28622055 -7.035744667 14.17855644 53.3055954
		 -11.48517227 21.39881134 52.37829208 -11.61516762 21.17960548 52.19614029 -28.27686119 48.75063324 18.13887787
		 -28.10723495 48.98386765 18.21515465 -32.41558838 51.28013611 0.7761538 -32.39081192 51.28905869 0.46974203
		 -32.48034286 51.037269592 0.38986856 -32.53345871 51.018859863 0.68865031 -17.75282478 62.12654114 5.71883726
		 -17.96748543 61.92375565 5.9291296 -31.81832314 51.011188507 -0.14118712 -32.12546539 51.024459839 -0.1403874
		 -32.060371399 51.28686905 -0.017598912 -31.59523392 51.26612091 0.096544206 -13.093265533 64.23479462 6.6769371
		 -12.8617506 64.14404297 6.94336653 -30.56739807 50.29661179 8.27873421 -30.69658852 50.039722443 8.19133949
		 -29.52125359 44.13235474 15.096142769 -29.32307625 43.91174698 15.1003933 -31.15717506 41.099639893 -0.97702432
		 -31.052761078 41.13550568 -1.24509811 -30.76747131 40.98878479 -1.30225575 -30.94636726 40.90655518 -1.021557331
		 -30.45377922 42.3990593 5.97467184 -30.24000168 42.19990921 5.91689491 -30.2191143 41.41848373 -1.40822971
		 -30.5678215 41.14892578 -1.48324394 -30.72975922 41.37834549 -1.51833665 -30.46668243 41.58726883 -1.43935609
		 -12.75010014 40.98551178 -1.29061902 -12.80805492 40.90830231 -1.012193322 -12.39090633 41.44010544 -1.43230557
		 -12.66169739 41.15290833 -1.46790779 -22.019950867 49.22378159 17.14309883 -21.92102432 49.49068832 17.088741302
		 -21.81166649 47.97602844 17.14308548 -22.019939423 48.17728806 17.14308739 9.0259758e-17 41.18292999 -1.48567832
		 7.8074329e-17 41.46485138 -1.42240584 1.1951035e-16 40.90755844 -1.016176462 1.097373e-16 40.99219513 -1.29243553
		 -7.3256904e-16 40.7850647 31.93411446 -7.34244e-16 40.8335495 31.64928055 8.1491928e-17 32.85604095 52.90973282
		 -3.1948503e-16 32.71278763 52.65791321 4.8459358e-16 33.23650742 52.77095413 2.5596436e-16 32.98308563 52.90973282
		 2.7740798e-16 41.79669952 32.22184372 2.8016046e-16 41.62627792 32.45516586 8.1848222e-16 70.26156616 11.022874832
		 9.7629356e-16 70.16793823 11.29862976 3.8416803e-16 70.26155853 10.61437416 0 69.97172546 10.46144009
		 16.44664383 32.41495895 51.75831223 16.2672081 32.62638855 51.6881485 16.51033974 32.65456772 51.37678528
		 16.49228287 32.011821747 51.57146454 6.79065275 32.66106415 52.17855072 6.81777048 32.69321442 52.46441269
		 16.85193253 32.79650879 52.69048309 17.068386078 32.90963745 52.93124771 17.1632061 33.30282593 52.66712952
		 16.6841507 33.027851105 52.62386322 6.94410801 32.98692322 52.75209427;
	setAttr ".vt[332:497]" 7.048826694 33.27325439 52.71341705 32.53345871 51.018859863 0.68865031
		 32.48465347 51.043395996 0.39613587 32.37458801 51.29607773 0.462825 32.41558838 51.28013611 0.7761538
		 17.74874687 62.12838364 5.71967506 17.96748543 61.92375565 5.9291296 31.59523392 51.26612091 0.096544206
		 32.058742523 51.28501129 -0.025183391 32.12085342 51.030231476 -0.14791162 31.81832314 51.011188507 -0.14118712
		 13.10062313 64.2314682 6.67542458 12.8617506 64.14404297 6.94336653 17.84574318 15.84268761 53.089614868
		 17.91827393 15.63651371 53.45215225 17.67310524 15.47620392 53.33100128 19.34286499 22.93552208 48.80419922
		 19.069442749 23.0092582703 48.73421478 17.7559185 15.42589188 54.28804016 17.96406746 15.63142967 54.15063477
		 17.92790031 15.63824368 54.4914856 19.53735352 23.38895035 49.70833588 19.55571365 23.23571777 49.46220398
		 25.40343666 40.99304962 31.71666908 25.40684891 41.014793396 32.064243317 25.17500114 40.77047348 32.013286591
		 25.14091682 40.83304977 31.65197945 25.61477089 41.37834167 32.31042862 25.65512085 41.50972748 32.048748016
		 25.52240181 41.71138382 32.17831039 25.67921066 41.62425232 32.4680748 21.3705616 31.2229805 42.32010269
		 21.66562462 31.21747971 42.31836319 22.057804108 31.86389732 42.91371155 22.062103271 32.081748962 43.11094666
		 11.92870808 21.82279205 53.38825607 12.16022301 21.79729462 53.57579422 7.1634264 14.45075607 54.47933578
		 6.88789845 14.44355392 54.28425217 7.02664566 14.20405388 54.30339432 7.035744667 14.17855644 53.3055954
		 6.88363934 14.40353966 53.28022766 7.15847778 14.40806103 53.087608337 11.61516762 21.17960548 52.19614029
		 11.48517227 21.39881134 52.37829208 14.69628716 26.80583954 53.28481674 14.45698929 26.80690002 53.095714569
		 14.023089409 26.39213562 52.10769653 14.14451885 26.19687843 51.9017868 14.042390823 14.87058735 54.29048538
		 14.019507408 15.084103584 54.48381805 14.001285553 15.073942184 53.096557617 14.029156685 14.88261795 53.31142426
		 10.56188202 41.62716675 32.44952011 10.63553238 41.76717758 32.19677734 28.10723495 48.98386765 18.21515465
		 28.27686119 48.75063324 18.13887787 30.56739807 50.29661179 8.27873421 30.69658852 50.039722443 8.19133949
		 10.41348743 40.83360291 31.64900589 10.36703873 40.78452301 31.93374062 29.52125359 44.13235474 15.096142769
		 29.32307625 43.91174698 15.1003933 30.45377922 42.3990593 5.97467184 30.24000168 42.19990921 5.91689491
		 30.46668243 41.58726883 -1.43935609 30.73555756 41.38003159 -1.51349294 30.56842041 41.14560318 -1.47947156
		 30.2191143 41.41848373 -1.40822971 30.94636726 40.90655518 -1.021557331 30.7712822 40.98766708 -1.30099177
		 31.051963806 41.1376915 -1.24568021 31.15717506 41.099639893 -0.97702432 12.39090633 41.44010544 -1.43230569
		 12.66169739 41.15290833 -1.46790779 12.75010014 40.98551178 -1.29061902 12.80805492 40.90830231 -1.012193322
		 21.92102432 49.49068832 17.088741302 22.019950867 49.22378159 17.14309883 22.019939423 48.17728806 17.14308739
		 21.81166649 47.97602844 17.14308548 -47.10185242 32.60933685 -3.77216816 -42.052848816 33.29594421 -3.77216816
		 -47.28014374 32.22359467 -1.25787735 -42.23114014 32.91020966 -1.25787735 -42.92105484 56.81999207 5.87152958
		 -40.45546341 50.23274231 9.52366066 -42.020786285 56.72365952 5.083469868 -39.55519485 50.15567398 3.55305004
		 -54.47130966 0.45034793 -10.5647974 -54.057598114 0.45034409 -10.5647974 -54.057598114 0.4503403 -9.40147114
		 -54.47131348 0.45035169 -9.40147114 -46.8593483 23.24015808 -4.73567581 -46.81697464 23.42963791 -6.51623821
		 -50.04574585 23.88885689 -6.51623631 -50.088115692 23.6993618 -4.73567677 -40.26901245 45.15781784 5.63992262
		 -43.16506195 49.34938812 4.72357273 -42.52786636 49.40535355 3.43108082 -39.63181305 45.2026062 2.51472831
		 -21.77371216 39.72968292 9.75355721 -22.91651917 39.47145462 11.015595436 -22.35943985 41.61274338 10.34057617
		 -23.60344696 41.41931152 11.71176243 -29.79582214 44.10887146 10.43146133 -29.79581451 44.045883179 7.94749689
		 -29.79582024 40.74950027 7.18385124 -29.79582405 40.71290207 9.48231888 -8.92212772 45.92329788 10.55730438
		 -9.025385857 45.74062347 10.78333378 -9.24240589 46.072185516 10.66243935 -9.36644077 45.88388443 10.90802097
		 -42.2910881 32.60933685 -16.95654106 -37.52669525 33.29594421 -15.28530979 -43.29156494 32.22359467 -14.64299679
		 -38.5271759 32.91020966 -12.97176456 -41.53805161 56.81999207 -6.47260714 -40.42031097 50.23274231 -2.21022987
		 -40.42768097 56.72365952 -6.91825247 -37.5945015 50.15567398 -7.54628468 -46.99674606 0.45034793 -25.80557823
		 -46.60635376 0.45034409 -25.66863823 -46.99141693 0.4503403 -24.57088852 -47.38180923 0.45035169 -24.70783043
		 -41.74332428 23.24015808 -17.78546715 -41.11397171 23.42963791 -19.45163345 -44.16073608 23.88885689 -20.52036476
		 -44.79009247 23.6993618 -18.85420036 -38.95883942 45.15781784 -5.81332541 -41.38832474 49.34938812 -7.63661957
		 -40.35923004 49.40535355 -8.64534092 -37.32311249 45.2026062 -8.55143738 -25.30679703 39.72968292 4.93735552
		 -26.8029232 39.47145462 5.74997807 -26.053819656 41.61274338 5.29740524 -27.68156433 41.41931152 6.17952824
		 -33.10108566 44.10887146 2.92170429 -32.27888489 44.045883179 0.57776761 -32.026119232 40.74950027 -0.14283502
		 -32.78692245 40.71290207 2.026064396 -13.4457016 45.92329788 9.94970036 -13.61795712 45.74062347 10.12881088
		 -13.7827282 46.072185516 9.94289494 -13.98105812 45.88388443 10.13357925 -47.10185242 32.60933685 28.53143883
		 -42.052848816 33.29594421 28.53142548 -47.28014374 32.22359467 26.017141342 -42.23114014 32.91020966 26.017131805
		 -42.92105484 56.81999207 18.88772964 -40.45546341 50.23274231 15.23560047 -42.020786285 56.72365952 19.67578125
		 -39.55519485 50.15567398 21.20619965 -54.47130966 0.45034793 35.32405472 -54.057598114 0.45034409 35.32405472
		 -54.057598114 0.4503403 34.16072845 -54.47131348 0.45035169 34.16072845 -46.8593483 23.24015808 29.49493408
		 -46.81697464 23.42963791 31.27549934 -50.04574585 23.88885689 31.27549362 -50.088115692 23.6993618 29.49493408
		 -40.26901245 45.15781784 19.11933136 -43.16506195 49.34938812 20.035690308 -42.52786636 49.40535355 21.32817841
		 -39.63181305 45.2026062 22.24452209 -25.88370132 39.72968292 16.014129639;
	setAttr ".vt[498:663]" -27.026512146 39.47145462 14.75209332 -26.46943092 41.61274338 15.42710972
		 -27.71343994 41.41931152 14.055912018 -33.90581131 44.10887146 15.33621502 -33.90580368 44.045883179 17.82018852
		 -33.9058075 40.74950027 18.58383179 -33.90581512 40.71290207 16.28535843 -13.032118797 45.92329788 15.21037102
		 -13.13537693 45.74062347 14.98433876 -13.35239697 46.072185516 15.1052494 -13.47643089 45.88388443 14.85965443
		 -42.2910881 32.60933685 41.71579742 -37.52669525 33.29594421 40.044567108 -43.29156494 32.22359467 39.40225601
		 -38.5271759 32.91020966 37.73102951 -41.53805161 56.81999207 31.23186493 -40.42031097 50.23274231 26.96948814
		 -40.42768097 56.72365952 31.67751122 -37.5945015 50.15567398 32.30554581 -46.99674606 0.45034793 50.56483841
		 -46.60635376 0.45034409 50.42789459 -46.99141693 0.4503403 49.33014679 -47.38180923 0.45035169 49.46708679
		 -41.74332428 23.24015808 42.54472351 -41.11397171 23.42963791 44.21089172 -44.16073608 23.88885689 45.27962494
		 -44.79009247 23.6993618 43.61345673 -38.95883942 45.15781784 30.57258034 -41.38832474 49.34938812 32.39587021
		 -40.35923004 49.40535355 33.40459824 -37.32311249 45.2026062 33.31069183 -23.58250427 39.72968292 22.021810532
		 -25.078632355 39.47145462 21.20918655 -24.32952499 41.61274338 21.66176605 -25.95727158 41.41931152 20.77964783
		 -31.37679482 44.10887146 24.037471771 -30.55459213 44.045883179 26.38140297 -30.30182648 40.74950027 27.10201645
		 -31.0626297 40.71290207 24.9331131 -11.7214098 45.92329788 17.0094642639 -11.89366436 45.74062347 16.8303566
		 -12.05843544 46.072185516 17.016269684 -12.25676537 45.88388443 16.82558823 47.10185242 32.60933685 -3.77216816
		 42.052848816 33.29594421 -3.77216816 47.28014374 32.22359467 -1.25787735 42.23114014 32.91020966 -1.25787735
		 42.92105484 56.81999207 5.87152958 40.45546341 50.23274231 9.52366066 42.020786285 56.72365952 5.083469868
		 39.55519485 50.15567398 3.55305004 54.47130966 0.45034793 -10.5647974 54.057598114 0.45034409 -10.5647974
		 54.057598114 0.4503403 -9.40147114 54.47131348 0.45035169 -9.40147114 46.8593483 23.24015808 -4.73567581
		 46.81697464 23.42963791 -6.51623821 50.04574585 23.88885689 -6.51623631 50.088115692 23.6993618 -4.73567677
		 40.26901245 45.15781784 5.63992262 43.16506195 49.34938812 4.72357273 42.52786636 49.40535355 3.43108082
		 39.63181305 45.2026062 2.51472831 21.77371216 39.72968292 9.75355721 22.91651917 39.47145462 11.015595436
		 22.35943985 41.61274338 10.34057617 23.60344696 41.41931152 11.71176243 29.79582214 44.10887146 10.43146133
		 29.79581451 44.045883179 7.94749689 29.79582024 40.74950027 7.18385124 29.79582405 40.71290207 9.48231888
		 8.92212772 45.92329788 10.55730438 9.025385857 45.74062347 10.78333378 9.24240589 46.072185516 10.66243935
		 9.36644077 45.88388443 10.90802097 42.2910881 32.60933685 -16.95654106 37.52669525 33.29594421 -15.28530979
		 43.29156494 32.22359467 -14.64299679 38.5271759 32.91020966 -12.97176456 41.53805161 56.81999207 -6.47260714
		 40.42031097 50.23274231 -2.21022987 40.42768097 56.72365952 -6.91825247 37.5945015 50.15567398 -7.54628468
		 46.99674606 0.45034793 -25.80557823 46.60635376 0.45034409 -25.66863823 46.99141693 0.4503403 -24.57088852
		 47.38180923 0.45035169 -24.70783043 41.74332428 23.24015808 -17.78546715 41.11397171 23.42963791 -19.45163345
		 44.16073608 23.88885689 -20.52036476 44.79009247 23.6993618 -18.85420036 38.95883942 45.15781784 -5.81332541
		 41.38832474 49.34938812 -7.63661957 40.35923004 49.40535355 -8.64534092 37.32311249 45.2026062 -8.55143738
		 25.30679703 39.72968292 4.93735552 26.8029232 39.47145462 5.74997807 26.053819656 41.61274338 5.29740524
		 27.68156433 41.41931152 6.17952824 33.10108566 44.10887146 2.92170429 32.27888489 44.045883179 0.57776761
		 32.026119232 40.74950027 -0.14283502 32.78692245 40.71290207 2.026064396 13.4457016 45.92329788 9.94970036
		 13.61795712 45.74062347 10.12881088 13.7827282 46.072185516 9.94289494 13.98105812 45.88388443 10.13357925
		 47.10185242 32.60933685 28.53143883 42.052848816 33.29594421 28.53142548 47.28014374 32.22359467 26.017141342
		 42.23114014 32.91020966 26.017131805 42.92105484 56.81999207 18.88772964 40.45546341 50.23274231 15.23560047
		 42.020786285 56.72365952 19.67578125 39.55519485 50.15567398 21.20619965 54.47130966 0.45034793 35.32405472
		 54.057598114 0.45034409 35.32405472 54.057598114 0.4503403 34.16072845 54.47131348 0.45035169 34.16072845
		 46.8593483 23.24015808 29.49493408 46.81697464 23.42963791 31.27549934 50.04574585 23.88885689 31.27549362
		 50.088115692 23.6993618 29.49493408 40.26901245 45.15781784 19.11933136 43.16506195 49.34938812 20.035690308
		 42.52786636 49.40535355 21.32817841 39.63181305 45.2026062 22.24452209 25.88370132 39.72968292 16.014129639
		 27.026512146 39.47145462 14.75209332 26.46943092 41.61274338 15.42710972 27.71343994 41.41931152 14.055912018
		 33.90581131 44.10887146 15.33621502 33.90580368 44.045883179 17.82018852 33.9058075 40.74950027 18.58383179
		 33.90581512 40.71290207 16.28535843 13.032118797 45.92329788 15.21037102 13.13537693 45.74062347 14.98433876
		 13.35239697 46.072185516 15.1052494 13.47643089 45.88388443 14.85965443 42.2910881 32.60933685 41.71579742
		 37.52669525 33.29594421 40.044567108 43.29156494 32.22359467 39.40225601 38.5271759 32.91020966 37.73102951
		 41.53805161 56.81999207 31.23186493 40.42031097 50.23274231 26.96948814 40.42768097 56.72365952 31.67751122
		 37.5945015 50.15567398 32.30554581 46.99674606 0.45034793 50.56483841 46.60635376 0.45034409 50.42789459
		 46.99141693 0.4503403 49.33014679 47.38180923 0.45035169 49.46708679 41.74332428 23.24015808 42.54472351
		 41.11397171 23.42963791 44.21089172 44.16073608 23.88885689 45.27962494 44.79009247 23.6993618 43.61345673
		 38.95883942 45.15781784 30.57258034 41.38832474 49.34938812 32.39587021 40.35923004 49.40535355 33.40459824
		 37.32311249 45.2026062 33.31069183 23.58250427 39.72968292 22.021810532 25.078632355 39.47145462 21.20918655
		 24.32952499 41.61274338 21.66176605 25.95727158 41.41931152 20.77964783 31.37679482 44.10887146 24.037471771
		 30.55459213 44.045883179 26.38140297 30.30182648 40.74950027 27.10201645;
	setAttr ".vt[664:668]" 31.0626297 40.71290207 24.9331131 11.7214098 45.92329788 17.0094642639
		 11.89366436 45.74062347 16.8303566 12.05843544 46.072185516 17.016269684 12.25676537 45.88388443 16.82558823;
	setAttr -s 1267 ".ed";
	setAttr ".ed[0:165]"  2 0 1 1 3 1 4 33 1 4 14 1 6 219 1 6 12 1 8 13 1 9 36 1
		 11 9 1 12 7 1 13 5 1 14 34 1 16 96 0 18 16 0 17 19 1 21 22 0 20 25 1 21 212 0 23 27 0
		 24 208 1 25 22 1 26 21 0 25 26 1 27 104 0 26 211 0 29 131 0 31 29 0 30 32 0 33 34 1
		 35 11 1 35 36 1 38 40 1 38 323 1 41 37 1 42 51 1 52 39 1 52 36 1 39 9 1 40 7 1 8 41 1
		 4 42 1 33 51 1 44 43 0 43 159 0 25 47 1 47 205 0 48 163 0 45 22 0 47 45 0 45 204 0
		 46 48 0 50 49 0 49 194 0 54 53 1 54 66 1 66 65 1 65 53 1 55 56 0 56 58 1 58 57 1
		 57 55 1 55 67 1 67 68 1 68 56 1 58 60 1 60 59 1 59 57 1 60 62 1 62 61 1 61 59 1 63 64 1
		 62 64 0 63 61 0 66 68 1 67 65 1 55 136 0 57 110 1 69 71 0 71 70 0 84 1 0 88 85 0
		 89 0 0 95 17 0 99 15 0 100 18 0 99 100 0 101 20 0 102 26 0 101 102 0 103 24 0 110 111 1
		 130 30 0 134 28 0 135 31 0 134 135 0 137 111 0 136 137 0 148 0 0 149 150 0 151 1 0
		 155 44 0 156 15 0 155 156 0 160 17 0 161 47 0 162 20 0 161 162 0 164 24 0 165 56 0
		 166 170 0 166 165 0 169 58 1 170 169 1 190 50 0 191 28 0 190 191 0 195 30 0 101 209 0
		 104 210 0 161 206 0 164 207 0 72 74 0 74 79 0 79 78 0 78 72 0 73 72 1 72 76 0 76 75 1
		 75 73 0 74 73 1 73 82 1 82 83 1 83 74 0 76 140 0 140 139 1 139 75 0 77 79 0 79 86 0
		 86 87 1 87 77 0 78 77 0 77 81 0 81 80 1 80 78 0 81 145 0 145 144 0 144 80 0 82 89 1
		 89 88 0 88 83 0 85 84 0 84 87 0 86 85 0 90 92 0 92 97 0 97 98 1 98 90 0 91 90 0 90 94 0
		 94 93 1 93 91 0 92 91 0 91 99 0 100 92 0 94 154 0 154 153 0;
	setAttr ".ed[166:331]" 153 93 0 96 95 0 95 98 0 97 96 0 104 103 0 105 107 0
		 107 196 0 196 197 1 197 105 0 106 105 0 105 109 0 109 108 1 108 106 0 107 106 0 106 115 0
		 115 114 0 114 107 0 109 122 0 122 121 1 121 108 0 110 113 1 113 112 1 112 111 0 113 118 1
		 118 117 1 117 112 0 114 116 1 116 200 0 200 201 1 201 114 0 116 115 0 115 119 0 119 120 1
		 120 116 1 118 120 1 119 117 0 122 124 0 124 123 0 123 121 0 124 136 1 137 123 0 125 127 0
		 127 132 0 132 133 1 133 125 0 126 125 0 125 129 0 129 128 1 128 126 0 127 126 0 126 134 0
		 135 127 0 129 189 0 189 188 0 188 128 0 131 130 0 130 133 0 132 131 0 138 140 0 140 144 0
		 144 143 0 143 138 0 139 138 1 138 142 0 142 141 1 141 139 1 142 149 0 149 148 0 148 141 1
		 143 145 0 145 147 0 147 146 1 146 143 0 147 151 0 151 150 0 150 146 0 152 154 0 154 158 0
		 158 157 1 157 152 0 153 152 0 152 155 0 156 153 0 158 160 0 160 159 0 159 157 0 164 163 0
		 165 168 1 168 167 0 167 166 0 168 184 0 184 183 1 183 167 0 170 171 0 171 172 1 172 169 1
		 171 179 0 179 180 1 180 172 1 173 175 0 175 198 0 198 199 1 199 173 0 174 173 0 173 178 0
		 178 177 0 177 174 0 175 174 0 174 185 0 185 186 1 186 175 0 176 178 0 178 202 0 202 203 1
		 203 176 0 177 176 0 176 182 1 182 181 1 181 177 0 179 181 0 182 180 1 184 186 0 185 183 0
		 187 189 0 189 193 0 193 192 1 192 187 0 188 187 0 187 190 0 191 188 0 193 195 0 195 194 0
		 194 192 0 196 199 0 198 197 0 200 203 0 202 201 0 75 2 1 2 82 1 80 76 0 83 86 0 87 3 1
		 3 81 1 93 15 0 18 97 0 98 19 1 19 94 1 112 123 0 119 108 0 121 117 0 128 28 0 31 132 0
		 133 32 1 32 129 1 141 2 1 146 142 0 3 147 1 157 44 0 19 158 1 167 171 0 179 183 0
		 185 181 0 192 50 0 32 193 1 198 54 1 53 197 1;
	setAttr ".ed[332:497]" 196 201 0 202 199 0 200 63 0 64 203 0 124 67 1 59 113 1
		 118 61 1 63 120 1 109 53 1 65 122 1 68 168 1 172 60 1 182 64 1 62 180 1 184 66 1
		 54 186 1 204 46 0 205 48 1 204 205 0 206 163 0 205 206 0 207 162 0 206 207 0 208 20 0
		 207 208 0 209 103 0 208 209 0 210 102 0 209 210 0 211 27 1 210 211 0 212 23 0 211 212 0
		 219 222 1 227 5 0 227 228 0 301 304 0 302 69 0 303 10 0 324 323 1 329 37 0 328 329 0
		 409 70 0 410 411 0 412 10 0 226 220 1 221 225 1 327 321 1 322 330 1 213 216 1 216 285 0
		 285 286 1 286 213 1 214 213 1 213 217 1 217 218 1 218 214 1 215 214 1 214 240 1 240 239 1
		 239 215 1 216 215 1 215 233 1 233 232 1 232 216 0 217 310 1 310 309 1 309 218 1 220 219 1
		 219 223 1 223 224 1 224 220 1 221 220 1 226 225 1 222 221 1 221 251 1 251 252 1 252 222 1
		 223 312 1 312 311 1 311 224 1 225 228 1 228 253 1 253 254 1 254 225 1 227 226 1 226 229 1
		 229 230 1 230 227 1 229 314 1 314 313 1 313 230 1 231 234 1 234 235 1 235 236 1 236 231 1
		 232 231 1 231 270 1 270 269 1 269 232 0 234 233 1 233 238 1 238 237 1 237 234 0 235 316 1
		 316 315 1 315 236 1 238 250 1 250 249 1 249 237 0 240 242 1 242 241 1 241 239 1 242 243 1
		 243 245 1 245 241 1 244 243 1 243 263 1 263 262 1 262 244 1 245 244 1 244 248 1 248 247 1
		 247 245 1 246 248 1 248 255 1 255 256 1 256 246 1 247 246 1 246 249 0 250 247 1 251 267 1
		 267 268 1 268 252 1 253 257 1 257 258 1 258 254 1 255 259 1 259 261 1 261 256 1 257 261 1
		 261 260 1 260 258 1 260 259 1 259 266 1 266 265 1 265 260 1 263 264 1 264 266 1 266 262 1
		 265 264 1 264 268 1 267 265 1 270 283 1 283 284 1 284 269 0 271 274 1 274 284 0 283 271 1
		 272 271 1 271 276 1 276 275 1 275 272 1 273 272 1 272 279 1 279 278 1;
	setAttr ".ed[498:663]" 278 273 1 274 273 1 273 288 1 288 287 1 287 274 0 276 318 1
		 318 317 1 317 275 1 277 280 1 280 302 1 302 301 0 301 277 1 278 277 1 277 296 1 296 295 1
		 295 278 1 280 279 1 279 281 1 281 282 1 282 280 1 281 319 1 319 320 1 320 282 1 285 291 0
		 291 292 1 292 286 1 287 290 1 290 292 1 291 287 0 289 288 1 288 295 1 295 294 1 294 289 1
		 290 289 1 289 297 1 297 298 1 298 290 1 293 296 1 296 304 1 304 303 0 303 293 1 294 293 1
		 293 299 1 299 300 1 300 294 1 297 308 1 308 307 1 307 298 1 299 306 1 306 305 1 305 300 1
		 306 405 1 405 406 1 406 305 1 308 407 1 407 408 1 408 307 1 310 391 1 391 392 1 392 309 1
		 312 325 1 325 326 1 326 311 1 314 331 1 331 332 1 332 313 1 316 385 1 385 386 1 386 315 1
		 318 338 1 338 337 1 337 317 1 319 343 1 343 344 1 344 320 1 321 324 1 324 380 1 380 379 1
		 379 321 1 322 321 1 327 330 1 323 322 1 322 326 1 325 323 1 328 327 1 327 378 1 378 377 1
		 377 328 1 330 329 1 329 332 1 331 330 1 333 336 1 336 389 1 389 390 1 390 333 0 334 333 1
		 333 404 0 404 403 1 403 334 1 335 334 1 334 341 1 341 340 1 340 335 1 336 335 1 335 337 1
		 338 336 1 339 342 1 342 410 1 410 409 0 409 339 1 340 339 1 339 344 1 343 340 1 342 341 1
		 341 398 1 398 397 1 397 342 1 345 347 1 347 384 1 384 383 1 383 345 1 346 345 1 345 349 1
		 349 348 1 348 346 1 347 346 1 346 351 1 351 350 1 350 347 1 349 363 1 363 364 1 364 348 1
		 350 352 1 352 382 1 382 381 1 381 350 1 352 351 1 351 354 1 354 353 1 353 352 0 354 365 1
		 365 366 1 366 353 0 355 358 1 358 394 1 394 393 1 393 355 0 356 355 1 355 360 0 360 359 1
		 359 356 1 357 356 1 356 364 1 363 357 1 358 357 1 357 392 1 391 358 1 359 362 1 362 366 0
		 365 359 1 361 360 1 360 388 0 388 387 1 387 361 1 362 361 1 361 386 1;
	setAttr ".ed[664:829]" 385 362 1 367 368 1 368 377 1 378 367 1 367 370 1 370 369 1
		 369 368 1 369 371 1 371 381 1 382 369 1 371 370 1 370 373 1 373 372 1 372 371 1 372 374 1
		 374 383 1 384 372 1 374 373 1 373 376 1 376 375 1 375 374 1 376 379 1 380 375 1 388 390 0
		 389 387 1 394 396 1 396 395 1 395 393 0 396 401 1 401 404 1 404 395 0 397 400 1 400 412 1
		 412 411 0 411 397 1 399 398 1 398 403 1 403 402 1 402 399 1 400 399 1 399 406 1 405 400 1
		 402 401 1 401 408 1 407 402 1 12 223 1 230 13 1 275 281 1 250 241 1 239 238 1 222 243 1
		 242 6 1 267 258 1 228 246 0 256 253 1 262 255 1 252 263 1 236 14 1 14 270 1 34 283 1
		 251 254 1 5 234 0 249 5 0 214 6 1 218 12 1 13 235 1 269 285 0 284 291 0 286 11 1
		 11 217 1 292 35 1 300 297 1 282 69 1 10 299 1 10 306 1 305 308 1 9 310 1 309 7 1
		 7 312 1 229 224 1 311 314 1 313 8 1 8 316 1 315 4 1 317 319 1 276 34 1 33 318 1 298 35 1
		 307 36 1 325 40 1 41 332 1 343 337 1 348 354 1 365 364 1 38 349 1 345 324 1 367 376 1
		 377 382 1 352 328 0 381 384 1 383 380 1 387 42 1 42 386 1 389 51 1 378 379 1 37 353 0
		 362 37 0 38 357 1 40 392 1 385 41 1 393 388 0 395 390 0 391 39 1 39 394 1 52 396 1
		 407 406 1 405 10 1 326 331 1 51 338 1 52 408 1 70 344 1 71 320 1 329 328 0 413 414 0
		 415 416 0 417 418 0 419 420 0 413 415 0 414 416 0 415 430 0 416 429 0 417 419 0 418 420 0
		 419 431 0 420 432 0 413 427 0 414 426 0 421 422 0 416 425 0 422 423 0 415 428 0 424 423 0
		 421 424 0 425 423 0 426 422 0 425 426 1 427 421 0 426 427 1 428 424 0 427 428 1 428 425 1
		 429 418 0 430 417 0 429 430 1 431 413 0 430 431 1 432 414 0 431 432 1 432 429 0 432 439 0
		 429 440 0 433 434 0 420 438 0 435 433 0 418 437 0 436 435 0;
	setAttr ".ed[830:995]" 434 436 0 437 436 0 438 435 0 437 438 1 439 433 0 438 439 1
		 440 434 0 439 440 1 440 437 1 433 441 0 434 442 0 441 442 0 435 443 0 443 441 0 436 444 0
		 444 443 0 442 444 0 445 446 0 447 448 0 449 450 0 451 452 0 445 447 0 446 448 0 447 462 0
		 448 461 0 449 451 0 450 452 0 451 463 0 452 464 0 445 459 0 446 458 0 453 454 0 448 457 0
		 454 455 0 447 460 0 456 455 0 453 456 0 457 455 0 458 454 0 457 458 1 459 453 0 458 459 1
		 460 456 0 459 460 1 460 457 1 461 450 0 462 449 0 461 462 1 463 445 0 462 463 1 464 446 0
		 463 464 1 464 461 0 464 471 0 461 472 0 465 466 0 452 470 0 467 465 0 450 469 0 468 467 0
		 466 468 0 469 468 0 470 467 0 469 470 1 471 465 0 470 471 1 472 466 0 471 472 1 472 469 1
		 465 473 0 466 474 0 473 474 0 467 475 0 475 473 0 468 476 0 476 475 0 474 476 0 485 486 0
		 486 487 0 488 487 0 485 488 0 479 480 0 480 493 0 493 494 1 479 494 0 481 482 0 482 484 0
		 483 484 0 481 483 0 495 496 1 496 478 0 477 478 0 495 477 0 496 493 0 478 480 0 477 479 0
		 494 495 1 478 490 0 490 491 1 477 491 0 480 489 0 489 490 1 479 492 0 492 489 1 491 492 1
		 489 487 0 490 486 0 491 485 0 492 488 0 493 482 0 494 481 0 483 495 0 484 496 0 505 506 0
		 507 505 0 508 507 0 506 508 0 496 503 0 503 504 1 493 504 0 484 502 0 502 503 1 482 501 0
		 501 502 1 504 501 1 501 500 0 500 499 0 502 499 0 499 497 0 503 497 0 497 498 0 504 498 0
		 498 500 0 497 505 0 498 506 0 499 507 0 500 508 0 517 518 0 518 519 0 520 519 0 517 520 0
		 511 512 0 512 525 0 525 526 1 511 526 0 513 514 0 514 516 0 515 516 0 513 515 0 527 528 1
		 528 510 0 509 510 0 527 509 0 528 525 0 510 512 0 509 511 0 526 527 1 510 522 0 522 523 1
		 509 523 0 512 521 0 521 522 1 511 524 0 524 521 1 523 524 1 521 519 0;
	setAttr ".ed[996:1161]" 522 518 0 523 517 0 524 520 0 525 514 0 526 513 0 515 527 0
		 516 528 0 537 538 0 539 537 0 540 539 0 538 540 0 528 535 0 535 536 1 525 536 0 516 534 0
		 534 535 1 514 533 0 533 534 1 536 533 1 533 532 0 532 531 0 534 531 0 531 529 0 535 529 0
		 529 530 0 536 530 0 530 532 0 529 537 0 530 538 0 531 539 0 532 540 0 549 550 0 550 551 0
		 552 551 0 549 552 0 543 544 0 544 557 0 557 558 1 543 558 0 545 546 0 546 548 0 547 548 0
		 545 547 0 559 560 1 560 542 0 541 542 0 559 541 0 560 557 0 542 544 0 541 543 0 558 559 1
		 542 554 0 554 555 1 541 555 0 544 553 0 553 554 1 543 556 0 556 553 1 555 556 1 553 551 0
		 554 550 0 555 549 0 556 552 0 557 546 0 558 545 0 547 559 0 548 560 0 569 570 0 571 569 0
		 572 571 0 570 572 0 560 567 0 567 568 1 557 568 0 548 566 0 566 567 1 546 565 0 565 566 1
		 568 565 1 565 564 0 564 563 0 566 563 0 563 561 0 567 561 0 561 562 0 568 562 0 562 564 0
		 561 569 0 562 570 0 563 571 0 564 572 0 581 582 0 582 583 0 584 583 0 581 584 0 575 576 0
		 576 589 0 589 590 1 575 590 0 577 578 0 578 580 0 579 580 0 577 579 0 591 592 1 592 574 0
		 573 574 0 591 573 0 592 589 0 574 576 0 573 575 0 590 591 1 574 586 0 586 587 1 573 587 0
		 576 585 0 585 586 1 575 588 0 588 585 1 587 588 1 585 583 0 586 582 0 587 581 0 588 584 0
		 589 578 0 590 577 0 579 591 0 580 592 0 601 602 0 603 601 0 604 603 0 602 604 0 592 599 0
		 599 600 1 589 600 0 580 598 0 598 599 1 578 597 0 597 598 1 600 597 1 597 596 0 596 595 0
		 598 595 0 595 593 0 599 593 0 593 594 0 600 594 0 594 596 0 593 601 0 594 602 0 595 603 0
		 596 604 0 613 616 0 616 615 0 614 615 0 613 614 0 607 622 0 621 622 1 608 621 0 607 608 0
		 609 611 0 611 612 0 610 612 0 609 610 0 623 605 0 605 606 0 624 606 0;
	setAttr ".ed[1162:1266]" 623 624 1 606 608 0 624 621 0 622 623 1 605 607 0 605 619 0
		 618 619 1 606 618 0 617 618 1 608 617 0 620 617 1 607 620 0 619 620 1 618 614 0 617 615 0
		 619 613 0 620 616 0 622 609 0 621 610 0 611 623 0 612 624 0 634 636 0 636 635 0 635 633 0
		 633 634 0 621 632 0 631 632 1 624 631 0 630 631 1 612 630 0 629 630 1 610 629 0 632 629 1
		 630 627 0 628 627 0 629 628 0 631 625 0 627 625 0 632 626 0 625 626 0 626 628 0 626 634 0
		 625 633 0 627 635 0 628 636 0 645 648 0 648 647 0 646 647 0 645 646 0 639 654 0 653 654 1
		 640 653 0 639 640 0 641 643 0 643 644 0 642 644 0 641 642 0 655 637 0 637 638 0 656 638 0
		 655 656 1 638 640 0 656 653 0 654 655 1 637 639 0 637 651 0 650 651 1 638 650 0 649 650 1
		 640 649 0 652 649 1 639 652 0 651 652 1 650 646 0 649 647 0 651 645 0 652 648 0 654 641 0
		 653 642 0 643 655 0 644 656 0 666 668 0 668 667 0 667 665 0 665 666 0 653 664 0 663 664 1
		 656 663 0 662 663 1 644 662 0 661 662 1 642 661 0 664 661 1 662 659 0 660 659 0 661 660 0
		 663 657 0 659 657 0 664 658 0 657 658 0 658 660 0 658 666 0 657 665 0 659 667 0 660 668 0;
	setAttr -s 620 -ch 2468 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 -30 30 -8 -9
		mu 0 4 16 17 18 19
		f 4 -12 -4 2 28
		mu 0 4 20 21 22 23
		f 4 357 89 19 358
		mu 0 4 1 2 3 4
		f 4 118 362 361 23
		mu 0 4 5 6 7 8
		f 4 -23 20 -16 -22
		mu 0 4 9 10 11 12
		f 4 -362 364 363 18
		mu 0 4 8 7 13 14
		f 4 37 7 -37 35
		mu 0 4 24 19 18 25
		f 4 -42 -3 40 34
		mu 0 4 26 23 22 27
		f 4 120 356 -20 -108
		mu 0 4 39 40 4 3
		f 4 351 -47 -350 352
		mu 0 4 41 42 43 44
		f 4 48 47 -21 44
		mu 0 4 45 46 11 10
		f 4 -51 -349 350 349
		mu 0 4 43 47 48 44
		f 4 -54 54 55 56
		mu 0 4 28 29 30 31
		f 4 57 58 59 60
		mu 0 4 32 33 34 35
		f 4 -58 61 62 63
		mu 0 4 33 32 36 70
		f 4 -60 64 65 66
		mu 0 4 35 34 71 72
		f 4 -66 67 68 69
		mu 0 4 72 71 73 74
		f 4 -69 71 -71 72
		mu 0 4 74 73 75 76
		f 4 -56 73 -63 74
		mu 0 4 31 30 70 36
		f 5 -89 86 16 22 -88
		mu 0 5 54 55 56 10 9
		f 6 -97 -76 -61 76 90 -96
		mu 0 6 77 78 32 35 79 80
		f 5 -107 104 -45 -17 -106
		mu 0 5 62 63 45 10 56
		f 6 -111 109 112 111 -59 -109
		mu 0 6 81 82 83 84 34 33
		f 4 121 122 123 124
		mu 0 4 66 489 68 69
		f 4 125 126 127 128
		mu 0 4 486 66 92 485
		f 4 129 130 131 132
		mu 0 4 67 490 483 95
		f 4 -128 133 134 135
		mu 0 4 485 92 96 487
		f 4 136 137 138 139
		mu 0 4 98 68 99 100
		f 4 140 141 142 143
		mu 0 4 69 98 101 102
		f 4 -143 144 145 146
		mu 0 4 102 101 103 104
		f 4 -132 147 148 149
		mu 0 4 95 483 484 106
		f 4 150 151 -139 152
		mu 0 4 107 108 100 99
		f 4 153 154 155 156
		mu 0 4 109 110 111 112
		f 4 157 158 159 160
		mu 0 4 113 109 114 115
		f 4 161 162 85 163
		mu 0 4 110 113 52 51
		f 4 -160 164 165 166
		mu 0 4 115 114 116 117
		f 4 167 168 -156 169
		mu 0 4 118 119 112 111
		f 4 360 -119 170 -358
		mu 0 4 1 6 5 2
		f 4 171 172 173 174
		mu 0 4 470 86 87 472
		f 4 175 176 177 178
		mu 0 4 89 470 469 122
		f 4 179 180 181 182
		mu 0 4 86 89 123 124
		f 4 -178 183 184 185
		mu 0 4 122 469 468 126
		f 4 -91 186 187 188
		mu 0 4 80 79 127 128
		f 4 -188 189 190 191
		mu 0 4 128 127 129 130
		f 4 192 193 194 195
		mu 0 4 124 131 132 133
		f 4 196 197 198 199
		mu 0 4 131 123 134 135
		f 4 -191 200 -199 201
		mu 0 4 130 129 135 134
		f 4 -185 202 203 204
		mu 0 4 126 468 467 137
		f 4 -204 205 96 206
		mu 0 4 137 467 78 77
		f 4 207 208 209 210
		mu 0 4 120 121 348 349
		f 4 211 212 213 214
		mu 0 4 350 120 351 352
		f 4 215 216 94 217
		mu 0 4 121 350 58 479
		f 4 -214 218 219 220
		mu 0 4 352 351 353 354
		f 4 221 222 -210 223
		mu 0 4 355 356 349 348
		f 4 224 225 226 227
		mu 0 4 488 96 104 358
		f 4 228 229 230 231
		mu 0 4 97 357 359 481
		f 4 -231 232 233 234
		mu 0 4 481 359 361 362
		f 4 235 236 237 238
		mu 0 4 358 103 363 364
		f 4 -238 239 240 241
		mu 0 4 364 363 365 366
		f 4 242 243 244 245
		mu 0 4 367 116 368 369
		f 4 246 247 102 248
		mu 0 4 117 367 61 475
		f 4 -245 249 250 251
		mu 0 4 369 368 370 371
		f 4 354 -121 252 -352
		mu 0 4 41 40 39 42
		f 4 110 253 254 255
		mu 0 4 82 81 466 139
		f 4 -255 256 257 258
		mu 0 4 139 466 463 141
		f 4 -113 259 260 261
		mu 0 4 84 83 142 143
		f 4 -261 262 263 264
		mu 0 4 143 142 144 145
		f 4 265 266 267 268
		mu 0 4 146 147 471 149
		f 4 269 270 271 272
		mu 0 4 150 146 151 152
		f 4 273 274 275 276
		mu 0 4 147 150 153 464
		f 4 277 278 279 280
		mu 0 4 155 151 156 157
		f 4 281 282 283 284
		mu 0 4 152 155 158 159
		f 4 -264 285 -284 286
		mu 0 4 145 144 159 158
		f 4 -258 287 -276 288
		mu 0 4 141 463 464 153
		f 4 289 290 291 292
		mu 0 4 372 353 373 374
		f 4 293 294 115 295
		mu 0 4 354 372 65 64
		f 4 -292 296 297 298
		mu 0 4 374 373 375 376
		f 4 -174 299 -268 300
		mu 0 4 472 87 149 471
		f 4 -195 301 -280 302
		mu 0 4 133 132 157 156
		f 4 -129 303 304 -131
		mu 0 4 91 93 377 94
		f 4 -144 305 -127 -125
		mu 0 4 69 102 92 66
		f 4 -123 -133 306 -138
		mu 0 4 68 67 95 99
		f 4 -305 0 -82 -148
		mu 0 4 94 377 378 105
		f 4 -307 -150 80 -153
		mu 0 4 99 95 106 107
		f 4 -142 -140 307 308
		mu 0 4 101 98 100 379
		f 4 -152 79 1 -308
		mu 0 4 100 108 380 379
		f 4 -161 309 -84 -163
		mu 0 4 113 115 53 476
		f 4 -164 84 310 -155
		mu 0 4 110 51 0 111
		f 4 -311 13 12 -170
		mu 0 4 111 0 473 118
		f 4 -159 -157 311 312
		mu 0 4 114 109 112 381
		f 4 -169 82 14 -312
		mu 0 4 112 119 382 381
		f 4 313 -207 95 -189
		mu 0 4 128 137 77 80
		f 4 314 -186 315 -202
		mu 0 4 134 122 126 130
		f 4 -215 316 -93 -217
		mu 0 4 350 352 59 58
		f 4 -218 93 317 -209
		mu 0 4 121 57 15 348
		f 4 -318 26 25 -224
		mu 0 4 348 15 477 355
		f 4 -213 -211 318 319
		mu 0 4 351 120 349 383
		f 4 -223 91 27 -319
		mu 0 4 349 356 384 383
		f 4 -181 -179 -315 -198
		mu 0 4 123 89 122 134
		f 4 -316 -205 -314 -192
		mu 0 4 130 126 137 128
		f 4 -232 320 -304 -136
		mu 0 4 482 360 377 93
		f 4 -226 -134 -306 -147
		mu 0 4 104 96 92 102
		f 4 -239 321 -230 -228
		mu 0 4 358 364 359 357
		f 4 -235 97 -1 -321
		mu 0 4 360 480 378 377
		f 4 -242 -99 -233 -322
		mu 0 4 364 366 361 359
		f 4 -309 322 -237 -145
		mu 0 4 101 379 363 103
		f 4 -323 -2 -100 -240
		mu 0 4 363 379 380 365
		f 4 -249 101 -310 -167
		mu 0 4 117 60 474 115
		f 4 -246 323 -101 -248
		mu 0 4 367 369 37 61
		f 4 -252 -44 -43 -324
		mu 0 4 369 371 38 37
		f 4 -313 324 -244 -165
		mu 0 4 114 381 368 116
		f 4 -325 -15 -104 -250
		mu 0 4 368 381 382 370
		f 4 -260 -110 -256 325
		mu 0 4 142 83 82 139
		f 4 -286 326 -289 327
		mu 0 4 159 144 141 153
		f 4 -296 114 -317 -221
		mu 0 4 354 64 59 352
		f 4 -293 328 -114 -295
		mu 0 4 372 374 49 478
		f 4 -299 -53 -52 -329
		mu 0 4 374 376 50 49
		f 4 -320 329 -291 -219
		mu 0 4 351 383 373 353
		f 4 -330 -28 -117 -297
		mu 0 4 373 383 384 375
		f 4 -285 -328 -275 -273
		mu 0 4 152 159 153 150
		f 4 -263 -326 -259 -327
		mu 0 4 144 142 139 141
		f 4 -301 330 53 331
		mu 0 4 88 148 29 28
		f 4 -300 332 -303 333
		mu 0 4 149 87 133 156
		f 4 -302 334 70 335
		mu 0 4 157 132 76 75
		f 4 336 -62 75 -206
		mu 0 4 136 36 32 78
		f 4 -187 -77 -67 337
		mu 0 4 127 79 35 72
		f 4 -196 -333 -173 -183
		mu 0 4 124 133 87 86
		f 4 338 -73 339 -201
		mu 0 4 129 74 76 135
		f 4 340 -57 341 -184
		mu 0 4 90 28 31 125
		f 4 -340 -335 -194 -200
		mu 0 4 135 76 132 131
		f 4 -175 -332 -341 -177
		mu 0 4 85 88 28 90
		f 4 -338 -70 -339 -190
		mu 0 4 127 72 74 129
		f 4 -342 -75 -337 -203
		mu 0 4 125 31 36 136
		f 4 -254 108 -64 342
		mu 0 4 138 81 33 70
		f 4 -262 343 -65 -112
		mu 0 4 84 143 71 34
		f 4 -271 -269 -334 -279
		mu 0 4 151 146 149 156
		f 4 -287 344 -72 345
		mu 0 4 145 158 75 73
		f 4 -288 346 -55 347
		mu 0 4 154 140 30 29
		f 4 -283 -281 -336 -345
		mu 0 4 158 155 157 75
		f 4 -277 -348 -331 -267
		mu 0 4 465 154 29 148
		f 4 -265 -346 -68 -344
		mu 0 4 143 145 73 71
		f 4 -257 -343 -74 -347
		mu 0 4 140 138 70 30
		f 3 -126 -130 -122
		mu 0 3 66 486 489
		f 3 -141 -124 -137
		mu 0 3 98 69 68
		f 3 -158 -162 -154
		mu 0 3 109 113 110
		f 3 -176 -180 -172
		mu 0 3 470 89 86
		f 3 -182 -197 -193
		mu 0 3 124 123 131
		f 3 -212 -216 -208
		mu 0 3 120 350 121
		f 3 -229 -135 -225
		mu 0 3 488 487 96
		f 3 -227 -146 -236
		mu 0 3 358 104 103
		f 3 -247 -166 -243
		mu 0 3 367 117 116
		f 3 -270 -274 -266
		mu 0 3 146 150 147
		f 3 -282 -272 -278
		mu 0 3 155 152 151
		f 3 -294 -220 -290
		mu 0 3 372 354 353
		f 4 -351 -50 -49 45
		mu 0 4 44 48 46 45
		f 4 119 -353 -46 -105
		mu 0 4 63 41 44 45
		f 4 106 -354 -355 -120
		mu 0 4 63 62 40 41
		f 4 -357 353 105 -356
		mu 0 4 4 40 62 56
		f 4 117 -359 355 -87
		mu 0 4 55 1 4 56
		f 4 88 -360 -361 -118
		mu 0 4 55 54 6 1
		f 4 -363 359 87 24
		mu 0 4 7 6 54 9
		f 4 -365 -25 21 17
		mu 0 4 13 7 9 12
		f 4 381 382 383 384
		mu 0 4 460 161 162 446
		f 4 385 386 387 388
		mu 0 4 164 160 165 166
		f 4 389 390 391 392
		mu 0 4 167 459 168 169
		f 4 393 394 395 396
		mu 0 4 161 167 170 171
		f 4 -388 397 398 399
		mu 0 4 166 165 172 173
		f 4 400 401 402 403
		mu 0 4 432 433 420 177
		f 4 404 -378 405 -379
		mu 0 4 178 174 431 180
		f 4 406 407 408 409
		mu 0 4 421 178 182 419
		f 4 -403 410 411 412
		mu 0 4 177 420 417 185
		f 4 413 414 415 416
		mu 0 4 180 186 187 188
		f 4 417 418 419 420
		mu 0 4 189 179 190 191
		f 4 -420 421 422 423
		mu 0 4 191 190 192 193
		f 4 424 425 426 427
		mu 0 4 194 195 196 197
		f 4 428 429 430 431
		mu 0 4 171 194 198 199
		f 4 432 433 434 435
		mu 0 4 195 170 200 201
		f 4 -427 436 437 438
		mu 0 4 197 196 202 203
		f 4 -435 439 440 441
		mu 0 4 201 200 204 205
		f 4 -392 442 443 444
		mu 0 4 169 168 206 207
		f 4 -444 445 446 447
		mu 0 4 207 206 208 209
		f 4 448 449 450 451
		mu 0 4 210 208 211 212
		f 4 452 453 454 455
		mu 0 4 209 210 213 214
		f 4 456 457 458 459
		mu 0 4 215 213 216 217
		f 4 460 461 -441 462
		mu 0 4 214 215 205 204
		f 4 -409 463 464 465
		mu 0 4 419 182 218 219
		f 4 -416 466 467 468
		mu 0 4 188 187 220 221
		f 4 -459 469 470 471
		mu 0 4 217 216 222 223
		f 4 -468 472 473 474
		mu 0 4 221 220 223 224
		f 4 475 476 477 478
		mu 0 4 224 438 437 226
		f 4 -451 479 480 481
		mu 0 4 212 211 227 225
		f 4 482 483 -465 484
		mu 0 4 226 436 219 218
		f 4 -431 485 486 487
		mu 0 4 199 198 228 229
		f 4 488 489 -487 490
		mu 0 4 230 231 229 228
		f 4 491 492 493 494
		mu 0 4 232 230 233 234
		f 4 495 496 497 498
		mu 0 4 235 232 236 237
		f 4 499 500 501 502
		mu 0 4 231 235 238 239
		f 4 -494 503 504 505
		mu 0 4 234 233 240 241
		f 4 506 507 508 509
		mu 0 4 242 243 244 245
		f 4 510 511 512 513
		mu 0 4 237 242 246 247
		f 4 514 515 516 517
		mu 0 4 243 236 248 249
		f 4 -517 518 519 520
		mu 0 4 249 248 250 251
		f 4 -384 521 522 523
		mu 0 4 446 162 252 445
		f 4 524 525 -523 526
		mu 0 4 239 457 445 252
		f 4 527 528 529 530
		mu 0 4 458 238 247 454
		f 4 531 532 533 534
		mu 0 4 254 255 257 258
		f 4 535 536 537 538
		mu 0 4 455 246 260 261
		f 4 539 540 541 542
		mu 0 4 256 259 262 263
		f 4 -534 543 544 545
		mu 0 4 258 257 264 265
		f 4 -542 546 547 548
		mu 0 4 263 262 266 267
		f 4 -548 549 550 551
		mu 0 4 267 266 268 269
		f 4 -545 552 553 554
		mu 0 4 265 264 270 271
		f 4 -399 555 556 557
		mu 0 4 173 172 272 273
		f 4 -412 558 559 560
		mu 0 4 185 417 414 275
		f 4 -423 561 562 563
		mu 0 4 193 192 276 277
		f 4 -438 564 565 566
		mu 0 4 203 202 278 279
		f 4 -505 567 568 569
		mu 0 4 241 240 280 281
		f 4 -520 570 571 572
		mu 0 4 251 250 282 283
		f 4 573 574 575 576
		mu 0 4 284 416 411 287
		f 4 577 -380 578 -381
		mu 0 4 429 284 289 426
		f 4 579 580 -560 581
		mu 0 4 291 288 275 414
		f 4 582 583 584 585
		mu 0 4 292 289 293 294
		f 4 586 587 -563 588
		mu 0 4 290 427 277 276
		f 4 589 590 591 592
		mu 0 4 296 297 298 299
		f 4 593 594 595 596
		mu 0 4 300 296 301 302
		f 4 597 598 599 600
		mu 0 4 303 300 304 305
		f 4 601 602 -569 603
		mu 0 4 297 303 281 280
		f 4 604 605 606 607
		mu 0 4 306 307 308 309
		f 4 608 609 -572 610
		mu 0 4 305 306 283 282
		f 4 611 612 613 614
		mu 0 4 307 304 310 311
		f 4 615 616 617 618
		mu 0 4 312 313 314 315
		f 4 619 620 621 622
		mu 0 4 316 312 317 318
		f 4 623 624 625 626
		mu 0 4 313 316 319 320
		f 4 -622 627 628 629
		mu 0 4 318 317 321 322
		f 4 630 631 632 633
		mu 0 4 320 323 324 325
		f 4 634 635 636 637
		mu 0 4 323 319 326 327
		f 4 -637 638 639 640
		mu 0 4 327 326 328 329
		f 4 641 642 643 644
		mu 0 4 330 452 444 333
		f 4 645 646 647 648
		mu 0 4 334 330 335 336
		f 4 649 650 -629 651
		mu 0 4 337 334 322 321
		f 4 652 653 -557 654
		mu 0 4 331 453 273 272
		f 4 655 656 -640 657
		mu 0 4 336 338 329 328
		f 4 658 659 660 661
		mu 0 4 339 335 340 341
		f 4 662 663 -566 664
		mu 0 4 338 339 279 278
		f 4 665 666 -585 667
		mu 0 4 342 343 294 293
		f 4 -666 668 669 670
		mu 0 4 343 342 344 345
		f 4 671 672 -633 673
		mu 0 4 345 435 325 324
		f 4 674 675 676 677
		mu 0 4 346 344 347 434
		f 4 678 679 -618 680
		mu 0 4 385 413 315 314
		f 4 681 682 683 684
		mu 0 4 386 347 387 388
		f 4 -684 685 -576 686
		mu 0 4 388 387 287 411
		f 4 -661 687 -592 688
		mu 0 4 341 340 299 298
		f 4 -644 689 690 691
		mu 0 4 333 444 443 390
		f 4 -691 692 693 694
		mu 0 4 390 443 448 301
		f 4 695 696 697 698
		mu 0 4 311 449 451 394
		f 4 699 700 701 702
		mu 0 4 450 310 302 447
		f 4 703 704 -551 705
		mu 0 4 392 395 269 268
		f 4 706 707 -554 708
		mu 0 4 396 391 271 270
		f 4 5 709 -402 -5
		mu 0 4 440 398 176 175
		f 4 -421 710 10 -367
		mu 0 4 189 191 399 424
		f 4 -495 711 -516 -497
		mu 0 4 232 234 248 236
		f 4 712 -448 -456 -463
		mu 0 4 204 207 209 214
		f 4 -395 -393 713 -434
		mu 0 4 170 167 169 200
		f 5 4 365 714 -446 715
		mu 0 5 397 442 462 208 206
		f 4 716 -475 -479 -485
		mu 0 4 218 221 224 226
		f 4 -415 717 -460 718
		mu 0 4 187 186 215 217
		f 4 -454 -452 719 -458
		mu 0 4 213 210 212 216
		f 4 -715 -410 720 -450
		mu 0 4 208 181 183 211
		f 4 -428 721 722 -430
		mu 0 4 194 197 21 198
		f 4 -723 11 723 -486
		mu 0 4 198 21 20 228
		f 4 -720 -482 -477 -470
		mu 0 4 216 212 225 222
		f 4 -719 -472 -473 -467
		mu 0 4 187 217 223 220
		f 4 724 -469 -717 -464
		mu 0 4 182 188 221 218
		f 4 -721 -466 -484 -480
		mu 0 4 211 183 418 227
		f 4 725 -436 -442 726
		mu 0 4 400 195 201 205
		f 4 -714 -445 -713 -440
		mu 0 4 200 169 207 204
		f 4 727 -716 -443 -391
		mu 0 4 459 397 206 168
		f 4 -389 728 -6 -728
		mu 0 4 164 166 398 440
		f 4 -11 729 -426 -726
		mu 0 4 424 399 196 195
		f 4 -432 730 -383 -397
		mu 0 4 171 199 162 161
		f 4 -488 731 -522 -731
		mu 0 4 199 229 252 162
		f 4 -499 -514 -529 -501
		mu 0 4 235 237 247 238
		f 4 -385 732 733 -387
		mu 0 4 160 163 16 165
		f 4 -524 734 29 -733
		mu 0 4 163 253 17 16
		f 4 -531 -543 735 -533
		mu 0 4 255 256 263 257
		f 4 -518 736 -370 -508
		mu 0 4 243 249 401 244
		f 4 -512 -510 368 -537
		mu 0 4 246 242 245 260
		f 4 -541 -539 370 737
		mu 0 4 262 259 456 402
		f 3 -547 -738 738
		mu 0 3 266 262 402
		f 4 -736 -549 739 -544
		mu 0 4 257 263 267 264
		f 4 -734 8 740 -398
		mu 0 4 165 16 19 172
		f 4 -729 -400 741 -10
		mu 0 4 398 166 173 403
		f 4 -710 9 742 -411
		mu 0 4 176 398 403 184
		f 4 743 -413 744 -422
		mu 0 4 190 177 185 192
		f 4 -711 -424 745 6
		mu 0 4 399 191 193 404
		f 4 -730 -7 746 -437
		mu 0 4 196 399 404 202
		f 4 -722 -439 747 3
		mu 0 4 21 197 203 22
		f 4 -712 -506 748 -519
		mu 0 4 248 234 241 250
		f 4 749 -29 750 -504
		mu 0 4 233 20 23 240
		f 4 -724 -750 -493 -491
		mu 0 4 228 20 233 230
		f 4 -732 -490 -503 -527
		mu 0 4 252 229 231 239
		f 4 -735 -526 -535 751
		mu 0 4 17 253 254 258
		f 4 -31 -752 -546 752
		mu 0 4 18 17 258 265
		f 4 32 -582 753 -32
		mu 0 4 405 441 274 406
		f 4 -588 372 -34 754
		mu 0 4 277 427 423 408
		f 4 -601 -611 755 -603
		mu 0 4 303 305 282 281
		f 4 -636 -625 -623 756
		mu 0 4 326 319 316 318
		f 4 -658 757 -651 -649
		mu 0 4 336 328 322 334
		f 5 758 -621 759 371 -33
		mu 0 5 439 317 312 285 415
		f 4 -683 -676 -669 760
		mu 0 4 387 347 344 342
		f 4 -586 761 -632 762
		mu 0 4 292 294 324 323
		f 4 -634 763 -617 -627
		mu 0 4 320 325 314 313
		f 4 -619 764 -575 -760
		mu 0 4 312 315 286 461
		f 4 -662 765 766 -664
		mu 0 4 339 341 27 279
		f 4 -689 767 -35 -766
		mu 0 4 341 298 26 27
		f 4 -673 -678 -681 -764
		mu 0 4 325 435 385 314
		f 4 -667 -671 -674 -762
		mu 0 4 294 343 345 324
		f 4 -686 -761 -668 768
		mu 0 4 287 387 342 293
		f 4 -680 -685 -687 -765
		mu 0 4 315 413 412 286
		f 4 769 -641 -657 770
		mu 0 4 407 327 329 338
		f 4 -639 -757 -630 -758
		mu 0 4 328 326 318 322
		f 4 -652 -628 -759 771
		mu 0 4 337 321 317 439
		f 4 -772 31 772 -654
		mu 0 4 453 405 406 273
		f 4 -771 -665 773 33
		mu 0 4 423 338 278 408
		f 4 -647 -645 774 -660
		mu 0 4 335 330 333 340
		f 4 -775 -692 775 -688
		mu 0 4 340 333 390 299
		f 4 -597 -701 -613 -599
		mu 0 4 300 302 310 304
		f 4 -655 776 777 -643
		mu 0 4 331 272 24 332
		f 4 -778 -36 778 -690
		mu 0 4 332 24 25 389
		f 4 -709 779 -705 -703
		mu 0 4 396 270 269 395
		f 4 -699 -376 -606 -615
		mu 0 4 311 394 308 307
		f 4 780 -377 -697 -706
		mu 0 4 268 402 393 392
		f 3 -739 -781 -550
		mu 0 3 266 402 268
		f 4 -553 -740 -552 -780
		mu 0 4 270 264 267 269
		f 4 -556 -741 -38 -777
		mu 0 4 272 172 19 24
		f 4 38 -742 -558 -773
		mu 0 4 406 403 173 273
		f 4 -559 -743 -39 -754
		mu 0 4 274 184 403 406
		f 4 -562 -745 -561 781
		mu 0 4 276 192 185 275
		f 4 -40 -746 -564 -755
		mu 0 4 408 404 193 277
		f 4 -565 -747 39 -774
		mu 0 4 278 202 404 408
		f 4 -41 -748 -567 -767
		mu 0 4 27 22 203 279
		f 4 -571 -749 -570 -756
		mu 0 4 282 250 241 281
		f 4 -568 -751 41 782
		mu 0 4 280 240 23 26
		f 4 -591 -604 -783 -768
		mu 0 4 298 297 280 26
		f 4 -695 -595 -593 -776
		mu 0 4 390 301 296 299
		f 4 783 -708 -693 -779
		mu 0 4 25 271 391 389
		f 4 -753 -555 -784 36
		mu 0 4 18 265 271 25
		f 4 -608 374 784 -610
		mu 0 4 306 309 409 283
		f 4 -79 785 -573 -785
		mu 0 4 409 410 251 283
		f 4 -786 -78 -737 -521
		mu 0 4 251 410 401 249
		f 5 -368 366 -727 -462 -718
		mu 0 5 186 430 400 205 215
		f 5 786 -763 -638 -770 -373
		mu 0 5 425 292 323 327 407
		f 4 -419 377 -404 -744
		mu 0 4 190 179 432 177
		f 4 -408 378 -417 -725
		mu 0 4 182 178 180 188
		f 4 -584 379 -577 -769
		mu 0 4 293 289 284 287
		f 4 -581 380 -589 -782
		mu 0 4 275 288 290 276
		f 4 -386 -390 -394 -382
		mu 0 4 460 459 167 161
		f 4 -401 -405 -407 -366
		mu 0 4 422 174 178 421
		f 4 -406 -418 367 -414
		mu 0 4 180 431 430 186
		f 4 -429 -396 -433 -425
		mu 0 4 194 171 170 195
		f 3 -449 -453 -447
		mu 0 3 208 210 209
		f 3 -461 -455 -457
		mu 0 3 215 214 213
		f 3 -476 -474 -471
		mu 0 3 438 224 223
		f 3 -483 -478 -481
		mu 0 3 436 226 437
		f 4 -492 -496 -500 -489
		mu 0 4 230 232 235 231
		f 4 -511 -498 -515 -507
		mu 0 4 242 237 236 243
		f 4 -502 -528 -532 -525
		mu 0 4 239 238 458 457
		f 4 -540 -530 -513 -536
		mu 0 4 455 454 247 246
		f 4 -578 -580 -372 -574
		mu 0 4 284 429 428 416
		f 4 -583 373 -587 -579
		mu 0 4 289 292 295 426
		f 4 -594 -598 -602 -590
		mu 0 4 296 300 303 297
		f 4 -609 -600 -612 -605
		mu 0 4 306 305 304 307
		f 3 -620 -624 -616
		mu 0 3 312 316 313
		f 3 -626 -635 -631
		mu 0 3 320 319 323
		f 4 -646 -650 -653 -642
		mu 0 4 330 334 337 452
		f 4 -648 -659 -663 -656
		mu 0 4 336 335 339 338
		f 3 -670 -675 -672
		mu 0 3 345 344 346
		f 3 -677 -682 -679
		mu 0 3 434 347 386
		f 4 -614 -700 -704 -696
		mu 0 4 311 310 450 449
		f 4 -707 -702 -596 -694
		mu 0 4 448 447 302 301
		f 4 801 803 -806 -807
		mu 0 4 491 492 493 494
		f 4 788 794 817 -794
		mu 0 4 495 496 497 498
		f 4 789 796 -791 -796
		mu 0 4 499 500 501 502
		f 4 821 820 -788 -819
		mu 0 4 503 504 505 506
		f 4 -821 822 -795 -793
		mu 0 4 507 508 497 496
		f 4 818 791 793 819
		mu 0 4 503 506 495 498
		f 4 787 800 811 -800
		mu 0 4 506 505 509 510
		f 4 792 802 809 -801
		mu 0 4 507 496 511 512
		f 4 -789 804 814 -803
		mu 0 4 496 495 513 511
		f 4 -792 799 813 -805
		mu 0 4 495 506 510 513
		f 4 -810 807 -804 -809
		mu 0 4 512 511 493 514
		f 4 -812 808 -802 -811
		mu 0 4 510 509 492 491
		f 4 -814 810 806 -813
		mu 0 4 513 510 491 494
		f 4 -815 812 805 -808
		mu 0 4 511 513 494 493
		f 4 -818 815 -790 -817
		mu 0 4 498 497 500 499
		f 4 797 -820 816 795
		mu 0 4 502 503 498 499
		f 4 790 798 -822 -798
		mu 0 4 502 515 504 503
		f 4 -842 -844 -846 -847
		mu 0 4 516 517 518 519
		f 4 -823 823 837 -825
		mu 0 4 497 508 520 521
		f 4 -799 826 835 -824
		mu 0 4 522 501 523 524
		f 4 -797 828 833 -827
		mu 0 4 501 500 525 523
		f 4 -816 824 838 -829
		mu 0 4 500 497 521 525
		f 4 -834 831 829 -833
		mu 0 4 523 525 526 527
		f 4 -836 832 827 -835
		mu 0 4 524 523 527 528
		f 4 -838 834 825 -837
		mu 0 4 521 520 529 530
		f 4 -839 836 830 -832
		mu 0 4 525 521 530 526
		f 4 -826 839 841 -841
		mu 0 4 531 532 517 516
		f 4 -828 842 843 -840
		mu 0 4 533 534 518 517
		f 4 -830 844 845 -843
		mu 0 4 534 535 519 518
		f 4 -831 840 846 -845
		mu 0 4 535 531 516 519
		f 4 861 863 -866 -867
		mu 0 4 536 537 538 539
		f 4 848 854 877 -854
		mu 0 4 540 541 542 543
		f 4 849 856 -851 -856
		mu 0 4 544 545 546 547
		f 4 881 880 -848 -879
		mu 0 4 548 549 550 551
		f 4 -881 882 -855 -853
		mu 0 4 552 553 542 541
		f 4 878 851 853 879
		mu 0 4 548 551 540 543
		f 4 847 860 871 -860
		mu 0 4 551 550 554 555
		f 4 852 862 869 -861
		mu 0 4 552 541 556 557
		f 4 -849 864 874 -863
		mu 0 4 541 540 558 556
		f 4 -852 859 873 -865
		mu 0 4 540 551 555 558
		f 4 -870 867 -864 -869
		mu 0 4 557 556 538 559
		f 4 -872 868 -862 -871
		mu 0 4 555 554 537 536
		f 4 -874 870 866 -873
		mu 0 4 558 555 536 539
		f 4 -875 872 865 -868
		mu 0 4 556 558 539 538
		f 4 -878 875 -850 -877
		mu 0 4 543 542 545 544
		f 4 857 -880 876 855
		mu 0 4 547 548 543 544
		f 4 850 858 -882 -858
		mu 0 4 547 560 549 548
		f 4 -902 -904 -906 -907
		mu 0 4 561 562 563 564
		f 4 -883 883 897 -885
		mu 0 4 542 553 565 566
		f 4 -859 886 895 -884
		mu 0 4 567 546 568 569
		f 4 -857 888 893 -887
		mu 0 4 546 545 570 568
		f 4 -876 884 898 -889
		mu 0 4 545 542 566 570
		f 4 -894 891 889 -893
		mu 0 4 568 570 571 572
		f 4 -896 892 887 -895
		mu 0 4 569 568 572 573
		f 4 -898 894 885 -897
		mu 0 4 566 565 574 575
		f 4 -899 896 890 -892
		mu 0 4 570 566 575 571
		f 4 -886 899 901 -901
		mu 0 4 576 577 562 561
		f 4 -888 902 903 -900
		mu 0 4 578 579 563 562
		f 4 -890 904 905 -903
		mu 0 4 579 580 564 563
		f 4 -891 900 906 -905
		mu 0 4 580 576 561 564
		f 4 910 909 -909 -908
		mu 0 4 581 582 583 584
		f 4 914 -914 -913 -912
		mu 0 4 585 586 587 588
		f 4 918 917 -917 -916
		mu 0 4 589 590 591 592
		f 4 922 921 -921 -920
		mu 0 4 593 594 595 596
		f 4 924 912 -924 920
		mu 0 4 595 597 598 596
		f 4 -927 -915 -926 -923
		mu 0 4 593 586 585 594
		f 4 929 -929 -928 -922
		mu 0 4 594 599 600 595
		f 4 927 -932 -931 -925
		mu 0 4 595 600 601 597
		f 4 930 -934 -933 911
		mu 0 4 588 602 603 585
		f 4 932 -935 -930 925
		mu 0 4 585 603 599 594
		f 4 936 908 -936 931
		mu 0 4 600 584 604 601
		f 4 937 907 -937 928
		mu 0 4 599 581 584 600
		f 4 938 -911 -938 934
		mu 0 4 603 582 581 599
		f 4 935 -910 -939 933
		mu 0 4 602 583 582 603
		f 4 940 915 -940 913
		mu 0 4 586 589 605 587
		f 4 -919 -941 926 -942
		mu 0 4 590 589 586 593
		f 4 941 919 -943 -918
		mu 0 4 590 593 596 591
		f 4 946 945 944 943
		mu 0 4 606 607 608 609
		f 4 949 -949 -948 923
		mu 0 4 598 610 611 596
		f 4 947 -952 -951 942
		mu 0 4 596 611 612 591
		f 4 950 -954 -953 916
		mu 0 4 591 612 613 592
		f 4 952 -955 -950 939
		mu 0 4 592 613 614 615
		f 4 957 -957 -956 953
		mu 0 4 612 616 617 613
		f 4 959 -959 -958 951
		mu 0 4 611 618 616 612
		f 4 961 -961 -960 948
		mu 0 4 610 619 618 611
		f 4 955 -963 -962 954
		mu 0 4 613 617 620 614
		f 4 964 -944 -964 960
		mu 0 4 621 606 609 622
		f 4 963 -945 -966 958
		mu 0 4 622 609 608 623
		f 4 965 -946 -967 956
		mu 0 4 623 608 607 624
		f 4 966 -947 -965 962
		mu 0 4 624 607 606 625
		f 4 970 969 -969 -968
		mu 0 4 626 627 628 629
		f 4 974 -974 -973 -972
		mu 0 4 630 631 632 633
		f 4 978 977 -977 -976
		mu 0 4 634 635 636 637
		f 4 982 981 -981 -980
		mu 0 4 638 639 640 641
		f 4 984 972 -984 980
		mu 0 4 640 642 643 641
		f 4 -987 -975 -986 -983
		mu 0 4 638 631 630 639
		f 4 989 -989 -988 -982
		mu 0 4 639 644 645 640
		f 4 987 -992 -991 -985
		mu 0 4 640 645 646 642
		f 4 990 -994 -993 971
		mu 0 4 633 647 648 630
		f 4 992 -995 -990 985
		mu 0 4 630 648 644 639
		f 4 996 968 -996 991
		mu 0 4 645 629 649 646
		f 4 997 967 -997 988
		mu 0 4 644 626 629 645
		f 4 998 -971 -998 994
		mu 0 4 648 627 626 644
		f 4 995 -970 -999 993
		mu 0 4 647 628 627 648
		f 4 1000 975 -1000 973
		mu 0 4 631 634 650 632
		f 4 -979 -1001 986 -1002
		mu 0 4 635 634 631 638
		f 4 1001 979 -1003 -978
		mu 0 4 635 638 641 636
		f 4 1006 1005 1004 1003
		mu 0 4 651 652 653 654
		f 4 1009 -1009 -1008 983
		mu 0 4 643 655 656 641
		f 4 1007 -1012 -1011 1002
		mu 0 4 641 656 657 636
		f 4 1010 -1014 -1013 976
		mu 0 4 636 657 658 637
		f 4 1012 -1015 -1010 999
		mu 0 4 637 658 659 660
		f 4 1017 -1017 -1016 1013
		mu 0 4 657 661 662 658
		f 4 1019 -1019 -1018 1011
		mu 0 4 656 663 661 657
		f 4 1021 -1021 -1020 1008
		mu 0 4 655 664 663 656
		f 4 1015 -1023 -1022 1014
		mu 0 4 658 662 665 659
		f 4 1024 -1004 -1024 1020
		mu 0 4 666 651 654 667
		f 4 1023 -1005 -1026 1018
		mu 0 4 667 654 653 668
		f 4 1025 -1006 -1027 1016
		mu 0 4 668 653 652 669
		f 4 1026 -1007 -1025 1022
		mu 0 4 669 652 651 670;
	setAttr ".fc[500:619]"
		f 4 1030 1029 -1029 -1028
		mu 0 4 671 672 673 674
		f 4 1034 -1034 -1033 -1032
		mu 0 4 675 676 677 678
		f 4 1038 1037 -1037 -1036
		mu 0 4 679 680 681 682
		f 4 1042 1041 -1041 -1040
		mu 0 4 683 684 685 686
		f 4 1044 1032 -1044 1040
		mu 0 4 687 678 677 688
		f 4 -1047 -1035 -1046 -1043
		mu 0 4 683 676 675 684
		f 4 1049 -1049 -1048 -1042
		mu 0 4 684 689 690 685
		f 4 1047 -1052 -1051 -1045
		mu 0 4 687 691 692 678
		f 4 1050 -1054 -1053 1031
		mu 0 4 678 692 693 675
		f 4 1052 -1055 -1050 1045
		mu 0 4 675 693 689 684
		f 4 1056 1028 -1056 1051
		mu 0 4 691 694 673 692
		f 4 1057 1027 -1057 1048
		mu 0 4 689 671 674 690
		f 4 1058 -1031 -1058 1054
		mu 0 4 693 672 671 689
		f 4 1055 -1030 -1059 1053
		mu 0 4 692 673 672 693
		f 4 1060 1035 -1060 1033
		mu 0 4 676 679 682 677
		f 4 -1039 -1061 1046 -1062
		mu 0 4 680 679 676 683
		f 4 1061 1039 -1063 -1038
		mu 0 4 680 683 686 695
		f 4 1066 1065 1064 1063
		mu 0 4 696 697 698 699
		f 4 1069 -1069 -1068 1043
		mu 0 4 677 700 701 688
		f 4 1067 -1072 -1071 1062
		mu 0 4 702 703 704 681
		f 4 1070 -1074 -1073 1036
		mu 0 4 681 704 705 682
		f 4 1072 -1075 -1070 1059
		mu 0 4 682 705 700 677
		f 4 1077 -1077 -1076 1073
		mu 0 4 704 706 707 705
		f 4 1079 -1079 -1078 1071
		mu 0 4 703 708 706 704
		f 4 1081 -1081 -1080 1068
		mu 0 4 700 709 710 701
		f 4 1075 -1083 -1082 1074
		mu 0 4 705 707 709 700
		f 4 1084 -1064 -1084 1080
		mu 0 4 711 696 699 712
		f 4 1083 -1065 -1086 1078
		mu 0 4 713 699 698 714
		f 4 1085 -1066 -1087 1076
		mu 0 4 714 698 697 715
		f 4 1086 -1067 -1085 1082
		mu 0 4 715 697 696 711
		f 4 1090 1089 -1089 -1088
		mu 0 4 716 717 718 719
		f 4 1094 -1094 -1093 -1092
		mu 0 4 720 721 722 723
		f 4 1098 1097 -1097 -1096
		mu 0 4 724 725 726 727
		f 4 1102 1101 -1101 -1100
		mu 0 4 728 729 730 731
		f 4 1104 1092 -1104 1100
		mu 0 4 732 723 722 733
		f 4 -1107 -1095 -1106 -1103
		mu 0 4 728 721 720 729
		f 4 1109 -1109 -1108 -1102
		mu 0 4 729 734 735 730
		f 4 1107 -1112 -1111 -1105
		mu 0 4 732 736 737 723
		f 4 1110 -1114 -1113 1091
		mu 0 4 723 737 738 720
		f 4 1112 -1115 -1110 1105
		mu 0 4 720 738 734 729
		f 4 1116 1088 -1116 1111
		mu 0 4 736 739 718 737
		f 4 1117 1087 -1117 1108
		mu 0 4 734 716 719 735
		f 4 1118 -1091 -1118 1114
		mu 0 4 738 717 716 734
		f 4 1115 -1090 -1119 1113
		mu 0 4 737 718 717 738
		f 4 1120 1095 -1120 1093
		mu 0 4 721 724 727 722
		f 4 -1099 -1121 1106 -1122
		mu 0 4 725 724 721 728
		f 4 1121 1099 -1123 -1098
		mu 0 4 725 728 731 740
		f 4 1126 1125 1124 1123
		mu 0 4 741 742 743 744
		f 4 1129 -1129 -1128 1103
		mu 0 4 722 745 746 733
		f 4 1127 -1132 -1131 1122
		mu 0 4 747 748 749 726
		f 4 1130 -1134 -1133 1096
		mu 0 4 726 749 750 727
		f 4 1132 -1135 -1130 1119
		mu 0 4 727 750 745 722
		f 4 1137 -1137 -1136 1133
		mu 0 4 749 751 752 750
		f 4 1139 -1139 -1138 1131
		mu 0 4 748 753 751 749
		f 4 1141 -1141 -1140 1128
		mu 0 4 745 754 755 746
		f 4 1135 -1143 -1142 1134
		mu 0 4 750 752 754 745
		f 4 1144 -1124 -1144 1140
		mu 0 4 756 741 744 757
		f 4 1143 -1125 -1146 1138
		mu 0 4 758 744 743 759
		f 4 1145 -1126 -1147 1136
		mu 0 4 759 743 742 760
		f 4 1146 -1127 -1145 1142
		mu 0 4 760 742 741 756
		f 4 1150 1149 -1149 -1148
		mu 0 4 761 762 763 764
		f 4 1154 1153 1152 -1152
		mu 0 4 765 766 767 768
		f 4 1158 1157 -1157 -1156
		mu 0 4 769 770 771 772
		f 4 1162 1161 -1161 -1160
		mu 0 4 773 774 775 776
		f 4 -1162 1164 -1154 -1164
		mu 0 4 775 774 777 778
		f 4 1159 1166 1151 1165
		mu 0 4 773 776 765 768
		f 4 1160 1169 1168 -1168
		mu 0 4 776 775 779 780
		f 4 1163 1171 1170 -1170
		mu 0 4 775 778 781 779
		f 4 -1155 1173 1172 -1172
		mu 0 4 766 765 782 783
		f 4 -1167 1167 1174 -1174
		mu 0 4 765 776 780 782
		f 4 -1171 1176 -1150 -1176
		mu 0 4 779 781 784 762
		f 4 -1169 1175 -1151 -1178
		mu 0 4 780 779 762 761
		f 4 -1175 1177 1147 -1179
		mu 0 4 782 780 761 764
		f 4 -1173 1178 1148 -1177
		mu 0 4 783 782 764 763
		f 4 -1153 1180 -1159 -1180
		mu 0 4 768 767 785 769
		f 4 1181 -1166 1179 1155
		mu 0 4 772 773 768 769
		f 4 1156 1182 -1163 -1182
		mu 0 4 772 771 774 773
		f 4 -1187 -1186 -1185 -1184
		mu 0 4 786 787 788 789
		f 4 -1165 1189 1188 -1188
		mu 0 4 777 774 790 791
		f 4 -1183 1191 1190 -1190
		mu 0 4 774 771 792 790
		f 4 -1158 1193 1192 -1192
		mu 0 4 771 770 793 792
		f 4 -1181 1187 1194 -1194
		mu 0 4 770 794 795 793
		f 4 -1193 1197 1196 -1196
		mu 0 4 792 793 796 797
		f 4 -1191 1195 1199 -1199
		mu 0 4 790 792 797 798
		f 4 -1189 1198 1201 -1201
		mu 0 4 791 790 798 799
		f 4 -1195 1200 1202 -1198
		mu 0 4 793 795 800 796
		f 4 -1202 1204 1186 -1204
		mu 0 4 801 802 787 786
		f 4 -1200 1205 1185 -1205
		mu 0 4 802 803 788 787
		f 4 -1197 1206 1184 -1206
		mu 0 4 803 804 789 788
		f 4 -1203 1203 1183 -1207
		mu 0 4 804 805 786 789
		f 4 1210 1209 -1209 -1208
		mu 0 4 806 807 808 809
		f 4 1214 1213 1212 -1212
		mu 0 4 810 811 812 813
		f 4 1218 1217 -1217 -1216
		mu 0 4 814 815 816 817
		f 4 1222 1221 -1221 -1220
		mu 0 4 818 819 820 821
		f 4 -1222 1224 -1214 -1224
		mu 0 4 820 819 822 823
		f 4 1219 1226 1211 1225
		mu 0 4 818 821 810 813
		f 4 1220 1229 1228 -1228
		mu 0 4 821 820 824 825
		f 4 1223 1231 1230 -1230
		mu 0 4 820 823 826 824
		f 4 -1215 1233 1232 -1232
		mu 0 4 811 810 827 828
		f 4 -1227 1227 1234 -1234
		mu 0 4 810 821 825 827
		f 4 -1231 1236 -1210 -1236
		mu 0 4 824 826 829 807
		f 4 -1229 1235 -1211 -1238
		mu 0 4 825 824 807 806
		f 4 -1235 1237 1207 -1239
		mu 0 4 827 825 806 809
		f 4 -1233 1238 1208 -1237
		mu 0 4 828 827 809 808
		f 4 -1213 1240 -1219 -1240
		mu 0 4 813 812 830 814
		f 4 1241 -1226 1239 1215
		mu 0 4 817 818 813 814
		f 4 1216 1242 -1223 -1242
		mu 0 4 817 816 819 818
		f 4 -1247 -1246 -1245 -1244
		mu 0 4 831 832 833 834
		f 4 -1225 1249 1248 -1248
		mu 0 4 822 819 835 836
		f 4 -1243 1251 1250 -1250
		mu 0 4 819 816 837 835
		f 4 -1218 1253 1252 -1252
		mu 0 4 816 815 838 837
		f 4 -1241 1247 1254 -1254
		mu 0 4 815 839 840 838
		f 4 -1253 1257 1256 -1256
		mu 0 4 837 838 841 842
		f 4 -1251 1255 1259 -1259
		mu 0 4 835 837 842 843
		f 4 -1249 1258 1261 -1261
		mu 0 4 836 835 843 844
		f 4 -1255 1260 1262 -1258
		mu 0 4 838 840 845 841
		f 4 -1262 1264 1246 -1264
		mu 0 4 846 847 832 831
		f 4 -1260 1265 1245 -1265
		mu 0 4 847 848 833 832
		f 4 -1257 1266 1244 -1266
		mu 0 4 848 849 834 833
		f 4 -1263 1263 1243 -1267
		mu 0 4 849 850 831 834;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "Spiderling_GEOShapeDeformed" -p "Spider_Spiderling_MOD_MASTER:Spiderling_GEO";
	rename -uid "2B7812F4-4F3D-A778-35F9-BB8C5254C9E4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51236620172858238 0.21410001069307327 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "62675496-4DAE-0CF2-69C6-72ADE614EDD5";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "55809198-449C-590E-4D90-25B6C7620E78";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8DD00062-4D64-EE04-AA5A-C99E63AF530E";
createNode displayLayerManager -n "layerManager";
	rename -uid "870BA0EF-477F-87F0-C439-52BD260F273C";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "08314104-4877-0B62-BD50-0AA376642749";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F772A4EA-46C1-42A2-2F7D-639592E061BC";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "94F2F6C0-4072-4BB4-6C25-899F3E7519E2";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "16074D7D-417C-459D-2EA1-44B3958ABB56";
	setAttr ".version" -type "string" "5.0.0.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "44400731-460F-4FBF-7B13-388609CA28CB";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "AD85F36D-4200-D18D-DFBF-9EB0EB0A68A2";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "E5B311C5-4148-C623-CE52-C7BBA46CB712";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F24430F2-4F02-AF12-99A7-748995235A31";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1399\n            -height 734\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n"
		+ "                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1399\\n    -height 734\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1399\\n    -height 734\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D5608F5E-4005-0C82-FB2C-32AD1DF1E88A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "7A2A0215-4FD5-1E61-C49B-35BF329FD6B5";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "0558E6E4-4EF2-09CC-7EEE-B1903FB9A718";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 30;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "37579744-4135-029E-1703-91AF120032A4";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "31D34F10-4116-4A59-48EA-89AF082E68E0";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "92292424-4BCF-F7CB-67F3-BEA6A534695A";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "865BF962-400B-7BAF-C427-D684E988FECE";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "7F941322-493E-BCD6-D388-149AA098EE7E";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "9B477503-4FCB-4396-B541-59903CA8DED3";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle13";
	rename -uid "2C27BE7A-4EDC-113A-BB4C-639ED3E997F4";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "9E7E284A-4102-9691-FB96-919EF863C039";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle21";
	rename -uid "10D3E5FD-4D5A-FEA2-B531-438F11851B08";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle25";
	rename -uid "DE3E87B5-488D-25AD-DACD-12B77A850D50";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode displayLayer -n "Geometry";
	rename -uid "14E6A70C-4544-16F7-0750-5D93C9B74911";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode polyCube -n "polyCube1";
	rename -uid "D4DECB4D-4E39-A67F-2458-91856E8D6D4E";
	setAttr ".cuv" 4;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "F3ED2661-46AC-090B-DDE3-E4B7924BCB9E";
	setAttr ".txf" -type "matrix" 0.11992863122288833 -0.9486341393346811 0.29276337390758717 0
		 0.35959959071742315 0.31637520397267099 0.87783532890121962 0 -0.92536763384552523 2.7755575615628906e-15 0.37907089341063049 0
		 31.871511007049122 23.456749653861714 40.120703467805328 1;
createNode polyCube -n "polyCube2";
	rename -uid "AD9CB85D-43CE-AE0B-6B28-8CA520DBE7A6";
	setAttr ".cuv" 4;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "6F1C4F22-48F3-55B4-911A-528075F7D36E";
	setAttr ".txf" -type "matrix" 0.11992863122288805 0.94863413933468155 -0.292763373907587 0
		 0.35959959071741765 -0.31637520397267083 -0.87783532890122218 0 -0.92536763384552767 -1.1657341758564146e-15 -0.37907089341062572 0
		 -32.132105586509809 23.686014437619097 40.756851131174137 1;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "309F6657-4DA6-6191-12D2-F9B737BA39CE";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
createNode makeNurbCircle -n "makeNurbCircle26";
	rename -uid "70E0F00B-42CF-5988-5E6B-B2A13FFFAF9C";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 2;
	setAttr ".tol" 0;
createNode skinCluster -n "skinCluster1";
	rename -uid "BA32D736-4186-5EDF-CCC9-A1A6C9E78BBA";
	setAttr -s 669 ".wl";
	setAttr ".wl[0:415].w"
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 3 1
		2 4 0.68311110138893127 9 0.31688889861106873
		2 4 0.65696001052856445 9 0.34303998947143555
		1 4 1
		1 4 1
		1 3 1
		1 3 1
		1 3 1
		1 4 1
		1 4 1
		1 3 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		2 4 0.68311110138893127 6 0.31688889861106873
		2 4 0.65696001052856445 6 0.34303998947143555
		1 3 1
		1 4 1
		1 4 1
		1 3 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 3 1
		1 3 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 3 1
		1 3 1
		1 3 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 3 1
		4 3 0.99523025751113892 4 0.0031317897414612559 9 0.0016374921379372429 
		10 4.6060946258512454e-07
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		4 1 1.1102230246251565e-16 4 0.67260380060966307 9 0.32739604298699493 
		10 1.5640334192346586e-07
		2 4 0.69523061990411639 9 0.30476938009588378
		2 4 0.37959399543557854 9 0.62040600456442141
		2 4 0.45623797851683134 9 0.54376202148316877
		1 4 1
		1 4 1
		2 4 0.37981104850769043 9 0.62018895149230957
		3 1 1.1102230246251565e-16 4 0.68757540295523989 9 0.31242459704476
		2 4 0.62368014454841614 9 0.37631985545158386
		2 4 0.32786834239959717 9 0.67213165760040283
		1 4 1
		1 4 1
		1 3 1
		3 1 1.1102230246251565e-16 3 0.9997496214114121 4 0.00025037858858779292
		2 3 0.98919199127703905 4 0.010808008722960949
		2 4 0.99998267965793453 9 1.7320342065474392e-05
		1 4 1
		1 3 1
		2 9 0.85596783459186554 10 0.14403216540813446
		2 9 0.80945657193660736 10 0.19054342806339264
		2 9 0.8138771653175354 10 0.1861228346824646
		2 9 0.82612420618534088 10 0.17387579381465912
		3 1 1.1102230246251565e-16 9 0.5645522105936911 10 0.43544778940630879
		3 4 0.00015503486898509056 9 0.64446688032104593 10 0.35537808480996896
		2 9 0.19933622071891222 10 0.80066377928108778
		2 9 0.12203139066696167 10 0.87796860933303833
		2 9 0.25063472986221313 10 0.74936527013778687
		2 9 0.38465666770935059 10 0.61534333229064941
		2 9 0.27736225736889814 10 0.72263774263110192
		2 9 0.14942234754562378 10 0.85057765245437622
		2 9 0.69944243202057876 10 0.30055756797942124
		2 9 0.57988373291969586 10 0.42011626708030408
		2 9 0.4999373208088187 10 0.5000626791911813
		3 4 0.00033634956854409342 9 0.40513111896154408 10 0.59453253146991181
		3 4 5.333826321502963e-05 9 0.36400429354609642 10 0.63594236819068861
		3 4 5.3653975262666492e-05 9 0.46508607900462606 10 0.53486026702011125
		1 10 1
		2 9 1.5416632667677663e-06 10 0.99999845833673329
		2 9 0.1362922191619873 10 0.8637077808380127
		2 9 0.162811279296875 10 0.837188720703125
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		3 1 1.1102230246251565e-16 9 0.00025415499478142003 10 0.99974584500521846
		1 10 1
		2 9 0.18851709365844727 10 0.81148290634155273
		2 9 0.17366737127304077 10 0.82633262872695923
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 3 1
		1 4 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		2 4 0.37541353702545166 6 0.62458646297454834
		2 4 0.69472590088844299 6 0.30527409911155701
		2 4 0.67261606454849243 6 0.32738393545150757
		2 4 0.33871346712112427 6 0.66128653287887573
		1 4 1
		1 4 1
		2 4 0.37981104850769043 6 0.62018895149230957
		2 4 0.32786834239959717 6 0.67213165760040283
		2 4 0.62368014454841614 6 0.37631985545158386
		2 4 0.68721315264701843 6 0.31278684735298157
		1 4 1
		1 4 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		2 6 0.20633393526077271 7 0.79366606473922729
		2 6 0.25063472986221313 7 0.74936527013778687
		2 6 0.12203139066696167 7 0.87796860933303833
		2 6 0.5644795298576355 7 0.4355204701423645
		2 6 0.64458245038986206 7 0.35541754961013794
		2 6 0.14942234754562378 7 0.85057765245437622
		2 6 0.27736544609069824 7 0.72263455390930176
		2 6 0.38465666770935059 7 0.61534333229064941
		2 6 0.69978344440460205 7 0.30021655559539795
		2 6 0.57955652475357056 7 0.42044347524642944
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 4 1
		2 6 0.82612420618534088 7 0.17387579381465912
		2 6 0.8138771653175354 7 0.1861228346824646
		2 6 0.80945657193660736 7 0.19054342806339264
		2 6 0.85596783459186554 7 0.14403216540813446
		2 6 0.162811279296875 7 0.837188720703125
		2 6 0.1362922191619873 7 0.8637077808380127
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 6 0.17366737127304077 7 0.82633262872695923
		2 6 0.18851709365844727 7 0.81148290634155273
		2 6 0.36295992136001587 7 0.63704007863998413
		2 6 0.46608692407608032 7 0.53391307592391968
		2 6 0.50012367963790894 7 0.49987632036209106
		2 6 0.40503144264221191 7 0.59496855735778809
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 4 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		2 36 0.12000000476837158 37 0.87999999523162842
		2 36 0.21333330869674683 37 0.78666669130325317
		1 36 0.12000000476837157;
	setAttr ".wl[415:668].w"
		1 37 0.87999999523162842
		2 36 0.21333330869674683 37 0.78666669130325317
		2 36 0.72499999403953552 37 0.27500000596046448
		2 36 0.88333333283662796 37 0.11666666716337204
		2 36 0.72499999403953552 37 0.27500000596046448
		2 36 0.88333333283662796 37 0.11666666716337204
		1 38 1
		1 38 1
		1 38 1
		1 38 1
		3 36 0.040000021457672119 37 0.23999994993209839 38 0.72000002861022949
		3 36 0.040000021457672119 37 0.23999994993209839 38 0.72000002861022949
		2 37 0.19999998807907104 38 0.80000001192092896
		2 37 0.19999998807907104 38 0.80000001192092896
		2 36 0.65555554628372192 37 0.34444445371627808
		2 36 0.44333332777023315 37 0.55666667222976685
		2 36 0.44333332777023315 37 0.55666667222976685
		2 36 0.65555554628372192 37 0.34444445371627808
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 0 0.76177777349948883 36 0.23822222650051117
		2 0 0.76177777349948883 36 0.23822222650051117
		3 0 0.74977777153253555 36 0.18355555832386017 37 0.066666670143604279
		3 0 0.80222221463918686 36 0.13111111521720886 37 0.066666670143604279
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 41 0.79999999701976776 42 0.20000000298023224
		2 41 0.79999999701976776 42 0.20000000298023224
		2 41 0.79999999701976776 42 0.20000000298023224
		2 41 0.79999999701976776 42 0.20000000298023224
		2 40 0.72499999403953552 41 0.27500000596046448
		2 40 0.88333333283662796 41 0.11666666716337204
		2 40 0.72499999403953552 41 0.27500000596046448
		2 40 0.88333333283662796 41 0.11666666716337204
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		2 41 0.19999998807907104 42 0.80000001192092896
		3 40 0.040000021457672119 41 0.15999996662139893 42 0.80000001192092896
		2 41 0.19999998807907104 42 0.80000001192092896
		2 41 0.19999998807907104 42 0.80000001192092896
		2 40 0.65555554628372192 41 0.34444445371627808
		2 40 0.44333332777023315 41 0.55666667222976685
		2 40 0.44333332777023315 41 0.55666667222976685
		2 40 0.65555554628372192 41 0.34444445371627808
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 0 0.76177777349948883 40 0.23822222650051117
		2 0 0.76177777349948883 40 0.23822222650051117
		3 0 0.74977777153253555 40 0.18355555832386017 41 0.066666670143604279
		3 0 0.80222221463918686 40 0.13111111521720886 41 0.066666670143604279
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 33 0.7199999988079071 34 0.2800000011920929
		2 33 0.7199999988079071 34 0.2800000011920929
		2 33 0.7199999988079071 34 0.2800000011920929
		2 33 0.7199999988079071 34 0.2800000011920929
		2 32 0.72499999403953552 33 0.27500000596046448
		2 32 0.88333333283662796 33 0.11666666716337204
		2 32 0.72499999403953552 33 0.27500000596046448
		2 32 0.88333333283662796 33 0.11666666716337204
		2 33 0.050000011920928955 34 0.94999998807907104
		2 33 0.050000011920928955 34 0.94999998807907104
		2 33 0.050000011920928955 34 0.94999998807907104
		2 33 0.050000011920928955 34 0.94999998807907104
		2 33 0.27999997138977051 34 0.72000002861022949
		2 33 0.27999997138977051 34 0.72000002861022949
		2 33 0.27999997138977051 34 0.72000002861022949
		2 33 0.27999997138977051 34 0.72000002861022949
		3 32 0.65555554628372192 33 0.31111111864447594 34 0.033333335071802139
		3 32 0.44333332777023315 33 0.51666667312383652 34 0.039999999105930328
		3 32 0.44333332777023315 33 0.51666667312383652 34 0.039999999105930328
		3 32 0.65555554628372192 33 0.31111111864447594 34 0.033333335071802139
		2 0 0.69866666197776794 32 0.30133333802223206
		2 0 0.73866665363311768 32 0.26133334636688232
		2 0 0.79999999701976776 32 0.20000000298023224
		2 0 0.72266668081283569 32 0.27733331918716431
		1 32 1
		1 32 1
		2 32 0.93333332985639572 33 0.066666670143604279
		2 32 0.93333332985639572 33 0.066666670143604279
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 29 0.79999999701976776 30 0.20000000298023224
		2 29 0.75999957963602205 30 0.24000042036397795
		2 29 0.75999999046325684 30 0.24000000953674316
		2 29 0.72000005459482408 30 0.27999994540517587
		3 28 0.75730000436306 29 0.24194872379302979 30 0.00075127184391021729
		2 28 0.96666666492819786 29 0.033333335071802139
		3 28 0.75730000436306 29 0.22236013412475586 30 0.020339861512184143
		2 28 0.96666666492819786 29 0.033333335071802139
		1 30 1
		1 30 1
		1 30 1
		1 30 1
		1 30 1
		3 28 5.5593980314957894e-08 29 0.19999988858976403 30 0.80000005581625566
		3 28 0.040000011920923839 29 0.15999992847443423 30 0.80000005960464193
		3 28 0.040000021457672119 29 0.15999996662139893 30 0.80000001192092896
		2 28 0.77777830527888381 29 0.22222169472111619
		3 28 0.75730000436306 29 0.24269999038490847 30 5.2520315348944567e-09
		2 28 0.75730024994344047 29 0.24269975005655947
		2 28 0.77777863177988227 29 0.22222136822011773
		2 0 0.72933334112167358 28 0.27066665887832642
		2 0 0.80666667222976685 28 0.19333332777023315
		2 0 0.76133333146572113 28 0.23866666853427887
		2 0 0.71360000967979431 28 0.28639999032020569
		1 28 1
		1 28 1
		2 28 0.96666666492819786 29 0.033333335071802139
		2 28 0.96666666492819786 29 0.033333335071802139
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 20 0.12000000476837158 21 0.87999999523162842
		2 20 0.21333330869674683 21 0.78666669130325317
		2 20 0.12000000476837157 21 0.87999999523162842
		2 20 0.21333330869674683 21 0.78666669130325317
		2 20 0.72499999403953552 21 0.27500000596046448
		2 20 0.88333333283662796 21 0.11666666716337204
		2 20 0.72499999403953552 21 0.27500000596046448
		2 20 0.88333333283662796 21 0.11666666716337204
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		3 20 0.040000021457672119 21 0.23999994993209839 22 0.72000002861022949
		3 20 0.040000021457672119 21 0.23999994993209839 22 0.72000002861022949
		2 21 0.19999998807907104 22 0.80000001192092896
		2 21 0.19999998807907104 22 0.80000001192092896
		2 20 0.65555554628372192 21 0.34444445371627808
		2 20 0.44333332777023315 21 0.55666667222976685
		2 20 0.44333332777023315 21 0.55666667222976685
		2 20 0.65555554628372192 21 0.34444445371627808
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 0 0.76177777349948883 20 0.23822222650051117
		2 0 0.76177777349948883 20 0.23822222650051117
		3 0 0.74977777153253555 20 0.18355555832386017 21 0.066666670143604279
		3 0 0.80222221463918686 20 0.13111111521720886 21 0.066666670143604279
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 25 0.79999999701976776 26 0.20000000298023224
		2 25 0.79999999701976776 26 0.20000000298023224
		2 25 0.79999999701976776 26 0.20000000298023224
		2 25 0.79999999701976776 26 0.20000000298023224
		2 24 0.72499999403953552 25 0.27500000596046448
		2 24 0.88333333283662796 25 0.11666666716337204
		2 24 0.72499999403953552 25 0.27500000596046448
		2 24 0.88333333283662796 25 0.11666666716337204
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		2 25 0.19999998807907104 26 0.80000001192092896
		3 24 0.040000021457672119 25 0.15999996662139893 26 0.80000001192092896
		2 25 0.19999998807907104 26 0.80000001192092896
		2 25 0.19999998807907104 26 0.80000001192092896
		2 24 0.65555554628372192 25 0.34444445371627808
		2 24 0.44333332777023315 25 0.55666667222976685
		2 24 0.44333332777023315 25 0.55666667222976685
		2 24 0.65555554628372192 25 0.34444445371627808
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 0 0.76177777349948883 24 0.23822222650051117
		2 0 0.76177777349948883 24 0.23822222650051117
		3 0 0.74977777153253555 24 0.18355555832386017 25 0.066666670143604279
		3 0 0.80222221463918686 24 0.13111111521720886 25 0.066666670143604279
		1 0 1
		1 0 0.99999999999999989
		1 0 1
		1 0 1
		2 17 0.7199999988079071 18 0.2800000011920929
		2 17 0.7199999988079071 18 0.2800000011920929
		2 17 0.7199999988079071 18 0.2800000011920929
		2 17 0.7199999988079071 18 0.2800000011920929
		2 16 0.72499999403953552 17 0.27500000596046448
		2 16 0.88333333283662796 17 0.11666666716337204
		2 16 0.72499999403953552 17 0.27500000596046448
		2 16 0.88333333283662796 17 0.11666666716337204
		2 17 0.050000011920928955 18 0.94999998807907104
		2 17 0.050000011920928955 18 0.94999998807907104
		2 17 0.050000011920928955 18 0.94999998807907104
		2 17 0.050000011920928955 18 0.94999998807907104
		2 17 0.27999997138977051 18 0.72000002861022949
		2 17 0.27999997138977051 18 0.72000002861022949
		2 17 0.27999997138977051 18 0.72000002861022949
		2 17 0.27999997138977051 18 0.72000002861022949
		3 16 0.65555554628372192 17 0.31111111864447594 18 0.033333335071802139
		3 16 0.44333332777023315 17 0.51666667312383652 18 0.039999999105930328
		3 16 0.44333332777023315 17 0.51666667312383652 18 0.039999999105930328
		3 16 0.65555554628372192 17 0.31111111864447594 18 0.033333335071802139
		2 0 0.69866666197776794 16 0.30133333802223206
		2 0 0.73866665363311768 16 0.26133334636688232
		2 0 0.79999999701976776 16 0.20000000298023224
		2 0 0.72266668081283569 16 0.27733331918716431
		1 16 1
		1 16 1
		2 16 0.93333332985639572 17 0.066666670143604279
		2 16 0.93333332985639572 17 0.066666670143604279
		1 0 0.99999999999999989
		1 0 1
		1 0 1
		1 0 1
		2 13 0.79999999701976776 14 0.20000000298023224
		2 13 0.75999999046325684 14 0.24000000953674316
		2 13 0.75999999046325684 14 0.24000000953674316
		2 13 0.7199999988079071 14 0.2800000011920929
		3 12 0.75730000436306 13 0.24194872379302979 14 0.00075127184391021729
		2 12 0.96666666492819786 13 0.033333335071802139
		3 12 0.75730000436306 13 0.22236013412475586 14 0.020339861512184143
		2 12 0.96666666492819786 13 0.033333335071802139
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		2 13 0.19999998807907104 14 0.80000001192092896
		3 12 0.040000021457672119 13 0.15999996662139893 14 0.80000001192092896
		3 12 0.040000021457672119 13 0.15999996662139893 14 0.80000001192092896
		2 12 0.7777777761220932 13 0.2222222238779068
		2 12 0.75730000436306 13 0.24269999563694003
		2 12 0.75730000436306 13 0.24269999563694
		2 12 0.7777777761220932 13 0.2222222238779068
		2 0 0.72933334112167358 12 0.27066665887832642
		2 0 0.80666667222976685 12 0.19333332777023315
		2 0 0.76133333146572113 12 0.23866666853427887
		2 0 0.71360000967979431 12 0.28639999032020569
		1 12 1
		1 12 1
		2 12 0.96666666492819786 13 0.033333335071802139
		2 12 0.96666666492819786 13 0.033333335071802139
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr -s 44 ".pm";
	setAttr ".pm[0]" -type "matrix" 0 0 1 0 0.35042901427596568 0.93658929416984849 0 0
		 -0.93658929416984826 0.35042901427596568 0 0 -3.1326934206139931 -28.101761739851646 0 1;
	setAttr ".pm[1]" -type "matrix" 0 0 1 0 0.35042901427596568 0.93658929416984849 0 0
		 -0.93658929416984826 0.35042901427596568 0 0 -3.1326934206139931 -28.101761739851646 0 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 5.5511151231257802e-17 0 0 5.5511151231257802e-17 0.99999999999999956 0
		 0 -40.61616452291053 28.362101075114158 1;
	setAttr ".pm[3]" -type "matrix" -1.2246467991473535e-16 0 -1 0 -0.40706160934378782 0.91340070407157303 4.9850669693864014e-17 0
		 0.91340070407157259 0.40706160934378788 -1.1185932485801904e-16 0 3.8173922060847048 -29.436548905491147 -4.6749571462716884e-16 1;
	setAttr ".pm[4]" -type "matrix" 0.00071439938866000804 0.00030198798543538881 -0.99999969921833975 0
		 -0.38935792974823791 0.92108653368842941 -2.6183341519242499e-13 0 0.921086256642492 0.38935781263651364 0.00077560507338794368 0
		 -8.1802380158925274 -29.284128923577939 -0.014687416554214017 1;
	setAttr ".pm[5]" -type "matrix" 1 6.006669984116882e-17 2.4784861660990056e-16 0
		 -7.5623109795931573e-17 1 -3.3771924148261467e-10 0 -2.4665599426599158e-16 3.3771950005170742e-10 0.99999999999999956 0
		 -0.0087390961981208982 -19.025243301579021 -30.204173396459119 1;
	setAttr ".pm[6]" -type "matrix" -0.15619024184157021 -0.26456129356857866 -0.95163644859725305 0
		 -0.8611280839594575 0.50838806340856757 4.1633363423443351e-16 0 0.48380061117136391 0.81948087160653504 -0.30722641439369724 0
		 7.0122231455631709 -29.14002216148598 18.893190238810078 1;
	setAttr ".pm[7]" -type "matrix" -0.71345818707205777 -0.69497814953610637 -0.089346443506285636 0
		 -0.6977687998277029 0.7163230430378511 -3.6082248300317573e-16 0 0.064000916297032001 0.062343160654254409 -0.99600060895201126 0
		 14.834648662152187 -4.7268245201929684 31.0684581385879 1;
	setAttr ".pm[8]" -type "matrix" 1.0000000000000002 5.4178047914141337e-16 -2.3592239273284557e-16 0
		 -3.8857805861880479e-16 1 4.0245584642661934e-16 0 3.0531133177191815e-16 -1.9718161026153472e-16 0.99999999999999989 0
		 -5.005892691009703 -8.7797295932452375 -30.744157337706451 1;
	setAttr ".pm[9]" -type "matrix" -0.15619024184156996 -0.26456129356857844 -0.95163644859725283 0
		 0.86112808395945772 -0.50838806340856724 -4.7184478546569133e-16 0 -0.48380061117136325 -0.81948087160653527 0.30722641439369686 0
		 -7.0122418678902605 29.140065753545777 -18.893233612201978 1;
	setAttr ".pm[10]" -type "matrix" -0.7134581870720571 -0.69497814953610659 -0.089346443506286302 0
		 0.69776879982770335 -0.71632304303785066 6.2450045135165026e-16 0 -0.064000916297032653 -0.062343160654254992 0.99600060895201115 0
		 -14.834641223229065 4.726848076020949 -31.068499059244758 1;
	setAttr ".pm[11]" -type "matrix" 1 -7.6226918033577562e-17 4.1633363423443315e-17 0
		 -1.6622347094768265e-16 -1.0000000000000002 -6.0716709226696358e-16 0 1.3877787807814457e-16 2.1705380320248236e-16 -0.99999999999999989 0
		 5.0058900000000008 8.7797300000000558 30.744200000000035 1;
	setAttr ".pm[12]" -type "matrix" 0.73768509472681276 -0.48434481166850651 -0.47035178794992588 0
		 0.54884569849350973 0.83592368027540143 -1.3625217898383106e-08 0 0.39317820420652067 -0.25815054554392791 0.88247900574025384 0
		 -30.91228506009346 -8.5276639114510537 -4.1743932089057889 1;
	setAttr ".pm[13]" -type "matrix" 0.20245635100408463 0.27443347095951887 -0.94005196449729367 0
		 -0.85878113580262194 0.51109400877544697 -0.035747377294032677 0 0.47064465016365481 0.81453617734938788 0.339152515929598 0
		 10.482329472195671 -34.819959418447027 16.068611994002904 1;
	setAttr ".pm[14]" -type "matrix" 0.12676614480172005 0.27463918669338605 -0.95315458434846989 0
		 -0.94873263112786654 0.31405875131505223 -0.035686066687510211 0 0.28954574623935414 0.90881264177762444 0.30037117534788471 0
		 6.5901299990665168 -33.601319440081284 17.302323504192522 1;
	setAttr ".pm[15]" -type "matrix" 0.12676614480172005 0.36639012197273163 -0.92178556240207832 0
		 -0.94873263112786654 0.31604248849346711 -0.0048518140990735743 0 0.28954574623935414 0.87514308772203797 0.38766975229830836 0
		 -11.861627688050811 -35.130122169919353 13.93892331152797 1;
	setAttr ".pm[16]" -type "matrix" 0.75593515533247158 -0.58127613074751749 -0.30113136793709644 0
		 0.60957078185324232 0.79273164558432174 -1.3877787807814454e-16 0 0.2387163648418324 -0.18356088339395205 0.95358266513414169 0
		 -29.940101667694023 -7.3211390293866092 -3.1000281744942528 1;
	setAttr ".pm[17]" -type "matrix" 0.32392599830765345 0.6982107720546592 -0.63841496333280523 0
		 -0.87628048243916212 0.47580815975036717 0.075756921869609264 0 0.35665734776754443 0.53489093552032252 0.7659551053303415 0
		 13.099379865664666 -36.025764514912417 4.3801668544970083 1;
	setAttr ".pm[18]" -type "matrix" 0.20415884053327205 0.79416239333583294 -0.57238558755720914 0
		 -0.95136604209079279 0.29875069712573632 0.075170971281380547 0 0.2306985517696406 0.52920139264554833 0.81653172885895986 0
		 7.8930848961185767 -35.4009412471978 1.7915897696529273 1;
	setAttr ".pm[19]" -type "matrix" 0.20415884053327207 0.65483649699505453 -0.72767323025885444 0
		 -0.95136604209079279 0.30789524442624527 0.010157382349911337 0 0.23069855176964066 0.69020988160337748 0.68584874247055483 0
		 -10.965124973909969 -34.217357299872944 9.2525074711187116 1;
	setAttr ".pm[20]" -type "matrix" 0.82926977867486862 -0.5056976386735762 0.23786872937925901 0
		 0.52064144790425093 0.85377542874233914 -8.1878948066105255e-16 0 -0.20308647641017186 0.12384431967516252 0.97129731163197186 0
		 -26.904817499068294 -12.350290377520322 -8.9637699117746159 1;
	setAttr ".pm[21]" -type "matrix" 0.35966874841181673 0.5495957981691425 0.75404432896925933 0
		 -0.85360458821967877 0.52016700896076917 0.028026590215716678 0 -0.37682568700420349 -0.65373598755432627 0.65622531206147461 0
		 16.161122082039864 -25.605012444441137 -19.872676685917934 1;
	setAttr ".pm[22]" -type "matrix" 0.21811448110435475 0.59271333386892111 0.77531733953689375 0
		 -0.94941979214917138 0.31275915581072439 0.027995869909451451 0 -0.22589407121038402 -0.74220793199113111 0.63095107122616567 0
		 9.5463917620549896 -23.484811171742574 -20.521233027479884 1;
	setAttr ".pm[23]" -type "matrix" 0.2181144811043548 0.64987176729799589 0.72807469342201248 0
		 -0.94941979214917138 0.31398199169693725 0.0041673931238106181 0 -0.22589407121038405 -0.69215749288655648 0.6854851374267672 0
		 -8.3516433836928066 -24.975182610308931 -18.678801201422395 1;
	setAttr ".pm[24]" -type "matrix" 0.59074497784125912 -0.32806119054261029 0.73715414020074232 0
		 0.48549538776236756 0.87423922839316048 -3.0531133177191805e-16 0 -0.64444906673592028 0.35788493513739428 0.67572462851734549 0
		 -22.851878085893336 -15.798856494196521 -14.428166956358004 1;
	setAttr ".pm[25]" -type "matrix" 0.20327143626957836 0.23827720596313384 0.94968663058679814 0
		 -0.85190682556496955 0.5211464222646105 0.051586501302311481 0 -0.48263390240711418 -0.81953058495653408 0.30892415989702315 0
		 17.671771613400814 -23.219671277485553 -21.503395720438899 1;
	setAttr ".pm[26]" -type "matrix" 0.11924891108882385 0.21861222083617562 0.96849800934498853 0
		 -0.95466850945545412 0.29320625183008564 0.051362738846898265 0 -0.27274114881739442 -0.93071950166998652 0.24366672926959132 0
		 10.806136846782286 -19.900845453186854 -22.625934800228762 1;
	setAttr ".pm[27]" -type "matrix" 0.11924891108882386 0.3558930088240147 0.92688719026336752 0
		 -0.95466850945545401 0.29754748435692852 0.0085750572572821405 0 -0.27274114881739447 -0.88589257860253789 0.37524206176642122 0
		 -7.3230382190946397 -22.953579144815169 -19.52203318762 1;
	setAttr ".pm[28]" -type "matrix" 0.73768509472681321 -0.48434481166850629 -0.47035178794992583 0
		 -0.54884569849350962 -0.83592368027540132 1.3625217260004869e-08 0 -0.39317820420652055 0.25815054554392841 -0.88247900574025406 0
		 30.912323226629624 8.5276976734900582 4.1743520792965692 1;
	setAttr ".pm[29]" -type "matrix" 0.20242607984005828 0.27420251403714152 -0.94012587641033352 0
		 0.85878130261470997 -0.51108692079776696 0.035844576561019047 0 -0.47065736632923105 -0.814618401882236 -0.33893731401966276 0
		 -10.482753001941344 34.816076247993493 -16.076811987897159 1;
	setAttr ".pm[30]" -type "matrix" 0.12678510637979137 0.27440440318820597 -0.95321968103432986 0
		 0.9487325339481425 -0.31404802310497359 0.035782931855767662 0 -0.28953776235337847 -0.90888726621885407 -0.30015299678100138 0
		 -6.5898384204435034 33.597108496265825 -17.310369374861281 1;
	setAttr ".pm[31]" -type "matrix" 0.1267851063797914 0.36616281608444157 -0.92187327161458399 0
		 0.9487325339481425 -0.31604126916423186 0.004949263924874491 0 -0.28953776235337847 -0.87523865791118516 -0.38745990227277105 0
		 11.861925660367485 35.126718793031998 -13.947346794965753 1;
	setAttr ".pm[32]" -type "matrix" 0.75593515533247169 -0.58127613074751694 -0.30113136793709661 0
		 -0.60957078185324209 -0.79273164558432196 -4.9960036108132034e-16 0 -0.23871636484183217 0.18356088339395257 -0.95358266513414147 0
		 29.940128589019267 7.3211060004133381 3.1000144332249366 1;
	setAttr ".pm[33]" -type "matrix" 0.32378051063144392 0.69712902572127899 -0.63966968228308407 0
		 0.87627845840721375 -0.47591311242512679 -0.075118391578269758 0 -0.35679440055404316 -0.53620689189782789 -0.76497053852717212 0
		 -13.101256717585278 36.017922037200464 -4.4389983928896868 1;
	setAttr ".pm[34]" -type "matrix" 0.20425020141803832 0.79317495897924339 -0.57372061115927031 0
		 0.95136723745457197 -0.29890435461139114 -0.074542379170540365 0 -0.23061273754662315 -0.53059369694958081 -0.81565194417633102 0
		 -7.8919222886738165 35.397560931788469 -1.8508704893824166 1;
	setAttr ".pm[35]" -type "matrix" 0.20425020141803824 0.65358858986206436 -0.72876869473297845 0
		 0.95136723745457186 -0.30791221118993267 -0.0095105046229501666 0 -0.23061273754662312 -0.69138413736666282 -0.68469390232351801 0
		 10.966297302208627 34.201466056854819 -9.3097352355190015 1;
	setAttr ".pm[36]" -type "matrix" 0.82926977867486884 -0.50569763867357687 0.23786872937925785 0
		 -0.52064144790425093 -0.85377542874233925 -7.2164496600635146e-16 0 0.20308647641017161 -0.12384431967516066 -0.97129731163197253 0
		 26.904765690850653 12.3502779304897 8.9637561953784086 1;
	setAttr ".pm[37]" -type "matrix" 0.35961497906882978 0.54918341230501611 0.75437036426303461 0
		 0.8536048962484778 -0.52015457050081648 -0.028247192563795331 0 0.37687630322156124 0.65409235008225641 -0.65584102466521554 0
		 -16.162553144371774 25.594235143747571 19.885413756658782 1;
	setAttr ".pm[38]" -type "matrix" 0.21815205178776023 0.59228944549102847 0.77563064345132748 0
		 0.94941956676296246 -0.3127400579176226 -0.028215995841194677 0 0.2258587358248928 0.74255428685962865 -0.63055607404731973 0
		 -9.5454577911868377 23.47358213272279 20.533627931593692 1;
	setAttr ".pm[39]" -type "matrix" 0.21815205178776015 0.64947289162824962 0.72841927853457455 0
		 0.94941956676296235 -0.31397966299599578 -0.00438833368708291 0 0.22585873582489277 0.6925328398458519 -0.68511757909618709 0
		 8.352599073983459 24.964923172399057 18.692012874215234 1;
	setAttr ".pm[40]" -type "matrix" 0.59074497784125923 -0.32806119054261007 0.73715414020074232 0
		 -0.48549538776236767 -0.87423922839316026 4.9960036108132025e-16 0 0.64444906673591995 -0.35788493513739433 -0.67572462851734527 0
		 22.851882842896284 15.79889786400247 14.428149607857584 1;
	setAttr ".pm[41]" -type "matrix" 0.20302215128791742 0.23653329243462914 0.95017577724148505 0
		 0.85190931176922813 -0.52106998353535527 -0.052312491618579447 0 0.4827344307249124 0.82008418703721997 -0.30729366339740216 0
		 -17.677003793870647 23.180623492395696 21.54110285007885 1;
	setAttr ".pm[42]" -type "matrix" 0.11942568996705057 0.21683225189355379 0.9688762971167495 0
		 0.95466685166148202 -0.2930846479366877 -0.052082544893471111 0 0.27266959294106569 0.93117407807702457 -0.24200439955247766 0
		 -10.802365359561524 19.859370207860938 22.661190592580517 1;
	setAttr ".pm[43]" -type "matrix" 0.99140166578152633 0.049277949028401977 -0.12122054621708506 0
		 -0.04676352758141851 0.99862946585139412 0.023502391825101873 0 0.12221255898538455 -0.017631610048798981 0.99234732667213355 0
		 28.737898752615283 1.0665723077032172 11.60165693115435 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 44 ".ma";
	setAttr -s 44 ".dpf[0:43]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 44 ".lw";
	setAttr -s 44 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 44 ".ifcl";
	setAttr -s 44 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "68CD501F-4B33-EAFF-20E9-959976025682";
	setAttr -s 44 ".wm";
	setAttr -s 44 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0.029577255787594132 0 0 27.417595860271472
		 6.9136255462508709 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.11560398917423303 0.69759280220412534 0.11560398917423303 0.69759280220412534 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 37.664029303935067 7.3274719625260332e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.125907412242242 -0.69580695853265373 -0.125907412242242 0.69580695853265373 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -2.3111159332646827e-33 -4.4408920985006252e-16
		 5.1317082433770134e-49 0 -1.1230074590491119 1.5131678912708537 9.5836170760142318e-35 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.030598045423122052 0.99953177018856409 1.8735899193795873e-18 6.1203669150375647e-17 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -8.5270806800090523e-18 -4.4362164766317824e-16
		 4.8502205055634708e-17 0 11.430952809653641 5.6843418860808015e-14 -1.4012130534356726e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00015443396110745048 0.00035572599250038942 0.0096500283950594363 0.99995336219302988 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 12.232787901068221 -2.6645352591003757e-14
		 8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.1404032233384877 0.69274752423914787 0.14051216305431072 0.6932850312609472 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 4.5796699765787697e-16 -3.7470027081099028e-16
		 1.3877787807814367e-17 0 7.9255410276406266 0.16345662818327611 -11.359659386000704 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.10263880758021184 -0.11733003528560985 -0.30957209655372547 0.93801069025556449 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 6.6613381477509383e-16 7.7715611723760978e-16
		 -2.7755575615628889e-16 0 8.2633159125541233 7.1054273576010019e-15 3.5527136788005009e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.43391264683396613 -0.34089338642726785 0.11026377314266556 0.82665193058507647 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.1045863974499817 5.3290705182007514e-15
		 2.886579864025407e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.37623775024647099 0.92544338549988026 0.016841430181215238 0.041425375718820184 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -1.9428902930940242e-16 3.8857805861880479e-16
		 -1.5265566588595907e-16 0 7.9093241098159695 0.1566430430193293 11.371101140844441 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.11675337278499709 0.10213435063314949 0.93812522431135992 0.30960989628051772 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 -6.1062266354383629e-16 5.4123372450476391e-16
		 5.5511151231257673e-17 0 -8.2633480483245023 -2.108514898679914e-06 -4.7404741351897428e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4339126468339663 -0.34089338642726746 0.1102637731426656 0.82665193058507658 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.1045833250548345 1.8734564950939614e-05
		 1.330581380187823e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.37623775024647099 0.92544338549988026 0.016841430181215322 0.041425375718820392 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 3.8857805861880469e-16 -9.0205620750794006e-17
		 2.2204460492503126e-16 0 -7.4609980776505633 -0.75646265961340475 16.709768852198341 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.38793782356926015 -0.76464379878431532 0.05724841311972062 0.5114163912315588 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0.090002825415114465 -0.012034076950254909
		 0.00018483280086013343 0 7.8066367582402547 -1.2040329197774982 1.090454253588645 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.071729876525447336 -0.31181723150177032 -0.68430632159837812 0.65524781355813211 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -1.7759018898385835e-30 9.5917031468888204e-16
		 9.824663021584895e-15 0 11.586419525860707 -1.5389510541578248e-15 -2.0483597305027569e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.018606348718308251 -0.0085277478380956055 -0.10761761228538123 0.99398165517788906 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 18.451757687117333 -5.381684952356435e-15
		 3.8741119790425309e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.048876907144708305 0 0 0.99880480973409791 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 -3.1918911957973251e-16 2.4980018054066022e-16
		 -3.9866749848815782e-32 0 -2.9073730258190373 -2.5031870838542289 17.443656312342796 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.39147942203990738 -0.7052017768609552 0.087603685031069967 0.58460235237332814 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -0.20058462138234837 0.023462015757098158
		 0.00085716159667089276 0 7.9081820347167655 -0.74003707844871169 0.48212778460711392 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.058394263565965387 -0.27810816723625748 -0.72814952991866722 0.62373409348720255 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 1.3192014581350151e-32 6.7747521421070373e-16
		 -3.1244800565033806e-15 0 11.797207177249719 3.0625557519547663e-15 -4.9740923805242516e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.038175605116112572 0.016497797936670645 -0.093218724368761899 0.99477671628578057 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 -2.4365057377701372e-16 1.7904766458390868e-17
		 1.7441575120291516e-17 0 18.858209870028549 -5.2839913001851061e-15 -1.2491666035507639e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.10655874160876709 0 0 0.99430640880301879 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -4.163336342344337e-16 -1.1102230246251568e-16
		 -1.6653345369377346e-16 0 1.0016891439282309 -3.4342472406390137 18.198039931256947 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.27007044939454761 -0.55509241363416018 0.074459168927883318 0.7831923115379763 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 -0.069167463789947758 0.0093604734172682141
		 0.00010525509917599879 0 6.292179194193972 -0.1839509755420958 -1.1112923411594589 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.06400818648313579 0.26416684666008228 -0.68043331348413749 0.6805360645034223 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 -5.8157414170883784e-31 -3.367395023175323e-16
		 4.4464487791184169e-15 0 12.520927654243955 -3.3541192093689739e-15 -8.5643953358770178e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.014988483139458258 0.0069410133421172531 -0.11380444397987496 0.99336585215991502 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 -2.4387099557862161e-16 1.8373897931234907e-17
		 -1.3406293178160711e-17 0 17.898035145747794 -2.6234756848788938e-15 2.0948883931397827e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.037992197535254894 0 0 0.99927803584710206 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 -1.4571677198205175e-16 -8.3266726846886728e-17
		 -4.1633363423443358e-17 0 4.9613987561898441 -4.5374770338477006 18.952423550171098 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.15194181420054123 -0.32914527946953315 0.069321725649822141 0.92939311835912675 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 -0.12960413074840421 0.019013810346242287
		 0.00033256072582965173 0 6.5666759624010389 0.19477964319604801 -0.55038058702846371 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.038814221032833898 0.14789500583731385 -0.68338487219058397 0.71386668219987304 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 9.2258998183422184e-33 4.5858925122700791e-17
		 -3.1491787412622698e-16 0 12.855133040397963 1.4884164394743406e-15 -3.5527136788004777e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.030911450157983876 0.014056842542304311 -0.12337375848838016 0.99177911005592478 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 -2.41603264420393e-16 3.7069918736555715e-17
		 -1.5622901547060624e-17 0 18.129175065876922 -3.0495279894105348e-15 9.1241559213115186e-17 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.072239729515878398 0 0 0.9973872976329069 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 -3.8857805861880474e-16 3.3306690738754701e-16
		 2.2204460492503123e-16 0 -7.4609527442580301 -0.75642712227402598 -16.709800000000005 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.76464379878431521 0.38793782356926026 -0.5114163912315588 0.057248413119720343 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0.090248088907550844 -0.012066896067836346
		 0.00018384399956783713 0 -7.8066269394908758 1.2040974844651648 -1.0905256785238899 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.07172987652544735 -0.3118172315017701 -0.68430632159837812 0.65524781355813222 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 1.3139908714338746e-21 4.7953223857006735e-16
		 4.9123600696766017e-15 0 -11.58639690757874 6.9534016020611489e-06 -1.153180239299445e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.01860634871831119 -0.00852774783809589 -0.10761761228538123 0.99398165517788906 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 -18.451764080810985 -1.3844533768292422e-06
		 5.0707325893739608e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.048876907144713357 0 0 0.99880480973409769 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 -4.4408920985006262e-16 3.3306690738754691e-16
		 -1.1102230246251573e-16 0 -2.9073758753317112 -2.5031964520022463 -17.443700000000003 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.7052017768609552 0.39147942203990743 -0.58460235237332814 0.087603685031069634 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 -0.19887780926036319 0.023262533449062817
		 0.00086985505010150075 0 -7.9081847244803569 0.73997089533239624 -0.48218911233734829 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.058394263565965193 -0.27810816723625742 -0.72814952991866733 0.62373409348720255 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 2.7543379308388911e-21 -1.1415492160594094e-15
		 5.2854952418561791e-15 0 -11.79723542233139 6.4999332280990529e-06 6.8684744682911969e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0381756051161126 0.016497797936670656 -0.093218724368761621 0.99477671628578057 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 -2.4365057377701372e-16 1.7904766458390868e-17
		 1.7441575120291516e-17 0 -18.858219590882442 2.324820474086664e-05 1.4848213139018185e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.10655874160876734 0 0 0.99430640880301879 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 4.9960036108132034e-16 -2.2204460492503126e-16
		 -5.5466782398352371e-32 0 1.0016800349053696 -3.4342839786293453 -18.198000000000004 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.55509241363416029 0.27007044939454838 -0.78319231153797586 0.074459168927882791 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 -0.069712640126823489 0.0094342992341407469
		 0.00010352662699820391 0 -6.292225447524455 0.1838813372391872 1.1112884109180792 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.064008186483134846 0.26416684666008228 -0.68043331348413749 0.68053606450342241 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 8.336290450097849e-24 -1.6836582347931483e-16
		 2.2232306240343557e-15 0 -12.52094507822973 1.7677714026831381e-05 6.5037979908311172e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.01498848313945826 0.0069410133421171118 -0.11380444397987496 0.99336585215991502 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 -2.4387099557862161e-16 1.8373897931234907e-17
		 -1.3406293178160711e-17 0 -17.8980568651703 3.9379984855258954e-06 3.6533594993670704e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.03799219753525352 0 0 0.99927803584710206 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 -2.2204460492503131e-16 3.0814879110195774e-33
		 2.7755575615628914e-17 0 4.961412223424313 -4.5374409910477951 -18.952399999999997 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.3291452794695332 0.15194181420054118 -0.92939311835912686 0.069321725649822238 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 -0.13143552158117608 0.019282293213905632
		 0.00031944053959662139 0 -6.5666326617175201 -0.19471801776649578 0.55039484876112965 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.038814221032834217 0.14789500583731402 -0.68338487219058419 0.71386668219987282 1
		 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 -4.1773280918943472e-21 2.7521301696966561e-16
		 -1.8894865050146915e-15 0 -12.855158596173656 -2.7577141292312035e-05 -7.7859655007728179e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.03091145015798033 0.014056842542303976 -0.12337375848838023 0.9917791100559249 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999967 0.99999999999999989 -0.08871431103620786
		 -2.0775765876690748 -1.7932416074700441 0 -18.129123362259612 1.8688831136870476e-05
		 4.2802478709802472e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.072239729515874082 0 0 0.99738729763290712 1
		 1 1 yes;
	setAttr -s 44 ".m";
	setAttr -s 44 ".p";
	setAttr ".bp" yes;
createNode blendShape -n "blendShape1";
	rename -uid "F016E2DE-46CC-810C-D750-6CB9B6BC6B4A";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -av ".en";
	setAttr ".it[0].itg[0].iti[6000].ipt" -type "pointArray" 669 0 -23.797120446441113
		 0 1 0 -26.91125952648872 0 1 0 -23.873415345427929 0 1 0 -28.543272608992993 0 1 0
		 -31.697974378344952 0 1 0 -22.32659851956123 0 1 0 -21.869757050750195 0 1 -5.366286166857662e-19
		 -21.869747514007031 0 1 -5.4724761155529926e-19 -22.32659851956123 0 1 0 -24.441074246642529
		 0 1 0 -26.712919587371289 0 1 0 -24.441072339293896 0 1 0 -21.869751328704297 0 1 0
		 -22.32659851956123 0 1 0 -30.73681339538026 0 1 0 -33.375667685744702 0 1 0 -26.028606766936718
		 0 1 0 -30.790839982917237 0 1 0 -28.33379280018562 0 1 0 -38.464510792968213 0 1 0
		 -40.082077378508984 0 1 0 -28.700730199096142 0 1 0 -27.993079060790478 0 1 0 -27.861050004241406
		 0 1 0 -48.426720971343457 0 1 0 -34.202936643836438 0 1 0 -32.068751508471905 0 1 0
		 -35.801451558349072 0 1 0 -28.908927792785107 0 1 0 -24.400592679259717 0 1 0 -30.661075059316232
		 0 1 0 -25.832650059935986 0 1 0 -35.617594355819165 0 1 0 -36.585953110930859 0 1 0
		 -33.259627575156628 0 1 0 -23.484209412810742 0 1 0 -23.484209412810742 0 1 0 -22.32659851956123
		 0 1 0 -21.869757050750195 0 1 0 -24.441072339293896 0 1 0 -21.869751328704297 0 1 0
		 -22.32659851956123 0 1 0 -30.73681339538026 0 1 0 -26.028606766936718 0 1 0 -28.33379280018562
		 0 1 0 -28.700730199096142 0 1 0 -27.861050004241406 0 1 0 -32.068751508471905 0 1 0
		 -35.801451558349072 0 1 0 -24.400592679259717 0 1 0 -25.832650059935986 0 1 0 -33.259627575156628
		 0 1 0 -23.484209412810742 0 1 0 -45.217259759185254 0 1 0 -45.217259759185254 0 1 0
		 -28.080475205657422 0 1 0 -28.080475205657422 0 1 0 -33.143675500628888 0 1 0 -33.143675500628888
		 0 1 0 -41.843367928740918 0 1 0 -41.843367928740918 0 1 0 -49.241752022979199 0 1 0
		 -49.241752022979199 0 1 0 -54.110818261382519 0 1 0 -54.110818261382519 0 1 0 -40.632340783355176
		 0 1 0 -40.632340783355176 0 1 0 -33.242129260775982 0 1 0 -33.242129260775982 0 1 0
		 -32.470773572204052 0 1 0 -32.470773572204052 0 1 2.0011663763146564e-31 -32.47078090357536
		 0 1 0 -23.143991822478711 0 1 0 -23.007071847197949 0 1 0 -23.126058930633008 0 1 0
		 -23.264472359893261 0 1 0 -23.420046204802929 0 1 0 -26.338825101134717 0 1 0 -26.117179269072949
		 0 1 0 -26.092168206450879 0 1 0 -29.228510731933056 0 1 0 -29.431426877257763 0 1 0
		 -23.873415345427929 0 1 0 -23.992276543853222 0 1 0 -25.587850922820508 0 1 0 -25.342306489226758
		 0 1 0 -26.554117554900586 0 1 0 -26.799024457213818 0 1 0 -23.990898484466015 0 1 0
		 -23.850166672942578 0 1 0 -35.734290236709057 0 1 0 -35.543226355788647 0 1 0 -35.475332373855053
		 0 1 0 -41.069051141021191 0 1 0 -41.27766167568916 0 1 0 -27.89308440136665 0 1 0
		 -27.627724045989453 0 1 0 -33.327158922431408 0 1 0 -33.561774367568432 0 1 0 -30.199836844680249
		 0 1 0 -30.140765303847729 0 1 0 -35.158076161620556 0 1 0 -35.069609994170605 0 1 0
		 -40.011472100493847 0 1 0 -39.868902558562695 0 1 0 -39.883766526458203 0 1 0 -40.001217240569531
		 0 1 0 -40.113824242827832 0 1 0 -38.492286080596386 0 1 0 -38.35842167782539 0 1 0
		 -28.008227223632275 0 1 0 -27.774186963317334 0 1 0 -30.918034309623181 0 1 0 -31.167411321875989
		 0 1 0 -40.507335061309277 0 1 0 -40.376486176726758 0 1 0 -40.620172852752148 0 1 0
		 -35.854415530440747 0 1 0 -36.102828854796826 0 1 0 -38.918829793212353 0 1 0 -39.165323609588086
		 0 1 0 -35.324335927245556 0 1 0 -35.126344079253613 0 1 0 -30.219474010753096 0 1 0
		 -30.050950879332959 0 1 0 -30.600228542563855 0 1 0 -30.398228282210766 0 1 0 -30.348338240859448
		 0 1 0 -34.835778588530957 0 1 0 -35.058893317458569 0 1 0 -26.233003014800488 0 1 0
		 -25.966402882811963 0 1 0 -29.49896728443855 0 1 0 -29.752861613509594 0 1 0 -25.828610772368847
		 0 1 0 -25.797816151854931 0 1 0 -24.686723107573926 0 1 0 -24.785713547942578 0 1 0
		 -23.126058930633008 0 1 0 -23.006996506926953 0 1 0 -23.143991822478711 0 1 0 -23.873415345427929
		 0 1 0 -23.994985932586133 0 1 0 -26.092168206450879 0 1 0 -26.115856522796093 0 1 0
		 -26.338825101134717 0 1 0 -26.553879136321484 0 1 0 -26.799026364562451 0 1 0 -23.850166672942578
		 0 1 0 -23.990898484466015 0 1 0 -25.342306489226758 0 1 0 -25.587850922820508 0 1 0
		 -35.475332373855053 0 1 0 -35.53818880963081 0 1 0 -35.734290236709057 0 1 0 -30.140765303847729
		 0 1 0 -30.199836844680249 0 1 0 -33.329368108985364 0 1 0 -33.561774367568432 0 1 0
		 -27.627724045989453 0 1 0 -27.89308440136665 0 1 0 -35.069609994170605 0 1 0 -35.158076161620556
		 0 1 0 -39.868902558562695 0 1 0 -40.011472100493847 0 1 0 -24.686723107573926 0 1 0
		 -24.785713547942578 0 1 0 -30.214763926291763 0 1 0 -30.049189059854108 0 1 0 -28.008227223632275
		 0 1 0 -27.774186963317334 0 1 0 -30.909259552237927 0 1 0 -31.167411321875989 0 1 0
		 -40.113824242827832 0 1 0 -40.000136250731885 0 1 0 -39.883766526458203 0 1 0 -40.620172852752148
		 0 1 0 -40.37105595516914 0 1 0 -40.507335061309277 0 1 0 -35.854415530440747 0 1 0
		 -36.102828854796826 0 1 0 -38.919049615142285 0 1 0 -39.165323609588086 0 1 0 -35.324335927245556
		 0 1 0 -35.126344079253613 0 1 0 -38.492238396880566 0 1 0 -38.358399743316113 0 1 0
		 -30.348338240859448 0 1 0 -30.395685548064648 0 1 0 -30.600228542563855 0 1 0 -25.797816151854931
		 0 1 0 -25.828610772368847 0 1 0 -29.498485440490185 0 1 0 -29.752861613509594 0 1 0
		 -25.966402882811963 0 1 0 -26.233003014800488 0 1 0 -48.265341157195508 0 1 0 -48.004962319610058
		 0 1 0 -48.004962319610058 0 1 0 -48.265341157195508 0 1 0 -56.826545113799511 0 1 0
		 -56.770686501738965 0 1 0 -56.770686501738965 0 1 0 -56.826545113799511 0 1 0 -28.26888310360664
		 0 1 0 -35.424024457213818 0 1 0 -39.238533848998486 0 1 0 -39.37028395581001 0 1 0
		 -47.111861581084668 0 1 0 -39.37028395581001 0 1 0 -39.238533848998486 0 1 0 -35.424024457213818
		 0 1 0 -28.26888310360664 0 1 0 -22.720160836455761 0 1 0 -22.681278580901562 0 1 0
		 -22.811224335906445 0 1 0 -22.809614533660351 0 1 0 -22.720465058562695 0 1 0 -22.693056458709179
		 0 1 0 -18.151431435820996 0 1 0 -18.133447999236523 0 1 0 -18.029703492400586 0 1 0
		 -17.936394089934765 0 1 0 -18.152222985503613 0 1 0 -18.17019211697334 0 1 0 -18.22792851376289
		 0 1 0 -18.354850167510449 0 1 0 -18.510959023711621 0 1 0 -18.291165704009472 0 1 0
		 -18.334369057891308 0 1 0 -18.494416589019238 0 1 0 -23.212973946807324 0 1 0 -23.101045960662304
		 0 1 0 -23.027713174102246 0 1 0 -23.162378663299023 0 1 0 -23.16405140805 0 1 0 -23.242317551848828
		 0 1 0 -17.828396195647656 0 1 0 -17.706621522185742 0 1 0 -17.345286721465527 0 1 0
		 -17.348367089507519 0 1 0 -12.716681832549511 0 1 0 -12.758275384185254 0 1 0 -8.7236131374811521
		 0 1 0 -8.5463002865290036 0 1 0 -8.6359094326471677 0 1 0 -8.6368707363581052 0 1 0
		 -8.6333059017633786 0 1 0 -8.5181745235895505 0 1 0 -12.969058388945996 0 1 0 -12.88386284756416
		 0 1 0 -14.64930474209541 0 1 0 -14.537614220855176 0 1 0 -14.880099648711621 0 1 0
		 -14.880683297393261 0 1 0 -8.2077706997370115 0 1 0 -8.3271650021051755 0 1 0 -12.079633111236035
		 0 1 0 -12.093890542266308 0 1 0 -7.8351911251520505 0 1 0 -7.9618638699030271 0 1 0
		 -7.9730943386530271 0 1 0 -8.2144941036676755 0 1 0 -8.3214410488581052 0 1 0 -7.9492314999079099
		 0 1 0 -7.9521726314997068 0 1 0 -7.8209413235163083 0 1 0 -11.856881493804394 0 1 0
		 -11.734361047027051 0 1 0 -27.145904416320263 0 1 0 -27.276284569976269 0 1 0 -28.559834832427441
		 0 1 0 -28.564828747985302 0 1 0 -28.424089068648755 0 1 0 -28.41379391598457 0 1 0
		 -34.622724646804272 0 1 0 -34.509362811324536 0 1 0 -28.409498090026318 0 1 0 -28.416919106719433
		 0 1 0 -28.563599461791455 0 1 0 -28.552008980987011 0 1 0 -35.801169270751416 0 1 0
		 -35.75045859265083 0 1 0 -28.010067815062939 0 1 0 -27.866483563659131 0 1 0 -24.564396256682812
		 0 1 0 -24.441083306548535 0 1 0 -22.869182938811718 0 1 0 -22.889234894988476 0 1 0
		 -22.80721318173164 0 1 0 -22.761255616424023 0 1 0 -23.595526093718945 0 1 0 -23.484216088530957
		 0 1 0 -23.047400826690136 0 1 0 -22.89674126553291 0 1 0 -23.024971360442578 0 1 0
		 -23.141754502532422 0 1 0 -22.805387849090039 0 1 0 -22.762221688506543 0 1 0 -23.059502953765332
		 0 1 0 -22.898961419341504 0 1 0 -27.410385483977734 0 1 0 -27.55956446575874 0 1 0
		 -26.712917680022656 0 1 0 -26.82542025494331 0 1 0 -22.915744179961621 0 1 0 -23.073333138701855
		 0 1 0 -22.761803979155957 0 1 0 -22.809127206084668 0 1 0 -22.693354958770215 0 1 0
		 -22.720448846099316 0 1 -4.4820485384696415e-19 -18.261203164336621 0 1 -4.4611918909795684e-19
		 -18.181128854033886 0 1 -4.537915931957933e-19 -18.473881119964062 0 1 -4.498266432743315e-19
		 -18.332222337005078 0 1 0 -23.258826607940136 0 1 -5.6837543496578314e-19 -23.163556451079785
		 0 1 0 -39.170005673644482 0 1 0 -39.117657536742627 0 1 0 -39.169991368529736 0 1 2.404053594628419e-31
		 -39.007999772307812 0 1 0 -18.014656419036328 0 1 0 -18.132839555022656 0 1 0 -18.148590440032422
		 0 1 0 -17.789303178069531 0 1 0 -18.152222985503613 0 1 0 -18.17019211697334 0 1 0
		 -18.22792851376289 0 1 0 -18.291165704009472 0 1 0 -18.510959023711621 0 1 0 -18.357237214324414
		 0 1 0 -18.334369057891308 0 1 0 -18.494416589019238 0 1 0 -28.41379391598457 0 1 0
		 -28.42750560688728 0 1 0 -28.568750733611523 0 1 0 -28.559834832427441 0 1 0 -34.623754138228833
		 0 1 0 -34.509362811324536 0 1 0 -28.552008980987011 0 1 0 -28.562571877715527 0 1 0
		 -28.42014681744331 0 1 0 -28.409498090026318 0 1 0 -35.799319142577588 0 1 0 -35.75045859265083
		 0 1 0 -8.751151437041699 0 1 0 -8.6359094326471677 0 1 0 -8.5463002865290036 0 1 0
		 -12.715865487334668 0 1 0 -12.757096642730176 0 1 0 -8.5181745235895505 0 1 0 -8.6330674831842771
		 0 1 0 -8.6368707363581052 0 1 0 -12.969327325103222 0 1 0 -12.883687371489941 0 1 0
		 -22.809614533660351 0 1 0 -22.82175290035957 0 1 0 -22.685181016204297 0 1 0 -22.720160836455761
		 0 1 0 -23.024971360442578 0 1 0 -23.09842526364082 0 1 0 -23.211127633330761 0 1 0
		 -23.162406319854199 0 1 0 -17.348367089507519 0 1 0 -17.345286721465527 0 1 0 -17.706621522185742
		 0 1 0 -17.828396195647656 0 1 0 -12.093890542266308 0 1 0 -12.079633111236035 0 1 0
		 -7.9730943386530271 0 1 0 -7.9690679256891599 0 1 0 -7.8351911251520505 0 1 0 -7.8209413235163083
		 0 1 0 -7.9466985409235349 0 1 0 -7.9492314999079099 0 1 0 -11.734361047027051 0 1 0
		 -11.856881493804394 0 1 0 -14.879307030252896 0 1 0 -14.87988221096748 0 1 0 -14.64803635525459
		 0 1 0 -14.538895959136426 0 1 0 -8.2077706997370115 0 1 0 -8.3271211330866208 0 1 0
		 -8.3214410488581052 0 1 0 -8.2144941036676755 0 1 0 -23.16405140805 0 1 0 -23.242317551848828
		 0 1 0 -27.276284569976269 0 1 0 -27.145904416320263 0 1 0 -28.010067815062939 0 1 0
		 -27.866483563659131 0 1 0 -22.720465058562695 0 1 0 -22.693056458709179 0 1 0 -24.564396256682812
		 0 1 0 -24.441083306548535 0 1 0 -23.595526093718945 0 1 0 -23.484216088530957 0 1 0
		 -23.141754502532422 0 1 0 -23.025910729644238 0 1 0 -22.894876832244336 0 1 0 -23.047400826690136
		 0 1 0 -22.761255616424023 0 1 0 -22.806580895659863 0 1 0 -22.890456551787793 0 1 0
		 -22.869182938811718 0 1 0 -23.059502953765332 0 1 0 -22.898961419341504 0 1 0 -22.805387849090039
		 0 1 0 -22.762221688506543 0 1 0 -27.55956446575874 0 1 0 -27.410385483977734 0 1 0
		 -26.82542025494331 0 1 0 -26.712917680022656 0 1 0 -18.124594809603877 0 1 0 -18.513970257830806
		 0 1 0 -17.905841710162349 0 1 0 -18.29521930415649 0 1 0 -31.854501845431514 0 1 0
		 -28.118858458590694 0 1 0 -31.799868704867549 0 1 0 -28.075153472018428 0 1 0 0.11282490719073124
		 0 1 0 0.11282681453930721 0 1 0 0.1128287286129992 0 1 0 0.11282300320453942 0 1 0
		 -12.811317450134084 0 1 0 -12.918771273223683 0 1 0 -13.179194456664845 0 1 0 -13.071732288924977
		 0 1 0 -25.240861060214229 0 1 0 -27.617907645297237 0 1 0 -27.649645926547237 0 1 0
		 -25.266260268283077 0 1 0 -22.162556938536 0 1 0 -22.016114048368763 0 1 0 -23.230444244749378
		 0 1 0 -23.12074785650475 0 1 0 -24.646000983309932 0 1 0 -24.610281111788936 0 1 0
		 -22.740896823001094 0 1 0 -22.72014057834167 0 1 0 -25.674966625578236 0 1 0 -25.571371845609974
		 0 1 0 -25.759402088529896 0 1 0 -25.652614406950306 0 1 0 -18.124594809603877 0 1 0
		 -18.513970257830806 0 1 0 -17.905841710162349 0 1 0 -18.29521930415649 0 1 0 -31.854501845431514
		 0 1 0 -28.118858458590694 0 1 0 -31.799868704867549 0 1 0 -28.075153472018428 0 1 0
		 0.11282490719073124 0 1 0 0.1128268145392991 0 1 0 0.1128287286129992 0 1 0 0.11282300320453942
		 0 1 0 -12.811317450134084 0 1 0 -12.918771273223683 0 1 0 -13.179194456664845 0 1 0
		 -13.071732288924977 0 1 0 -25.240861060214229 0 1 0 -27.617907645297237 0 1 0 -27.649645926547237
		 0 1 0 -25.266260268283077 0 1 0 -22.162556938536 0 1 0 -22.016114048368763 0 1 0
		 -23.230444244749378 0 1 0 -23.120747210574336 0 1 0 -24.646000983309932 0 1 0 -24.610281111788936
		 0 1 0 -22.740896823001094 0 1 0 -22.72014057834167 0 1 0 -25.674966625578236 0 1 0
		 -25.571371845609974 0 1 0 -25.759402088529896 0 1 0 -25.652614406950306 0 1 0 -18.124594809603877
		 0 1 0 -18.513970257830806 0 1 0 -17.905841710162349 0 1 0 -18.29521930415649 0 1 0
		 -31.854501845431514 0 1 0 -28.118858458590694 0 1 0 -31.799868704867549 0 1 0 -28.075153472018428
		 0 1 0 0.11282490719073124 0 1 0 0.11282681453930371 0 1 0 0.1128287286129992 0 1 0
		 0.11282300320453942 0 1 0 -12.811317450134084 0 1 0 -12.918771273223683 0 1 0 -13.179194456664845
		 0 1 0 -13.071732288924977 0 1 0 -25.240861060214229 0 1 0 -27.617907645297237 0 1 0
		 -27.649645926547237 0 1 0 -25.266260268283077 0 1 0 -22.162556938536 0 1 0 -22.016114048368763
		 0 1 0 -23.230444244749378 0 1 0 -23.12074785650475 0 1 0 -24.646000983309932 0 1 0
		 -24.610281111788936 0 1 0 -22.740896823001094 0 1 0 -22.72014057834167 0 1 0 -25.674966625578236
		 0 1 0 -25.571371845609974 0 1 0 -25.759402088529896 0 1 0 -25.652614406950306 0 1 0
		 -18.124594809603877 0 1 0 -18.513970257830806 0 1 0 -17.905841710162349 0 1 0 -18.29521930415649
		 0 1 0 -31.854501845431514 0 1 0 -28.118858458590694 0 1 0 -31.799868704867549 0 1 0
		 -28.075153472018428 0 1 0 0.11282490719073124 0 1 0 0.1128268145392991 0 1 0 0.1128287286129992
		 0 1 0 0.11282300320453942 0 1 0 -12.811317450134084 0 1 0 -12.918771273223683 0 1 0
		 -13.179194456664845 0 1 0 -13.071732288924977 0 1 0 -25.240861060214229 0 1 0 -27.617907645297237
		 0 1 0 -27.649645926547237 0 1 0 -25.266260268283077 0 1 0 -22.162556938536 0 1 0
		 -22.016114048368763 0 1 0 -23.230444244749378 0 1 0 -23.12074785650475 0 1 0 -24.646001629240345
		 0 1 0 -24.610281757719349 0 1 0 -22.740897468931507 0 1 0 -22.720141224272083 0 1 0
		 -25.674966625578236 0 1 0 -25.571371845609974 0 1 0 -25.759402088529896 0 1 0 -25.652614406950306
		 0 1 0 -18.124594809603877 0 1 0 -18.513970257830806 0 1 0 -17.905841710162349 0 1 0
		 -18.29521930415649 0 1 0 -31.854501845431514 0 1 0 -28.118858458590694 0 1 0 -31.799868704867549
		 0 1 0 -28.075153472018428 0 1 0 0.11282490719073124 0 1 0 0.11282681453930404 0 1 0
		 0.1128287286129992 0 1 0 0.11282300320453942 0 1 0 -12.811317450134084 0 1 0 -12.918771273223683
		 0 1 0 -13.179194456664845 0 1 0 -13.071732288924977 0 1 0 -25.240861060214229 0 1 0
		 -27.617907645297237 0 1 0 -27.649645926547237 0 1 0 -25.266260268283077 0 1 0 -22.162556938536
		 0 1 0 -22.016114048368763 0 1 0 -23.230444244749378 0 1 0 -23.12074785650475 0 1 0
		 -24.646000983309932 0 1 0 -24.610281111788936 0 1 0 -22.740896823001094 0 1 0 -22.72014057834167
		 0 1 0 -25.674966625578236 0 1 0 -25.571371845609974 0 1 0 -25.759402088529896 0 1 0
		 -25.652614406950306 0 1 0 -18.124594809603877 0 1 0 -18.513970257830806 0 1 0 -17.905841710162349
		 0 1 0 -18.29521930415649 0 1 0 -31.854501845431514 0 1 0 -28.118858458590694 0 1 0
		 -31.799868704867549 0 1 0 -28.075153472018428 0 1 0 0.11282490719073124 0 1 0 0.11282681453930005
		 0 1 0 0.1128287286129992 0 1 0 0.11282300320453942 0 1 0 -12.811317450134084 0 1 0
		 -12.918771273223683 0 1 0 -13.179194456664845 0 1 0 -13.071732288924977 0 1 0 -25.240861060214229
		 0 1 0 -27.617907645297237 0 1 0 -27.649645926547237 0 1 0 -25.266260268283077 0 1 0
		 -22.162556938536 0 1 0 -22.01611340243835 0 1 0 -23.230444244749378 0 1 0 -23.120747210574336
		 0 1 0 -24.646000983309932 0 1 0 -24.610281111788936 0 1 0 -22.740896823001094 0 1 0
		 -22.72014057834167 0 1 0 -25.674966625578236 0 1 0 -25.571371845609974 0 1 0 -25.759402088529896
		 0 1 0 -25.652614406950306 0 1 0 -18.124594809603877 0 1 0 -18.513970257830806 0 1 0
		 -17.905841710162349 0 1 0 -18.29521930415649 0 1 0 -31.854501845431514 0 1 0 -28.118858458590694
		 0 1 0 -31.799868704867549 0 1 0 -28.075153472018428 0 1 0 0.11282490719073124 0 1 0
		 0.1128268145392991 0 1 0 0.1128287286129992 0 1 0 0.11282300320453942 0 1 0 -12.811317450134084
		 0 1 0 -12.918771273223683 0 1 0 -13.179194456664845 0 1 0 -13.071732288924977 0 1 0
		 -25.240861060214229 0 1 0 -27.617907645297237 0 1 0 -27.649645926547237 0 1 0 -25.266260268283077
		 0 1 0 -22.162556292605586 0 1 0 -22.01611340243835 0 1 0 -23.230443598818965 0 1 0
		 -23.120747210574336 0 1 0 -24.646000983309932 0 1 0 -24.610281111788936 0 1 0 -22.740896823001094
		 0 1 0 -22.72014057834167 0 1 0 -25.674966625578236 0 1 0 -25.571371845609974 0 1 0
		 -25.759402088529896 0 1 0 -25.652614406950306 0 1 0 -18.124592902255245 0 1 0 -18.513970257830806
		 0 1 0 -17.905841710162349 0 1 0 -18.29521930415649 0 1 0 -31.854501845431514 0 1 0
		 -28.118858458590694 0 1 0 -31.799868704867549 0 1 0 -28.075153472018428 0 1 0 0.11281727779642736
		 0 1 0 0.11282109585590661 0 1 0 0.11282491391561988 0 1 0 0.1128201489062004 0 1 0
		 -12.811320072738454 0 1 0 -12.918774134246632 0 1 0 -13.179196955752559 0 1 0 -13.071730381576344
		 0 1 0 -25.240849616122432 0 1 0 -27.617907645297237 0 1 0 -27.64964783389587 0 1 0
		 -25.266246916842647 0 1 0 -22.162556938536 0 1 0 -22.01611340243835 0 1 0 -23.230444244749378
		 0 1 0 -23.120747210574336 0 1 0 -24.646000983309932 0 1 0 -24.610281111788936 0 1 0
		 -22.740896823001094 0 1 0 -22.72014057834167 0 1 0 -25.674966625578236 0 1 0 -25.571371845609974
		 0 1 0 -25.759402088529896 0 1 0 -25.652614406950306 0 1 ;
	setAttr ".it[0].itg[0].iti[6000].ict" -type "componentList" 1 "vtx[0:668]";
	setAttr ".it[0].siw" 1;
	setAttr ".mlid" 0;
	setAttr ".mlpr" 0;
	setAttr ".pndr[0]"  0;
	setAttr ".tgvs[0]" yes;
	setAttr ".tpvs[0]" yes;
	setAttr ".tgdt[0].cid" -type "Int32Array" 1 0 ;
	setAttr ".aal" -type "attributeAlias" {"Spiderling_GEO","weight[0]"} ;
createNode makeNurbCircle -n "makeNurbCircle27";
	rename -uid "D6971750-45F6-07C6-2F92-0698C67FD3A1";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".tol" 0;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "8C770335-4111-82C0-FC5B-44B82013B56D";
createNode remapValue -n "remapValue1";
	rename -uid "84023B20-4CD8-1E35-A0B7-9BB46CD539B5";
	setAttr ".imn" -5;
	setAttr ".imx" 5;
	setAttr ".omn" -1;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 0 0 0 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "8E687981-411A-0838-5820-3AA393E4EB04";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "3F106628-46D4-0D8B-FF9B-C48C8DC31846";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1484.5017426427466 -589.76659723263265 ;
	setAttr ".tgi[0].vh" -type "double2" 233.77775897143272 249.51908370286469 ;
	setAttr -s 5 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -1271.14013671875;
	setAttr ".tgi[0].ni[0].y" 106.76804351806641;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" -379.06521606445312;
	setAttr ".tgi[0].ni[1].y" 270.19082641601562;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" -865.5240478515625;
	setAttr ".tgi[0].ni[2].y" 177.42161560058594;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -757.8326416015625;
	setAttr ".tgi[0].ni[3].y" 39.1676025390625;
	setAttr ".tgi[0].ni[3].nvs" 18306;
	setAttr ".tgi[0].ni[4].x" -1008.906494140625;
	setAttr ".tgi[0].ni[4].y" 13.977618217468262;
	setAttr ".tgi[0].ni[4].nvs" 18306;
createNode shapeEditorManager -n "Spider_Spiderling_MOD_MASTER:shapeEditorManager";
	rename -uid "40FA2D73-46F8-44B1-079F-6BBCAE5B06E0";
createNode poseInterpolatorManager -n "Spider_Spiderling_MOD_MASTER:poseInterpolatorManager";
	rename -uid "BB13DB09-4408-9A59-66F7-9E8968533D62";
createNode renderLayerManager -n "Spider_Spiderling_MOD_MASTER:renderLayerManager";
	rename -uid "3372E4A0-41CF-D162-4C9B-78AABDEBD392";
createNode renderLayer -n "Spider_Spiderling_MOD_MASTER:defaultRenderLayer";
	rename -uid "DF86753F-453C-3C72-1EBF-238553430AC1";
	setAttr ".g" yes;
createNode shadingEngine -n "Spider_Spiderling_MOD_MASTER:lambert2SG";
	rename -uid "29E0C82E-4058-CAAC-C7B0-798EA74E5E3F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Spider_Spiderling_MOD_MASTER:materialInfo1";
	rename -uid "ED4FC9B7-4703-E0F1-1D49-ECAA02EB17B3";
createNode groupId -n "Spider_Spiderling_MOD_MASTER:groupId25";
	rename -uid "33B56CC6-4B21-C8DD-8A4A-348A3B912DC6";
	setAttr ".ihi" 0;
createNode shadingEngine -n "Spider_Spiderling_MOD_MASTER:lambert3SG";
	rename -uid "F9D55734-41BB-6EA1-3F2A-5EB4EBAAB5FF";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "Spider_Spiderling_MOD_MASTER:materialInfo2";
	rename -uid "28F0AEAA-4178-F7FF-4984-19969A0E0FB9";
createNode checker -n "Spider_Spiderling_MOD_MASTER:checker1";
	rename -uid "C32DE8E5-46F4-C130-0B8D-5B8E92DC19E5";
createNode place2dTexture -n "Spider_Spiderling_MOD_MASTER:place2dTexture1";
	rename -uid "1F60CDCD-463B-AD88-F5F3-D79794CBA64E";
	setAttr ".re" -type "float2" 60 60 ;
createNode phong -n "Spider_Spiderling_MOD_MASTER:Spiderling_MAT";
	rename -uid "400E37C5-45FE-494E-CE01-84844E9DC13D";
createNode gameFbxExporter -n "Spider_Spiderling_MOD_MASTER:gameExporterPreset1";
	rename -uid "6EF3C091-4337-8FCF-3D0F-C7ACAEFB07A3";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".ebm" yes;
	setAttr ".ich" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "C:/Users/Glade/Desktop/School/Papercut/Models/Enemies/Spiderling/Spiderling/models";
	setAttr ".exf" -type "string" "Spiderling_MDL";
createNode gameFbxExporter -n "Spider_Spiderling_MOD_MASTER:gameExporterPreset2";
	rename -uid "E50C1F0E-4C57-573D-5215-E7BED4197765";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 2;
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "Spider_Spiderling_MOD_MASTER:gameExporterPreset3";
	rename -uid "931EF09B-423A-0715-2B9B-7DB06B82432D";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode file -n "Spider_Spiderling_MOD_MASTER:file13";
	rename -uid "0FDAF0FA-4B20-3E5D-1B8A-B2A1239F12A5";
	setAttr ".ftn" -type "string" "C:\\Users\\Glade\\Desktop\\School\\Papercut\\Models\\Character\\Sadao\\Models\\Sadao_MDL.fbm\\Sadao_MDL_Sadao_MAT_MaskMap.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Spider_Spiderling_MOD_MASTER:place2dTexture2";
	rename -uid "584B32F6-47A0-36CA-509C-1EB07037BFDF";
createNode file -n "Spider_Spiderling_MOD_MASTER:file12";
	rename -uid "775DDA00-44AB-DC9B-74DE-8FB60C6391CF";
	setAttr ".ftn" -type "string" "C:\\Users\\Glade\\Desktop\\School\\Papercut\\Models\\Character\\Sadao\\Models\\Sadao_MDL.fbm\\Sadao_MDL_Sadao_MAT_BaseMap.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Spider_Spiderling_MOD_MASTER:place2dTexture3";
	rename -uid "3274E61B-423A-4B4D-2471-AFB19C520AB0";
createNode file -n "Spider_Spiderling_MOD_MASTER:file15";
	rename -uid "64509A54-4541-0B5F-C15A-6CAB651BB1AD";
	setAttr ".ftn" -type "string" "C:\\Users\\Glade\\Desktop\\School\\Papercut\\Models\\Character\\Sadao\\Models\\Sadao_MDL.fbm\\Sadao_MDL_Roughness.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Spider_Spiderling_MOD_MASTER:place2dTexture4";
	rename -uid "5858EBCA-45F5-C30E-E8D7-238FB5FFD04C";
createNode bump2d -n "Spider_Spiderling_MOD_MASTER:bump2d1";
	rename -uid "881C96FD-48B4-3DEE-02B9-C795CBDED9A3";
	setAttr ".bi" 1;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "Spider_Spiderling_MOD_MASTER:file14";
	rename -uid "BCAB3D03-4FA5-43C4-3823-2787636C840A";
	setAttr ".ftn" -type "string" "C:\\Users\\Glade\\Desktop\\School\\Papercut\\Models\\Character\\Sadao\\Models\\Sadao_MDL.fbm\\Sadao_MDL_Sadao_MAT_Normal.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Spider_Spiderling_MOD_MASTER:place2dTexture5";
	rename -uid "EA790BF2-49FD-D4A5-934D-EC97F6E10E44";
createNode shadingEngine -n "Spider_Spiderling_MOD_MASTER:Sadao_MDLSG";
	rename -uid "C7EBF425-4C60-EBF9-A160-06A72E251360";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Spider_Spiderling_MOD_MASTER:materialInfo3";
	rename -uid "F832ABE3-4EDA-135F-C0CD-8F9EE88332A3";
createNode nodeGraphEditorInfo -n "Spider_Spiderling_MOD_MASTER:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "E4A8F4D6-4BAB-BF77-005D-E7AF94898483";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
createNode objectSet -n "Export";
	rename -uid "B32A9ABB-496B-0E9B-BF3A-018DDD7650F4";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 9 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Base_JNT_parentConstraint1.ctx" "Base_JNT.tx";
connectAttr "Base_JNT_parentConstraint1.cty" "Base_JNT.ty";
connectAttr "Base_JNT_parentConstraint1.ctz" "Base_JNT.tz";
connectAttr "Base_JNT_parentConstraint1.crx" "Base_JNT.rx";
connectAttr "Base_JNT_parentConstraint1.cry" "Base_JNT.ry";
connectAttr "Base_JNT_parentConstraint1.crz" "Base_JNT.rz";
connectAttr "Base_JNT.s" "Ass01_JNT.is";
connectAttr "Ass01_JNT_scaleConstraint1.csx" "Ass01_JNT.sx";
connectAttr "Ass01_JNT_scaleConstraint1.csy" "Ass01_JNT.sy";
connectAttr "Ass01_JNT_scaleConstraint1.csz" "Ass01_JNT.sz";
connectAttr "Ass01_JNT_parentConstraint1.ctx" "Ass01_JNT.tx";
connectAttr "Ass01_JNT_parentConstraint1.cty" "Ass01_JNT.ty";
connectAttr "Ass01_JNT_parentConstraint1.ctz" "Ass01_JNT.tz";
connectAttr "Ass01_JNT_parentConstraint1.crx" "Ass01_JNT.rx";
connectAttr "Ass01_JNT_parentConstraint1.cry" "Ass01_JNT.ry";
connectAttr "Ass01_JNT_parentConstraint1.crz" "Ass01_JNT.rz";
connectAttr "Ass01_JNT.s" "Ass02_JNT.is";
connectAttr "Ass01_JNT.ro" "Ass01_JNT_parentConstraint1.cro";
connectAttr "Ass01_JNT.pim" "Ass01_JNT_parentConstraint1.cpim";
connectAttr "Ass01_JNT.rp" "Ass01_JNT_parentConstraint1.crp";
connectAttr "Ass01_JNT.rpt" "Ass01_JNT_parentConstraint1.crt";
connectAttr "Ass01_JNT.jo" "Ass01_JNT_parentConstraint1.cjo";
connectAttr "Ass01_CTL.t" "Ass01_JNT_parentConstraint1.tg[0].tt";
connectAttr "Ass01_CTL.rp" "Ass01_JNT_parentConstraint1.tg[0].trp";
connectAttr "Ass01_CTL.rpt" "Ass01_JNT_parentConstraint1.tg[0].trt";
connectAttr "Ass01_CTL.r" "Ass01_JNT_parentConstraint1.tg[0].tr";
connectAttr "Ass01_CTL.ro" "Ass01_JNT_parentConstraint1.tg[0].tro";
connectAttr "Ass01_CTL.s" "Ass01_JNT_parentConstraint1.tg[0].ts";
connectAttr "Ass01_CTL.pm" "Ass01_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Ass01_JNT_parentConstraint1.w0" "Ass01_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Ass01_JNT.ssc" "Ass01_JNT_scaleConstraint1.tsc";
connectAttr "Ass01_JNT.pim" "Ass01_JNT_scaleConstraint1.cpim";
connectAttr "Ass01_CTL.s" "Ass01_JNT_scaleConstraint1.tg[0].ts";
connectAttr "Ass01_CTL.pm" "Ass01_JNT_scaleConstraint1.tg[0].tpm";
connectAttr "Ass01_JNT_scaleConstraint1.w0" "Ass01_JNT_scaleConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "Head_JNT.is";
connectAttr "Head_JNT_parentConstraint1.ctx" "Head_JNT.tx";
connectAttr "Head_JNT_parentConstraint1.cty" "Head_JNT.ty";
connectAttr "Head_JNT_parentConstraint1.ctz" "Head_JNT.tz";
connectAttr "Head_JNT_parentConstraint1.crx" "Head_JNT.rx";
connectAttr "Head_JNT_parentConstraint1.cry" "Head_JNT.ry";
connectAttr "Head_JNT_parentConstraint1.crz" "Head_JNT.rz";
connectAttr "Head_JNT_scaleConstraint1.csx" "Head_JNT.sx";
connectAttr "Head_JNT_scaleConstraint1.csy" "Head_JNT.sy";
connectAttr "Head_JNT_scaleConstraint1.csz" "Head_JNT.sz";
connectAttr "Head_JNT.s" "Mouth_JNT.is";
connectAttr "Mouth_JNT_parentConstraint1.ctx" "Mouth_JNT.tx";
connectAttr "Mouth_JNT_parentConstraint1.cty" "Mouth_JNT.ty";
connectAttr "Mouth_JNT_parentConstraint1.ctz" "Mouth_JNT.tz";
connectAttr "Mouth_JNT_parentConstraint1.crx" "Mouth_JNT.rx";
connectAttr "Mouth_JNT_parentConstraint1.cry" "Mouth_JNT.ry";
connectAttr "Mouth_JNT_parentConstraint1.crz" "Mouth_JNT.rz";
connectAttr "Mouth_JNT.s" "MouthEnd_JNT.is";
connectAttr "Mouth_JNT.s" "L_Mandible01_JNT.is";
connectAttr "L_Mandible01_JNT_parentConstraint1.ctx" "L_Mandible01_JNT.tx";
connectAttr "L_Mandible01_JNT_parentConstraint1.cty" "L_Mandible01_JNT.ty";
connectAttr "L_Mandible01_JNT_parentConstraint1.ctz" "L_Mandible01_JNT.tz";
connectAttr "L_Mandible01_JNT_parentConstraint1.crx" "L_Mandible01_JNT.rx";
connectAttr "L_Mandible01_JNT_parentConstraint1.cry" "L_Mandible01_JNT.ry";
connectAttr "L_Mandible01_JNT_parentConstraint1.crz" "L_Mandible01_JNT.rz";
connectAttr "L_Mandible01_JNT.s" "L_Mandible02_JNT.is";
connectAttr "L_Mandible02_JNT_parentConstraint1.ctx" "L_Mandible02_JNT.tx";
connectAttr "L_Mandible02_JNT_parentConstraint1.cty" "L_Mandible02_JNT.ty";
connectAttr "L_Mandible02_JNT_parentConstraint1.ctz" "L_Mandible02_JNT.tz";
connectAttr "L_Mandible02_JNT_parentConstraint1.crx" "L_Mandible02_JNT.rx";
connectAttr "L_Mandible02_JNT_parentConstraint1.cry" "L_Mandible02_JNT.ry";
connectAttr "L_Mandible02_JNT_parentConstraint1.crz" "L_Mandible02_JNT.rz";
connectAttr "L_Mandible02_JNT.s" "L_Mandible03_JNT.is";
connectAttr "L_Mandible02_JNT.ro" "L_Mandible02_JNT_parentConstraint1.cro";
connectAttr "L_Mandible02_JNT.pim" "L_Mandible02_JNT_parentConstraint1.cpim";
connectAttr "L_Mandible02_JNT.rp" "L_Mandible02_JNT_parentConstraint1.crp";
connectAttr "L_Mandible02_JNT.rpt" "L_Mandible02_JNT_parentConstraint1.crt";
connectAttr "L_Mandible02_JNT.jo" "L_Mandible02_JNT_parentConstraint1.cjo";
connectAttr "L_Mandible02_CTL.t" "L_Mandible02_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Mandible02_CTL.rp" "L_Mandible02_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Mandible02_CTL.rpt" "L_Mandible02_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Mandible02_CTL.r" "L_Mandible02_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Mandible02_CTL.ro" "L_Mandible02_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Mandible02_CTL.s" "L_Mandible02_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Mandible02_CTL.pm" "L_Mandible02_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Mandible02_JNT_parentConstraint1.w0" "L_Mandible02_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Mandible01_JNT.ro" "L_Mandible01_JNT_parentConstraint1.cro";
connectAttr "L_Mandible01_JNT.pim" "L_Mandible01_JNT_parentConstraint1.cpim";
connectAttr "L_Mandible01_JNT.rp" "L_Mandible01_JNT_parentConstraint1.crp";
connectAttr "L_Mandible01_JNT.rpt" "L_Mandible01_JNT_parentConstraint1.crt";
connectAttr "L_Mandible01_JNT.jo" "L_Mandible01_JNT_parentConstraint1.cjo";
connectAttr "L_Mandible01_CTL.t" "L_Mandible01_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Mandible01_CTL.rp" "L_Mandible01_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "L_Mandible01_CTL.rpt" "L_Mandible01_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "L_Mandible01_CTL.r" "L_Mandible01_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Mandible01_CTL.ro" "L_Mandible01_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "L_Mandible01_CTL.s" "L_Mandible01_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Mandible01_CTL.pm" "L_Mandible01_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_Mandible01_JNT_parentConstraint1.w0" "L_Mandible01_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Mouth_JNT.s" "R_Mandible01_JNT.is";
connectAttr "R_Mandible01_JNT_parentConstraint1.ctx" "R_Mandible01_JNT.tx";
connectAttr "R_Mandible01_JNT_parentConstraint1.cty" "R_Mandible01_JNT.ty";
connectAttr "R_Mandible01_JNT_parentConstraint1.ctz" "R_Mandible01_JNT.tz";
connectAttr "R_Mandible01_JNT_parentConstraint1.crx" "R_Mandible01_JNT.rx";
connectAttr "R_Mandible01_JNT_parentConstraint1.cry" "R_Mandible01_JNT.ry";
connectAttr "R_Mandible01_JNT_parentConstraint1.crz" "R_Mandible01_JNT.rz";
connectAttr "R_Mandible01_JNT.s" "R_Mandible02_JNT.is";
connectAttr "R_Mandible02_JNT_parentConstraint1.ctx" "R_Mandible02_JNT.tx";
connectAttr "R_Mandible02_JNT_parentConstraint1.cty" "R_Mandible02_JNT.ty";
connectAttr "R_Mandible02_JNT_parentConstraint1.ctz" "R_Mandible02_JNT.tz";
connectAttr "R_Mandible02_JNT_parentConstraint1.crx" "R_Mandible02_JNT.rx";
connectAttr "R_Mandible02_JNT_parentConstraint1.cry" "R_Mandible02_JNT.ry";
connectAttr "R_Mandible02_JNT_parentConstraint1.crz" "R_Mandible02_JNT.rz";
connectAttr "R_Mandible02_JNT.s" "R_Mandible03_JNT.is";
connectAttr "R_Mandible02_JNT.ro" "R_Mandible02_JNT_parentConstraint1.cro";
connectAttr "R_Mandible02_JNT.pim" "R_Mandible02_JNT_parentConstraint1.cpim";
connectAttr "R_Mandible02_JNT.rp" "R_Mandible02_JNT_parentConstraint1.crp";
connectAttr "R_Mandible02_JNT.rpt" "R_Mandible02_JNT_parentConstraint1.crt";
connectAttr "R_Mandible02_JNT.jo" "R_Mandible02_JNT_parentConstraint1.cjo";
connectAttr "R_Mandible02_CTL.t" "R_Mandible02_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Mandible02_CTL.rp" "R_Mandible02_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Mandible02_CTL.rpt" "R_Mandible02_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Mandible02_CTL.r" "R_Mandible02_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Mandible02_CTL.ro" "R_Mandible02_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Mandible02_CTL.s" "R_Mandible02_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Mandible02_CTL.pm" "R_Mandible02_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Mandible02_JNT_parentConstraint1.w0" "R_Mandible02_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Mandible01_JNT.ro" "R_Mandible01_JNT_parentConstraint1.cro";
connectAttr "R_Mandible01_JNT.pim" "R_Mandible01_JNT_parentConstraint1.cpim";
connectAttr "R_Mandible01_JNT.rp" "R_Mandible01_JNT_parentConstraint1.crp";
connectAttr "R_Mandible01_JNT.rpt" "R_Mandible01_JNT_parentConstraint1.crt";
connectAttr "R_Mandible01_JNT.jo" "R_Mandible01_JNT_parentConstraint1.cjo";
connectAttr "R_Mandible01_CTL.t" "R_Mandible01_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Mandible01_CTL.rp" "R_Mandible01_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "R_Mandible01_CTL.rpt" "R_Mandible01_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "R_Mandible01_CTL.r" "R_Mandible01_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Mandible01_CTL.ro" "R_Mandible01_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "R_Mandible01_CTL.s" "R_Mandible01_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Mandible01_CTL.pm" "R_Mandible01_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_Mandible01_JNT_parentConstraint1.w0" "R_Mandible01_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Mouth_JNT.ro" "Mouth_JNT_parentConstraint1.cro";
connectAttr "Mouth_JNT.pim" "Mouth_JNT_parentConstraint1.cpim";
connectAttr "Mouth_JNT.rp" "Mouth_JNT_parentConstraint1.crp";
connectAttr "Mouth_JNT.rpt" "Mouth_JNT_parentConstraint1.crt";
connectAttr "Mouth_JNT.jo" "Mouth_JNT_parentConstraint1.cjo";
connectAttr "Mouth_CTL.t" "Mouth_JNT_parentConstraint1.tg[0].tt";
connectAttr "Mouth_CTL.rp" "Mouth_JNT_parentConstraint1.tg[0].trp";
connectAttr "Mouth_CTL.rpt" "Mouth_JNT_parentConstraint1.tg[0].trt";
connectAttr "Mouth_CTL.r" "Mouth_JNT_parentConstraint1.tg[0].tr";
connectAttr "Mouth_CTL.ro" "Mouth_JNT_parentConstraint1.tg[0].tro";
connectAttr "Mouth_CTL.s" "Mouth_JNT_parentConstraint1.tg[0].ts";
connectAttr "Mouth_CTL.pm" "Mouth_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Mouth_JNT_parentConstraint1.w0" "Mouth_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Head_JNT.ro" "Head_JNT_parentConstraint1.cro";
connectAttr "Head_JNT.pim" "Head_JNT_parentConstraint1.cpim";
connectAttr "Head_JNT.rp" "Head_JNT_parentConstraint1.crp";
connectAttr "Head_JNT.rpt" "Head_JNT_parentConstraint1.crt";
connectAttr "Head_JNT.jo" "Head_JNT_parentConstraint1.cjo";
connectAttr "Head_CTL.t" "Head_JNT_parentConstraint1.tg[0].tt";
connectAttr "Head_CTL.rp" "Head_JNT_parentConstraint1.tg[0].trp";
connectAttr "Head_CTL.rpt" "Head_JNT_parentConstraint1.tg[0].trt";
connectAttr "Head_CTL.r" "Head_JNT_parentConstraint1.tg[0].tr";
connectAttr "Head_CTL.ro" "Head_JNT_parentConstraint1.tg[0].tro";
connectAttr "Head_CTL.s" "Head_JNT_parentConstraint1.tg[0].ts";
connectAttr "Head_CTL.pm" "Head_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Head_JNT_parentConstraint1.w0" "Head_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Head_JNT.ssc" "Head_JNT_scaleConstraint1.tsc";
connectAttr "Head_JNT.pim" "Head_JNT_scaleConstraint1.cpim";
connectAttr "Head_CTL.s" "Head_JNT_scaleConstraint1.tg[0].ts";
connectAttr "Head_CTL.pm" "Head_JNT_scaleConstraint1.tg[0].tpm";
connectAttr "Head_JNT_scaleConstraint1.w0" "Head_JNT_scaleConstraint1.tg[0].tw";
connectAttr "Base_JNT.s" "L_Leg0101_JNT.is";
connectAttr "L_Leg0101_JNT_parentConstraint1.ctx" "L_Leg0101_JNT.tx";
connectAttr "L_Leg0101_JNT_parentConstraint1.cty" "L_Leg0101_JNT.ty";
connectAttr "L_Leg0101_JNT_parentConstraint1.ctz" "L_Leg0101_JNT.tz";
connectAttr "L_Leg0101_JNT_parentConstraint1.crx" "L_Leg0101_JNT.rx";
connectAttr "L_Leg0101_JNT_parentConstraint1.cry" "L_Leg0101_JNT.ry";
connectAttr "L_Leg0101_JNT_parentConstraint1.crz" "L_Leg0101_JNT.rz";
connectAttr "L_Leg0101_JNT.s" "L_Leg0102_JNT.is";
connectAttr "L_Leg0102_JNT.s" "L_Leg0103_JNT.is";
connectAttr "L_Leg0103_JNT.s" "L_Leg0104_JNT.is";
connectAttr "L_Leg0104_JNT.tx" "effector1.tx";
connectAttr "L_Leg0104_JNT.ty" "effector1.ty";
connectAttr "L_Leg0104_JNT.tz" "effector1.tz";
connectAttr "L_Leg0104_JNT.opm" "effector1.opm";
connectAttr "L_Leg0101_JNT.ro" "L_Leg0101_JNT_parentConstraint1.cro";
connectAttr "L_Leg0101_JNT.pim" "L_Leg0101_JNT_parentConstraint1.cpim";
connectAttr "L_Leg0101_JNT.rp" "L_Leg0101_JNT_parentConstraint1.crp";
connectAttr "L_Leg0101_JNT.rpt" "L_Leg0101_JNT_parentConstraint1.crt";
connectAttr "L_Leg0101_JNT.jo" "L_Leg0101_JNT_parentConstraint1.cjo";
connectAttr "L_Leg01_CTL.t" "L_Leg0101_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Leg01_CTL.rp" "L_Leg0101_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Leg01_CTL.rpt" "L_Leg0101_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Leg01_CTL.r" "L_Leg0101_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Leg01_CTL.ro" "L_Leg0101_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Leg01_CTL.s" "L_Leg0101_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Leg01_CTL.pm" "L_Leg0101_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Leg0101_JNT_parentConstraint1.w0" "L_Leg0101_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "L_Leg0201_JNT.is";
connectAttr "L_Leg0201_JNT_parentConstraint1.ctx" "L_Leg0201_JNT.tx";
connectAttr "L_Leg0201_JNT_parentConstraint1.cty" "L_Leg0201_JNT.ty";
connectAttr "L_Leg0201_JNT_parentConstraint1.ctz" "L_Leg0201_JNT.tz";
connectAttr "L_Leg0201_JNT_parentConstraint1.crx" "L_Leg0201_JNT.rx";
connectAttr "L_Leg0201_JNT_parentConstraint1.cry" "L_Leg0201_JNT.ry";
connectAttr "L_Leg0201_JNT_parentConstraint1.crz" "L_Leg0201_JNT.rz";
connectAttr "L_Leg0201_JNT.s" "L_Leg0202_JNT.is";
connectAttr "L_Leg0202_JNT.s" "L_Leg0203_JNT.is";
connectAttr "L_Leg0203_JNT.s" "L_Leg0204_JNT.is";
connectAttr "L_Leg0204_JNT.tx" "effector2.tx";
connectAttr "L_Leg0204_JNT.ty" "effector2.ty";
connectAttr "L_Leg0204_JNT.tz" "effector2.tz";
connectAttr "L_Leg0204_JNT.opm" "effector2.opm";
connectAttr "L_Leg0201_JNT.ro" "L_Leg0201_JNT_parentConstraint1.cro";
connectAttr "L_Leg0201_JNT.pim" "L_Leg0201_JNT_parentConstraint1.cpim";
connectAttr "L_Leg0201_JNT.rp" "L_Leg0201_JNT_parentConstraint1.crp";
connectAttr "L_Leg0201_JNT.rpt" "L_Leg0201_JNT_parentConstraint1.crt";
connectAttr "L_Leg0201_JNT.jo" "L_Leg0201_JNT_parentConstraint1.cjo";
connectAttr "L_Leg02_CTL.t" "L_Leg0201_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Leg02_CTL.rp" "L_Leg0201_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Leg02_CTL.rpt" "L_Leg0201_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Leg02_CTL.r" "L_Leg0201_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Leg02_CTL.ro" "L_Leg0201_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Leg02_CTL.s" "L_Leg0201_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Leg02_CTL.pm" "L_Leg0201_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Leg0201_JNT_parentConstraint1.w0" "L_Leg0201_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "L_Leg0301_JNT.is";
connectAttr "L_Leg0301_JNT_parentConstraint1.ctx" "L_Leg0301_JNT.tx";
connectAttr "L_Leg0301_JNT_parentConstraint1.cty" "L_Leg0301_JNT.ty";
connectAttr "L_Leg0301_JNT_parentConstraint1.ctz" "L_Leg0301_JNT.tz";
connectAttr "L_Leg0301_JNT_parentConstraint1.crx" "L_Leg0301_JNT.rx";
connectAttr "L_Leg0301_JNT_parentConstraint1.cry" "L_Leg0301_JNT.ry";
connectAttr "L_Leg0301_JNT_parentConstraint1.crz" "L_Leg0301_JNT.rz";
connectAttr "L_Leg0301_JNT.s" "L_Leg0302_JNT.is";
connectAttr "L_Leg0302_JNT.s" "L_Leg0303_JNT.is";
connectAttr "L_Leg0303_JNT.s" "L_Leg0304_JNT.is";
connectAttr "L_Leg0304_JNT.tx" "effector3.tx";
connectAttr "L_Leg0304_JNT.ty" "effector3.ty";
connectAttr "L_Leg0304_JNT.tz" "effector3.tz";
connectAttr "L_Leg0304_JNT.opm" "effector3.opm";
connectAttr "L_Leg0301_JNT.ro" "L_Leg0301_JNT_parentConstraint1.cro";
connectAttr "L_Leg0301_JNT.pim" "L_Leg0301_JNT_parentConstraint1.cpim";
connectAttr "L_Leg0301_JNT.rp" "L_Leg0301_JNT_parentConstraint1.crp";
connectAttr "L_Leg0301_JNT.rpt" "L_Leg0301_JNT_parentConstraint1.crt";
connectAttr "L_Leg0301_JNT.jo" "L_Leg0301_JNT_parentConstraint1.cjo";
connectAttr "L_Leg03_CTL.t" "L_Leg0301_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Leg03_CTL.rp" "L_Leg0301_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Leg03_CTL.rpt" "L_Leg0301_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Leg03_CTL.r" "L_Leg0301_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Leg03_CTL.ro" "L_Leg0301_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Leg03_CTL.s" "L_Leg0301_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Leg03_CTL.pm" "L_Leg0301_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Leg0301_JNT_parentConstraint1.w0" "L_Leg0301_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "L_Leg0401_JNT.is";
connectAttr "L_Leg0401_JNT_parentConstraint1.ctx" "L_Leg0401_JNT.tx";
connectAttr "L_Leg0401_JNT_parentConstraint1.cty" "L_Leg0401_JNT.ty";
connectAttr "L_Leg0401_JNT_parentConstraint1.ctz" "L_Leg0401_JNT.tz";
connectAttr "L_Leg0401_JNT_parentConstraint1.crx" "L_Leg0401_JNT.rx";
connectAttr "L_Leg0401_JNT_parentConstraint1.cry" "L_Leg0401_JNT.ry";
connectAttr "L_Leg0401_JNT_parentConstraint1.crz" "L_Leg0401_JNT.rz";
connectAttr "L_Leg0401_JNT.s" "L_Leg0402_JNT.is";
connectAttr "L_Leg0402_JNT.s" "L_Leg0403_JNT.is";
connectAttr "L_Leg0403_JNT.s" "L_Leg0404_JNT.is";
connectAttr "L_Leg0404_JNT.tx" "effector4.tx";
connectAttr "L_Leg0404_JNT.ty" "effector4.ty";
connectAttr "L_Leg0404_JNT.tz" "effector4.tz";
connectAttr "L_Leg0404_JNT.opm" "effector4.opm";
connectAttr "L_Leg0401_JNT.ro" "L_Leg0401_JNT_parentConstraint1.cro";
connectAttr "L_Leg0401_JNT.pim" "L_Leg0401_JNT_parentConstraint1.cpim";
connectAttr "L_Leg0401_JNT.rp" "L_Leg0401_JNT_parentConstraint1.crp";
connectAttr "L_Leg0401_JNT.rpt" "L_Leg0401_JNT_parentConstraint1.crt";
connectAttr "L_Leg0401_JNT.jo" "L_Leg0401_JNT_parentConstraint1.cjo";
connectAttr "L_Leg04_CTL.t" "L_Leg0401_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Leg04_CTL.rp" "L_Leg0401_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Leg04_CTL.rpt" "L_Leg0401_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Leg04_CTL.r" "L_Leg0401_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Leg04_CTL.ro" "L_Leg0401_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Leg04_CTL.s" "L_Leg0401_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Leg04_CTL.pm" "L_Leg0401_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Leg0401_JNT_parentConstraint1.w0" "L_Leg0401_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "R_Reg0101_JNT.is";
connectAttr "R_Reg0101_JNT_parentConstraint1.ctx" "R_Reg0101_JNT.tx";
connectAttr "R_Reg0101_JNT_parentConstraint1.cty" "R_Reg0101_JNT.ty";
connectAttr "R_Reg0101_JNT_parentConstraint1.ctz" "R_Reg0101_JNT.tz";
connectAttr "R_Reg0101_JNT_parentConstraint1.crx" "R_Reg0101_JNT.rx";
connectAttr "R_Reg0101_JNT_parentConstraint1.cry" "R_Reg0101_JNT.ry";
connectAttr "R_Reg0101_JNT_parentConstraint1.crz" "R_Reg0101_JNT.rz";
connectAttr "R_Reg0101_JNT.s" "R_Reg0102_JNT.is";
connectAttr "R_Reg0102_JNT.s" "R_Reg0103_JNT.is";
connectAttr "R_Reg0103_JNT.s" "R_Reg0104_JNT.is";
connectAttr "R_Reg0104_JNT.tx" "effector5.tx";
connectAttr "R_Reg0104_JNT.ty" "effector5.ty";
connectAttr "R_Reg0104_JNT.tz" "effector5.tz";
connectAttr "R_Reg0104_JNT.opm" "effector5.opm";
connectAttr "R_Reg0101_JNT.ro" "R_Reg0101_JNT_parentConstraint1.cro";
connectAttr "R_Reg0101_JNT.pim" "R_Reg0101_JNT_parentConstraint1.cpim";
connectAttr "R_Reg0101_JNT.rp" "R_Reg0101_JNT_parentConstraint1.crp";
connectAttr "R_Reg0101_JNT.rpt" "R_Reg0101_JNT_parentConstraint1.crt";
connectAttr "R_Reg0101_JNT.jo" "R_Reg0101_JNT_parentConstraint1.cjo";
connectAttr "R_Leg01_CTL.t" "R_Reg0101_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Leg01_CTL.rp" "R_Reg0101_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Leg01_CTL.rpt" "R_Reg0101_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Leg01_CTL.r" "R_Reg0101_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Leg01_CTL.ro" "R_Reg0101_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Leg01_CTL.s" "R_Reg0101_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Leg01_CTL.pm" "R_Reg0101_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Reg0101_JNT_parentConstraint1.w0" "R_Reg0101_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "R_Reg0201_JNT.is";
connectAttr "R_Reg0201_JNT_parentConstraint1.ctx" "R_Reg0201_JNT.tx";
connectAttr "R_Reg0201_JNT_parentConstraint1.cty" "R_Reg0201_JNT.ty";
connectAttr "R_Reg0201_JNT_parentConstraint1.ctz" "R_Reg0201_JNT.tz";
connectAttr "R_Reg0201_JNT_parentConstraint1.crx" "R_Reg0201_JNT.rx";
connectAttr "R_Reg0201_JNT_parentConstraint1.cry" "R_Reg0201_JNT.ry";
connectAttr "R_Reg0201_JNT_parentConstraint1.crz" "R_Reg0201_JNT.rz";
connectAttr "R_Reg0201_JNT.s" "R_Reg0202_JNT.is";
connectAttr "R_Reg0202_JNT.s" "R_Reg0203_JNT.is";
connectAttr "R_Reg0203_JNT.s" "R_Reg0204_JNT.is";
connectAttr "R_Reg0204_JNT.tx" "effector6.tx";
connectAttr "R_Reg0204_JNT.ty" "effector6.ty";
connectAttr "R_Reg0204_JNT.tz" "effector6.tz";
connectAttr "R_Reg0204_JNT.opm" "effector6.opm";
connectAttr "R_Reg0201_JNT.ro" "R_Reg0201_JNT_parentConstraint1.cro";
connectAttr "R_Reg0201_JNT.pim" "R_Reg0201_JNT_parentConstraint1.cpim";
connectAttr "R_Reg0201_JNT.rp" "R_Reg0201_JNT_parentConstraint1.crp";
connectAttr "R_Reg0201_JNT.rpt" "R_Reg0201_JNT_parentConstraint1.crt";
connectAttr "R_Reg0201_JNT.jo" "R_Reg0201_JNT_parentConstraint1.cjo";
connectAttr "R_Leg02_CTL.t" "R_Reg0201_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Leg02_CTL.rp" "R_Reg0201_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Leg02_CTL.rpt" "R_Reg0201_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Leg02_CTL.r" "R_Reg0201_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Leg02_CTL.ro" "R_Reg0201_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Leg02_CTL.s" "R_Reg0201_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Leg02_CTL.pm" "R_Reg0201_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Reg0201_JNT_parentConstraint1.w0" "R_Reg0201_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "R_Reg0301_JNT.is";
connectAttr "R_Reg0301_JNT_parentConstraint1.ctx" "R_Reg0301_JNT.tx";
connectAttr "R_Reg0301_JNT_parentConstraint1.cty" "R_Reg0301_JNT.ty";
connectAttr "R_Reg0301_JNT_parentConstraint1.ctz" "R_Reg0301_JNT.tz";
connectAttr "R_Reg0301_JNT_parentConstraint1.crx" "R_Reg0301_JNT.rx";
connectAttr "R_Reg0301_JNT_parentConstraint1.cry" "R_Reg0301_JNT.ry";
connectAttr "R_Reg0301_JNT_parentConstraint1.crz" "R_Reg0301_JNT.rz";
connectAttr "R_Reg0301_JNT.s" "R_Reg0302_JNT.is";
connectAttr "R_Reg0302_JNT.s" "R_Reg0303_JNT.is";
connectAttr "R_Reg0303_JNT.s" "R_Reg0304_JNT.is";
connectAttr "R_Reg0304_JNT.tx" "effector7.tx";
connectAttr "R_Reg0304_JNT.ty" "effector7.ty";
connectAttr "R_Reg0304_JNT.tz" "effector7.tz";
connectAttr "R_Reg0304_JNT.opm" "effector7.opm";
connectAttr "R_Reg0301_JNT.ro" "R_Reg0301_JNT_parentConstraint1.cro";
connectAttr "R_Reg0301_JNT.pim" "R_Reg0301_JNT_parentConstraint1.cpim";
connectAttr "R_Reg0301_JNT.rp" "R_Reg0301_JNT_parentConstraint1.crp";
connectAttr "R_Reg0301_JNT.rpt" "R_Reg0301_JNT_parentConstraint1.crt";
connectAttr "R_Reg0301_JNT.jo" "R_Reg0301_JNT_parentConstraint1.cjo";
connectAttr "R_Leg03_CTL.t" "R_Reg0301_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Leg03_CTL.rp" "R_Reg0301_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Leg03_CTL.rpt" "R_Reg0301_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Leg03_CTL.r" "R_Reg0301_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Leg03_CTL.ro" "R_Reg0301_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Leg03_CTL.s" "R_Reg0301_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Leg03_CTL.pm" "R_Reg0301_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Reg0301_JNT_parentConstraint1.w0" "R_Reg0301_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "R_Reg0401_JNT.is";
connectAttr "R_Reg0401_JNT_parentConstraint1.ctx" "R_Reg0401_JNT.tx";
connectAttr "R_Reg0401_JNT_parentConstraint1.cty" "R_Reg0401_JNT.ty";
connectAttr "R_Reg0401_JNT_parentConstraint1.ctz" "R_Reg0401_JNT.tz";
connectAttr "R_Reg0401_JNT_parentConstraint1.crx" "R_Reg0401_JNT.rx";
connectAttr "R_Reg0401_JNT_parentConstraint1.cry" "R_Reg0401_JNT.ry";
connectAttr "R_Reg0401_JNT_parentConstraint1.crz" "R_Reg0401_JNT.rz";
connectAttr "R_Reg0401_JNT.s" "R_Reg0402_JNT.is";
connectAttr "R_Reg0402_JNT.s" "R_Reg0403_JNT.is";
connectAttr "R_Reg0403_JNT.s" "R_Reg0404_JNT.is";
connectAttr "R_Reg0404_JNT.tx" "effector8.tx";
connectAttr "R_Reg0404_JNT.ty" "effector8.ty";
connectAttr "R_Reg0404_JNT.tz" "effector8.tz";
connectAttr "R_Reg0404_JNT.opm" "effector8.opm";
connectAttr "R_Reg0401_JNT.ro" "R_Reg0401_JNT_parentConstraint1.cro";
connectAttr "R_Reg0401_JNT.pim" "R_Reg0401_JNT_parentConstraint1.cpim";
connectAttr "R_Reg0401_JNT.rp" "R_Reg0401_JNT_parentConstraint1.crp";
connectAttr "R_Reg0401_JNT.rpt" "R_Reg0401_JNT_parentConstraint1.crt";
connectAttr "R_Reg0401_JNT.jo" "R_Reg0401_JNT_parentConstraint1.cjo";
connectAttr "R_Leg04_CTL.t" "R_Reg0401_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Leg04_CTL.rp" "R_Reg0401_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Leg04_CTL.rpt" "R_Reg0401_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Leg04_CTL.r" "R_Reg0401_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Leg04_CTL.ro" "R_Reg0401_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Leg04_CTL.s" "R_Reg0401_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Leg04_CTL.pm" "R_Reg0401_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Reg0401_JNT_parentConstraint1.w0" "R_Reg0401_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.ro" "Base_JNT_parentConstraint1.cro";
connectAttr "Base_JNT.pim" "Base_JNT_parentConstraint1.cpim";
connectAttr "Base_JNT.rp" "Base_JNT_parentConstraint1.crp";
connectAttr "Base_JNT.rpt" "Base_JNT_parentConstraint1.crt";
connectAttr "Base_JNT.jo" "Base_JNT_parentConstraint1.cjo";
connectAttr "Base_CTL.t" "Base_JNT_parentConstraint1.tg[0].tt";
connectAttr "Base_CTL.rp" "Base_JNT_parentConstraint1.tg[0].trp";
connectAttr "Base_CTL.rpt" "Base_JNT_parentConstraint1.tg[0].trt";
connectAttr "Base_CTL.r" "Base_JNT_parentConstraint1.tg[0].tr";
connectAttr "Base_CTL.ro" "Base_JNT_parentConstraint1.tg[0].tro";
connectAttr "Base_CTL.s" "Base_JNT_parentConstraint1.tg[0].ts";
connectAttr "Base_CTL.pm" "Base_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Base_JNT_parentConstraint1.w0" "Base_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle1.oc" "Master_CTLShape.cr";
connectAttr "makeNurbCircle25.oc" "Base_CTLShape.cr";
connectAttr "makeNurbCircle3.oc" "Ass01_CTLShape.cr";
connectAttr "makeNurbCircle8.oc" "Head_CTLShape.cr";
connectAttr "makeNurbCircle7.oc" "Mouth_CTLShape.cr";
connectAttr "makeNurbCircle6.oc" "L_Mandible01_CTLShape.cr";
connectAttr "makeNurbCircle5.oc" "L_Mandible02_CTLShape.cr";
connectAttr "makeNurbCircle26.oc" "L_Leg01_CTLShape.cr";
connectAttr "makeNurbCircle21.oc" "L_Leg01IK_CTLShape.cr";
connectAttr "L_Leg0102_JNT.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "ikHandle1.pvz";
connectAttr "ikHandle1.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "L_Leg0102_JNT.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "L_Leg0102_JNT.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "L_Leg01_POL.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "L_Leg01_POL.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "L_Leg01_POL.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "L_Leg01_POL.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle17.oc" "L_Leg02IK_CTLShape.cr";
connectAttr "L_Leg0202_JNT.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikRPsolver.msg" "ikHandle2.hsv";
connectAttr "ikHandle2_poleVectorConstraint1.ctx" "ikHandle2.pvx";
connectAttr "ikHandle2_poleVectorConstraint1.cty" "ikHandle2.pvy";
connectAttr "ikHandle2_poleVectorConstraint1.ctz" "ikHandle2.pvz";
connectAttr "ikHandle2.pim" "ikHandle2_poleVectorConstraint1.cpim";
connectAttr "L_Leg0202_JNT.pm" "ikHandle2_poleVectorConstraint1.ps";
connectAttr "L_Leg0202_JNT.t" "ikHandle2_poleVectorConstraint1.crp";
connectAttr "L_Leg02_POL.t" "ikHandle2_poleVectorConstraint1.tg[0].tt";
connectAttr "L_Leg02_POL.rp" "ikHandle2_poleVectorConstraint1.tg[0].trp";
connectAttr "L_Leg02_POL.rpt" "ikHandle2_poleVectorConstraint1.tg[0].trt";
connectAttr "L_Leg02_POL.pm" "ikHandle2_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle2_poleVectorConstraint1.w0" "ikHandle2_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle13.oc" "L_Leg03IK_CTLShape.cr";
connectAttr "L_Leg0302_JNT.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikRPsolver.msg" "ikHandle3.hsv";
connectAttr "ikHandle3_poleVectorConstraint1.ctx" "ikHandle3.pvx";
connectAttr "ikHandle3_poleVectorConstraint1.cty" "ikHandle3.pvy";
connectAttr "ikHandle3_poleVectorConstraint1.ctz" "ikHandle3.pvz";
connectAttr "ikHandle3.pim" "ikHandle3_poleVectorConstraint1.cpim";
connectAttr "L_Leg0302_JNT.pm" "ikHandle3_poleVectorConstraint1.ps";
connectAttr "L_Leg0302_JNT.t" "ikHandle3_poleVectorConstraint1.crp";
connectAttr "L_Leg03_POL.t" "ikHandle3_poleVectorConstraint1.tg[0].tt";
connectAttr "L_Leg03_POL.rp" "ikHandle3_poleVectorConstraint1.tg[0].trp";
connectAttr "L_Leg03_POL.rpt" "ikHandle3_poleVectorConstraint1.tg[0].trt";
connectAttr "L_Leg03_POL.pm" "ikHandle3_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle3_poleVectorConstraint1.w0" "ikHandle3_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle9.oc" "L_Leg04IK_CTLShape.cr";
connectAttr "L_Leg0402_JNT.msg" "ikHandle4.hsj";
connectAttr "effector4.hp" "ikHandle4.hee";
connectAttr "ikRPsolver.msg" "ikHandle4.hsv";
connectAttr "ikHandle4_poleVectorConstraint1.ctx" "ikHandle4.pvx";
connectAttr "ikHandle4_poleVectorConstraint1.cty" "ikHandle4.pvy";
connectAttr "ikHandle4_poleVectorConstraint1.ctz" "ikHandle4.pvz";
connectAttr "ikHandle4.pim" "ikHandle4_poleVectorConstraint1.cpim";
connectAttr "L_Leg0402_JNT.pm" "ikHandle4_poleVectorConstraint1.ps";
connectAttr "L_Leg0402_JNT.t" "ikHandle4_poleVectorConstraint1.crp";
connectAttr "L_Leg04_POL.t" "ikHandle4_poleVectorConstraint1.tg[0].tt";
connectAttr "L_Leg04_POL.rp" "ikHandle4_poleVectorConstraint1.tg[0].trp";
connectAttr "L_Leg04_POL.rpt" "ikHandle4_poleVectorConstraint1.tg[0].trt";
connectAttr "L_Leg04_POL.pm" "ikHandle4_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle4_poleVectorConstraint1.w0" "ikHandle4_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_Reg0102_JNT.msg" "ikHandle5.hsj";
connectAttr "effector5.hp" "ikHandle5.hee";
connectAttr "ikRPsolver.msg" "ikHandle5.hsv";
connectAttr "ikHandle5_poleVectorConstraint1.ctx" "ikHandle5.pvx";
connectAttr "ikHandle5_poleVectorConstraint1.cty" "ikHandle5.pvy";
connectAttr "ikHandle5_poleVectorConstraint1.ctz" "ikHandle5.pvz";
connectAttr "ikHandle5.pim" "ikHandle5_poleVectorConstraint1.cpim";
connectAttr "R_Reg0102_JNT.pm" "ikHandle5_poleVectorConstraint1.ps";
connectAttr "R_Reg0102_JNT.t" "ikHandle5_poleVectorConstraint1.crp";
connectAttr "R_Leg01_POL.t" "ikHandle5_poleVectorConstraint1.tg[0].tt";
connectAttr "R_Leg01_POL.rp" "ikHandle5_poleVectorConstraint1.tg[0].trp";
connectAttr "R_Leg01_POL.rpt" "ikHandle5_poleVectorConstraint1.tg[0].trt";
connectAttr "R_Leg01_POL.pm" "ikHandle5_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle5_poleVectorConstraint1.w0" "ikHandle5_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_Reg0202_JNT.msg" "ikHandle6.hsj";
connectAttr "effector6.hp" "ikHandle6.hee";
connectAttr "ikRPsolver.msg" "ikHandle6.hsv";
connectAttr "ikHandle6_poleVectorConstraint1.ctx" "ikHandle6.pvx";
connectAttr "ikHandle6_poleVectorConstraint1.cty" "ikHandle6.pvy";
connectAttr "ikHandle6_poleVectorConstraint1.ctz" "ikHandle6.pvz";
connectAttr "ikHandle6.pim" "ikHandle6_poleVectorConstraint1.cpim";
connectAttr "R_Reg0202_JNT.pm" "ikHandle6_poleVectorConstraint1.ps";
connectAttr "R_Reg0202_JNT.t" "ikHandle6_poleVectorConstraint1.crp";
connectAttr "R_Leg02_POL.t" "ikHandle6_poleVectorConstraint1.tg[0].tt";
connectAttr "R_Leg02_POL.rp" "ikHandle6_poleVectorConstraint1.tg[0].trp";
connectAttr "R_Leg02_POL.rpt" "ikHandle6_poleVectorConstraint1.tg[0].trt";
connectAttr "R_Leg02_POL.pm" "ikHandle6_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle6_poleVectorConstraint1.w0" "ikHandle6_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_Reg0302_JNT.msg" "ikHandle7.hsj";
connectAttr "effector7.hp" "ikHandle7.hee";
connectAttr "ikRPsolver.msg" "ikHandle7.hsv";
connectAttr "ikHandle7_poleVectorConstraint1.ctx" "ikHandle7.pvx";
connectAttr "ikHandle7_poleVectorConstraint1.cty" "ikHandle7.pvy";
connectAttr "ikHandle7_poleVectorConstraint1.ctz" "ikHandle7.pvz";
connectAttr "ikHandle7.pim" "ikHandle7_poleVectorConstraint1.cpim";
connectAttr "R_Reg0302_JNT.pm" "ikHandle7_poleVectorConstraint1.ps";
connectAttr "R_Reg0302_JNT.t" "ikHandle7_poleVectorConstraint1.crp";
connectAttr "R_Leg03_POL.t" "ikHandle7_poleVectorConstraint1.tg[0].tt";
connectAttr "R_Leg03_POL.rp" "ikHandle7_poleVectorConstraint1.tg[0].trp";
connectAttr "R_Leg03_POL.rpt" "ikHandle7_poleVectorConstraint1.tg[0].trt";
connectAttr "R_Leg03_POL.pm" "ikHandle7_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle7_poleVectorConstraint1.w0" "ikHandle7_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_Reg0402_JNT.msg" "ikHandle8.hsj";
connectAttr "effector8.hp" "ikHandle8.hee";
connectAttr "ikRPsolver.msg" "ikHandle8.hsv";
connectAttr "ikHandle8_poleVectorConstraint1.ctx" "ikHandle8.pvx";
connectAttr "ikHandle8_poleVectorConstraint1.cty" "ikHandle8.pvy";
connectAttr "ikHandle8_poleVectorConstraint1.ctz" "ikHandle8.pvz";
connectAttr "ikHandle8.pim" "ikHandle8_poleVectorConstraint1.cpim";
connectAttr "R_Reg0402_JNT.pm" "ikHandle8_poleVectorConstraint1.ps";
connectAttr "R_Reg0402_JNT.t" "ikHandle8_poleVectorConstraint1.crp";
connectAttr "R_Leg04_POL.t" "ikHandle8_poleVectorConstraint1.tg[0].tt";
connectAttr "R_Leg04_POL.rp" "ikHandle8_poleVectorConstraint1.tg[0].trp";
connectAttr "R_Leg04_POL.rpt" "ikHandle8_poleVectorConstraint1.tg[0].trt";
connectAttr "R_Leg04_POL.pm" "ikHandle8_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle8_poleVectorConstraint1.w0" "ikHandle8_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "transformGeometry1.og" "L_Leg01_POLShape.i";
connectAttr "transformGeometry2.og" "R_Leg01_POLShape.i";
connectAttr "makeNurbCircle27.oc" "Squash_CTLShape.cr";
connectAttr "Geometry.di" "Spider_Spiderling_MOD_MASTER:Spiderling_GEO.do";
connectAttr "Spider_Spiderling_MOD_MASTER:lambert3SG.mwc" "Spiderling_GEOShapeDeformed.iog.og[1].gco"
		;
connectAttr "skinCluster1.og[0]" "Spiderling_GEOShapeDeformed.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "blendShape1.mlpr" "shapeEditorManager.bspr[0]";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "Geometry.id";
connectAttr "polyCube1.out" "transformGeometry1.ig";
connectAttr "polyCube2.out" "transformGeometry2.ig";
connectAttr "Spider_Spiderling_MOD_MASTER:Spiderling_GEOShape.o" "skinCluster1.orggeom[0]"
		;
connectAttr "blendShape1.og[0]" "skinCluster1.ip[0].ig";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Base_JNT.wm" "skinCluster1.ma[0]";
connectAttr "Ass01_JNT.wm" "skinCluster1.ma[1]";
connectAttr "Ass02_JNT.wm" "skinCluster1.ma[2]";
connectAttr "Head_JNT.wm" "skinCluster1.ma[3]";
connectAttr "Mouth_JNT.wm" "skinCluster1.ma[4]";
connectAttr "MouthEnd_JNT.wm" "skinCluster1.ma[5]";
connectAttr "L_Mandible01_JNT.wm" "skinCluster1.ma[6]";
connectAttr "L_Mandible02_JNT.wm" "skinCluster1.ma[7]";
connectAttr "L_Mandible03_JNT.wm" "skinCluster1.ma[8]";
connectAttr "R_Mandible01_JNT.wm" "skinCluster1.ma[9]";
connectAttr "R_Mandible02_JNT.wm" "skinCluster1.ma[10]";
connectAttr "R_Mandible03_JNT.wm" "skinCluster1.ma[11]";
connectAttr "L_Leg0101_JNT.wm" "skinCluster1.ma[12]";
connectAttr "L_Leg0102_JNT.wm" "skinCluster1.ma[13]";
connectAttr "L_Leg0103_JNT.wm" "skinCluster1.ma[14]";
connectAttr "L_Leg0104_JNT.wm" "skinCluster1.ma[15]";
connectAttr "L_Leg0201_JNT.wm" "skinCluster1.ma[16]";
connectAttr "L_Leg0202_JNT.wm" "skinCluster1.ma[17]";
connectAttr "L_Leg0203_JNT.wm" "skinCluster1.ma[18]";
connectAttr "L_Leg0204_JNT.wm" "skinCluster1.ma[19]";
connectAttr "L_Leg0301_JNT.wm" "skinCluster1.ma[20]";
connectAttr "L_Leg0302_JNT.wm" "skinCluster1.ma[21]";
connectAttr "L_Leg0303_JNT.wm" "skinCluster1.ma[22]";
connectAttr "L_Leg0304_JNT.wm" "skinCluster1.ma[23]";
connectAttr "L_Leg0401_JNT.wm" "skinCluster1.ma[24]";
connectAttr "L_Leg0402_JNT.wm" "skinCluster1.ma[25]";
connectAttr "L_Leg0403_JNT.wm" "skinCluster1.ma[26]";
connectAttr "L_Leg0404_JNT.wm" "skinCluster1.ma[27]";
connectAttr "R_Reg0101_JNT.wm" "skinCluster1.ma[28]";
connectAttr "R_Reg0102_JNT.wm" "skinCluster1.ma[29]";
connectAttr "R_Reg0103_JNT.wm" "skinCluster1.ma[30]";
connectAttr "R_Reg0104_JNT.wm" "skinCluster1.ma[31]";
connectAttr "R_Reg0201_JNT.wm" "skinCluster1.ma[32]";
connectAttr "R_Reg0202_JNT.wm" "skinCluster1.ma[33]";
connectAttr "R_Reg0203_JNT.wm" "skinCluster1.ma[34]";
connectAttr "R_Reg0204_JNT.wm" "skinCluster1.ma[35]";
connectAttr "R_Reg0301_JNT.wm" "skinCluster1.ma[36]";
connectAttr "R_Reg0302_JNT.wm" "skinCluster1.ma[37]";
connectAttr "R_Reg0303_JNT.wm" "skinCluster1.ma[38]";
connectAttr "R_Reg0304_JNT.wm" "skinCluster1.ma[39]";
connectAttr "R_Reg0401_JNT.wm" "skinCluster1.ma[40]";
connectAttr "R_Reg0402_JNT.wm" "skinCluster1.ma[41]";
connectAttr "R_Reg0403_JNT.wm" "skinCluster1.ma[42]";
connectAttr "R_Reg0404_JNT.wm" "skinCluster1.ma[43]";
connectAttr "Base_JNT.liw" "skinCluster1.lw[0]";
connectAttr "Ass01_JNT.liw" "skinCluster1.lw[1]";
connectAttr "Ass02_JNT.liw" "skinCluster1.lw[2]";
connectAttr "Head_JNT.liw" "skinCluster1.lw[3]";
connectAttr "Mouth_JNT.liw" "skinCluster1.lw[4]";
connectAttr "MouthEnd_JNT.liw" "skinCluster1.lw[5]";
connectAttr "L_Mandible01_JNT.liw" "skinCluster1.lw[6]";
connectAttr "L_Mandible02_JNT.liw" "skinCluster1.lw[7]";
connectAttr "L_Mandible03_JNT.liw" "skinCluster1.lw[8]";
connectAttr "R_Mandible01_JNT.liw" "skinCluster1.lw[9]";
connectAttr "R_Mandible02_JNT.liw" "skinCluster1.lw[10]";
connectAttr "R_Mandible03_JNT.liw" "skinCluster1.lw[11]";
connectAttr "L_Leg0101_JNT.liw" "skinCluster1.lw[12]";
connectAttr "L_Leg0102_JNT.liw" "skinCluster1.lw[13]";
connectAttr "L_Leg0103_JNT.liw" "skinCluster1.lw[14]";
connectAttr "L_Leg0104_JNT.liw" "skinCluster1.lw[15]";
connectAttr "L_Leg0201_JNT.liw" "skinCluster1.lw[16]";
connectAttr "L_Leg0202_JNT.liw" "skinCluster1.lw[17]";
connectAttr "L_Leg0203_JNT.liw" "skinCluster1.lw[18]";
connectAttr "L_Leg0204_JNT.liw" "skinCluster1.lw[19]";
connectAttr "L_Leg0301_JNT.liw" "skinCluster1.lw[20]";
connectAttr "L_Leg0302_JNT.liw" "skinCluster1.lw[21]";
connectAttr "L_Leg0303_JNT.liw" "skinCluster1.lw[22]";
connectAttr "L_Leg0304_JNT.liw" "skinCluster1.lw[23]";
connectAttr "L_Leg0401_JNT.liw" "skinCluster1.lw[24]";
connectAttr "L_Leg0402_JNT.liw" "skinCluster1.lw[25]";
connectAttr "L_Leg0403_JNT.liw" "skinCluster1.lw[26]";
connectAttr "L_Leg0404_JNT.liw" "skinCluster1.lw[27]";
connectAttr "R_Reg0101_JNT.liw" "skinCluster1.lw[28]";
connectAttr "R_Reg0102_JNT.liw" "skinCluster1.lw[29]";
connectAttr "R_Reg0103_JNT.liw" "skinCluster1.lw[30]";
connectAttr "R_Reg0104_JNT.liw" "skinCluster1.lw[31]";
connectAttr "R_Reg0201_JNT.liw" "skinCluster1.lw[32]";
connectAttr "R_Reg0202_JNT.liw" "skinCluster1.lw[33]";
connectAttr "R_Reg0203_JNT.liw" "skinCluster1.lw[34]";
connectAttr "R_Reg0204_JNT.liw" "skinCluster1.lw[35]";
connectAttr "R_Reg0301_JNT.liw" "skinCluster1.lw[36]";
connectAttr "R_Reg0302_JNT.liw" "skinCluster1.lw[37]";
connectAttr "R_Reg0303_JNT.liw" "skinCluster1.lw[38]";
connectAttr "R_Reg0304_JNT.liw" "skinCluster1.lw[39]";
connectAttr "R_Reg0401_JNT.liw" "skinCluster1.lw[40]";
connectAttr "R_Reg0402_JNT.liw" "skinCluster1.lw[41]";
connectAttr "R_Reg0403_JNT.liw" "skinCluster1.lw[42]";
connectAttr "R_Reg0404_JNT.liw" "skinCluster1.lw[43]";
connectAttr "Base_JNT.obcc" "skinCluster1.ifcl[0]";
connectAttr "Ass01_JNT.obcc" "skinCluster1.ifcl[1]";
connectAttr "Ass02_JNT.obcc" "skinCluster1.ifcl[2]";
connectAttr "Head_JNT.obcc" "skinCluster1.ifcl[3]";
connectAttr "Mouth_JNT.obcc" "skinCluster1.ifcl[4]";
connectAttr "MouthEnd_JNT.obcc" "skinCluster1.ifcl[5]";
connectAttr "L_Mandible01_JNT.obcc" "skinCluster1.ifcl[6]";
connectAttr "L_Mandible02_JNT.obcc" "skinCluster1.ifcl[7]";
connectAttr "L_Mandible03_JNT.obcc" "skinCluster1.ifcl[8]";
connectAttr "R_Mandible01_JNT.obcc" "skinCluster1.ifcl[9]";
connectAttr "R_Mandible02_JNT.obcc" "skinCluster1.ifcl[10]";
connectAttr "R_Mandible03_JNT.obcc" "skinCluster1.ifcl[11]";
connectAttr "L_Leg0101_JNT.obcc" "skinCluster1.ifcl[12]";
connectAttr "L_Leg0102_JNT.obcc" "skinCluster1.ifcl[13]";
connectAttr "L_Leg0103_JNT.obcc" "skinCluster1.ifcl[14]";
connectAttr "L_Leg0104_JNT.obcc" "skinCluster1.ifcl[15]";
connectAttr "L_Leg0201_JNT.obcc" "skinCluster1.ifcl[16]";
connectAttr "L_Leg0202_JNT.obcc" "skinCluster1.ifcl[17]";
connectAttr "L_Leg0203_JNT.obcc" "skinCluster1.ifcl[18]";
connectAttr "L_Leg0204_JNT.obcc" "skinCluster1.ifcl[19]";
connectAttr "L_Leg0301_JNT.obcc" "skinCluster1.ifcl[20]";
connectAttr "L_Leg0302_JNT.obcc" "skinCluster1.ifcl[21]";
connectAttr "L_Leg0303_JNT.obcc" "skinCluster1.ifcl[22]";
connectAttr "L_Leg0304_JNT.obcc" "skinCluster1.ifcl[23]";
connectAttr "L_Leg0401_JNT.obcc" "skinCluster1.ifcl[24]";
connectAttr "L_Leg0402_JNT.obcc" "skinCluster1.ifcl[25]";
connectAttr "L_Leg0403_JNT.obcc" "skinCluster1.ifcl[26]";
connectAttr "L_Leg0404_JNT.obcc" "skinCluster1.ifcl[27]";
connectAttr "R_Reg0101_JNT.obcc" "skinCluster1.ifcl[28]";
connectAttr "R_Reg0102_JNT.obcc" "skinCluster1.ifcl[29]";
connectAttr "R_Reg0103_JNT.obcc" "skinCluster1.ifcl[30]";
connectAttr "R_Reg0104_JNT.obcc" "skinCluster1.ifcl[31]";
connectAttr "R_Reg0201_JNT.obcc" "skinCluster1.ifcl[32]";
connectAttr "R_Reg0202_JNT.obcc" "skinCluster1.ifcl[33]";
connectAttr "R_Reg0203_JNT.obcc" "skinCluster1.ifcl[34]";
connectAttr "R_Reg0204_JNT.obcc" "skinCluster1.ifcl[35]";
connectAttr "R_Reg0301_JNT.obcc" "skinCluster1.ifcl[36]";
connectAttr "R_Reg0302_JNT.obcc" "skinCluster1.ifcl[37]";
connectAttr "R_Reg0303_JNT.obcc" "skinCluster1.ifcl[38]";
connectAttr "R_Reg0304_JNT.obcc" "skinCluster1.ifcl[39]";
connectAttr "R_Reg0401_JNT.obcc" "skinCluster1.ifcl[40]";
connectAttr "R_Reg0402_JNT.obcc" "skinCluster1.ifcl[41]";
connectAttr "R_Reg0403_JNT.obcc" "skinCluster1.ifcl[42]";
connectAttr "R_Reg0404_JNT.obcc" "skinCluster1.ifcl[43]";
connectAttr "Ass01_JNT.msg" "skinCluster1.ptt";
connectAttr "Base_JNT.msg" "bindPose1.m[0]";
connectAttr "Ass01_JNT.msg" "bindPose1.m[1]";
connectAttr "Ass02_JNT.msg" "bindPose1.m[2]";
connectAttr "Head_JNT.msg" "bindPose1.m[3]";
connectAttr "Mouth_JNT.msg" "bindPose1.m[4]";
connectAttr "MouthEnd_JNT.msg" "bindPose1.m[5]";
connectAttr "L_Mandible01_JNT.msg" "bindPose1.m[6]";
connectAttr "L_Mandible02_JNT.msg" "bindPose1.m[7]";
connectAttr "L_Mandible03_JNT.msg" "bindPose1.m[8]";
connectAttr "R_Mandible01_JNT.msg" "bindPose1.m[9]";
connectAttr "R_Mandible02_JNT.msg" "bindPose1.m[10]";
connectAttr "R_Mandible03_JNT.msg" "bindPose1.m[11]";
connectAttr "L_Leg0101_JNT.msg" "bindPose1.m[12]";
connectAttr "L_Leg0102_JNT.msg" "bindPose1.m[13]";
connectAttr "L_Leg0103_JNT.msg" "bindPose1.m[14]";
connectAttr "L_Leg0104_JNT.msg" "bindPose1.m[15]";
connectAttr "L_Leg0201_JNT.msg" "bindPose1.m[16]";
connectAttr "L_Leg0202_JNT.msg" "bindPose1.m[17]";
connectAttr "L_Leg0203_JNT.msg" "bindPose1.m[18]";
connectAttr "L_Leg0204_JNT.msg" "bindPose1.m[19]";
connectAttr "L_Leg0301_JNT.msg" "bindPose1.m[20]";
connectAttr "L_Leg0302_JNT.msg" "bindPose1.m[21]";
connectAttr "L_Leg0303_JNT.msg" "bindPose1.m[22]";
connectAttr "L_Leg0304_JNT.msg" "bindPose1.m[23]";
connectAttr "L_Leg0401_JNT.msg" "bindPose1.m[24]";
connectAttr "L_Leg0402_JNT.msg" "bindPose1.m[25]";
connectAttr "L_Leg0403_JNT.msg" "bindPose1.m[26]";
connectAttr "L_Leg0404_JNT.msg" "bindPose1.m[27]";
connectAttr "R_Reg0101_JNT.msg" "bindPose1.m[28]";
connectAttr "R_Reg0102_JNT.msg" "bindPose1.m[29]";
connectAttr "R_Reg0103_JNT.msg" "bindPose1.m[30]";
connectAttr "R_Reg0104_JNT.msg" "bindPose1.m[31]";
connectAttr "R_Reg0201_JNT.msg" "bindPose1.m[32]";
connectAttr "R_Reg0202_JNT.msg" "bindPose1.m[33]";
connectAttr "R_Reg0203_JNT.msg" "bindPose1.m[34]";
connectAttr "R_Reg0204_JNT.msg" "bindPose1.m[35]";
connectAttr "R_Reg0301_JNT.msg" "bindPose1.m[36]";
connectAttr "R_Reg0302_JNT.msg" "bindPose1.m[37]";
connectAttr "R_Reg0303_JNT.msg" "bindPose1.m[38]";
connectAttr "R_Reg0304_JNT.msg" "bindPose1.m[39]";
connectAttr "R_Reg0401_JNT.msg" "bindPose1.m[40]";
connectAttr "R_Reg0402_JNT.msg" "bindPose1.m[41]";
connectAttr "R_Reg0403_JNT.msg" "bindPose1.m[42]";
connectAttr "R_Reg0404_JNT.msg" "bindPose1.m[43]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[0]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[4]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[4]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[0]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[0]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[0]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[0]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[0]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[0]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[0]" "bindPose1.p[36]";
connectAttr "bindPose1.m[36]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[0]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "bindPose1.m[41]" "bindPose1.p[42]";
connectAttr "bindPose1.m[42]" "bindPose1.p[43]";
connectAttr "Base_JNT.bps" "bindPose1.wm[0]";
connectAttr "Ass01_JNT.bps" "bindPose1.wm[1]";
connectAttr "Ass02_JNT.bps" "bindPose1.wm[2]";
connectAttr "Head_JNT.bps" "bindPose1.wm[3]";
connectAttr "Mouth_JNT.bps" "bindPose1.wm[4]";
connectAttr "MouthEnd_JNT.bps" "bindPose1.wm[5]";
connectAttr "L_Mandible01_JNT.bps" "bindPose1.wm[6]";
connectAttr "L_Mandible02_JNT.bps" "bindPose1.wm[7]";
connectAttr "L_Mandible03_JNT.bps" "bindPose1.wm[8]";
connectAttr "R_Mandible01_JNT.bps" "bindPose1.wm[9]";
connectAttr "R_Mandible02_JNT.bps" "bindPose1.wm[10]";
connectAttr "R_Mandible03_JNT.bps" "bindPose1.wm[11]";
connectAttr "L_Leg0101_JNT.bps" "bindPose1.wm[12]";
connectAttr "L_Leg0102_JNT.bps" "bindPose1.wm[13]";
connectAttr "L_Leg0103_JNT.bps" "bindPose1.wm[14]";
connectAttr "L_Leg0104_JNT.bps" "bindPose1.wm[15]";
connectAttr "L_Leg0201_JNT.bps" "bindPose1.wm[16]";
connectAttr "L_Leg0202_JNT.bps" "bindPose1.wm[17]";
connectAttr "L_Leg0203_JNT.bps" "bindPose1.wm[18]";
connectAttr "L_Leg0204_JNT.bps" "bindPose1.wm[19]";
connectAttr "L_Leg0301_JNT.bps" "bindPose1.wm[20]";
connectAttr "L_Leg0302_JNT.bps" "bindPose1.wm[21]";
connectAttr "L_Leg0303_JNT.bps" "bindPose1.wm[22]";
connectAttr "L_Leg0304_JNT.bps" "bindPose1.wm[23]";
connectAttr "L_Leg0401_JNT.bps" "bindPose1.wm[24]";
connectAttr "L_Leg0402_JNT.bps" "bindPose1.wm[25]";
connectAttr "L_Leg0403_JNT.bps" "bindPose1.wm[26]";
connectAttr "L_Leg0404_JNT.bps" "bindPose1.wm[27]";
connectAttr "R_Reg0101_JNT.bps" "bindPose1.wm[28]";
connectAttr "R_Reg0102_JNT.bps" "bindPose1.wm[29]";
connectAttr "R_Reg0103_JNT.bps" "bindPose1.wm[30]";
connectAttr "R_Reg0104_JNT.bps" "bindPose1.wm[31]";
connectAttr "R_Reg0201_JNT.bps" "bindPose1.wm[32]";
connectAttr "R_Reg0202_JNT.bps" "bindPose1.wm[33]";
connectAttr "R_Reg0203_JNT.bps" "bindPose1.wm[34]";
connectAttr "R_Reg0204_JNT.bps" "bindPose1.wm[35]";
connectAttr "R_Reg0301_JNT.bps" "bindPose1.wm[36]";
connectAttr "R_Reg0302_JNT.bps" "bindPose1.wm[37]";
connectAttr "R_Reg0303_JNT.bps" "bindPose1.wm[38]";
connectAttr "R_Reg0304_JNT.bps" "bindPose1.wm[39]";
connectAttr "R_Reg0401_JNT.bps" "bindPose1.wm[40]";
connectAttr "R_Reg0402_JNT.bps" "bindPose1.wm[41]";
connectAttr "R_Reg0403_JNT.bps" "bindPose1.wm[42]";
connectAttr "R_Reg0404_JNT.bps" "bindPose1.wm[43]";
connectAttr "Spider_Spiderling_MOD_MASTER:Spiderling_GEOShape.w" "blendShape1.ip[0].ig"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:Spiderling_GEOShape.o" "blendShape1.orggeom[0]"
		;
connectAttr "shapeEditorManager.obsv[0]" "blendShape1.tgdt[0].dpvs";
connectAttr "remapValue1.ov" "blendShape1.w[0]";
connectAttr "multiplyDivide2.ox" "remapValue1.i";
connectAttr "Squash_CTL.ty" "multiplyDivide2.i1x";
connectAttr "Squash_CTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "blendShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "Spider_Spiderling_MOD_MASTER:Spiderling_GEOShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "remapValue1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "multiplyDivide2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "Spider_Spiderling_MOD_MASTER:renderLayerManager.rlmi[0]" "Spider_Spiderling_MOD_MASTER:defaultRenderLayer.rlid"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:lambert2SG.msg" "Spider_Spiderling_MOD_MASTER:materialInfo1.sg"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:Spiderling_MAT.oc" "Spider_Spiderling_MOD_MASTER:lambert3SG.ss"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:Spiderling_GEOShape.iog" "Spider_Spiderling_MOD_MASTER:lambert3SG.dsm"
		 -na;
connectAttr "Spiderling_GEOShapeDeformed.iog.og[1]" "Spider_Spiderling_MOD_MASTER:lambert3SG.dsm"
		 -na;
connectAttr "Spiderling_GEOShapeDeformed.iog" "Spider_Spiderling_MOD_MASTER:lambert3SG.dsm"
		 -na;
connectAttr "Spider_Spiderling_MOD_MASTER:lambert3SG.msg" "Spider_Spiderling_MOD_MASTER:materialInfo2.sg"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:Spiderling_MAT.msg" "Spider_Spiderling_MOD_MASTER:materialInfo2.m"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture1.o" "Spider_Spiderling_MOD_MASTER:checker1.uv"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture1.ofs" "Spider_Spiderling_MOD_MASTER:checker1.fs"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture2.o" "Spider_Spiderling_MOD_MASTER:file13.uv"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture2.ofu" "Spider_Spiderling_MOD_MASTER:file13.ofu"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture2.ofv" "Spider_Spiderling_MOD_MASTER:file13.ofv"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture2.rf" "Spider_Spiderling_MOD_MASTER:file13.rf"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture2.reu" "Spider_Spiderling_MOD_MASTER:file13.reu"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture2.rev" "Spider_Spiderling_MOD_MASTER:file13.rev"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture2.vt1" "Spider_Spiderling_MOD_MASTER:file13.vt1"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture2.vt2" "Spider_Spiderling_MOD_MASTER:file13.vt2"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture2.vt3" "Spider_Spiderling_MOD_MASTER:file13.vt3"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture2.vc1" "Spider_Spiderling_MOD_MASTER:file13.vc1"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture2.ofs" "Spider_Spiderling_MOD_MASTER:file13.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Spider_Spiderling_MOD_MASTER:file13.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "Spider_Spiderling_MOD_MASTER:file13.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Spider_Spiderling_MOD_MASTER:file13.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Spider_Spiderling_MOD_MASTER:file13.ws"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture3.o" "Spider_Spiderling_MOD_MASTER:file12.uv"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture3.ofu" "Spider_Spiderling_MOD_MASTER:file12.ofu"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture3.ofv" "Spider_Spiderling_MOD_MASTER:file12.ofv"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture3.rf" "Spider_Spiderling_MOD_MASTER:file12.rf"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture3.reu" "Spider_Spiderling_MOD_MASTER:file12.reu"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture3.rev" "Spider_Spiderling_MOD_MASTER:file12.rev"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture3.vt1" "Spider_Spiderling_MOD_MASTER:file12.vt1"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture3.vt2" "Spider_Spiderling_MOD_MASTER:file12.vt2"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture3.vt3" "Spider_Spiderling_MOD_MASTER:file12.vt3"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture3.vc1" "Spider_Spiderling_MOD_MASTER:file12.vc1"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture3.ofs" "Spider_Spiderling_MOD_MASTER:file12.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Spider_Spiderling_MOD_MASTER:file12.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "Spider_Spiderling_MOD_MASTER:file12.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Spider_Spiderling_MOD_MASTER:file12.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Spider_Spiderling_MOD_MASTER:file12.ws"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture4.o" "Spider_Spiderling_MOD_MASTER:file15.uv"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture4.ofu" "Spider_Spiderling_MOD_MASTER:file15.ofu"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture4.ofv" "Spider_Spiderling_MOD_MASTER:file15.ofv"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture4.rf" "Spider_Spiderling_MOD_MASTER:file15.rf"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture4.reu" "Spider_Spiderling_MOD_MASTER:file15.reu"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture4.rev" "Spider_Spiderling_MOD_MASTER:file15.rev"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture4.vt1" "Spider_Spiderling_MOD_MASTER:file15.vt1"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture4.vt2" "Spider_Spiderling_MOD_MASTER:file15.vt2"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture4.vt3" "Spider_Spiderling_MOD_MASTER:file15.vt3"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture4.vc1" "Spider_Spiderling_MOD_MASTER:file15.vc1"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture4.ofs" "Spider_Spiderling_MOD_MASTER:file15.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Spider_Spiderling_MOD_MASTER:file15.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "Spider_Spiderling_MOD_MASTER:file15.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Spider_Spiderling_MOD_MASTER:file15.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Spider_Spiderling_MOD_MASTER:file15.ws"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:file14.oa" "Spider_Spiderling_MOD_MASTER:bump2d1.bv"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture5.o" "Spider_Spiderling_MOD_MASTER:file14.uv"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture5.ofu" "Spider_Spiderling_MOD_MASTER:file14.ofu"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture5.ofv" "Spider_Spiderling_MOD_MASTER:file14.ofv"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture5.rf" "Spider_Spiderling_MOD_MASTER:file14.rf"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture5.reu" "Spider_Spiderling_MOD_MASTER:file14.reu"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture5.rev" "Spider_Spiderling_MOD_MASTER:file14.rev"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture5.vt1" "Spider_Spiderling_MOD_MASTER:file14.vt1"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture5.vt2" "Spider_Spiderling_MOD_MASTER:file14.vt2"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture5.vt3" "Spider_Spiderling_MOD_MASTER:file14.vt3"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture5.vc1" "Spider_Spiderling_MOD_MASTER:file14.vc1"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture5.ofs" "Spider_Spiderling_MOD_MASTER:file14.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Spider_Spiderling_MOD_MASTER:file14.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "Spider_Spiderling_MOD_MASTER:file14.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Spider_Spiderling_MOD_MASTER:file14.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Spider_Spiderling_MOD_MASTER:file14.ws"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:Sadao_MDLSG.msg" "Spider_Spiderling_MOD_MASTER:materialInfo3.sg"
		;
connectAttr "Spider_Spiderling_MOD_MASTER:Spiderling_GEO.iog" "Export.dsm" -na;
connectAttr "Base_JNT.iog" "Export.dsm" -na;
connectAttr "Spider_Spiderling_MOD_MASTER:lambert2SG.pa" ":renderPartition.st" -na
		;
connectAttr "Spider_Spiderling_MOD_MASTER:lambert3SG.pa" ":renderPartition.st" -na
		;
connectAttr "Spider_Spiderling_MOD_MASTER:Sadao_MDLSG.pa" ":renderPartition.st" 
		-na;
connectAttr "Spider_Spiderling_MOD_MASTER:Spiderling_MAT.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture4.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spider_Spiderling_MOD_MASTER:bump2d1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spider_Spiderling_MOD_MASTER:place2dTexture5.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapValue1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Spider_Spiderling_MOD_MASTER:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Spider_Spiderling_MOD_MASTER:checker1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "Spider_Spiderling_MOD_MASTER:file13.msg" ":defaultTextureList1.tx" 
		-na;
connectAttr "Spider_Spiderling_MOD_MASTER:file12.msg" ":defaultTextureList1.tx" 
		-na;
connectAttr "Spider_Spiderling_MOD_MASTER:file15.msg" ":defaultTextureList1.tx" 
		-na;
connectAttr "Spider_Spiderling_MOD_MASTER:file14.msg" ":defaultTextureList1.tx" 
		-na;
connectAttr "L_Leg01_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_Leg02_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_Leg03_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_Leg04_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "R_Leg01_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "R_Leg02_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "R_Leg03_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "R_Leg04_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Spider-Spiderling_RIG_MASTER.ma
