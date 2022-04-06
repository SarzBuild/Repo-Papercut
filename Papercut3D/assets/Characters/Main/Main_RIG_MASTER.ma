//Maya ASCII 2022 scene
//Name: Main_RIG_MASTER.ma
//Last modified: Tue, Apr 05, 2022 10:37:32 PM
//Codeset: 1252
requires maya "2022";
requires "stereoCamera" "10.0";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.0.0.1";
requires -nodeType "renderSetup" -nodeType "lightItem" -nodeType "lightEditor" "renderSetup.py" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "C84BFE88-4C87-7978-CA98-00AA24B28CEC";
createNode transform -s -n "persp";
	rename -uid "822EB24B-4BD3-062F-7A0D-35A20F41EB00";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -28.301633447735533 70.902323546452934 217.91055097004067 ;
	setAttr ".r" -type "double3" -15.938352735193275 712.59999999997069 2.0045421822470116e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C58C24BC-4EED-F818-8112-BC95AEB6E7C4";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 228.52579038605575;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 5.7220458984375e-06 8.1484721283244141 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "FAF0DE75-4807-4315-CAE9-E89493600A51";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "02B59377-4369-CE7D-D259-249136BB46F3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "3B07D2B5-4C1C-5B11-8434-5DB503CD32D2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.456718352992862 112.47473487339155 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B11A2F8D-472D-56C5-B30A-42A3294DDAC2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 56.705970089310007;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "25E41D8F-4785-2A18-DA90-DE82257DF1A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 46.513928160034922 56.652843905026131 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8C5EE2BA-4091-E4DF-282C-10876B4266DC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 72.00466579359275;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "Base_JNT";
	rename -uid "7788E62A-4A21-AAB6-2573-A6AD54C0253A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999929 4.6448333597217584 90 ;
	setAttr ".bps" -type "matrix" 0 0.99671581846810253 -0.080978868944068402 0 -1.1102230246251563e-15 0.080978868944068472 0.99671581846810242 0
		 1 5.5511151231257815e-17 1.1102230246251565e-15 0 0 90.218957138306607 0 1;
	setAttr ".radi" 0.68709367790153786;
	setAttr ".liw" yes;
createNode joint -n "Spine01_JNT" -p "Base_JNT";
	rename -uid "92C9E06F-4D12-FB49-3A19-E99FF7248A6B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2270900912192876e-15 4.7876762634777118e-14 2.9363595386753931 ;
	setAttr ".bps" -type "matrix" -5.6873073832209637e-17 0.99955546166645493 -0.029814074742645233 -1.7379998821316856e-18
		 -1.1087653574497658e-15 0.029814074742645275 0.99955546166645493 -1.9413689075626102e-20
		 1 5.5511151231257784e-17 1.1102230246251565e-15 -9.6296497219361771e-35 1.0785403542470083e-14 98.845466260815911 0.20923409139823468 0.99999999999999989;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "Spine02_JNT" -p "Spine01_JNT";
	rename -uid "05507D98-4E18-820D-FCAA-54B09E51F921";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.25838060381572625 -0.036829174324361717 -6.4036791349467936 ;
	setAttr ".bps" -type "matrix" 0.00064279030848651201 0.98999354449062149 -0.14111119263727742 -1.7238997626179647e-18
		 -0.0045095760434310864 0.14111265665026479 0.98998327352385762 -1.9348150053330888e-19
		 0.99998962521844592 -7.8661854928958367e-15 0.0045551570194859127 2.3558896474496606e-22
		 1.4554952598798069e-16 110.76183593587659 -0.14619944858856118 0.99999999999999978;
	setAttr ".radi" 0.5;
	setAttr ".liw" yes;
createNode joint -n "Head_JNT" -p "Spine02_JNT";
	rename -uid "7BB624EC-47EB-031A-06EC-059A9FE6E069";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.739000254785992 -0.43639206461141811 8.1102481049763711 ;
	setAttr ".pa" -type "double3" 1.1785548478173493e-11 7.9712651704177688e-14 1.6499127410100192e-14 ;
	setAttr ".bps" -type "matrix" 0.007616483737027272 0.9999709941670728 1.4405523215271776e-15 0
		 -0.99997099416707269 0.0076164837370273101 -2.0548493462335671e-13 0 -2.0551962909287624e-13 1.9186209001168758e-16 1 0
		 0.016029609684072389 135.44984055950553 -3.6651656031278685 1;
	setAttr ".radi" 1.7461715890885094;
	setAttr ".liw" yes;
createNode joint -n "HeadEnd_JNT" -p "Head_JNT";
	rename -uid "7A45F50E-40B5-2097-4847-DA92276EA08B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 14.999999999999829 1.5659348817637794e-14 2.2666059567471777e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 -2.2678040001444799e-14 2.0548994630500317e-13 0
		 2.2640743446711298e-14 1.0000000000000002 -1.2456212565103981e-16 0 -2.0551962909287624e-13 1.9186209001168758e-16 1 0
		 0.13027686573946451 150.44940547201145 -3.6651656031278446 1;
	setAttr ".radi" 1.7461715890885094;
	setAttr ".liw" yes;
createNode parentConstraint -n "Head_JNT_parentConstraint1" -p "Head_JNT";
	rename -uid "308FECD0-4EF0-9C8E-964F-DEA779E7A7FB";
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
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 -8.2156503822261584e-15 
		7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.1786340510833427e-11 -8.4657420310517223e-14 
		-1.4759761568666635e-14 ;
	setAttr ".lr" -type "double3" 1.1776997631456628e-11 8.110414437731813e-14 1.5107634736960041e-14 ;
	setAttr ".rst" -type "double3" 24.937541018342301 7.1054273576010019e-15 -3.1781218282067591e-15 ;
	setAttr ".rsrr" -type "double3" 1.1776997631456628e-11 8.348956038841577e-14 1.5107634736960284e-14 ;
	setAttr -k on ".w0";
createNode joint -n "L_Clavicle_JNT" -p "Spine02_JNT";
	rename -uid "467F4D84-4FC1-507B-3399-A4AB5F32E16C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 78.969583352879525 -66.466522570332899 -161.75493964500203 ;
	setAttr ".pa" -type "double3" 2.5444437451708134e-14 -3.1805546814635168e-15 -7.0622500768802538e-31 ;
	setAttr ".bps" -type "matrix" 0.91713740401495025 -0.39305700674139138 -0.066069445345150218 0
		 0.3920410582055191 0.91951410508566866 -0.028242153416460049 0 0.0718525631958572 -2.3822751608382397e-16 0.99741526415138904 0
		 4.1874482409970968 123.96697984193231 -1.9075425159384267 1;
	setAttr ".radi" 0.85395739600019482;
	setAttr ".liw" yes;
createNode joint -n "L_Shoulder_JNT" -p "L_Clavicle_JNT";
	rename -uid "4E17C993-4950-B51E-740C-64B11E49079E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.9656922011440754 3.2859350649792241 -18.963800731734047 ;
	setAttr ".pa" -type "double3" 6.5698332638980764e-14 3.5333974664383751e-14 9.1813668343810307e-15 ;
	setAttr ".bps" -type "matrix" 0.73462200035709257 -0.66943621051733626 -0.11038875232347223 0
		 0.66200394371550098 0.74286954443441089 -0.099476723191582961 0 0.14859776275727607 -2.8187858475422137e-15 0.98889772216520566 0
		 12.351170505009986 120.4682584694163 -2.4956469805191688 1;
	setAttr ".radi" 1.6628114763891984;
	setAttr ".liw" yes;
createNode joint -n "L_Elbow_JNT" -p "L_Shoulder_JNT";
	rename -uid "E956F5AB-4BAC-FC84-343C-BB94ACED05EA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.73462200035709257 -0.66943621051733626 -0.11038875232347223 0
		 0.66200394371550098 0.74286954443441089 -0.099476723191582961 0 0.14859776275727607 -2.8187858475422137e-15 0.98889772216520566 0
		 28.494908037205356 105.75701585500224 -4.9215027854779123 1;
	setAttr ".radi" 1.9312946804479529;
	setAttr ".liw" yes;
createNode joint -n "L_Wrist_JNT" -p "L_Elbow_JNT";
	rename -uid "DD32F388-41A2-5268-3555-72804678644F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.3586150087593931 -5.0889560539385528 8.5346397229584152 ;
	setAttr ".pa" -type "double3" 7.1960049668112063e-14 2.1518440266776599e-14 1.3666445896913562e-14 ;
	setAttr ".bps" -type "matrix" 0.83466327849334698 -0.54960080976363634 -0.035723401880184649 0
		 0.54909811517377793 0.83542740552794648 -0.023501276677000048 0 0.042760629641553249 -6.6567293444996978e-16 0.99908534598034116 0
		 49.463813009013592 86.648761165921371 -8.0724174821548242 1;
	setAttr ".radi" 0.73635558569144943;
	setAttr ".liw" yes;
createNode joint -n "L_Finger_JNT" -p "L_Wrist_JNT";
	rename -uid "2A6D16BD-4C83-439F-46D2-A8BE43DA9534";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.4147642679099839 1.6682770188970295 -45.526802921138639 ;
	setAttr ".pa" -type "double3" 3.2600685485001067e-14 6.6394078975550903e-14 3.737151750719634e-14 ;
	setAttr ".bps" -type "matrix" 0.19159353817436678 -0.98076381889997188 -0.037339625956500769 0
		 0.96265244426614327 0.19519818528035526 -0.18761114042528509 0 0.19129084577743755 -6.4434982919832034e-16 0.98153339847493359 0
		 54.275497842630273 83.48041058788138 -8.2783565182441485 1;
	setAttr ".radi" 0.74287607674119394;
	setAttr ".liw" yes;
createNode joint -n "L_ArmEnd_JNT" -p "L_Finger_JNT";
	rename -uid "10D994FB-420B-D422-FA47-909C670C5A86";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 5.8502428767090597 -1.9511421747314751e-14 -4.0911525824346604e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.9935946846021475 0.11180548647871942 -0.016405362648101218 0
		 -0.11115851885413214 0.99314588987390284 0.036125131317823717 0 0.020331906366949454 -0.034070142644716382 0.99921260948991963 0
		 55.396366574558328 77.742704042627835 -8.4968023990151487 1;
	setAttr ".radi" 0.74287607674119394;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_Finger_JNT_parentConstraint1" -p "L_Finger_JNT";
	rename -uid "ED1B1D42-4DCB-6405-4C91-8EAE777B980C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Finger_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".dla" yes;
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 -7.1054273576010019e-14 
		3.0642155479654321e-14 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635168e-14 -6.5598940305185023e-14 
		-4.0253895187272624e-14 ;
	setAttr ".lr" -type "double3" 3.0215269473903433e-14 3.0612838809086329e-14 8.5874976399514962e-14 ;
	setAttr ".rst" -type "double3" 5.764821524558096 -7.1054273576010019e-14 -2.6645352591003757e-15 ;
	setAttr ".rsrr" -type "double3" 3.2600685485001067e-14 6.6394078975550903e-14 3.737151750719634e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Wrist_JNT_parentConstraint1" -p "L_Wrist_JNT";
	rename -uid "1405DBC1-4449-1317-18DF-9FAF9BD81320";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Wrist_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".dla" yes;
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-16 -5.6843418860808015e-14 
		4.0856207306205761e-14 ;
	setAttr ".tg[0].tor" -type "double3" -7.1960049668112063e-14 -2.1468744099878731e-14 
		-1.2125864723079656e-14 ;
	setAttr ".lr" -type "double3" 5.0938571070314133e-14 4.0750856856251018e-15 6.4555320800329821e-14 ;
	setAttr ".rst" -type "double3" 28.543802066389805 5.6843418860808015e-14 1.2323475573339238e-14 ;
	setAttr ".rsrr" -type "double3" 7.1960049668112063e-14 2.1518440266776599e-14 1.3666445896913562e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Elbow_JNT_parentConstraint1" -p "L_Elbow_JNT";
	rename -uid "333D156C-427E-32DB-B3F3-B5BCB94D7BA2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Elbow_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".dla" yes;
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -1.4210854715202004e-14 
		2.2537527399890678e-14 ;
	setAttr ".rst" -type "double3" 21.97557046256177 0 7.7715611723760958e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Shoulder_JNT_parentConstraint1" -p "L_Shoulder_JNT";
	rename -uid "4033655A-47E0-7447-4BA2-4B850960187C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Shoulder_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".dla" yes;
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 0 9.5479180117763462e-15 ;
	setAttr ".tg[0].tor" -type "double3" -6.5598940305185048e-14 -3.5383670831281621e-14 
		-1.140527030306058e-14 ;
	setAttr ".lr" -type "double3" 4.3235665201144692e-14 6.9574633657014191e-15 6.5101978636206354e-14 ;
	setAttr ".rst" -type "double3" 8.9013077301989725 -1.4210854715202004e-14 1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" 6.5698332638980764e-14 3.5333974664383751e-14 9.1813668343810307e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Clavicle_JNT_parentConstraint1" -p "L_Clavicle_JNT";
	rename -uid "D30D9498-4415-4B6F-786B-5FB3D203762F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Clavicle_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".dla" yes;
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 0 6.6613381477509392e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.2722218725854073e-14 -1.5902773407317592e-15 
		3.1805546814635183e-15 ;
	setAttr ".lr" -type "double3" 3.8166656177562201e-14 -9.5416640443905613e-15 3.1805546814635161e-14 ;
	setAttr ".rst" -type "double3" 4.3717174473871125 1.1963776014485914 4.214961284965673 ;
	setAttr ".rsrr" -type "double3" 2.5444437451708134e-14 -3.1805546814635168e-15 -7.0622500768802538e-31 ;
	setAttr -k on ".w0";
createNode joint -n "R_Clavicle_JNT" -p "Spine02_JNT";
	rename -uid "C8345E03-4826-EA4A-504F-1FA71A5A6AF7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 80.261061836962028 -66.553044778365404 17.060600776665257 ;
	setAttr ".bps" -type "matrix" 0.91713740401494992 0.39305700674139182 0.066069445345150149 0
		 0.3920410582055196 -0.91951410508566822 0.028242153416460414 0 0.07185256319585738 6.4986254385644969e-17 -0.99741526415138915 0
		 -4.187450000000001 123.967 -1.9075399999999987 1;
	setAttr ".radi" 0.85395739600019482;
	setAttr ".liw" yes;
createNode joint -n "R_Shoulder_JNT" -p "R_Clavicle_JNT";
	rename -uid "908097A7-4D01-27A3-8E82-D493D5E54BB7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.9656922011433218 3.2859350649792289 -18.963800731733993 ;
	setAttr ".bps" -type "matrix" 0.73462200035709257 0.66943621051733593 0.11038875232347217 0
		 0.66200394371550264 -0.74286954443441078 0.099476723191570221 0 0.1485977627572676 1.244377924277363e-14 -0.98889772216520699 0
		 -12.351199999999999 120.468 -2.4956499999999995 1;
	setAttr ".radi" 1.6628114763891984;
	setAttr ".liw" yes;
createNode joint -n "R_Elbow_JNT" -p "R_Shoulder_JNT";
	rename -uid "B0C1E532-42F9-4C02-0771-B9B947E6E445";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.73462200035709257 0.66943621051733593 0.11038875232347217 0
		 0.66200394371550264 -0.74286954443441078 0.099476723191570221 0 0.1485977627572676 1.244377924277363e-14 -0.98889772216520699 0
		 -28.49489999999998 105.75699999999999 -4.9214999999999982 1;
	setAttr ".radi" 1.9312946804479529;
	setAttr ".liw" yes;
createNode joint -n "R_Wrist_JNT" -p "R_Elbow_JNT";
	rename -uid "DC5973AF-4A18-744E-11A0-6EA1547AC7F9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.3586150087584228 -5.0889560539384462 8.5346397229584809 ;
	setAttr ".bps" -type "matrix" 0.83466327849334687 0.54960080976363601 0.035723401880184552 0
		 0.54909811517377749 -0.83542740552794614 0.023501276677004211 0 0.042760629641555581 -2.7672274998273983e-15 -0.99908534598034104 0
		 -49.463799999999992 86.64879999999998 -8.072420000000001 1;
	setAttr ".radi" 0.73635558569144943;
	setAttr ".liw" yes;
createNode joint -n "R_Finger_JNT" -p "R_Wrist_JNT";
	rename -uid "6ED28282-4BF5-1525-0650-8FB9481950C3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.4147642679098276 1.6682770188972065 -45.526802921138646 ;
	setAttr ".bps" -type "matrix" 0.19159353817436658 0.98076381889997155 0.037339625956500797 0
		 0.96265244426614305 -0.19519818528035496 0.18761114042528521 0 0.19129084577743777 7.7480328102494221e-16 -0.98153339847493359 0
		 -54.275500000000001 83.480400000000017 -8.2783599999999993 1;
	setAttr ".radi" 0.74287607674119394;
	setAttr ".liw" yes;
createNode joint -n "R_ArmEnd_JNT" -p "R_Finger_JNT";
	rename -uid "377C5587-4E5B-88CE-9B8F-0585D8A02C42";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -5.8502422285359756 -3.0274609315483758e-05 -1.1753469069120115e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99359468460214728 -0.11180548647871957 0.016405362648101135 0
		 -0.11115851885413244 -0.99314588987390262 -0.036125131317820837 0 0.020331906366949176 0.034070142644713544 -0.99921260948991975 0
		 -55.396399999999993 77.742699999999985 -8.4967999999999986 1;
	setAttr ".radi" 0.74287607674119394;
	setAttr ".liw" yes;
createNode parentConstraint -n "R_Finger_JNT_parentConstraint1" -p "R_Finger_JNT";
	rename -uid "3D6D38B1-4173-21D8-E843-C08C6142F840";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.0454790675094046e-05 4.4928305129587898e-06 
		5.8107333171797393e-06 ;
	setAttr ".tg[0].tor" -type "double3" -9.5416640443905487e-15 -3.975693351829395e-16 
		1.6996089079070666e-14 ;
	setAttr ".lr" -type "double3" 5.5659706925611543e-15 3.089734408635111e-31 -6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" -5.764861380164735 3.2937974353330901e-05 3.1450491366769029e-07 ;
	setAttr ".rsrr" -type "double3" 7.9513867036587919e-15 7.9513867036588047e-16 -1.9033631921883233e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Wrist_JNT_parentConstraint1" -p "R_Wrist_JNT";
	rename -uid "D716A00F-4656-172F-D20D-38ACCAD616A6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Wrist_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.241084793297432e-05 -7.6116617009347465e-06 
		5.6606691130056674e-06 ;
	setAttr ".tg[0].tor" -type "double3" -2.3178292241165379e-13 -8.7465253740246703e-15 
		4.4229588539102036e-14 ;
	setAttr ".lr" -type "double3" 2.3292593425030472e-13 8.398652205739683e-15 -4.0899945356944892e-14 ;
	setAttr ".rst" -type "double3" -28.5437623885663 -3.7863053151454551e-05 5.9832436901663399e-06 ;
	setAttr ".rsrr" -type "double3" 2.3054051823920708e-13 8.5477407064332839e-15 -4.0800553023149157e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Elbow_JNT_parentConstraint1" -p "R_Elbow_JNT";
	rename -uid "667F266B-40DD-DE76-CD17-8097FA9C6D7A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Elbow_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.6882188766942363e-05 3.3264954225842303e-05 
		1.1891476510150767e-06 ;
	setAttr ".rst" -type "double3" -21.975379834909212 -0.00015480693960512326 -1.6331021390758593e-07 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Shoulder_JNT_parentConstraint1" -p "R_Shoulder_JNT";
	rename -uid "A643AD8E-4E23-BA99-F9E6-968897C31285";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Shoulder_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.00020750984134565442 0.00018807189385938727 
		1.3524578633683504e-06 ;
	setAttr ".tg[0].tor" -type "double3" 7.3868382476990185e-13 -7.1562480332929135e-15 
		3.6427290336136848e-14 ;
	setAttr ".lr" -type "double3" -7.3719293976296571e-13 7.6035135353734607e-15 -4.0079958603130149e-14 ;
	setAttr ".rst" -type "double3" -8.901443050117102 0.00024517192368023188 3.5282098944655615e-06 ;
	setAttr ".rsrr" -type "double3" -7.3868382476990174e-13 6.5598940305182448e-15 -4.0142078811752473e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Clavicle_JNT_parentConstraint1" -p "R_Clavicle_JNT";
	rename -uid "C0102FA8-43FE-6452-C5DC-A38AC38A923F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Clavicle_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 -4.2632564145606011e-14 
		2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.9878466759146985e-16 -3.5781240166464568e-15 
		3.180554681463516e-15 ;
	setAttr ".lr" -type "double3" 0 0 -9.5416640443905487e-15 ;
	setAttr ".rst" -type "double3" 13.318880390994522 0.13860172191752618 -4.195429738897551 ;
	setAttr ".rsrr" -type "double3" 0 0 -9.5416640443905487e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine02_JNT_parentConstraint1" -p "Spine02_JNT";
	rename -uid "8923B600-4F28-9415-EEAE-D192145767D6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine02_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 -6.1799523831673753e-18 ;
	setAttr ".tg[0].tor" -type "double3" 4.9696166897867437e-17 0 -1.6970949807143816e-15 ;
	setAttr ".lr" -type "double3" -4.891966429008827e-17 -1.5530052155583578e-17 1.5902652078785118e-15 ;
	setAttr ".rst" -type "double3" 11.921669314070627 8.8817841970012523e-15 -9.9809078278876178e-15 ;
	setAttr ".rsrr" -type "double3" -4.9113789942033065e-17 -1.2424041724466862e-17 
		7.9513260393925591e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine01_JNT_parentConstraint1" -p "Spine01_JNT";
	rename -uid "0ABE2904-452B-F44D-A0E4-AE99320F50D5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine01_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.0039300587259134545 0.90767519067947511 1.1015343920692425e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 4.7221470729341997 ;
	setAttr ".lr" -type "double3" 0 0 -1.987846675914698e-15 ;
	setAttr ".rst" -type "double3" 8.5812345604984586 0.90711188033591483 1.1792500037930036e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.5902773407317584e-15 ;
	setAttr -k on ".w0";
createNode joint -n "L_Femur_JNT" -p "Base_JNT";
	rename -uid "FDB785A5-4D85-298B-EB25-959338F1914E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000002458 -0.20255728557397029 -175.35516664027824 ;
	setAttr ".bps" -type "matrix" 0.0035352841929918231 -0.99999375086331144 1.1494725637216845e-16 0
		 0.99999375086331144 0.0035352841929917997 4.3984015215673759e-14 0 -4.3961185601202436e-14 2.7755575615626535e-17 0.99999999999999989 0
		 4.8987348489672975 87.402910588022323 3.8717345881267017e-16 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_Tibia_JNT" -p "L_Femur_JNT";
	rename -uid "A8DCBF4F-49F5-31E3-ED8D-21A1490EC216";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.0035352841929918231 -0.99999375086331144 1.1494725637216845e-16 0
		 0.99999375086331144 0.0035352841929917997 4.3984015215673759e-14 0 -4.3961185601202436e-14 2.7755575615626535e-17 0.99999999999999989 0
		 5.0333649214539102 49.321323984108339 4.4037522292061892e-15 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_Ankle_JNT" -p "L_Tibia_JNT";
	rename -uid "CD7AB9FF-4D27-E280-4FE2-C6BD555446B2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.78561853970433 -70.881758930881844 0 ;
	setAttr ".bps" -type "matrix" 0.0011578717631306216 -0.32751667596297518 0.94484468898287377 0
		 0.00040135911301393524 0.94484539844683757 0.32751643003779052 0 -0.99999924912163918 4.0146178176717064e-15 0.0012254616099471676 0
		 5.1901579622602592 4.970699698834359 9.5017666673872639e-15 1;
	setAttr ".radi" 0.60536202860219979;
	setAttr ".liw" yes;
createNode joint -n "L_Ball_JNT" -p "L_Ankle_JNT";
	rename -uid "4029A699-4353-DDF8-FD91-57A34D5A552B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 12.054701998867717 4.4408920985006262e-15 -1.3051732139501837e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.028920633307110376 0.53938810944101445 16.048954725617904 ;
	setAttr ".bps" -type "matrix" 0.010637601955193782 -0.053538999614532602 0.99850909707669555 0
		 0.00057034457843317416 0.99856575923685409 0.05353596162194884 0 -0.99994325645593729 1.1099917446954106e-14 0.01065288075101231 0
		 5.2041157612808089 1.0225837808815337 11.389821130781691 1;
	setAttr ".radi" 0.57591975192677447;
	setAttr ".liw" yes;
createNode joint -n "L_ToeEnd_JNT" -p "L_Ball_JNT";
	rename -uid "C3830ACC-4FC5-CACB-33D4-7998EDE0272E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 6.8889548728406265 7.7870129864996778e-16 -1.6534170708009329e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.032158275769245598 0.99948278889611153 -2.3174821436877657e-16 0
		 -0.99948278889611164 0.032158275769245473 -3.6918385015738409e-14 0 -3.6677258452577632e-14 1.1798968642066973e-15 1 0
		 5.2773977211053813 0.65375602859998772 18.268505240663885 1;
	setAttr ".radi" 0.57591975192677447;
	setAttr ".liw" yes;
createNode orientConstraint -n "L_Ball_JNT_orientConstraint1" -p "L_Ball_JNT";
	rename -uid "21A348D2-4909-6F93-FC83-EF9FBC161FC3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Tip_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -1.7328079349759768e-07 -6.8173874952808018e-08 1.6578409177717075e-05 ;
	setAttr ".rsrr" -type "double3" 1.7698148988131224e-08 5.9834731676180337e-08 -5.2353953199665334e-08 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "L_Ankle_JNT_pointConstraint1" -p "L_Ankle_JNT";
	rename -uid "E9E56FF5-49EF-CD42-3983-70AF9A2786B6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_AnkleIK_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 7.1054273576010019e-15 -1.7763568394002505e-15 4.0239824818620595e-16 ;
	setAttr ".rst" -type "double3" 44.350901440116758 1.5365486660812167e-13 -1.5243269318384671e-05 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "L_Ankle_JNT_orientConstraint1" -p "L_Ankle_JNT";
	rename -uid "072B4EEF-4ED0-A376-8959-5CB4DD54B03B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AnkleRotation_GRPW0" -dv 1 -min 0 
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
	setAttr ".lr" -type "double3" 7.6594755738324318e-13 -6.2233592216063999e-08 -1.6526789651503701e-05 ;
	setAttr ".rsrr" -type "double3" -2.8624989372156927e-14 -1.9083332230302547e-14 
		-1.6579338073048256e-05 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Tibia_JNT_parentConstraint1" -p "L_Tibia_JNT";
	rename -uid "866927D0-46B3-AF44-6E38-2FA06816A0FA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_TibiaIK_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 2.4980208636479154e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.9692384361401411e-05 0 ;
	setAttr ".lr" -type "double3" 0 1.7631724528844639e-12 0 ;
	setAttr ".rst" -type "double3" 38.081824582438074 2.2204460492503131e-14 1.524777446634883e-05 ;
	setAttr ".rsrr" -type "double3" 0 -6.0664266232748351e-21 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Femur_JNT_parentConstraint1" -p "L_Femur_JNT";
	rename -uid "60787F4B-44AA-D336-27BD-7C92F5653089";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_FemurIK_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 0 2.7755575615628914e-17 ;
	setAttr ".tg[0].tor" -type "double3" 2.4584090142961012e-12 2.2940947102593838e-05 
		-7.7873893528964558e-14 ;
	setAttr ".lr" -type "double3" -2.4490271047269071e-12 1.7854838843065832e-12 7.4743035014354487e-14 ;
	setAttr ".rst" -type "double3" -2.8067981422108943 -0.22804026453587323 4.8987348489672975 ;
	setAttr ".rsrr" -type "double3" -2.455388214089835e-12 1.5902773407333686e-15 7.5140604349575545e-14 ;
	setAttr -k on ".w0";
createNode joint -n "R_Femur_JNT" -p "Base_JNT";
	rename -uid "CFFA151E-4BEF-3173-14C8-5DBCE41D1527";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000002601 -0.202557285573948 4.6448333597217522 ;
	setAttr ".bps" -type "matrix" 0.003535284192991255 0.99999375086331166 -1.070973485528633e-16 0
		 0.99999375086331144 -0.0035352841929912936 -4.435764516018313e-14 0 -4.4190522554034993e-14 -1.3877787807816971e-17 -0.99999999999999989 0
		 -4.8987299999999996 87.402900000000002 -1.3736789483687035e-16 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_Tibia_JNT" -p "R_Femur_JNT";
	rename -uid "B92E5983-4B60-4540-C16E-D88617916F62";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.003535284192991255 0.99999375086331166 -1.070973485528633e-16 0
		 0.99999375086331144 -0.0035352841929912936 -4.435764516018313e-14 0 -4.4190522554034993e-14 -1.3877787807816971e-17 -0.99999999999999989 0
		 -5.0333600000000009 49.321300000000008 4.4037500000000345e-15 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_Ankle_JNT" -p "R_Tibia_JNT";
	rename -uid "00B7AF93-4FCE-BF39-EE7F-059EFC31F765";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.78561853970433 -70.881758930881844 4.8555310907315693e-14 ;
	setAttr ".bps" -type "matrix" 0.0011578717631302187 0.32751667596297529 -0.94484468898287377 0
		 0.000401359113014397 -0.94484539844683779 -0.32751643003779052 0 -0.99999924912163918 -4.5211400659607434e-15 -0.001225461609946794 0
		 -5.1901599999999997 4.9707000000000079 9.5017699999999375e-15 1;
	setAttr ".radi" 0.60536202860219979;
	setAttr ".liw" yes;
createNode joint -n "R_Ball_JNT" -p "R_Ankle_JNT";
	rename -uid "7A8A0D80-4E54-9951-C209-839BD8ADAA28";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -12.054683341169886 1.0776698294634457e-05 2.2268727812857492e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.028920633317525434 0.53938810944102866 16.048954725617886 ;
	setAttr ".bps" -type "matrix" 0.010637601955193771 0.053538999614533053 -0.99850909707669555 0
		 0.00057034457861549674 -0.99856575923685431 -0.053535961621947285 0 -0.99994325645593718 -1.9310489662571117e-13 -0.010652880751021918 0
		 -5.2041199999999996 1.0225799999999996 11.389799999999999 1;
	setAttr ".radi" 0.57591975192677447;
	setAttr ".liw" yes;
createNode joint -n "R_ToeEnd_JNT" -p "R_Ball_JNT";
	rename -uid "DFA03ADD-4E13-8DB5-4E70-BABB9E6758F4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -6.888970517526575 -4.5964748367488539e-06 -2.128988892735606e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.03215827576924548 -0.99948278889611164 2.8709673527416157e-16 0
		 -0.99948278889611142 -0.03215827576924557 3.7100530980715973e-14 0 -3.6921854462690362e-14 -1.5020119238867135e-15 -1 0
		 -5.277400000000001 0.65375599999999989 18.268500000000003 1;
	setAttr ".radi" 0.57591975192677447;
	setAttr ".liw" yes;
createNode orientConstraint -n "R_Ball_JNT_orientConstraint1" -p "R_Ball_JNT";
	rename -uid "D7BB6E5D-4FA6-6C0D-BBA2-05842C0D97FE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Tip_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -1.7329646620705417e-07 -6.7689403537216708e-08 1.6578409181682724e-05 ;
	setAttr ".rsrr" -type "double3" -1.7332256207837431e-07 -6.7202408023846644e-08 
		1.6578409178571139e-05 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "R_Ankle_JNT_pointConstraint1" -p "R_Ankle_JNT";
	rename -uid "8D417FD9-4007-37A9-4C52-21B1AD105ECB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_AnkleIK_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1.4210854715202004e-14 0 4.2310989781246811e-17 ;
	setAttr ".rst" -type "double3" -44.350877177564854 -0.00039704025270292931 0.00015138208765337374 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "R_Ankle_JNT_orientConstraint1" -p "R_Ankle_JNT";
	rename -uid "6E9E6125-422C-BEC9-7349-CA849FE82F8C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AnkleRotation_GRPW0" -dv 1 -min 0 
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
	setAttr ".lr" -type "double3" -1.5833818593569761e-10 -6.1775229781646112e-08 -1.6526787911740207e-05 ;
	setAttr ".rsrr" -type "double3" -3.1813886125352371e-10 -6.1314443764661397e-08 
		-1.6526786206962811e-05 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Tibia_JNT_parentConstraint1" -p "R_Tibia_JNT";
	rename -uid "07757663-4258-28EF-6392-D78F0F222A7F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_TibiaIK_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 0 1.0842021724855044e-19 ;
	setAttr ".tg[0].tor" -type "double3" -0.0021617282232691752 -0.00019558618188635909 
		-0.00050381764397505768 ;
	setAttr ".lr" -type "double3" 4.3489404914333736e-15 -1.1607026851768478e-10 -6.1632939560648886e-13 ;
	setAttr ".rst" -type "double3" -38.081837975888064 0.0003901143432925025 -0.00015138189410023557 ;
	setAttr ".rsrr" -type "double3" -1.8513264841536963e-25 -9.7058382788835397e-20 
		-9.7065047564178351e-20 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Femur_JNT_parentConstraint1" -p "R_Femur_JNT";
	rename -uid "9C6C2FF2-4614-CA93-CAF6-E8BD075A782A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_FemurIK_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -8.8817841970012523e-16 -2.7755575615628914e-17 ;
	setAttr ".tg[0].tor" -type "double3" -0.0021474357794001283 0.00022778263409508156 
		0.00058675512717526034 ;
	setAttr ".lr" -type "double3" -0.0014001679152488909 -1.1607594072340858e-10 -6.005016682778832e-13 ;
	setAttr ".rst" -type "double3" -2.8068086954602052 -0.22804112194193316 -4.8987300000000005 ;
	setAttr ".rsrr" -type "double3" -6.0877804449887686e-16 -4.3732626870123352e-15 
		1.5107634736951704e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Base_JNT_parentConstraint1" -p "Base_JNT";
	rename -uid "0C781F8F-411D-1AE3-8075-B088A9AC9376";
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
	setAttr ".dla" yes;
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -1.7763568394002505e-15 
		0 ;
	setAttr ".rst" -type "double3" 0 90.218957138306592 1.1507789415655396e-15 ;
	setAttr -k on ".w0";
createNode joint -n "L_FemurIK_JNT";
	rename -uid "BB912691-4B96-0A6F-1281-939E98A87029";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".r" -type "double3" 1.821515535612588e-15 -2.2940945341615735e-05 9.0451847895297234e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5189993077191062e-12 -6.9835197560094331e-15 -89.797442714426026 ;
	setAttr ".bps" -type "matrix" 0.0035352841929918231 -0.99999375086331144 1.1494725637216845e-16 0
		 0.99999375086331144 0.0035352841929917997 4.3984015215673759e-14 0 -4.3961185601202436e-14 2.7755575615626535e-17 0.99999999999999989 0
		 4.8987348489672975 87.402910588022323 3.8717345881267017e-16 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_TibiaIK_JNT" -p "L_FemurIK_JNT";
	rename -uid "BDE6B2C3-441B-0D69-DAA0-749C76D4A0DB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 38.081824582441151 2.1507164469534858e-14 -3.6082248300523633e-16 ;
	setAttr ".r" -type "double3" 3.1721428532017741e-13 4.2633331459603596e-05 2.2225701754041322e-11 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 90 0 ;
	setAttr ".bps" -type "matrix" 0.0035352841929918231 -0.99999375086331144 1.1494725637216845e-16 0
		 0.99999375086331144 0.0035352841929917997 4.3984015215673759e-14 0 -4.3961185601202436e-14 2.7755575615626535e-17 0.99999999999999989 0
		 5.0333649214539102 49.321323984108339 4.4037522292061892e-15 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_AnkleIK_JNT" -p "L_TibiaIK_JNT";
	rename -uid "196F02C4-4701-37FA-F72A-70A19367E97E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 44.350901440119344 1.5631940186722227e-13 2.5243548967071388e-29 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.78561853970433 -70.881758930881858 1.9422124362926283e-14 ;
	setAttr ".bps" -type "matrix" 0.0011578717631306216 -0.32751667596297518 0.94484468898287377 0
		 0.00040135911301393524 0.94484539844683757 0.32751643003779052 0 -0.99999924912163918 4.0146178176717064e-15 0.0012254616099471676 0
		 5.1901579622602592 4.970699698834359 9.5017666673872639e-15 1;
	setAttr ".radi" 0.60536202860219979;
	setAttr ".liw" yes;
createNode ikEffector -n "effector1" -p "L_TibiaIK_JNT";
	rename -uid "BB488F7F-452D-753E-B6F6-CD85F8994C30";
	setAttr ".v" no;
	setAttr ".dla" yes;
	setAttr ".hd" yes;
createNode pointConstraint -n "L_FemurIK_JNT_pointConstraint1" -p "L_FemurIK_JNT";
	rename -uid "E563FDE4-4096-5306-6CC2-80A992D0911E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Base_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".dla" yes;
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 4.8987348489672975 -2.8160465502842698 -7.7856071704374419e-16 ;
	setAttr ".rst" -type "double3" 4.8987348489672975 87.402910588022323 3.7221822452179536e-16 ;
	setAttr -k on ".w0";
createNode joint -n "R_FemurIK_JNT";
	rename -uid "6A1CC66C-4394-47E1-FED5-5399F3F0BEF0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".r" -type "double3" 0.00074727019684958163 -0.00022777509752973369 -0.00058675809845459826 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999744 5.7386194669608623e-15 89.797442714426069 ;
	setAttr ".bps" -type "matrix" 0.003535284192991255 0.99999375086331166 -1.070973485528633e-16 0
		 0.99999375086331144 -0.0035352841929912936 -4.435764516018313e-14 0 -4.4190522554034993e-14 -1.3877787807816971e-17 -0.99999999999999989 0
		 -4.8987299999999996 87.402900000000002 -1.3736789483687035e-16 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_TibiaIK_JNT" -p "R_FemurIK_JNT";
	rename -uid "32ECE97E-4309-CC22-EBDA-90946619CCDC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -38.081837978187174 1.1984508674345307e-07 -4.6265933539915773e-16 ;
	setAttr ".r" -type "double3" 1.4296166606347718e-05 0.0004233686903045752 0.0010905728198566487 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 90 0 ;
	setAttr ".bps" -type "matrix" 0.003535284192991255 0.99999375086331166 -1.070973485528633e-16 0
		 0.99999375086331144 -0.0035352841929912936 -4.435764516018313e-14 0 -4.4190522554034993e-14 -1.3877787807816971e-17 -0.99999999999999989 0
		 -5.0333600000000009 49.321300000000008 4.4037500000000345e-15 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_AnkleIK_JNT" -p "R_TibiaIK_JNT";
	rename -uid "A3B04381-4C97-D835-E444-BCA4BC8D9E07";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -44.350877179599841 -7.0450056881554701e-06 -3.4784614820860202e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.78561853970433 -70.881758930881858 1.9422124362926283e-14 ;
	setAttr ".bps" -type "matrix" 0.0011578717631302187 0.32751667596297529 -0.94484468898287377 0
		 0.000401359113014397 -0.94484539844683779 -0.32751643003779052 0 -0.99999924912163918 -4.5211400659607434e-15 -0.001225461609946794 0
		 -5.1901599999999997 4.9707000000000079 9.5017699999999375e-15 1;
	setAttr ".radi" 0.60536202860219979;
	setAttr ".liw" yes;
createNode ikEffector -n "effector2" -p "R_TibiaIK_JNT";
	rename -uid "3F4F157B-4C48-3370-F237-AE95B1C8AEE9";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "R_FemurIK_JNT_pointConstraint1" -p "R_FemurIK_JNT";
	rename -uid "B58C0DE6-473F-D341-CE34-7CA9A69BC101";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Base_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -4.89873 -2.8160571383066042 -1.0255463145369956e-15 ;
	setAttr ".rst" -type "double3" -4.89873 87.402899999999988 1.2523262702854397e-16 ;
	setAttr -k on ".w0";
createNode joint -n "Sword_JNT";
	rename -uid "52493ED6-44E7-3857-0CEE-1DB7A762EDD3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -51.58250241382143 83.96155685132068 -5.0861434936523438 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "Sword_JNT_parentConstraint1" -p "Sword_JNT";
	rename -uid "DB9F6AC6-45C1-586D-6869-FDB032C45389";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Finger_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.5978316906527823 0.91425514024736287 -3.1763505198266238 ;
	setAttr ".tg[0].tor" -type "double3" 169.33171329383532 2.8104680198130239 -176.666765971064 ;
	setAttr ".lr" -type "double3" 5.1507268559066322e-14 -3.4110867435292319e-14 -104.85199599072162 ;
	setAttr ".rst" -type "double3" -51.582502413821445 83.961556851320694 -5.0861434936523411 ;
	setAttr ".rsrr" -type "double3" -4.3732626870123352e-15 7.9513867036587919e-16 -3.0345605799094838e-32 ;
	setAttr -k on ".w0";
createNode transform -n "Master_GRP";
	rename -uid "9FD15BD1-4A27-CA4D-8987-77958C624400";
	setAttr ".rp" -type "double3" 0 -5.9164567891575885e-31 1.0658141036401503e-14 ;
	setAttr ".sp" -type "double3" 0 -5.9164567891575885e-31 1.0658141036401503e-14 ;
createNode transform -n "Master_CTL" -p "Master_GRP";
	rename -uid "9F7DBC6E-4C47-2212-7A70-32B20FC21E85";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Master_CTLShape" -p "Master_CTL";
	rename -uid "4027EB39-47D8-D219-2FBB-3EA0C187B1A8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		23.508348746736736 1.4394712022965418e-15 -23.508348746736736
		2.0357196969332736e-15 2.0357196969332736e-15 -33.245825626631628
		-23.508348746736736 1.4394712022965416e-15 -23.508348746736733
		-33.245825626631643 1.0553206857018082e-31 -1.7234694712574491e-15
		-23.508348746736736 -1.4394712022965418e-15 23.508348746736736
		-3.3302570908809675e-15 -2.0357196969332748e-15 33.24582562663165
		23.508348746736736 -1.4394712022965416e-15 23.508348746736733
		33.245825626631643 -2.7761037630330301e-31 4.533721502339877e-15
		23.508348746736736 1.4394712022965418e-15 -23.508348746736736
		2.0357196969332736e-15 2.0357196969332736e-15 -33.245825626631628
		-23.508348746736736 1.4394712022965416e-15 -23.508348746736733
		;
createNode transform -n "Base_GRP" -p "Master_CTL";
	rename -uid "B9C723D3-43F1-6634-D253-44BA36C8B309";
	setAttr ".t" -type "double3" 0 90.218957138306607 0 ;
	setAttr ".r" -type "double3" 89.999999999999929 4.6448333597217584 90 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "Base_CTL" -p "Base_GRP";
	rename -uid "75979840-4BA8-CA9D-5756-178751F2A77C";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Base_CTLShape" -p "Base_CTL";
	rename -uid "B42A349F-45FD-9FFB-028A-1497A5F8255B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.84615004 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3991186704942365e-16 10.115891715579247 -10.11589171557925
		2.0775313423421278e-32 9.5846658394523878 -8.7599176953282971e-16
		-2.3991186704942365e-16 10.115891715579243 10.11589171557925
		-3.3928661615554574e-16 3.5515814394353741e-15 13.576719988650826
		-2.3991186704942365e-16 -10.115891715579247 10.11589171557925
		-3.3986572389042944e-32 -9.5846658394523914 1.4330449356239129e-15
		2.3991186704942365e-16 -10.115891715579243 -10.11589171557925
		3.3928661615554574e-16 8.5904582093954595e-16 -13.576719988650826
		2.3991186704942365e-16 10.115891715579247 -10.11589171557925
		2.0775313423421278e-32 9.5846658394523878 -8.7599176953282971e-16
		-2.3991186704942365e-16 10.115891715579243 10.11589171557925
		;
createNode transform -n "Spine01_GRP" -p "Base_CTL";
	rename -uid "4E5C95CF-4279-01B7-519C-34B6D859EDF1";
	setAttr ".t" -type "double3" 8.5490206863127298 0 7.7715611723760958e-16 ;
	setAttr ".r" -type "double3" 0 0 -1.7857875342588077 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002499e-15 0 ;
	setAttr ".rpt" -type "double3" -5.5356299441426466e-17 8.6273887606164291e-19 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 5.9164567891575877e-31 0 ;
createNode transform -n "Spine01_CTL" -p "Spine01_GRP";
	rename -uid "0DBB09D5-473C-69CD-2529-148A0CC959A3";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Spine01_CTLShape" -p "Spine01_CTL";
	rename -uid "B87D54AA-4C4E-53CA-2BFE-F294C8A6D4E7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.84615004 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3991186704942365e-16 7.9466977896189857 -10.058251476123356
		2.0775313423421278e-32 9.2497079478669928 -8.7800522704565755e-16
		-2.3991186704942365e-16 7.9466977896189821 10.058251476123356
		-3.3928661615554574e-16 2.4090888468602465e-15 9.9770870843967696
		-2.3991186704942365e-16 -7.9466977896189857 10.058251476123356
		-3.3986572389042944e-32 -9.2497079478669963 9.3589486173830808e-16
		2.3991186704942365e-16 -7.9466977896189821 -10.058251476123356
		3.3928661615554574e-16 2.9392515693871985e-16 -9.9770870843967696
		2.3991186704942365e-16 7.9466977896189857 -10.058251476123356
		2.0775313423421278e-32 9.2497079478669928 -8.7800522704565755e-16
		-2.3991186704942365e-16 7.9466977896189821 10.058251476123356
		;
createNode transform -n "Spine02_GRP" -p "Spine01_CTL";
	rename -uid "6C2F443B-490B-1797-656E-6597C0FCB733";
	setAttr ".t" -type "double3" 11.885132934228494 1.8891116202062967 1.0032790330673294e-15 ;
	setAttr ".r" -type "double3" -0.25838060381572631 -0.036829174324361717 -1.6815320620125909 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.2912419670317088e-16 5.2797204903569009e-18 4.5347564252535089e-17 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "Spine02_CTL" -p "Spine02_GRP";
	rename -uid "7BBA6C11-49BE-B61B-03EB-E689B51C3F80";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Spine02_CTLShape" -p "Spine02_CTL";
	rename -uid "32A44761-4F8E-E4FD-8BCB-E38A821EAC78";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.84615004 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.531332432858429 10.484212668449867 -12.547949623410984
		4.4884446235361022 12.841420526441411 -0.023881675161691363
		-4.5341600123720678 10.555860949800593 12.427238868567144
		-4.2587209545104763 -2.6915771299862508 12.39595895273952
		-4.9635043281071383 -9.5086184800491687 13.184414802505346
		4.9380789519651991 -11.495835061388998 0.22853651001928255
		-4.9646741697409489 -9.4789757619182495 -12.637083575161494
		-4.2598481450713344 -2.663015151074438 -12.484117458522618
		-4.531332432858429 10.484212668449867 -12.547949623410984
		4.4884446235361022 12.841420526441411 -0.023881675161691363
		-4.5341600123720678 10.555860949800593 12.427238868567144
		;
createNode transform -n "Head_GRP" -p "Spine02_CTL";
	rename -uid "2AB146A7-4249-8EEE-B9F6-CE8E0821BDA2";
	setAttr ".t" -type "double3" 24.937541018342273 -7.1054273576010019e-15 -1.1661136466167843e-14 ;
	setAttr ".r" -type "double3" -89.739000254774226 -0.43639206461140201 8.1102481049762876 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002497e-15 0 ;
	setAttr ".rpt" -type "double3" -1.2252417867053466e-17 1.7664372586987148e-15 1.7762868859109333e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 7.8886090522101119e-31 0 ;
createNode transform -n "Head_CTL" -p "Head_GRP";
	rename -uid "9252FE76-4E32-6E03-BCD0-EAB2B10BE5BE";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Head_CTLShape" -p "Head_CTL";
	rename -uid "2481F7CA-4A2E-2A23-4D35-978D2808442D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0.84615004 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.4497440219131397 9.4152477704582473 -7.059460826513174
		5.4497440219131388 10.652022907140438 4.849878473779917
		5.4497440219131379 9.4152477704582456 16.759217774073008
		5.4497440219131397 3.6189939167066976e-15 17.39669636048551
		5.4497440219131379 -9.4152477704582491 16.759217774073008
		5.4497440219131388 -10.652022907140445 4.8498784737799197
		5.4497440219131397 -9.4152477704582491 -7.059460826513174
		5.4497440219131379 1.1129479158504457e-15 -7.6969394129256727
		5.4497440219131397 9.4152477704582473 -7.059460826513174
		5.4497440219131388 10.652022907140438 4.849878473779917
		5.4497440219131379 9.4152477704582456 16.759217774073008
		;
createNode transform -n "L_Clavicle_GRP" -p "Spine02_CTL";
	rename -uid "E2CD16D1-42EF-E49D-F234-8F9867263C6F";
	setAttr ".t" -type "double3" 13.324244093088581 0.10082914614829086 4.1793816028992588 ;
	setAttr ".r" -type "double3" 78.969583352879567 -66.466522570332913 -161.75493964500203 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999967 1 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002495e-15 0 ;
	setAttr ".rpt" -type "double3" -1.6245677021353578e-15 1.5986716310910582e-15 -6.9616906625532373e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626423e-31 0 ;
createNode transform -n "L_Clavicle_CTL" -p "L_Clavicle_GRP";
	rename -uid "364FFC17-4CBD-6A8D-EE03-1C84502494F3";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Clavicle_CTLShape" -p "L_Clavicle_CTL";
	rename -uid "A9A337A4-48D3-BBDB-2DAD-A18A983F53A1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0.57691669 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7489337892871006 5.7536460200169337 3.2096951116364845
		3.137049234781685 5.2321623652498142 5.1425673899115525
		2.4545945177131405 2.9628679219776242 10.728265669124356
		0.086469132157964479 1.6816448320161779 11.619492468976901
		-1.0563298659620821 1.9602654983087828 9.316576531393082
		0.35190099006630349 3.601346223547468 7.0200855613185738
		-0.32865573891737559 3.9381012108662627 3.9771730298730072
		0.036571994522192369 4.9423355635128248 2.9461023683498846
		1.7489337892871006 5.7536460200169337 3.2096951116364845
		3.137049234781685 5.2321623652498142 5.1425673899115525
		2.4545945177131405 2.9628679219776242 10.728265669124356
		;
createNode transform -n "L_Shoulder_GRP" -p "L_Clavicle_CTL";
	rename -uid "0455DB08-4990-F5FC-2659-AF9EBFFEF996";
	setAttr ".t" -type "double3" 8.9013077301989654 0 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -2.9656922011440678 3.2859350649792312 -18.963800731734029 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002501e-15 0 ;
	setAttr ".rpt" -type "double3" -5.7150883275302537e-16 9.6951446241531653e-17 9.1754021158370283e-17 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 3.9443045261050573e-31 0 ;
createNode transform -n "L_Shoulder_CTL" -p "L_Shoulder_GRP";
	rename -uid "75162E98-49D0-FFCA-9F0B-2CA85EC575D9";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Shoulder_CTLShape" -p "L_Shoulder_CTL";
	rename -uid "DE33A868-44AC-0507-A694-B2A8C9B5E091";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0.57691669 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.691285130663557 7.028486136380069 -8.1197823833200964
		-5.306977950771457 5.8665820800379738 0.10037519920219766
		-5.9564780065681795 5.8883587334404845 8.3757028849174873
		-1.5503215682628078 -1.3970708632721986 13.888394522022864
		4.6912851306638261 -7.0284861363804101 8.1197823833201515
		7.1536064382369142 -7.9157751796508196 -0.10037519920213243
		6.5199036635090719 -5.3806282180136646 -8.2617343513576831
		1.5503215682630613 1.3970708632713038 -13.8883945220228
		-4.691285130663557 7.028486136380069 -8.1197823833200964
		-5.306977950771457 5.8665820800379738 0.10037519920219766
		-5.9564780065681795 5.8883587334404845 8.3757028849174873
		;
createNode transform -n "L_Elbow_GRP" -p "L_Shoulder_CTL";
	rename -uid "5484DD30-4463-4BFB-3897-CF937781D660";
	setAttr ".t" -type "double3" 21.975570462561798 -1.4210854715202004e-14 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000004 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002513e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 -7.8886090522101251e-31 0 ;
createNode transform -n "L_Elbow_CTL" -p "L_Elbow_GRP";
	rename -uid "35F310AD-432B-A4F7-8E93-1DBE46BB5811";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Elbow_CTLShape" -p "L_Elbow_CTL";
	rename -uid "0A2BD976-4B14-36F1-4E1D-2B8DAC844D3F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0.57691669 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3991186704942365e-16 3.918058124456123 -3.9180581244561226
		2.0775313423421278e-32 5.5409709377719381 -3.392866161555456e-16
		-2.3991186704942365e-16 3.9180581244561221 3.9180581244561226
		-3.3928661615554574e-16 2.8724491187624153e-16 5.5409709377719407
		-2.3991186704942365e-16 -3.9180581244561226 3.9180581244561226
		-3.3986572389042944e-32 -5.5409709377719416 5.5504284848016127e-16
		2.3991186704942365e-16 -3.9180581244561221 -3.9180581244561226
		3.3928661615554574e-16 -7.556202503899795e-16 -5.5409709377719407
		2.3991186704942365e-16 3.918058124456123 -3.9180581244561226
		2.0775313423421278e-32 5.5409709377719381 -3.392866161555456e-16
		-2.3991186704942365e-16 3.9180581244561221 3.9180581244561226
		;
createNode transform -n "L_Wrist_GRP" -p "L_Elbow_CTL";
	rename -uid "E9D52513-44C4-2240-99D1-1E9E33CEBAD4";
	setAttr ".t" -type "double3" 28.543802066389798 8.5265128291212022e-14 1.4099832412739488e-14 ;
	setAttr ".r" -type "double3" 3.3586150087593922 -5.0889560539385528 8.5346397229584205 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 2.723004473411547e-16 2.4058046436786507e-17 -1.0365822418236541e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "L_Wrist_CTL" -p "L_Wrist_GRP";
	rename -uid "AAD0B0C0-417F-DD1C-ECE4-E5B4973E1F08";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Wrist_CTLShape" -p "L_Wrist_CTL";
	rename -uid "C85D7712-4D96-7F0C-39E1-61A408D00AEE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0.57691669 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3991186704942365e-16 2.801511060087388 -2.8015110600873854
		2.0775313423421278e-32 3.9619349363138063 -2.4259854690933877e-16
		-2.3991186704942365e-16 2.8015110600873876 2.8015110600873854
		-3.3928661615554574e-16 2.0538740672378951e-16 3.9619349363138077
		-2.3991186704942365e-16 -2.801511060087388 2.8015110600873854
		-3.3986572389042944e-32 -3.9619349363138086 3.968697322619294e-16
		2.3991186704942365e-16 -2.8015110600873876 -2.8015110600873854
		3.3928661615554574e-16 -5.4028766839373511e-16 -3.9619349363138077
		2.3991186704942365e-16 2.801511060087388 -2.8015110600873854
		2.0775313423421278e-32 3.9619349363138063 -2.4259854690933877e-16
		-2.3991186704942365e-16 2.8015110600873876 2.8015110600873854
		;
createNode transform -n "L_Finger_GRP" -p "L_Wrist_CTL";
	rename -uid "A591A70B-4AFF-9F71-9A1B-EA8BDBAB537A";
	setAttr ".t" -type "double3" 5.7648215245581111 -2.8421709430404007e-14 2.6645352591003757e-15 ;
	setAttr ".r" -type "double3" -8.4147642679099821 1.6682770188970324 -45.526802921138618 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002495e-15 0 ;
	setAttr ".rpt" -type "double3" -1.2486219572113361e-15 5.3988163712879579e-16 2.5983822471211529e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626423e-31 0 ;
createNode transform -n "L_Finger_CTL" -p "L_Finger_GRP";
	rename -uid "B60F0511-486D-875A-BBD0-08BCF431E705";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Finger_CTLShape" -p "L_Finger_CTL";
	rename -uid "43BF8C68-424D-B3D9-245B-CA9D5984492A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0.57691669 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.4949760569472494e-14 1.7989392988777535 -3.9180581244561199
		-1.5189672436521917e-14 2.2917064758908232 2.1587151892510568e-15
		-1.542958430357134e-14 1.7989392988777526 3.9180581244561252
		-1.5528959052677464e-14 -0.50480651323360026 4.6908852951454989
		-1.542958430357134e-14 -2.8085523253449605 3.9180581244561252
		-1.5189672436521917e-14 -3.3013195023580391 3.0530446538867634e-15
		-1.4949760569472494e-14 -2.8085523253449605 -3.9180581244561199
		-1.485038582036637e-14 -0.50480651323360137 -4.69088529514549
		-1.4949760569472494e-14 1.7989392988777535 -3.9180581244561199
		-1.5189672436521917e-14 2.2917064758908232 2.1587151892510568e-15
		-1.542958430357134e-14 1.7989392988777526 3.9180581244561252
		;
createNode transform -n "R_Clavicle_GRP" -p "Spine02_CTL";
	rename -uid "72CDEB90-4CE9-EA19-A0BA-94B203689DBC";
	setAttr ".t" -type "double3" 13.318880390994495 0.13860172191752457 -4.195429738897551 ;
	setAttr ".r" -type "double3" 80.261061836962014 -66.55304477836539 17.060600776665254 ;
	setAttr ".rp" -type "double3" 0 1.4210854715202004e-14 -6.6613381477509392e-16 ;
	setAttr ".rpt" -type "double3" -1.3083166081608706e-14 -1.5024611584259469e-14 6.1943063007663982e-15 ;
	setAttr ".sp" -type "double3" 0 1.4210854715202004e-14 -6.6613381477509392e-16 ;
createNode transform -n "R_Clavicle_CTL" -p "R_Clavicle_GRP";
	rename -uid "A15FF0DA-4492-A655-5DFE-FFB6F23B4528";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 1.4210854715202004e-14 -6.6613381477509392e-16 ;
	setAttr ".sp" -type "double3" 0 1.4210854715202004e-14 -6.6613381477509392e-16 ;
createNode nurbsCurve -n "R_Clavicle_CTLShape" -p "R_Clavicle_CTL";
	rename -uid "CC59379F-4F70-3D23-1827-C08F4EBAAEC4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.7489337892870906 -5.7536460200169142 -3.2096951116364778
		-3.1370492347816876 -5.2321623652498115 -5.1425673899115525
		-2.4545945177127799 -2.9628679219782943 -10.728265669124344
		-0.086469132157116921 -1.6816448320171531 -11.619492468976851
		1.0563298659625231 -1.9602654983092358 -9.3165765313930624
		-0.35190099006630016 -3.6013462235474525 -7.0200855613185684
		0.32865573891785971 -3.9381012108667655 -3.9771730298729828
		-0.036571994521543673 -4.9423355635135859 -2.9461023683498495
		-1.7489337892870906 -5.7536460200169142 -3.2096951116364778
		-3.1370492347816876 -5.2321623652498115 -5.1425673899115525
		-2.4545945177127799 -2.9628679219782943 -10.728265669124344
		;
createNode transform -n "R_Shoulder_GRP" -p "R_Clavicle_CTL";
	rename -uid "37185CB0-421C-B7FA-CE17-BD9FD7C40A40";
	setAttr ".t" -type "double3" 8.9013077301989654 0 -2.2204460492503131e-16 ;
	setAttr ".r" -type "double3" -2.9656922011440678 3.2859350649792312 -18.963800731734029 ;
	setAttr ".rp" -type "double3" -16.808681750605899 -5.7276509742030015 -1.2630713975700094 ;
	setAttr ".rpt" -type "double3" -0.99393370979204432 5.7276509742029917 1.2630713975700121 ;
	setAttr ".sp" -type "double3" -16.808681750605899 -5.7276509742030015 -1.2630713975700094 ;
createNode transform -n "R_Shoulder_CTL" -p "R_Shoulder_GRP";
	rename -uid "9FF3D8AD-458C-B1CC-1020-A9B4266600F6";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -16.808681750605899 -5.7276509742030015 -1.2630713975700099 ;
	setAttr ".sp" -type "double3" -16.808681750605899 -5.7276509742030015 -1.2630713975700099 ;
createNode nurbsCurve -n "R_Shoulder_CTLShape" -p "R_Shoulder_CTL";
	rename -uid "01159197-4623-FAD2-2012-92AEF40E9E60";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-12.117396619942337 -12.756137110583055 6.8567109857500821
		-11.501703799834438 -11.594233054240959 -1.3634465967722085
		-10.852203744037714 -11.616009707643469 -9.6387742824874945
		-15.258360182343084 -4.3305801109307902 -15.151465919592869
		-21.499966881269714 1.3008351621774183 -9.3828537808901586
		-23.962288188842805 2.1881242054478269 -1.1626961983678783
		-23.328585414114961 -0.3470227561893271 6.9986629537876688
		-18.359003318868954 -7.1247218374742909 12.625323124452784
		-12.117396619942337 -12.756137110583055 6.8567109857500821
		-11.501703799834438 -11.594233054240959 -1.3634465967722085
		-10.852203744037714 -11.616009707643469 -9.6387742824874945
		;
createNode transform -n "R_Elbow_GRP" -p "R_Shoulder_CTL";
	rename -uid "17B2A8BB-4425-268A-28B5-30B6B6F10CA0";
	setAttr ".t" -type "double3" 21.975570462561798 -1.4210854715202004e-14 4.4408920985006262e-16 ;
	setAttr ".rp" -type "double3" -60.759822675729495 -5.7276509742029589 -1.263071397570013 ;
	setAttr ".sp" -type "double3" -60.759822675729495 -5.7276509742029589 -1.263071397570013 ;
createNode transform -n "R_Elbow_CTL" -p "R_Elbow_GRP";
	rename -uid "66C83463-4A7E-B22A-5898-BDAB0F8057E3";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -60.759822675729495 -5.7276509742029589 -1.263071397570013 ;
	setAttr ".sp" -type "double3" -60.759822675729495 -5.7276509742029589 -1.263071397570013 ;
createNode nurbsCurve -n "R_Elbow_CTLShape" -p "R_Elbow_CTL";
	rename -uid "CCE8FB16-4C74-341D-2B40-AFB11918EB4B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-60.759822675729488 -9.6457090986590845 2.6549867268861109
		-60.759822675729488 -11.2686219119749 -1.2630713975700114
		-60.759822675729488 -9.6457090986590828 -5.1811295220261346
		-60.759822675729488 -5.7276509742029615 -6.8040423353419524
		-60.759822675729488 -1.809592849746839 -5.1811295220261346
		-60.759822675729488 -0.18668003643101994 -1.2630713975700121
		-60.759822675729488 -1.8095928497468394 2.6549867268861109
		-60.759822675729488 -5.7276509742029607 4.2778995402019291
		-60.759822675729488 -9.6457090986590845 2.6549867268861109
		-60.759822675729488 -11.2686219119749 -1.2630713975700114
		-60.759822675729488 -9.6457090986590828 -5.1811295220261346
		;
createNode transform -n "R_Wrist_GRP" -p "R_Elbow_CTL";
	rename -uid "B0F05283-48AA-8A03-DBBB-41959D77B2A5";
	setAttr ".t" -type "double3" 28.543802066389798 8.5265128291212022e-14 1.4099832412739488e-14 ;
	setAttr ".r" -type "double3" 3.3586150087593922 -5.0889560539385528 8.5346397229584205 ;
	setAttr ".rp" -type "double3" -117.0417451295292 12.341227238251776 8.4463807463736078 ;
	setAttr ".rpt" -type "double3" -0.80568167897986409 -18.068878212454898 -9.7094521439436452 ;
	setAttr ".sp" -type "double3" -117.0417451295292 12.341227238251776 8.4463807463736078 ;
createNode transform -n "R_Wrist_CTL" -p "R_Wrist_GRP";
	rename -uid "6F3E8B66-4B64-80E5-9507-7FB686237E30";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -117.0417451295292 12.341227238251776 8.4463807463736078 ;
	setAttr ".sp" -type "double3" -117.0417451295292 12.341227238251776 8.4463807463736078 ;
createNode nurbsCurve -n "R_Wrist_CTLShape" -p "R_Wrist_CTL";
	rename -uid "5DDCB856-4210-EB0E-B9D4-DD9C8A63DEFB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-117.04174512952926 9.5397161781643867 11.247891806460995
		-117.04174512952926 8.3792923019379693 8.4463807463736096
		-117.04174512952926 9.5397161781643884 5.6448696862862242
		-117.04174512952926 12.341227238251776 4.4844458100598015
		-117.04174512952926 15.142738298339165 5.6448696862862242
		-117.04174512952926 16.303162174565585 8.4463807463736096
		-117.04174512952926 15.142738298339163 11.247891806460995
		-117.04174512952926 12.341227238251776 12.408315682687418
		-117.04174512952926 9.5397161781643867 11.247891806460995
		-117.04174512952926 8.3792923019379693 8.4463807463736096
		-117.04174512952926 9.5397161781643884 5.6448696862862242
		;
createNode transform -n "R_Finger_GRP" -p "R_Wrist_CTL";
	rename -uid "0747851A-4BA2-16FC-08AE-59AC7B78DC4A";
	setAttr ".t" -type "double3" 5.7648215245581111 -2.8421709430404007e-14 2.6645352591003757e-15 ;
	setAttr ".r" -type "double3" -8.4147642679099821 1.6682770188970324 -45.526802921138618 ;
	setAttr ".rp" -type "double3" -99.084385462151559 -83.019428422655537 -6.6564373058076995 ;
	setAttr ".rpt" -type "double3" -29.487002716493869 95.360655660907355 15.102818052181306 ;
	setAttr ".sp" -type "double3" -99.084385462151559 -83.019428422655537 -6.6564373058076995 ;
createNode transform -n "R_Finger_CTL" -p "R_Finger_GRP";
	rename -uid "48EA8CD3-4785-BDA1-6EB4-BA8A43FB3294";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -99.084385462151587 -83.019428422655551 -6.656437305807704 ;
	setAttr ".sp" -type "double3" -99.084385462151587 -83.019428422655551 -6.656437305807704 ;
createNode nurbsCurve -n "R_Finger_CTLShape" -p "R_Finger_CTL";
	rename -uid "7D09D88B-4B78-E1EC-204E-689C0E4DDA5D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-99.084385462151602 -84.81836772153332 -2.738379181351585
		-99.084385462151602 -85.311134898546385 -6.6564373058077075
		-99.084385462151602 -84.81836772153332 -10.574495430263831
		-99.084385462151602 -82.514621909421962 -11.347322600953204
		-99.084385462151602 -80.210876097310603 -10.574495430263831
		-99.084385462151602 -79.718108920297524 -6.6564373058077075
		-99.084385462151602 -80.210876097310603 -2.738379181351585
		-99.084385462151602 -82.514621909421962 -1.9655520106622149
		-99.084385462151602 -84.81836772153332 -2.738379181351585
		-99.084385462151602 -85.311134898546385 -6.6564373058077075
		-99.084385462151602 -84.81836772153332 -10.574495430263831
		;
createNode transform -n "L_Foot_GRP" -p "Master_CTL";
	rename -uid "1C606851-45BC-0F98-1EAB-35904FFDEDDB";
	setAttr ".t" -type "double3" 5.190157962260237 4.9706996988400078 4.5051580615945323e-09 ;
	setAttr ".r" -type "double3" 89.78561853970433 -70.881758930881844 -89.797442714425998 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "L_Foot_CTL" -p "L_Foot_GRP";
	rename -uid "EDC58CFE-4B87-9062-8C81-B2A61B74AA29";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Foot_CTLShape" -p "L_Foot_CTL";
	rename -uid "5CC1EBA8-4A6F-245F-5ED7-868BA7640F79";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0.57691669 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		20.789531959372795 1.9455205474703454 -3.6042749106161733
		19.487269266212621 1.4941131714733702 -5.1032619798901671
		-0.919051617522185 -5.5794332827956019 -4.5040039549532986
		-0.92401051001981349 -5.5811510843830243 -0.23426507831003415
		-0.92893441271692034 -5.5828590075086515 4.0313802105294263
		19.488484779750479 1.4945345112544985 5.1495904607180485
		20.781137649602766 1.942610784203771 3.6455745744735593
		20.785351942444361 1.9440704813387095 0.018911313451937761
		20.789531959372795 1.9455205474703454 -3.6042749106161733
		19.487269266212621 1.4941131714733702 -5.1032619798901671
		-0.919051617522185 -5.5794332827956019 -4.5040039549532986
		;
createNode transform -n "L_HeelLift_GRP" -p "L_Foot_CTL";
	rename -uid "DFF57DD9-4913-E4CC-960D-CA982ECECB4B";
	setAttr ".t" -type "double3" -0.22040032777710827 -5.3372588678151436 -0.088705312910004608 ;
	setAttr ".r" -type "double3" 0 179.9297862042182 19.118116955853637 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 -0.99999999999999967 ;
createNode transform -n "L_HeelLift_CTL" -p "L_HeelLift_GRP";
	rename -uid "29A8B567-4517-0700-2C9A-D08C81502E00";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_HeelLift_CTLShape" -p "L_HeelLift_CTL";
	rename -uid "7D384D9F-476E-8000-D0CB-2395DA716AB6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0.57691669 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7413134821147347 0.086509829497835505 -1.3308895750958207
		2.3554105447527158 0.51194877869240241 -1.3210320837772898
		2.0765095780766893 1.4180929202431494 -1.3434277432332609
		2.0696903510800846 1.4177273012659066 -0.041113850644898635
		2.0627591315805285 1.4173556777100802 1.2715942901331601
		2.3467005544527533 0.51148178474331552 1.3039361687278341
		1.7247482790029673 0.085621671261967736 1.349541901120852
		1.7497043717705454 0.086959714579353337 0.008847776996519563
		1.7413134821147347 0.086509829497835505 -1.3308895750958207
		2.3554105447527158 0.51194877869240241 -1.3210320837772898
		2.0765095780766893 1.4180929202431494 -1.3434277432332609
		;
createNode transform -n "L_ToeLift_GRP" -p "L_HeelLift_CTL";
	rename -uid "25F1E357-4CD3-780A-7702-56AA98700CB0";
	setAttr ".t" -type "double3" -20.224897995757715 0.65375603489139411 -0.00093185815340657285 ;
	setAttr ".r" -type "double3" 0.032680205199067586 179.39049886821329 3.0691998703301895 ;
	setAttr ".s" -type "double3" 0.99999999999999911 1 -1.0000000000000002 ;
createNode transform -n "L_ToeLift_CTL" -p "L_ToeLift_GRP";
	rename -uid "A5882896-4B1C-4299-0B80-4C8566E264C7";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_ToeLift_CTLShape" -p "L_ToeLift_CTL";
	rename -uid "D0495098-4F12-0AE6-82CF-50B85FD4CD18";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0.57691669 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7413134821147347 0.086509829497835505 -1.3308895750958207
		2.3554105447527158 0.51194877869240241 -1.3210320837772898
		2.0765095780766893 1.4180929202431494 -1.3434277432332609
		2.0696903510800846 1.4177273012659066 -0.041113850644898635
		2.0627591315805285 1.4173556777100802 1.2715942901331601
		2.3467005544527533 0.51148178474331552 1.3039361687278341
		1.7247482790029673 0.085621671261967736 1.349541901120852
		1.7497043717705454 0.086959714579353337 0.008847776996519563
		1.7413134821147347 0.086509829497835505 -1.3308895750958207
		2.3554105447527158 0.51194877869240241 -1.3210320837772898
		2.0765095780766893 1.4180929202431494 -1.3434277432332609
		;
createNode transform -n "L_Ball_GRP" -p "L_ToeLift_CTL";
	rename -uid "129B6658-407E-8C7A-9FF0-8EA06A9BDD4D";
	setAttr ".t" -type "double3" -6.8889548728406265 -8.8817841970012523e-15 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "L_Ball_CTL" -p "L_Ball_GRP";
	rename -uid "68F90135-4B44-9E41-27D7-14BC9041D12C";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Ball_CTLShape" -p "L_Ball_CTL";
	rename -uid "7B81F8C5-4512-BBD9-81C4-F5A035DD17C6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0.57691669 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0745900140233651 -1.0816676270364605 -4.4926066820460768
		-7.8036463973481505 0.27508470004442231 -4.4611705046323342
		-13.914878993892762 2.3229220196094795 -4.5325917112259795
		-13.936625949863888 2.3217560370422077 -0.37942847193131019
		-13.958730057170781 2.3205709054854471 3.806882697157564
		-7.8314231197913999 0.27359542613483812 3.9100230399225455
		-1.1274175182117165 -1.0845000210981954 4.055462670378561
		-1.0478309241742778 -1.0802329144121838 -0.22009760978156678
		-1.0745900140233651 -1.0816676270364605 -4.4926066820460768
		-7.8036463973481505 0.27508470004442231 -4.4611705046323342
		-13.914878993892762 2.3229220196094795 -4.5325917112259795
		;
createNode ikHandle -n "ikHandle1" -p "L_Ball_CTL";
	rename -uid "BE854F40-41C1-47EF-6C91-E6969F64A201";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.58436666728147 3.3326803814722927 -0.10737739927647194 ;
	setAttr ".r" -type "double3" 0 89.389623348286506 3.0690260984404421 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000007 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "30C7BA4E-4694-6365-236B-B091AE85AFCB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg_POLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0.13463007248660297 -38.081586603910921 48.402327076296167 ;
	setAttr -k on ".w0";
createNode transform -n "AnkleRotation_GRP" -p "L_Ball_CTL";
	rename -uid "108D7330-44E2-9AFD-C102-DC972311A6EF";
	setAttr ".t" -type "double3" -11.584366667281447 3.3326803814722865 -0.10737739927647016 ;
	setAttr ".r" -type "double3" 0.1769171699824334 -0.5103695266516961 -16.049895398870426 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "L_Tip_GRP" -p "L_ToeLift_CTL";
	rename -uid "CC5153FC-465C-8864-5FD2-8CAFAAFD8FE4";
	setAttr ".t" -type "double3" -6.8889548728406265 -8.8817841970012523e-15 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "L_Tip_CTL" -p "L_Tip_GRP";
	rename -uid "BA391D89-4008-26A9-E6B7-41A6A105BBD7";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Tip_CTLShape" -p "L_Tip_CTL";
	rename -uid "0C53C8FB-4F5A-3BC9-BE68-3BAC5BD7FCFD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0.57691669 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.3160948750611299 2.5286159285196481 -4.4012856285314346
		4.5939014565667122 -0.77771836435159014 -4.3298833361620988
		0.95884267780148835 -0.9726750984731205 -4.3762417345867313
		0.93709572260655072 -0.97384109551786679 -0.22307849529206175
		0.91499161607157875 -0.97502624147228389 3.9632326737968127
		4.5661247339329742 -0.77920763470966059 4.0413102083927859
		7.2632673721877001 2.5257835099317569 4.1467837238932033
		7.3428539655655909 2.5300506289196614 -0.1287765562669187
		7.3160948750611299 2.5286159285196481 -4.4012856285314346
		4.5939014565667122 -0.77771836435159014 -4.3298833361620988
		0.95884267780148835 -0.9726750984731205 -4.3762417345867313
		;
createNode transform -n "L_Leg_POL" -p "Master_CTL";
	rename -uid "165C317C-4AF8-D147-A15C-09A60EDE862D";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 5.0333649214539005 49.321323984111409 48.402327076296174 ;
	setAttr ".sp" -type "double3" 5.0333649214539014 49.321323984111416 48.402327076296181 ;
	setAttr ".spt" -type "double3" -8.8817841970012513e-16 -1.4210854715202002e-14 -1.4210854715202002e-14 ;
createNode nurbsCurve -n "L_Leg_POLShape" -p "L_Leg_POL";
	rename -uid "5DDC90AA-44F6-F526-8757-E4B740D3EBCD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 0 0.57691669 1 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.8197419392398944 48.540487545907268 48.402327076296181
		6.1415521837513332 49.325241765505446 48.402327076296181
		5.814201359658048 50.107701001897411 48.402327076296181
		5.0294471400598741 50.42951124640885 48.402327076296181
		4.2469879036679083 50.102160422315563 48.402327076296181
		3.9251776591564687 49.317406202717386 48.402327076296181
		4.2525284832497547 48.534946966325421 48.402327076296181
		5.0372827028479277 48.213136721813981 48.402327076296181
		5.8197419392398944 48.540487545907268 48.402327076296181
		6.1415521837513332 49.325241765505446 48.402327076296181
		5.814201359658048 50.107701001897411 48.402327076296181
		;
createNode transform -n "R_Leg_POL" -p "Master_CTL";
	rename -uid "F300F251-4343-DA0A-98A5-2FB6741DA1CC";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -5.0329700120405336 49.321298623572225 48.416585599527146 ;
	setAttr ".sp" -type "double3" -5.0329700120405336 49.321298623572211 48.416585599527146 ;
	setAttr ".spt" -type "double3" 0 1.4210854715202007e-14 0 ;
createNode nurbsCurve -n "R_Leg_POLShape" -p "R_Leg_POL";
	rename -uid "7443612F-466A-C70E-2BEA-BD9A31942416";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.2465929945433505 50.102135061777382 48.416606874664637
		-3.9247827501515391 49.317380842179631 48.416615687115133
		-4.2521335741251951 48.53492160578724 48.416606874664637
		-5.0368877934345591 48.213111361274777 48.416585599527146
		-5.8193470295377168 48.540462185367041 48.416564324389654
		-6.1411572739295286 49.325216404964792 48.416555511939158
		-5.8138064499558721 50.107675641357183 48.416564324389654
		-5.0290522306465082 50.429485885869646 48.416585599527146
		-4.2465929945433505 50.102135061777382 48.416606874664637
		-3.9247827501515391 49.317380842179631 48.416615687115133
		-4.2521335741251951 48.53492160578724 48.416606874664637
		;
createNode transform -n "R_Foot_GRP" -p "Master_CTL";
	rename -uid "40F3EA99-4072-7241-3663-35A9D1620CD4";
	setAttr ".t" -type "double3" -5.1901600007330799 4.9707000043367202 -2.9575638894321563e-10 ;
	setAttr ".r" -type "double3" -90.218656539248997 70.881758881526736 89.793403428782526 ;
	setAttr ".s" -type "double3" -1 -1 -1 ;
createNode transform -n "R_Foot_CTL" -p "R_Foot_GRP";
	rename -uid "E0C936C1-45C3-E17D-ED7F-7F8150536DB8";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_Foot_CTLShape" -p "R_Foot_CTL";
	rename -uid "549F915F-4D3D-73EB-A456-6B88B61180E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		20.789531959372795 1.9455205474703454 -3.6042749106161733
		19.487269266212621 1.4941131714733702 -5.1032619798901671
		-0.919051617522185 -5.5794332827956019 -4.5040039549532986
		-0.92401051001981349 -5.5811510843830243 -0.23426507831003415
		-0.92893441271692034 -5.5828590075086515 4.0313802105294263
		19.488484779750479 1.4945345112544985 5.1495904607180485
		20.781137649602766 1.942610784203771 3.6455745744735593
		20.785351942444361 1.9440704813387095 0.018911313451937761
		20.789531959372795 1.9455205474703454 -3.6042749106161733
		19.487269266212621 1.4941131714733702 -5.1032619798901671
		-0.919051617522185 -5.5794332827956019 -4.5040039549532986
		;
createNode transform -n "R_HeelLift_GRP" -p "R_Foot_CTL";
	rename -uid "C5D8FEA8-4AAF-B4A2-E173-A8920530252B";
	setAttr ".t" -type "double3" -0.22040032777710827 -5.3372588678151436 -0.088705312910004608 ;
	setAttr ".r" -type "double3" 0 179.9297862042182 19.118116955853637 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 -0.99999999999999967 ;
createNode transform -n "R_HeelLift_CTL" -p "R_HeelLift_GRP";
	rename -uid "4F506A36-46A9-F069-FA60-2CB96E4E3F77";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_HeelLift_CTLShape" -p "R_HeelLift_CTL";
	rename -uid "3EAEF227-4771-BB52-1410-30AF0768DDB5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7413134821147347 0.086509829497835505 -1.3308895750958207
		2.3554105447527158 0.51194877869240241 -1.3210320837772898
		2.0765095780766893 1.4180929202431494 -1.3434277432332609
		2.0696903510800846 1.4177273012659066 -0.041113850644898635
		2.0627591315805285 1.4173556777100802 1.2715942901331601
		2.3467005544527533 0.51148178474331552 1.3039361687278341
		1.7247482790029673 0.085621671261967736 1.349541901120852
		1.7497043717705454 0.086959714579353337 0.008847776996519563
		1.7413134821147347 0.086509829497835505 -1.3308895750958207
		2.3554105447527158 0.51194877869240241 -1.3210320837772898
		2.0765095780766893 1.4180929202431494 -1.3434277432332609
		;
createNode transform -n "R_ToeLift_GRP" -p "R_HeelLift_CTL";
	rename -uid "D0E1EF1A-441E-2A0C-6380-FAADED46DFEF";
	setAttr ".t" -type "double3" -20.224897995757715 0.65375603489139411 -0.00093185815340657285 ;
	setAttr ".r" -type "double3" 0.032680205199067586 179.39049886821329 3.0691998703301895 ;
	setAttr ".s" -type "double3" 0.99999999999999911 1 -1.0000000000000002 ;
createNode transform -n "R_ToeLift_CTL" -p "R_ToeLift_GRP";
	rename -uid "65D93E44-4AF5-406C-BF78-7A9EF4EA2E6C";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_ToeLift_CTLShape" -p "R_ToeLift_CTL";
	rename -uid "A1DF88F1-4B72-C5BB-65AB-DFAFAE08F65B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.7413134821147347 0.086509829497835505 -1.3308895750958207
		2.3554105447527158 0.51194877869240241 -1.3210320837772898
		2.0765095780766893 1.4180929202431494 -1.3434277432332609
		2.0696903510800846 1.4177273012659066 -0.041113850644898635
		2.0627591315805285 1.4173556777100802 1.2715942901331601
		2.3467005544527533 0.51148178474331552 1.3039361687278341
		1.7247482790029673 0.085621671261967736 1.349541901120852
		1.7497043717705454 0.086959714579353337 0.008847776996519563
		1.7413134821147347 0.086509829497835505 -1.3308895750958207
		2.3554105447527158 0.51194877869240241 -1.3210320837772898
		2.0765095780766893 1.4180929202431494 -1.3434277432332609
		;
createNode transform -n "R_Ball_GRP" -p "R_ToeLift_CTL";
	rename -uid "064F406D-4308-5CA1-2F23-65BC508297A8";
	setAttr ".t" -type "double3" -6.8889548728406265 -8.8817841970012523e-15 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "R_Ball_CTL" -p "R_Ball_GRP";
	rename -uid "E874B1C1-4EA7-9C24-921B-0AB6617E8089";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_Ball_CTLShape" -p "R_Ball_CTL";
	rename -uid "B7426262-4EE2-3A88-2367-1D9CD2FF6B68";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.0745900140233651 -1.0816676270364605 -4.4926066820460768
		-7.8036463973481505 0.27508470004442231 -4.4611705046323342
		-13.914878993892762 2.3229220196094795 -4.5325917112259795
		-13.936625949863888 2.3217560370422077 -0.37942847193131019
		-13.958730057170781 2.3205709054854471 3.806882697157564
		-7.8314231197913999 0.27359542613483812 3.9100230399225455
		-1.1274175182117165 -1.0845000210981954 4.055462670378561
		-1.0478309241742778 -1.0802329144121838 -0.22009760978156678
		-1.0745900140233651 -1.0816676270364605 -4.4926066820460768
		-7.8036463973481505 0.27508470004442231 -4.4611705046323342
		-13.914878993892762 2.3229220196094795 -4.5325917112259795
		;
createNode transform -n "AnkleRotation_GRP" -p "R_Ball_CTL";
	rename -uid "DB1C5C98-48DE-BFBF-F3A0-3CA72979B1DF";
	setAttr ".t" -type "double3" -11.584366667281447 3.3326803814722865 -0.10737739927647016 ;
	setAttr ".r" -type "double3" 0.1769171699824334 -0.5103695266516961 -16.049895398870426 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode ikHandle -n "ikHandle2" -p "R_Ball_CTL";
	rename -uid "E030928B-4F96-83D3-048E-1AB3B4D8EF32";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.58436666434779 3.3326803920906607 -0.10737738614956172 ;
	setAttr ".r" -type "double3" 179.99999310040303 -89.388223247437281 -176.93097200447932 ;
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999989 -0.99999999999999978 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle2_poleVectorConstraint1" -p "ikHandle2";
	rename -uid "B28796B5-4ED0-C7E8-8B90-169236403912";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg_POLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -0.13424001204053404 -38.081601376427763 48.416585599527146 ;
	setAttr -k on ".w0";
createNode transform -n "R_Tip_GRP" -p "R_ToeLift_CTL";
	rename -uid "29616678-4A32-5144-CE0F-F0B04857226C";
	setAttr ".t" -type "double3" -6.8889548728406265 -8.8817841970012523e-15 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "R_Tip_CTL" -p "R_Tip_GRP";
	rename -uid "06821364-4312-D555-2E4A-78AC910561E9";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_Tip_CTLShape" -p "R_Tip_CTL";
	rename -uid "DF26FB6A-4AFF-CBDE-A8ED-8A84512E32B3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".ovrgb" -type "float3" 1 0 0 ;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.3160948750611299 2.5286159285196481 -4.4012856285314346
		4.5939014565667122 -0.77771836435159014 -4.3298833361620988
		0.95884267780148835 -0.9726750984731205 -4.3762417345867313
		0.93709572260655072 -0.97384109551786679 -0.22307849529206175
		0.91499161607157875 -0.97502624147228389 3.9632326737968127
		4.5661247339329742 -0.77920763470966059 4.0413102083927859
		7.2632673721877001 2.5257835099317569 4.1467837238932033
		7.3428539655655909 2.5300506289196614 -0.1287765562669187
		7.3160948750611299 2.5286159285196481 -4.4012856285314346
		4.5939014565667122 -0.77771836435159014 -4.3298833361620988
		0.95884267780148835 -0.9726750984731205 -4.3762417345867313
		;
createNode transform -n "Main_MOD_MASTER:MainC_GEO";
	rename -uid "DCBE7284-4C0C-0FD5-F860-B0A08A81906F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -0.16626401245593669 2.265223503112793 ;
	setAttr ".sp" -type "double3" 0 -0.16626401245593669 2.265223503112793 ;
createNode mesh -n "Main_MOD_MASTER:MainC_GEOShape" -p "Main_MOD_MASTER:MainC_GEO";
	rename -uid "1390922E-43D4-D590-717C-D285F905261C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 15 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 20 "e[287]" "e[958]" "e[965:967]" "e[994]" "e[998]" "e[1000]" "e[1133]" "e[1442]" "e[1444:1445]" "e[1475]" "e[1477]" "e[1750]" "e[1752]" "e[1755]" "e[1761]" "e[1878:1879]" "e[1881:1882]" "e[1925]" "e[1927]" "e[1999:2000]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 11 "f[440]" "f[451]" "f[666]" "f[756:763]" "f[811]" "f[871]" "f[881:887]" "f[891]" "f[931:937]" "f[945:951]" "f[959:965]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 5 "e[1607:1614]" "e[1892:1898]" "e[2001:2007]" "e[2029:2035]" "e[2057:2063]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "vtx[871:878]" "vtx[887]" "vtx[1032:1038]" "vtx[1046]" "vtx[1092:1098]" "vtx[1106:1113]" "vtx[1121:1128]" "vtx[1136]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 5 "vtx[871:878]" "vtx[1032:1038]" "vtx[1092:1098]" "vtx[1107:1113]" "vtx[1122:1128]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "vtx[871:886]" "vtx[1032:1045]" "vtx[1092:1105]" "vtx[1107:1120]" "vtx[1122:1135]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 6 "vtx[879:886]" "vtx[888]" "vtx[1039:1045]" "vtx[1099:1105]" "vtx[1114:1120]" "vtx[1129:1135]";
	setAttr ".gtag[7].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 5 "vtx[879:886]" "vtx[1039:1045]" "vtx[1099:1105]" "vtx[1114:1120]" "vtx[1129:1135]";
	setAttr ".gtag[8].gtagnm" -type "string" "front";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 19 "e[284]" "e[955]" "e[957]" "e[959:960]" "e[988]" "e[992]" "e[994]" "e[1131]" "e[1441]" "e[1463]" "e[1465:1468]" "e[1754]" "e[1756]" "e[1759]" "e[1761]" "e[1875:1876]" "e[1879:1880]" "e[1921:1922]" "e[1925:1926]";
	setAttr ".gtag[9].gtagnm" -type "string" "left";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 20 "e[285]" "e[955]" "e[969]" "e[974]" "e[976]" "e[1002:1003]" "e[1008]" "e[1141]" "e[1449]" "e[1451]" "e[1481:1483]" "e[1758]" "e[1763]" "e[1765:1766]" "e[1886]" "e[1889:1891]" "e[1927]" "e[1930]" "e[1936]" "e[1998]";
	setAttr ".gtag[10].gtagnm" -type "string" "right";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 20 "e[286]" "e[956]" "e[970]" "e[973]" "e[1000]" "e[1004]" "e[1006]" "e[1078]" "e[1135]" "e[1447]" "e[1470:1472]" "e[1482]" "e[1484]" "e[1753]" "e[1756]" "e[1763:1764]" "e[1883]" "e[1887:1889]" "e[1923]" "e[1933:1935]";
	setAttr ".gtag[11].gtagnm" -type "string" "rim";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 1 "e[284:287]";
	setAttr ".gtag[12].gtagnm" -type "string" "sides";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 5 "f[748:755]" "f[874:880]" "f[924:930]" "f[938:944]" "f[952:958]";
	setAttr ".gtag[13].gtagnm" -type "string" "top";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 7 "f[438]" "f[449]" "f[664]" "f[764:771]" "f[809]" "f[869]" "f[889]";
	setAttr ".gtag[14].gtagnm" -type "string" "topRing";
	setAttr ".gtag[14].gtagcmp" -type "componentList" 5 "e[1615:1622]" "e[1899:1905]" "e[2008:2014]" "e[2036:2042]" "e[2064:2070]";
	setAttr ".pv" -type "double2" 0.5797465443611145 0.66581821441650391 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 2218 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.23300093 0.32347178 0.22956544
		 0.32433426 0.22138017 0.32423025 0.21792006 0.32320702 0.21514231 0.32190657 0.21213055
		 0.31996274 0.20642769 0.31417423 0.21164082 0.29009509 0.29925174 0.30118102 0.2655015
		 0.4194929 0.26761484 0.29918897 0.27114111 0.29748982 0.27997881 0.29524821 0.2839992
		 0.29513216 0.28742105 0.29549766 0.29133505 0.29652607 0.22584146 0.39219421 0.23203442
		 0.24714816 0.2314357 0.23838717 0.21377409 0.40396011 0.22808141 0.3556478 0.22312567
		 0.26923513 0.20023139 0.24527162 0.16075206 0.36669946 0.16199917 0.38620758 0.20366368
		 0.23674858 0.20694304 0.26828033 0.18501979 0.33711898 0.17554814 0.36820841 0.17826468
		 0.36862898 0.1711325 0.38651228 0.16792327 0.38539028 0.19120848 0.34302372 0.19448477
		 0.34474361 0.21116781 0.38148141 0.21352506 0.38314414 0.20901549 0.40004331 0.20583642
		 0.39872277 0.2158947 0.35499519 0.21935749 0.35661006 0.1906535 0.41905797 0.18870372
		 0.41648257 0.22470009 0.22248912 0.1929729 0.42209423 0.16594213 0.42481351 0.17941886
		 0.4321816 0.17349303 0.4218483 0.17288727 0.42638552 0.26079315 0.36362046 0.33510596
		 0.23382229 0.3303268 0.21550012 0.2647658 0.35388374 0.26266396 0.39209318 0.31597096
		 0.27023315 0.25777823 0.22055513 0.29765981 0.37343729 0.29698259 0.36246264 0.26979539
		 0.20328867 0.26392776 0.26304185 0.2813881 0.39707857 0.27572846 0.22889608 0.27287328
		 0.22772318 0.27553707 0.20684791 0.27926961 0.20761842 0.27744687 0.26121879 0.27329916
		 0.2609666 0.31803763 0.23538309 0.31480891 0.23561788 0.31967402 0.21594721 0.32349038
		 0.21651459 0.30830574 0.2642833 0.30396312 0.26379806 0.32079399 0.18599778 0.32411981
		 0.18485218 0.3081407 0.1677283 0.29113245 0.16844994 0.31344932 0.18893313 0.31681103
		 0.18758041 0.30190188 0.17497331 0.30017594 0.17032611 0.46464807 0.38293123 0.46173328
		 0.38415933 0.44647622 0.37948257 0.44882381 0.37734115 0.42178208 0.30497104 0.42457414
		 0.30487472 0.42994332 0.41157752 0.4276101 0.41354448 0.42218351 0.38168901 0.42490059
		 0.38114291 0.40811026 0.3040846 0.41088217 0.30413508 0.36826032 0.3123582 0.36557406
		 0.31184661 0.36866319 0.16789907 0.37137502 0.16835761 0.35866058 0.39255881 0.35584611
		 0.39151567 0.34536552 0.40472811 0.34326631 0.40369451 0.38293666 0.31025559 0.38020074
		 0.31029278 0.3779763 0.1684826 0.38068724 0.16812444 0.38270491 0.39091367 0.37993926
		 0.39144921 0.38550901 0.42400891 0.38281846 0.42329597 0.39606094 0.16493982 0.39875615
		 0.16454059 0.38690966 0.16682494 0.38956553 0.1662122 0.35273862 0.3049264 0.33867496
		 0.37765092 0.40513319 0.38667166 0.39736217 0.30808276 0.40340137 0.15945953 0.38437206
		 0.16870373 0.32888961 0.38844287 0.40930551 0.4191041 0.40348077 0.55464596 0.40334588
		 0.55512953 0.38705027 0.54952896 0.38716987 0.54886591 0.421799 0.56437445 0.42143455
		 0.56490862 0.36338055 0.53580499 0.36354086 0.53521597 0.23409545 0.4938139 0.23393366
		 0.49332318 0.25185221 0.48952198 0.25185901 0.49016371 0.2240607 0.49412185 0.22361165
		 0.49372321 0.28173533 0.49054822 0.28157812 0.49118 0.30362123 0.49320054 0.30332756
		 0.49368101 0.29208544 0.49144405 0.29231787 0.49087775 0.30672532 0.49482703 0.30628395
		 0.49511263 0.32325059 0.50072384 0.32281792 0.50124186 0.43291306 0.56904554 0.13193411
		 0.54939246 0.40285474 0.54235876 0.40306604 0.54183382 0.42882138 0.54859287 0.42873251
		 0.54921025 0.39131725 0.53384936 0.39157975 0.53325617 0.44636387 0.55335224 0.13597637
		 0.53092575 0.15825272 0.53660512 0.15857476 0.53714693 0.15917465 0.51958829 0.15890683
		 0.5203622 0.29528487 0.50546324 0.29545346 0.50501192 0.30144805 0.50437582 0.30131933
		 0.50494987 0.28513643 0.50562811 0.28538585 0.50490749 0.27470681 0.50737321 0.27499589
		 0.50670123 0.2364883 0.5032686 0.23653218 0.50368685 0.23276033 0.50391191 0.2326327
		 0.50332415 0.24836832 0.50470215 0.24834871 0.50534213 0.35549891 0.53205025 0.35561976
		 0.5314582 0.36610577 0.52091151 0.36625198 0.52030247 0.34605497 0.51251388 0.34626722
		 0.51193994 0.35704103 0.51710755 0.35690683 0.51766807 0.34286848 0.52788568 0.34301895
		 0.52727878 0.31447285 0.51634002 0.31466219 0.51567966 0.23325653 0.48395815 0.25347361
		 0.48113525 0.30557358 0.4842639 0.30975759 0.48961845 0.40504479 0.53445458 0.43007827
		 0.54038221 0.44487816 0.54389721 0.21578068 0.48870659 0.159758 0.513587 0.39201951
		 0.52575237 0.36005211 0.51146501 0.36954242 0.51459491 0.32922435 0.4956944 0.35033095
		 0.50575119 0.28046635 0.48214844 0.2919791 0.48235393 0.39359468 0.56697392 0.37594575
		 0.55915701 0.41095522 0.5780133 0.14938045 0.55109811 0.28362501 0.52236259 0.27396604
		 0.52360964 0.22943906 0.51714057 0.22088799 0.52050328 0.16824262 0.54215294 0.35660046
		 0.54674876 0.33947128 0.53954619 0.31646335 0.53109497 0.30140305 0.51985592 0.29453236
		 0.52290821 0.34967369 0.54222512 0.24918991 0.52316761 0.23093764 0.83539879 0.26485953
		 0.86068726 0.26550409 0.86181146 0.27299008 0.87972951 0.21936344 0.88723159 0.29842928
		 0.83331263 0.31282547 0.88472486 0.26608482 0.86064893 0.38340217 0.85329413 0.36819243
		 0.8208704 0.3706913 0.81787002 0.3956306 0.84152049 0.34252149 0.83820784 0.48165035
		 0.73682135 0.4817706 0.76957053 0.4768571 0.73836821 0.26005089 0.66452432 0.25916237
		 0.66451985 0.25833839 0.64942122 0.25984341 0.64936113 0.26135254 0.69686741 0.25990671
		 0.69690615 0.26182771 0.7152282 0.26051909 0.71525228 0.22457263 0.65756738 0.22546691
		 0.65783775 0.21996239 0.69521731 0.2182519 0.69490516 0.22599205 0.64795071 0.2283852
		 0.64800709 0.22054702 0.71446824 0.21900927 0.71452957 0.29414669 0.65522277 0.29327133
		 0.655559;
	setAttr ".uvst[0].uvsp[250:499]" 0.28968844 0.64594281 0.29209355 0.64571971
		 0.30282196 0.69216204 0.30113494 0.69259149 0.30322635 0.71183872 0.30169314 0.7118839
		 0.4177627 0.9351747 0.4178099 0.93621397 0.35766435 0.90975332 0.41836882 0.93587923
		 0.45068017 0.89088088 0.45129108 0.89236808 0.42134067 0.94906807 0.42054433 0.94940555
		 0.42039704 0.95020735 0.42199069 0.94940156 0.43228847 0.94982022 0.43189994 0.95096606
		 0.36493576 0.91583925 0.45973879 0.90540957 0.46040636 0.90648025 0.46117154 0.90598232
		 0.46839181 0.91667628 0.46738732 0.91725439 0.46044457 0.90493381 0.45271301 0.89146996
		 0.51868081 0.89324647 0.51880872 0.8937912 0.50955099 0.88412404 0.50987852 0.88502443
		 0.51037818 0.88485646 0.51050818 0.81793082 0.51936209 0.89286399 0.52006292 0.89280754
		 0.51208842 0.82172358 0.525989 0.88478225 0.51526868 0.90183866 0.41274256 0.82885265
		 0.41329205 0.82945251 0.39708731 0.84359986 0.39664567 0.84289885 0.41328025 0.82875681
		 0.41034961 0.82619005 0.41077936 0.82519251 0.41374612 0.82938063 0.4415842 0.80907685
		 0.4422034 0.80969632 0.42559218 0.84627688 0.42494136 0.8465938 0.46672216 0.78392482
		 0.46739683 0.78496271 0.44283092 0.80927575 0.44232875 0.80855048 0.46699414 0.78310281
		 0.46524477 0.78089929 0.46645838 0.78074676 0.46702898 0.78439641 0.48193628 0.77152061
		 0.48233211 0.77223265 0.48144367 0.79907531 0.48102069 0.79974306 0.45645761 0.82508123
		 0.4558621 0.82558149 0.43926889 0.80622649 0.44003832 0.80566758 0.50273991 0.75839919
		 0.33945763 0.84152001 0.38184991 0.85694909 0.38246191 0.85748041 0.37372613 0.8143577
		 0.37364104 0.81346691 0.42742449 0.77850491 0.47273335 0.73950255 0.42186946 0.78275484
		 0.42249444 0.78227895 0.49296665 0.78216898 0.39023855 0.8627755 0.33498377 0.84779638
		 0.40556893 0.85437411 0.37181288 0.93314892 0.26320726 0.80303442 0.26326823 0.80356932
		 0.21261165 0.81223065 0.2127772 0.81173813 0.26428962 0.80300111 0.26425129 0.80353749
		 0.31514341 0.80851656 0.31534791 0.80899942 0.21204732 0.81227279 0.21140663 0.81219935
		 0.31654006 0.80888319 0.31591347 0.80899942 0.24202548 0.91590607 0.19416329 0.89254761
		 0.1940251 0.89172667 0.33831936 0.88816261 0.3382023 0.88899744 0.21234667 0.81228095
		 0.31561688 0.80902708 0.33882734 0.88712645 0.19348928 0.89072233 0.20134863 0.65408492
		 0.20236155 0.65454817 0.18672279 0.68547094 0.18487346 0.68475938 0.20829843 0.64305741
		 0.21049735 0.64403361 0.18175718 0.70505923 0.18018313 0.70419055 0.13342568 0.79189926
		 0.19357988 0.89287478 0.31719404 0.65021157 0.31621197 0.6507408 0.30746162 0.64072585
		 0.3096348 0.63959748 0.33551461 0.6799311 0.33371812 0.68077821 0.34142604 0.69911468
		 0.3399049 0.70007384 0.39426658 0.78368479 0.33942369 0.88699102 0.35932025 0.66290623
		 0.3460018 0.62823492 0.36885521 0.67813432 0.33120567 0.61890495 0.090811491 0.75928324
		 0.79320842 0.17040657 0.81370932 0.20382667 0.78867602 0.22451974 0.76910239 0.19233815
		 0.85946059 0.17105098 0.83923614 0.13903426 0.84095132 0.13799357 0.60376209 0.20026486
		 0.73938525 0.21962421 0.74393517 0.26004201 0.74128914 0.26048198 0.73861545 0.21985768
		 0.73600394 0.29005641 0.73402989 0.28982192 0.9191553 0.42426771 0.98261386 0.36031348
		 0.95808178 0.38002664 0.94882995 0.38849771 0.60064232 0.80688566 0.54185128 0.70156908
		 0.59862792 0.78473365 0.622105 0.79346716 0.5747298 0.68611729 0.18064284 0.1204851
		 0.04808116 0.12630358 0.040682316 0.10851803 0.18108416 0.10995635 0.039321065 0.036377877
		 0.18758154 0.060585946 0.18603349 0.070600122 0.054295301 0.043889433 0.19530046
		 0.11349973 0.19423485 0.12526461 0.20037937 0.070936412 0.20259047 0.057257324 0.21057987
		 0.11498395 0.21130371 0.12487152 0.21211278 0.061894625 0.20958424 0.070860118 0.58395052
		 0.74427396 0.57965446 0.74960917 0.35390663 0.079868287 0.35304332 0.086540967 0.62831426
		 0.7766453 0.61377299 0.77132118 0.60698545 0.67281139 0.65568078 0.80579913 0.70307779
		 0.82318401 0.65225625 0.65158325 0.69235384 0.66174567 0.6808182 0.64687109 0.67906392
		 0.64572632 0.66944093 0.18243486 0.70031214 0.19719203 0.68795961 0.23392355 0.65832806
		 0.22035609 0.60496676 0.20174436 0.61523116 0.16551997 0.73781991 0.21963385 0.73865706
		 0.26004636 0.7533682 0.28737527 0.53670877 0.41690987 0.52726519 0.41400546 0.57660002
		 0.43428302 0.56550747 0.42875969 0.63399053 0.57221282 0.53763103 0.66413701 0.53833556
		 0.64412117 0.56337285 0.64489824 0.64742637 0.5886845 0.56087136 0.11888017 0.56275594
		 0.10850687 0.70000124 0.1372039 0.71481764 0.14226058 0.70049429 0.055919781 0.70051384
		 0.071146682 0.56601357 0.068958297 0.56660032 0.058845714 0.54658401 0.12064888 0.54820001
		 0.10899039 0.55181241 0.066365376 0.55252862 0.052531973 0.5358088 0.11797483 0.53914547
		 0.10880531 0.53998184 0.066694871 0.54091787 0.057445899 0.39366496 0.081312671 0.39543128
		 0.074814454 0.60736108 0.60237861 0.61273479 0.60661387 0.55441332 0.62676036 0.54935217
		 0.61253303 0.61101222 0.55142009 0.59768629 0.53800887 0.50258708 0.64285988 0.52188563
		 0.64354604 0.54341054 0.59784406 0.53567791 0.58093846 0.58589387 0.60148615 0.58867002
		 0.60388261 0.58951139 0.60495085 0.58917212 0.60575533 0.56375623 0.50140733 0.55808091
		 0.49245155 0.53910446 0.4862318 0.43968034 0.6406135 0.45213199 0.64105839 0.60287708
		 0.44990098 0.92753834 0.41102386 0.51695204 0.51906747 0.50876331 0.50463343 0.53114223
		 0.50989962 0.5072751 0.50603026 0.51234078 0.53669047 0.45273852 0.62407792 0.59857202
		 0.78366303 0.64837158 0.73591822 0.68516743 0.70461923 0.70892847 0.80723262 0.71020401
		 0.80664212 0.69470119 0.69939744 0.70199454 0.67536813 0.68896902 0.68563718 0.67927945
		 0.67178833;
	setAttr ".uvst[0].uvsp[500:749]" 0.56522799 0.080702618 0.54837942 0.079542294
		 0.5390439 0.072457626 0.40090108 0.053894356 0.39977801 0.05273594 0.59048581 0.60705781
		 0.59124851 0.60602564 0.53433383 0.1002924 0.54794323 0.096922114 0.56378913 0.099498704
		 0.69556284 0.12409319 0.69820952 0.086518124 0.1843946 0.082256526 0.053259254 0.059405714
		 0.047919512 0.096654862 0.18200016 0.10094044 0.19818163 0.1016728 0.20802927 0.10924849
		 0.35012376 0.10799941 0.35134649 0.10905102 0.58953345 0.73876512 0.63485694 0.74867582
		 0.6375525 0.79914665 0.5895561 0.68026185 0.21173048 0.081910878 0.58002579 0.72705877
		 0.58068144 0.72807592 0.20110774 0.084503084 0.58952391 0.73789287 0.59070504 0.73722064
		 0.59417617 0.73604655 0.45376706 0.62312031 0.72343379 0.21106227 0.72444278 0.21195607
		 0.7156142 0.24750489 0.71418279 0.24673818 0.59053707 0.44156891 0.5892868 0.44081604
		 0.5463261 0.42042226 0.54494041 0.41987813 0.62872177 0.20955981 0.63019103 0.21008183
		 0.63908994 0.17174208 0.64060271 0.17220272 0.81712884 0.15270376 0.81841713 0.15183784
		 0.83901918 0.18528695 0.83772123 0.1861356 0.97552931 0.36556822 0.97434592 0.36649704
		 0.93829536 0.39843124 0.93728262 0.39950687 0.76500261 0.24406211 0.76627129 0.24304855
		 0.75054175 0.21132924 0.75123042 0.2102419 0.58141887 0.72501922 0.60183215 0.59653372
		 0.56382895 0.64392805 0.58277643 0.72683114 0.583987 0.72366917 0.58772743 0.72227508
		 0.5857836 0.73131347 0.58672774 0.73279536 0.21016645 0.094207972 0.21038365 0.092115551
		 0.6556499 0.65907401 0.65643883 0.66108733 0.68020117 0.69497329 0.67954457 0.69727802
		 0.59622872 0.73362303 0.66781127 0.65513587 0.66866338 0.6565268 0.68935096 0.68714595
		 0.59965348 0.59718198 0.59708333 0.59113514 0.60003185 0.5938319 0.5940721 0.6013025
		 0.59545255 0.60019696 0.53787458 0.085297063 0.5376997 0.087387219 0.54673338 0.49975854
		 0.54802227 0.49880975 0.55778456 0.50706476 0.55629802 0.50863028 0.51603031 0.52032083
		 0.52130055 0.53341091 0.52155805 0.53102887 0.58490181 0.59846747 0.56470501 0.088837519
		 0.56481588 0.086738065 0.69794393 0.10314091 0.69815636 0.10507263 0.54723525 0.087470546
		 0.54705095 0.086300507 0.59731483 0.62533027 0.40217853 0.032834604 0.52769685 0.1229368
		 0.54265893 0.048515752 0.54427218 0.13416514 0.55389357 0.04123719 0.55869019 0.12884083
		 0.56696343 0.048811451 0.68429112 0.16772655 0.73264861 0.071941987 0.71308041 0.12003209
		 0.71428967 0.087717965 0.18329239 0.090331703 0.18359447 0.088254064 0.20117438 0.091417402
		 0.20079243 0.092536956 0.049340487 0.077531546 0.049956322 0.075690061 0.03168869
		 0.088938683 0.03725934 0.057102591 0.01113987 0.10371026 0.061429262 0.013237685
		 0.18058002 0.13067427 0.18935072 0.050704628 0.19336045 0.13898954 0.20365024 0.045937568
		 0.20520234 0.13151422 0.21482229 0.05796805 0.35189176 0.12837765 0.56117809 0.7343111
		 0.61656106 0.71264547 0.66765392 0.67927331 0.59333229 0.59887308 0.5739491 0.57139271
		 0.59479427 0.59844869 0.53908658 0.521231 0.59251189 0.60014975 0.58827364 0.73084414
		 0.58706439 0.72990233 0.58855712 0.73232102 0.97259241 0.93013942 0.97340715 0.93014497
		 0.97373372 0.93070102 0.61706132 0.92673093 0.95328331 0.98475945 0.95298773 0.98396188
		 0.95283365 0.98525685 0.90210909 0.98601019 0.9020825 0.98471975 0.55705637 0.92239171
		 0.86449736 0.98462021 0.86499119 0.9840486 0.86373854 0.98434037 0.51112908 0.91787803
		 0.85120773 0.9290421 0.85200644 0.92904943 0.85082895 0.92849028 0.77266377 0.9317534
		 0.86554426 0.87368828 0.86602581 0.87427109 0.90317142 0.87307602 0.90312082 0.87436491
		 0.86594969 0.87299722 0.90171421 0.92953402 0.9538728 0.87610787 0.66281205 0.93144369
		 0.95423245 0.87525761 0.95499623 0.87552154 0.70877939 0.93021142 0.81346458 0.98428464
		 0.93389869 0.82977504 0.92886508 0.79448259 0.77067822 0.98698431 0.50444037 0.96250093
		 0.81372219 0.96405119 0.51003069 0.94288397 0.54707938 0.97675639 0.92311192 0.86367524
		 0.54779929 0.97716296 0.55007213 0.9517557 0.55110747 0.95206457 0.90549064 0.86376238
		 0.90542734 0.86310118 0.57981628 0.98390019 0.57553226 0.86519331 0.89054012 0.86170226
		 0.6801911 0.86151236 0.66100603 0.98075807 0.68163228 0.90175593 0.68063349 0.90175933
		 0.66094488 0.95813602 0.66205877 0.95821476 0.60255301 0.86464506 0.61554617 0.98558903
		 0.6487636 0.90188849 0.64851159 0.90302372 0.6147278 0.95836121 0.61583334 0.95830464
		 0.62356383 0.89794737 0.86160773 0.84729862 0.65015554 0.91326988 0.85045797 0.83946121
		 0.68114001 0.90307695 0.71350288 0.90153301 0.71376747 0.90266544 0.68018752 0.91385424
		 0.85168958 0.82303023 0.71223849 0.91291595 0.85311788 0.80661547 0.89631861 0.79109448
		 0.89627856 0.79043442 0.74076885 0.99006695 0.91127276 0.79213834 0.86538136 0.80064923
		 0.73865753 0.89731133 0.7576589 0.86380094 0.70611161 0.98922008 0.70706362 0.96165305
		 0.70816404 0.96178675 0.76996642 0.98726892 0.91144145 0.79149562 0.77189571 0.96189916
		 0.77296692 0.96183002 0.89313096 0.82636553 0.86299503 0.82393563 0.90768445 0.8275553
		 0.57761532 0.96025884 0.74474901 0.96665293 0.82225096 0.825504 0.82223308 0.82542509
		 0.78580046 0.92257589 0.83642519 0.82497394 0.82131612 0.8111071 0.82130659 0.81088603
		 0.77300727 0.91004312 0.8355552 0.81049144 0.82074845 0.79617417 0.82075882 0.79584986
		 0.77133608 0.89268303 0.83510154 0.79561216 0.82300377 0.77934885 0.82300317 0.77925926
		 0.83832788 0.89889699 0.83725595 0.77927244 0.79403085 0.91406679 0.83653688 0.81735301
		 0.79321241 0.90034741 0.79815871 0.91207552 0.83594251 0.80313784 0.79301894 0.8998884
		 0.83692694 0.78744996 0.78807223 0.88815892 0.82341528 0.83267325 0.80179679 0.92100978
		 0.824871 0.83907771;
	setAttr ".uvst[0].uvsp[750:999]" 0.80190682 0.92096341 0.82161844 0.8180995
		 0.82100415 0.80389321 0.82121909 0.78796118 0.82487172 0.83915484 0.82249606 0.85285103
		 0.83667767 0.85312706 0.81430387 0.9105556 0.82247955 0.85293019 0.82181901 0.86726236
		 0.83606696 0.86762309 0.81425911 0.89264613 0.82181346 0.86748362 0.82151866 0.88220346
		 0.83587956 0.8825081 0.80299413 0.87933213 0.82153481 0.88252759 0.82407528 0.89898688
		 0.83832669 0.89880753 0.80246574 0.91050953 0.80732095 0.90120447 0.80329281 0.89125502
		 0.79278684 0.8864553 0.82353169 0.84566212 0.82487261 0.83923209 0.83912444 0.83910429
		 0.82199621 0.86026537 0.82163644 0.87448049 0.82213652 0.89040697 0.25688696 0.57546723
		 0.28965843 0.57571292 0.2916559 0.59536481 0.25931406 0.59689468 0.20836222 0.57076395
		 0.23215592 0.57642072 0.23301199 0.59344685 0.20458163 0.5912416 0.32289165 0.5694685
		 0.32381299 0.58976799 0.16919327 0.58546209 0.35077068 0.55902302 0.29267764 0.60668886
		 0.25976956 0.60576856 0.23630899 0.60499644 0.20522785 0.60548437 0.32432133 0.59877229
		 0.17720683 0.60202169 0.26019156 0.56827569 0.28822953 0.56321204 0.21326168 0.55740541
		 0.23921013 0.56537598 0.31694078 0.56305236 0.33249283 0.55525947 0.784612 0.53138757
		 0.78220469 0.47765374 0.80441016 0.47719979 0.80513436 0.53759515 0.77925509 0.4386996
		 0.80391222 0.43804336 0.77454871 0.5283742 0.76910704 0.47789729 0.76366168 0.43931437
		 0.8059445 0.47718167 0.80660516 0.53757834 0.80551571 0.43802631 0.82845789 0.53090703
		 0.8080762 0.53756285 0.80747896 0.47716618 0.82968909 0.47713351 0.80711919 0.43800795
		 0.83178526 0.43812382 0.83845264 0.52767408 0.84278899 0.47709036 0.8473888 0.43839741
		 0.75771159 0.47811329 0.75862294 0.47806227 0.76440233 0.53826714 0.76352257 0.53874123
		 0.75134128 0.44008088 0.75233442 0.43999767 0.78280872 0.54829216 0.75963002 0.56135297
		 0.80519778 0.55770409 0.75398058 0.58474982 0.80682665 0.55772913 0.86094266 0.58522654
		 0.80845457 0.55766809 0.86024922 0.58358741 0.83063108 0.5477668 0.85408932 0.56031883
		 0.85418636 0.4770571 0.85327441 0.4770261 0.85872871 0.43883312 0.85972339 0.43889439
		 0.84970289 0.53779757 0.84881288 0.53734267 0.68516964 0.49005294 0.68621451 0.48953199
		 0.70285314 0.5225327 0.70171934 0.52272534 0.67451888 0.45370173 0.67581981 0.45315504
		 0.70489067 0.53625453 0.70368725 0.53607619 0.70508498 0.54109514 0.70408517 0.54063141
		 0.92546731 0.56072426 0.68949264 0.56427395 0.90819484 0.53885722 0.90914875 0.53838813
		 0.92697102 0.48740745 0.92590982 0.48690748 0.93551165 0.45031357 0.93682414 0.45083153
		 0.91113144 0.52042794 0.91001254 0.52026355 0.90948516 0.53382778 0.90826613 0.53403008
		 0.96526295 0.51190686 0.93996018 0.54743969 0.98321921 0.4752264 0.92864972 0.55810595
		 0.75206083 0.66133398 0.75759679 0.66135448 0.75730753 0.73928201 0.74975848 0.73925406
		 0.72763127 0.74578243 0.72011727 0.745058 0.7870211 0.6617552 0.73368061 0.66206801
		 0.76313269 0.66137499 0.76485646 0.73931015 0.78693426 0.74600267 0.78150696 0.66224557
		 0.27778876 0.91952246 0.2942189 0.92062408 0.29472291 0.93416512 0.27911097 0.93143791
		 0.25495702 0.94165283 0.34609747 0.94653237 0.35349935 0.93661255 0.2478679 0.93057579
		 0.26642668 0.93654847 0.2614941 0.92426646 0.28783208 0.9360823 0.27939415 0.93430161
		 0.25658351 0.94386363 0.34437168 0.94877416 0.26758772 0.93941671 0.28230804 0.9423629
		 0.27697021 0.94275713 0.26226342 0.94796997 0.3385976 0.95226407 0.26984429 0.94483638
		 0.29936332 0.94483411 0.28685737 0.96226531 0.28234977 0.96322989 0.2699613 0.9670977
		 0.26021045 0.97178692 0.27633578 0.96476626 0.29731631 0.96094674 0.31054074 0.91834146
		 0.31009907 0.93031561 0.33490235 0.93888074 0.34121913 0.92733562 0.32311314 0.93454713
		 0.32716411 0.92194718 0.31002343 0.93319178 0.30173826 0.93557084 0.33342946 0.94119877
		 0.32215649 0.93749106 0.31302273 0.94145995 0.3076759 0.94143432 0.32803476 0.94567949
		 0.32026768 0.9430548 0.30897933 0.96222645 0.30442208 0.9615711 0.32157749 0.96527839
		 0.31507277 0.9633646 0.2143935 0.053805143 0.20407128 0.0440723 0.18970823 0.048739463
		 0.021217346 0.038778216 0.035693884 0.058331221 0.7155509 0.089256242 0.70018458
		 0.03769584 0.56703079 0.046815887 0.55387008 0.039323881 0.54191172 0.049112335 0.88990253
		 0.15718067 0.99083096 0.35473257 0.57143593 0.19568516 0.57167107 0.19762139 0.6148091
		 0.46010894 0.75526667 0.28682068 0.88942337 0.15528908 0.61326748 0.1650901 0.86016899
		 0.16928548 0.20532155 0.12515733 0.21507144 0.055990607 0.21167731 0.13111803 0.52949989
		 0.11693676 0.54172039 0.046679631 0.53443778 0.1241482 0.54223013 0.055111662 0.5416795
		 0.051092163 0.21308041 0.055393904 0.21404314 0.064321429 0.21808347 0.95269012 0.20287147
		 0.93313122 0.22269303 0.93360603 0.2029666 0.9291575 0.22276723 0.92963183 0.20306174
		 0.92518389 0.22286239 0.92565823 0.20315695 0.92121017 0.22295758 0.92168462 0.20325214
		 0.91723645 0.22305271 0.91771072 0.20268099 0.9410786 0.22248156 0.94155312 0.20277616
		 0.937105 0.22257677 0.93757951 0.21925232 0.95366573 0.22342902 0.96281666 0.21847585
		 0.9725427 0.21183506 0.96254754 0.20778263 0.97472429 0.21133134 0.96313691 0.19941127
		 0.96772885 0.21056092 0.96374047 0.19965762 0.95682609 0.20972747 0.963045 0.20833403
		 0.95021629 0.21018401 0.9621796 0.21067402 0.96157908 0.22101653 0.92912209 0.20064136
		 0.92901814 0.22099571 0.93321109 0.20062046 0.93310714 0.22097491 0.93730003 0.20059961
		 0.93719614 0.220954 0.94138914 0.20057875 0.94128507 0.22093311 0.94547814 0.2005579
		 0.94537425 0.22105832 0.92094409 0.20068312 0.92083991 0.22103751 0.92503303 0.20066224
		 0.92492878;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.2020504 0.97009844 0.201004 0.95926189 0.20882419
		 0.95168757 0.2196226 0.95307869 0.2252671 0.96238828 0.22150776 0.97260571 0.21117492
		 0.9760375 0.21277869 0.96359402 0.20197067 0.93461055 0.22199303 0.93479156 0.202007
		 0.93059236 0.22202942 0.93077338 0.20204331 0.92657423 0.22206572 0.92675507 0.20207962
		 0.9225558 0.22210209 0.92273712 0.20211595 0.91853774 0.22213835 0.9187187 0.20189795
		 0.94264686 0.22192034 0.94282818 0.20193425 0.93862873 0.2219567 0.93880999 0.22379255
		 0.96260798 0.21890092 0.97253978 0.20808613 0.9749074 0.19949134 0.96792817 0.19958942
		 0.95685744 0.20830598 0.95003182 0.21907797 0.95259094 0.2110348 0.96249485 0.20230228
		 0.93390125 0.22232027 0.93435329 0.20239297 0.9298839 0.22241107 0.930336 0.20248364
		 0.9258666 0.22250178 0.92631876 0.2025744 0.92184919 0.22259253 0.92230141 0.20266515
		 0.91783184 0.22268322 0.91828394 0.20212072 0.9419359 0.22213879 0.94238824 0.20221141
		 0.9379186 0.22222954 0.93837088 0.22184476 0.96634966 0.21529925 0.97376955 0.20541707
		 0.97327799 0.19963944 0.96524513 0.20231752 0.95571995 0.21143439 0.95187509 0.22012544
		 0.95660579 0.21086825 0.96326333 0.21151726 0.95040148 0.20470305 0.97456968 0.215864
		 0.97513312 0.22326294 0.96675837 0.22132924 0.95575178 0.20202994 0.94595325 0.19818431
		 0.96549225 0.20258577 0.94505233 0.19792405 0.96839154 0.20800583 0.94862145 0.2073729
		 0.97630012 0.21945304 0.97384524 0.22506951 0.96286404 0.21994035 0.95165145 0.54010928
		 0.70252407 0.59784329 0.78551978 0.35487413 0.070745915 0.64870167 0.59020776 0.61869931
		 0.61364138 0.56380224 0.64592236 0.51332545 0.53808987 0.45178032 0.62304938 0.68660486
		 0.70369488 0.70833743 0.80595756 0.50322676 0.62488776 0.50187349 0.66288567 0.45141697
		 0.66108531 0.66187477 0.78891683 0.64877903 0.82461053 0.69617712 0.84199727 0.61519599
		 0.81226814 0.63064778 0.81795269 0.62382543 0.76005018 0.64375186 0.78227925 0.53893828
		 0.62619948 0.52251554 0.62558597 0.62255788 0.56230241 0.52117729 0.66356725 0.55314207
		 0.66465592 0.56040561 0.69113576 0.35166907 0.12182304 0.55943191 0.73526484 0.57459652
		 0.75380725 0.59421754 0.61953157 0.40242815 0.030859545 0.39194906 0.08763434 0.40124774
		 0.03995885 0.617419 0.61211795 0.35465813 0.072725624 0.56753504 0.73088574 0.39973998
		 0.062422588 0.39833498 0.068208411 0.4001112 0.060464397 0.60137129 0.59897709 0.35024333
		 0.10005543 0.35009086 0.10204157 0.58751023 0.73822856 0.3510375 0.093499094 0.5878253
		 0.73947477 0.39690721 0.068948939 0.60246086 0.59850091 0.35236502 0.092631191 0.57406485
		 0.7288903 0.35143995 0.11509517 0.59225726 0.61296666 0.40053511 0.04665114 0.44037104
		 0.66069078 0.66092837 0.64544404 0.50646186 0.52965194 0.71964705 0.81010568 0.44027114
		 0.62406492 0.44172835 0.62269038 0.54116035 0.48583323 0.43901587 0.65921581 0.52282619
		 0.49565959 0.70284498 0.67722368 0.72047722 0.81192863 0.70836532 0.84494913 0.70655334
		 0.8458032 0.71477497 0.82747447 0.21045375 0.10755214 0.53672314 0.10218664 0.53898191
		 0.075072065 0.2116493 0.079298407 0.21274972 0.073530883 0.20419741 0.11530921 0.53249252
		 0.10748906 0.54278326 0.064499274 0.025085092 0.11020395 0.061930537 0.011307746
		 0.049359083 0.14163908 0.68891478 0.1530405 0.73394871 0.07345821 0.7298553 0.13904026
		 0.71682847 0.067070618 0.70024967 0.03968896 0.022829294 0.037599891 0.057633877
		 0.029027611 0.047428012 0.11048684 0.69301844 0.13772753 0.25882649 0.88026524 0.29114366
		 0.91439867 0.43367344 0.74996424 0.15183641 0.68444866 0.17166668 0.63352913 0.18605831
		 0.62352473 0.16076833 0.66880643 0.15664355 0.66875815 0.36282474 0.66281474 0.39278176
		 0.78444874 0.19288757 0.89061379 0.29147369 0.91488487 0.24170901 0.91640139 0.13189761
		 0.79120553 0.33879521 0.88930321 0.17675711 0.56593758 0.18931894 0.55271864 0.35893956
		 0.57945853 0.34639409 0.59398842 0.43223053 0.56942582 0.41796517 0.58227885 0.14006776
		 0.52202034 0.13616547 0.53025883 0.44639814 0.55409217 0.13148269 0.54886693 0.47907931
		 0.80826658 0.34007207 0.8408944 0.38217831 0.85659558 0.50728273 0.76541162 0.50352561
		 0.75880826 0.38175648 0.85786915 0.38094193 0.86619407 0.47196501 0.73910326 0.41697606
		 0.78636742 0.49909297 0.75773251 0.35585555 0.81847441 0.47891557 0.80820876 0.37096104
		 0.86777359 0.35774851 0.90857482 0.51635426 0.90213859 0.40962726 0.95350266 0.51294374
		 0.82345039 0.52676409 0.84192657 0.45147276 0.89095718 0.45168251 0.89018834 0.3604874
		 0.91209066 0.51173651 0.81974161 0.12884104 0.93648767 0.12879083 0.93752652 0.18917337
		 0.91162002 0.18910006 0.91044104 0.12823422 0.93719196 0.096310407 0.89190018 0.095685139
		 0.89338225 0.12514842 0.95035172 0.12594156 0.9506954 0.12608251 0.95149899 0.12449709
		 0.9506796 0.11420602 0.95101088 0.11458477 0.95216012 0.18184748 0.91763932 0.18632925
		 0.91393143 0.087156415 0.90636307 0.086484522 0.90743184 0.085721835 0.90692782 0.078446522
		 0.91759366 0.079442352 0.91816676 0.086458102 0.90588516 0.094263002 0.89245903 0.028301254
		 0.89408624 0.028175578 0.89463675 0.037436739 0.8849737 0.037116483 0.88587499 0.095303267
		 0.89118302 0.036612019 0.88571066 0.036583304 0.81880087 0.035352066 0.82061046 0.027617559
		 0.89370787 0.026920229 0.89365494 0.034997389 0.82259256 0.034139425 0.82431829 0.03059876
		 0.90298361 0.031685069 0.90268499 0.17626169 0.86951888 0.020293087 0.84278059 0.021007121
		 0.88562775 0.13682017 0.95489365 0.17481431 0.93488646 0.068037808 0.809196 0.068201691
		 0.80913854 0.095530063 0.89197373 0.077780381 0.80399114 0.097673073 0.78211021 0.1007528
		 0.78306341 0.090634927 0.80957824 0.076312125 0.76804042 0.095585808 0.7719453 0.17281187
		 0.85242081;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.19503945 0.83877641 0.19773944 0.84193969
		 0.18733163 0.86187088 0.10572082 0.81860465 0.10543789 0.81921387 0.089511931 0.81134838
		 0.089906231 0.81078947 0.10596427 0.81898433 0.10699128 0.81593567 0.10788819 0.81594688
		 0.10563678 0.81953716 0.12994631 0.83431804 0.12967028 0.83498681 0.096513927 0.83392787
		 0.096065864 0.83353239 0.15709513 0.84550232 0.15651794 0.84634602 0.13019003 0.83533168
		 0.13058345 0.83471864 0.15780813 0.84544909 0.15893304 0.84341675 0.15943417 0.84429306
		 0.15683296 0.84588581 0.17137769 0.85316569 0.17096061 0.85369349 0.15021563 0.86153144
		 0.14957234 0.86142069 0.1224637 0.85073376 0.12189347 0.85043848 0.13138466 0.83164877
		 0.13205466 0.83205825 0.18798022 0.8648625 0.18791774 0.86559087 0.072815374 0.76675546
		 0.073487133 0.76702553 0.074501708 0.80396736 0.073770657 0.80418801 0.074290678
		 0.80460244 0.074875146 0.80410558 0.10439335 0.78426284 0.10504529 0.78391522 0.19292738
		 0.83528042 0.19286665 0.83599257 0.14375806 0.8109386 0.14431915 0.81126398 0.16675928
		 0.8649525 0.067165852 0.80620795 0.066611335 0.76533586 0.083989069 0.82123232 0.072720811
		 0.81221056 0.13945171 0.8083542 0.14876035 0.81382495 0.18407553 0.87055004 0.46353865
		 0.36639345 0.4792344 0.37055415 0.43606126 0.29798079 0.36360556 0.16294992 0.26774579
		 0.20002383 0.33348089 0.21342337 0.26041007 0.26489109 0.25406104 0.22208047 0.31892431
		 0.2728104 0.33843458 0.23089772 0.15879488 0.38704705 0.21523184 0.40699315 0.18318564
		 0.33408082 0.1574567 0.36939657 0.23145986 0.35505778 0.22925419 0.39174461 0.29633173
		 0.16777688 0.17494106 0.43024808 0.31356525 0.16845316 0.1622656 0.42193663 0.29211658
		 0.33444166 0.27839845 0.33833802 0.19499022 0.42449492 0.21484418 0.21580553 0.26784378
		 0.4201166 0.3020497 0.30400389 0.20452535 0.31124967 0.2136613 0.29021442 0.2561478
		 0.21606499 0.33811742 0.23624331 0.15861815 0.36382413 0.22703969 0.39595336 0.30393618
		 0.17025888 0.17005026 0.42460799 0.18694037 0.18283197 0.1839661 0.18175535 0.16896877
		 0.18721157 0.17142358 0.18922949 0.1481396 0.26290095 0.15093325 0.26285353 0.15080537
		 0.15600769 0.14837375 0.15416315 0.14459294 0.18625803 0.14733452 0.18666358 0.13453056
		 0.26448986 0.13729636 0.26429686 0.09430436 0.25827727 0.091647781 0.25892642 0.10214092
		 0.40253603 0.10482578 0.40193844 0.080589987 0.17867017 0.077832676 0.17985663 0.066685297
		 0.16719991 0.064641975 0.16834003 0.10907047 0.25962204 0.10633615 0.25972563 0.11141236
		 0.40147376 0.11413832 0.40169188 0.10468865 0.17907599 0.10189914 0.17868343 0.10578691
		 0.1458776 0.1031365 0.14672807 0.12965687 0.40408134 0.13236919 0.40434152 0.12041998
		 0.4026697 0.12310407 0.40314496 0.16276084 0.26914763 0.18668357 0.19940609 0.12730743
		 0.18215892 0.12358997 0.26104981 0.13727011 0.40917712 0.11778884 0.40092379 0.2021457
		 0.19444256 0.12980612 0.14955226 0.079184391 0.26649857 0.097344354 0.40773913 0.06139607
		 0.19458757 0.051067807 0.18431249 0.80683738 0.55868506 0.75332314 0.58640409 0.92427355
		 0.56170559 0.6882779 0.56331909 0.6850391 0.56077039 0.83101541 0.5486201 0.80889493
		 0.55850446 0.80477625 0.55855012 0.78244358 0.54915261 0.67349869 0.55035686 0.64742309
		 0.51538491 0.62866861 0.4791069 0.79445374 0.74533397 0.72817022 0.66153663 0.83785093
		 0.89063644 0.8365857 0.87496847 0.8034544 0.87953722 0.83589911 0.88283306 0.83692569
		 0.86074489 0.81421363 0.89298558 0.83606136 0.86784428 0.83666694 0.85320753 0.78356171
		 0.89034522 0.77116144 0.89315557 0.83511531 0.79528713 0.77966511 0.90121877 0.77328199
		 0.9102475 0.83554566 0.81027043 0.7839784 0.91104853 0.83641326 0.82489353 0.83886993
		 0.84583271 0.81425232 0.91067034 0.83874798 0.83222783 0.78591859 0.92261904 0.74830586
		 0.98965621 0.9106679 0.79145122 0.81460744 0.96424496 0.92954415 0.79458535 0.92898059
		 0.79387808 0.90472233 0.8636812 0.92312026 0.86429882 0.57896668 0.98314148 0.92379642
		 0.86368972 0.93444788 0.83019936 0.93450534 0.82945609 0.7592994 0.86377841 0.80909932
		 0.85093451 0.70517331 0.98887217 0.55261415 0.85235161 0.61457723 0.98585618 0.60419375
		 0.86464959 0.85252637 0.80613434 0.86559486 0.79981089 0.78632426 0.86402833 0.85103405
		 0.82297778 0.84981346 0.83983266 0.86168385 0.84816098 0.89039469 0.86235064 0.77184433
		 0.93174052 0.86477888 0.87395614 0.70805854 0.93006319 0.95380521 0.87475812 0.55631739
		 0.92224944 0.86488718 0.98531526 0.85081869 0.92958713 0.61633271 0.92682719 0.95407939
		 0.98449951 0.66211241 0.93140322 0.97374499 0.92959487 0.74433905 0.94059372 0.58082765
		 0.93483686 0.68163037 0.86150134 0.66030818 0.98072362 0.81439477 0.98429513 0.74168855
		 0.98939294 0.57005125 0.98328441 0.22263007 0.97377956 0.20832226 0.9501431 0.19948354
		 0.9586913 0.20065624 0.97093141 0.21095693 0.97764683 0.22107923 0.9168551 0.22051719
		 0.95172334 0.20186156 0.94666511 0.19799265 0.96862179 0.20796323 0.94841635 0.20769402
		 0.9765116 0.21991068 0.97384655 0.22544381 0.96263331 0.22012731 0.9513157 0.2908293
		 0.94519407 0.29390615 0.96118641 0.25214785 0.95522475 0.331604 0.96933258 0.24615996
		 0.95214033 0.24429144 0.95002335 0.23623987 0.94063121 0.222048 0.94640565 0.20121703
		 0.95473641 0.22188398 0.94684637 0.19811273 0.95611823 0.20070401 0.91675079 0.22688456
		 0.96224266 0.22238635 0.94552684 0.19821173 0.95607811 0.81961733 0.93914568 0.82046157
		 0.93948239 0.68220967 0.91384262 0.78375894 0.87757397 0.83725548 0.77918273 0.82407647
		 0.89907646 0.78350359 0.87768233 0.78363127 0.87762785 0.83912373 0.83902717 0.80201715
		 0.92091775 0.83912307 0.8389501 0.84258384 0.23906666 0.86504614 0.22220787 0.86632121
		 0.22134322;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.88409126 0.20890349 0.91008824 0.19669105
		 0.77263427 0.31689867 0.7806558 0.29023838 0.79945862 0.27515107 0.80067611 0.2741251
		 0.82070684 0.25731534 0.87145829 0.27430665 0.89237112 0.25828016 0.89362323 0.25739947
		 0.90872186 0.24675599 0.93027389 0.23620144 0.80926454 0.34374094 0.81737643 0.32043475
		 0.83391464 0.30624002 0.83508092 0.30520165 0.85273761 0.29011095 0.90033275 0.30954659
		 0.91969603 0.29435241 0.92092514 0.29345566 0.93335247 0.28460842 0.95045948 0.27571177
		 0.84589469 0.37058318 0.85409701 0.35063106 0.86837065 0.33732894 0.86948562 0.33627814
		 0.88476831 0.32290649 0.92920727 0.34478661 0.94702101 0.33042473 0.94822723 0.32951194
		 0.95798314 0.32246095 0.97064519 0.31522217 0.88252497 0.39742544 0.89081764 0.38082746
		 0.90282667 0.36841792 0.90389049 0.36735469 0.91679913 0.3557021 0.59131515 0.24477747
		 0.61196554 0.25162348 0.61341804 0.25214994 0.63976395 0.26203683 0.66568774 0.27399546
		 0.68920356 0.28555375 0.69059879 0.28631771 0.71150106 0.29801729 0.56278992 0.24089821
		 0.72565639 0.321922 0.57766354 0.28781056 0.59520924 0.29368713 0.59664506 0.294218
		 0.62119985 0.30371755 0.64341581 0.31406736 0.66422439 0.32436931 0.66558337 0.32513052
		 0.68434507 0.33598822 0.55390871 0.28417504 0.69794452 0.35646874 0.56401193 0.33084363
		 0.578453 0.33575076 0.57987207 0.33628604 0.60263574 0.34539822 0.62114388 0.35413921
		 0.63924521 0.36318487 0.64056796 0.36394328 0.65718907 0.37395909 0.54502755 0.32745183
		 0.67023277 0.39101544 0.55036032 0.37387675 0.56169671 0.37781444 0.56309909 0.37835413
		 0.58407164 0.38707894 0.59887195 0.39421111 0.61426604 0.40200046 0.61555254 0.40275609
		 0.63003308 0.41193002 0.5361464 0.37072864 0.6425209 0.4255622 0.15161076 0.076543823
		 0.15018493 0.085113063 0.14980441 0.087131664 0.14848 0.09986905 0.14767012 0.11008897
		 0.14750242 0.12193972 0.15776381 0.039381534 0.14777479 0.13341548 0.15737036 0.041337892
		 0.15509462 0.052696362 0.15309894 0.06392245 0.11882696 0.07083112 0.11677542 0.081972063
		 0.11631647 0.083931625 0.11495987 0.098797657 0.11425611 0.11022159 0.11436203 0.12339434
		 0.12581941 0.030023614 0.11496958 0.13615668 0.12539002 0.031971164 0.12260774 0.044806786
		 0.12016442 0.057244781 0.086043105 0.065118417 0.083365873 0.078831062 0.082828477
		 0.080731586 0.081439689 0.097726256 0.080842063 0.11035421 0.081221595 0.12484896
		 0.093874976 0.020665679 0.082164332 0.13889788 0.093409643 0.022604425 0.090120807
		 0.036917198 0.087229863 0.050567105 0.59673256 0.10564733 0.59806788 0.092896298
		 0.59809792 0.090838782 0.59847337 0.082156494 0.59963864 0.069505394 0.60007381 0.058114231
		 0.60028499 0.046530828 0.60031927 0.044535875 0.59009039 0.13856226 0.59288222 0.12742025
		 0.59532154 0.11581204 0.62967592 0.11179593 0.63143063 0.096955076 0.63137984 0.094939485
		 0.6317187 0.083610363 0.63326371 0.07005249 0.63354725 0.057382748 0.63360649 0.044250205
		 0.63360763 0.042255864 0.6214906 0.14828368 0.62489307 0.13596033 0.62788713 0.12311719
		 0.66261935 0.11794456 0.66479349 0.10101385 0.66466188 0.099040195 0.66496408 0.085064247
		 0.66688877 0.070599586 0.6670208 0.056651264 0.66692805 0.041969582 0.6668961 0.039975852
		 0.65289086 0.15800512 0.65690392 0.1445004 0.66045278 0.13042235 0.31796992 0.083288446
		 0.31894076 0.075981572 0.31969917 0.06903623 0.31992346 0.067057088 0.31683815 0.12906274
		 0.31657773 0.12258516 0.31622493 0.11506736 0.28289655 0.080035925 0.28397492 0.072094858
		 0.28474024 0.065346837 0.28497282 0.063368261 0.28178456 0.12974784 0.28148642 0.12334728
		 0.28100994 0.11503956 0.24782313 0.076783404 0.24900903 0.068208143 0.24978127 0.061657444
		 0.25002211 0.059679434 0.24673094 0.13043293 0.24639507 0.1241094 0.24579491 0.11501175
		 0.42969659 0.082983106 0.42762369 0.090218693 0.43729904 0.035422742 0.42588601 0.096459955
		 0.43705377 0.037398994 0.43616527 0.044330612 0.43539679 0.051662073 0.46396187 0.091151744
		 0.46158242 0.099124707 0.47216988 0.039985932 0.45982289 0.10528556 0.47192898 0.04196338
		 0.47108278 0.04870237 0.47025844 0.056672998 0.49822718 0.099320397 0.49554116 0.10803074
		 0.5070408 0.044549134 0.49375987 0.11411118 0.50680423 0.046527773 0.50600034 0.053074136
		 0.50512016 0.061683934 0.24537125 0.10766396 0.24514756 0.096166372 0.24534857 0.09410052
		 0.24655724 0.084807932 0.2802887 0.10777578 0.28012863 0.098124772 0.28031346 0.096085489
		 0.28138393 0.087704979 0.31520623 0.1078876 0.31510973 0.10008317 0.31527841 0.098070458
		 0.31621072 0.09060204 0.50033414 0.092271402 0.50320977 0.081146061 0.5034337 0.079088897
		 0.50446171 0.069777638 0.46633446 0.084250413 0.46871984 0.074904904 0.46899289 0.072880737
		 0.46994153 0.064483218 0.43233472 0.076229408 0.43422991 0.068663746 0.43455204 0.066672564
		 0.43542129 0.059188787 0.64210749 0.69595939 0.63821495 0.71429813 0.63686037 0.71666229
		 0.6851061 0.79743719 0.6667695 0.72026873 0.67937928 0.81449157 0.62962085 0.66219735
		 0.67247808 0.83330393 0.61981845 0.69137156 0.62208313 0.69168121 0.47735953 0.64195913
		 0.52450168 0.55951416 0.47849691 0.62400401 0.55359721 0.5674485 0.55322993 0.56474817
		 0.55651784 0.54631186 0.57669067 0.54988271 0.57890821 0.5504483 0.47664523 0.66198552
		 0.58072126 0.5197081 0.65913844 0.68483531 0.66620576 0.70141488 0.66531646 0.7037394
		 0.70059365 0.80311739 0.67903477 0.70983571 0.69517827 0.82028651 0.64471114 0.65512133
		 0.68827748 0.83909947 0.64370608 0.66983986 0.64498693 0.67128527 0.65062296 0.69039738
		 0.65221035 0.70785654 0.65108842 0.71020085 0.69284987 0.80027729 0.67290211 0.71505225
		 0.68727875 0.81738901 0.63716602 0.65865934 0.68037778 0.83620167 0.63176227 0.68060571
		 0.63353503 0.68148327 0.46054113 0.64135861;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.51705086 0.54523128 0.46201032 0.62341487
		 0.53206611 0.54475677 0.53211534 0.54226857 0.54489696 0.52959132 0.56309557 0.52238107
		 0.56482577 0.52152592 0.45982635 0.66138536 0.56941122 0.50750756 0.46895033 0.6416589
		 0.52077627 0.55237269 0.47025362 0.62370944 0.54283166 0.55610263 0.54267263 0.5535084
		 0.5507074 0.53795159 0.56989312 0.53613186 0.57186699 0.53598714 0.46823579 0.66168547
		 0.57506621 0.51360786 0.65514696 0.64953685 0.69963586 0.84326589 0.70697683 0.82461417
		 0.71335167 0.8077966 0.68930364 0.7022624 0.68325108 0.69236416 0.67152905 0.67677832
		 0.66051364 0.65956712 0.65970367 0.65776128 0.65803766 0.64749044 0.7030946 0.84453452
		 0.71087587 0.82604432 0.71649933 0.80895114 0.69200242 0.70082992 0.68630099 0.68975508
		 0.67540425 0.67428333 0.66458851 0.65804696 0.66375744 0.6564486 0.44773495 0.66095376
		 0.56186444 0.49842203 0.55453044 0.50431311 0.55310977 0.50567305 0.53643847 0.51745385
		 0.51971549 0.5274595 0.5103811 0.53434426 0.44842964 0.62292969 0.44798142 0.64091009
		 0.44405299 0.66082227 0.55997264 0.49543679 0.55127633 0.5015614 0.54992157 0.50271583
		 0.53379035 0.51367676 0.51787293 0.52389014 0.50842148 0.5319981 0.445079 0.62281001
		 0.44383088 0.64076179 0.56717509 0.56164598 0.58915854 0.57510394 0.59182298 0.57697248
		 0.49206948 0.66253591 0.59109348 0.53089696 0.49278334 0.64250982 0.5313347 0.5726127
		 0.49361646 0.62454432 0.57334298 0.58825868 0.57259375 0.58536375 0.62648875 0.70616102
		 0.60107845 0.71038592 0.59791154 0.71111792 0.61578184 0.66868663 0.65798879 0.82798886
		 0.66489029 0.80917716 0.67090273 0.79222798 0.65552127 0.72983664 0.61076379 0.7285136
		 0.61254507 0.72611308 0.43824482 0.3546454 0.4202278 0.35547367 0.41749242 0.35582089
		 0.40254283 0.36047539 0.38278216 0.36402768 0.3800264 0.36439711 0.36186048 0.3658253
		 0.35908875 0.36495936 0.45437953 0.34358925 0.34336287 0.35340944 0.44074059 0.35318571
		 0.43001345 0.32980824 0.415555 0.32980436 0.41280133 0.32995275 0.3999525 0.33427906
		 0.38285941 0.33714163 0.38011357 0.33734494 0.36506039 0.33909175 0.36233139 0.33840299
		 0.44522041 0.32078502 0.34805074 0.3291679 0.43265736 0.32903022 0.15508264 0.23767118
		 0.15776335 0.23831221 0.07325495 0.24252826 0.17073506 0.24590047 0.087042749 0.23256986
		 0.0897329 0.23174159 0.10485715 0.2327116 0.10760986 0.23277338 0.12482912 0.23475286
		 0.13788468 0.23841262 0.1406424 0.23841912 0.1620257 0.21244138 0.16459346 0.21377085
		 0.06732551 0.21855792 0.17870931 0.22265327 0.082437709 0.20621324 0.085161448 0.20520589
		 0.10337815 0.20569751 0.10614926 0.20592469 0.12606828 0.20845589 0.14123881 0.21233532
		 0.14398846 0.21254134 0.36619189 0.28305712 0.42952931 0.27027655 0.35491198 0.2765311
		 0.41941053 0.2768079 0.41663787 0.27696478 0.40661886 0.2765505 0.40387017 0.27663267
		 0.39476416 0.28020695 0.38248679 0.28182936 0.37975585 0.28193074 0.36888325 0.28355807
		 0.36680973 0.25426763 0.42299733 0.24257229 0.35708535 0.24813581 0.41424695 0.24874108
		 0.41149363 0.24895854 0.40235555 0.24896592 0.39963007 0.24918073 0.39216614 0.25233114
		 0.38203689 0.25340313 0.37931097 0.25356871 0.36950618 0.25475794 0.36742753 0.22547814
		 0.41646534 0.21486807 0.35925877 0.21974054 0.40908337 0.22067428 0.40634939 0.22095233
		 0.39809221 0.22138137 0.39538994 0.22172883 0.38956809 0.22445536 0.38158703 0.22497693
		 0.37886608 0.22520669 0.37012914 0.22595787 0.36804536 0.19668861 0.40993336 0.1871638
		 0.36143216 0.19134523 0.40391976 0.19260743 0.40120518 0.19294608 0.39382887 0.19379678
		 0.39114982 0.19427688 0.38697007 0.19657955 0.38113713 0.19655068 0.37842119 0.19684464
		 0.3707521 0.19715774 0.10004229 0.37381414 0.1027215 0.3732062 0.11039712 0.37312412
		 0.11312475 0.37327793 0.11894906 0.372949 0.1232421 0.37503374 0.12594253 0.37537533
		 0.13335341 0.37584525 0.13608201 0.37604392 0.093712367 0.37949103 0.14236826 0.38117123
		 0.097943664 0.34509221 0.10061721 0.34447399 0.10938188 0.34477448 0.11211118 0.34486395
		 0.12010929 0.34497422 0.12606421 0.34739777 0.12878099 0.34760574 0.13704996 0.34760919
		 0.13979483 0.34774631 0.090080373 0.3512429 0.14746641 0.35316533 0.095845044 0.31637031
		 0.098512933 0.31574178 0.10836663 0.31642491 0.1110976 0.31645 0.12126951 0.31699944
		 0.12888633 0.31976184 0.13161944 0.31983614 0.1407465 0.31937313 0.14350763 0.31944874
		 0.086448379 0.32299483 0.15256454 0.32515946 0.093746409 0.28764838 0.09640865 0.28700954
		 0.10735139 0.28807527 0.11008404 0.28803602 0.12242974 0.28902462 0.13170844 0.29212585
		 0.1344579 0.29206651 0.14444305 0.29113704 0.14722043 0.29115114 0.082816385 0.2947467
		 0.15766269 0.29715353 0.22733475 0.36782992 0.21741334 0.36545473 0.21431908 0.36382395
		 0.18907806 0.35270536 0.18598837 0.35141861 0.17693055 0.34697911 0.17499648 0.34399524
		 0.20470582 0.26061076 0.23072463 0.36728671 0.22609523 0.26187283 0.2265881 0.38001207
		 0.2154692 0.37429944 0.21274345 0.37265268 0.18367137 0.36066717 0.18076825 0.35981351
		 0.1688413 0.3568393 0.16680732 0.35390967 0.2024686 0.25294119 0.22998941 0.37951565
		 0.22906482 0.25451049 0.33171973 0.24843232 0.26141673 0.37311137 0.25617737 0.23635066
		 0.29223591 0.3813177 0.25982806 0.23471734 0.27301526 0.23880431 0.27630126 0.23967029
		 0.31119365 0.24501126 0.31479365 0.24501647 0.32872763 0.24595922 0.32532203 0.26062137
		 0.26204035 0.38260227 0.25829372 0.25062087 0.28681201 0.38919812 0.26187789 0.2488796
		 0.27315721 0.24988545 0.27687407 0.25044453 0.30757838 0.25440466 0.31154969 0.25464988
		 0.32234931 0.25809619 0.22907077 0.33477211 0.22070594 0.33502349 0.21724494 0.33380306;
	setAttr ".uvst[0].uvsp[2000:2217]" 0.20825647 0.32951891 0.20515653 0.32764971
		 0.19929172 0.32182246 0.19741213 0.31886005 0.2100749 0.2828235 0.23248723 0.33400044
		 0.21681607 0.28322133 0.22857609 0.34520996 0.22003171 0.34581679 0.21656981 0.34439912
		 0.20137063 0.33713126 0.19818251 0.33533671 0.19215575 0.32947072 0.19029889 0.32647043
		 0.20850897 0.27555192 0.23197354 0.34452909 0.21997087 0.27622825 0.31329945 0.28320819
		 0.2636098 0.4012264 0.26281166 0.27632371 0.27687335 0.40475792 0.26633221 0.27452448
		 0.27552569 0.27239379 0.27963096 0.27252322 0.2984491 0.27436459 0.30264884 0.27503085
		 0.31039789 0.28054911 0.30767459 0.29360604 0.26455563 0.41035965 0.26521325 0.28775632
		 0.27235857 0.41243726 0.26873666 0.28600717 0.27775225 0.28382099 0.28181508 0.28382769
		 0.29293507 0.28493112 0.29699194 0.28577846 0.30482483 0.29086506 0.19677415 0.41271973
		 0.19990662 0.41604954 0.20173742 0.418661 0.2269453 0.22778845 0.16110869 0.41030675
		 0.21111736 0.22278655 0.16462782 0.41194487 0.16934127 0.41153544 0.17270619 0.41006964
		 0.1944146 0.41056263 0.20289482 0.40638152 0.20684035 0.41000482 0.20848462 0.41282707
		 0.2291905 0.23308781 0.15995178 0.3986769 0.20739052 0.22976756 0.16331349 0.39907622
		 0.16863227 0.39846286 0.17191935 0.39829096 0.20012552 0.4046427 0.32724017 0.1943759
		 0.27385423 0.34351993 0.28333691 0.17897457 0.29373857 0.34378198 0.28748628 0.17961413
		 0.29196298 0.18250003 0.29435778 0.185855 0.31552422 0.19793782 0.31903747 0.19722512
		 0.3239716 0.19583189 0.33036053 0.20389964 0.26931 0.34870183 0.27554137 0.1894992
		 0.29536057 0.35312229 0.27864084 0.1914514 0.28375003 0.19467397 0.28681368 0.19673671
		 0.31759912 0.20694251 0.32126391 0.20686986 0.32714921 0.20566601 0.10606772 0.7405746
		 0.41746891 0.73200679 0.38105643 0.76254225 0.37956256 0.76335502 0.31321162 0.78462207
		 0.31178084 0.78435838 0.26367414 0.78105783 0.26253521 0.78108895 0.21471965 0.78742069
		 0.21330729 0.78778189 0.14550856 0.77018929 0.14396898 0.7694518 0.12132393 0.72186595
		 0.40126434 0.71404928 0.36784631 0.74139977 0.36634335 0.74226129 0.30988318 0.76036102
		 0.30841827 0.7602002 0.26305866 0.75911462 0.26186317 0.75914335 0.21666211 0.76310325
		 0.21520793 0.76336449 0.15759143 0.74847925 0.15604036 0.74769807 0.13658017 0.70315731
		 0.38505977 0.69609177 0.35463619 0.72025722 0.35312414 0.72116756 0.30655476 0.73609984
		 0.30505571 0.73604202 0.26244318 0.73717141 0.26119113 0.73719782 0.21860456 0.73878574
		 0.21710861 0.73894703 0.16967431 0.72676921 0.16811174 0.72594428 0.16415513 0.65114367
		 0.35441327 0.64552486 0.32635432 0.66507137 0.32496506 0.6657595 0.29848433 0.67369241
		 0.29720312 0.67407525 0.26070172 0.68069589 0.25953454 0.680713 0.22271465 0.6765275
		 0.22141227 0.67623627 0.19454217 0.67000955 0.19311105 0.66942215 0.75148523 0.68081397
		 0.75752449 0.68083632 0.76356363 0.68085873 0.78286374 0.68318486 0.72615701 0.68241698
		 0.78887928 0.68264991 0.73216826 0.68299663 0.75090963 0.70029396 0.75745213 0.70031816
		 0.76399457 0.70034248 0.78422058 0.70412409 0.72414374 0.70329732 0.79073745 0.70354456
		 0.73065591 0.70392519 0.75033402 0.71977401 0.75737983 0.71980011 0.76442552 0.71982634
		 0.78557742 0.72506338 0.72213054 0.72417766 0.79259562 0.72443926 0.72914362 0.72485381
		 0.17376366 0.5073669 0.17528391 0.51312202 0.17519531 0.51380211 0.17684771 0.52828491
		 0.17712115 0.52883816 0.18140396 0.53674054 0.18776932 0.50114679 0.19139314 0.50665575
		 0.19148375 0.50724202 0.19544268 0.51996464 0.19566754 0.52052939 0.1945653 0.53132808
		 0.201775 0.49492669 0.20750239 0.50018948 0.20777223 0.50068194 0.21403769 0.51164436
		 0.21421394 0.51222062 0.20772664 0.52591568 0.41756153 0.53741837 0.41594371 0.54521334
		 0.41579363 0.54578447 0.41263989 0.55951023 0.41239023 0.56001908 0.40227497 0.57249361
		 0.38078097 0.52017367 0.37891585 0.52677929 0.37871152 0.52738047 0.37535536 0.54204094
		 0.37521541 0.54266697 0.36627311 0.55295289 0.33977765 0.50072277 0.33475891 0.50633192
		 0.33443645 0.5068779 0.32884055 0.52147925 0.32867068 0.52211285 0.32796732 0.53532058
		 0.3089332 0.52547544 0.30789608 0.51064491 0.3080551 0.51002777 0.31455094 0.49817723
		 0.31498796 0.49777544 0.31949097 0.49265641 0.26696998 0.48164183 0.26679379 0.49003512
		 0.26671857 0.49067187 0.26168209 0.50570166 0.26152778 0.50635767 0.26157796 0.52338862
		 0.41966915 0.83782876 0.44903275 0.81763887 0.44964427 0.81717849 0.47420877 0.79235291
		 0.47423631 0.79173589 0.48764938 0.77720082 0.3372207 0.8446582 0.50540417 0.76210994
		 0.38134921 0.86203158 0.38635021 0.86012793 0.40132812 0.84898698 0.41911671 0.83802319
		 0.10107535 0.82673252 0.10075188 0.8263731 0.0867505 0.81629038 0.073505744 0.80840647
		 0.070468254 0.80519795 0.18599664 0.86807048 0.069713354 0.76604569 0.16885994 0.85932302
		 0.15352429 0.85370862 0.15304515 0.85388339 0.12632686 0.84303272 0.12578188 0.84271264;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 84 ".pt";
	setAttr ".pt[417]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[418]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[419]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[420]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[421]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[452]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[453]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[454]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[455]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[456]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[464]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[465]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[466]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[467]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[468]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[469]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[476]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[477]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[478]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[492]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[493]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[494]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[499]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[500]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[501]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[503]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[504]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[505]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[541]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[542]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[543]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[548]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[549]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[552]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[553]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[563]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[564]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[567]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[568]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[573]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[574]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[575]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[588]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[589]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[590]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[621]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[622]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[623]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1354]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1355]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1356]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1359]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1360]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1366]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1370]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1371]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1372]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1378]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1379]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1380]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1383]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1384]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1390]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1391]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1392]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1398]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1399]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1400]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1401]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1406]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1407]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1408]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1413]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1418]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1419]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1420]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1425]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1426]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1430]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1431]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1432]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1438]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1439]" -type "float3" 0 0.1662693 0 ;
	setAttr ".pt[1440]" -type "float3" 0 0.1662693 0 ;
	setAttr -s 1789 ".vt";
	setAttr ".vt[0:165]"  -53.46154785 82.56755066 -11.52659702 -53.26019669 82.30459595 -11.19248581
		 -50.37680435 85.2997818 -10.13595104 -50.16020966 85.048042297 -9.80015755 -53.26019669 82.30459595 -5.35014105
		 -53.46127319 82.56719971 -4.9934473 -50.16020966 85.048042297 -6.82734346 -50.40740585 85.27578735 -6.47805834
		 -54.9212532 84.47393036 -4.9934473 -55.12638855 84.74184418 -5.32740498 -51.51283646 86.29424286 -6.80929804
		 -51.27622604 86.076248169 -6.47805834 -55.12638855 84.74184418 -11.18875313 -54.91572189 84.46671295 -11.52659702
		 -51.51283646 86.29424286 -9.81920815 -51.35033035 86.033721924 -10.17753983 -55.49866104 81.70011139 -11.33137608
		 -55.79075241 81.8436203 -11.0008020401 -54.3478241 81.13469696 -10.98825169 -54.66075516 81.28844452 -11.33137608
		 -54.69700623 81.22164154 -5.56827641 -54.3478241 81.13469696 -5.8864255 -55.043624878 78.38368225 -9.58347225
		 -55.41827011 78.22766876 -9.83320999 -55.42976379 76.82032013 -7.56789064 -55.046123505 77.24748993 -7.7184968
		 -55.49840927 81.69998932 -5.5410881 -55.79075241 81.8436203 -5.86828804 -55.96522141 78.33889008 -9.83320999
		 -56.24691772 78.62130737 -9.57726765 -56.24872971 77.45025635 -7.71494007 -55.96960068 76.93008423 -7.56789064
		 -48.036109924 88.51794434 -7.58004618 -48.25799561 88.75317383 -7.91314602 -48.25799561 88.75317383 -8.30788422
		 -48.03717041 88.51906586 -8.64901161 -47.28355408 87.72012329 -8.64901161 -47.055149078 87.47798157 -8.29415035
		 -47.055149078 87.47798157 -7.92297411 -47.28266525 87.71918488 -7.58004618 53.26019669 82.30459595 -11.19248581
		 53.46154785 82.56755066 -11.52659702 50.38078308 85.30441284 -10.13568687 50.16020966 85.048042297 -9.79371166
		 53.46127319 82.56719971 -4.9934473 53.26019669 82.30459595 -5.35014105 50.16020966 85.048042297 -6.8264389
		 50.40708923 85.27549744 -6.47805834 55.12638855 84.74184418 -5.32740498 54.9212532 84.47393036 -4.9934473
		 51.27597046 86.076011658 -6.47805834 51.51283646 86.29424286 -6.80929804 54.91572189 84.46671295 -11.52659702
		 55.12638855 84.74184418 -11.18875313 51.51283646 86.29424286 -9.81920815 51.34366989 86.023040771 -10.17865658
		 55.41827011 78.22766876 -9.83320999 55.043624878 78.38368225 -9.58347225 55.046123505 77.24748993 -7.7184968
		 55.42976379 76.82032013 -7.56789064 56.24691772 78.62130737 -9.57726765 55.96522141 78.33889008 -9.83320999
		 55.96960068 76.93008423 -7.56789064 56.24872971 77.45025635 -7.71494007 54.3478241 81.13469696 -10.98825169
		 54.66075516 81.28844452 -11.33137608 55.49866104 81.70011139 -11.33137608 55.79075241 81.8436203 -11.0013313293
		 54.66611481 81.29107666 -5.5410881 54.3478241 81.13469696 -5.88281012 55.79075241 81.8436203 -5.86828804
		 55.49840927 81.69998932 -5.5410881 48.25799561 88.75317383 -7.91314602 48.036109924 88.51794434 -7.58004618
		 48.03717041 88.51906586 -8.64901161 48.25799561 88.75317383 -8.30788422 47.055149078 87.47798157 -8.29415035
		 47.28355408 87.72012329 -8.64901161 47.28266525 87.71918488 -7.58004618 47.055149078 87.47798157 -7.92297411
		 9.48412132 114.77607727 -5.192626 9.46114159 114.22790527 -4.7203517 12.1097908 116.42706299 -5.28559828
		 12.091180801 116.8466568 -5.77435303 9.89946079 124.68377686 -5.84953785 9.87664223 124.13945007 -6.23846912
		 15.21816063 119.95842743 -6.53944445 15.51169205 120.29730988 -6.16945314 25.16432381 106.60017395 -0.99062592
		 24.88866234 106.3006134 -1.40914786 12.40528679 116.62931061 2.98746157 12.12270737 116.30356598 2.56559491
		 27.39784622 108.52974701 -1.60424244 27.18516922 108.17894745 -1.19460773 15.25354195 119.99249268 2.72234845
		 15.51169205 120.29730988 2.29179287 25.16064644 106.97652435 -7.075501919 24.84314919 106.73577881 -6.63011312
		 47.61891556 86.78386688 -8.62722015 47.87377548 87.083694458 -9.053510666 27.47612953 108.45341492 -7.054790974
		 27.086492538 108.22853088 -7.43353891 48.78478622 88.15544128 -9.16339779 49.060970306 88.48035431 -8.76856995
		 47.88938141 87.10205078 -7.079718113 47.61891556 86.78386688 -7.49040747 49.060970306 88.48035431 -7.55699968
		 48.80133057 88.17490387 -7.13285494 9.8803339 124.22750854 4.16430902 9.89946079 124.68377686 3.76408291
		 9.46114159 114.22790527 4.099888325 9.48012161 114.68067169 4.47943497 49.060970306 88.89273071 -8.23785591
		 27.44183731 108.89923859 -4.66724348 15.51169205 120.70970154 -2.4631052 9.89946079 125.096153259 -1.63840616
		 47.61891174 85.41448975 -8.11353874 24.86371422 105.16976929 -4.27096319 12.11562824 115.0018844604 -1.73795199
		 9.46114159 112.85853577 -0.73483121 8.56402206 124.171875 -10.19268894 8.71075916 124.40535736 -5.64208746
		 9.019534111 123.8817215 6.034432888 5.54498911 121.099510193 7.54270029 -7.68758106 107.50584412 3.67778397
		 -7.75695372 107.59355927 -2.31168818 -7.71339369 108.076881409 -6.0061359406 6.43825388 122.45688629 -11.11917782
		 -4.077961922 111.82737732 -7.30808878 -5.37302732 109.88079071 5.076967239 1.78598595 116.85333252 8.49108887
		 -1.48218811 113.67521667 7.74618483 9.10313702 124.82655334 0.90841109 -5.38357544 105.15322876 2.2361052
		 -2.85235214 107.43348694 4.047174454 -5.37009382 105.089225769 -2.20846939 -5.39306688 105.19830322 -4.10382605
		 10.4927063 119.78286743 3.5430522 10.051581383 120.40585327 -0.69029844 9.77264023 120.70891571 -9.77899456
		 8.42707157 119.123909 -9.2003479 -1.84622049 108.88722229 -5.5186429 0.5379265 110.67494965 6.41856432
		 3.43966341 113.40957642 6.26119947 7.22261906 117.53739166 4.90796852 9.87576962 120.61934662 -6.052925587
		 9.20746899 124.64862061 3.38956761 10.40989017 120.38376617 1.35877776 1.75535059 111.89104462 6.8910675
		 -0.11102482 115.081977844 8.77997398 9.16851521 124.14767456 7.30004406 10.16217232 120.48157501 4.90499449
		 -8.48578453 102.18360138 3.86857462 -8.34280109 102.14514923 3.79913306 -4.95608521 105.34534454 6.37566376
		 -4.86926842 105.27583313 6.26725054 10.13766575 125.60840607 -12.48939991 9.99058056 125.61158752 -12.39823341
		 10.29589367 125.88339996 -6.44217682 10.14759159 125.86984253 -6.39696884 10.038913727 125.84423828 7.35711765
		 10.186409 125.87708282 7.37231541 9.8070755 125.58036804 8.57767963 9.98847771 125.614151 8.6229887
		 -8.47042942 102.09967804 -2.39548993 -8.32534122 102.056976318 -2.39147449;
	setAttr ".vt[166:331]" -9.17742157 105.83551788 4.61130238 -9.13768482 105.99687195 4.54406595
		 -9.26114941 105.95475769 -2.46610427 -9.21858501 106.099609375 -2.45456862 -8.4923439 102.22640228 -5.45682669
		 -8.35991287 102.20491028 -5.34620476 -9.20782566 106.4977417 -7.13748646 -9.17453194 106.65488434 -7.063673973
		 13.47278404 123.62361908 5.62621021 13.44854069 123.76421356 5.71636009 12.66982365 123.89849091 2.65375686
		 12.67448807 123.74129486 2.57663441 7.42565298 123.70834351 -13.6716013 7.29581261 123.71109772 -13.54250336
		 12.71281242 123.91934204 -12.61807728 12.72908688 123.77467346 -12.54868984 11.05177784 123.24154663 -13.040019989
		 11.12078285 123.13946533 -12.93814468 -4.87798357 110.93448639 -8.46415806 -4.84674406 111.12090302 -8.39842129
		 -3.5325942 107.3729248 -7.20809937 -3.42665911 107.33600616 -7.10451174 -0.20233943 109.88773346 9.65262413
		 -0.12726708 109.80732727 9.54474163 -6.41485691 108.65419769 6.29054594 -6.42709303 108.77729797 6.19611406
		 2.086950779 117.11045837 10.41362953 2.0051701069 117.19802856 10.32017708 -0.17344609 114.80615997 10.48372936
		 -0.21772517 114.91665649 10.3870182 3.91023302 113.96183777 9.2378664 3.87768102 114.053390503 9.3555088
		 9.15795708 119.47581482 7.62894821 9.17577744 119.35605621 7.51350975 6.40868235 121.96681213 9.09416008
		 6.56820822 121.9387207 9.15112305 12.13693428 123.65374756 7.15071869 12.15677261 123.51366425 7.048884869
		 1.55388665 111.48622131 9.8789835 1.51153219 111.57660675 10.0010385513 -1.8208636 113.27137756 9.33871269
		 -1.80540073 113.15140533 9.43362999 10.69396687 126.3105545 1.3062892 10.54264545 126.31316376 1.32847524
		 10.49562454 126.38454437 4.24003458 10.64855289 126.39200592 4.2301774 12.98956966 123.25653076 -0.27923036
		 13.001619339 123.41426849 -0.22480889 12.86881924 123.79925537 -7.74973106 12.86959171 123.64936066 -7.7938242
		 0 89.66161346 -7.73455 0 98.14009094 -5.14768744 0 102.47893524 -5.14769983 -8.022975922 127.03188324 2.93975258
		 0 128.76966858 -5.70046806 -8.022975922 127.03188324 -10.28115845 8.022975922 127.03188324 2.93975258
		 8.022975922 127.03188324 -10.28115845 8.6654911 113.96653748 -6.77797508 8.6654911 113.96653748 5.486485
		 10.76802158 113.3997345 4.09078598 10.76802158 113.3997345 -6.12126923 8.4455452 119.067153931 -0.96670008
		 8.4455452 119.067153931 -3.7564826 9.93864059 116.66577148 -8.01000309 9.99437046 116.66577148 3.98842573
		 9.030748367 119.8138504 -0.91998208 13.26018047 116.010894775 4.97983217 10.59852695 117.94506073 6.10328484
		 9.12315845 119.93175507 -4.1036129 13.65371895 116.42321014 -8.64004135 10.90377426 118.57331848 -9.1386013
		 0 89.66161346 -3.82104731 0.1442228 89.66161346 7.80336761 -0.1442228 89.66161346 7.80336761
		 -0.14422281 98.14009094 7.023272514 0.1442228 98.14009094 7.023272514 -0.14421138 102.47893524 7.92120409
		 0.1442342 102.47893524 7.92120409 0.1442228 128.5272522 -1.38449419 0 128.56193542 -1.60768807
		 -0.1442228 128.5272522 -1.38449419 0.1442228 89.66161346 3.91397095 -0.1442228 89.66161346 3.91397095
		 -9.70829296 89.66161346 2.82360578 -9.52416706 89.66161346 3.11776781 -7.30225611 98.14009094 2.070315599
		 -7.13637972 98.14009094 2.37959647 -8.22669029 102.52791595 3.71387219 -8.035126686 102.47893524 4.0012879372
		 -12.63785172 124.72444916 7.044837475 9.70829296 89.66161346 2.82360578 9.52416706 89.66161346 3.11776781
		 7.30225611 98.14009094 2.070315599 7.13637972 98.14009094 2.37959647 8.22661686 102.52757263 3.71525407
		 8.035126686 102.47893524 4.0012879372 12.63785172 124.72444916 7.044837475 -7.05882597 89.66161346 1.61558783
		 -7.27437162 89.66161346 1.34106457 7.27437162 89.66161346 1.34106457 7.05882597 89.66161346 1.61558783
		 13.77924538 124.21628571 7.50412512 13.70278931 124.39595795 7.54568338 13.66182041 124.24647522 7.66218138
		 11.35473633 125.22106171 8.078639984 11.52425289 125.27003479 8.20830727 11.53762817 125.43069458 8.10272217
		 11.36103344 125.36477661 7.92894268 11.42984486 126.10318756 -2.42053699 11.60859776 126.18278503 -2.41680598
		 11.60941601 126.18300629 -2.6124146 11.43072796 126.10289764 -2.61633277 13.66672993 124.17015839 -13.58700657
		 13.54032326 124.20296478 -13.74156857 13.59509468 124.35729218 -13.64052677 11.64824677 125.38336182 -13.9523859
		 11.61823273 125.22298431 -14.045611382 11.45531178 125.14001465 -13.87084961 11.47079182 125.32486725 -13.7854929
		 13.6432333 125.16082764 -2.41411996 13.72671318 124.992836 -2.51466513 13.64224434 125.16114807 -2.61512756
		 10.2889843 112.95265961 -8.77864456 10.30037022 113.25556183 -8.781353 10.22804546 112.41674042 -8.34196377
		 10.25191784 112.60208893 -8.63060284 10.37374878 113.20818329 5.083695889 10.33998394 114.16622162 5.25692844
		 10.33430004 112.56601715 4.8874855 10.30718231 112.5715332 5.059291363 16.99757004 120.049049377 5.95625877
		 17.10833549 120.20085907 5.8643465 17.074270248 120.36702728 6.0039930344 16.99068642 120.24126434 6.11803722
		 13.087227821 123.067245483 6.8973875 13.14638901 123.21794128 6.78524303 17.1061039 120.19599915 -11.037689209
		 16.84664726 119.87020874 -10.92651939 16.98436737 120.22911072 -11.21449757 17.073312759 120.37147522 -11.1244936
		 13.14638901 123.22504425 -11.34824753 13.082214355 123.056938171 -11.43611431 17.061973572 122.40414429 -2.41711855
		 17.088542938 122.20475769 -2.41665602 17.088479996 122.20497131 -2.61278152 17.062046051 122.40441132 -2.61219025
		 13.65324879 116.42261505 -9.11856174 13.54016685 116.51079559 -9.2572794 10.22995853 112.7131958 -6.36618567
		 10.026266098 112.69289398 -6.43675852 10.035095215 112.68463135 4.31237888 10.23254108 112.71649933 4.20600939
		 13.19268227 115.92476654 5.41330767 13.073989868 115.97885132 5.55978203 16.54500008 119.48651123 4.87323761
		 16.45621681 119.35951996 4.99531507 16.43836975 119.34082794 -10.24414063 16.54500008 119.49175262 -10.15887928
		 9.80208206 120.7980423 -1.019372225 9.72063351 120.69411469 -0.86490691 9.70926476 120.67961884 -4.40386581
		 9.80208206 120.7980423 -4.2747283 10.81021309 123.93926239 6.18321943 10.82809258 124.090408325 6.059567928
		 10.92101288 124.090408325 -11.91040707;
	setAttr ".vt[332:497]" 10.89709663 123.90339661 -11.98141861 10.2842474 112.51104736 -2.51461411
		 10.26955795 112.51392365 -2.54038334 10.87491322 124.090423584 -2.4696157 10.87592697 124.090423584 -2.66533995
		 9.80208206 120.7980423 -2.71982098 9.80208206 120.7980423 -2.52411747 16.54500008 121.50778961 -2.41695333
		 16.54500008 121.50868225 -2.6126318 13.14638901 125.24971771 -2.41671014 13.14638901 125.248703 -2.61238742
		 0 123.96408081 -12.72486687 0 124.094429016 -12.68152332 -0.14422275 123.9640274 11.73961544
		 -0.12857798 124.08216095 11.66985989 0.12857799 124.08216095 11.66985989 0.14422284 123.9640274 11.73961544
		 -12.54034519 124.55500031 7.21075249 -12.59923553 124.68933868 7.13496447 -12.69025707 124.69374847 7.000021457672
		 -12.73978901 124.55893707 6.9273324 12.59923553 124.68933868 7.13496447 12.54034519 124.55500031 7.21075249
		 12.73978901 124.55893707 6.92733812 12.69025707 124.69374847 7.000020980835 -9.46046734 89.66161346 -5.02447319
		 -9.70829296 89.66161346 -4.70508909 -7.010446548 98.14009094 -5.14768744 -7.30225611 98.14009094 -4.86602354
		 -7.93312883 102.47893524 -5.14769983 -8.22552967 102.52442169 -4.87504578 9.46046734 89.66161346 -5.02447319
		 9.70829296 89.66161346 -4.70508909 7.0087246895 98.14009094 -5.14768744 7.30225611 98.14009094 -4.86602354
		 8.22552967 102.52442169 -4.87504578 7.93312883 102.47893524 -5.14769983 -7.27437162 89.66161346 -2.14752769
		 -7.040271759 89.66161346 -2.47906017 7.040271759 89.66161346 -2.47906017 7.27437162 89.66161346 -2.14752769
		 12.45211601 123.61127472 -12.72439098 12.74155807 123.61679077 -12.4422102 12.53702164 123.84197998 -12.63781166
		 12.68683815 123.7496109 -12.43861198 12.38460541 123.74467468 -12.7151804 -12.53702164 123.84197998 -12.63781166
		 -12.38460541 123.74467468 -12.7151804 -12.68683815 123.7496109 -12.43861198 -12.74155807 123.61679077 -12.4422102
		 -12.45211601 123.61127472 -12.72439098 -8.14493465 85.26499939 -2.15451813 -0.31178904 85.26499939 -4.77050972
		 -8.14492798 85.26499939 2.76771307 -0.31178236 85.66838074 4.98318386 -8.17733765 91.46975708 2.80409813
		 -0.31178808 91.46975708 5.28616858 -8.17734337 91.46975708 -2.39304352 -0.31179476 91.46975708 -5.0090351105
		 -5.7220459e-06 91.46975708 -5.0090360641 -5.7220459e-06 85.26499939 -4.77050972 -5.7220459e-06 91.46974945 5.28616762
		 -6.0796738e-06 85.66838074 4.98318434 -7.28577518 49.48912811 -0.64845634 -3.59828711 49.48912811 -2.44148898
		 -3.47651052 49.48912811 0.92396355 -6.55360126 49.48912811 1.21973407 -6.26467562 32.92198181 -1.66219115
		 -3.81057382 32.921978 -1.74061894 -6.021428585 32.92198181 1.22130501 -3.92589498 32.921978 0.79873979
		 -7.26125383 54.90462875 2.22927284 -2.19617939 54.90462875 1.80670774 -7.090595245 54.90462875 -2.50864339
		 -2.27943993 54.90462875 -2.58707142 -6.45947838 30.60995865 -2.5234797 -3.19394016 30.60995674 -2.4179368
		 -3.38624334 30.60995674 1.92536247 -6.75364161 30.60995865 2.34792757 -5.92742157 29.37137413 -1.32792592
		 -4.2287035 29.37137794 -1.40635383 -4.036700249 29.37137794 0.46447456 -6.23080397 29.37137413 0.86157537
		 -6.517941 6.07175827 -1.34690106 -4.24234724 6.071754456 -1.34690106 -8.52804756 -0.16626358 -0.33533168
		 -2.23224115 -0.16627502 -0.33533168 -2.23224115 -0.16627502 3.52834558 -8.52804756 -0.16626358 3.52834558
		 -8.52804756 -0.16626358 16.51309013 8.14493465 85.26499939 -2.15451813 0.31178904 85.26499939 -4.77050972
		 8.14492798 85.26499939 2.76771307 0.31178236 85.66838074 4.98318386 8.17733765 91.46975708 2.80409813
		 0.31178379 91.46975708 5.28616858 8.17734337 91.46975708 -2.39304352 0.31179047 91.46975708 -5.0090351105
		 7.28577518 49.48912811 -0.64845634 3.59828711 49.48912811 -2.44148898 3.47651052 49.48912811 0.92396355
		 6.55360126 49.48912811 1.21973407 6.26467562 32.92198181 -1.66219115 3.81057382 32.921978 -1.74061894
		 6.021428585 32.92198181 1.22130501 3.92589498 32.921978 0.79873979 7.26125383 54.90462875 2.22927284
		 2.19617939 54.90462875 1.80670774 7.090595245 54.90462875 -2.50864339 2.27943993 54.90462875 -2.58707142
		 6.45947838 30.60995865 -2.5234797 3.19394016 30.60995674 -2.4179368 3.38624334 30.60995674 1.92536247
		 6.75364161 30.60995865 2.34792757 5.92742157 29.37137413 -1.32792592 4.2287035 29.37137794 -1.40635383
		 4.036700249 29.37137794 0.46447456 6.23080397 29.37137413 0.86157537 6.517941 6.07175827 -1.34690106
		 4.24234724 6.071754456 -1.34690106 8.52804756 -0.16626358 -0.33533168 2.23224115 -0.16627502 -0.33533168
		 2.23224115 -0.16627502 3.52834558 8.52804756 -0.16626358 3.52834558 8.52804756 -0.16626358 16.51309013
		 2.50755644 49.48912811 -1.31830394 0.31179088 85.26499939 0.39073107 -5.9112872e-06 85.26499939 0.39073136
		 -0.31178552 85.26499939 0.39073107 -2.50755644 49.48912811 -1.31830394 5.18569183 1.40915608 16.47371483
		 5.18569183 2.58436012 18.53668213 5.21004295 -0.1662696 18.57605743 5.21004295 -0.1662696 16.51309013
		 5.21004295 -0.1662696 3.52834558 -5.21004295 -0.1662696 3.52834558 -5.21004295 -0.1662696 16.51309013
		 -5.21004295 -0.1662696 18.57605743 -5.18569183 2.58436012 18.53668213 -5.18569183 1.40915608 16.47371483
		 7.12482166 32.92198181 -0.27846897 8.066547394 30.60995865 -0.31184363 7.031784058 29.37137794 -0.26856673
		 6.517941 6.07175827 -0.23134305 8.52804756 -0.16626358 0.83339101 5.21004295 -0.1662696 0.83338451
		 2.23224115 -0.16627502 0.83339101 4.24234772 6.071754456 -0.23134305 3.060233355 29.37137413 -0.26856673
		 2.025470495 30.60995865 -0.31184363 2.96719527 32.921978 -0.27846897 1.11097002 54.90462875 -0.22517848
		 8.19495773 54.90462875 -0.22517848 -7.12482166 32.92198181 -0.27846897 -8.19495773 54.90462875 -0.22517848
		 -1.11097002 54.90462875 -0.22517848 -2.96719527 32.921978 -0.27846897 -2.025470495 30.60995865 -0.31184363
		 -3.060233355 29.37137413 -0.26856673 -4.24234772 6.071754456 -0.23134305 -2.23224115 -0.16627502 0.83339101
		 -5.21004295 -0.1662696 0.83338451 -8.52804756 -0.16626358 0.83339101 -6.517941 6.07175827 -0.23134305
		 -7.031784058 29.37137794 -0.26856673 -8.066547394 30.60995865 -0.31184363;
	setAttr ".vt[498:663]" -5.27042961 4.38049555 6.8662858 -8.52804756 -0.16626358 6.47765636
		 -5.21004295 -0.1662696 6.47765636 -2.23224115 -0.16627502 6.47765636 5.27042961 4.38049555 6.8662858
		 8.52804756 -0.16626358 6.47765636 5.21004295 -0.1662696 6.47765636 2.23224115 -0.16627502 6.47765636
		 4.15411186 91.46975708 5.069320202 4.38249016 91.46975708 5.0010256767 4.36771202 85.26499939 4.92182016
		 4.13685369 85.27759552 4.98318434 5.045396805 49.48912811 2.97876692 4.80749893 49.48912811 2.96333718
		 4.78427505 49.48912811 -3.18216062 5.02042675 49.48912811 -3.14921021 4.36348343 85.26499939 -4.70090389
		 4.13549185 85.26499939 -4.77050972 4.37993479 91.46975708 -4.93963909 4.15187979 91.46975708 -5.0090351105
		 -4.15188122 91.46975708 -5.0090351105 -4.37993622 91.46975708 -4.93963909 -4.36352539 85.26499939 -4.70087576
		 -4.1354413 85.26499939 -4.77050972 -5.02042675 49.48912811 -3.14921021 -4.78427505 49.48912811 -3.18216062
		 -4.80749893 49.48912811 2.96333718 -5.045396805 49.48912811 2.97876692 -4.36748934 85.26499939 4.92194748
		 -4.1371088 85.277565 4.98318434 -4.38249159 91.46975708 5.0010251999 -4.15411329 91.46975708 5.069320202
		 -6.517941 6.07175827 0.78779536 -6.59982395 5.81764889 1.11544931 -6.35609198 6.013284206 1.21856534
		 -6.5154233 6.27603817 0.95153105 -5.15369654 6.28022385 1.34088564 -5.48704195 6.28157711 1.34649503
		 -5.31685448 6.0083789825 1.60274315 -6.52471542 5.63654661 2.20981574 -6.66623259 5.76573229 1.58350635
		 -1.89370573 1.51733208 16.66361046 -1.84574997 1.29728711 16.34601021 -2.23224115 -0.16627502 16.34851074
		 -2.23224115 -0.16627502 16.67766953 -2.39677238 -0.16627473 16.51309013 -8.89675713 1.12275374 16.48087311
		 -8.69054317 1.40915811 16.47371483 -8.73583221 2.58436179 18.53668213 -8.93100166 2.16610551 18.31749916
		 -8.29199028 -0.16626401 18.57605743 -8.52804756 -0.16626358 18.34308243 -2.0075824261 2.58435845 18.53668213
		 -1.78160775 2.4588325 18.31633377 -2.4682982 -0.16627461 18.57605743 -2.23224115 -0.16627502 18.34308243
		 6.517941 6.07175827 0.78779536 6.5153656 6.28068018 0.95151299 6.31728792 6.012486935 1.23578966
		 6.57977104 5.87987947 1.075501204 5.48563623 6.27982521 1.34692347 5.15217113 6.28215218 1.34035909
		 5.31685352 6.0083503723 1.60283518 8.73993397 2.58436179 18.53668213 8.93180656 2.17316771 18.32119942
		 8.52804756 -0.16626358 18.34308243 8.29199028 -0.16626401 18.57605743 2.0075824261 2.58435845 18.53668213
		 1.78160775 2.4588325 18.31633377 2.4682982 -0.16627461 18.57605743 2.23224115 -0.16627502 18.34308243
		 6.52471542 5.63654661 2.20981574 6.66623259 5.76573229 1.58350635 1.84574997 1.29728711 16.34601021
		 1.89370573 1.51733208 16.66361046 2.23224115 -0.16627502 16.34851074 2.39677238 -0.16627473 16.51309013
		 2.23224115 -0.16627502 16.67766953 8.69054317 1.40915811 16.47371483 8.89675713 1.12275374 16.48087311
		 5.11155367 32.92198181 1.99674141 5.44016361 32.92198181 1.97326303 5.40140104 30.60995865 3.92159104
		 5.072180271 30.60995865 3.92241883 5.44981813 29.37137413 2.35124159 5.12081242 29.37137413 2.35739923
		 4.24234724 6.071754456 0.77389407 4.19564819 5.92683172 1.045358062 4.21100283 6.012362957 1.1500355
		 4.24055099 6.27525282 0.94806582 5.21004295 -0.1662696 -1.90939867 5.047624588 -0.1662699 -1.979105
		 5.37665033 -0.1662693 -1.98663306 5.4855442 6.07175684 -1.93743646 5.15656281 6.071755886 -1.92957973
		 5.26371193 29.37137413 -2.1491518 4.93460989 29.37137413 -2.16107321 5.2064085 30.60995865 -4.088486195
		 4.87733984 30.60995865 -4.1101017 5.25847244 32.92198181 -2.95477438 4.92963076 32.92198181 -2.9690392
		 4.79345655 54.90462875 -3.90360832 4.46405268 54.90462875 -3.9042058 4.64922667 54.90463257 0.22391437
		 4.97828913 54.90463257 0.21671529 4.65391111 54.90462875 3.86287761 4.98297405 54.90462875 3.87441659
		 -5.11155367 32.92198181 1.99674141 -5.44016361 32.92198181 1.97326303 -4.98297405 54.90462875 3.87441659
		 -4.65391111 54.90462875 3.86287761 -4.97828913 54.90462875 0.21671529 -4.64922667 54.90462875 0.22391437
		 -4.46405268 54.90462875 -3.9042058 -4.79345655 54.90462875 -3.90360832 -5.25854874 32.92198181 -2.95467639
		 -4.92954779 32.92198181 -2.96894789 -5.2064085 30.60995865 -4.088486195 -4.87733984 30.60995865 -4.1101017
		 -5.26371193 29.37137413 -2.1491518 -4.93460989 29.37137413 -2.16107321 -5.4855628 6.07175684 -1.93742609
		 -5.15654469 6.071755886 -1.92956829 -5.21004295 -0.1662696 -1.90939867 -5.37665033 -0.1662693 -1.98663306
		 -5.047624588 -0.1662699 -1.979105 -4.24234724 6.071754456 0.77389407 -4.24055099 6.27525282 0.94806582
		 -4.21100283 6.012362957 1.1500355 -4.19564819 5.92683172 1.045358062 -5.44996834 29.37137413 2.35095596
		 -5.1206522 29.37137413 2.35711908 -5.40134907 30.60995865 3.9216516 -5.072231293 30.60995865 3.92247915
		 -4.30168629 5.42029762 2.33113694 -4.15666199 5.60865831 1.88360119 -4.17748117 5.94884682 1.36147571
		 4.30168629 5.42029762 2.33113694 4.17748117 5.94884682 1.36147571 4.15666199 5.60865831 1.88360119
		 -5.55104971 6.0094842911 1.51616752 -5.084467411 6.0092163086 1.50760984 5.08292675 6.0091991425 1.50705194
		 5.54934978 6.009311676 1.51753545 0 149.49476624 -2.14890337 8.22065926 154.47210693 -2.14890957
		 -1.9073486e-06 160.21339417 -2.14891338 0 148.19068909 2.016205311 0 146.22247314 10.74201107
		 -8.22065926 154.47210693 -2.14890957 9.5367432e-07 160.21339417 11.36407471 10.45038414 160.21339417 7.60750484
		 10.59311104 160.0078277588 -2.14891291 10.4575634 160.21339417 -2.14891338 10.4575634 160.21339417 -9.21369553
		 0 160.21339417 -11.67435265 -10.43227196 160.21339417 7.59476328 -10.59311104 160.0078277588 -2.14891291
		 -10.4575634 160.21339417 -2.14891338 -10.4575634 160.21339417 -9.21369553 -0.098499298 149.63406372 -9.98718643
		 0.10007047 149.6362915 -9.9868145 0 149.49476624 -9.87689972 10.51229954 149.65815735 -7.39078426
		 10.41996288 149.49476624 -7.41319752 10.37699509 149.64857483 -7.54585123;
	setAttr ".vt[664:829]" 10.40643883 149.49476624 -2.14890337 10.51204872 149.65867615 -2.14890337
		 10.59007931 149.49476624 -1.96316004 0.096928596 149.49476624 10.33580494 -0.096928596 149.49476624 10.33580494
		 -0.096928596 154.47210693 8.81857681 0.096928596 154.47210693 8.81857681 10.48489189 149.40600586 6.3665204
		 10.39334774 149.49476624 6.60705471 8.11716175 154.47210693 5.076983452 8.22065926 154.47210693 4.9117713
		 0.09692955 154.47210693 -9.98096657 -0.096927643 154.47210693 -9.98096657 8.22065926 154.47210693 -7.39250994
		 8.10080242 154.47210693 -7.54928064 10.45048904 148.19068909 2.016205311 10.59007645 148.32119751 2.058093786
		 6.87480068 146.50012207 10.66609764 7.11878252 146.56547546 10.63472557 0 146.77897644 15.46405888
		 0.09914159 146.96298218 15.42360306 -0.09914159 146.96298218 15.42360306 6.47262096 146.94491577 15.37050819
		 6.51831913 146.7570343 15.43973732 4.85178089 145.61314392 14.016424179 4.97065401 145.6368866 14.1977253
		 0 145.60125732 14.029637337 0 145.65364075 14.21628571 -10.45175743 148.19068909 2.016205311
		 -10.59007645 148.32119751 2.058093786 -7.118783 146.56547546 10.63472557 -6.87480116 146.50012207 10.66609764
		 -10.39334774 149.49476624 6.60705471 -10.48489189 149.40600586 6.3665204 -8.22065926 154.47210693 4.9117713
		 -8.1171627 154.47210693 5.076983452 -10.5143261 149.65390015 -7.39396524 -10.37699509 149.64857483 -7.54585123
		 -10.41996384 149.49476624 -7.41319752 -8.10080338 154.47210693 -7.54928064 -8.22065926 154.47210693 -7.39250994
		 -10.59007931 149.49476624 -1.96316004 -10.51205063 149.65867615 -2.14890337 -10.40643883 149.49476624 -2.14890337
		 -6.51831913 146.7570343 15.43973732 -6.47262096 146.94491577 15.37050819 -4.85073233 145.61393738 14.013435364
		 -4.97258806 145.63829041 14.19927597 10.59283161 160.0071868896 7.54796696 10.53944874 160.084457397 7.64746761
		 10.4842844 160.0071716309 7.71071482 0.09692955 160.006729126 11.47121334 9.5367432e-07 160.086578369 11.45135212
		 -0.096927643 160.006729126 11.47121334 -0.096928596 160.014572144 -11.80073166 0 160.092147827 -11.76540184
		 0.096928596 160.014572144 -11.80073166 10.47280216 160.0084991455 -9.3524704 10.54451942 160.082138062 -9.28434181
		 10.59335804 160.0084075928 -9.20064926 -10.48428631 160.0071716309 7.71071482 -10.53569031 160.080566406 7.64413834
		 -10.59283161 160.0071868896 7.54796696 -10.59335899 160.0084075928 -9.20064926 -10.54452133 160.082138062 -9.28434181
		 -10.47280312 160.0084991455 -9.3524704 -0.33038676 152.92649841 7.52873564 -0.88979059 152.41015625 7.54381132
		 -0.90248233 151.66781616 7.77837133 -0.361002 151.13453674 8.044067383 -0.33039331 153.40858459 9.18192577
		 -0.88978112 152.89225769 9.14994812 -0.9024877 152.1499176 9.38687325 -0.36100674 151.61662292 9.74130058
		 -0.0086629912 153.58843994 7.48412657 -0.0086559579 154.070526123 9.0098304749 -1.077860355 153.19198608 7.33986807
		 -1.084534526 153.18582153 7.34003687 -1.084548712 153.66342163 8.8598032 -1.077872634 153.66958618 8.85893631
		 -1.57832944 152.049194336 7.65786409 -1.5910275 152.028839111 7.66430521 -1.59102404 152.51092529 9.19000149
		 -1.57832944 152.53128052 9.18356705 -1.23598266 150.90562439 8.02258873 -1.21109915 150.88113403 8.032972336
		 -1.21109748 151.36320496 9.57220936 -1.2359935 151.38768005 9.56142998 -0.010056012 150.33847046 8.51105595
		 -0.010052495 150.82055664 10.036751747 7.6666474e-06 153.40342712 9.22061062 -9.4622374e-07 151.61097717 9.78699207
		 -5.6028366e-06 152.52442932 9.49836636 -9.6485019e-07 152.49003601 9.5092268 -9.4622374e-07 153.58843994 7.48412514
		 2.5704503e-06 154.070526123 9.0098247528 7.8231091e-07 150.33839417 8.5110693 1.2941659e-05 150.82051086 10.036758423
		 0.33041352 152.92649841 7.52873182 0.88978028 152.41020203 7.54380226 0.90249127 151.6678772 7.77836227
		 0.36101282 151.13458252 8.044050217 0.33040702 153.40858459 9.18192577 0.88977861 152.89225769 9.14994526
		 0.90248573 152.14996338 9.38685703 0.36102206 151.61665344 9.74128914 0.0086688474 153.58850098 7.48411703
		 0.0086653307 154.070587158 9.009812355 1.077878118 153.19198608 7.33986568 1.084554553 153.18583679 7.34003401
		 1.084546208 153.66345215 8.85980415 1.077871799 153.6696167 8.85894489 1.57833493 152.049194336 7.65786409
		 1.59103584 152.028839111 7.66430521 1.59103942 152.51092529 9.18999767 1.57833493 152.53128052 9.18356705
		 1.23600245 150.90562439 8.022583008 1.21111703 150.88111877 8.032967567 1.21110845 151.36320496 9.57221127
		 1.23599076 151.38771057 9.56142712 0.010059841 150.33840942 8.51106453 0.010065921 150.82051086 10.036764145
		 -7.85304213 97.95529175 2.31651926 0 97.95529175 7.48460913 -7.85304213 97.95529175 -5.58767509
		 0 97.95529175 -5.58767509 0 102.66368103 -5.70738745 1.2418954e-05 102.66368103 8.55253696
		 -8.91609097 102.66368103 4.12334156 -8.91609097 102.66368103 -5.70738745 7.85304213 97.95529175 2.31651926
		 7.85304213 97.95529175 -5.58767509 8.91609097 102.66368103 4.12334156 8.91609097 102.66368103 -5.70738745
		 2.2791228e-05 102.66368103 5.03186655 -6.53139067 102.66368103 2.78974414 -6.53139067 102.66368103 -2.18671918
		 0 102.66368103 -2.18671918 6.53139067 102.66368103 2.78974414 6.53139067 102.66368103 -2.18671918
		 -5.57484293 97.95529175 1.58378506 0 97.95529175 3.98382521 -5.57484293 97.95529175 -2.086890697
		 0 97.95529175 -2.086890697 5.57484293 97.95529175 1.58378506 5.57484293 97.95529175 -2.086890697
		 0 144.61645508 -7.32567453 0 138.26902771 -5.78067207 0 151.018127441 -7.2923007
		 0 136.20025635 -5.33074188 5.12593555 136.54527283 5.47636032 5.94900417 144.61645508 5.5775671
		 6.43828964 151.018127441 5.5775671 3.60162973 135.91807556 6.14223957 9.5367432e-07 134.66497803 6.98647928
		 0.25295544 134.66497803 6.98647928 0.25295258 144.61645508 6.94974136 0.25295258 151.018127441 6.98647928
		 3.85518193 144.61645508 6.21033955 4.07468462 151.018127441 6.21033955 1.9073486e-06 144.61645508 6.94974041
		 0 151.018127441 6.98647928 -5.12593555 136.54527283 5.47636032 -5.94900513 144.61645508 5.5775671
		 -6.43828964 151.018127441 5.5775671 -3.60162973 135.91807556 6.14223957;
	setAttr ".vt[830:995]" -0.25295496 134.66497803 6.98647928 -0.25295258 144.61645508 6.94974136
		 -0.25295258 151.018127441 6.98647928 -3.85518193 144.61645508 6.21033955 -4.074684143 151.018127441 6.21033955
		 7.66007662 144.61645508 4.77505207 7.57462025 144.61645508 4.90303326 6.83950567 135.0093688965 4.76521397
		 6.75666571 135.051345825 4.89615917 8.063817024 151.018127441 4.9030695 8.14936256 151.018127441 4.77518654
		 3.72796106 133.42095947 4.77342606 3.70642948 133.48356628 4.91228867 0.29314661 131.87017822 4.7835331
		 0.25295091 131.91847229 4.92721653 0 131.87237549 4.7776432 0 131.91569519 4.9251318
		 -0.29314709 131.87017822 4.7835331 -0.25295115 131.91847229 4.92721653 -7.66007662 144.61645508 4.7750721
		 -7.57463884 144.61645508 4.90302563 -6.83950615 135.0093688965 4.76521397 -6.75666428 135.051345825 4.89615917
		 -8.14936256 151.018127441 4.77518654 -8.063817978 151.018127441 4.9030695 -3.72797871 133.42098999 4.77333546
		 -3.70642638 133.48365784 4.91233158 7.51972246 144.61645508 -7.32567453 7.66131783 144.63269043 -7.18630314
		 6.94938993 138.28112793 -5.78443718 7.093428135 138.2270813 -5.64497566 8.14936256 151.018127441 -7.15169144
		 8.0083456039 151.018127441 -7.2923007 5.52216339 136.2829895 -5.3487339 5.60510778 136.16404724 -5.19911718
		 0 135.6824646 -5.2018733 0 135.53424072 -5.069390297 4.9564743 135.68154907 -5.20164204
		 4.99569464 135.52644348 -5.048448086 -7.51972246 144.61645508 -7.32567453 -7.66133022 144.63284302 -7.18497992
		 -6.95146036 138.28114319 -5.78362036 -7.093474865 138.22767639 -5.64689875 -4.95988178 135.67784119 -5.20072174
		 -4.99778557 135.52807617 -5.052819729 -8.0083456039 151.018127441 -7.2923007 -8.14936256 151.018127441 -7.15169144
		 -5.51914978 136.28529358 -5.34923792 -5.60510635 136.16404724 -5.19911814 -0.66234457 126.33720398 -4.17028809
		 0 126.33720398 -4.17028809 -0.66234457 126.33720398 -1.96941662 0 126.33720398 -1.96941662
		 -0.90320277 135.63845825 -2.61677051 0 135.63845825 -2.61677051 -0.90320277 136.31349182 -5.29318857
		 0 136.31349182 -5.29318857 0.66234457 126.33720398 -4.17028809 0.66234457 126.33720398 -1.96941662
		 0.90320277 135.63845825 -2.61677051 0.90320277 136.31349182 -5.29318857 2.2979486 110.94207764 4.83887434
		 1.61769915 111.1057663 5.033241749 1.049994349 110.66011047 5.11323023 1.022327542 109.94065094 5.018608093
		 1.55553186 109.48921204 4.82062006 2.24809265 109.64571381 4.66835785 2.57849693 110.2922821 4.67646837
		 -2.46631765 127.98705292 -5.94865799 0 127.98705292 -6.6746769 -2.79539442 127.98705292 -0.92344636
		 0 127.98705292 -0.15159059 -2.79539442 130.27516174 -0.92344636 0 130.27516174 -0.22682261
		 -2.46631765 130.27516174 -5.94865799 0 130.27516174 -6.6746769 -2.79539442 130.78096008 -0.92344636
		 -0.98898876 131.17835999 -0.22682406 0 130.78096008 -6.6746769 -2.46631765 130.78096008 -5.94865799
		 -2.06522131 130.87228394 -2.31122732 -1.27126932 131.087036133 -1.94285917 -1.91836107 130.87228394 -4.75344753
		 0 130.87228394 -5.47946692 0 130.27516174 -1.9041903 -2.06522131 127.27681732 -2.31122732
		 -1.27126932 127.27681732 -1.94285917 -1.91836107 127.27681732 -4.75344753 0 127.27681732 -5.47946692
		 0 127.27681732 -1.9041903 2.46631742 127.98705292 -5.94865799 2.79539442 127.98705292 -0.92344636
		 2.79539442 130.27516174 -0.92344636 2.46631742 130.27516174 -5.94865799 2.79539442 130.78096008 -0.92344636
		 0.98898876 131.17835999 -0.22682406 2.46631742 130.78096008 -5.94865799 2.065221786 130.87228394 -2.31122732
		 1.2712692 131.087036133 -1.94285917 1.91836154 130.87228394 -4.75344753 2.065221786 127.27681732 -2.31122732
		 1.2712692 127.27681732 -1.94285917 1.91836154 127.27681732 -4.75344753 3.27858949 127.98705292 -3.60520434
		 3.27858949 130.27516174 -3.60520434 3.27858949 130.78096008 -3.60520434 2.23858452 130.87228394 -3.48706222
		 2.23858452 127.27681732 -3.48706222 -2.23858404 127.27681732 -3.48706222 -2.23858404 130.87228394 -3.48706222
		 -3.27858949 130.78096008 -3.60520434 -3.27858949 130.27516174 -3.60520434 -3.27858949 127.98705292 -3.60520434
		 2.53645253 121.22983551 6.8976531 1.83589935 121.37217712 7.025227547 1.2638396 120.93068695 6.95362043
		 1.25104594 120.23777008 6.7367444 1.80715275 119.81525421 6.53791332 2.51339865 119.98129272 6.50684929
		 2.83796716 120.61082458 6.66693211 2.41876388 119.49651337 10.2517662 2.73439765 122.029563904 7.3317194
		 2.026440859 122.10396576 7.18828726 1.45870304 121.89550781 7.59016848 1.45870233 121.56113434 8.23479366
		 2.026440382 121.35267639 8.63668251 2.73439741 121.42708588 8.49324036 3.049468994 121.72830963 7.91248608
		 2.21264958 124.99811554 9.60853577 2.10605597 105.79625702 3.83959675 1.44343674 105.96394348 4.08480072
		 0.89642119 105.51702118 4.25309372 0.87692475 104.79196167 4.21775293 1.39962566 104.33481598 4.0053777695
		 2.070919752 104.48979187 3.77589679 2.38530755 105.1401825 3.702106 2.82834625 104.94563293 7.44834709
		 3.16189384 110.33721161 8.36982918 3.17412281 110.45067596 8.31902313 3.091827631 110.39653015 8.39584732
		 2.49294424 110.61486053 8.50970745 2.52159476 110.5361557 8.55913544 1.92523968 110.16920471 8.58970261
		 2.0029070377 110.12899017 8.63222408 1.89757347 109.44978333 8.49507713 1.97762942 109.47166443 8.54576874
		 2.43077517 108.99828339 8.29707432 2.46479511 109.059165955 8.36486053 3.1233356 109.1547699 8.14480972
		 3.097557068 109.20214844 8.22574329 3.45374131 109.80135345 8.15293026 3.39943504 109.79288483 8.23316288
		 2.71522641 109.79650116 8.40593147 2.64763045 109.85372925 8.43103218 2.61819053 109.81705475 8.43326473
		 2.59044766 109.7644577 8.43282127 2.63891149 109.72342682 8.41482544 2.68494034 109.76053619 8.40847778
		 2.94139504 120.14899445 10.32701588 2.90292573 120.074882507 10.37688923 2.2408421 120.29130554 10.4546032
		 2.2628603 120.20491028 10.4934597 1.66878164 119.84981537 10.38300133 1.74019277 119.80154419 10.42803955
		 1.65598881 119.15693665 10.16612625 1.72850454 119.16848755 10.22989082;
	setAttr ".vt[996:1161]" 2.21209502 118.734375 9.96727276 2.23659754 118.78240204 10.048205376
		 2.91834116 118.900383 9.93620396 2.88186312 118.93408203 10.019820213 3.24290943 119.52993011 10.096299171
		 3.17840767 119.50927734 10.16609097 2.73439789 125.24159241 8.99777222 2.6893487 125.27336121 9.07789135
		 2.026439667 125.31598663 8.85435677 2.042517424 125.34134674 8.94685936 1.45870042 125.10752869 9.25624466
		 1.52379787 125.15087128 9.31404781 1.45870113 124.7731781 9.90084362 1.52379858 124.84539795 9.90298939
		 2.026440382 124.56468201 10.30277538 2.042520046 124.6548996 10.27021885 2.73439765 124.63908386 10.15934181
		 2.68934941 124.7228775 10.13916969 3.049468279 124.94032288 9.57858276 2.97721624 124.99810791 9.60855579
		 3.31568241 105.59777832 7.24402761 3.29348731 105.53821564 7.31762886 2.65306711 105.76544189 7.48924589
		 2.68808436 105.69139862 7.54167461 2.1060524 105.31851959 7.65754652 2.18829989 105.28305817 7.69544411
		 2.086555481 104.59348297 7.62219954 2.17048645 104.62062073 7.6631484 2.60925364 104.1362915 7.40981483
		 2.64805532 104.20291138 7.46910143 3.28054762 104.29124451 7.18033218 3.26138711 104.34449005 7.25943279
		 3.59493709 104.94165039 7.10655069 3.54863191 104.93873596 7.19202137 -13.77924538 124.21628571 7.50412512
		 -13.66182041 124.24647522 7.66218138 -10.30718231 112.5715332 5.059291363 -10.33430004 112.56601715 4.8874855
		 -13.70278931 124.39595795 7.54568338 -13.72671318 124.992836 -2.51466513 -13.6432333 125.16082764 -2.41411996
		 -11.53762817 125.43069458 8.10272217 -11.52425289 125.27003479 8.20830727 -11.35473633 125.22106171 8.078639984
		 -11.36103344 125.36477661 7.92894268 -10.82809258 124.090408325 6.059567928 -10.81021309 123.93926239 6.18321943
		 -10.33998394 114.16622162 5.25692844 -10.37374878 113.20818329 5.083695889 -11.60859776 126.18278503 -2.41680598
		 -11.42984486 126.10318756 -2.42053699 -11.43072796 126.10289764 -2.61633277 -10.87592697 124.090423584 -2.66533995
		 -10.87491322 124.090423584 -2.4696157 -11.60941601 126.18300629 -2.6124146 -13.64224434 125.16114807 -2.61512756
		 -11.64824677 125.38336182 -13.9523859 -11.47079182 125.32486725 -13.7854929 -13.66672993 124.17015839 -13.58700657
		 -13.59509468 124.35729218 -13.64052677 -13.54032326 124.20296478 -13.74156857 -10.22804546 112.41674042 -8.34196377
		 -10.25191784 112.60208893 -8.63060284 -11.61823273 125.22298431 -14.045611382 -11.45531178 125.14001465 -13.87084961
		 -10.2889843 112.95265961 -8.77864456 -10.30037022 113.25556183 -8.781353 -10.89709663 123.90339661 -11.98141861
		 -10.92101288 124.090408325 -11.91040707 -10.26955795 112.51392365 -2.54038334 -10.2842474 112.51104736 -2.51461411
		 -9.93864059 116.66577148 -8.01000309 -9.99437046 116.66577148 3.98842573 -10.76802158 113.3997345 4.09078598
		 -8.4455452 119.067153931 -0.96670008 -9.030748367 119.8138504 -0.91998208 -13.26018047 116.010894775 4.97983217
		 -10.76802158 113.3997345 -6.12126923 -8.4455452 119.067153931 -3.7564826 -13.65371895 116.42321014 -8.64004135
		 -9.12315845 119.93175507 -4.1036129 -16.99757004 120.049049377 5.95625877 -16.99068642 120.24126434 6.11803722
		 -13.073989868 115.97885132 5.55978203 -13.19268227 115.92476654 5.41330767 -17.10833549 120.20085907 5.8643465
		 -16.45621681 119.35951996 4.99531507 -16.54500008 119.48651123 4.87323761 -17.074270248 120.36702728 6.0039930344
		 -17.088542938 122.20475769 -2.41665602 -17.061973572 122.40414429 -2.41711855 -13.14638901 123.21794128 6.78524303
		 -13.087227821 123.067245483 6.8973875 -17.1061039 120.19599915 -11.037689209 -17.073312759 120.37147522 -11.1244936
		 -17.062046051 122.40441132 -2.61219025 -17.088479996 122.20497131 -2.61278152 -16.84664726 119.87020874 -10.92651939
		 -16.54500008 119.49175262 -10.15887928 -16.43836975 119.34082794 -10.24414063 -16.98436737 120.22911072 -11.21449757
		 -13.65324879 116.42261505 -9.11856174 -13.54016685 116.51079559 -9.2572794 -13.082214355 123.056938171 -11.43611431
		 -13.14638901 123.22504425 -11.34824753 -13.14638901 125.248703 -2.61238742 -13.14638901 125.24971771 -2.41671014
		 -16.54500008 121.50778961 -2.41695333 -16.54500008 121.50868225 -2.6126318 -10.22995853 112.7131958 -6.36618567
		 -10.026266098 112.69289398 -6.43675852 -10.23254108 112.71649933 4.20600939 -10.035095215 112.68463135 4.31237888
		 -9.72063351 120.69411469 -0.86490691 -9.80208206 120.7980423 -1.019372225 -9.80208206 120.7980423 -4.2747283
		 -9.70926476 120.67961884 -4.40386581 -9.80208206 120.7980423 -2.52411747 -9.80208206 120.7980423 -2.71982098
		 -10.90377426 118.57331848 -9.1386013 -8.6654911 113.96653748 5.486485 -8.6654911 113.96653748 -6.77797508
		 -10.59852695 117.94506073 6.10328484 -9.46114159 114.22790527 -4.7203517 -9.48412132 114.77607727 -5.192626
		 -12.091180801 116.8466568 -5.77435303 -12.1097908 116.42706299 -5.28559828 -25.16064644 106.97652435 -7.075501919
		 -24.84314919 106.73577881 -6.63011312 -9.87664223 124.13945007 -6.23846912 -9.89946079 124.68377686 -5.84953785
		 -15.51169205 120.29730988 -6.16945314 -15.21816063 119.95842743 -6.53944445 -27.47612953 108.45341492 -7.054790974
		 -27.086492538 108.22853088 -7.43353891 -25.16432381 106.60017395 -0.99062592 -24.88866234 106.3006134 -1.40914786
		 -47.61891556 86.78386688 -7.49040747 -47.88938141 87.10205078 -7.079718113 -12.40528679 116.62931061 2.98746157
		 -12.12270737 116.30356598 2.56559491 -9.48012161 114.68067169 4.47943497 -9.46114159 114.22790527 4.099888325
		 -27.39784622 108.52974701 -1.60424244 -27.18516922 108.17894745 -1.19460773 -48.80133057 88.17490387 -7.13285494
		 -49.060970306 88.48035431 -7.55699968 -15.51169205 120.29730988 2.29179287 -15.25354195 119.99249268 2.72234845
		 -9.89946079 124.68377686 3.76408291 -9.8803339 124.22750854 4.16430902 -47.87377548 87.083694458 -9.053510666
		 -47.61891556 86.78386688 -8.62722015 -49.060970306 88.48035431 -8.76856995 -48.78478622 88.15544128 -9.16339779
		 -24.86371422 105.16976929 -4.27096319 -12.11562824 115.0018844604 -1.73795199 -15.51169205 120.70970154 -2.4631052
		 -27.44183731 108.89923859 -4.66724348 -47.61891174 85.41448975 -8.11353874 -49.060970306 88.89273071 -8.23785591
		 -9.46114159 112.85853577 -0.73483121 -9.89946079 125.096153259 -1.63840616 -7.97310305 78.10982513 -1.85330582
		 -4.49490547 78.10982513 -4.39054251 -4.26520824 78.10982513 -4.45283985;
	setAttr ".vt[1162:1327]" -0.96908861 78.10982513 -4.30470562 -0.75093973 78.10982513 0.048924059
		 -0.94472802 78.43253326 4.17133999 -4.27118683 78.11988068 4.57921505 -4.50307083 78.10982513 4.53331137
		 -7.82666302 78.10982513 2.45811725 -7.80127096 70.95465088 -1.55209351 -4.62628555 70.95465088 -4.080209255
		 -4.39497471 70.95465088 -4.13516998 -1.62638843 70.95465088 -3.83890152 -1.19009387 70.95465088 -0.29288295
		 -1.57767367 71.19668579 3.35949588 -4.40526485 70.96219635 4.17524576 -4.63865232 70.95465088 4.14467525
		 -7.5083971 70.95465088 2.14852142 -7.62943935 63.79948425 -1.25088143 -4.75766563 63.79948425 -3.76987648
		 -4.52474117 63.79948425 -3.81750059 -2.28368711 63.79948425 -3.3730979 -1.62924755 63.79948425 -0.63468957
		 -2.2106185 63.96083832 2.54765248 -4.53934288 63.80451202 3.77127671 -4.77423334 63.79948425 3.75603962
		 -7.19013214 63.79948425 1.83892596 -7.45760727 56.64431 -0.94966888 -4.88904619 56.64431 -3.45954347
		 -4.65450811 56.64431 -3.49983096 -2.94098711 56.64431 -2.90729332 -2.068402052 56.64431 -0.97649676
		 -2.84356451 56.72498322 1.73580801 -4.67342091 56.64681625 3.36730695 -4.90981483 56.64431 3.36740303
		 -6.87186623 56.64431 1.52933002 0.96908861 78.10982513 -4.30470562 4.2652483 78.10982513 -4.45283985
		 4.49487209 78.10982513 -4.39056492 7.97310305 78.10982513 -1.85330582 7.82666302 78.10982513 2.45811725
		 4.50324917 78.10982513 4.53320932 4.27098274 78.11990356 4.57921505 0.94472802 78.43253326 4.17133999
		 0.75094312 78.10982513 0.048924085 1.62638843 70.95465088 -3.83890152 4.39500523 70.95465088 -4.13516998
		 4.62626076 70.95465088 -4.080226421 7.80127096 70.95465088 -1.55209351 7.5083971 70.95465088 2.14852142
		 4.63878632 70.95465088 4.14459896 4.40511179 70.96221161 4.17524576 1.57767367 71.19668579 3.35949588
		 1.19009638 70.95465088 -0.29288292 2.28368711 63.79948425 -3.3730979 4.52476168 63.79948425 -3.81750059
		 4.75764942 63.79948425 -3.76988792 7.62943935 63.79948425 -1.25088143 7.19013214 63.79948425 1.83892596
		 4.77432299 63.79948425 3.7559886 4.53924036 63.80451965 3.77127647 2.2106185 63.96083832 2.54765248
		 1.62924945 63.79948425 -0.63468957 2.94098711 56.64431 -2.90729332 4.65451813 56.64431 -3.49983096
		 4.88903809 56.64431 -3.45954895 7.45760727 56.64431 -0.94966888 6.87186623 56.64431 1.52933002
		 4.90985966 56.64431 3.36737776 4.67336941 56.64682388 3.36730671 2.84356451 56.72498322 1.73580801
		 2.068402767 56.64431 -0.97649676 -6.33138514 38.4176445 1.473297 -5.3258667 38.4176445 2.44855142
		 -4.99714327 38.4176445 2.46327543 -3.49346614 38.41764069 1.050731778 -2.50313902 38.41764069 -0.26514634
		 -3.4277904 38.41764069 -1.952232 -4.81317377 38.4176445 -3.20276213 -5.14227581 38.4176445 -3.19190931
		 -6.47115564 38.4176445 -1.87380409 -7.39235592 38.4176445 -0.26514634 -6.64134121 43.91329956 1.72528875
		 -5.21156931 43.91329956 2.92383957 -4.88273239 43.91329956 2.92980886 -3.06103754 43.91329575 1.30272341
		 -2.039083242 43.91329956 -0.25182372 -3.045007229 43.91329956 -2.16384506 -4.69680023 43.91329956 -3.43657613
		 -5.026002884 43.91329956 -3.429142 -6.67763519 43.91329956 -2.085417032 -7.65988922 43.91329956 -0.25182372
		 -6.95129728 49.40896606 1.97728074 -5.097271919 49.40896606 3.3991282 -4.76832199 49.40896606 3.39634299
		 -2.62860847 49.40896225 1.55471563 -1.57502675 49.40896606 -0.23850109 -2.66222358 49.40896606 -2.37545824
		 -4.58042622 49.40896606 -3.67039108 -4.90972996 49.40896606 -3.66637516 -6.88411522 49.40896606 -2.29703021
		 -7.92742348 49.40896606 -0.23850109 3.49346614 38.41764069 1.050731778 4.99714327 38.4176445 2.46327543
		 5.3258667 38.4176445 2.44855142 6.33138514 38.4176445 1.473297 7.39235592 38.4176445 -0.26514634
		 6.47115564 38.4176445 -1.87380409 5.14221859 38.4176445 -3.19198251 4.81323624 38.4176445 -3.20283055
		 3.4277904 38.41764069 -1.952232 2.50313902 38.41764069 -0.26514634 3.06103754 43.91329575 1.30272341
		 4.88273239 43.91329956 2.92980909 5.21156931 43.91329956 2.92383933 6.64134121 43.91329956 1.72528875
		 7.6598897 43.91329956 -0.25182372 6.67763519 43.91329956 -2.085417032 5.025964737 43.91329956 -3.42919111
		 4.69684172 43.91329956 -3.4366219 3.045007229 43.91329956 -2.16384506 2.039083004 43.91329575 -0.25182372
		 2.62860847 49.40896225 1.55471563 4.76832199 49.40896606 3.39634299 5.097271919 49.40896606 3.3991282
		 6.95129728 49.40896606 1.97728074 7.92742348 49.40896606 -0.23850109 6.88411522 49.40896606 -2.29703021
		 4.90971088 49.40896606 -3.66639972 4.5804472 49.40896606 -3.67041373 2.66222358 49.40896606 -2.37545824
		 1.57502651 49.40896225 -0.23850109 -6.64640236 11.89666367 -0.24064898 -6.37031126 11.89666176 -1.34215736
		 -5.43009996 11.89666176 -1.99035764 -5.10106087 11.89665985 -1.98744464 -4.23893642 11.89665985 -1.36176431
		 -3.94681931 11.89665985 -0.24064898 -6.77486229 17.72156143 -0.24995486 -6.22268152 17.72156143 -1.33741355
		 -5.37463713 17.72155952 -2.043288708 -5.045577049 17.72155952 -2.045320749 -4.23552561 17.72156143 -1.37662745
		 -3.65129089 17.72155952 -0.24995486 -6.90332365 23.54647064 -0.2592608 -6.075051308 23.54646683 -1.33266973
		 -5.31917477 23.54646683 -2.096220255 -4.99009323 23.54646683 -2.1031971 -4.23211479 23.54647064 -1.3914907
		 -3.355762 23.54646683 -0.2592608 3.94681931 11.89665985 -0.24064898 4.23893642 11.89665985 -1.36176431
		 5.1010747 11.89665985 -1.98745322 5.43008614 11.89666176 -1.99036515 6.37031126 11.89666176 -1.34215736
		 6.64640236 11.89666367 -0.24064898 3.65129089 17.72155762 -0.24995486 4.23552561 17.72156143 -1.37662745
		 5.045586109 17.72155762 -2.045326471 5.37462807 17.72156143 -2.043294191 6.22268152 17.72156143 -1.33741355
		 6.77486229 17.72156334 -0.24995486 3.355762 23.54646683 -0.2592608 4.23211479 23.54647064 -1.3914907
		 4.990098 23.54646683 -2.10319996 5.31917 23.54646683 -2.096222878 6.075051308 23.54646683 -1.33266973
		 6.90332365 23.54647064 -0.2592608 -4.087662697 23.59734726 0.58537239;
	setAttr ".vt[1328:1493]" -5.1289134 23.59858894 2.10306072 -5.45923662 23.59892464 2.099840641
		 -6.30195904 23.5975399 0.88406432 -4.13862514 17.82332039 0.7062701 -5.13717461 17.82580566 1.8490026
		 -5.46850491 17.82648087 1.84872556 -6.37311363 17.8237114 0.90655321 -4.18958807 12.049286842 0.82716805
		 -5.14543533 12.053014755 1.59494412 -5.47777367 12.054029465 1.59761035 -6.44426775 12.049875259 0.92904216
		 4.087662697 23.59734726 0.58537239 5.1286521 23.59906769 2.10313916 5.45877266 23.59848595 2.10016203
		 6.30194378 23.59869957 0.88405985 4.13862514 17.82332039 0.7062701 5.13649178 17.82676697 1.84887934
		 5.46772718 17.82560349 1.84908271 6.37308407 17.82603264 0.90654421 4.18958807 12.049286842 0.82716805
		 5.14433146 12.054459572 1.59461927 5.47668171 12.052714348 1.59800315 6.44422531 12.053356171 0.92902851
		 -5.24116802 3.5001812 9.70830154 -2.99361348 3.03384757 9.59196472 -2.85130596 2.98979163 9.56794071
		 -2.23224115 -0.16627502 9.73814774 -5.21004295 -0.1662696 9.73814774 -8.52804756 -0.16626358 9.73814774
		 -7.92736387 2.93980908 9.5497179 -7.74467897 3.14580154 9.60146046 5.21004295 -0.1662696 9.73814774
		 2.23224115 -0.16627502 9.73814774 2.85130596 2.98979163 9.56794071 2.99361348 3.033847809 9.59196568
		 5.24116802 3.50018001 9.70830536 7.74467897 3.14580154 9.60146046 7.92736387 2.93980908 9.54971886
		 8.52804756 -0.16626358 9.73814774 -5.20418358 2.1061635 14.21857929 -2.26034117 2.022836685 14.30639839
		 -2.18093491 1.86145473 14.086655617 -2.23224115 -0.16627502 14.14505768 -5.21004295 -0.1662696 14.25477886
		 -8.52804756 -0.16626358 14.25477886 -8.57362652 1.72843826 14.17049026 -8.37525558 1.98803866 14.18296528
		 -5.2226758 2.80317211 11.96343994 -2.62697744 2.52834225 11.94918156 -2.51612043 2.42562318 11.82729816
		 -2.23224115 -0.16627502 11.94160271 -5.21004295 -0.1662696 11.99646282 -8.52804756 -0.16626358 11.99646282
		 -8.25049496 2.33412361 11.86010361 -8.059967041 2.56692004 11.89221287 5.21004295 -0.1662696 14.25477886
		 2.23224115 -0.16627502 14.14505768 2.18093491 1.86145473 14.086655617 2.26034117 2.022836685 14.30639839
		 5.20418358 2.1061635 14.2185812 8.37525558 1.98803866 14.18296719 8.57362652 1.72843826 14.17049026
		 8.52804756 -0.16626358 14.25477886 5.21004295 -0.1662696 11.99646282 2.23224115 -0.16627502 11.94160271
		 2.51612043 2.42562318 11.82729912 2.62697744 2.52834225 11.94918156 5.2226758 2.80317163 11.9634428
		 8.059967041 2.56692004 11.89221382 8.25049591 2.33412361 11.86010456 8.52804756 -0.16626358 11.99646282
		 -8.52804756 -0.16626358 17.12308693 -5.21004295 -0.1662696 17.20074463 -2.23224115 -0.16627502 17.23280716
		 -1.85633969 1.83116508 17.21451759 -5.18569183 1.80089045 17.16136932 -8.70563984 1.80089235 17.16136932
		 -8.90817165 1.47053719 17.093080521 -8.52804756 -0.16626358 17.73308563 -5.21004295 -0.1662696 17.88840103
		 -2.23224115 -0.16627502 17.78794479 -1.81897378 2.14499879 17.76542664 -5.18569183 2.19262528 17.84902573
		 -8.72073555 2.19262695 17.84902573 -8.91958618 1.81832135 17.70528984 8.52804756 -0.16626358 17.12308693
		 8.90844059 1.47289133 17.094314575 8.70700645 1.80089235 17.16136932 5.18569183 1.80089033 17.16136932
		 1.85633969 1.83116531 17.21451759 2.23224115 -0.16627502 17.23280716 5.21004295 -0.1662696 17.20074463
		 8.52804756 -0.16626358 17.73308563 8.92012405 1.82302952 17.70775604 8.72347069 2.19262695 17.84902573
		 5.18569183 2.19262528 17.84902573 1.81897378 2.14499903 17.76542664 2.23224115 -0.16627502 17.78794479
		 5.21004295 -0.1662696 17.88840103 5.26128626 4.10542631 7.75432158 7.30427933 4.044944763 6.93312454
		 7.4721036 3.95994925 6.67396688 8.52804756 -0.16626358 8.36439514 5.21004295 -0.1662696 8.36439514
		 2.23224115 -0.16627502 8.36439514 3.32253122 3.93518591 6.79394293 3.4658196 3.89534116 6.97085238
		 -5.26128626 4.10542679 7.75432062 -7.30427933 4.044944763 6.93312359 -7.4721036 3.95994925 6.67396641
		 -8.52804756 -0.16626358 8.36439514 -5.21004295 -0.1662696 8.36439514 -2.23224115 -0.16627502 8.36439514
		 -3.32253122 3.93518591 6.79394293 -3.4658196 3.89534092 6.97085238 16.44766426 113.55662537 -6.20806885
		 19.17426682 116.048469543 -6.83747578 19.49983215 116.34934235 -6.46456528 19.48840332 116.77288818 -3.19781756
		 19.47373962 116.37479401 0.99311572 19.23074722 116.054641724 1.41669762 16.65829468 113.28627014 1.6614337
		 16.37802124 112.96925354 1.24068201 16.36498642 111.72451782 -2.58228827 16.35424042 113.19663239 -5.73376942
		 20.80415535 110.26656342 -6.64178562 23.13037872 112.1384964 -7.13550758 23.48797989 112.40137482 -6.75967789
		 23.46512032 112.83605957 -3.9325304 23.43579292 112.45227051 -0.30556336 23.20795822 112.11679077 0.11104494
		 20.91130829 109.94322205 0.33540389 20.63334274 109.63493347 -0.084232926 20.61434937 108.44714355 -3.42662549
		 20.59869385 109.96620941 -6.18194103 -20.80416107 110.26656342 -6.64178562 -20.59869957 109.96620941 -6.18194151
		 -20.61435509 108.44713593 -3.42662668 -20.63334846 109.63493347 -0.084234893 -20.91131783 109.94321442 0.33540189
		 -23.20796394 112.11679077 0.11104303 -23.43579865 112.45227051 -0.3055653 -23.46512794 112.83605194 -3.93253112
		 -23.48798752 112.40137482 -6.75967836 -23.13038635 112.13848877 -7.13550758 -16.44767189 113.55661011 -6.20806932
		 -16.35424423 113.19663239 -5.73376989 -16.36499214 111.72451019 -2.58228922 -16.37802887 112.96925354 1.24067998
		 -16.65830231 113.28625488 1.66143179 -19.23075294 116.054641724 1.41669571 -19.47374535 116.37479401 0.99311376
		 -19.48840904 116.77288055 -3.19781828 -19.49983978 116.34934998 -6.46456528 -19.17427444 116.048469543 -6.83747578
		 29.43471718 102.39726257 -2.62539983 29.41475105 101.21872711 -5.039478302 29.39830017 102.74539948 -7.029533863
		 29.70327377 102.99795532 -7.47110415 31.42615318 104.21392059 -7.7795105 31.79310036 104.45879364 -7.39754677
		 31.76566315 104.89792633 -5.38136578 31.73047256 104.51986694 -2.79479384 31.50840378 104.17813873 -2.38225722
		 29.70933533 102.70055389 -2.20844412 33.9807663 98.49391174 -3.84165192;
	setAttr ".vt[1494:1659]" 33.96579361 97.26766205 -5.80799341 33.95345688 98.75502014 -7.42895603
		 34.2458992 99.019393921 -7.86670589 35.76581192 100.19929504 -8.12548256 36.11006546 100.46418762 -7.74030256
		 36.089488983 100.89662933 -6.095488071 36.063098907 100.50998688 -3.98534536 35.83163452 100.17733765 -3.56990671
		 34.25434875 98.80092621 -3.42626262 38.52680969 94.59056091 -5.057902336 38.51683044 93.31660461 -6.57650757
		 38.50860596 94.76463318 -7.82837629 38.78852081 95.04083252 -8.26230621 40.10546494 96.18467712 -8.47145367
		 40.42702866 96.4695816 -8.083057404 40.41331482 96.89533234 -6.80960989 40.39572144 96.50011444 -5.17589569
		 40.15486145 96.1765213 -4.75755501 38.79935455 94.90130615 -4.64408016 43.072860718 90.68721008 -6.27415466
		 43.067871094 89.36554718 -7.34502316 43.06375885 90.77424622 -8.22779846 43.33114624 91.062263489 -8.65790844
		 44.44512558 92.1700592 -8.81742573 44.74399948 92.47496796 -8.42581367 44.73714447 92.89402771 -7.52373362
		 44.72834778 92.49023438 -6.36644745 44.47809601 92.17571259 -5.94520473 43.34436798 91.0016784668 -5.86189938
		 -43.072868347 90.68721771 -6.27415562 -43.34436798 91.0016784668 -5.86189985 -44.47809982 92.17571259 -5.94520569
		 -44.72834396 92.49023438 -6.36644793 -44.73714447 92.89403534 -7.52373362 -44.74399948 92.47496796 -8.42581367
		 -44.44512558 92.1700592 -8.81742668 -43.33115005 91.062255859 -8.65790939 -43.063766479 90.77424622 -8.22779846
		 -43.067874908 89.36555481 -7.34502363 -38.52681351 94.59056091 -5.057903767 -38.79935837 94.90130615 -4.64408112
		 -40.15486526 96.1765213 -4.75755596 -40.39571762 96.50011444 -5.17589712 -40.41331482 96.89533234 -6.8096118
		 -40.42703247 96.46957397 -8.083058357 -40.10546494 96.18467712 -8.47145462 -38.78852463 95.04082489 -8.26230717
		 -38.50861359 94.76463318 -7.82837725 -38.51683426 93.31661224 -6.57650852 -33.9807663 98.49391174 -3.84165311
		 -34.25434875 98.80091858 -3.42626381 -35.83163452 100.17733765 -3.56990767 -36.063095093 100.50998688 -3.98534656
		 -36.089492798 100.8966217 -6.095489025 -36.11006927 100.46418762 -7.74030304 -35.76581192 100.19927979 -8.12548256
		 -34.24590302 99.019386292 -7.86670589 -33.95346069 98.75500488 -7.42895603 -33.96579742 97.26765442 -5.80799389
		 -29.43471718 102.39726257 -2.62540054 -29.70933533 102.70054626 -2.20844483 -31.50840187 104.17813873 -2.3822577
		 -31.73047066 104.51986694 -2.79479456 -31.76566315 104.89792633 -5.38136625 -31.79310036 104.45879364 -7.39754677
		 -31.42615318 104.21390533 -7.7795105 -29.70327377 102.99795532 -7.47110415 -29.39830399 102.74539185 -7.029533863
		 -29.41475868 101.21871185 -5.039478302 -51.40505219 84.38903809 -10.5994978 -52.53879547 85.51138306 -10.62722492
		 -52.71735382 85.77677917 -10.27572155 -52.71735382 85.77677155 -6.31533432 -52.49123764 85.54214478 -5.98318815
		 -51.42536163 84.3729248 -5.98318815 -51.19353485 84.13356018 -6.33494329 -51.19353485 84.13356018 -10.26426601
		 -52.43330002 83.47829437 -11.063047409 -53.72725677 84.98904419 -11.076910973 -53.92187119 85.25930786 -10.73223782
		 -53.92187119 85.25930786 -5.82136917 -53.70624542 85.0080413818 -5.48831749 -52.44332123 83.47006226 -5.48831749
		 -52.22686386 83.21907806 -5.84254217 -52.22686386 83.21907806 -10.72837639 52.22686386 83.21907806 -10.72622776
		 52.22686386 83.21907806 -5.84223986 52.4432106 83.46996307 -5.48831701 53.7061615 85.0079574585 -5.48831701
		 53.92186737 85.25930786 -5.82136869 53.92187119 85.25930786 -10.73223877 53.72503281 84.98548889 -11.077283859
		 52.43462753 83.47983551 -11.062959671 51.19354248 84.13356018 -10.25996971 51.19354248 84.13356018 -6.33433914
		 51.42514801 84.37272644 -5.98318768 52.49106979 85.54198456 -5.98318768 52.71735382 85.77677917 -6.31533337
		 52.71735382 85.77677917 -10.27572536 52.53435516 85.50426483 -10.62796974 51.40770721 84.39212036 -10.59932327
		 -48.31463623 86.91334534 -9.14465714 -49.14155579 87.69061279 -9.15851974 -49.34294128 87.93353271 -8.81165886
		 -49.34294128 87.93353271 -7.54519653 -49.1161499 87.70404053 -7.21271706 -48.32424164 86.90471649 -7.21271706
		 -48.090171814 86.66799927 -7.55776405 -48.090167999 86.66799927 -8.79615211 -49.34571838 86.10656738 -9.64030457
		 -50.24594116 86.86216736 -9.66802979 -50.42789078 87.1138916 -9.3154335 -50.42789078 87.1138916 -7.17724705
		 -50.19618988 86.89014435 -6.84538794 -49.36582184 86.090255737 -6.84538794 -49.12519073 85.85801697 -7.19255352
		 -49.12519073 85.85801697 -9.29815483 49.12519073 85.85801697 -9.29385853 49.12519073 85.8580246 -7.19195032
		 49.36561584 86.090057373 -6.84538698 50.19602203 86.88999176 -6.84538794 50.42789078 87.11388397 -7.17724657
		 50.42789078 87.11388397 -9.31543446 50.24150085 86.8550415 -9.66877556 49.34837341 86.10964966 -9.64012909
		 48.090171814 86.66799927 -8.79400444 48.090171814 86.66799927 -7.55746222 48.32414246 86.90461731 -7.2127161
		 49.11606598 87.70396423 -7.21271706 49.34294128 87.93353271 -7.54519653 49.34294128 87.93353271 -8.81165886
		 49.13933563 87.6870575 -9.15889359 48.31596375 86.91488647 -9.14457035 -55.80970001 79.45929718 -10.33259869
		 -55.16576385 79.2479248 -10.33259773 -54.81169128 79.3006897 -10.051732063 -54.81335449 78.54322052 -7.10780716
		 -55.18551636 78.28742218 -6.90135288 -55.81253052 78.52005005 -6.89229012 -56.096069336 78.914711 -7.09939003
		 -56.094860077 79.69540405 -10.051778793 -55.65417862 80.57970428 -10.83198738 -54.9132576 80.26818848 -10.83198738
		 -54.57975769 80.21769714 -10.51999187 -54.58058548 79.83895874 -6.49711657 -54.94126129 79.75453186 -6.23481464
		 -55.6554718 80.11001587 -6.21668911 -55.94341278 80.37916565 -6.48383856 -55.94280243 80.76951599 -10.52629089
		 54.81169128 79.30068207 -10.05173111 54.81336212 78.54322815 -7.10660124 55.17521667 78.31056976 -6.89229012
		 55.81253815 78.52005005 -6.89229059 56.096069336 78.91470337 -7.09939003 56.094860077 79.69541168 -10.051955223
		 55.80970001 79.45928955 -10.33259773 55.16576385 79.2479248 -10.33259869 54.57975769 80.21768951 -10.51999092
		 54.58058548 79.83895874 -6.49470615 54.92066193 79.80082703 -6.21668911 55.6554718 80.11001587 -6.21668911
		 55.94341278 80.37916565 -6.48383856 55.94281006 80.76951599 -10.52664375 55.65417862 80.57969666 -10.83198738
		 54.9132576 80.26818848 -10.83198738 0 118.59279633 -10.83057499;
	setAttr ".vt[1660:1788]" 11.32236862 118.32819366 -10.83021832 11.61255074 118.34369659 -10.5504179
		 11.61149597 119.051101685 6.12431717 11.41404057 119.035980225 6.40838575 0.14422567 118.59276581 10.78501225
		 -0.14421991 118.59276581 10.78501225 -11.41404057 119.035980225 6.40838575 -11.61151505 119.051185608 6.12396765
		 -11.61255074 118.34369659 -10.5504179 -11.32236862 118.32819366 -10.83021832 0 113.22151184 -8.93628502
		 10.19262314 113.04510498 -8.93604755 10.48354435 113.070610046 -8.65862942 10.48320389 113.54325867 5.32129669
		 10.28773689 113.51696014 5.60602093 0.1442285 113.22148132 9.83041 -0.14421706 113.22148132 9.83041
		 -10.28773689 113.51696014 5.60602093 -10.48324108 113.54342651 5.32060289 -10.48354435 113.070610046 -8.65862942
		 -10.19262314 113.04510498 -8.93604755 0 107.85021973 -7.041992188 9.062875748 107.76202393 -7.041873932
		 9.35453701 107.79751587 -6.7668376 9.3549099 108.035423279 4.51827526 9.16143227 107.99795532 4.80365467
		 0.14423135 107.85020447 8.87580681 -0.14421421 107.85020447 8.87580681 -9.16143227 107.99795532 4.80365467
		 -9.35496521 108.035675049 4.51723766 -9.35453701 107.79751587 -6.7668376 -9.062875748 107.76202393 -7.041873932
		 0 93.90084839 -6.44111872 8.23459625 93.90084839 -5.086080551 8.50527477 93.90084839 -4.78555632
		 8.50527477 93.90084839 2.44696069 8.33027363 93.90084839 2.74868202 0.1442228 93.90084839 7.41332006
		 -0.1442228 93.90084839 7.41332006 -8.33027363 93.90084839 2.74868202 -8.50527477 93.90084839 2.44696069
		 -8.50527477 93.90084839 -4.78555632 -8.23545647 93.90084839 -5.086080551 -0.72255909 128.6625061 -2.13125515
		 0 128.6625061 -2.13125515 0.72255909 128.6625061 -2.13125515 0.72255909 128.83126831 -4.45101309
		 0 128.83126831 -4.45101309 -0.72255909 128.83126831 -4.45101309 -0.78277355 130.98782349 -2.2930932
		 0 130.98782349 -2.2930932 0.78277355 130.98782349 -2.2930932 0.78277361 131.32533264 -4.73173809
		 0 131.32533264 -4.73173809 -0.78277361 131.32533264 -4.73173809 -0.84298813 133.31314087 -2.45493174
		 0 133.31314087 -2.45493174 0.84298813 133.31314087 -2.45493174 0.84298819 133.81941223 -5.01246357
		 0 133.81941223 -5.01246357 -0.84298819 133.81941223 -5.01246357 -1.44890797 114.48474884 -8.2608614
		 -1.81110477 114.26844788 -9.68444157 -1.80207455 114.12796021 -9.76601887 0.11349893 111.34008026 -8.66607952
		 0.21020126 111.28688049 -8.56291962 0.72210252 111.44639587 -6.43906879 1.18014336 117.14212036 -9.21363258
		 1.22453129 117.41598511 -10.97046089 1.27383161 117.32141113 -11.067877769 3.759588 115.30722046 -10.12405777
		 3.84705853 115.23773956 -10.021326065 3.29042292 114.005569458 -7.35949516 3.80919862 119.79949188 -10.16640377
		 4.26017189 120.56354523 -12.25648212 4.34974241 120.51488495 -12.36973858 7.40568352 119.27437592 -11.58203888
		 7.48392057 119.18859863 -11.47973537 5.85874748 116.56473541 -8.27992153 -7.72226763 107.54970551 0.68304789
		 -9.17813492 106.048240662 1.044748545 -9.21928596 105.8951416 1.072599053 -8.47810745 102.14163971 0.73654234
		 -8.33407116 102.10106659 0.70382929 -5.37683487 105.12123108 0.013817906 -3.42760801 111.77799988 6.41157627
		 -4.12397814 111.024330139 7.76741266 -4.11012888 110.90280151 7.8620882 -2.57921243 107.61654663 8.014143944
		 -2.49826765 107.54158783 7.9059968 -1.15721285 109.054222107 5.23286915 3.66548753 118.97642517 8.016894341
		 4.20692635 119.58241272 9.70716858 4.3275795 119.52458954 9.78237629 6.51781845 116.76460266 8.49222851
		 6.54300547 116.65895081 8.37568855 5.33114147 115.47348785 5.58458424 8.69239616 119.0094833374 4.90648174
		 10.66627502 121.4348526 7.28119755 10.64744568 121.56478119 7.38983393 8.2783432 123.77643585 8.88705635
		 8.10787868 123.77359009 8.83592033 7.3567524 122.62359619 7.42137194 8.90694809 124.61595154 -2.36683822
		 10.34511757 126.091506958 -2.53424692 10.49493027 126.096977234 -2.56794381 12.93521786 123.60676575 -3.98726988
		 12.92958069 123.45293427 -4.036527157 9.9636755 120.51260376 -3.37161207 15.11032963 121.79248047 6.39461803
		 15.10418129 123.82693481 -2.41691446 15.10421753 123.82655334 -2.61228895 15.10984993 121.79826355 -11.23637009
		 15.033290863 121.64302063 -11.32530594 12.2219696 117.54205322 -9.19794083 9.3458786 113.32971191 -6.60736656
		 9.35029316 113.32558441 4.89943218 11.83625793 116.96195221 5.83153343 15.038957596 121.6542511 6.50771236
		 -15.11032963 121.79248047 6.39461803 -15.038957596 121.6542511 6.50771236 -11.83625793 116.96195221 5.83153343
		 -9.35029316 113.32558441 4.89943218 -9.3458786 113.32971191 -6.60736656 -12.2219696 117.54205322 -9.19794083
		 -15.033290863 121.64302063 -11.32530594 -15.10984993 121.79826355 -11.23637009 -15.10421753 123.82655334 -2.61228895
		 -15.10418129 123.82693481 -2.41691446;
	setAttr -s 3363 ".ed";
	setAttr ".ed[0:165]"  33 34 0 33 32 0 35 36 0 35 34 0 37 38 0 36 37 0 39 32 0
		 39 38 0 72 75 0 73 72 0 74 77 0 75 74 0 76 79 0 76 77 0 78 73 0 79 78 0 0 1 1 1 18 0
		 18 19 1 19 0 0 0 1571 0 2 3 1 3 1570 0 2 1603 0 37 1602 0 4 5 1 5 20 0 20 21 1 21 4 0
		 4 1577 0 6 7 1 7 1568 0 6 1609 0 39 1600 0 8 9 0 9 27 0 27 26 1 26 8 0 8 1575 0 11 10 1
		 10 1566 0 11 1607 0 33 1598 0 12 13 0 13 16 0 16 17 1 17 12 0 12 1573 0 14 15 1 15 1564 0
		 14 1605 0 35 1596 0 16 1635 0 28 29 1 29 1634 0 18 1637 0 22 23 1 23 1628 0 20 1639 0
		 24 25 0 25 1630 0 22 25 0 24 23 0 27 1641 0 30 31 0 31 1632 0 28 31 0 30 29 0 40 41 1
		 41 65 0 65 64 1 64 40 0 40 1579 0 43 42 1 42 1594 0 43 1611 0 77 1626 0 44 45 1 45 69 0
		 69 68 1 68 44 0 44 1581 0 47 46 1 46 1588 0 47 1613 0 79 1620 0 48 49 0 49 71 0 71 70 1
		 70 48 0 48 1583 0 51 50 1 50 1590 0 51 1615 0 73 1622 0 52 53 0 53 67 0 67 66 1 66 52 0
		 52 1585 0 55 54 1 54 1592 0 55 1617 0 75 1624 0 56 57 1 57 1643 0 65 1658 0 56 59 0
		 59 58 0 58 57 0 59 1645 0 69 1652 0 60 61 1 61 1649 0 67 1656 0 60 63 0 63 62 0 62 61 0
		 63 1647 0 71 1654 0 3 6 1 4 1 1 7 11 1 8 5 0 10 14 1 12 9 0 15 2 1 0 13 1 28 23 0
		 24 31 0 19 16 1 21 18 0 26 20 1 17 27 1 40 45 1 46 43 1 44 49 0 50 47 1 48 53 0 54 51 1
		 52 41 1 42 55 1 62 59 0 56 61 0 66 65 1 64 69 0 68 71 1 70 67 1 85 80 0 98 116 0
		 102 99 0 103 112 0 107 104 0 108 111 0 109 115 0 110 119 0 81 80 0 80 83 0 83 82 0
		 82 81 0 83 1443 0 96 97 1 97 1462 0 85 84 0 84 87 0 87 86 1;
	setAttr ".ed[166:331]" 86 85 0 87 1445 0 100 101 1 101 1454 0 88 89 1 89 1483 0
		 105 104 0 104 1522 0 88 1459 0 90 91 0 91 1450 0 90 111 0 111 110 0 110 91 1 92 93 1
		 93 1491 0 107 106 0 106 1520 0 92 1457 0 95 94 1 94 1448 0 95 109 0 109 108 0 108 94 0
		 96 1486 0 99 98 0 98 1515 0 100 1488 0 103 102 0 102 1517 0 101 96 1 83 86 1 94 90 1
		 88 93 1 97 117 1 91 118 0 87 114 1 92 113 1 112 106 0 113 100 1 112 1519 1 114 95 1
		 113 1456 1 115 84 0 114 115 1 116 105 0 117 89 1 116 1514 1 118 82 0 117 1461 1 119 81 0
		 118 119 1 120 121 0 122 150 0 124 1739 0 125 126 0 127 120 0 126 128 0 128 1721 0
		 129 124 0 130 149 0 123 1751 0 131 1745 0 132 146 0 121 1763 0 133 134 0 135 1744 0
		 136 135 0 137 147 0 139 140 0 140 1738 0 141 136 0 134 1750 0 143 1756 0 144 1757 0
		 142 148 0 138 1768 0 145 139 0 146 122 0 147 138 0 148 143 0 149 131 0 150 1762 0
		 151 137 0 152 153 0 153 155 0 155 154 1 154 152 0 152 1742 0 164 165 1 165 1743 0
		 155 1749 0 189 188 1 188 1748 0 156 157 0 157 159 0 159 158 1 158 156 0 156 178 0
		 178 179 0 179 157 0 159 1764 0 209 208 1 208 1765 0 160 161 1 161 211 0 211 210 1
		 210 160 0 160 162 0 162 163 0 163 161 0 162 1761 0 200 201 1 201 1760 0 164 170 0
		 170 171 0 171 165 0 166 167 0 167 1740 1 169 168 1 168 1741 1 166 190 0 190 191 1
		 191 167 0 169 173 0 173 172 0 172 168 1 170 186 0 186 187 1 187 171 0 173 185 0 185 184 1
		 184 172 0 174 175 0 175 202 0 202 203 1 203 174 1 174 177 0 177 176 1 176 175 0 177 212 0
		 212 213 1 213 176 0 178 1735 0 185 1722 0 180 181 0 181 183 0 183 182 1 182 180 0
		 180 214 0 214 215 1 215 181 0 183 1737 0 186 1724 1 189 204 0 204 205 1 205 188 0
		 190 1747 0 207 206 1 206 1746 0 192 193 1 193 195 0 195 194 1 194 192 0 192 1753 0
		 200 1752 0;
	setAttr ".ed[332:497]" 195 206 0 207 194 0 196 197 1 197 205 0 204 196 0 196 1755 0
		 199 198 1 198 1754 0 199 1758 0 202 1759 1 209 210 0 211 208 0 212 1767 0 214 1766 0
		 154 190 1 166 152 0 168 164 1 172 170 0 156 180 0 182 178 0 184 186 1 158 214 1 163 202 0
		 175 161 1 188 207 1 198 201 1 192 197 1 205 194 1 213 208 1 211 176 1 157 120 1 121 159 1
		 160 122 1 150 162 1 167 124 1 125 169 1 126 173 1 179 127 1 128 185 1 191 129 1 195 149 1
		 131 206 1 200 123 1 130 193 1 209 132 1 146 210 1 153 133 1 134 155 1 165 135 1 171 136 1
		 177 147 1 138 212 1 181 139 1 140 183 1 141 187 1 142 189 1 196 143 1 144 199 1 203 151 1
		 137 174 0 148 204 1 145 215 1 217 1692 1 217 218 1 219 247 1 221 220 0 219 221 1
		 222 245 1 223 220 0 222 223 1 224 225 0 225 234 0 226 233 0 227 226 0 228 232 0 226 228 0
		 227 229 0 229 228 0 231 329 0 232 326 0 232 233 1 234 301 0 235 229 0 236 227 0 235 236 1
		 237 224 0 216 238 1 246 220 1 246 245 1 247 246 1 239 240 0 240 249 1 249 248 0 248 239 1
		 239 1697 1 242 241 1 241 1698 1 242 244 1 244 243 1 243 241 1 245 247 1 256 219 0
		 263 222 0 264 249 0 267 248 0 250 251 0 251 1699 0 253 252 0 252 1700 1 250 265 1
		 265 264 0 264 251 1 253 255 1 255 254 1 254 252 1 257 258 0 258 267 1 267 266 0 266 257 1
		 257 1695 1 259 260 0 260 1696 0 259 261 1 261 262 1 262 260 1 251 240 0 241 253 1
		 243 255 1 260 242 1 239 258 0 262 244 1 291 334 0 291 292 0 302 341 0 308 237 0 325 338 0
		 327 235 0 330 335 0 332 230 0 336 331 0 337 328 0 342 307 0 268 270 0 270 296 0 296 295 0
		 295 268 1 269 268 0 268 287 0 287 286 1 286 269 0 270 269 1 269 273 0 273 272 0 272 270 0
		 271 274 0 274 330 1 330 329 0 329 271 1 272 271 0 271 294 0 294 293 0 293 272 0 274 273 0
		 273 276 0 276 275 1 275 274 0;
	setAttr ".ed[498:663]" 275 278 0 278 336 1 336 335 0 335 275 1 277 276 0 276 286 1
		 286 288 0 288 277 1 278 277 1 277 282 0 282 285 0 285 278 0 279 281 0 281 288 0 288 287 1
		 287 279 0 280 279 0 279 291 1 292 280 0 281 280 0 280 283 0 283 282 0 282 281 0 284 283 0
		 283 289 0 289 290 0 290 284 1 285 284 1 284 332 1 332 331 0 331 285 1 334 333 0 333 295 0
		 297 300 1 300 320 0 320 319 1 319 297 0 298 297 0 297 322 1 322 321 0 321 298 1 299 298 0
		 298 310 0 310 309 1 309 299 0 300 299 0 299 1769 0 302 301 0 301 1778 0 303 306 0
		 306 312 0 312 311 1 311 303 0 304 303 0 303 324 1 324 323 0 323 304 1 305 304 1 304 313 0
		 313 314 1 314 305 0 306 305 0 305 1773 0 308 307 0 307 1772 0 309 312 0 312 1771 1
		 342 341 0 341 1770 1 311 310 0 310 339 1 339 340 0 340 311 1 313 315 0 315 316 0
		 316 314 0 315 318 0 318 317 0 317 316 0 318 319 0 320 317 0 322 326 1 326 325 0 325 321 1
		 324 328 0 328 327 0 327 323 0 338 337 0 337 340 1 339 338 1 292 289 0 296 293 0 333 287 1
		 314 1774 1 317 1776 0 224 1775 0 320 1777 1 318 226 1 233 319 1 321 339 0 323 236 0
		 236 313 1 315 227 1 290 230 0 294 231 0 324 340 0 322 233 0 343 344 1 344 377 0 352 351 0
		 351 380 0 356 355 0 345 346 1 346 350 0 350 349 0 349 345 0 345 348 0 348 347 1 347 346 0
		 348 354 0 354 353 0 353 347 0 350 351 0 352 349 1 354 355 1 356 353 0 343 1659 1
		 220 344 1 351 256 0 223 375 0 263 356 0 244 1686 1 345 1665 1 347 245 1 247 346 1
		 256 350 0 353 263 0 255 1688 0 352 1667 0 261 1684 0 354 1663 0 369 265 0 370 238 0
		 371 238 0 372 266 0 376 356 0 375 377 0 375 376 0 378 221 0 379 344 0 379 378 0 380 378 0
		 357 358 0 358 1701 0 360 359 1 359 1702 0 357 370 1 370 369 0 369 358 1 360 362 0
		 362 361 1 361 359 0 362 1690 0 381 382 0 382 1669 0 363 364 0;
	setAttr ".ed[664:829]" 364 372 1 372 371 0 371 363 1 363 1693 0 365 366 1 366 1694 0
		 365 368 0 368 367 1 367 366 0 368 1682 0 373 374 0 374 1661 0 373 377 0 377 376 0
		 376 374 0 380 379 0 379 382 0 381 380 0 359 217 1 216 357 0 361 218 1 363 216 0 217 365 1
		 218 368 1 358 250 0 252 360 1 254 362 1 366 259 1 257 364 0 367 261 1 373 343 0 343 382 0
		 381 352 0 355 374 0 387 528 0 389 519 0 383 385 0 384 460 0 385 387 0 386 388 1 387 389 0
		 389 383 0 390 384 1 390 391 0 384 392 0 391 392 1 388 393 0 386 394 0 394 393 1 392 459 1
		 383 1159 0 384 1162 0 395 522 0 386 1164 0 396 461 0 385 1167 0 398 525 0 395 398 0
		 399 485 0 400 488 0 401 1231 1 402 1234 1 403 486 0 404 487 0 405 1259 1 406 1256 1
		 399 407 1 400 408 1 402 409 1 408 489 0 401 410 1 407 497 0 407 411 1 408 412 1 409 413 1
		 412 490 0 410 414 1 411 496 0 411 1304 1 412 1307 1 413 1327 1 416 491 0 414 1330 1
		 415 495 0 415 417 0 416 418 0 417 622 0 418 492 0 420 467 0 417 494 0 420 499 0 419 501 0
		 421 468 0 421 1399 0 430 513 0 431 457 0 433 510 0 430 433 0 425 427 1 426 507 0
		 424 426 0 428 516 0 429 423 1 428 422 0 422 424 0 426 428 0 429 391 0 423 392 0 425 394 0
		 427 393 0 423 458 0 423 1195 0 422 1198 0 425 1202 0 424 1199 0 452 590 0 453 478 0
		 455 466 0 452 476 0 437 1261 1 436 1264 1 439 483 0 438 484 0 441 1289 1 440 1286 1
		 435 482 0 434 472 0 435 443 1 434 442 1 437 444 1 443 481 0 436 445 1 442 473 0 443 447 1
		 442 446 1 444 448 1 447 480 0 445 449 1 446 474 0 447 1322 1 446 1325 1 448 1339 1
		 451 479 0 449 1342 1 450 475 0 451 453 0 450 452 0 455 503 0 454 505 0 456 465 0
		 456 1413 0 457 432 0 458 425 0 457 1230 1 459 394 1 458 459 1 460 386 0 459 460 1
		 461 397 0 460 1163 1 463 565 0 462 1416 1 464 567 0 463 464 1 465 574 0 464 1426 1;
	setAttr ".ed[830:995]" 466 454 0 465 1383 1 466 477 1 467 419 0 468 543 0 467 500 1
		 469 552 0 468 1400 1 470 550 0 469 470 1 470 1410 1 471 1367 1 472 436 0 473 445 0
		 472 473 1 474 449 0 473 474 1 475 554 0 474 1326 1 476 455 0 475 476 1 477 588 1
		 476 477 1 478 454 0 477 478 1 479 584 0 478 479 1 480 448 0 479 1309 1 481 444 0
		 480 481 1 482 437 0 481 482 1 483 441 0 482 1270 1 484 440 0 484 1285 1 485 401 0
		 486 405 0 485 1240 1 487 406 0 488 402 0 487 1255 1 489 409 0 488 489 1 490 413 0
		 489 490 1 491 624 0 490 1308 1 492 419 0 491 492 1 493 467 1 492 493 1 494 420 0
		 493 494 1 495 530 0 494 495 1 496 414 0 495 1291 1 497 410 0 496 497 1 497 485 1
		 499 1438 0 500 1439 1 499 500 1 501 1440 0 500 501 1 501 633 1 502 1427 1 503 1430 0
		 504 466 1 503 504 1 505 1432 0 504 505 1 505 637 1 506 427 0 511 432 0 512 431 0
		 517 429 0 518 390 0 523 396 0 524 397 0 529 388 0 507 506 0 506 509 1 509 508 1 508 507 1
		 509 1201 1 511 510 0 510 1227 0 513 512 0 512 1223 1 515 514 1 514 1197 1 515 517 1
		 517 516 0 516 514 1 519 518 0 518 521 1 521 520 1 520 519 1 521 1161 1 523 522 0
		 522 1187 1 525 524 0 524 1192 1 527 526 1 526 1166 0 527 529 1 529 528 0 528 526 1
		 385 526 1 520 383 1 508 424 1 422 514 1 425 509 1 423 515 1 384 521 1 386 527 1 531 420 1
		 530 533 1 530 531 1 542 1401 0 541 543 1 543 542 1 548 469 0 548 549 0 550 551 0
		 553 552 0 557 455 1 557 554 1 555 554 1 564 464 0 563 564 0 566 565 0 567 568 0 575 1418 0
		 574 573 1 575 574 1 585 454 0 586 636 0 584 587 0 585 584 1 586 585 1 589 453 0 588 590 1
		 588 589 1 621 493 1 623 418 0 622 621 1 621 623 1 626 634 0 627 419 0 624 627 1 625 624 0
		 627 626 1 632 498 1 634 633 1 635 502 1 636 635 0 637 636 1 551 553 0 552 550 0 565 567 0
		 568 566 0 532 531 0;
	setAttr ".ed[996:1161]" 531 538 0 538 537 1 537 532 0 533 532 0 532 638 0 535 533 0
		 536 639 1 626 625 0 625 534 0 535 534 0 534 1336 0 629 628 0 628 1329 0 538 1437 0
		 544 545 1 545 1374 0 539 540 0 540 1369 1 633 632 1 632 1442 0 539 542 1 542 541 0
		 541 540 1 544 1405 0 547 546 0 546 1411 0 547 549 0 548 546 0 556 555 0 555 558 0
		 560 641 1 557 556 0 556 569 0 569 570 1 570 557 0 559 558 0 558 1349 0 582 583 0
		 583 1340 0 559 587 0 587 586 0 586 640 0 561 562 0 562 1421 0 577 576 1 576 1415 0
		 561 564 0 563 562 0 569 1428 0 577 1389 0 571 572 0 572 1386 0 635 637 1 637 1433 1
		 571 573 1 573 575 0 575 572 1 578 579 0 579 1263 0 604 603 0 603 1282 0 578 581 0
		 581 580 0 580 579 0 581 583 0 582 580 0 590 589 0 589 592 1 592 591 1 591 590 1 592 1311 0
		 594 593 0 593 1324 0 594 596 1 596 595 0 595 593 0 596 598 0 598 597 1 597 595 0
		 598 1268 0 600 599 0 599 1287 0 600 601 1 601 602 1 602 599 1 601 603 1 604 602 1
		 605 606 0 606 630 0 630 631 0 631 605 0 605 1233 0 608 607 0 607 1252 0 608 610 1
		 610 609 1 609 607 1 610 611 1 611 612 0 612 609 1 611 1257 0 614 613 1 613 1238 0
		 614 616 0 616 615 0 615 613 0 616 618 1 618 617 0 617 615 0 618 1306 0 620 619 1
		 619 1293 0 620 623 1 623 622 0 622 619 1 629 631 0 630 628 0 401 606 0 607 403 0
		 486 609 1 612 405 0 613 399 1 615 407 0 410 630 0 617 411 0 414 628 0 619 415 1 470 546 0
		 498 537 1 545 471 0 538 499 1 421 544 1 539 1402 0 438 604 0 579 436 0 440 599 0
		 602 484 1 434 597 1 442 595 0 580 445 0 446 593 0 582 449 0 450 591 1 561 463 0 560 502 1
		 502 569 1 570 503 1 576 462 0 456 577 1 566 1424 0 444 581 0 578 437 0 448 583 0
		 462 572 0 451 592 1 447 594 0 443 596 0 435 598 1 441 600 0 483 601 1 603 439 0 605 402 0
		 404 608 0 610 487 1 406 611 0 400 614 1;
	setAttr ".ed[1162:1327]" 408 616 0 412 618 0 416 620 1 539 471 0 413 629 0 409 631 0
		 498 536 1 632 634 0 638 536 1 638 535 1 639 626 0 534 639 1 639 638 0 640 560 1 640 559 1
		 641 556 0 558 641 1 641 640 0 642 664 1 642 645 1 645 646 1 642 707 1 648 654 0 654 725 0
		 649 648 0 650 651 1 651 649 0 650 723 0 652 651 0 653 652 0 657 653 0 654 656 0 656 655 1
		 655 726 0 656 657 0 651 644 1 644 648 1 643 650 1 653 644 1 644 656 1 655 647 1 665 643 1
		 665 666 0 706 647 1 705 706 0 712 650 0 713 649 0 713 712 0 714 713 0 715 714 0 716 648 0
		 716 715 1 716 717 1 718 729 0 719 653 1 719 718 1 720 719 1 721 720 0 722 652 0 722 721 0
		 723 722 0 724 717 0 725 724 0 725 726 0 727 655 0 728 657 0 728 727 0 729 728 0 658 660 1
		 660 702 0 702 701 0 701 658 0 659 658 0 658 676 1 676 675 1 675 659 1 660 659 1 659 663 0
		 663 662 0 662 660 0 661 663 0 663 678 0 678 677 0 677 661 0 662 661 0 661 665 0 665 664 0
		 664 662 0 664 666 0 666 680 0 680 679 1 679 664 0 667 668 0 668 685 1 685 684 0 684 667 1
		 667 670 1 670 669 0 669 668 1 670 715 1 715 717 0 717 669 1 671 672 1 672 686 0 686 687 0
		 687 671 0 671 674 1 674 673 0 673 672 0 674 712 0 712 714 1 714 673 0 676 718 1 718 720 0
		 720 675 1 678 721 0 721 723 1 723 677 0 680 682 0 682 681 1 681 679 1 682 689 1 689 688 1
		 688 681 1 683 685 1 685 709 0 709 708 0 708 683 0 684 683 1 683 687 0 686 684 0 689 691 0
		 691 690 1 690 688 1 691 711 0 711 710 1 710 690 1 692 693 1 693 705 0 705 707 0 707 692 0
		 692 695 1 695 694 1 694 693 0 695 710 1 711 694 1 696 697 1 697 708 0 709 696 0 696 699 0
		 699 698 0 698 697 1 699 724 0 724 726 1 726 698 0 700 702 0 702 707 0 707 706 0 706 700 0
		 701 700 0 700 704 0 704 703 0 703 701 0 704 727 0 727 729 1 729 703 0;
	setAttr ".ed[1328:1493]" 645 679 1 681 646 1 667 672 0 673 670 0 675 678 1 642 660 1
		 677 643 0 666 671 0 671 682 1 683 691 1 689 687 0 690 646 1 646 695 1 692 645 1 669 699 0
		 696 668 0 703 676 1 647 704 0 694 697 1 697 705 0 708 711 0 674 643 0 647 698 0 706 705 0
		 734 735 0 735 736 0 736 737 0 737 755 0 730 734 0 731 735 0 732 736 0 733 737 0 735 756 1
		 736 757 1 730 738 0 734 739 0 738 739 0 730 740 0 731 741 0 740 741 0 735 742 0 741 742 0
		 734 743 0 743 742 0 740 743 0 731 744 0 732 745 0 744 745 0 736 746 0 745 746 0 735 747 0
		 747 746 0 744 747 0 732 748 0 733 749 0 748 749 0 737 750 0 749 750 0 736 751 0 751 750 0
		 748 751 0 733 752 0 752 760 0 737 753 0 753 761 0 752 753 0 754 734 0 758 738 0 759 739 0
		 758 759 1 760 761 1 756 754 1 757 756 1 755 757 1 754 759 1 755 761 1 772 773 0 773 774 0
		 775 774 0 772 775 0 776 777 0 777 778 0 779 778 0 776 779 0 780 781 0 781 782 0 783 782 0
		 780 783 0 784 760 0 785 761 0 784 785 0 766 767 0 767 756 1 767 768 0 768 757 1 768 769 0
		 769 755 0 762 766 0 766 771 0 770 771 0 762 770 0 754 766 0 759 771 0 763 773 0 762 772 0
		 763 767 0 767 774 0 766 775 0 764 777 0 763 776 0 764 768 0 768 778 0 767 779 0 765 781 0
		 764 780 0 765 769 0 769 782 0 768 783 0 765 784 0 769 785 0 758 770 0 786 787 0 788 789 0
		 786 788 0 786 792 0 787 791 1 789 790 1 788 793 0 791 792 0 792 793 0 793 790 0 794 787 0
		 795 789 0 794 795 0 791 796 0 794 796 0 795 797 0 797 790 0 796 797 0 791 798 0 792 799 0
		 798 799 0 793 800 0 799 800 0 790 801 0 800 801 0 796 802 0 798 802 0 797 803 0 803 801 0
		 802 803 0 786 804 0 787 805 0 804 805 0 788 806 0 789 807 0 806 807 0 804 806 0 794 808 0
		 808 805 0 795 809 0 809 807 0 808 809 0 810 811 1 810 812 1 812 862 0;
	setAttr ".ed[1494:1659]" 811 813 1 814 815 1 815 816 1 814 817 1 818 819 0 817 819 0
		 815 822 0 819 820 0 816 823 0 820 821 0 822 820 0 823 821 0 817 822 0 822 823 0 820 824 0
		 818 824 1 821 825 0 824 825 1 812 875 0 826 827 1 827 828 1 826 829 1 818 830 0 829 830 0
		 829 833 0 833 831 0 830 831 0 833 834 0 834 832 0 831 832 0 827 833 0 828 834 0 831 824 0
		 832 825 0 839 816 0 840 861 0 853 876 0 854 828 0 835 836 1 836 838 0 838 837 0 837 835 0
		 835 840 0 840 839 0 839 836 0 838 842 0 842 841 1 841 837 0 842 844 0 844 843 1 843 841 0
		 844 846 0 846 845 1 845 843 0 846 848 0 848 847 1 847 845 0 848 856 0 856 855 1 855 847 0
		 849 850 1 850 854 0 854 853 0 853 849 0 849 851 0 851 852 0 852 850 0 851 855 0 856 852 0
		 836 815 1 814 838 1 817 842 1 844 819 1 818 846 1 852 826 1 827 850 1 856 829 1 830 848 1
		 857 858 1 858 860 0 860 859 1 859 857 0 857 862 0 862 861 0 861 858 0 860 864 0 864 863 1
		 863 859 0 864 868 0 868 867 1 867 863 0 865 866 1 866 874 1 874 873 1 873 865 1 865 867 1
		 868 866 1 869 870 1 870 876 0 876 875 0 875 869 0 869 871 0 871 872 1 872 870 0 871 877 0
		 877 878 1 878 872 0 874 878 0 877 873 0 810 857 1 859 811 1 813 863 1 865 813 1 811 871 1
		 869 810 1 877 813 1 868 843 0 845 866 1 837 860 0 858 835 1 864 841 1 847 874 0 849 870 1
		 872 851 0 855 878 1 879 880 0 881 882 0 883 884 0 885 886 0 879 881 0 881 1703 0
		 882 1704 1 883 885 0 885 1720 0 886 1719 1 888 882 0 889 884 0 888 1705 0 890 886 0
		 887 880 0 890 1718 0 887 888 0 889 890 0 891 892 0 892 893 0 893 894 0 894 895 0
		 895 896 0 896 897 0 897 891 0 898 899 0 900 901 0 902 903 0 904 905 0 898 942 0 900 902 0
		 901 903 1 902 941 0 904 898 0 905 899 1 902 906 0 903 907 0 906 907 0 905 908 1 904 909 0
		 909 908 0;
	setAttr ".ed[1660:1825]" 906 940 0 906 910 0 907 911 0 910 911 0 909 912 0 908 913 1
		 912 913 0 910 939 0 903 914 0 914 911 0 910 915 0 911 916 0 915 916 0 912 917 0 913 918 1
		 917 918 0 915 938 0 914 919 1 919 916 0 921 901 0 922 903 0 921 922 0 923 905 0 920 899 0
		 923 920 0 920 933 0 922 934 0 903 925 0 924 925 0 922 924 0 923 926 0 926 908 0 924 935 0
		 925 928 0 927 928 0 924 927 0 926 929 0 929 913 0 927 936 0 914 928 0 928 931 0 930 931 0
		 927 930 0 929 932 0 932 918 0 930 937 0 919 931 0 933 921 0 934 923 0 933 934 1 935 926 0
		 934 935 1 936 929 0 935 936 1 937 932 0 936 937 1 938 917 0 939 912 0 938 939 1 940 909 0
		 939 940 1 941 904 0 940 941 1 942 900 0 941 942 1 943 944 0 944 945 0 945 946 0 946 947 0
		 947 948 0 948 949 0 949 943 0 951 952 0 952 953 0 953 954 0 954 955 0 955 956 0 956 957 0
		 957 951 0 959 960 0 960 961 0 961 962 0 962 963 0 963 964 0 964 965 0 965 959 0 982 987 1
		 984 983 1 985 984 1 986 985 1 987 986 1 967 969 0 969 983 1 983 982 1 982 967 1 968 967 1
		 967 981 0 981 980 0 980 968 0 969 968 1 968 970 0 970 971 0 971 969 0 970 972 0 972 973 0
		 973 971 0 972 974 0 974 975 0 975 973 0 974 976 0 976 977 0 977 975 0 976 978 0 978 979 0
		 979 977 0 978 980 0 981 979 0 988 989 0 989 1001 0 1001 1000 0 1000 988 0 988 990 0
		 990 991 0 991 989 0 990 992 0 992 993 0 993 991 0 992 994 0 994 995 0 995 993 0 994 996 0
		 996 997 0 997 995 0 996 998 0 998 999 0 999 997 0 998 1000 0 1001 999 0 1002 1003 0
		 1003 1015 0 1015 1014 0 1014 1002 0 1002 1004 0 1004 1005 0 1005 1003 0 1004 1006 0
		 1006 1007 0 1007 1005 0 1006 1008 0 1008 1009 0 1009 1007 0 1008 1010 0 1010 1011 0
		 1011 1009 0 1010 1012 0 1012 1013 0 1013 1011 0 1012 1014 0 1015 1013 0 1016 1017 0
		 1017 1029 0 1029 1028 0 1028 1016 0 1016 1018 0 1018 1019 0 1019 1017 0;
	setAttr ".ed[1826:1991]" 1018 1020 0 1020 1021 0 1021 1019 0 1020 1022 0 1022 1023 0
		 1023 1021 0 1022 1024 0 1024 1025 0 1025 1023 0 1024 1026 0 1026 1027 0 1027 1025 0
		 1026 1028 0 1029 1027 0 892 970 0 968 891 0 893 972 0 894 974 0 895 976 0 896 978 0
		 897 980 0 971 983 1 973 984 1 975 985 1 977 986 1 979 987 1 981 982 1 944 990 0 988 943 0
		 945 992 0 946 994 0 947 996 0 948 998 0 949 1000 0 991 950 1 950 989 1 993 950 1
		 995 950 1 997 950 1 999 950 1 1001 950 1 952 1004 0 1002 951 0 953 1006 0 954 1008 0
		 955 1010 0 956 1012 0 957 1014 0 1005 958 1 958 1003 1 1007 958 1 1009 958 1 1011 958 1
		 1013 958 1 1015 958 1 960 1018 0 1016 959 0 961 1020 0 962 1022 0 963 1024 0 964 1026 0
		 965 1028 0 1019 966 1 966 1017 1 1021 966 1 1023 966 1 1025 966 1 1027 966 1 1029 966 1
		 1030 1031 0 1031 1032 0 1032 1033 0 1033 1030 1 1034 1030 0 1030 1035 0 1035 1036 1
		 1036 1034 0 1031 1034 1 1034 1037 0 1037 1038 0 1038 1031 0 1039 1040 0 1040 1041 1
		 1041 1042 0 1042 1039 1 1038 1039 0 1039 1043 0 1043 1044 0 1044 1038 0 1040 1037 0
		 1037 1045 0 1045 1046 1 1046 1040 0 1046 1047 0 1047 1048 1 1048 1049 0 1049 1046 1
		 1050 1045 0 1045 1036 1 1036 1051 0 1051 1050 1 1047 1050 1 1050 1052 0 1052 1053 0
		 1053 1047 0 1054 1055 0 1055 1051 0 1051 1035 1 1035 1054 0 1056 1054 0 1054 1057 1
		 1057 1058 0 1058 1056 0 1055 1056 0 1056 1059 0 1059 1052 0 1052 1055 0 1060 1059 0
		 1059 1061 0 1061 1062 0 1062 1060 1 1053 1060 1 1060 1063 1 1063 1064 0 1064 1053 1
		 1065 1066 0 1066 1033 0 1058 1061 0 1032 1044 0 1066 1035 1 1041 1049 0 1062 1067 0
		 1063 1067 0 1068 1042 0 1043 1068 0 1057 1065 0 1048 1064 0 1069 1070 0 1070 1071 0
		 1071 1072 1 1069 1072 0 1073 1074 0 1074 1070 0 1073 1069 0 1076 1075 1 1076 1074 0
		 1075 1073 0 1077 1078 1 1078 1079 0 1079 1080 1 1080 1077 0 1081 1077 0 1077 1082 1
		 1082 1083 0 1083 1081 1 1084 1081 0 1081 1085 0 1085 1086 1 1086 1084 0 1078 1084 0
		 1084 1779 0 1087 1088 0 1088 1780 0 1089 1090 0 1090 1091 0 1091 1092 1;
	setAttr ".ed[1992:2157]" 1092 1089 0 1093 1089 0 1089 1094 1 1094 1095 0 1095 1093 1
		 1096 1093 1 1093 1097 0 1097 1098 1 1098 1096 0 1090 1096 0 1096 1785 0 1099 1100 0
		 1100 1786 0 1086 1091 0 1091 1787 1 1101 1102 0 1102 1788 1 1092 1085 0 1085 1103 1
		 1103 1104 0 1104 1092 1 1097 1105 0 1105 1106 0 1106 1098 0 1105 1107 0 1107 1108 0
		 1108 1106 0 1107 1080 0 1079 1108 0 1082 1109 1 1109 1110 0 1110 1083 1 1094 1111 0
		 1111 1112 0 1112 1095 0 1113 1114 0 1114 1104 1 1103 1113 1 1087 1102 0 1098 1784 1
		 1099 1115 0 1108 1782 0 1117 1116 0 1117 1783 0 1079 1781 1 1116 1118 0 1107 1069 1
		 1072 1080 1 1083 1103 0 1095 1075 0 1075 1097 1 1105 1073 1 1110 1113 0 1112 1076 0
		 1114 1111 0 1094 1104 0 1101 1100 0 1071 1109 0 1082 1072 0 1118 1088 0 1115 1117 0
		 1119 1120 0 1120 1121 0 1121 1122 0 1122 1119 0 1121 1473 0 1123 1124 1 1124 1464 0
		 1125 1126 0 1126 1127 0 1127 1128 1 1128 1125 0 1127 1481 0 1129 1130 1 1130 1472 0
		 1131 1132 1 1132 1553 0 1133 1134 0 1134 1524 0 1131 1467 0 1135 1136 0 1136 1476 0
		 1135 1137 0 1137 1138 0 1138 1136 1 1139 1140 1 1140 1555 0 1141 1142 0 1142 1526 0
		 1139 1469 0 1143 1144 1 1144 1478 0 1143 1145 0 1145 1146 0 1146 1144 0 1123 1560 0
		 1147 1148 0 1148 1531 0 1129 1558 0 1149 1150 0 1150 1529 0 1130 1123 1 1121 1128 1
		 1144 1135 1 1131 1140 1 1124 1151 1 1151 1465 1 1152 1122 0 1153 1143 1 1139 1154 1
		 1154 1470 1 1150 1147 0 1148 1155 0 1155 1532 1 1141 1134 0 1156 1142 0 1156 1527 1
		 1146 1137 0 1152 1157 1 1157 1119 0 1125 1120 0 1153 1158 1 1145 1158 0 1149 1156 0
		 1154 1129 1 1127 1153 1 1158 1126 0 1155 1133 0 1151 1132 1 1136 1152 0 1138 1157 0
		 1159 1168 0 1160 520 1 1161 1170 1 1162 1171 0 1163 1172 1 1164 1173 0 1165 527 1
		 1166 1175 0 1167 1176 0 1159 1160 1 1160 1161 1 1161 1162 1 1162 1163 1 1163 1164 1
		 1164 1165 1 1165 1166 1 1166 1167 1 1167 1159 1 1168 1177 0 1169 1160 1 1170 1179 1
		 1171 1180 0 1172 1181 1 1173 1182 0 1174 1165 1 1175 1184 0 1176 1185 0 1168 1169 1
		 1169 1170 1 1170 1171 1 1171 1172 1 1172 1173 1 1173 1174 1 1174 1175 1 1175 1176 1;
	setAttr ".ed[2158:2323]" 1176 1168 1 1177 1186 0 1178 1169 1 1179 1188 1 1180 1189 0
		 1181 1190 1 1182 1191 0 1183 1174 1 1184 1193 0 1185 1194 0 1177 1178 1 1178 1179 1
		 1179 1180 1 1180 1181 1 1181 1182 1 1182 1183 1 1183 1184 1 1184 1185 1 1185 1177 1
		 1186 395 0 1187 1178 1 1188 523 1 1189 396 0 1190 461 1 1191 397 0 1192 1183 1 1193 525 0
		 1194 398 0 1186 1187 1 1187 1188 1 1188 1189 1 1189 1190 1 1190 1191 1 1191 1192 1
		 1192 1193 1 1193 1194 1 1194 1186 1 1195 1204 0 1196 515 1 1197 1206 1 1198 1207 0
		 1199 1208 0 1200 508 0 1201 1210 1 1202 1211 0 1203 458 1 1195 1196 1 1196 1197 1
		 1197 1198 1 1198 1199 1 1199 1200 1 1200 1201 1 1201 1202 1 1202 1203 1 1203 1195 1
		 1204 1213 0 1205 1196 1 1206 1215 1 1207 1216 0 1208 1217 0 1209 1200 0 1210 1219 1
		 1211 1220 0 1212 1203 1 1204 1205 1 1205 1206 1 1206 1207 1 1207 1208 1 1208 1209 1
		 1209 1210 1 1210 1211 1 1211 1212 1 1212 1204 1 1213 1222 0 1214 1205 1 1215 1224 1
		 1216 1225 0 1217 1226 0 1218 1209 0 1219 1228 1 1220 1229 0 1221 1212 1 1213 1214 1
		 1214 1215 1 1215 1216 1 1216 1217 1 1217 1218 1 1218 1219 1 1219 1220 1 1220 1221 1
		 1221 1213 1 1222 431 0 1223 1214 1 1224 513 1 1225 430 0 1226 433 0 1227 1218 0 1228 511 1
		 1229 432 0 1230 1221 1 1222 1223 1 1223 1224 1 1224 1225 1 1225 1226 1 1226 1227 1
		 1227 1228 1 1228 1229 1 1229 1230 1 1230 1222 1 1231 1241 1 1232 606 0 1233 1243 0
		 1234 1244 1 1235 488 1 1236 400 1 1237 614 0 1238 1248 0 1239 399 1 1240 1250 1 1231 1232 1
		 1232 1233 1 1233 1234 1 1234 1235 1 1235 1236 1 1236 1237 1 1237 1238 1 1238 1239 1
		 1239 1240 1 1240 1231 1 1241 1251 1 1242 1232 0 1243 1253 0 1244 1254 1 1245 1235 1
		 1246 1236 1 1247 1237 0 1248 1258 0 1249 1239 1 1250 1260 1 1241 1242 1 1242 1243 1
		 1243 1244 1 1244 1245 1 1245 1246 1 1246 1247 1 1247 1248 1 1248 1249 1 1249 1250 1
		 1250 1241 1 1251 403 1 1252 1242 0 1253 608 0 1254 404 1 1255 1245 1 1256 1246 1
		 1257 1247 0 1258 612 0 1259 1249 1 1260 486 1 1251 1252 1 1252 1253 1 1253 1254 1
		 1254 1255 1 1255 1256 1 1256 1257 1 1257 1258 1;
	setAttr ".ed[2324:2489]" 1258 1259 1 1259 1260 1 1260 1251 1 1261 1271 1 1262 578 0
		 1263 1273 0 1264 1274 1 1265 472 1 1266 434 1 1267 597 0 1268 1278 0 1269 435 1 1270 1280 1
		 1261 1262 1 1262 1263 1 1263 1264 1 1264 1265 1 1265 1266 1 1266 1267 1 1267 1268 1
		 1268 1269 1 1269 1270 1 1270 1261 1 1271 1281 1 1272 1262 0 1273 1283 0 1274 1284 1
		 1275 1265 1 1276 1266 1 1277 1267 0 1278 1288 0 1279 1269 1 1280 1290 1 1271 1272 1
		 1272 1273 1 1273 1274 1 1274 1275 1 1275 1276 1 1276 1277 1 1277 1278 1 1278 1279 1
		 1279 1280 1 1280 1271 1 1281 439 1 1282 1272 0 1283 604 0 1284 438 1 1285 1275 1
		 1286 1276 1 1287 1277 0 1288 600 0 1289 1279 1 1290 483 1 1281 1282 1 1282 1283 1
		 1283 1284 1 1284 1285 1 1285 1286 1 1286 1287 1 1287 1288 1 1288 1289 1 1289 1290 1
		 1290 1281 1 1291 1297 1 1292 415 1 1293 1299 0 1294 620 0 1295 416 1 1296 491 1 1291 1292 1
		 1292 1293 1 1293 1294 1 1294 1295 1 1295 1296 1 1297 1303 1 1298 1292 1 1299 1305 0
		 1300 1294 0 1301 1295 1 1302 1296 1 1297 1298 1 1298 1299 1 1299 1300 1 1300 1301 1
		 1301 1302 1 1303 496 1 1304 1298 1 1305 617 0 1306 1300 0 1307 1301 1 1308 1302 1
		 1303 1304 1 1304 1305 1 1305 1306 1 1306 1307 1 1307 1308 1 1309 1315 1 1310 451 1
		 1311 1317 0 1312 591 0 1313 450 1 1314 475 1 1309 1310 1 1310 1311 1 1311 1312 1
		 1312 1313 1 1313 1314 1 1315 1321 1 1316 1310 1 1317 1323 0 1318 1312 0 1319 1313 1
		 1320 1314 1 1315 1316 1 1316 1317 1 1317 1318 1 1318 1319 1 1319 1320 1 1321 480 1
		 1322 1316 1 1323 594 0 1324 1318 0 1325 1319 1 1326 1320 1 1321 1322 1 1322 1323 1
		 1323 1324 1 1324 1325 1 1325 1326 1 1327 1331 1 1328 629 0 1329 1333 0 1330 1334 1
		 1327 1328 1 1328 1329 1 1329 1330 1 1331 1335 1 1332 1328 0 1333 1337 0 1334 1338 1
		 1331 1332 1 1332 1333 1 1333 1334 1 1335 625 1 1336 1332 0 1337 535 0 1338 533 1
		 1335 1336 1 1336 1337 1 1337 1338 1 1339 1343 1 1340 1344 0 1341 582 0 1342 1346 1
		 1339 1340 1 1340 1341 1 1341 1342 1 1343 1347 1 1344 1348 0 1345 1341 0 1346 1350 1
		 1343 1344 1 1344 1345 1 1345 1346 1 1347 587 1 1348 559 0;
	setAttr ".ed[2490:2655]" 1349 1345 0 1350 555 1 1347 1348 1 1348 1349 1 1349 1350 1
		 1351 1435 1 1352 1376 0 1353 1441 1 1354 1378 0 1355 1379 1 1356 1380 0 1357 1381 0
		 1358 1436 0 1351 1352 1 1352 1353 1 1353 1354 1 1354 1355 1 1355 1356 1 1356 1357 1
		 1357 1358 1 1358 1351 1 1359 1431 1 1360 1392 0 1361 1393 1 1362 1434 0 1363 1395 1
		 1364 1396 0 1365 1429 0 1366 1398 0 1359 1360 1 1360 1361 1 1361 1362 1 1362 1363 1
		 1363 1364 1 1364 1365 1 1365 1366 1 1366 1359 1 1367 1375 1 1368 539 0 1369 1377 1
		 1370 541 0 1371 468 1 1372 421 0 1373 544 0 1374 1382 0 1367 1368 1 1368 1369 1 1369 1370 1
		 1370 1371 1 1371 1372 1 1372 1373 1 1373 1374 1 1374 1367 1 1375 1351 1 1376 1368 0
		 1377 1353 1 1378 1370 0 1379 1371 1 1380 1372 0 1381 1373 0 1382 1358 0 1375 1376 1
		 1376 1377 1 1377 1378 1 1378 1379 1 1379 1380 1 1380 1381 1 1381 1382 1 1382 1375 1
		 1383 1391 1 1384 573 0 1385 571 1 1386 1394 0 1387 462 1 1388 576 0 1389 1397 0 1390 456 0
		 1383 1384 1 1384 1385 1 1385 1386 1 1386 1387 1 1387 1388 1 1388 1389 1 1389 1390 1
		 1390 1383 1 1391 1359 1 1392 1384 0 1393 1385 1 1394 1362 0 1395 1387 1 1396 1388 0
		 1397 1365 0 1398 1390 0 1391 1392 1 1392 1393 1 1393 1394 1 1394 1395 1 1395 1396 1
		 1396 1397 1 1397 1398 1 1398 1391 1 1399 1406 0 1400 1407 1 1401 1408 0 1402 1409 0
		 1403 471 1 1404 545 0 1405 1412 0 1399 1400 1 1400 1401 1 1401 1402 1 1402 1403 1
		 1403 1404 1 1404 1405 1 1405 1399 1 1406 549 0 1407 469 1 1408 553 0 1409 551 0 1410 1403 1
		 1411 1404 0 1412 547 0 1406 1407 1 1407 1408 1 1408 1409 1 1409 1410 1 1410 1411 1
		 1411 1412 1 1412 1406 1 1413 1420 0 1414 577 0 1415 1422 0 1416 1423 1 1417 572 0
		 1418 1425 0 1419 465 1 1413 1414 1 1414 1415 1 1415 1416 1 1416 1417 1 1417 1418 1
		 1418 1419 1 1419 1413 1 1420 563 0 1421 1414 0 1422 561 0 1423 463 1 1424 1417 0
		 1425 568 0 1426 1419 1 1420 1421 1 1421 1422 1 1422 1423 1 1423 1424 1 1424 1425 1
		 1425 1426 1 1426 1420 1 1427 1363 1 1428 1364 0 1427 1428 1 1429 570 0 1428 1429 1
		 1430 1366 0 1429 1430 1 1431 504 1 1430 1431 1;
	setAttr ".ed[2656:2821]" 1432 1360 0 1431 1432 1 1433 1361 1 1432 1433 1 1434 635 0
		 1433 1434 1 1434 1427 1 1435 498 1 1436 537 0 1435 1436 1 1437 1357 0 1436 1437 1
		 1438 1356 0 1437 1438 1 1439 1355 1 1438 1439 1 1440 1354 0 1439 1440 1 1441 633 1
		 1440 1441 1 1442 1352 0 1441 1442 1 1442 1435 1 1443 1453 0 1444 86 0 1445 1455 0
		 1446 114 1 1447 95 0 1448 1458 0 1449 90 0 1450 1460 0 1451 118 1 1452 82 0 1443 1444 1
		 1444 1445 1 1445 1446 1 1446 1447 1 1447 1448 1 1448 1449 1 1449 1450 1 1450 1451 1
		 1451 1452 1 1452 1443 1 1453 96 0 1454 1444 0 1455 100 0 1456 1446 1 1457 1447 0
		 1458 93 0 1459 1449 0 1460 89 0 1461 1451 1 1462 1452 0 1453 1454 1 1454 1455 1 1455 1456 1
		 1456 1457 1 1457 1458 1 1458 1459 1 1459 1460 1 1460 1461 1 1461 1462 1 1462 1453 1
		 1463 1123 0 1464 1474 0 1465 1475 1 1466 1132 0 1467 1477 0 1468 1140 0 1469 1479 0
		 1470 1480 1 1471 1129 0 1472 1482 0 1463 1464 1 1464 1465 1 1465 1466 1 1466 1467 1
		 1467 1468 1 1468 1469 1 1469 1470 1 1470 1471 1 1471 1472 1 1472 1463 1 1473 1463 0
		 1474 1122 0 1475 1152 1 1476 1466 0 1477 1135 0 1478 1468 0 1479 1143 0 1480 1153 1
		 1481 1471 0 1482 1128 0 1473 1474 1 1474 1475 1 1475 1476 1 1476 1477 1 1477 1478 1
		 1478 1479 1 1479 1480 1 1480 1481 1 1481 1482 1 1482 1473 1 1483 1493 0 1484 117 1
		 1485 97 0 1486 1496 0 1487 101 0 1488 1498 0 1489 113 1 1490 92 0 1491 1501 0 1492 88 0
		 1483 1484 1 1484 1485 1 1485 1486 1 1486 1487 1 1487 1488 1 1488 1489 1 1489 1490 1
		 1490 1491 1 1491 1492 1 1492 1483 1 1493 1503 0 1494 1484 1 1495 1485 0 1496 1506 0
		 1497 1487 0 1498 1508 0 1499 1489 1 1500 1490 0 1501 1511 0 1502 1492 0 1493 1494 1
		 1494 1495 1 1495 1496 1 1496 1497 1 1497 1498 1 1498 1499 1 1499 1500 1 1500 1501 1
		 1501 1502 1 1502 1493 1 1503 1513 0 1504 1494 1 1505 1495 0 1506 1516 0 1507 1497 0
		 1508 1518 0 1509 1499 1 1510 1500 0 1511 1521 0 1512 1502 0 1503 1504 1 1504 1505 1
		 1505 1506 1 1506 1507 1 1507 1508 1 1508 1509 1 1509 1510 1 1510 1511 1 1511 1512 1
		 1512 1503 1 1513 105 0 1514 1504 1 1515 1505 0;
	setAttr ".ed[2822:2987]" 1516 99 0 1517 1507 0 1518 103 0 1519 1509 1 1520 1510 0
		 1521 107 0 1522 1512 0 1513 1514 1 1514 1515 1 1515 1516 1 1516 1517 1 1517 1518 1
		 1518 1519 1 1519 1520 1 1520 1521 1 1521 1522 1 1522 1513 1 1523 1133 0 1524 1534 0
		 1525 1141 0 1526 1536 0 1527 1537 1 1528 1149 0 1529 1539 0 1530 1147 0 1531 1541 0
		 1532 1542 1 1523 1524 1 1524 1525 1 1525 1526 1 1526 1527 1 1527 1528 1 1528 1529 1
		 1529 1530 1 1530 1531 1 1531 1532 1 1532 1523 1 1533 1523 0 1534 1544 0 1535 1525 0
		 1536 1546 0 1537 1547 1 1538 1528 0 1539 1549 0 1540 1530 0 1541 1551 0 1542 1552 1
		 1533 1534 1 1534 1535 1 1535 1536 1 1536 1537 1 1537 1538 1 1538 1539 1 1539 1540 1
		 1540 1541 1 1541 1542 1 1542 1533 1 1543 1533 0 1544 1554 0 1545 1535 0 1546 1556 0
		 1547 1557 1 1548 1538 0 1549 1559 0 1550 1540 0 1551 1561 0 1552 1562 1 1543 1544 1
		 1544 1545 1 1545 1546 1 1546 1547 1 1547 1548 1 1548 1549 1 1549 1550 1 1550 1551 1
		 1551 1552 1 1552 1543 1 1553 1543 0 1554 1131 0 1555 1545 0 1556 1139 0 1557 1154 1
		 1558 1548 0 1559 1130 0 1560 1550 0 1561 1124 0 1562 1151 1 1553 1554 1 1554 1555 1
		 1555 1556 1 1556 1557 1 1557 1558 1 1558 1559 1 1559 1560 1 1560 1561 1 1561 1562 1
		 1562 1553 1 1563 2 0 1564 1572 0 1565 14 0 1566 1574 0 1567 11 0 1568 1576 0 1569 6 0
		 1570 1578 0 1563 1564 1 1564 1565 1 1565 1566 1 1566 1567 1 1567 1568 1 1568 1569 1
		 1569 1570 1 1570 1563 1 1571 1563 0 1572 13 0 1573 1565 0 1574 9 0 1575 1567 0 1576 5 0
		 1577 1569 0 1578 1 0 1571 1572 1 1572 1573 1 1573 1574 1 1574 1575 1 1575 1576 1
		 1576 1577 1 1577 1578 1 1578 1571 1 1579 1587 0 1580 45 0 1581 1589 0 1582 49 0 1583 1591 0
		 1584 53 0 1585 1593 0 1586 41 0 1579 1580 1 1580 1581 1 1581 1582 1 1582 1583 1 1583 1584 1
		 1584 1585 1 1585 1586 1 1586 1579 1 1587 43 0 1588 1580 0 1589 47 0 1590 1582 0 1591 51 0
		 1592 1584 0 1593 55 0 1594 1586 0 1587 1588 1 1588 1589 1 1589 1590 1 1590 1591 1
		 1591 1592 1 1592 1593 1 1593 1594 1 1594 1587 1 1595 36 0 1596 1604 0 1597 34 0 1598 1606 0
		 1599 32 0;
	setAttr ".ed[2988:3153]" 1600 1608 0 1601 38 0 1602 1610 0 1595 1596 1 1596 1597 1
		 1597 1598 1 1598 1599 1 1599 1600 1 1600 1601 1 1601 1602 1 1602 1595 1 1603 1595 0
		 1604 15 0 1605 1597 0 1606 10 0 1607 1599 0 1608 7 0 1609 1601 0 1610 3 0 1603 1604 1
		 1604 1605 1 1605 1606 1 1606 1607 1 1607 1608 1 1608 1609 1 1609 1610 1 1610 1603 1
		 1611 1619 0 1612 46 0 1613 1621 0 1614 50 0 1615 1623 0 1616 54 0 1617 1625 0 1618 42 0
		 1611 1612 1 1612 1613 1 1613 1614 1 1614 1615 1 1615 1616 1 1616 1617 1 1617 1618 1
		 1618 1611 1 1619 76 0 1620 1612 0 1621 78 0 1622 1614 0 1623 72 0 1624 1616 0 1625 74 0
		 1626 1618 0 1619 1620 1 1620 1621 1 1621 1622 1 1622 1623 1 1623 1624 1 1624 1625 1
		 1625 1626 1 1626 1619 1 1627 28 0 1628 1636 0 1629 22 0 1630 1638 0 1631 24 0 1632 1640 0
		 1633 30 0 1634 1642 0 1627 1628 1 1628 1629 1 1629 1630 1 1630 1631 1 1631 1632 1
		 1632 1633 1 1633 1634 1 1634 1627 1 1635 1627 0 1636 19 0 1637 1629 0 1638 21 0 1639 1631 0
		 1640 26 0 1641 1633 0 1642 17 0 1635 1636 1 1636 1637 1 1637 1638 1 1638 1639 1 1639 1640 1
		 1640 1641 1 1641 1642 1 1642 1635 1 1643 1651 0 1644 58 0 1645 1653 0 1646 62 0 1647 1655 0
		 1648 60 0 1649 1657 0 1650 56 0 1643 1644 1 1644 1645 1 1645 1646 1 1646 1647 1 1647 1648 1
		 1648 1649 1 1649 1650 1 1650 1643 1 1651 64 0 1652 1644 0 1653 68 0 1654 1646 0 1655 70 0
		 1656 1648 0 1657 66 0 1658 1650 0 1651 1652 1 1652 1653 1 1653 1654 1 1654 1655 1
		 1655 1656 1 1656 1657 1 1657 1658 1 1658 1651 1 1659 1670 1 1660 373 0 1661 1672 0
		 1662 355 0 1663 1674 0 1664 348 1 1665 1676 1 1666 349 0 1667 1678 0 1668 381 0 1669 1680 0
		 1659 1660 1 1660 1661 1 1661 1662 1 1662 1663 1 1663 1664 1 1664 1665 1 1665 1666 1
		 1666 1667 1 1667 1668 1 1668 1669 1 1669 1659 1 1670 1681 1 1671 1660 0 1672 1683 0
		 1673 1662 0 1674 1685 0 1675 1664 1 1676 1687 1 1677 1666 0 1678 1689 0 1679 1668 0
		 1680 1691 0 1670 1671 1 1671 1672 1 1672 1673 1 1673 1674 1 1674 1675 1 1675 1676 1
		 1676 1677 1 1677 1678 1 1678 1679 1 1679 1680 1;
	setAttr ".ed[3154:3319]" 1680 1670 1 1681 218 1 1682 1671 0 1683 367 0 1684 1673 0
		 1685 262 0 1686 1675 1 1687 243 1 1688 1677 0 1689 254 0 1690 1679 0 1691 361 0 1681 1682 1
		 1682 1683 1 1683 1684 1 1684 1685 1 1685 1686 1 1686 1687 1 1687 1688 1 1688 1689 1
		 1689 1690 1 1690 1691 1 1691 1681 1 1692 216 1 1693 365 0 1694 364 0 1695 259 1 1696 258 0
		 1697 242 1 1698 240 1 1699 253 0 1700 250 1 1701 360 0 1702 357 0 1692 1693 1 1693 1694 1
		 1694 1695 1 1695 1696 1 1696 1697 1 1697 1698 1 1698 1699 1 1699 1700 1 1700 1701 1
		 1701 1702 1 1702 1692 1 1703 1709 0 1704 1710 1 1705 1711 0 1706 887 0 1707 880 1
		 1708 879 0 1703 1704 1 1704 1705 1 1705 1706 1 1706 1707 1 1707 1708 1 1708 1703 1
		 1709 1715 0 1710 1716 1 1711 1717 0 1712 1706 0 1713 1707 1 1714 1708 0 1709 1710 1
		 1710 1711 1 1711 1712 1 1712 1713 1 1713 1714 1 1714 1709 1 1715 883 0 1716 884 1
		 1717 889 0 1718 1712 0 1719 1713 1 1720 1714 0 1715 1716 1 1716 1717 1 1717 1718 1
		 1718 1719 1 1719 1720 1 1720 1715 1 1721 1727 0 1722 1728 0 1723 184 0 1724 1730 1
		 1725 187 0 1726 141 0 1721 1722 1 1722 1723 1 1723 1724 1 1724 1725 1 1725 1726 1
		 1727 1733 0 1728 1734 0 1729 1723 0 1730 1736 1 1731 1725 0 1732 1726 0 1727 1728 1
		 1728 1729 1 1729 1730 1 1730 1731 1 1731 1732 1 1733 127 0 1734 179 0 1735 1729 0
		 1736 182 1 1737 1731 0 1738 1732 0 1733 1734 1 1734 1735 1 1735 1736 1 1736 1737 1
		 1737 1738 1 1739 125 0 1740 169 1 1741 166 1 1742 164 0 1743 153 0 1744 133 0 1739 1740 1
		 1740 1741 1 1741 1742 1 1742 1743 1 1743 1744 1 1745 129 0 1746 191 0 1747 207 0
		 1748 154 0 1749 189 0 1750 142 0 1745 1746 1 1746 1747 1 1747 1748 1 1748 1749 1
		 1749 1750 1 1751 130 0 1752 193 0 1753 201 0 1754 197 0 1755 199 0 1756 144 0 1751 1752 1
		 1752 1753 1 1753 1754 1 1754 1755 1 1755 1756 1 1757 151 0 1758 203 0 1759 198 1
		 1760 163 0 1761 200 0 1762 123 0 1757 1758 1 1758 1759 1 1759 1760 1 1760 1761 1
		 1761 1762 1 1763 132 0 1764 209 0 1765 158 0 1766 213 0 1767 215 0 1768 145 0 1763 1764 1
		 1764 1765 1;
	setAttr ".ed[3320:3362]" 1765 1766 1 1766 1767 1 1767 1768 1 1769 302 0 1770 309 1
		 1771 342 1 1772 306 0 1773 308 0 1774 237 1 1775 316 0 1776 225 0 1777 234 1 1778 300 0
		 1769 1770 1 1770 1771 1 1771 1772 1 1772 1773 1 1773 1774 1 1774 1775 1 1775 1776 1
		 1776 1777 1 1777 1778 1 1778 1769 1 1779 1087 0 1780 1078 0 1781 1118 1 1782 1116 0
		 1783 1106 0 1784 1115 1 1785 1099 0 1786 1090 0 1787 1101 1 1788 1086 1 1779 1780 1
		 1780 1781 1 1781 1782 1 1782 1783 1 1783 1784 1 1784 1785 1 1785 1786 1 1786 1787 1
		 1787 1788 1 1788 1779 1;
	setAttr -s 1589 -ch 6385 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 16 17 18 19
		mu 0 4 16 1334 1314 19
		f 4 2934 2919 21 22
		mu 0 4 1965 1957 20 1317
		f 4 2998 2983 5 24
		mu 0 4 2005 1997 1 0
		f 4 25 26 27 28
		mu 0 4 1316 23 24 1313
		f 4 2932 2925 30 31
		mu 0 4 1962 1963 1315 27
		f 4 2996 2989 -8 33
		mu 0 4 2002 2003 1329 6
		f 4 34 35 36 37
		mu 0 4 28 29 30 31
		f 4 2930 2923 39 40
		mu 0 4 1960 1961 32 33
		f 4 2994 2987 -2 42
		mu 0 4 2000 2001 5 4
		f 4 43 44 45 46
		mu 0 4 34 35 36 37
		f 4 2928 2921 48 49
		mu 0 4 1958 1959 38 39
		f 4 2992 2985 -4 51
		mu 0 4 1998 1999 3 2
		f 4 3062 3047 53 54
		mu 0 4 2046 2037 40 41
		f 4 3056 3049 56 57
		mu 0 4 2038 2039 1325 43
		f 4 3058 3051 59 60
		mu 0 4 2041 2043 44 1322
		f 4 -57 61 -60 62
		mu 0 4 43 1325 45 1320
		f 4 3060 3053 64 65
		mu 0 4 2044 2045 46 1336
		f 4 -54 66 -65 67
		mu 0 4 41 40 47 46
		f 4 68 69 70 71
		mu 0 4 1312 49 50 1308
		f 4 2982 2967 73 74
		mu 0 4 1996 1987 1311 53
		f 4 3046 3031 13 76
		mu 0 4 2036 2027 1328 8
		f 4 77 78 79 80
		mu 0 4 54 1331 1307 57
		f 4 2976 2969 82 83
		mu 0 4 1989 1991 58 1309
		f 4 3040 3033 -16 85
		mu 0 4 2029 2031 11 10
		f 4 86 87 88 89
		mu 0 4 60 61 62 63
		f 4 2978 2971 91 92
		mu 0 4 1992 1993 64 65
		f 4 3042 3035 -10 94
		mu 0 4 2032 2033 13 12
		f 4 95 96 97 98
		mu 0 4 66 67 68 69
		f 4 2980 2973 100 101
		mu 0 4 1994 1995 70 71
		f 4 3044 3037 -12 103
		mu 0 4 2034 2035 15 14
		f 4 3110 3095 -71 106
		mu 0 4 2076 2067 1308 50
		f 4 -105 107 108 109
		mu 0 4 73 72 74 1321
		f 4 3104 3097 -80 111
		mu 0 4 2069 2071 57 1307
		f 4 3108 3101 -98 114
		mu 0 4 2074 2075 69 68
		f 4 -113 115 116 117
		mu 0 4 77 76 78 1335
		f 4 3106 3099 -89 119
		mu 0 4 2072 2073 63 62
		f 4 2933 -23 120 -2926
		mu 0 4 1964 1966 21 26
		f 4 2931 -32 122 -2924
		mu 0 4 1961 1962 27 32
		f 4 2929 -41 124 -2922
		mu 0 4 1959 1960 33 38
		f 4 2927 -50 126 -2920
		mu 0 4 1957 1958 39 20
		f 4 128 -63 129 -67
		mu 0 4 40 43 1320 47
		f 4 -128 -20 130 -45
		mu 0 4 35 16 19 36
		f 4 -122 -29 131 -18
		mu 0 4 17 22 25 18
		f 4 -124 -38 132 -27
		mu 0 4 23 28 31 24
		f 4 -126 -47 133 -36
		mu 0 4 29 34 37 30
		f 4 3059 -66 -130 -3052
		mu 0 4 2043 2044 1336 44
		f 4 3057 -61 -62 -3050
		mu 0 4 2040 2042 1326 42
		f 4 3055 -58 -129 -3048
		mu 0 4 2037 2038 43 40
		f 4 3061 -55 -68 -3054
		mu 0 4 2045 2046 41 46
		f 4 2993 -43 0 -2986
		mu 0 4 1999 2000 4 3
		f 4 2991 -52 2 -2984
		mu 0 4 1997 1998 2 1
		f 4 2997 -25 4 -2990
		mu 0 4 2004 2006 1330 7
		f 4 2995 -34 6 -2988
		mu 0 4 2001 2002 6 5
		f 4 2975 -84 135 -2968
		mu 0 4 1988 1990 59 52
		f 4 2977 -93 137 -2970
		mu 0 4 1991 1992 65 58
		f 4 2979 -102 139 -2972
		mu 0 4 1993 1994 71 64
		f 4 2981 -75 141 -2974
		mu 0 4 1995 1996 53 70
		f 4 -118 142 -108 143
		mu 0 4 77 1335 74 72
		f 4 -99 144 -70 -141
		mu 0 4 66 69 50 49
		f 4 -72 145 -79 -135
		mu 0 4 48 51 56 55
		f 4 -81 146 -88 -137
		mu 0 4 54 57 62 61
		f 4 -90 147 -97 -139
		mu 0 4 60 63 68 67
		f 4 -3098 3105 -120 -147
		mu 0 4 57 2071 2072 62
		f 4 -3096 3103 -112 -146
		mu 0 4 51 2068 2070 56
		f 4 -3102 3109 -107 -145
		mu 0 4 69 2075 2076 50
		f 4 -3100 3107 -115 -148
		mu 0 4 63 2073 2074 68
		f 4 3043 -104 -9 -3036
		mu 0 4 2033 2034 14 13
		f 4 3045 -77 -11 -3038
		mu 0 4 2035 2036 8 15
		f 4 3039 -86 -13 -3032
		mu 0 4 2028 2030 1327 9
		f 4 3041 -95 -15 -3034
		mu 0 4 2031 2032 12 11
		f 4 156 157 158 159
		mu 0 4 80 81 82 83
		f 4 2718 2699 161 162
		mu 0 4 1846 1836 84 85
		f 4 163 164 165 166
		mu 0 4 86 87 88 89
		f 4 2710 2701 168 169
		mu 0 4 1837 1838 90 91
		f 4 2838 2819 172 173
		mu 0 4 1912 1902 94 95
		f 4 -171 174 2715 2706
		mu 0 4 93 92 1842 1843
		f 4 -176 177 178 179
		mu 0 4 97 96 98 99
		f 4 2836 2827 182 183
		mu 0 4 1910 1911 102 103
		f 4 -181 184 2713 2704
		mu 0 4 101 100 1840 1841
		f 4 -186 187 188 189
		mu 0 4 105 104 106 107
		f 4 2831 2822 191 192
		mu 0 4 1905 1906 108 109
		f 4 2833 2824 194 195
		mu 0 4 1907 1908 110 111
		f 4 2709 -170 196 -2700
		mu 0 4 1836 1837 91 84
		f 4 -2705 2714 -175 199
		mu 0 4 101 1841 1842 92
		f 4 2717 -163 200 215
		mu 0 4 1844 1846 85 1305
		f 4 2712 -185 203 208
		mu 0 4 1839 1840 100 115
		f 4 2832 -196 150 -2823
		mu 0 4 1906 1907 111 108
		f 4 2830 -193 149 213
		mu 0 4 1903 1905 109 116
		f 4 2837 -174 -153 -2828
		mu 0 4 1911 1912 95 102
		f 4 2835 -184 -205 206
		mu 0 4 1909 1910 103 117
		f 4 -190 153 -178 -199
		mu 0 4 105 107 98 96
		f 4 -160 -215 217 216
		mu 0 4 80 83 1303 1304
		f 4 -167 -198 -158 -149
		mu 0 4 86 89 82 81
		f 4 -188 -208 210 -155
		mu 0 4 106 104 114 119
		f 4 2834 -207 -152 -2825
		mu 0 4 1908 1909 117 110
		f 4 2711 -209 205 -2702
		mu 0 4 1838 1839 115 90
		f 4 -211 -203 -165 -210
		mu 0 4 119 114 88 87
		f 4 2829 -214 211 -2820
		mu 0 4 1902 1904 1306 94
		f 4 2716 -216 212 -2707
		mu 0 4 1843 1845 112 93
		f 4 -218 -202 -180 155
		mu 0 4 118 113 97 99
		f 4 250 251 252 253
		mu 0 4 120 121 122 123
		f 4 -251 254 3277 3272
		mu 0 4 121 120 2167 2168
		f 4 3288 3283 258 259
		mu 0 4 2173 2174 126 127
		f 4 260 261 262 263
		mu 0 4 128 129 130 131
		f 4 -261 264 265 266
		mu 0 4 129 128 132 133
		f 4 -263 267 3319 3314
		mu 0 4 131 130 2189 2190
		f 4 270 271 272 273
		mu 0 4 136 137 138 139
		f 4 -271 274 275 276
		mu 0 4 137 136 140 141
		f 4 3310 3305 278 279
		mu 0 4 2185 2186 142 143
		f 4 -256 280 281 282
		mu 0 4 125 124 144 1171
		f 4 283 284 3275 3270
		mu 0 4 146 147 2165 2166
		f 4 -284 287 288 289
		mu 0 4 147 146 150 151
		f 4 -286 290 291 292
		mu 0 4 149 148 152 1175
		f 4 -282 293 294 295
		mu 0 4 145 1176 154 155
		f 4 -292 296 297 298
		mu 0 4 153 1174 156 157
		f 4 299 300 301 302
		mu 0 4 158 159 160 161
		f 4 -300 303 304 305
		mu 0 4 159 158 162 163
		f 4 -305 306 307 308
		mu 0 4 163 162 164 165
		f 4 3242 3237 -298 310
		mu 0 4 2147 2148 157 156
		f 4 311 312 313 314
		mu 0 4 166 167 168 169
		f 4 -312 315 316 317
		mu 0 4 167 166 170 171
		f 4 3244 3239 -295 319
		mu 0 4 2149 2150 155 154
		f 4 -259 320 321 322
		mu 0 4 127 126 172 173
		f 4 3286 3281 324 325
		mu 0 4 2171 2172 174 175
		f 4 326 327 328 329
		mu 0 4 176 177 178 179
		f 4 3297 3292 -279 331
		mu 0 4 2177 2178 143 142
		f 4 -329 332 -325 333
		mu 0 4 179 178 175 174
		f 4 334 335 -322 336
		mu 0 4 180 181 173 172
		f 4 3299 3294 338 339
		mu 0 4 2179 2180 182 183
		f 4 -339 340 3308 3303
		mu 0 4 183 182 2183 2184
		f 4 -269 342 -273 343
		mu 0 4 135 134 139 138
		f 4 3321 3316 -317 345
		mu 0 4 2191 2192 171 170
		f 4 346 -288 347 -254
		mu 0 4 123 150 146 120
		f 4 3276 -255 -348 -3271
		mu 0 4 2166 2167 120 146
		f 4 -281 -349 -293 349
		mu 0 4 144 124 149 1175
		f 4 -265 350 -315 351
		mu 0 4 132 128 166 169
		f 4 -299 352 -294 -350
		mu 0 4 153 157 154 1176
		f 4 -353 -3238 3243 -320
		mu 0 4 154 157 2148 2149
		f 4 -264 353 -316 -351
		mu 0 4 128 131 170 166
		f 4 -277 354 -301 355
		mu 0 4 137 141 160 159
		f 4 356 -3282 3287 -260
		mu 0 4 127 174 2172 2173
		f 4 357 -3293 3298 -340
		mu 0 4 183 143 2178 2179
		f 4 359 -334 -357 -323
		mu 0 4 173 179 174 127
		f 4 360 -344 361 -309
		mu 0 4 165 135 138 163
		f 4 -354 -3315 3320 -346
		mu 0 4 170 131 2190 2191
		f 4 -262 362 218 363
		mu 0 4 130 129 184 185
		f 4 -275 364 219 365
		mu 0 4 140 136 186 187
		f 4 3274 -285 366 220
		mu 0 4 2164 2165 147 188
		f 4 -291 -368 221 368
		mu 0 4 152 148 189 190
		f 4 -267 369 222 -363
		mu 0 4 129 133 191 184
		f 4 -297 -369 223 370
		mu 0 4 156 1174 1173 192
		f 4 3241 -311 -371 224
		mu 0 4 2146 2147 156 192
		f 4 -290 371 225 -367
		mu 0 4 147 151 193 188
		f 4 -333 372 247 373
		mu 0 4 175 178 194 195
		f 4 3296 -332 374 227
		mu 0 4 2176 2177 142 196
		f 4 3285 -326 -374 228
		mu 0 4 2170 2171 175 195
		f 4 -343 376 229 377
		mu 0 4 139 134 198 199
		f 4 3318 -268 -364 230
		mu 0 4 2188 2189 130 185
		f 4 -252 378 231 379
		mu 0 4 122 121 200 201
		f 4 -3273 3278 3273 -379
		mu 0 4 121 2168 2169 200
		f 4 -283 381 233 -381
		mu 0 4 125 1171 1172 202
		f 4 -307 382 245 383
		mu 0 4 164 162 204 205
		f 4 -313 384 235 385
		mu 0 4 168 167 206 207
		f 4 -3240 3245 3240 386
		mu 0 4 155 2150 2151 208
		f 4 -296 -387 237 -382
		mu 0 4 145 155 208 203
		f 4 -3284 3289 3284 387
		mu 0 4 126 2174 2175 209
		f 4 -3295 3300 3295 389
		mu 0 4 182 2180 2181 211
		f 4 -303 390 249 391
		mu 0 4 158 161 212 213
		f 4 -321 -388 241 392
		mu 0 4 172 126 209 214
		f 4 -3317 3322 3317 393
		mu 0 4 171 2192 2193 215
		f 4 -318 -394 243 -385
		mu 0 4 167 171 215 206
		f 4 -274 -378 244 -365
		mu 0 4 136 139 199 186
		f 4 -362 -272 -356 -306
		mu 0 4 163 138 137 159
		f 4 -383 -304 -392 234
		mu 0 4 204 162 158 213
		f 4 -337 -393 246 -389
		mu 0 4 180 172 214 210
		f 4 -359 -330 -360 -336
		mu 0 4 181 176 179 173
		f 4 -373 -328 -376 226
		mu 0 4 194 178 177 197
		f 4 -3306 3311 3306 -375
		mu 0 4 142 2186 2187 196
		f 4 3309 -280 -358 -3304
		mu 0 4 2184 2185 143 183
		f 4 3307 -341 -390 240
		mu 0 4 2182 2183 182 211
		f 5 396 421 419 -398 -399
		mu 0 5 216 217 218 1152 220
		f 5 401 400 -420 420 -400
		mu 0 5 221 222 219 218 223
		f 4 407 406 412 -405
		mu 0 4 224 225 226 227
		f 4 408 409 -408 -406
		mu 0 4 228 1187 225 224
		f 4 -417 414 -409 -416
		mu 0 4 230 231 229 1186
		f 4 422 423 424 425
		mu 0 4 232 233 234 235
		f 4 -423 426 3193 3183
		mu 0 4 233 232 2119 2120
		f 4 -428 429 430 431
		mu 0 4 237 236 238 239
		f 3 -421 -422 -433
		mu 0 3 223 218 217
		f 4 437 438 3195 3185
		mu 0 4 240 241 2121 2122
		f 4 -438 441 442 443
		mu 0 4 241 240 244 245
		f 4 -440 444 445 446
		mu 0 4 243 242 246 247
		f 4 447 448 449 450
		mu 0 4 248 249 250 251
		f 4 -448 451 3191 3181
		mu 0 4 249 248 2117 2118
		f 4 -453 454 455 456
		mu 0 4 253 252 254 255
		f 4 457 -3184 3194 -439
		mu 0 4 241 233 2120 2121
		f 4 -459 -432 459 -445
		mu 0 4 242 237 239 246
		f 4 -3182 3192 -427 461
		mu 0 4 249 2118 2119 232
		f 4 -457 462 -430 -461
		mu 0 4 253 255 238 236
		f 4 -458 -444 435 -424
		mu 0 4 233 241 245 234
		f 4 -462 -426 -437 -449
		mu 0 4 249 232 235 250
		f 4 474 475 476 477
		mu 0 4 256 257 258 1190
		f 4 478 479 480 481
		mu 0 4 259 256 260 261
		f 4 482 483 484 485
		mu 0 4 257 259 262 263
		f 4 486 487 488 489
		mu 0 4 264 265 266 267
		f 4 490 491 492 493
		mu 0 4 263 264 268 1197
		f 4 494 495 496 497
		mu 0 4 265 262 269 270
		f 4 498 499 500 501
		mu 0 4 270 271 272 273
		f 4 502 503 504 505
		mu 0 4 274 269 261 275
		f 4 506 507 508 509
		mu 0 4 271 274 276 277
		f 4 510 511 512 513
		mu 0 4 278 279 275 1196
		f 4 514 515 464 516
		mu 0 4 280 278 281 1198
		f 4 517 518 519 520
		mu 0 4 279 280 282 276
		f 4 521 522 523 524
		mu 0 4 283 282 284 1193
		f 4 525 526 527 528
		mu 0 4 277 283 1191 286
		f 4 531 532 533 534
		mu 0 4 287 288 289 290
		f 4 535 536 537 538
		mu 0 4 291 287 292 293
		f 4 539 540 541 542
		mu 0 4 294 291 295 296
		f 4 3342 3323 545 546
		mu 0 4 2205 2194 297 298
		f 4 547 548 549 550
		mu 0 4 299 300 301 302
		f 4 551 552 553 554
		mu 0 4 303 299 304 305
		f 4 555 556 557 558
		mu 0 4 306 303 307 308
		f 4 3336 3327 561 562
		mu 0 4 2197 2198 309 310
		f 4 3334 3325 565 566
		mu 0 4 2195 2196 311 312
		f 4 567 568 569 570
		mu 0 4 302 295 313 314
		f 4 -558 571 572 573
		mu 0 4 308 307 315 1181
		f 4 -573 574 575 576
		mu 0 4 316 1178 317 1182
		f 4 -576 577 -534 578
		mu 0 4 318 1179 290 289
		f 4 -538 579 580 581
		mu 0 4 293 292 319 320
		f 4 -554 582 583 584
		mu 0 4 305 304 1184 322
		f 4 585 586 -570 587
		mu 0 4 323 324 314 313
		f 4 -482 -504 -496 -484
		mu 0 4 259 261 269 262
		f 4 -517 588 -523 -519
		mu 0 4 280 1198 284 282
		f 4 -476 -486 -494 -590
		mu 0 4 258 257 263 1197
		f 4 -531 590 -480 -478
		mu 0 4 1190 1189 260 256
		f 4 3333 -567 -466 -3324
		mu 0 4 2194 2195 312 297
		f 4 3337 3328 -467 -3328
		mu 0 4 2198 2199 325 309
		f 4 3339 3330 -403 593
		mu 0 4 2200 2202 1183 327
		f 4 3340 3331 -404 -3331
		mu 0 4 2203 2204 328 326
		f 4 595 404 596 -578
		mu 0 4 1179 224 227 290
		f 4 -539 597 -569 -541
		mu 0 4 291 293 313 295
		f 4 -555 598 599 -557
		mu 0 4 303 305 230 307
		f 4 600 405 -596 -575
		mu 0 4 1178 228 224 317
		f 4 -582 467 -588 -598
		mu 0 4 293 1185 323 313
		f 4 -585 468 416 -599
		mu 0 4 305 322 231 230
		f 4 -498 -502 -470 -488
		mu 0 4 265 270 273 266
		f 4 -525 601 -471 -527
		mu 0 4 283 1193 1194 285
		f 4 -492 -490 -411 -603
		mu 0 4 268 264 1192 329
		f 5 -464 -516 -514 -591 -530
		mu 0 5 1177 281 278 1196 1188
		f 4 -506 -512 -521 -508
		mu 0 4 274 275 279 276
		f 4 -500 -510 -529 -472
		mu 0 4 272 271 277 286
		f 4 -587 472 -583 603
		mu 0 4 314 324 321 304
		f 4 -571 -604 -553 -551
		mu 0 4 302 314 304 299
		f 4 -3326 3335 -563 -474
		mu 0 4 311 2196 2197 310
		f 4 -413 411 -580 604
		mu 0 4 227 226 319 292
		f 4 -597 -605 -537 -535
		mu 0 4 290 227 292 287
		f 4 -3332 3341 -547 -414
		mu 0 4 328 2204 2205 298
		f 4 -600 415 -601 -572
		mu 0 4 307 230 1186 315
		f 4 -3329 3338 -594 -418
		mu 0 4 325 2199 2201 1180
		f 3 -479 -483 -475
		mu 0 3 256 259 257
		f 4 -491 -485 -495 -487
		mu 0 4 264 263 262 265
		f 4 -497 -503 -507 -499
		mu 0 4 270 269 274 271
		f 3 -515 -518 -511
		mu 0 3 278 280 279
		f 4 -520 -522 -526 -509
		mu 0 4 276 282 283 277
		f 3 -481 -513 -505
		mu 0 3 261 1195 275
		f 4 -536 -540 -544 -532
		mu 0 4 287 291 294 288
		f 4 -552 -556 -560 -548
		mu 0 4 299 303 306 300
		f 4 -542 -568 -550 -564
		mu 0 4 296 295 302 301
		f 4 610 611 612 613
		mu 0 4 330 331 332 333
		f 4 -611 614 615 616
		mu 0 4 331 330 334 335
		f 4 -616 617 618 619
		mu 0 4 335 334 336 337
		f 4 -613 620 -608 621
		mu 0 4 333 332 338 339
		f 4 -619 622 -610 623
		mu 0 4 337 336 340 341
		f 5 -648 648 646 397 625
		mu 0 5 342 343 344 220 1152
		f 5 -626 -401 627 644 -607
		mu 0 5 1153 219 222 345 346
		f 4 -431 629 3171 3161
		mu 0 4 239 238 2107 2108
		f 4 -617 631 432 632
		mu 0 4 331 335 223 217
		f 5 633 -612 -633 -397 -434
		mu 0 5 347 332 331 217 216
		f 5 634 434 399 -632 -620
		mu 0 5 337 348 221 223 335
		f 4 -446 635 3173 3163
		mu 0 4 247 246 2109 2110
		f 4 -456 637 3169 3159
		mu 0 4 255 254 2105 2106
		f 4 -460 -3162 3172 -636
		mu 0 4 246 239 2108 2109
		f 4 -3160 3170 -630 -463
		mu 0 4 255 2106 2107 238
		f 3 -634 -627 -621
		mu 0 3 332 347 338
		f 3 -624 -629 -635
		mu 0 3 337 341 348
		f 6 -646 -628 -402 -435 628 -644
		mu 0 6 349 345 222 221 348 341
		f 6 -650 -609 626 433 398 -647
		mu 0 6 344 350 338 347 216 220
		f 4 650 651 3197 3187
		mu 0 4 351 352 2123 2124
		f 4 -651 654 655 656
		mu 0 4 352 351 355 356
		f 4 -653 657 658 659
		mu 0 4 354 353 357 358
		f 4 -659 660 3175 3165
		mu 0 4 358 357 2111 2112
		f 4 663 664 665 666
		mu 0 4 361 362 363 364
		f 4 -664 667 3189 3179
		mu 0 4 362 361 2115 2116
		f 4 -669 670 671 672
		mu 0 4 366 365 367 368
		f 4 -672 673 3167 3157
		mu 0 4 368 367 2103 2104
		f 4 -675 676 677 678
		mu 0 4 370 1166 346 349
		f 4 679 680 -662 681
		mu 0 4 350 343 360 1162
		f 4 3198 3177 683 -3188
		mu 0 4 2124 2113 1156 351
		f 4 -683 -660 684 -396
		mu 0 4 1158 354 358 1155
		f 4 3188 -668 685 -3178
		mu 0 4 2114 2115 361 372
		f 4 395 687 -671 -687
		mu 0 4 371 373 367 365
		f 4 -684 418 -641 -655
		mu 0 4 351 1156 1157 355
		f 4 -686 -667 641 -419
		mu 0 4 372 361 364 374
		f 4 3196 -652 688 -3186
		mu 0 4 2122 2123 352 240
		f 4 -690 -447 690 -658
		mu 0 4 353 243 247 357
		f 4 3190 -452 692 -3180
		mu 0 4 2116 2117 248 362
		f 4 -673 693 -455 -692
		mu 0 4 366 368 254 252
		f 4 -689 -657 639 -442
		mu 0 4 240 352 356 244
		f 4 -693 -451 -643 -665
		mu 0 4 362 248 251 363
		f 4 605 606 -677 694
		mu 0 4 1163 1153 346 1166
		f 4 -606 695 -681 647
		mu 0 4 342 1164 360 343
		f 4 -682 696 607 608
		mu 0 4 350 1162 339 338
		f 4 -679 643 609 697
		mu 0 4 370 349 341 340
		f 4 -685 -3166 3176 3155
		mu 0 4 1155 358 2112 2101
		f 4 -3156 3166 -674 -688
		mu 0 4 373 2102 2103 367
		f 4 -691 -3164 3174 -661
		mu 0 4 357 247 2110 2111
		f 4 -3158 3168 -638 -694
		mu 0 4 368 2104 2105 254
		f 3 645 -678 -645
		mu 0 3 345 349 346
		f 3 -649 -680 649
		mu 0 3 344 343 350
		f 4 705 700 702 704
		mu 0 4 376 377 378 379
		f 4 -707 707 709 -709
		mu 0 4 380 381 382 947
		f 4 -704 711 712 -711
		mu 0 4 384 385 386 387
		f 4 -702 708 713 821
		mu 0 4 939 380 947 945
		f 4 2189 2181 -719 -2181
		mu 0 4 1530 1531 940 391
		f 4 2194 2177 721 -2186
		mu 0 4 1536 1527 392 393
		f 5 750 979 977 884 -754
		mu 0 5 394 1067 396 397 1082
		f 4 2321 -730 -871 872
		mu 0 4 1603 1604 400 1150
		f 4 728 2325 2316 868
		mu 0 4 1149 1608 1609 406
		f 4 723 874 -734 -732
		mu 0 4 399 402 407 408
		f 4 891 -723 730 735
		mu 0 4 409 405 404 410
		f 4 733 876 -740 -738
		mu 0 4 408 407 1137 948
		f 4 -736 736 741 890
		mu 0 4 409 410 413 414
		f 4 2397 2392 -746 -2392
		mu 0 4 1648 1649 1115 1092
		f 4 2393 2388 747 888
		mu 0 4 1643 1644 417 418
		f 4 745 880 -752 -750
		mu 0 4 416 415 1084 420
		f 4 -748 748 753 886
		mu 0 4 1114 1101 1091 398
		f 4 2671 2670 2507 -2669
		mu 0 4 1819 1820 1714 1716
		f 5 2612 2606 -956 956 -2606
		mu 0 5 1779 1780 1131 1129 1130
		f 4 -770 -765 -769 -768
		mu 0 4 428 429 430 431
		f 4 771 -710 -771 766
		mu 0 4 432 383 946 433
		f 4 773 -713 -773 762
		mu 0 4 434 387 386 435
		f 4 819 -714 -772 774
		mu 0 4 942 941 383 432
		f 4 2266 2249 759 817
		mu 0 4 1575 1567 437 438
		f 4 2261 2253 -762 -2253
		mu 0 4 1570 1571 439 440
		f 5 782 852 851 975 -780
		mu 0 5 1090 442 443 444 1071
		f 4 2385 2376 863 787
		mu 0 4 1641 1642 1151 1143
		f 4 -866 866 2381 -789
		mu 0 4 450 451 1636 1637
		f 4 791 794 862 -790
		mu 0 4 446 454 455 447
		f 4 844 -797 -793 790
		mu 0 4 452 456 457 453
		f 4 797 800 860 -795
		mu 0 4 454 458 459 455
		f 4 846 -803 -799 796
		mu 0 4 456 1139 954 457
		f 4 2426 2421 806 858
		mu 0 4 1664 1665 462 463
		f 4 2430 2425 -809 -2425
		mu 0 4 1669 1670 1117 1098
		f 4 809 780 856 -807
		mu 0 4 1095 466 467 1116
		f 4 850 -783 -811 808
		mu 0 4 464 1088 441 465
		f 4 811 901 900 -782
		mu 0 4 1089 1077 470 471
		f 6 812 904 990 -971 973 969
		mu 0 6 472 473 474 475 476 477
		f 5 2646 2633 963 962 829
		mu 0 5 1804 1796 1118 1125 481
		f 4 2265 -818 815 -2257
		mu 0 4 1574 1576 943 483
		f 4 772 -819 -820 816
		mu 0 4 435 386 944 436
		f 4 -821 -822 818 -712
		mu 0 4 385 388 389 386
		f 4 -2182 2190 2182 -823
		mu 0 4 390 1532 1533 484
		f 4 993 -827 -828 824
		mu 0 4 485 486 1126 487
		f 5 2645 -830 826 965 -2639
		mu 0 5 1803 1804 481 1122 1123
		f 4 -901 903 -813 -831
		mu 0 4 471 470 1076 1087
		f 5 -978 980 978 751 882
		mu 0 5 397 396 491 420 419
		f 4 2506 -2671 2673 2672
		mu 0 4 1712 1714 1820 1821
		f 5 -2607 2613 2607 958 -837
		mu 0 5 1131 1780 1781 1121 1128
		f 4 992 -839 -840 836
		mu 0 4 497 498 499 425
		f 4 795 -844 -845 842
		mu 0 4 500 501 456 452
		f 4 801 -846 -847 843
		mu 0 4 501 502 1139 456
		f 11 807 2477 2484 2491 961 -848 -2426 -2437 -2448 -849 845
		mu 0 11 1134 1700 1704 1708 503 504 1117 1670 1677 1684 460
		f 4 -853 849 781 832
		mu 0 4 443 442 1089 471
		f 4 -855 -833 830 -854
		mu 0 4 1086 443 471 1087
		f 5 -857 853 -970 972 -856
		mu 0 5 1116 467 472 477 505
		f 11 -2443 -2432 -2421 -859 855 971 -2489 -2482 -2475 -806 -858
		mu 0 11 1138 1678 1671 1664 463 1111 1103 1705 1701 1697 507
		f 4 -861 857 -800 -860
		mu 0 4 455 459 1133 508
		f 4 -863 859 -794 -862
		mu 0 4 447 455 508 509
		f 4 -2377 2386 2367 785
		mu 0 4 1151 1642 1632 510
		f 4 2380 -867 -787 -2371
		mu 0 4 1635 1636 451 511
		f 4 -2317 2326 2307 726
		mu 0 4 406 1609 1599 513
		f 4 2320 -873 -728 -2311
		mu 0 4 1602 1603 1150 514
		f 4 -875 871 732 -874
		mu 0 4 407 402 515 516
		f 4 -877 873 738 -876
		mu 0 4 1137 407 516 517
		f 11 -2393 -2404 -2415 -879 875 744 2453 2460 2467 984 -878
		mu 0 11 1115 1649 1656 1663 411 1132 1685 1689 1693 518 519
		f 5 -881 877 983 982 -880
		mu 0 5 1084 415 1110 520 521
		f 4 -882 -883 879 -834
		mu 0 4 522 397 419 1085
		f 4 -885 881 -753 -884
		mu 0 4 1082 397 522 1083
		f 11 -888 -2410 -2399 -2388 -889 885 950 -2471 -2464 -2457 -747
		mu 0 11 524 1136 1657 1650 1643 418 1113 1109 1696 1692 1688
		f 4 -890 -891 887 -741
		mu 0 4 527 409 414 1135
		f 4 -868 -892 889 -735
		mu 0 4 512 405 409 527
		f 4 752 835 -895 -755
		mu 0 4 1083 522 422 1080
		f 4 -897 -836 833 755
		mu 0 4 1079 422 522 1085
		f 6 -983 985 981 987 -898 -756
		mu 0 6 521 520 528 529 530 492
		f 4 -902 899 2655 2654
		mu 0 4 470 1077 1808 1810
		f 4 -904 -2655 2657 -903
		mu 0 4 1076 470 1810 1812
		f 4 913 914 915 916
		mu 0 4 532 533 534 535
		f 4 2263 2255 918 919
		mu 0 4 1572 1573 536 537
		f 4 920 921 2259 2251
		mu 0 4 538 539 1568 1569
		f 4 -923 924 925 926
		mu 0 4 541 540 542 543
		f 4 927 928 929 930
		mu 0 4 544 545 546 547
		f 4 2187 2179 932 933
		mu 0 4 1528 1529 548 549
		f 4 934 935 2192 2184
		mu 0 4 550 551 1534 1535
		f 4 -937 938 939 940
		mu 0 4 553 552 554 555
		f 4 941 -941 -699 -703
		mu 0 4 378 553 555 379
		f 4 699 -931 942 -706
		mu 0 4 376 544 547 377
		f 4 2186 -934 -717 -2178
		mu 0 4 1527 1528 549 392
		f 4 2193 2185 720 -2185
		mu 0 4 1535 1536 393 550
		f 4 764 763 -917 943
		mu 0 4 430 429 532 535
		f 4 767 944 -927 -766
		mu 0 4 428 431 541 543
		f 4 2260 2252 758 -2252
		mu 0 4 1569 1570 440 538
		f 4 2262 -920 -761 -2254
		mu 0 4 1571 1572 537 439
		f 4 -915 905 -763 945
		mu 0 4 534 533 434 435
		f 4 2264 2256 -907 -2256
		mu 0 4 1573 1574 483 536
		f 4 2258 -922 907 -2250
		mu 0 4 1567 1568 539 437
		f 4 -925 -947 -767 -909
		mu 0 4 542 540 432 433
		f 4 -929 909 706 947
		mu 0 4 546 545 381 380
		f 4 -2180 2188 2180 -911
		mu 0 4 548 1529 1530 391
		f 4 2191 -936 911 -2183
		mu 0 4 1533 1534 551 484
		f 4 -939 -949 703 -913
		mu 0 4 554 552 385 384
		f 5 -952 -886 -887 883 -950
		mu 0 5 556 525 1114 398 523
		f 5 -961 959 -850 -851 847
		mu 0 5 1112 557 468 1088 464
		f 5 -977 -852 854 -781 -975
		mu 0 5 558 444 443 1086 466
		f 4 995 996 997 998
		mu 0 4 559 556 560 561
		f 4 1005 1006 2472 2469
		mu 0 4 1106 1107 1694 1695
		f 4 2667 2666 2509 2502
		mu 0 4 1816 1817 1717 1718
		f 4 2504 2497 2677 2676
		mu 0 4 1710 1711 1823 1824
		f 4 -1013 1016 1017 1018
		mu 0 4 569 568 1074 493
		f 4 2617 2611 1020 1021
		mu 0 4 1785 1786 571 572
		f 4 -1021 1022 -957 1023
		mu 0 4 572 571 427 426
		f 4 -958 -993 -959 -992
		mu 0 4 573 498 497 1127
		f 4 1027 1028 1029 1030
		mu 0 4 557 574 575 576
		f 4 2479 2476 1033 1034
		mu 0 4 1698 1699 579 580
		f 4 1038 1039 2641 2635
		mu 0 4 581 582 1798 1799
		f 4 -1039 1042 -964 1043
		mu 0 4 582 581 480 1124
		f 4 -965 -995 -966 -994
		mu 0 4 485 585 488 486
		f 4 -1030 1044 2651 2650
		mu 0 4 576 575 1806 1807
		f 4 2661 2660 1048 1049
		mu 0 4 1813 1814 588 474
		f 4 -1047 1050 1051 1052
		mu 0 4 587 586 1072 489
		f 4 2378 2369 1055 1056
		mu 0 4 1633 1634 591 592
		f 4 -1054 1057 1058 1059
		mu 0 4 590 589 593 594
		f 4 -1059 1060 -1034 1061
		mu 0 4 594 593 580 579
		f 4 1062 1063 1064 1065
		mu 0 4 445 1069 1070 1099
		f 4 -1065 1066 2428 2423
		mu 0 4 596 1096 1666 1668
		f 4 -1068 1069 1070 1071
		mu 0 4 598 952 937 600
		f 4 -1071 1072 1073 1074
		mu 0 4 600 937 936 602
		f 4 2383 2374 1076 1077
		mu 0 4 1638 1639 935 1147
		f 4 -1077 1078 1079 1080
		mu 0 4 604 1144 934 606
		f 4 -1080 1081 -1056 1082
		mu 0 4 606 934 592 591
		f 4 1083 1084 1085 1086
		mu 0 4 607 608 609 610
		f 4 2318 2309 1088 1089
		mu 0 4 1600 1601 611 612
		f 4 -1089 1090 1091 1092
		mu 0 4 612 611 933 614
		f 4 -1092 1093 1094 1095
		mu 0 4 614 933 932 1148
		f 4 -1095 1096 2323 2314
		mu 0 4 616 1141 1605 1607
		f 4 -1098 1099 1100 1101
		mu 0 4 618 931 930 620
		f 4 -1101 1102 1103 1104
		mu 0 4 620 930 929 956
		f 4 2395 2390 1106 1107
		mu 0 4 1645 1646 1068 1100
		f 4 -1107 1108 1109 1110
		mu 0 4 624 1093 1066 395
		f 4 -1008 1111 -1086 1112
		mu 0 4 565 564 610 609
		f 4 2317 -1090 1114 -2308
		mu 0 4 1599 1600 612 513
		f 4 1115 -1096 1116 -869
		mu 0 4 406 614 1148 403
		f 4 -1117 -2315 2324 -729
		mu 0 4 1149 616 1607 1608
		f 4 -1118 -1102 1118 -731
		mu 0 4 404 618 620 410
		f 4 -1085 -1114 734 1119
		mu 0 4 609 608 512 527
		f 4 -1119 -1105 1120 -737
		mu 0 4 410 620 956 413
		f 4 -1120 740 1121 -1113
		mu 0 4 609 527 1135 565
		f 4 2394 -1108 1122 -2389
		mu 0 4 1644 1645 1100 417
		f 4 2473 2470 -1002 -2470
		mu 0 4 1695 1696 1109 1106
		f 4 -1123 -1111 -751 -749
		mu 0 4 1101 624 395 1091
		f 4 1123 -1024 955 839
		mu 0 4 499 572 426 425
		f 4 2665 -2503 2510 2495
		mu 0 4 1815 1816 1718 1709
		f 4 2669 2668 2508 -2667
		mu 0 4 1817 1818 1715 1717
		f 4 2675 -2498 2505 -2673
		mu 0 4 1822 1823 1711 1713
		f 4 2616 -1022 -1124 840
		mu 0 4 1784 1785 572 499
		f 4 2618 2605 -1023 -2612
		mu 0 4 1786 1778 1119 571
		f 4 2614 2608 991 -2608
		mu 0 4 1782 1783 573 496
		f 4 2379 2370 1129 -2370
		mu 0 4 1634 1635 511 591
		f 4 865 1131 -1081 1132
		mu 0 4 451 1146 604 606
		f 4 788 2382 -1078 -1132
		mu 0 4 450 1637 1638 1147
		f 4 792 1134 -1075 -1134
		mu 0 4 453 457 600 602
		f 4 -1060 1135 -796 -1131
		mu 0 4 590 594 501 500
		f 4 798 1136 -1072 -1135
		mu 0 4 457 954 598 600
		f 4 -1062 1137 -802 -1136
		mu 0 4 594 579 502 501
		f 4 2429 2424 1138 -2424
		mu 0 4 1668 1669 1098 596
		f 4 -2477 2480 -808 -1138
		mu 0 4 579 1699 1700 1134
		f 4 810 779 -1066 -1139
		mu 0 4 465 441 445 1099
		f 4 827 -963 -1043 1139
		mu 0 4 487 1126 480 581
		f 5 1140 1141 -1029 -1178 -1027
		mu 0 5 627 628 575 574 629
		f 4 -1031 1142 -812 -960
		mu 0 4 557 576 469 468
		f 4 2642 2636 -1140 -2636
		mu 0 4 1799 1800 487 581
		f 4 2640 -1040 -1044 -2634
		mu 0 4 1797 1798 582 479
		f 4 2644 2638 994 1145
		mu 0 4 1801 1802 1120 585
		f 4 793 1146 -1058 1147
		mu 0 4 509 508 593 589
		f 4 799 1148 -1061 -1147
		mu 0 4 508 1133 580 593
		f 4 805 2478 -1035 -1149
		mu 0 4 507 1697 1698 580
		f 6 -1176 -1038 970 989 988 -1141
		mu 0 6 627 631 476 475 588 628
		f 5 2643 -1146 964 -825 -2637
		mu 0 5 1800 1801 585 485 487
		f 4 -1064 974 -810 1150
		mu 0 4 595 558 466 1095
		f 4 2427 -1067 -1151 -2422
		mu 0 4 1665 1667 1097 462
		f 4 -1070 -1152 -798 1152
		mu 0 4 599 953 458 454;
	setAttr ".fc[500:999]"
		f 4 -1073 -1153 -792 1153
		mu 0 4 601 599 454 446
		f 4 -2375 2384 -788 1154
		mu 0 4 603 1640 1641 1143
		f 4 -1079 -1155 -864 1155
		mu 0 4 605 1145 449 448
		f 4 2377 -1057 1156 -2368
		mu 0 4 1632 1633 592 510
		f 4 2319 2310 1158 -2310
		mu 0 4 1601 1602 514 611
		f 4 -1094 1159 870 1160
		mu 0 4 615 613 401 1140
		f 4 2322 -1097 -1161 729
		mu 0 4 1604 1606 1142 400
		f 4 -1100 -1162 731 1162
		mu 0 4 619 617 399 408
		f 4 -1103 -1163 737 1163
		mu 0 4 621 619 408 948
		f 4 -2391 2396 2391 1164
		mu 0 4 623 1647 1648 1092
		f 4 -1109 -1165 749 -979
		mu 0 4 491 1094 416 420
		f 5 2615 -841 838 957 -2609
		mu 0 5 1783 1784 499 498 573
		f 4 2503 -2677 2678 -2496
		mu 0 4 1709 1710 1824 1815
		f 4 2471 -1007 -1005 -2468
		mu 0 4 1693 1694 1107 518
		f 4 1167 -1112 -1167 -739
		mu 0 4 516 610 564 517
		f 4 -1158 -1087 -1168 -733
		mu 0 4 515 607 610 516
		f 4 -1082 -1156 -786 -1157
		mu 0 4 592 605 448 510
		f 4 786 -1133 -1083 -1130
		mu 0 4 511 451 606 591
		f 4 -1115 -1093 -1116 -727
		mu 0 4 513 612 614 406
		f 4 -1160 -1091 -1159 727
		mu 0 4 401 613 611 514
		f 5 -1171 -1001 -999 -1125 1168
		mu 0 5 632 633 559 561 625
		f 4 -997 949 754 -1127
		mu 0 4 560 556 523 421
		f 6 -1173 -1003 -1169 -987 1169 -982
		mu 0 6 528 634 632 625 570 529
		f 4 898 2649 -1045 -1142
		mu 0 4 628 1805 1806 575
		f 4 -1143 -2651 2653 -900
		mu 0 4 469 576 1807 1809
		f 4 2659 -1050 -905 902
		mu 0 4 1811 1813 474 473
		f 4 -989 -2661 2662 -899
		mu 0 4 628 588 1814 1805
		f 4 951 -996 -1000 -951
		mu 0 4 525 556 559 526
		f 3 -1018 -955 -954
		mu 0 3 1075 495 494
		f 4 -962 -1025 -1028 960
		mu 0 4 1112 1105 574 557
		f 3 -968 -969 -1052
		mu 0 3 531 490 1073
		f 4 -973 -974 -1037 -972
		mu 0 4 505 477 476 506
		f 3 976 -1063 -976
		mu 0 3 444 558 1071
		f 3 -980 -1110 -981
		mu 0 3 396 1067 491
		f 4 -985 -1004 -986 -984
		mu 0 4 1110 1108 528 520
		f 3 -1015 -988 -1170
		mu 0 3 570 530 529
		f 3 -990 -991 -1049
		mu 0 3 588 475 474
		f 4 999 1000 1171 1001
		mu 0 4 526 559 633 562
		f 4 1173 1172 1003 1004
		mu 0 4 563 634 528 1108
		f 3 1002 1174 1170
		mu 0 3 632 634 633
		f 4 -1006 -1172 -1175 -1174
		mu 0 4 563 562 633 634
		f 4 1035 1036 1037 1176
		mu 0 4 577 506 476 631
		f 4 1024 1025 1178 1177
		mu 0 4 574 1105 578 629
		f 3 1026 1179 1175
		mu 0 3 627 629 631
		f 4 -1032 -1177 -1180 -1179
		mu 0 4 578 577 631 629
		f 6 -1213 1213 1211 1210 1208 1186
		mu 0 6 635 636 637 1447 639 640
		f 5 -1209 1209 1207 1187 1188
		mu 0 5 640 639 641 642 643
		f 5 -1188 1189 1222 1220 1190
		mu 0 5 643 642 1444 645 646
		f 6 -1221 1221 1219 1218 1216 1191
		mu 0 6 646 645 647 1445 649 650
		f 6 -1217 1217 1215 1229 1227 1192
		mu 0 6 650 649 651 1440 653 654
		f 5 -1195 1196 -1228 1228 1226
		mu 0 5 655 656 654 653 657
		f 4 -1187 -1189 1197 1198
		mu 0 4 635 640 643 658
		f 4 -1198 -1191 -1192 1200
		mu 0 4 658 643 646 650
		f 4 -1199 1201 -1194 -1185
		mu 0 4 635 658 656 659
		f 4 -1201 -1193 -1197 -1202
		mu 0 4 658 650 654 656
		f 6 -1215 1212 1184 1185 1224 1223
		mu 0 6 1449 636 635 659 661 662
		f 5 -1226 -1186 1193 1194 1195
		mu 0 5 1442 661 659 656 655
		f 4 1230 1231 1232 1233
		mu 0 4 1425 665 666 1418
		f 4 1234 1235 1236 1237
		mu 0 4 1454 664 669 1417
		f 4 1238 1239 1240 1241
		mu 0 4 665 1424 1423 672
		f 4 1242 1243 1244 1245
		mu 0 4 673 671 674 675
		f 4 1246 1247 1248 1249
		mu 0 4 672 1421 676 677
		f 4 1250 1251 1252 1253
		mu 0 4 677 1420 1438 680
		f 4 1254 1255 1256 1257
		mu 0 4 681 1452 683 684
		f 4 -1255 1258 1259 1260
		mu 0 4 682 1453 685 686
		f 4 -1260 1261 1262 1263
		mu 0 4 686 685 1448 660
		f 4 1264 1265 1266 1267
		mu 0 4 687 1431 689 690
		f 4 -1265 1268 1269 1270
		mu 0 4 688 1430 691 692
		f 4 -1270 1271 1272 1273
		mu 0 4 692 691 1446 638
		f 4 -1237 1274 1275 1276
		mu 0 4 1417 669 1486 1487
		f 4 -1245 1277 1278 1279
		mu 0 4 675 674 1443 644
		f 4 -1253 1280 1281 1282
		mu 0 4 680 1438 1437 694
		f 4 -1282 1283 1284 1285
		mu 0 4 694 1437 1436 696
		f 4 1286 1287 1288 1289
		mu 0 4 697 683 698 699
		f 4 1290 1291 -1267 1292
		mu 0 4 684 697 690 689
		f 4 -1285 1293 1294 1295
		mu 0 4 696 1436 1435 701
		f 4 -1295 1296 1297 1298
		mu 0 4 701 1435 1432 703
		f 4 1299 1300 1301 1302
		mu 0 4 704 705 1416 707
		f 4 -1300 1303 1304 1305
		mu 0 4 705 704 708 1433
		f 4 -1305 1306 -1298 1307
		mu 0 4 1433 708 703 1432
		f 4 1308 1309 -1289 1310
		mu 0 4 710 1426 699 698
		f 4 -1309 1311 1312 1313
		mu 0 4 711 1428 712 713
		f 4 -1313 1314 1315 1316
		mu 0 4 713 712 1441 663
		f 4 1317 1318 1319 1320
		mu 0 4 1419 666 707 715
		f 4 1321 1322 1323 1324
		mu 0 4 667 714 716 717
		f 4 -1324 1325 1326 1327
		mu 0 4 717 716 1439 652
		f 4 1328 -1283 1329 -1183
		mu 0 4 718 680 694 719
		f 4 1330 -1271 1331 -1259
		mu 0 4 1453 688 692 685
		f 4 1332 -1244 -1240 -1238
		mu 0 4 670 674 671 668
		f 4 -1242 -1250 -1181 1333
		mu 0 4 665 672 677 720
		f 4 -1246 1334 -1204 -1248
		mu 0 4 673 675 721 1456
		f 4 1180 -1254 -1329 -1182
		mu 0 4 720 677 680 718
		f 4 -1252 1335 1336 -1281
		mu 0 4 679 1429 687 693
		f 4 -1292 1337 -1294 1338
		mu 0 4 690 697 700 695
		f 4 -1331 -1258 -1293 -1266
		mu 0 4 1431 681 684 689
		f 4 -1330 -1286 -1296 1339
		mu 0 4 719 694 696 701
		f 4 -1337 -1268 -1339 -1284
		mu 0 4 693 687 690 695
		f 4 1182 1340 -1304 1341
		mu 0 4 718 719 708 704
		f 4 -1261 1342 -1312 1343
		mu 0 4 682 686 712 1428
		f 4 -1236 -1234 -1325 1344
		mu 0 4 669 664 667 717
		f 4 -1334 1183 -1319 -1232
		mu 0 4 665 720 707 666
		f 4 -1321 1205 1345 -1323
		mu 0 4 714 1415 722 716
		f 4 1181 -1342 -1303 -1184
		mu 0 4 720 718 704 707
		f 4 -1301 -1306 1346 1347
		mu 0 4 1427 1434 709 1426
		f 4 1348 -1297 -1338 -1290
		mu 0 4 699 702 1488 697
		f 4 -1311 -1288 -1256 -1344
		mu 0 4 710 698 683 1452
		f 4 -1340 -1299 -1307 -1341
		mu 0 4 719 701 703 708
		f 4 -1308 -1349 -1310 -1347
		mu 0 4 709 702 699 1426
		f 4 -1332 -1274 -1212 -1262
		mu 0 4 685 692 638 1448
		f 4 1349 1199 -1208 -1272
		mu 0 4 691 721 1451 1446
		f 4 -1333 -1277 -1220 -1278
		mu 0 4 674 670 648 1443
		f 4 -1200 -1335 -1280 -1190
		mu 0 4 1451 721 675 644
		f 4 -1264 -1224 -1315 -1343
		mu 0 4 686 660 1441 712
		f 4 -1317 -1196 1202 1350
		mu 0 4 713 663 1450 722
		f 4 -1328 -1216 -1275 -1345
		mu 0 4 717 652 1486 669
		f 4 -1227 -1326 -1346 -1203
		mu 0 4 1450 1439 716 722
		f 5 -1205 1203 -1350 -1269 -1336
		mu 0 5 678 1422 721 691 1430
		f 5 1351 -1348 -1314 -1351 -1206
		mu 0 5 1455 706 711 713 722
		f 3 -1235 -1239 -1231
		mu 0 3 1425 1424 665
		f 3 -1247 -1241 -1243
		mu 0 3 1421 672 1423
		f 3 -1249 1204 -1251
		mu 0 3 677 676 1420
		f 3 -1291 -1257 -1287
		mu 0 3 697 684 683
		f 3 -1322 -1233 -1318
		mu 0 3 1419 1418 666
		f 3 1206 -1320 -1302
		mu 0 3 1416 715 707
		f 3 -1210 -1211 -1273
		mu 0 3 641 639 1447
		f 3 -1214 1214 -1263
		mu 0 3 637 636 1449
		f 3 -1218 -1219 -1276
		mu 0 3 651 649 1445
		f 3 -1222 -1223 -1279
		mu 0 3 647 645 1444
		f 3 -1225 1225 -1316
		mu 0 3 662 661 1442
		f 3 -1229 -1230 -1327
		mu 0 3 657 653 1440
		f 4 1367 1369 -1372 -1373
		mu 0 4 723 724 1410 726
		f 4 1375 1377 -1380 -1381
		mu 0 4 727 728 1408 730
		f 4 1383 1385 -1388 -1389
		mu 0 4 731 732 1405 734
		f 4 1390 1398 -1393 -1394
		mu 0 4 735 736 1490 738
		f 4 1352 1360 1399 1394
		mu 0 4 739 1409 741 742
		f 4 1353 1361 1400 -1361
		mu 0 4 1409 1406 744 741
		f 4 1354 1355 1401 -1362
		mu 0 4 1406 1403 746 744
		f 4 1356 1363 -1365 -1363
		mu 0 4 747 1413 1496 749
		f 4 -1395 1402 1396 -1364
		mu 0 4 739 742 750 748
		f 4 1357 1368 -1370 -1367
		mu 0 4 751 740 1410 724
		f 4 -1353 1370 1371 -1369
		mu 0 4 1409 739 1414 725
		f 4 -1357 1365 1372 -1371
		mu 0 4 1413 747 723 726
		f 4 1358 1376 -1378 -1375
		mu 0 4 752 743 1408 728
		f 4 -1354 1378 1379 -1377
		mu 0 4 1406 1409 1407 729
		f 4 -1358 1373 1380 -1379
		mu 0 4 740 751 727 730
		f 4 1359 1384 -1386 -1383
		mu 0 4 753 745 1405 732
		f 4 -1355 1386 1387 -1385
		mu 0 4 1403 1406 1404 733
		f 4 -1359 1381 1388 -1387
		mu 0 4 743 752 731 734
		f 4 -1360 1389 1393 -1392
		mu 0 4 745 753 735 738
		f 4 -1398 1395 1364 -1397
		mu 0 4 1494 754 749 1496
		f 4 -1404 -1356 1391 1392
		mu 0 4 1493 746 1403 1492
		f 4 1407 1406 -1406 -1405
		mu 0 4 755 756 1402 758
		f 4 1411 1410 -1410 -1409
		mu 0 4 759 760 1401 762
		f 4 1415 1414 -1414 -1413
		mu 0 4 763 764 1398 766
		f 4 1418 1417 -1399 -1417
		mu 0 4 767 768 737 1491
		f 4 -1430 -1400 -1421 -1420
		mu 0 4 769 742 741 770
		f 4 1420 -1401 -1423 -1422
		mu 0 4 770 741 744 771
		f 4 1422 -1402 -1425 -1424
		mu 0 4 771 744 746 772
		f 4 1428 1427 -1427 -1426
		mu 0 4 773 774 775 1411
		f 4 1426 -1431 -1403 1429
		mu 0 4 769 1495 750 742
		f 4 1431 1405 -1435 -1434
		mu 0 4 776 758 1402 1399
		f 4 1434 -1407 -1436 1419
		mu 0 4 770 757 1412 769
		f 4 1435 -1408 -1433 1425
		mu 0 4 1411 756 755 773
		f 4 1436 1409 -1440 -1439
		mu 0 4 777 762 1401 1396
		f 4 1439 -1411 -1441 1421
		mu 0 4 771 761 1400 770
		f 4 1440 -1412 -1438 1433
		mu 0 4 1399 760 759 776
		f 4 1441 1413 -1445 -1444
		mu 0 4 778 766 1398 1395
		f 4 1444 -1415 -1446 1423
		mu 0 4 772 765 1397 771
		f 4 1445 -1416 -1443 1438
		mu 0 4 1396 764 763 777
		f 4 1447 -1419 -1447 1443
		mu 0 4 1395 768 767 778
		f 4 1430 -1428 -1449 1397
		mu 0 4 1494 775 774 754
		f 4 -1418 -1448 1424 1403
		mu 0 4 1493 1489 772 746
		f 4 1449 1453 1456 -1453
		mu 0 4 779 780 781 782
		f 4 -1451 1455 1458 -1455
		mu 0 4 783 784 785 786
		f 4 -1452 1452 1457 -1456
		mu 0 4 784 779 782 785
		f 4 1463 -1463 -1454 -1460
		mu 0 4 787 788 781 780
		f 4 1454 -1466 -1465 1460
		mu 0 4 783 786 789 1167
		f 4 1464 -1467 -1464 1461
		mu 0 4 790 1169 788 787
		f 4 -1457 1467 1469 -1469
		mu 0 4 782 781 791 792
		f 4 -1458 1468 1471 -1471
		mu 0 4 785 782 792 793
		f 4 -1459 1470 1473 -1473
		mu 0 4 786 785 793 794
		f 4 1462 1474 -1476 -1468
		mu 0 4 781 788 795 791
		f 4 1465 1472 -1478 -1477
		mu 0 4 789 786 794 796
		f 4 1466 1476 -1479 -1475
		mu 0 4 788 1169 1170 795
		f 4 -1450 1479 1481 -1481
		mu 0 4 780 779 797 798
		f 4 1450 1483 -1485 -1483
		mu 0 4 784 783 799 800
		f 4 1451 1482 -1486 -1480
		mu 0 4 779 784 800 797
		f 4 1459 1480 -1488 -1487
		mu 0 4 787 780 798 801
		f 4 -1461 1488 1489 -1484
		mu 0 4 783 1167 1168 799
		f 4 -1462 1486 1490 -1489
		mu 0 4 790 787 801 802
		f 4 1506 1504 -1502 -1500
		mu 0 4 803 804 805 806
		f 4 1507 1505 -1504 -1505
		mu 0 4 804 807 808 805
		f 4 1495 1500 -1507 -1498
		mu 0 4 809 810 804 803
		f 4 1496 1502 -1508 -1501
		mu 0 4 810 811 807 804
		f 4 1501 1508 -1510 1498
		mu 0 4 806 805 812 813
		f 4 1503 1510 -1512 -1509
		mu 0 4 805 808 814 812
		f 4 1517 1520 -1520 -1519
		mu 0 4 815 816 817 818
		f 4 1519 1523 -1523 -1522
		mu 0 4 818 817 819 820
		f 4 1515 1518 -1525 -1514
		mu 0 4 821 815 818 822
		f 4 1524 1521 -1526 -1515
		mu 0 4 822 818 820 823
		f 4 -1517 1509 -1527 -1521
		mu 0 4 816 813 812 817
		f 4 1526 1511 -1528 -1524
		mu 0 4 817 812 814 819
		f 4 1532 1533 1534 1535
		mu 0 4 824 825 826 827
		f 4 -1533 1536 1537 1538
		mu 0 4 825 824 828 829
		f 4 -1535 1539 1540 1541
		mu 0 4 827 826 830 1389
		f 4 -1541 1542 1543 1544
		mu 0 4 1389 830 832 1388
		f 4 -1544 1545 1546 1547
		mu 0 4 1388 832 834 1381
		f 4 -1547 1548 1549 1550
		mu 0 4 1381 834 836 1387
		f 4 -1550 1551 1552 1553
		mu 0 4 1387 836 838 1386
		f 4 1554 1555 1556 1557
		mu 0 4 840 841 842 843
		f 4 -1555 1558 1559 1560
		mu 0 4 841 840 844 845
		f 4 -1560 1561 -1553 1562
		mu 0 4 845 844 1386 838
		f 4 -1534 1563 -1496 1564
		mu 0 4 826 825 810 809
		f 4 -1539 1528 -1497 -1564
		mu 0 4 825 829 811 810
		f 4 -1540 -1565 1497 1565
		mu 0 4 830 826 809 803
		f 4 -1546 1566 -1499 1567
		mu 0 4 834 832 806 813
		f 4 -1543 -1566 1499 -1567
		mu 0 4 832 830 803 806
		f 4 1568 1513 1569 -1561
		mu 0 4 845 821 822 841
		f 4 -1570 1514 -1532 -1556
		mu 0 4 841 822 823 842
		f 4 1570 -1516 -1569 -1563
		mu 0 4 838 815 821 845
		f 4 -1568 1516 1571 -1549
		mu 0 4 834 813 816 836
		f 4 -1572 -1518 -1571 -1552
		mu 0 4 836 816 815 838
		f 4 1572 1573 1574 1575
		mu 0 4 846 847 848 849
		f 4 -1573 1576 1577 1578
		mu 0 4 847 846 850 851
		f 4 -1575 1579 1580 1581
		mu 0 4 849 848 852 853
		f 4 -1581 1582 1583 1584
		mu 0 4 853 852 854 855
		f 4 1585 1586 1587 1588
		mu 0 4 856 1383 858 859
		f 4 -1586 1589 -1584 1590
		mu 0 4 857 1384 855 854
		f 4 1591 1592 1593 1594
		mu 0 4 860 861 862 863
		f 4 -1592 1595 1596 1597
		mu 0 4 861 860 864 865
		f 4 -1597 1598 1599 1600
		mu 0 4 865 864 866 867
		f 4 -1588 1601 -1600 1602
		mu 0 4 859 858 867 866
		f 4 1603 -1576 1604 -1492
		mu 0 4 1391 846 849 1390
		f 4 -1604 1492 1493 -1577
		mu 0 4 846 1391 1392 850
		f 4 1605 -1585 -1590 1606
		mu 0 4 1385 853 855 1384
		f 4 -1605 -1582 -1606 -1495
		mu 0 4 1390 849 853 1385
		f 4 1491 1607 -1596 1608
		mu 0 4 868 869 864 860
		f 4 -1595 -1513 -1493 -1609
		mu 0 4 860 863 870 868
		f 4 -1607 -1589 -1603 1609
		mu 0 4 871 856 859 866
		f 4 1494 -1610 -1599 -1608
		mu 0 4 869 871 866 864
		f 4 -1591 1610 -1548 1611
		mu 0 4 857 854 833 1382
		f 4 -1536 1612 -1574 1613
		mu 0 4 824 827 848 847
		f 4 -1614 -1579 -1530 -1537
		mu 0 4 824 847 851 828
		f 4 1614 -1545 -1611 -1583
		mu 0 4 852 831 833 854
		f 4 -1613 -1542 -1615 -1580
		mu 0 4 848 827 831 852
		f 4 -1612 -1551 1615 -1587
		mu 0 4 1383 835 837 858
		f 4 1616 -1598 1617 -1559
		mu 0 4 840 861 865 844
		f 4 -1558 1530 -1593 -1617
		mu 0 4 840 843 862 861
		f 4 -1602 -1616 -1554 1618
		mu 0 4 867 858 837 839
		f 4 -1601 -1619 -1562 -1618
		mu 0 4 865 867 839 844
		f 4 3229 3224 -1622 -3224
		mu 0 4 2139 2140 874 875
		f 4 1622 1628 3233 -1628
		mu 0 4 876 877 2143 2145
		f 4 1627 3234 3223 1626
		mu 0 4 876 2145 2139 875
		f 4 3230 3225 1630 -3225
		mu 0 4 2140 2141 881 874
		f 4 1634 3232 -1629 -1633
		mu 0 4 882 2142 2144 1393
		f 4 -1637 -3226 3231 -1635
		mu 0 4 882 881 2141 2142
		f 4 1645 1650 -1647 -1650
		mu 0 4 884 885 886 887
		f 4 1647 1653 -1645 -1653
		mu 0 4 888 1476 1477 891
		f 4 1724 1723 1649 1651
		mu 0 4 892 893 884 887
		f 4 1646 1655 -1657 -1655
		mu 0 4 887 886 894 895
		f 4 -1648 1658 1659 -1658
		mu 0 4 1476 888 896 1475
		f 4 -1652 1654 1660 1722
		mu 0 4 892 887 895 898
		f 4 1656 1662 -1664 -1662
		mu 0 4 895 894 899 900
		f 4 -1660 1664 1666 -1666
		mu 0 4 1475 896 901 1473
		f 4 -1661 1661 1667 1720
		mu 0 4 898 895 900 903
		f 4 -1656 1668 1669 -1663
		mu 0 4 894 886 1471 899
		f 4 1663 1671 -1673 -1671
		mu 0 4 900 899 905 906
		f 4 -1667 1673 1675 -1675
		mu 0 4 1473 901 907 908
		f 4 -1668 1670 1676 1718
		mu 0 4 903 900 906 909
		f 4 -1670 1677 1678 -1672
		mu 0 4 899 1471 1472 905
		f 4 1681 1680 -1651 -1680
		mu 0 4 911 912 886 885
		f 4 1684 1683 -1654 -1683
		mu 0 4 913 914 890 889
		f 4 -1687 -1682 -1708 1709
		mu 0 4 915 912 911 916
		f 4 1689 1688 -1688 -1681
		mu 0 4 912 917 918 886
		f 4 1657 -1692 -1691 1682
		mu 0 4 889 897 919 913
		f 4 1711 -1693 -1690 1686
		mu 0 4 915 920 917 912
		f 4 1695 1694 -1694 -1689
		mu 0 4 917 921 922 918
		f 4 1665 -1698 -1697 1691
		mu 0 4 897 902 923 919
		f 4 1713 -1699 -1696 1692
		mu 0 4 920 924 921 917
		f 4 1693 -1700 -1669 1687
		mu 0 4 918 922 904 886
		f 4 1702 1701 -1701 -1695
		mu 0 4 921 925 926 922
		f 4 1674 -1705 -1704 1697
		mu 0 4 902 1474 927 923
		f 4 1715 -1706 -1703 1698
		mu 0 4 924 928 925 921
		f 4 1700 -1707 -1678 1699
		mu 0 4 922 926 910 904
		f 4 -1709 -1710 -1686 -1685
		mu 0 4 913 915 916 914
		f 4 1690 -1711 -1712 1708
		mu 0 4 913 919 920 915
		f 4 1696 -1713 -1714 1710
		mu 0 4 919 923 924 920
		f 4 1703 -1715 -1716 1712
		mu 0 4 923 927 928 924
		f 4 -1718 -1719 1716 -1674
		mu 0 4 901 903 909 907
		f 4 -1720 -1721 1717 -1665
		mu 0 4 896 898 903 901
		f 4 -1722 -1723 1719 -1659
		mu 0 4 888 892 898 896
		f 4 1652 1648 -1725 1721
		mu 0 4 888 891 893 892
		f 4 1751 1752 1753 1754
		mu 0 4 958 973 976 985
		f 4 1755 1756 1757 1758
		mu 0 4 1065 958 983 1061
		f 4 1759 1760 1761 1762
		mu 0 4 973 1065 1064 974
		f 4 -1762 1763 1764 1765
		mu 0 4 974 1064 1063 975
		f 4 -1765 1766 1767 1768
		mu 0 4 975 1063 1062 977
		f 4 -1768 1769 1770 1771
		mu 0 4 977 1062 1060 979
		f 4 -1771 1772 1773 1774
		mu 0 4 979 1060 1485 981
		f 4 -1774 1775 -1758 1776
		mu 0 4 981 1485 1061 983
		f 4 1777 1778 1779 1780
		mu 0 4 1461 1006 1005 1457
		f 4 -1778 1781 1782 1783
		mu 0 4 1006 1461 1460 1000
		f 4 -1783 1784 1785 1786
		mu 0 4 1000 1460 1459 1001
		f 4 -1786 1787 1788 1789
		mu 0 4 1001 1459 1458 1002
		f 4 -1789 1790 1791 1792
		mu 0 4 1002 1458 1463 1003
		f 4 -1792 1793 1794 1795
		mu 0 4 1003 1463 1483 1004
		f 4 -1795 1796 -1780 1797
		mu 0 4 1004 1483 1457 1005
		f 4 1798 1799 1800 1801
		mu 0 4 1470 1028 1027 1466
		f 4 -1799 1802 1803 1804
		mu 0 4 1028 1470 1469 1022
		f 4 -1804 1805 1806 1807
		mu 0 4 1022 1469 1468 1023
		f 4 -1807 1808 1809 1810
		mu 0 4 1023 1468 1467 1024
		f 4 -1810 1811 1812 1813
		mu 0 4 1024 1467 1465 1025
		f 4 -1813 1814 1815 1816
		mu 0 4 1025 1465 1481 1026
		f 4 -1816 1817 -1801 1818
		mu 0 4 1026 1481 1466 1027
		f 4 1819 1820 1821 1822
		mu 0 4 1056 1050 1049 1052
		f 4 -1820 1823 1824 1825
		mu 0 4 1050 1056 1055 1044
		f 4 -1825 1826 1827 1828
		mu 0 4 1044 1055 1054 1045
		f 4 -1828 1829 1830 1831
		mu 0 4 1045 1054 1053 1046
		f 4 -1831 1832 1833 1834
		mu 0 4 1046 1053 1058 1047
		f 4 -1834 1835 1836 1837
		mu 0 4 1047 1058 1479 1048
		f 4 -1837 1838 -1822 1839
		mu 0 4 1048 1479 1052 1049
		f 4 1637 1840 -1761 1841
		mu 0 4 959 961 962 960
		f 4 1638 1842 -1764 -1841
		mu 0 4 961 963 964 962
		f 4 1639 1843 -1767 -1843
		mu 0 4 963 965 966 964
		f 4 1640 1844 -1770 -1844
		mu 0 4 965 967 968 966
		f 4 1641 1845 -1773 -1845
		mu 0 4 1059 969 970 1484
		f 4 1642 1846 -1776 -1846
		mu 0 4 969 971 972 970
		f 4 1643 -1842 -1759 -1847
		mu 0 4 971 959 960 972
		f 3 -1763 1847 -1753
		mu 0 3 973 974 976
		f 4 -1766 1848 1747 -1848
		mu 0 4 974 975 978 976
		f 4 -1769 1849 1748 -1849
		mu 0 4 975 977 980 978
		f 4 -1772 1850 1749 -1850
		mu 0 4 977 979 982 980
		f 4 -1775 1851 1750 -1851
		mu 0 4 979 981 984 982
		f 4 -1777 1852 1746 -1852
		mu 0 4 981 983 985 984
		f 3 -1757 -1755 -1853
		mu 0 3 983 958 985
		f 4 1725 1853 -1782 1854
		mu 0 4 986 988 989 987
		f 4 1726 1855 -1785 -1854
		mu 0 4 988 990 991 989
		f 4 1727 1856 -1788 -1856
		mu 0 4 990 992 993 991
		f 4 1728 1857 -1791 -1857
		mu 0 4 992 994 995 993
		f 4 1729 1858 -1794 -1858
		mu 0 4 1462 996 997 1482
		f 4 1730 1859 -1797 -1859
		mu 0 4 996 998 999 997
		f 4 1731 -1855 -1781 -1860
		mu 0 4 998 986 987 999
		f 3 -1784 1860 1861
		mu 0 3 1006 1000 1007
		f 3 -1787 1862 -1861
		mu 0 3 1000 1001 1007
		f 3 -1790 1863 -1863
		mu 0 3 1001 1002 1007
		f 3 -1793 1864 -1864
		mu 0 3 1002 1003 1007
		f 3 -1796 1865 -1865
		mu 0 3 1003 1004 1007
		f 3 -1798 1866 -1866
		mu 0 3 1004 1005 1007
		f 3 -1779 -1862 -1867
		mu 0 3 1005 1006 1007
		f 4 1732 1867 -1803 1868
		mu 0 4 1008 1010 1011 1009
		f 4 1733 1869 -1806 -1868
		mu 0 4 1010 1012 1013 1011
		f 4 1734 1870 -1809 -1870
		mu 0 4 1012 1014 1015 1013
		f 4 1735 1871 -1812 -1871
		mu 0 4 1014 1016 1017 1015
		f 4 1736 1872 -1815 -1872
		mu 0 4 1464 1018 1019 1480
		f 4 1737 1873 -1818 -1873
		mu 0 4 1018 1020 1021 1019
		f 4 1738 -1869 -1802 -1874
		mu 0 4 1020 1008 1009 1021
		f 3 -1805 1874 1875
		mu 0 3 1028 1022 1029
		f 3 -1808 1876 -1875
		mu 0 3 1022 1023 1029
		f 3 -1811 1877 -1877
		mu 0 3 1023 1024 1029
		f 3 -1814 1878 -1878
		mu 0 3 1024 1025 1029
		f 3 -1817 1879 -1879
		mu 0 3 1025 1026 1029
		f 3 -1819 1880 -1880
		mu 0 3 1026 1027 1029
		f 3 -1800 -1876 -1881
		mu 0 3 1027 1028 1029
		f 4 1739 1881 -1824 1882
		mu 0 4 1030 1032 1033 1031
		f 4 1740 1883 -1827 -1882
		mu 0 4 1032 1034 1035 1033
		f 4 1741 1884 -1830 -1884
		mu 0 4 1034 1036 1037 1035
		f 4 1742 1885 -1833 -1885
		mu 0 4 1036 1038 1039 1037
		f 4 1743 1886 -1836 -1886
		mu 0 4 1057 1040 1041 1478
		f 4 1744 1887 -1839 -1887
		mu 0 4 1040 1042 1043 1041
		f 4 1745 -1883 -1823 -1888
		mu 0 4 1042 1030 1031 1043
		f 3 -1826 1888 1889
		mu 0 3 1050 1044 1051
		f 3 -1829 1890 -1889
		mu 0 3 1044 1045 1051
		f 3 -1832 1891 -1891
		mu 0 3 1045 1046 1051
		f 3 -1835 1892 -1892
		mu 0 3 1046 1047 1051
		f 3 -1838 1893 -1893
		mu 0 3 1047 1048 1051
		f 3 -1840 1894 -1894
		mu 0 3 1048 1049 1051
		f 3 -1821 -1890 -1895
		mu 0 3 1049 1050 1051
		f 3 -1756 -1760 -1752
		mu 0 3 958 1065 973
		f 6 -1754 -1748 -1749 -1750 -1751 -1747
		mu 0 6 985 976 978 980 982 984
		f 4 -1899 -1898 -1897 -1896
		mu 0 4 1199 1202 1201 1200
		f 4 -1903 -1902 -1901 -1900
		mu 0 4 1203 1205 1204 1199
		f 4 -1907 -1906 -1905 -1904
		mu 0 4 1200 1207 1206 1203
		f 4 -1911 -1910 -1909 -1908
		mu 0 4 1208 1211 1210 1209
		f 4 -1915 -1914 -1913 -1912
		mu 0 4 1207 1213 1212 1208
		f 4 -1919 -1918 -1917 -1916
		mu 0 4 1209 1215 1214 1206
		f 4 -1923 -1922 -1921 -1920
		mu 0 4 1215 1218 1217 1216
		f 4 -1927 -1926 -1925 -1924
		mu 0 4 1219 1220 1205 1214
		f 4 -1931 -1930 -1929 -1928
		mu 0 4 1216 1222 1221 1219
		f 4 -1935 -1934 -1933 -1932
		mu 0 4 1223 1225 1220 1224
		f 4 -1939 -1938 -1937 -1936
		mu 0 4 1226 1228 1227 1223
		f 4 -1943 -1942 -1941 -1940
		mu 0 4 1224 1221 1229 1226
		f 4 -1947 -1946 -1945 -1944
		mu 0 4 1230 1232 1231 1229
		f 4 -1951 -1950 -1949 -1948
		mu 0 4 1222 1234 1233 1230
		f 4 1904 1916 1924 1902
		mu 0 4 1203 1206 1214 1205
		f 4 1940 1944 -1954 1938
		mu 0 4 1226 1229 1231 1228
		f 4 1954 1914 1906 1896
		mu 0 4 1201 1213 1207 1200
		f 4 1898 1900 -1956 1952
		mu 0 4 1202 1199 1204 1235
		f 4 1908 1956 1922 1918
		mu 0 4 1209 1210 1218 1215
		f 4 1948 1958 -1958 1946
		mu 0 4 1230 1237 1236 1232
		f 4 1960 1959 1910 1912
		mu 0 4 1212 1239 1238 1208
		f 5 1951 1955 1934 1936 1961
		mu 0 5 1240 1241 1225 1223 1227
		f 4 1928 1942 1932 1926
		mu 0 4 1219 1221 1224 1220
		f 4 1962 1950 1930 1920
		mu 0 4 1217 1234 1222 1216
		f 3 1895 1903 1899
		mu 0 3 1199 1200 1203
		f 4 1907 1915 1905 1911
		mu 0 4 1208 1209 1206 1207
		f 4 1919 1927 1923 1917
		mu 0 4 1215 1216 1219 1214
		f 3 1931 1939 1935
		mu 0 3 1223 1224 1226
		f 4 1929 1947 1943 1941
		mu 0 4 1221 1222 1230 1229
		f 3 1925 1933 1901
		mu 0 3 1205 1220 1242
		f 4 1966 -1966 -1965 -1964
		mu 0 4 1243 1246 1245 1244
		f 4 1969 1963 -1969 -1968
		mu 0 4 1247 1243 1244 1248
		f 4 1972 1967 -1972 1970
		mu 0 4 1249 1252 1251 1250
		f 4 -1977 -1976 -1975 -1974
		mu 0 4 1253 1256 1255 1254
		f 4 -1981 -1980 -1979 -1978
		mu 0 4 1257 1259 1258 1253
		f 4 -1985 -1984 -1983 -1982
		mu 0 4 1260 1262 1261 1257
		f 4 3353 -1989 -1988 -3344
		mu 0 4 2206 2207 1264 1263
		f 4 -1993 -1992 -1991 -1990
		mu 0 4 1265 1268 1267 1266
		f 4 -1997 -1996 -1995 -1994
		mu 0 4 1269 1271 1270 1265
		f 4 -2001 -2000 -1999 -1998
		mu 0 4 1272 1274 1273 1269
		f 4 3359 -2005 -2004 -3350
		mu 0 4 2214 2215 1276 1275
		f 4 3361 -2009 -2008 -3352
		mu 0 4 2216 2217 1278 1277
		f 4 -2013 -2012 -2011 -2010
		mu 0 4 1268 1280 1279 1261
		f 4 -2016 -2015 -2014 1999
		mu 0 4 1274 1282 1281 1273
		f 4 -2019 -2018 -2017 2014
		mu 0 4 1283 1286 1285 1284
		f 4 -2021 1975 -2020 2017
		mu 0 4 1287 1255 1256 1288
		f 4 -2024 -2023 -2022 1979
		mu 0 4 1259 1290 1289 1258
		f 4 -2027 -2026 -2025 1995
		mu 0 4 1271 1292 1291 1270
		f 4 -2030 2011 -2029 -2028
		mu 0 4 1293 1279 1280 1294
		f 4 3362 3343 2030 2008
		mu 0 4 2217 2206 1263 1278
		f 4 3358 3349 2032 -3349
		mu 0 4 2213 2214 1275 1295
		f 4 3356 -2036 2034 -3347
		mu 0 4 2210 2212 1297 1296
		f 4 3355 3346 2037 -3346
		mu 0 4 2208 2209 1299 1298
		f 4 2019 -2040 -1967 -2039
		mu 0 4 1288 1256 1246 1243
		f 4 1982 2010 -2041 1980
		mu 0 4 1257 1261 1279 1259
		f 4 1998 -2043 -2042 1996
		mu 0 4 1269 1273 1249 1271
		f 4 2016 2038 -1970 -2044
		mu 0 4 1284 1285 1243 1247
		f 4 2040 2029 -2045 2023
		mu 0 4 1259 1279 1293 1300
		f 4 2041 -1971 -2046 2026
		mu 0 4 1271 1249 1250 1292
		f 4 -2048 2024 -2047 2028
		mu 0 4 1280 1270 1301 1294
		f 4 1992 1994 2047 2012
		mu 0 4 1268 1265 1270 1280
		f 4 2048 2004 3360 3351
		mu 0 4 1277 1276 2215 2216
		f 4 -2051 2021 -2050 1965
		mu 0 4 1246 1258 1289 1245
		f 4 1976 1978 2050 2039
		mu 0 4 1256 1253 1258 1246
		f 4 2051 1988 3354 3345
		mu 0 4 1298 1264 2207 2208
		f 4 2013 2043 -1973 2042
		mu 0 4 1273 1281 1252 1249
		f 4 2052 2035 3357 3348
		mu 0 4 1295 1302 2211 2213
		f 4 1973 1985 1981 1977
		mu 0 4 1253 1254 1260 1257
		f 4 1989 2001 1997 1993
		mu 0 4 1265 1266 1272 1269
		f 4 2005 1991 2009 1983
		mu 0 4 1262 1267 1268 1261
		f 4 -2057 -2056 -2055 -2054
		mu 0 4 1337 1340 1339 1338
		f 4 2729 -2060 -2059 -2720
		mu 0 4 1847 1848 1342 1341
		f 4 -2064 -2063 -2062 -2061
		mu 0 4 1343 1346 1345 1344
		f 4 2737 -2067 -2066 -2728
		mu 0 4 1856 1857 1348 1347
		f 4 2849 -2071 -2070 -2840
		mu 0 4 1913 1914 1352 1351
		f 4 -2723 2732 -2072 2067
		mu 0 4 1350 1851 1852 1349
		f 4 -2077 -2076 -2075 2072
		mu 0 4 1354 1356 1355 1353
		f 4 2851 -2081 -2080 -2842
		mu 0 4 1915 1916 1360 1359
		f 4 -2725 2734 -2082 2077
		mu 0 4 1358 1853 1854 1357
		f 4 -2087 -2086 -2085 2082
		mu 0 4 1362 1364 1363 1361
		f 4 2856 -2090 -2089 -2847
		mu 0 4 1920 1921 1366 1365
		f 4 2854 -2093 -2092 -2845
		mu 0 4 1918 1919 1368 1367
		f 4 2738 2719 -2094 2066
		mu 0 4 1857 1847 1341 1348
		f 4 -2097 2071 2733 2724
		mu 0 4 1358 1349 1852 1853
		f 4 2730 -2099 -2098 2059
		mu 0 4 1848 1850 1369 1342
		f 4 2735 -2103 -2102 2081
		mu 0 4 1854 1855 1372 1357
		f 4 2855 2846 -2104 2092
		mu 0 4 1919 1920 1365 1368
		f 4 2857 -2106 -2105 2089
		mu 0 4 1921 1923 1373 1366
		f 4 2850 2841 2106 2070
		mu 0 4 1914 1915 1359 1352
		f 4 2852 -2109 2107 2080
		mu 0 4 1916 1917 1374 1360
		f 4 2095 2074 -2110 2086
		mu 0 4 1362 1353 1355 1364
		f 4 -2112 -2111 2099 2056
		mu 0 4 1337 1375 1370 1340
		f 4 2112 2054 2094 2063
		mu 0 4 1343 1338 1339 1346
		f 4 2114 -2114 2100 2084
		mu 0 4 1363 1376 1371 1361
		f 4 2853 2844 2115 2108
		mu 0 4 1917 1918 1367 1374
		f 4 2736 2727 -2117 2102
		mu 0 4 1855 1856 1347 1372
		f 4 2118 2061 2117 2113
		mu 0 4 1376 1344 1345 1371
		f 4 2858 2839 -2120 2105
		mu 0 4 1922 1913 1351 1378
		f 4 2731 2722 -2121 2098
		mu 0 4 1849 1851 1350 1377
		f 4 -2123 2076 2121 2110
		mu 0 4 1380 1356 1354 1379
		f 4 -943 -2125 -2133 -715
		mu 0 4 377 547 1498 1497
		f 4 -930 931 -2134 2124
		mu 0 4 547 546 1499 1498
		f 4 -2135 -932 -948 715
		mu 0 4 1500 1499 546 380
		f 4 701 823 -2136 -716
		mu 0 4 380 939 1501 1500
		f 4 -2137 -824 820 717
		mu 0 4 1503 1502 388 385
		f 4 948 -2130 -2138 -718
		mu 0 4 385 552 1504 1503
		f 4 -2139 2129 936 937
		mu 0 4 1505 1504 552 553
		f 4 -942 719 -2140 -938
		mu 0 4 553 378 1506 1505
		f 4 -701 714 -2141 -720
		mu 0 4 378 377 1497 1506
		f 4 2132 -2143 -2151 -2124
		mu 0 4 1497 1498 1508 1507
		f 4 2133 2125 -2152 2142
		mu 0 4 1498 1499 1509 1508
		f 4 -2153 -2126 2134 2126
		mu 0 4 1510 1509 1499 1500
		f 4 2135 2127 -2154 -2127
		mu 0 4 1500 1501 1511 1510
		f 4 -2155 -2128 2136 2128
		mu 0 4 1513 1512 1502 1503
		f 4 2137 -2148 -2156 -2129
		mu 0 4 1503 1504 1514 1513
		f 4 -2157 2147 2138 2130
		mu 0 4 1515 1514 1504 1505
		f 4 2139 2131 -2158 -2131
		mu 0 4 1505 1506 1516 1515
		f 4 2140 2123 -2159 -2132
		mu 0 4 1506 1497 1507 1516
		f 4 2150 -2161 -2169 -2142
		mu 0 4 1507 1508 1518 1517
		f 4 2151 2143 -2170 2160
		mu 0 4 1508 1509 1519 1518
		f 4 -2171 -2144 2152 2144
		mu 0 4 1520 1519 1509 1510;
	setAttr ".fc[1000:1499]"
		f 4 2153 2145 -2172 -2145
		mu 0 4 1510 1511 1521 1520
		f 4 -2173 -2146 2154 2146
		mu 0 4 1523 1522 1512 1513
		f 4 2155 -2166 -2174 -2147
		mu 0 4 1513 1514 1524 1523
		f 4 -2175 2165 2156 2148
		mu 0 4 1525 1524 1514 1515
		f 4 2157 2149 -2176 -2149
		mu 0 4 1515 1516 1526 1525
		f 4 2158 2141 -2177 -2150
		mu 0 4 1516 1507 1517 1526
		f 4 2168 -2179 -2187 -2160
		mu 0 4 1517 1518 1528 1527
		f 4 2169 2161 -2188 2178
		mu 0 4 1518 1519 1529 1528
		f 4 -2189 -2162 2170 2162
		mu 0 4 1530 1529 1519 1520
		f 4 2171 2163 -2190 -2163
		mu 0 4 1520 1521 1531 1530
		f 4 -2191 -2164 2172 2164
		mu 0 4 1533 1532 1522 1523
		f 4 2173 -2184 -2192 -2165
		mu 0 4 1523 1524 1534 1533
		f 4 -2193 2183 2174 2166
		mu 0 4 1535 1534 1524 1525
		f 4 2175 2167 -2194 -2167
		mu 0 4 1525 1526 1536 1535
		f 4 2176 2159 -2195 -2168
		mu 0 4 1526 1517 1527 1536
		f 4 -2197 -2205 -776 946
		mu 0 4 540 1538 1537 432
		f 4 -2206 2196 922 923
		mu 0 4 1539 1538 540 541
		f 4 776 -2207 -924 -945
		mu 0 4 431 1540 1539 541
		f 4 778 -2208 -777 768
		mu 0 4 430 1541 1540 431
		f 4 -2201 -2209 -779 -944
		mu 0 4 535 1542 1541 430
		f 4 -916 917 -2210 2200
		mu 0 4 535 534 1543 1542
		f 4 777 -2211 -918 -946
		mu 0 4 435 1544 1543 534
		f 4 -2204 -2212 -778 -817
		mu 0 4 436 1546 1544 435
		f 4 775 -2213 2203 -775
		mu 0 4 432 1537 1545 942
		f 4 2204 -2215 -2223 -2196
		mu 0 4 1537 1538 1548 1547
		f 4 -2224 2214 2205 2197
		mu 0 4 1549 1548 1538 1539
		f 4 2206 2198 -2225 -2198
		mu 0 4 1539 1540 1550 1549
		f 4 2207 2199 -2226 -2199
		mu 0 4 1540 1541 1551 1550
		f 4 2208 -2219 -2227 -2200
		mu 0 4 1541 1542 1552 1551
		f 4 2209 2201 -2228 2218
		mu 0 4 1542 1543 1553 1552
		f 4 2210 2202 -2229 -2202
		mu 0 4 1543 1544 1554 1553
		f 4 2211 -2222 -2230 -2203
		mu 0 4 1544 1546 1556 1554
		f 4 2212 2195 -2231 2221
		mu 0 4 1545 1537 1547 1555
		f 4 2222 -2233 -2241 -2214
		mu 0 4 1547 1548 1558 1557
		f 4 -2242 2232 2223 2215
		mu 0 4 1559 1558 1548 1549
		f 4 2224 2216 -2243 -2216
		mu 0 4 1549 1550 1560 1559
		f 4 2225 2217 -2244 -2217
		mu 0 4 1550 1551 1561 1560
		f 4 2226 -2237 -2245 -2218
		mu 0 4 1551 1552 1562 1561
		f 4 2227 2219 -2246 2236
		mu 0 4 1552 1553 1563 1562
		f 4 2228 2220 -2247 -2220
		mu 0 4 1553 1554 1564 1563
		f 4 2229 -2240 -2248 -2221
		mu 0 4 1554 1556 1566 1564
		f 4 2230 2213 -2249 2239
		mu 0 4 1555 1547 1557 1565
		f 4 2240 -2251 -2259 -2232
		mu 0 4 1557 1558 1568 1567
		f 4 -2260 2250 2241 2233
		mu 0 4 1569 1568 1558 1559
		f 4 2242 2234 -2261 -2234
		mu 0 4 1559 1560 1570 1569
		f 4 2243 2235 -2262 -2235
		mu 0 4 1560 1561 1571 1570
		f 4 2244 -2255 -2263 -2236
		mu 0 4 1561 1562 1572 1571
		f 4 2245 2237 -2264 2254
		mu 0 4 1562 1563 1573 1572
		f 4 2246 2238 -2265 -2238
		mu 0 4 1563 1564 1574 1573
		f 4 2247 -2258 -2266 -2239
		mu 0 4 1564 1566 1576 1574
		f 4 2248 2231 -2267 2257
		mu 0 4 1565 1557 1567 1575
		f 4 1113 -2269 -2278 -725
		mu 0 4 512 608 1578 1577
		f 4 -1084 1087 -2279 2268
		mu 0 4 608 607 1579 1578
		f 4 1157 725 -2280 -1088
		mu 0 4 607 515 1580 1579
		f 4 -2272 -2281 -726 -872
		mu 0 4 402 1581 1580 515
		f 4 -2273 -2282 2271 -724
		mu 0 4 399 1582 1581 402
		f 4 -2274 -2283 2272 1161
		mu 0 4 617 1584 1582 399
		f 4 -2284 2273 1097 1098
		mu 0 4 1585 1583 931 618
		f 4 -2285 -1099 1117 -2276
		mu 0 4 1586 1585 618 404
		f 4 -2286 2275 722 869
		mu 0 4 1587 1586 404 405
		f 4 -2287 -870 867 724
		mu 0 4 1577 1587 405 512
		f 4 2277 -2289 -2298 -2268
		mu 0 4 1577 1578 1589 1588
		f 4 2278 2269 -2299 2288
		mu 0 4 1578 1579 1590 1589
		f 4 2279 2270 -2300 -2270
		mu 0 4 1579 1580 1591 1590
		f 4 2280 -2292 -2301 -2271
		mu 0 4 1580 1581 1592 1591
		f 4 2281 -2293 -2302 2291
		mu 0 4 1581 1582 1593 1592
		f 4 2282 -2294 -2303 2292
		mu 0 4 1582 1584 1595 1593
		f 4 -2304 2293 2283 2274
		mu 0 4 1596 1594 1583 1585
		f 4 -2305 -2275 2284 -2296
		mu 0 4 1597 1596 1585 1586
		f 4 -2306 2295 2285 2276
		mu 0 4 1598 1597 1586 1587
		f 4 -2307 -2277 2286 2267
		mu 0 4 1588 1598 1587 1577
		f 4 2297 -2309 -2318 -2288
		mu 0 4 1588 1589 1600 1599
		f 4 2298 2289 -2319 2308
		mu 0 4 1589 1590 1601 1600
		f 4 2299 2290 -2320 -2290
		mu 0 4 1590 1591 1602 1601
		f 4 2300 -2312 -2321 -2291
		mu 0 4 1591 1592 1603 1602
		f 4 2301 -2313 -2322 2311
		mu 0 4 1592 1593 1604 1603
		f 4 2302 -2314 -2323 2312
		mu 0 4 1593 1595 1606 1604
		f 4 -2324 2313 2303 2294
		mu 0 4 1607 1605 1594 1596
		f 4 -2325 -2295 2304 -2316
		mu 0 4 1608 1607 1596 1597
		f 4 -2326 2315 2305 2296
		mu 0 4 1609 1608 1597 1598
		f 4 -2327 -2297 2306 2287
		mu 0 4 1599 1609 1598 1588
		f 4 -2329 -2338 -784 -1148
		mu 0 4 589 1611 1610 509
		f 4 1053 1054 -2339 2328
		mu 0 4 589 590 1612 1611
		f 4 784 -2340 -1055 1130
		mu 0 4 500 1613 1612 590
		f 4 -2332 -2341 -785 -843
		mu 0 4 452 1614 1613 500
		f 4 -2342 2331 -791 -2333
		mu 0 4 1615 1614 452 453
		f 4 -2343 2332 1133 -2334
		mu 0 4 1616 1615 453 602
		f 4 -1074 1075 -2344 2333
		mu 0 4 602 936 1617 1616
		f 4 -2345 -1076 -1154 -2336
		mu 0 4 1619 1618 601 446
		f 4 789 864 -2346 2335
		mu 0 4 446 447 1620 1619
		f 4 -2347 -865 861 783
		mu 0 4 1610 1620 447 509
		f 4 2337 -2349 -2358 -2328
		mu 0 4 1610 1611 1622 1621
		f 4 2338 2329 -2359 2348
		mu 0 4 1611 1612 1623 1622
		f 4 2339 2330 -2360 -2330
		mu 0 4 1612 1613 1624 1623
		f 4 2340 -2352 -2361 -2331
		mu 0 4 1613 1614 1625 1624
		f 4 -2362 2351 2341 -2353
		mu 0 4 1626 1625 1614 1615
		f 4 -2363 2352 2342 -2354
		mu 0 4 1627 1626 1615 1616
		f 4 2343 2334 -2364 2353
		mu 0 4 1616 1617 1628 1627
		f 4 -2365 -2335 2344 -2356
		mu 0 4 1630 1629 1618 1619
		f 4 2345 2336 -2366 2355
		mu 0 4 1619 1620 1631 1630
		f 4 -2367 -2337 2346 2327
		mu 0 4 1621 1631 1620 1610
		f 4 2357 -2369 -2378 -2348
		mu 0 4 1621 1622 1633 1632
		f 4 2358 2349 -2379 2368
		mu 0 4 1622 1623 1634 1633
		f 4 2359 2350 -2380 -2350
		mu 0 4 1623 1624 1635 1634
		f 4 2360 -2372 -2381 -2351
		mu 0 4 1624 1625 1636 1635
		f 4 -2382 2371 2361 -2373
		mu 0 4 1637 1636 1625 1626
		f 4 -2383 2372 2362 -2374
		mu 0 4 1638 1637 1626 1627
		f 4 2363 2354 -2384 2373
		mu 0 4 1627 1628 1639 1638
		f 4 -2385 -2355 2364 -2376
		mu 0 4 1641 1640 1629 1630
		f 4 2365 2356 -2386 2375
		mu 0 4 1630 1631 1642 1641
		f 4 -2387 -2357 2366 2347
		mu 0 4 1632 1642 1631 1621
		f 4 2404 2399 -2394 2387
		mu 0 4 1650 1651 1644 1643
		f 4 2405 -2390 -2395 -2400
		mu 0 4 1651 1652 1645 1644
		f 4 2406 2401 -2396 2389
		mu 0 4 1652 1653 1646 1645
		f 4 -2397 -2402 2407 2402
		mu 0 4 1648 1647 1654 1655
		f 4 2408 2403 -2398 -2403
		mu 0 4 1655 1656 1649 1648
		f 4 2415 2410 -2405 2398
		mu 0 4 1657 1658 1651 1650
		f 4 2416 -2401 -2406 -2411
		mu 0 4 1658 1659 1652 1651
		f 4 2417 2412 -2407 2400
		mu 0 4 1659 1660 1653 1652
		f 4 -2408 -2413 2418 2413
		mu 0 4 1655 1654 1661 1662
		f 4 2419 2414 -2409 -2414
		mu 0 4 1662 1663 1656 1655
		f 4 -742 742 -2416 2409
		mu 0 4 1136 957 1658 1657
		f 4 -1121 -2412 -2417 -743
		mu 0 4 957 622 1659 1658
		f 4 -1104 1105 -2418 2411
		mu 0 4 622 949 1660 1659
		f 4 -2419 -1106 -1164 743
		mu 0 4 1662 1661 950 412
		f 4 739 878 -2420 -744
		mu 0 4 412 411 1663 1662
		f 4 2437 2432 -2427 2420
		mu 0 4 1671 1672 1665 1664
		f 4 2438 -2423 -2428 -2433
		mu 0 4 1672 1674 1667 1665
		f 4 -2429 2422 2439 2434
		mu 0 4 1668 1666 1673 1675
		f 4 2440 2435 -2430 -2435
		mu 0 4 1675 1676 1669 1668
		f 4 2441 2436 -2431 -2436
		mu 0 4 1676 1677 1670 1669
		f 4 2448 2443 -2438 2431
		mu 0 4 1678 1679 1672 1671
		f 4 2449 -2434 -2439 -2444
		mu 0 4 1679 1681 1674 1672
		f 4 -2440 2433 2450 2445
		mu 0 4 1675 1673 1680 1682
		f 4 2451 2446 -2441 -2446
		mu 0 4 1682 1683 1676 1675
		f 4 2452 2447 -2442 -2447
		mu 0 4 1683 1684 1677 1676
		f 4 803 -2449 2442 -801
		mu 0 4 951 1679 1678 1138
		f 4 -2445 -2450 -804 1151
		mu 0 4 597 1681 1679 951
		f 4 -2451 2444 1067 1068
		mu 0 4 1682 1680 938 955
		f 4 804 -2452 -1069 -1137
		mu 0 4 461 1683 1682 955
		f 4 848 -2453 -805 802
		mu 0 4 460 1684 1683 461
		f 4 1166 -2455 -2458 -745
		mu 0 4 1132 564 1686 1685
		f 4 -2459 2454 1007 1008
		mu 0 4 1687 1686 564 565
		f 4 -1122 746 -2460 -1009
		mu 0 4 565 524 1688 1687
		f 4 2457 -2462 -2465 -2454
		mu 0 4 1685 1686 1690 1689
		f 4 -2466 2461 2458 2455
		mu 0 4 1691 1690 1686 1687
		f 4 2459 2456 -2467 -2456
		mu 0 4 1687 1688 1692 1691
		f 4 2464 -2469 -2472 -2461
		mu 0 4 1689 1690 1694 1693
		f 4 -2473 2468 2465 2462
		mu 0 4 1695 1694 1690 1691
		f 4 2466 2463 -2474 -2463
		mu 0 4 1691 1692 1696 1695
		f 4 -2479 2474 2485 -2476
		mu 0 4 1698 1697 1701 1702
		f 4 2486 2483 -2480 2475
		mu 0 4 1702 1703 1699 1698
		f 4 -2481 -2484 2487 -2478
		mu 0 4 1700 1699 1703 1704
		f 4 -2486 2481 2492 -2483
		mu 0 4 1702 1701 1705 1706
		f 4 2493 2490 -2487 2482
		mu 0 4 1706 1707 1703 1702
		f 4 -2488 -2491 2494 -2485
		mu 0 4 1704 1703 1707 1708
		f 4 -2493 2488 -1036 -2490
		mu 0 4 1706 1705 1103 1102
		f 4 1031 1032 -2494 2489
		mu 0 4 1102 1104 1707 1706
		f 4 -2495 -1033 -1026 -2492
		mu 0 4 1708 1707 1104 503
		f 4 2551 -2497 -2504 -2544
		mu 0 4 1739 1740 1710 1709
		f 4 2552 2545 -2505 2496
		mu 0 4 1740 1741 1711 1710
		f 4 -2506 -2546 2553 -2499
		mu 0 4 1713 1711 1741 1743
		f 4 2554 -2500 -2507 2498
		mu 0 4 1742 1744 1714 1712
		f 4 -2508 2499 2555 -2501
		mu 0 4 1716 1714 1744 1746
		f 4 -2509 2500 2556 -2502
		mu 0 4 1717 1715 1745 1747
		f 4 -2510 2501 2557 2550
		mu 0 4 1718 1717 1747 1748
		f 4 -2511 -2551 2558 2543
		mu 0 4 1709 1718 1748 1739
		f 4 -2520 -2576 2583 -2513
		mu 0 4 1721 1719 1759 1761
		f 4 2584 -2514 -2521 2512
		mu 0 4 1760 1762 1722 1720
		f 4 2585 2578 -2522 2513
		mu 0 4 1762 1763 1723 1722
		f 4 -2523 -2579 2586 -2516
		mu 0 4 1724 1723 1763 1764
		f 4 -2524 2515 2587 -2517
		mu 0 4 1725 1724 1764 1765
		f 4 -2525 2516 2588 2581
		mu 0 4 1726 1725 1765 1766
		f 4 -2526 -2582 2589 -2519
		mu 0 4 1728 1726 1766 1768
		f 4 -2527 2518 2590 2575
		mu 0 4 1719 1727 1767 1759
		f 4 -2529 -2536 -842 -1166
		mu 0 4 568 1730 1729 626
		f 4 1012 1013 -2537 2528
		mu 0 4 568 569 1731 1730
		f 4 -2538 -1014 -1019 -2531
		mu 0 4 1733 1731 569 493
		f 5 -2532 -2539 2530 953 -835
		mu 0 5 423 1734 1732 1075 494
		f 4 -2540 2531 -757 -2533
		mu 0 4 1736 1734 423 1081
		f 4 -2541 2532 1127 -2534
		mu 0 4 1737 1735 424 566
		f 4 -2542 2533 1010 1011
		mu 0 4 1738 1737 566 567
		f 4 -2543 -1012 1125 841
		mu 0 4 1729 1738 567 626
		f 4 2535 -2545 -2552 -2528
		mu 0 4 1729 1730 1740 1739
		f 4 2536 2529 -2553 2544
		mu 0 4 1730 1731 1741 1740
		f 4 -2554 -2530 2537 -2547
		mu 0 4 1743 1741 1731 1733
		f 4 2538 -2548 -2555 2546
		mu 0 4 1732 1734 1744 1742
		f 4 -2556 2547 2539 -2549
		mu 0 4 1746 1744 1734 1736
		f 4 -2557 2548 2540 -2550
		mu 0 4 1747 1745 1735 1737
		f 4 -2558 2549 2541 2534
		mu 0 4 1748 1747 1737 1738
		f 4 -2559 -2535 2542 2527
		mu 0 4 1739 1748 1738 1729
		f 5 -2568 -832 828 967 -2561
		mu 0 5 1751 1749 482 490 531
		f 4 -2562 -2569 2560 -1051
		mu 0 4 586 1752 1750 1072
		f 4 1046 1047 -2570 2561
		mu 0 4 586 587 1753 1752
		f 4 -2571 -1048 -1150 -2564
		mu 0 4 1754 1753 587 630
		f 4 -2572 2563 -1144 -2565
		mu 0 4 1755 1754 630 584
		f 4 -2573 2564 -1041 1045
		mu 0 4 1756 1755 584 583
		f 4 -2574 -1046 -1145 -2567
		mu 0 4 1758 1756 583 478
		f 4 -2575 2566 813 831
		mu 0 4 1749 1757 1078 482
		f 4 -2584 -2560 2567 -2577
		mu 0 4 1761 1759 1749 1751
		f 4 2568 -2578 -2585 2576
		mu 0 4 1750 1752 1762 1760
		f 4 2569 2562 -2586 2577
		mu 0 4 1752 1753 1763 1762
		f 4 -2587 -2563 2570 -2580
		mu 0 4 1764 1763 1753 1754
		f 4 -2588 2579 2571 -2581
		mu 0 4 1765 1764 1754 1755
		f 4 -2589 2580 2572 2565
		mu 0 4 1766 1765 1755 1756
		f 4 -2590 -2566 2573 -2583
		mu 0 4 1768 1766 1756 1758
		f 4 -2591 2582 2574 2559
		mu 0 4 1759 1767 1757 1749
		f 4 756 837 -2599 -758
		mu 0 4 1081 423 1771 1770
		f 5 -2600 -838 834 954 952
		mu 0 5 1772 1771 423 494 495
		f 4 -1017 1128 -2601 -953
		mu 0 4 1074 568 1774 1773
		f 4 1165 -2596 -2602 -1129
		mu 0 4 568 626 1775 1774
		f 4 -1126 -2597 -2603 2595
		mu 0 4 626 567 1776 1775
		f 4 -1011 1019 -2604 2596
		mu 0 4 567 566 1777 1776
		f 4 -1128 757 -2605 -1020
		mu 0 4 566 424 1769 1777
		f 4 2598 2592 -2613 -2592
		mu 0 4 1770 1771 1780 1779
		f 4 -2614 -2593 2599 2593
		mu 0 4 1781 1780 1771 1772
		f 4 2600 2594 -2615 -2594
		mu 0 4 1773 1774 1783 1782
		f 4 2601 -2610 -2616 -2595
		mu 0 4 1774 1775 1784 1783
		f 4 2602 -2611 -2617 2609
		mu 0 4 1775 1776 1785 1784
		f 4 2603 2597 -2618 2610
		mu 0 4 1776 1777 1786 1785
		f 4 2604 2591 -2619 -2598
		mu 0 4 1777 1769 1778 1786
		f 4 -2621 -2627 -815 1144
		mu 0 4 583 1789 1788 478
		f 4 -2628 2620 1040 1041
		mu 0 4 1790 1789 583 584
		f 4 825 -2629 -1042 1143
		mu 0 4 630 1791 1790 584
		f 4 -2624 -2630 -826 1149
		mu 0 4 587 1792 1791 630
		f 4 -1053 966 -2631 2623
		mu 0 4 587 489 1793 1792
		f 5 -2626 -2632 -967 968 -829
		mu 0 5 482 1795 1794 1073 490
		f 4 814 -2633 2625 -814
		mu 0 4 1078 1787 1795 482
		f 4 2626 -2635 -2641 -2620
		mu 0 4 1788 1789 1798 1797
		f 4 -2642 2634 2627 2621
		mu 0 4 1799 1798 1789 1790
		f 4 2628 2622 -2643 -2622
		mu 0 4 1790 1791 1800 1799
		f 4 2629 -2638 -2644 -2623
		mu 0 4 1791 1792 1801 1800
		f 4 2630 2624 -2645 2637
		mu 0 4 1792 1793 1802 1801
		f 4 2631 -2640 -2646 -2625
		mu 0 4 1794 1795 1804 1803
		f 4 2632 2619 -2647 2639
		mu 0 4 1795 1787 1796 1804
		f 4 2647 2523 -2649 -2650
		mu 0 4 1805 1724 1725 1806
		f 4 -2652 2648 2524 2517
		mu 0 4 1807 1806 1725 1726
		f 4 -2654 -2518 2525 -2653
		mu 0 4 1809 1807 1726 1728
		f 4 -2656 2652 2526 2511
		mu 0 4 1810 1808 1727 1719
		f 4 -2658 -2512 2519 -2657
		mu 0 4 1812 1810 1719 1721
		f 4 2520 -2659 -2660 2656
		mu 0 4 1720 1722 1813 1811
		f 4 2521 2514 -2662 2658
		mu 0 4 1722 1723 1814 1813
		f 4 -2663 -2515 2522 -2648
		mu 0 4 1805 1814 1723 1724
		f 4 1124 -2665 -2666 2663
		mu 0 4 625 561 1816 1815
		f 4 -998 1009 -2668 2664
		mu 0 4 561 560 1817 1816
		f 4 1126 892 -2670 -1010
		mu 0 4 560 421 1818 1817
		f 4 894 893 -2672 -893
		mu 0 4 1080 422 1820 1819
		f 4 -2674 -894 896 895
		mu 0 4 1821 1820 422 1079
		f 4 897 -2675 -2676 -896
		mu 0 4 492 530 1823 1822
		f 4 -2678 2674 1014 1015
		mu 0 4 1824 1823 530 570
		f 4 -2679 -1016 986 -2664
		mu 0 4 1815 1824 570 625
		f 4 -2681 -2690 -161 197
		mu 0 4 89 1826 1825 82
		f 4 -166 167 -2691 2680
		mu 0 4 89 88 1827 1826
		f 4 202 -2683 -2692 -168
		mu 0 4 88 114 1828 1827
		f 4 207 -2684 -2693 2682
		mu 0 4 114 104 1829 1828
		f 4 -2694 2683 185 186
		mu 0 4 1830 1829 104 105
		f 4 -2695 -187 198 -2686
		mu 0 4 1831 1830 105 96
		f 4 -2696 2685 175 176
		mu 0 4 1832 1831 96 97
		f 4 -2688 -2697 -177 201
		mu 0 4 113 1834 1832 97
		f 4 -2689 -2698 2687 214
		mu 0 4 83 1835 1833 1303
		f 4 -159 160 -2699 2688
		mu 0 4 83 82 1825 1835
		f 4 2689 -2701 -2710 -2680
		mu 0 4 1825 1826 1837 1836
		f 4 2690 2681 -2711 2700
		mu 0 4 1826 1827 1838 1837
		f 4 2691 -2703 -2712 -2682
		mu 0 4 1827 1828 1839 1838
		f 4 2692 -2704 -2713 2702
		mu 0 4 1828 1829 1840 1839
		f 4 -2714 2703 2693 2684
		mu 0 4 1841 1840 1829 1830
		f 4 -2715 -2685 2694 -2706
		mu 0 4 1842 1841 1830 1831
		f 4 -2716 2705 2695 2686
		mu 0 4 1843 1842 1831 1832
		f 4 2696 -2708 -2717 -2687
		mu 0 4 1832 1834 1845 1843
		f 4 2697 -2709 -2718 2707
		mu 0 4 1833 1835 1846 1844
		f 4 2698 2679 -2719 2708
		mu 0 4 1835 1825 1836 1846
		f 4 2749 -2721 -2730 -2740
		mu 0 4 1858 1859 1848 1847
		f 4 2750 -2722 -2731 2720
		mu 0 4 1859 1861 1850 1848
		f 4 2751 2742 -2732 2721
		mu 0 4 1860 1862 1851 1849
		f 4 -2733 -2743 2752 -2724
		mu 0 4 1852 1851 1862 1863
		f 4 -2734 2723 2753 2744
		mu 0 4 1853 1852 1863 1864
		f 4 -2735 -2745 2754 -2726
		mu 0 4 1854 1853 1864 1865
		f 4 2755 -2727 -2736 2725
		mu 0 4 1865 1866 1855 1854
		f 4 2756 2747 -2737 2726
		mu 0 4 1866 1867 1856 1855
		f 4 2757 -2729 -2738 -2748
		mu 0 4 1867 1868 1857 1856
		f 4 2758 2739 -2739 2728
		mu 0 4 1868 1858 1847 1857
		f 4 -2741 -2750 -2058 2055
		mu 0 4 1340 1859 1858 1339
		f 4 -2100 -2742 -2751 2740
		mu 0 4 1340 1370 1861 1859
		f 4 -2122 2073 -2752 2741
		mu 0 4 1379 1354 1862 1860
		f 4 -2753 -2074 -2073 -2744
		mu 0 4 1863 1862 1354 1353
		f 4 -2754 2743 -2096 2083
		mu 0 4 1864 1863 1353 1362
		f 4 -2755 -2084 -2083 -2746
		mu 0 4 1865 1864 1362 1361
		f 4 -2747 -2756 2745 -2101
		mu 0 4 1371 1866 1865 1361
		f 4 2064 -2757 2746 -2118
		mu 0 4 1345 1867 1866 1371
		f 4 -2749 -2758 -2065 2062
		mu 0 4 1346 1868 1867 1345
		f 4 -2095 2057 -2759 2748
		mu 0 4 1346 1339 1858 1868
		f 4 -2761 -2770 -172 -213
		mu 0 4 112 1871 1869 93
		f 4 -2762 -2771 2760 -201
		mu 0 4 85 1872 1870 1305
		f 4 -162 190 -2772 2761
		mu 0 4 85 84 1873 1872
		f 4 -2764 -2773 -191 -197
		mu 0 4 91 1874 1873 84
		f 4 -169 193 -2774 2763
		mu 0 4 91 90 1875 1874
		f 4 -2766 -2775 -194 -206
		mu 0 4 115 1876 1875 90
		f 4 -2767 -2776 2765 -204
		mu 0 4 100 1877 1876 115
		f 4 180 181 -2777 2766
		mu 0 4 100 101 1878 1877
		f 4 -2769 -2778 -182 -200
		mu 0 4 92 1879 1878 101
		f 4 170 171 -2779 2768
		mu 0 4 92 93 1869 1879
		f 4 2769 -2781 -2790 -2760
		mu 0 4 1869 1871 1882 1880
		f 4 2770 -2782 -2791 2780
		mu 0 4 1870 1872 1883 1881
		f 4 2771 2762 -2792 2781
		mu 0 4 1872 1873 1884 1883
		f 4 2772 -2784 -2793 -2763
		mu 0 4 1873 1874 1885 1884
		f 4 2773 2764 -2794 2783
		mu 0 4 1874 1875 1886 1885
		f 4 2774 -2786 -2795 -2765
		mu 0 4 1875 1876 1887 1886
		f 4 2775 -2787 -2796 2785
		mu 0 4 1876 1877 1888 1887
		f 4 2776 2767 -2797 2786
		mu 0 4 1877 1878 1889 1888
		f 4 2777 -2789 -2798 -2768
		mu 0 4 1878 1879 1890 1889
		f 4 2778 2759 -2799 2788
		mu 0 4 1879 1869 1880 1890
		f 4 2789 -2801 -2810 -2780
		mu 0 4 1880 1882 1893 1891
		f 4 2790 -2802 -2811 2800
		mu 0 4 1881 1883 1894 1892
		f 4 2791 2782 -2812 2801
		mu 0 4 1883 1884 1895 1894
		f 4 2792 -2804 -2813 -2783
		mu 0 4 1884 1885 1896 1895
		f 4 2793 2784 -2814 2803
		mu 0 4 1885 1886 1897 1896
		f 4 2794 -2806 -2815 -2785
		mu 0 4 1886 1887 1898 1897
		f 4 2795 -2807 -2816 2805
		mu 0 4 1887 1888 1899 1898
		f 4 2796 2787 -2817 2806
		mu 0 4 1888 1889 1900 1899
		f 4 2797 -2809 -2818 -2788
		mu 0 4 1889 1890 1901 1900
		f 4 2798 2779 -2819 2808
		mu 0 4 1890 1880 1891 1901
		f 4 2809 -2821 -2830 -2800
		mu 0 4 1891 1893 1904 1902
		f 4 2810 -2822 -2831 2820
		mu 0 4 1892 1894 1905 1903
		f 4 2811 2802 -2832 2821
		mu 0 4 1894 1895 1906 1905
		f 4 2812 -2824 -2833 -2803
		mu 0 4 1895 1896 1907 1906
		f 4 2813 2804 -2834 2823
		mu 0 4 1896 1897 1908 1907
		f 4 2814 -2826 -2835 -2805
		mu 0 4 1897 1898 1909 1908
		f 4 2815 -2827 -2836 2825
		mu 0 4 1898 1899 1910 1909
		f 4 2816 2807 -2837 2826
		mu 0 4 1899 1900 1911 1910
		f 4 2817 -2829 -2838 -2808
		mu 0 4 1900 1901 1912 1911
		f 4 2818 2799 -2839 2828
		mu 0 4 1901 1891 1902 1912
		f 4 2869 -2841 -2850 -2860
		mu 0 4 1924 1925 1914 1913
		f 4 2870 2861 -2851 2840
		mu 0 4 1925 1926 1915 1914
		f 4 2871 -2843 -2852 -2862
		mu 0 4 1926 1927 1916 1915
		f 4 2872 -2844 -2853 2842
		mu 0 4 1927 1928 1917 1916
		f 4 2873 2864 -2854 2843
		mu 0 4 1928 1929 1918 1917
		f 4 2874 -2846 -2855 -2865
		mu 0 4 1929 1930 1919 1918
		f 4 2875 2866 -2856 2845
		mu 0 4 1930 1931 1920 1919
		f 4 2876 -2848 -2857 -2867
		mu 0 4 1931 1932 1921 1920
		f 4 2877 -2849 -2858 2847
		mu 0 4 1932 1934 1923 1921
		f 4 2878 2859 -2859 2848
		mu 0 4 1933 1924 1913 1922
		f 4 2889 -2861 -2870 -2880
		mu 0 4 1935 1936 1925 1924
		f 4 2890 2881 -2871 2860
		mu 0 4 1936 1937 1926 1925
		f 4 2891 -2863 -2872 -2882
		mu 0 4 1937 1938 1927 1926
		f 4 2892 -2864 -2873 2862
		mu 0 4 1938 1939 1928 1927
		f 4 2893 2884 -2874 2863
		mu 0 4 1939 1940 1929 1928
		f 4 2894 -2866 -2875 -2885
		mu 0 4 1940 1941 1930 1929
		f 4 2895 2886 -2876 2865
		mu 0 4 1941 1942 1931 1930
		f 4 2896 -2868 -2877 -2887
		mu 0 4 1942 1943 1932 1931
		f 4 2897 -2869 -2878 2867
		mu 0 4 1943 1945 1934 1932
		f 4 2898 2879 -2879 2868
		mu 0 4 1944 1935 1924 1933
		f 4 2909 -2881 -2890 -2900
		mu 0 4 1946 1947 1936 1935
		f 4 2910 2901 -2891 2880
		mu 0 4 1947 1948 1937 1936
		f 4 2911 -2883 -2892 -2902
		mu 0 4 1948 1949 1938 1937
		f 4 2912 -2884 -2893 2882
		mu 0 4 1949 1950 1939 1938
		f 4 2913 2904 -2894 2883
		mu 0 4 1950 1951 1940 1939
		f 4 2914 -2886 -2895 -2905
		mu 0 4 1951 1952 1941 1940
		f 4 2915 2906 -2896 2885
		mu 0 4 1952 1953 1942 1941
		f 4 2916 -2888 -2897 -2907
		mu 0 4 1953 1954 1943 1942
		f 4 2917 -2889 -2898 2887
		mu 0 4 1954 1956 1945 1943
		f 4 2918 2899 -2899 2888
		mu 0 4 1955 1946 1935 1944
		f 4 -2901 -2910 -2069 -2068
		mu 0 4 1349 1947 1946 1350
		f 4 2096 2078 -2911 2900
		mu 0 4 1349 1358 1948 1947
		f 4 -2903 -2912 -2079 -2078
		mu 0 4 1357 1949 1948 1358
		f 4 2101 -2904 -2913 2902
		mu 0 4 1357 1372 1950 1949
		f 4 2116 2090 -2914 2903
		mu 0 4 1372 1347 1951 1950
		f 4 -2906 -2915 -2091 2065
		mu 0 4 1348 1952 1951 1347
		f 4 2093 2087 -2916 2905
		mu 0 4 1348 1341 1953 1952
		f 4 -2908 -2917 -2088 2058
		mu 0 4 1342 1954 1953 1341
		f 4 2097 -2909 -2918 2907
		mu 0 4 1342 1369 1956 1954
		f 4 2120 2068 -2919 2908
		mu 0 4 1377 1350 1946 1955
		f 4 2943 -2921 -2928 -2936
		mu 0 4 1967 1968 1958 1957
		f 4 2944 2937 -2929 2920
		mu 0 4 1968 1969 1959 1958
		f 4 2945 -2923 -2930 -2938
		mu 0 4 1969 1970 1960 1959
		f 4 2946 2939 -2931 2922
		mu 0 4 1970 1971 1961 1960
		f 4 2947 -2925 -2932 -2940
		mu 0 4 1971 1972 1962 1961
		f 4 2948 2941 -2933 2924
		mu 0 4 1972 1973 1963 1962
		f 4 2949 -2927 -2934 -2942
		mu 0 4 1974 1976 1966 1964
		f 4 2950 2935 -2935 2926
		mu 0 4 1975 1967 1957 1965
		f 4 -2937 -2944 -21 127
		mu 0 4 35 1968 1967 16
		f 4 -44 47 -2945 2936
		mu 0 4 35 34 1969 1968
		f 4 -2939 -2946 -48 125
		mu 0 4 29 1970 1969 34
		f 4 -35 38 -2947 2938
		mu 0 4 29 28 1971 1970
		f 4 -2941 -2948 -39 123
		mu 0 4 23 1972 1971 28
		f 4 -26 29 -2949 2940
		mu 0 4 23 1333 1973 1972
		f 4 -2943 -2950 -30 121
		mu 0 4 17 1976 1974 22
		f 4 -17 20 -2951 2942
		mu 0 4 1318 16 1967 1975
		f 4 134 -2953 -2960 -73
		mu 0 4 48 55 1980 1978
		f 4 -78 81 -2961 2952
		mu 0 4 1310 54 1981 1979
		f 4 136 -2955 -2962 -82
		mu 0 4 54 61 1982 1981
		f 4 -87 90 -2963 2954
		mu 0 4 61 60 1983 1982
		f 4 138 -2957 -2964 -91
		mu 0 4 60 67 1984 1983
		f 4 -96 99 -2965 2956
		mu 0 4 67 66 1985 1984
		f 4 140 -2959 -2966 -100
		mu 0 4 66 49 1986 1985
		f 4 -69 72 -2967 2958
		mu 0 4 49 1332 1977 1986
		f 4 2959 -2969 -2976 -2952
		mu 0 4 1978 1980 1990 1988
		f 4 2960 2953 -2977 2968
		mu 0 4 1979 1981 1991 1989
		f 4 2961 -2971 -2978 -2954
		mu 0 4 1981 1982 1992 1991
		f 4 2962 2955 -2979 2970
		mu 0 4 1982 1983 1993 1992
		f 4 2963 -2973 -2980 -2956
		mu 0 4 1983 1984 1994 1993
		f 4 2964 2957 -2981 2972
		mu 0 4 1984 1985 1995 1994
		f 4 2965 -2975 -2982 -2958
		mu 0 4 1985 1986 1996 1995
		f 4 2966 2951 -2983 2974
		mu 0 4 1986 1977 1987 1996
		f 4 3007 -2985 -2992 -3000
		mu 0 4 2007 2008 1998 1997
		f 4 3008 3001 -2993 2984
		mu 0 4 2008 2009 1999 1998
		f 4 3009 -2987 -2994 -3002
		mu 0 4 2009 2010 2000 1999
		f 4 3010 3003 -2995 2986
		mu 0 4 2010 2011 2001 2000
		f 4 3011 -2989 -2996 -3004
		mu 0 4 2011 2012 2002 2001
		f 4 3012 3005 -2997 2988
		mu 0 4 2012 2013 2003 2002
		f 4 3013 -2991 -2998 -3006
		mu 0 4 2014 2016 2006 2004
		f 4 3014 2999 -2999 2990
		mu 0 4 2015 2007 1997 2005
		f 4 -127 -3001 -3008 -24
		mu 0 4 20 39 2008 2007
		f 4 -49 50 -3009 3000
		mu 0 4 39 38 2009 2008
		f 4 -3003 -3010 -51 -125
		mu 0 4 33 2010 2009 38
		f 4 -40 41 -3011 3002
		mu 0 4 33 32 2011 2010
		f 4 -123 -3005 -3012 -42
		mu 0 4 32 27 2012 2011
		f 4 -31 32 -3013 3004
		mu 0 4 27 1315 2013 2012
		f 4 -121 -3007 -3014 -33
		mu 0 4 26 21 2016 2014
		f 4 -22 23 -3015 3006
		mu 0 4 1317 20 2007 2015
		f 4 -3017 -3024 -76 -136
		mu 0 4 59 2020 2018 52
		f 4 -83 84 -3025 3016
		mu 0 4 1309 58 2021 2019
		f 4 -3019 -3026 -85 -138
		mu 0 4 65 2022 2021 58
		f 4 -92 93 -3027 3018
		mu 0 4 65 64 2023 2022
		f 4 -140 -3021 -3028 -94
		mu 0 4 64 71 2024 2023
		f 4 -101 102 -3029 3020
		mu 0 4 71 70 2025 2024
		f 4 -3023 -3030 -103 -142
		mu 0 4 53 2026 2025 70
		f 4 -74 75 -3031 3022
		mu 0 4 53 1311 2017 2026
		f 4 3023 -3033 -3040 -3016
		mu 0 4 2018 2020 2030 2028
		f 4 3024 3017 -3041 3032
		mu 0 4 2019 2021 2031 2029
		f 4 3025 -3035 -3042 -3018
		mu 0 4 2021 2022 2032 2031
		f 4 3026 3019 -3043 3034
		mu 0 4 2022 2023 2033 2032
		f 4 3027 -3037 -3044 -3020
		mu 0 4 2023 2024 2034 2033
		f 4 3028 3021 -3045 3036
		mu 0 4 2024 2025 2035 2034
		f 4 3029 -3039 -3046 -3022
		mu 0 4 2025 2026 2036 2035
		f 4 3030 3015 -3047 3038
		mu 0 4 2026 2017 2027 2036
		f 4 3071 -3049 -3056 -3064
		mu 0 4 2047 2048 2038 2037
		f 4 3072 3065 -3057 3048
		mu 0 4 2048 2049 2039 2038
		f 4 3073 -3051 -3058 -3066
		mu 0 4 2050 2052 2042 2040
		f 4 3074 3067 -3059 3050
		mu 0 4 2051 2053 2043 2041
		f 4 3075 -3053 -3060 -3068
		mu 0 4 2053 2054 2044 2043
		f 4 3076 3069 -3061 3052
		mu 0 4 2054 2055 2045 2044
		f 4 3077 -3055 -3062 -3070
		mu 0 4 2055 2056 2046 2045
		f 4 3078 3063 -3063 3054
		mu 0 4 2056 2047 2037 2046
		f 4 -131 -3065 -3072 -53
		mu 0 4 36 19 2048 2047
		f 4 -19 55 -3073 3064
		mu 0 4 19 1314 2049 2048
		f 4 -132 -3067 -3074 -56
		mu 0 4 18 25 2052 2050
		f 4 -28 58 -3075 3066
		mu 0 4 1313 24 2053 2051
		f 4 -133 -3069 -3076 -59
		mu 0 4 24 31 2054 2053
		f 4 -37 63 -3077 3068
		mu 0 4 31 30 2055 2054
		f 4 -134 -3071 -3078 -64
		mu 0 4 30 37 2056 2055
		f 4 -46 52 -3079 3070
		mu 0 4 37 36 2047 2056
		f 4 -3088 -106 -110 -3081
		mu 0 4 2060 2058 1324 1323
		f 4 -109 110 -3089 3080
		mu 0 4 75 1319 2061 2059
		f 4 -3090 -111 -143 -3083
		mu 0 4 2062 2061 1319 79
		f 4 -117 118 -3091 3082
		mu 0 4 79 78 2063 2062
		f 4 -3092 -119 -116 -3085
		mu 0 4 2064 2063 78 76
		f 4 112 113 -3093 3084
		mu 0 4 76 77 2065 2064
		f 4 -3094 -114 -144 -3087
		mu 0 4 2066 2065 77 72
		f 4 104 105 -3095 3086
		mu 0 4 72 73 2057 2066
		f 4 -3104 -3080 3087 -3097
		mu 0 4 2070 2068 2058 2060
		f 4 3088 3081 -3105 3096
		mu 0 4 2059 2061 2071 2069
		f 4 -3106 -3082 3089 -3099
		mu 0 4 2072 2071 2061 2062
		f 4 3090 3083 -3107 3098
		mu 0 4 2062 2063 2073 2072
		f 4 -3108 -3084 3091 -3101
		mu 0 4 2074 2073 2063 2064
		f 4 3092 3085 -3109 3100
		mu 0 4 2064 2065 2075 2074
		f 4 -3110 -3086 3093 -3103
		mu 0 4 2076 2075 2065 2066
		f 4 3094 3079 -3111 3102
		mu 0 4 2066 2057 2067 2076
		f 4 -3123 -625 -695 -3113
		mu 0 4 2079 2078 1154 369
		f 4 -3124 3112 674 675
		mu 0 4 2080 2079 369 1161
		f 4 -3125 -676 -698 -3115
		mu 0 4 2081 2080 1161 340
		f 4 -3126 3114 -623 638
		mu 0 4 2082 2081 340 336
		f 4 -3127 -639 -618 -3117
		mu 0 4 2083 2082 336 334
		f 4 -3128 3116 -615 630
		mu 0 4 2084 2083 334 330
		f 4 -3129 -631 -614 -3119
		mu 0 4 2085 2084 330 333
		f 4 -3130 3118 -622 636
		mu 0 4 2086 2085 333 339
		f 4 -3131 -637 -697 -3121
		mu 0 4 2087 2086 339 359
		f 4 -3132 3120 661 662
		mu 0 4 2088 2087 359 1165
		f 4 -3133 -663 -696 624
		mu 0 4 2077 2088 1165 375
		f 4 -3145 -3112 3122 -3135
		mu 0 4 2091 2090 2078 2079
		f 4 -3146 3134 3123 3113
		mu 0 4 2092 2091 2079 2080
		f 4 -3147 -3114 3124 -3137
		mu 0 4 2093 2092 2080 2081
		f 4 -3148 3136 3125 3115
		mu 0 4 2094 2093 2081 2082
		f 4 -3149 -3116 3126 -3139
		mu 0 4 2095 2094 2082 2083
		f 4 -3150 3138 3127 3117
		mu 0 4 2096 2095 2083 2084
		f 4 -3151 -3118 3128 -3141
		mu 0 4 2097 2096 2084 2085
		f 4 -3152 3140 3129 3119
		mu 0 4 2098 2097 2085 2086
		f 4 -3153 -3120 3130 -3143
		mu 0 4 2099 2098 2086 2087
		f 4 -3154 3142 3131 3121
		mu 0 4 2100 2099 2087 2088
		f 4 -3155 -3122 3132 3111
		mu 0 4 2089 2100 2088 2077
		f 4 -3167 -3134 3144 -3157
		mu 0 4 2103 2102 2090 2091
		f 4 -3168 3156 3145 3135
		mu 0 4 2104 2103 2091 2092
		f 4 -3169 -3136 3146 -3159
		mu 0 4 2105 2104 2092 2093
		f 4 -3170 3158 3147 3137
		mu 0 4 2106 2105 2093 2094
		f 4 -3171 -3138 3148 -3161
		mu 0 4 2107 2106 2094 2095
		f 4 -3172 3160 3149 3139
		mu 0 4 2108 2107 2095 2096
		f 4 -3173 -3140 3150 -3163
		mu 0 4 2109 2108 2096 2097
		f 4 -3174 3162 3151 3141
		mu 0 4 2110 2109 2097 2098
		f 4 -3175 -3142 3152 -3165
		mu 0 4 2111 2110 2098 2099
		f 4 -3176 3164 3153 3143
		mu 0 4 2112 2111 2099 2100
		f 4 -3177 -3144 3154 3133
		mu 0 4 2101 2112 2100 2089;
	setAttr ".fc[1500:1588]"
		f 4 -3179 -3189 -395 686
		mu 0 4 365 2115 2114 1160
		f 4 -3190 3178 668 669
		mu 0 4 2116 2115 365 366
		f 4 691 -3181 -3191 -670
		mu 0 4 366 252 2117 2116
		f 4 -3192 3180 452 453
		mu 0 4 2118 2117 252 253
		f 4 -3193 -454 460 -3183
		mu 0 4 2119 2118 253 236
		f 4 -3194 3182 427 428
		mu 0 4 2120 2119 236 237
		f 4 -3195 -429 458 -3185
		mu 0 4 2121 2120 237 242
		f 4 -3196 3184 439 440
		mu 0 4 2122 2121 242 243
		f 4 -3187 -3197 -441 689
		mu 0 4 353 2123 2122 243
		f 4 -3198 3186 652 653
		mu 0 4 2124 2123 353 354
		f 4 682 394 -3199 -654
		mu 0 4 354 1159 2113 2124
		f 4 1620 1625 -3206 -1625
		mu 0 4 872 873 2126 2125
		f 4 1631 -3207 -1626 -1630
		mu 0 4 880 2127 2126 873
		f 4 -3208 -1632 -1636 -3203
		mu 0 4 2128 2127 880 883
		f 4 -3209 3202 1633 -3204
		mu 0 4 2130 2128 883 878
		f 4 -3210 3203 -1620 -3205
		mu 0 4 2131 2129 1394 879
		f 4 -3211 3204 1623 1624
		mu 0 4 2125 2131 879 872
		f 4 3205 3200 -3218 -3200
		mu 0 4 2125 2126 2133 2132
		f 4 3206 3201 -3219 -3201
		mu 0 4 2126 2127 2134 2133
		f 4 -3220 -3202 3207 -3215
		mu 0 4 2135 2134 2127 2128
		f 4 -3221 3214 3208 -3216
		mu 0 4 2137 2135 2128 2130
		f 4 -3222 3215 3209 -3217
		mu 0 4 2138 2136 2129 2131
		f 4 -3223 3216 3210 3199
		mu 0 4 2132 2138 2131 2125
		f 4 3217 3212 -3230 -3212
		mu 0 4 2132 2133 2140 2139
		f 4 3218 3213 -3231 -3213
		mu 0 4 2133 2134 2141 2140
		f 4 -3232 -3214 3219 -3227
		mu 0 4 2142 2141 2134 2135
		f 4 -3233 3226 3220 -3228
		mu 0 4 2144 2142 2135 2137
		f 4 -3234 3227 3221 -3229
		mu 0 4 2145 2143 2136 2138
		f 4 -3235 3228 3222 3211
		mu 0 4 2139 2145 2138 2132
		f 4 3252 -3237 -3242 3235
		mu 0 4 2152 2153 2147 2146
		f 4 3253 3248 -3243 3236
		mu 0 4 2153 2154 2148 2147
		f 4 -3244 -3249 3254 -3239
		mu 0 4 2149 2148 2154 2155
		f 4 3255 3250 -3245 3238
		mu 0 4 2155 2156 2150 2149
		f 4 -3246 -3251 3256 3251
		mu 0 4 2151 2150 2156 2157
		f 4 3263 -3248 -3253 3246
		mu 0 4 2158 2159 2153 2152
		f 4 3264 3259 -3254 3247
		mu 0 4 2159 2160 2154 2153
		f 4 -3255 -3260 3265 -3250
		mu 0 4 2155 2154 2160 2161
		f 4 3266 3261 -3256 3249
		mu 0 4 2161 2162 2156 2155
		f 4 -3257 -3262 3267 3262
		mu 0 4 2157 2156 2162 2163
		f 4 -3259 -3264 3257 -370
		mu 0 4 133 2159 2158 191
		f 4 -266 309 -3265 3258
		mu 0 4 133 132 2160 2159
		f 4 -3266 -310 -352 -3261
		mu 0 4 2161 2160 132 169
		f 4 -314 318 -3267 3260
		mu 0 4 169 168 2162 2161
		f 4 -3268 -319 -386 236
		mu 0 4 2163 2162 168 207
		f 4 -3270 -3275 3268 367
		mu 0 4 148 2165 2164 189
		f 4 -3276 3269 285 286
		mu 0 4 2166 2165 148 149
		f 4 -3272 -3277 -287 348
		mu 0 4 124 2167 2166 149
		f 4 -3278 3271 255 256
		mu 0 4 2168 2167 124 125
		f 4 -3279 -257 380 232
		mu 0 4 2169 2168 125 202
		f 4 -3281 -3286 3279 -372
		mu 0 4 151 2171 2170 193
		f 4 -289 323 -3287 3280
		mu 0 4 151 150 2172 2171
		f 4 -3288 -324 -347 -3283
		mu 0 4 2173 2172 150 123
		f 4 -253 257 -3289 3282
		mu 0 4 123 122 2174 2173
		f 4 -3290 -258 -380 238
		mu 0 4 2175 2174 122 201
		f 4 -3292 -3297 3290 375
		mu 0 4 177 2177 2176 197
		f 4 -327 330 -3298 3291
		mu 0 4 177 176 2178 2177
		f 4 -3299 -331 358 -3294
		mu 0 4 2179 2178 176 181
		f 4 -335 337 -3300 3293
		mu 0 4 181 180 2180 2179
		f 4 -3301 -338 388 239
		mu 0 4 2181 2180 180 210
		f 4 -391 -3303 -3308 3301
		mu 0 4 212 161 2183 2182
		f 4 -3309 3302 -302 341
		mu 0 4 2184 2183 161 160
		f 4 -355 -3305 -3310 -342
		mu 0 4 160 141 2185 2184
		f 4 -276 277 -3311 3304
		mu 0 4 141 140 2186 2185
		f 4 -3312 -278 -366 248
		mu 0 4 2187 2186 140 187
		f 4 -3314 -3319 3312 -377
		mu 0 4 134 2189 2188 198
		f 4 -3320 3313 268 269
		mu 0 4 2190 2189 134 135
		f 4 -3321 -270 -361 -3316
		mu 0 4 2191 2190 135 165
		f 4 -308 344 -3322 3315
		mu 0 4 165 164 2192 2191
		f 4 -3323 -345 -384 242
		mu 0 4 2193 2192 164 205
		f 4 -543 -3325 -3334 -545
		mu 0 4 294 296 2195 2194
		f 4 563 564 -3335 3324
		mu 0 4 296 301 2196 2195
		f 4 -3336 -565 -549 -3327
		mu 0 4 2197 2196 301 300
		f 4 559 560 -3337 3326
		mu 0 4 300 306 2198 2197
		f 4 -559 591 -3338 -561
		mu 0 4 306 308 2199 2198
		f 4 -3339 -592 -574 -3330
		mu 0 4 2201 2199 308 1181
		f 4 -577 592 -3340 3329
		mu 0 4 316 1182 2202 2200
		f 4 -579 594 -3341 -593
		mu 0 4 318 289 2204 2203
		f 4 -3342 -595 -533 -3333
		mu 0 4 2205 2204 289 288
		f 4 543 544 -3343 3332
		mu 0 4 288 294 2194 2205
		f 4 -3345 -3354 -1987 -1986
		mu 0 4 1254 2207 2206 1260
		f 4 -3355 3344 1974 2036
		mu 0 4 2208 2207 1254 1255
		f 4 2033 -3356 -2037 2020
		mu 0 4 1287 2209 2208 1255
		f 4 -3348 -3357 -2034 2018
		mu 0 4 1283 2212 2210 1286
		f 4 -3358 3347 2015 2031
		mu 0 4 2213 2211 1282 1274
		f 4 2002 -3359 -2032 2000
		mu 0 4 1272 2214 2213 1274
		f 4 -3351 -3360 -2003 -2002
		mu 0 4 1266 2215 2214 1272
		f 4 -3361 3350 1990 2006
		mu 0 4 2216 2215 1266 1267
		f 4 -3353 -3362 -2007 -2006
		mu 0 4 1262 2217 2216 1267
		f 4 1986 -3363 3352 1984
		mu 0 4 1260 2206 2217 1262;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 143 
		219 0 
		224 0 
		228 0 
		229 0 
		258 0 
		268 0 
		281 0 
		315 0 
		316 0 
		317 0 
		318 0 
		325 0 
		326 0 
		327 0 
		329 0 
		342 0 
		371 0 
		372 0 
		373 0 
		374 0 
		375 0 
		394 0 
		395 0 
		398 0 
		415 0 
		416 0 
		417 0 
		418 0 
		419 0 
		420 0 
		421 0 
		424 0 
		425 0 
		426 0 
		427 0 
		441 0 
		442 0 
		445 0 
		462 0 
		463 0 
		464 0 
		465 0 
		466 0 
		467 0 
		468 0 
		469 0 
		472 0 
		473 0 
		475 0 
		476 0 
		477 0 
		478 0 
		479 0 
		480 0 
		481 0 
		486 0 
		488 0 
		489 0 
		491 0 
		492 0 
		493 0 
		495 0 
		496 0 
		497 0 
		504 0 
		505 0 
		519 0 
		520 0 
		521 0 
		523 0 
		525 0 
		528 0 
		529 0 
		531 0 
		556 0 
		557 0 
		558 0 
		559 0 
		560 0 
		561 0 
		563 0 
		564 0 
		570 0 
		574 0 
		575 0 
		576 0 
		577 0 
		580 0 
		588 0 
		589 0 
		592 0 
		593 0 
		595 0 
		596 0 
		607 0 
		610 0 
		611 0 
		623 0 
		624 0 
		625 0 
		628 0 
		629 0 
		631 0 
		633 0 
		634 0 
		648 0 
		649 0 
		651 0 
		664 0 
		668 0 
		669 0 
		670 0 
		674 0 
		675 0 
		685 0 
		686 0 
		691 0 
		692 0 
		712 0 
		713 0 
		716 0 
		717 0 
		721 0 
		722 0 
		735 0 
		738 0 
		749 0 
		767 0 
		768 0 
		774 0 
		783 0 
		786 0 
		794 0 
		799 0 
		970 0 
		1032 0 
		1033 0 
		1039 0 
		1040 0 
		1041 0 
		1060 0 
		1417 0 
		1445 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dfgi" 35;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
	setAttr ".ai_opaque" no;
createNode mesh -n "MainC_GEOShapeDeformed" -p "Main_MOD_MASTER:MainC_GEO";
	rename -uid "E63B14CB-49AF-F8F0-2AE9-26B0407A50A6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.21149677783250809 0.96246078610420227 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 43 ".pt";
	setAttr ".pt[959]" -type "float3" 0 1.1920929e-07 -5.9604645e-08 ;
	setAttr ".pt[960]" -type "float3" -1.1920929e-07 1.1920929e-07 -5.9604645e-08 ;
	setAttr ".pt[961]" -type "float3" -1.1920929e-07 0 5.9604645e-08 ;
	setAttr ".pt[962]" -type "float3" 1.1920929e-07 1.1920929e-07 0 ;
	setAttr ".pt[963]" -type "float3" 2.3841858e-07 -1.7881393e-07 0 ;
	setAttr ".pt[964]" -type "float3" 0 -2.9802322e-08 0 ;
	setAttr ".pt[965]" -type "float3" -1.1920929e-07 -2.9802322e-08 0 ;
	setAttr ".pt[966]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[967]" -type "float3" 2.3841858e-07 -5.9604645e-08 0 ;
	setAttr ".pt[968]" -type "float3" 1.1920929e-07 0 1.1920929e-07 ;
	setAttr ".pt[969]" -type "float3" 0 1.1920929e-07 0 ;
	setAttr ".pt[970]" -type "float3" 1.1920929e-07 5.9604645e-08 1.1920929e-07 ;
	setAttr ".pt[971]" -type "float3" 1.1920929e-07 0 1.1920929e-07 ;
	setAttr ".pt[972]" -type "float3" 0 1.4901161e-08 1.1920929e-07 ;
	setAttr ".pt[973]" -type "float3" -1.1920929e-07 2.9802322e-08 0 ;
	setAttr ".pt[974]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[975]" -type "float3" 0 2.9802322e-08 0 ;
	setAttr ".pt[976]" -type "float3" 1.1920929e-07 5.9604645e-08 0 ;
	setAttr ".pt[977]" -type "float3" -1.1920929e-07 1.1920929e-07 0 ;
	setAttr ".pt[978]" -type "float3" -1.1920929e-07 5.9604645e-08 0 ;
	setAttr ".pt[979]" -type "float3" 1.1920929e-07 -5.9604645e-08 0 ;
	setAttr ".pt[980]" -type "float3" 0 -5.9604645e-08 -1.1920929e-07 ;
	setAttr ".pt[981]" -type "float3" 1.1920929e-07 -5.9604645e-08 0 ;
	setAttr ".pt[982]" -type "float3" -1.1920929e-07 0 0 ;
	setAttr ".pt[983]" -type "float3" 1.1920929e-07 0 -1.1920929e-07 ;
	setAttr ".pt[984]" -type "float3" 2.3841858e-07 -1.1920929e-07 0 ;
	setAttr ".pt[985]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[986]" -type "float3" -1.1920929e-07 5.9604645e-08 1.1920929e-07 ;
	setAttr ".pt[987]" -type "float3" 1.1920929e-07 -1.7881393e-07 -1.1920929e-07 ;
	setAttr ".pt[1016]" -type "float3" -5.9604645e-08 -1.1920929e-07 0 ;
	setAttr ".pt[1017]" -type "float3" -2.9802322e-08 0 5.9604645e-08 ;
	setAttr ".pt[1018]" -type "float3" -2.9802322e-08 0 5.9604645e-08 ;
	setAttr ".pt[1019]" -type "float3" 2.9802322e-08 0 -5.9604645e-08 ;
	setAttr ".pt[1020]" -type "float3" 0 -5.9604645e-08 -1.1920929e-07 ;
	setAttr ".pt[1021]" -type "float3" 0 5.9604645e-08 -5.9604645e-08 ;
	setAttr ".pt[1022]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".pt[1023]" -type "float3" 5.9604645e-08 -1.1920929e-07 -5.9604645e-08 ;
	setAttr ".pt[1024]" -type "float3" -1.1920929e-07 1.1920929e-07 -1.1920929e-07 ;
	setAttr ".pt[1025]" -type "float3" -5.9604645e-08 -1.1920929e-07 3.5762787e-07 ;
	setAttr ".pt[1026]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[1027]" -type "float3" -5.9604645e-08 -1.1920929e-07 0 ;
	setAttr ".pt[1028]" -type "float3" 5.9604645e-08 -1.1920929e-07 -5.9604645e-08 ;
	setAttr ".pt[1029]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".dfgi" 35;
createNode transform -n "Sword_GEO";
	rename -uid "353F0A49-4362-831D-785E-0F8C297E1D57";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".t" -type "double3" -49.38536802924569 85.396763249219433 68.688993388600053 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -91.44168144570331 -3.1805546814635176e-15 -57.907550781203689 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 74.078559875488281 0.40796341205967457 ;
	setAttr ".rpt" -type "double3" -1.2334608832601628 -74.852081929610605 -74.473337948702209 ;
	setAttr ".sp" -type "double3" 0 74.078559875488281 0.40796341205967446 ;
	setAttr ".spt" -type "double3" 0 0 1.110223024625157e-16 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "Sword_GEOShape" -p "Sword_GEO";
	rename -uid "463BFAB8-40B7-B042-015F-E8AB73599B7A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "Sword_GEOShapeOrig" -p "Sword_GEO";
	rename -uid "DE258AD5-49F3-451C-583F-35AE5C9CC89D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 220 ".uvst[0].uvsp[0:219]" -type "float2" 0.37500179 0.25193757
		 0.39300951 0.25 0.60968804 0.25 0.62448126 0.25165746 0.55318743 0.47944099 0.54122972
		 0.48069319 0.375 0.48069298 0.39300951 0.25 0.37500003 0.25193897 0.375 0.48069298
		 0.54122967 0.48069319 0.55318743 0.47944099 0.62448126 0.25165746 0.60968804 0.25
		 0.125 7.8722835e-05 0.125 0 0.14412981 0 0.144307 8.6605549e-05 0.40319106 0.75116789
		 0.37500018 0.74992144 0.48232764 0.74992919 0.50350624 0.75128233 0.47972971 0.75
		 0.37666667 0.75 0.40319088 0.75116789 0.48943725 0.74996674 0.48101726 0.5 0.48865286
		 0.5 0.39179736 1 0.375 0.99666488 0.375 0.76930702 0.390995 0.76930726 0.37304533
		 9.3619834e-05 0.39204547 -1.8626451e-09 0.37306106 0.25 0.62191057 0.99677056 0.60876501
		 1 0.53533614 0.76930714 0.55071354 0.7693069 0.60795456 -1.8626451e-09 0.62663519
		 0.00015110953 0.62665105 0.24997747 0.53531063 0.76930714 0.60876518 1 0.62191051
		 0.99677062 0.50377214 0.49862057 0.55279553 0.48069322 0.62663543 0.00015874182 0.60876483
		 0 0.62665105 0.24997747 0.375 0.99666494 0.39180091 0.9999963 0.390995 0.76930726
		 0.375 0.76930702 0.39179704 0 0.37304524 9.3618291e-05 0.37304828 0.25 0.125 0 0.125
		 7.8667537e-05 0.144307 7.7858553e-05 0.14412981 0 0.375 0.5 0.85481179 0.0076075955
		 0.85481048 0.2468266 0.8535881 0.24688123 0.144307 0.25 0.125 0.25 0.55209136 0.76904976
		 0.375 0.5 0.48101723 0.5 0.85356301 0.24688157 0.144307 0.25 0.125 0.25 0.55279595
		 0.76930714 0.85481048 0.24686456 0.85463363 0.24686697 0.39999747 0.99384993 0.375
		 0.99384993 0.375 0.75614989 0.39999914 0 0.39999914 0.0012233108 0.625 0.99384987
		 0.60000253 0.99384993 0.625 0.75615001 0.63115019 0.001218087 0.375 0.25614986 0.375
		 0.49384993 0.39999747 0.24878252 0.60000253 0.24878252 0.625 0.25615004 0.375 0.50122333
		 0.375 0.74878252 0.3999975 0.49384993 0.60000253 0.4938499 0.625 0.50121748 0.625
		 0.74878252 0.39999747 0.74878252 0.60000253 0.74878246 0.60000253 0.75614983 0.59999216
		 0.0012232997 0.39999747 0.25614986 0.60000253 0.25614986 0.39999914 0.50122333 0.59999216
		 0.50122333 0.39999747 0.75614983 0.86884928 0.0012180847 0.86884993 0.24878252 0.1311502
		 0.001218087 0.36884928 0.0012180847 0.36884993 0.24878253 0.13115005 0.24878252 0.60000086
		 0 0.63115007 0.24878252 0.625 0.4938499 0.62065345 0.48779199 0.37527692 0.48836127
		 0.37918857 0.4883585 0.8627857 0.24876864 0.62537491 0.24878275 0.37697554 0.99927258
		 0.37518722 0.9999311 0.3754124 0.76183629 0.37619111 0.001814674 0.13683322 0.0018146634
		 0.12810686 0.019084932 0.1281113 0.0018147066 0.50118852 0.9999311 0.62302452 0.99927258
		 0.62481284 0.9999311 0.50112039 0.019392578 0.62551552 0.0018146647 0.86316675 0.0018146634
		 0.49880651 0.23068175 0.50119942 0.2304614 0.62311852 0.24949144 0.37540978 0.5 0.37540978
		 0.49970421 0.37540978 0.50030094 0.37540978 0.73084879 0.37932429 0.7308957 0.62459028
		 0.49691814 0.6245895 0.75151795 0.6245873 0.76181698 0.62445414 0.48816681 0.37945822
		 0.48816678 0.62067568 0.49971348 0.62067568 0.49688777 0.62445414 0.48816678 0.6205399
		 0.48816678 0.37540978 0.49688315 0.37554583 0.48816788 0.3794606 0.48816672 0.49872738
		 0.019612703 0.37518197 0.23090784 0.37697533 0.24891776 0.50000012 0.24889016 0.37921613
		 0.48769963 0.3793014 0.5 0.37934303 0.7618773 0.86318058 0.019110113 0.62491775 0.23144874
		 0.37511814 0.019161094 0.13655822 0.23086603 0.13681251 0.019067561 0.13380145 0.24862958
		 0.12830254 0.24954842 0.37932491 0.75158066 0.5 0.75282568 0.37931791 0.48816675
		 0.37932426 0.4968878 0.5 0.48816678 0.62458974 0.49126935 0.62459022 0.49688363 0.37931854
		 0.49971348 0.37506768 0.49668282 0.37540978 0.49688363 0.37540978 0.49128371 0.5
		 0.5 0.37932426 0.49971351 0.62459016 0.49688312 0.62459016 0.48818472 0.37945849
		 0.48816678 0.50000006 0.48816678 0.3793177 0.4884533 0.62459022 0.49128374 0.5 0.48816675
		 0.37946007 0.48816672 0.37540978 0.48818472 0.37554586 0.48816794 0.5 0.48756716
		 0.62066656 0.48844928 0.6206823 0.4884533 0.5 0.48816678 0.5 0.48816678 0.6205399
		 0.48816681 0.5 0.48816678 0.62053937 0.48816681 0.62053937 0.48816678 0.620682 0.48816675
		 0.5 0.49717432 0.5 0.48816678 0.62068146 0.49971348 0.6207009 0.49971238 0.5 0.5
		 0.5 0.73265803 0.5 0.5 0.62067574 0.73088431 0.62067503 0.75158077 0.62065637 0.76187593
		 0.5 0.99929988 0.5 0.76183319 0.62503892 0.019202052 0.86335009 0.2314311 0.87166303
		 0.020496674 0.87167305 0.24969894 0.37520498 0.49113563 0.86612481 0.24908546 0.86336392
		 0.24878444 0.49924213 0.0018146781 0.62459022 0.73082799;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 146 ".vt[0:145]"  0 85.084480286 -4.11844349 0 85.46463776 -4.11844349
		 0 85.084480286 -4.21417618 0 74.078559875 -4.21417618 0 73.74904633 -4.11844349 -0.073694795 73.83636475 -1.89968836
		 -0.17204149 73.83636475 -1.50451255 0.073694795 73.83636475 -1.89968836 0.17204149 73.83636475 -1.50451255
		 -0.044274256 3.85021591 -1.89968991 -0.022490516 3.84735489 -1.89627337 3.5942453e-19 4.041725159 -2.010565281
		 -0.01041898 4.068656921 -2.025800943 0.010417734 4.06867981 -2.025803328 -0.51783085 -7.6293945e-06 0.53638989
		 -0.53101182 0.055034637 0.51909643 -0.53103691 73.83636475 0.51923609 -0.51665825 73.83636475 0.53638989
		 -0.29016066 0.054111481 0.52186656 -0.3079454 -7.6293945e-06 0.53638989 -0.29014096 73.83636475 0.52172726
		 -0.30705273 73.83636475 0.53638989 -0.12162783 3.25695801 -1.50451255 -0.10615095 3.23249435 -1.50451255
		 0 3.26388931 -1.50451255 -0.016895022 3.23249435 -1.50451255 5.1288482e-21 3.24104309 -1.51173377
		 0.016919695 3.23249435 -1.50451255 -0.011191521 73.83636475 -2.024259806 0.011191521 73.83636475 -2.024259806
		 0.011191521 73.83636475 -1.50451267 -0.011191521 73.83636475 -1.50451267 0 73.83636475 -1.49343419
		 0 73.82516479 -1.50451267 0.3079454 -7.6293945e-06 0.53638989 0.29016066 0.054111481 0.52186656
		 0.29014096 73.83636475 0.52172726 0.30705273 73.83636475 0.53638989 0.53101182 0.055034637 0.51909643
		 0.51783085 -7.6293945e-06 0.53638989 0.53103691 73.83636475 0.51923609 0.51665825 73.83636475 0.53638989
		 0.022490516 3.84735489 -1.89627337 0.044274256 3.85021591 -1.89968991 0.12162783 3.25449371 -1.50451255
		 0.10615095 3.23249435 -1.50451255 -0.24135871 73.9510498 0.48615828 -0.24135871 74.011383057 0.54649043
		 -0.30169085 74.011383057 0.48615828 0.30169085 74.011383057 0.48615828 0.24135871 74.011383057 0.54649043
		 0.24135871 73.9510498 0.48615828 -0.30169085 86.27966309 0.48615828 -0.24135871 86.27966309 0.54649043
		 -0.24135871 86.33999634 0.48615828 0.24135871 86.33999634 0.48615828 0.24135871 86.27966309 0.54649043
		 0.30169085 86.27966309 0.48615828 -0.30169085 86.27966309 -1.84567368 -0.24135871 86.33999634 -1.84567368
		 -0.24135871 86.27966309 -1.90600586 0.24135871 86.27966309 -1.90600586 0.24135871 86.33999634 -1.84567368
		 0.30169085 86.27966309 -1.84567368 -0.30169085 74.011383057 -1.84567368 -0.24135871 74.011383057 -1.90600586
		 -0.24135871 73.9510498 -1.84567368 0.24135871 73.9510498 -1.84567368 0.24135871 74.011383057 -1.90600586
		 0.30169085 74.011383057 -1.84567368 0 74.10141754 -4.11844349 0 74.078552246 -4.0955863
		 -0.72818643 74.077354431 -4.14297104 -0.72832924 74.054084778 -4.11991692 -0.70808065 74.077003479 -4.097124577
		 -0.70552218 74.099868774 -4.11999035 0.72818637 74.077354431 -4.14297295 0.70544887 74.099945068 -4.11999035
		 0.7080884 74.077003479 -4.09713316 0.72832924 74.054084778 -4.11991692 -1.17203879 73.75143433 4.19912863
		 -1.19668341 73.77429199 4.21275043 -0.70479494 73.75135803 -4.1169486 -0.72764587 73.77423096 -4.11842299
		 0.016375989 73.77458954 5.01969862 -0.016587298 73.77488708 5.019598484 0 73.7514267 5.0032105446
		 1.17203879 73.75143433 4.19912863 1.19668341 73.77429199 4.21275043 -1.17204189 74.076171875 4.19912815
		 -1.19668341 74.053314209 4.21275043 -0.016375989 74.053016663 5.01969862 0.016587298 74.052719116 5.019598484
		 0 74.076179504 5.0032105446 1.17204106 74.076171875 4.19912767 1.19668341 74.053314209 4.21275043
		 -0.70476836 85.086791992 -4.12076139 -0.7275902 85.10968781 -4.14366007 0.7275902 85.10968781 -4.14366007
		 0.70476836 85.086791992 -4.12076139 -0.70486367 74.078559875 -4.21185827 -0.72778708 74.078163147 -4.18906116
		 -0.70476359 85.084480286 -4.21185827 -0.7275902 85.085083008 -4.18896437 -0.70473015 73.75135803 -4.18899822
		 -0.7275902 73.77425385 -4.18896055 -0.70473015 73.77422333 -4.21185875 0.72778708 74.078163147 -4.18906116
		 0.70486367 74.078559875 -4.21185827 0.7275902 85.085083008 -4.18896437 0.70476359 85.084480286 -4.21185827
		 0.70473015 73.77422333 -4.21185875 0.7275902 73.77425385 -4.18896055 0.70473015 73.75135803 -4.18899822
		 0.72764587 73.77423096 -4.11842299 0.70479494 73.75135803 -4.1169486 0.70393693 85.087638855 1.6678369
		 0.72679567 85.11051178 1.66782272 0.70393384 85.11050415 1.69069552 -0.72679567 85.11051178 1.66782427
		 -0.70394796 85.087638855 1.66784787 -0.70394635 85.11048889 1.69069552 0.70473015 85.46232605 -4.18899822
		 0.7275902 85.43943024 -4.18896055 0.70473015 85.43946075 -4.21185875 0.7275902 85.43943024 -4.11858892
		 0.70476723 85.46232605 -4.11844349 0.70393384 85.43861389 1.69069552 0.72679567 85.43860626 1.66782427
		 0.70393693 85.46147919 1.6678369 -0.70473015 85.43946075 -4.21185875 -0.7275902 85.43943024 -4.18896055
		 -0.70473015 85.46232605 -4.18899822 -0.70476723 85.46232605 -4.11844349 -0.7275902 85.43943024 -4.11858892
		 -0.70393693 85.46147919 1.6678369 -0.72679567 85.43860626 1.66782272 -0.70393384 85.43861389 1.69069552
		 0 85.10972595 1.69146824 0 85.086860657 1.6686126 0 85.43939209 1.69146824 0 85.46225739 1.6686126
		 0 73.74904633 -4.19131565 0 73.77190399 -4.21417618 0 85.44178009 -4.21417618 0 85.46463776 -4.19131565;
	setAttr -s 284 ".ed";
	setAttr ".ed[0:165]"  16 17 0 17 21 0 21 20 0 20 32 0 32 31 0 31 6 0 6 16 0
		 41 40 0 40 8 0 8 30 0 30 32 0 32 36 0 36 37 0 37 41 0 9 10 0 10 23 0 23 22 0 22 9 0
		 9 12 0 12 11 0 11 10 0 11 13 0 13 43 0 43 42 0 42 11 0 13 12 0 12 28 0 28 29 0 29 13 0
		 14 15 0 15 22 0 23 14 0 14 17 0 16 15 0 18 19 0 19 25 0 25 24 0 24 18 0 18 20 0 21 19 0
		 24 27 0 27 34 0 34 35 0 35 24 0 28 31 0 31 30 0 30 29 0 34 37 0 36 35 0 38 39 0 39 45 0
		 45 44 0 44 38 0 38 40 0 41 39 0 43 44 0 45 42 0 14 19 0 5 28 0 9 5 0 23 25 0 24 33 0
		 33 32 0 6 22 0 5 6 0 11 26 0 26 25 0 34 39 0 7 43 0 29 7 0 27 45 0 44 8 0 8 7 0 27 26 0
		 46 48 0 48 64 0 64 66 0 66 46 0 47 46 0 46 51 0 51 50 0 50 47 0 48 47 0 47 53 0 53 52 0
		 52 48 0 49 51 0 51 67 0 67 69 0 69 49 0 50 49 0 49 57 0 57 56 0 56 50 0 52 54 0 54 59 0
		 59 58 0 58 52 0 54 53 0 53 56 0 56 55 0 55 54 0 55 57 0 57 63 0 63 62 0 62 55 0 58 60 0
		 60 65 0 65 64 0 64 58 0 60 59 0 59 62 0 62 61 0 61 60 0 61 63 0 63 69 0 69 68 0 68 61 0
		 66 65 0 65 68 0 68 67 0 67 66 0 70 71 0 71 78 0 78 77 0 77 70 0 70 75 0 75 74 0 74 71 0
		 74 73 0 73 90 0 90 89 0 89 74 0 72 75 0 75 96 0 96 97 0 97 72 0 77 76 0 76 98 0 98 99 0
		 99 77 0 79 78 0 78 94 0 94 95 0 95 79 0 80 81 0 81 83 0 83 82 0 82 80 0 80 86 0 86 85 0
		 85 81 0 83 105 0 105 104 0 104 82 0 84 86 0 86 87 0 87 88 0 88 84 0 85 84 0 84 92 0
		 92 91 0 91 85 0 87 115 0 115 114 0 114 88 0;
	setAttr ".ed[166:283]" 90 91 0 91 93 0 93 89 0 93 92 0 92 95 0 94 93 0 96 120 0
		 120 119 0 119 97 0 98 117 0 117 116 0 116 99 0 100 101 0 101 103 0 103 102 0 102 100 0
		 100 106 0 106 105 0 105 101 0 103 131 0 131 130 0 130 102 0 104 106 0 106 143 0 143 142 0
		 142 104 0 107 108 0 108 110 0 110 109 0 109 107 0 107 112 0 112 111 0 111 108 0 110 124 0
		 124 123 0 123 109 0 111 113 0 113 142 0 143 111 0 113 112 0 112 114 0 115 113 0 116 118 0
		 118 138 0 138 139 0 139 116 0 118 117 0 117 128 0 128 127 0 127 118 0 119 121 0 121 137 0
		 137 136 0 136 119 0 121 120 0 120 139 0 138 121 0 122 124 0 124 144 0 144 145 0 145 122 0
		 123 122 0 122 126 0 126 125 0 125 123 0 126 129 0 129 128 0 128 125 0 127 129 0 129 141 0
		 141 140 0 140 127 0 130 132 0 132 145 0 144 130 0 132 131 0 131 134 0 134 133 0 133 132 0
		 134 136 0 136 135 0 135 133 0 135 137 0 137 140 0 141 135 0 90 81 0 93 71 0 100 3 0
		 3 143 0 82 4 0 4 86 0 114 79 0 95 88 0 73 83 0 73 72 0 72 101 0 142 4 0 133 1 0 1 145 0
		 70 0 0 0 96 0 76 107 0 109 98 0 2 3 0 102 2 0 97 103 0 97 134 0 144 2 0 125 98 0
		 138 140 0 0 139 0 141 1 0 99 0 0 126 1 0 110 2 0 108 3 0 115 4 0 76 79 0;
	setAttr -s 568 ".n";
	setAttr ".n[0:165]" -type "float3"  0 1 9.004737e-06 0 0.99999994 9.0047361e-06
		 0 1 9.0047361e-06 0 1 9.004737e-06 0 1 5.6273711e-06 0 1 8.2326833e-06 0 1 8.2906299e-06
		 0 0.99999994 2.2511838e-06 0 1 2.251184e-06 0 1 2.0726573e-06 0 1 2.0581706e-06 0
		 1 5.6273711e-06 0 1 2.251184e-06 0 1 2.251184e-06 -0.21363404 -0.50274843 -0.83761835
		 -0.2245046 -0.50186759 -0.83530033 -0.583978 -0.37962314 -0.7175346 -0.51063359 -0.41505674
		 -0.7529816 -0.2245046 -0.50186759 -0.83530033 -0.21363404 -0.50274843 -0.83761835
		 -3.4591041e-05 -0.00048679349 -0.99999988 0.00012189853 -0.50624788 -0.86238796 0.00012189853
		 -0.50624788 -0.86238796 -8.6340326e-05 -0.00048573679 -0.99999994 0.1904701 -0.50692284
		 -0.84068447 0.20045105 -0.50635648 -0.83870292 -8.6340326e-05 -0.00048573679 -0.99999994
		 -3.4591041e-05 -0.00048679349 -0.99999988 -6.0724593e-05 2.2106649e-05 -1 -6.0724593e-05
		 2.2106649e-05 -1 -0.6009506 -0.37064362 -0.70815361 -0.6009506 -0.37064365 -0.70815367
		 -0.51063359 -0.41505674 -0.7529816 -0.583978 -0.37962314 -0.7175346 -0.7808454 5.478948e-06
		 0.62472427 -0.78084546 5.478948e-06 0.62472421 -0.78084546 5.478948e-06 0.62472427
		 -0.7808454 5.4789475e-06 0.62472421 0.75834 -0.39553955 -0.5181399 0.75834 -0.39553949
		 -0.51813996 0.75834 -0.39553955 -0.51813996 0.75834 -0.39553952 -0.5181399 0.64372194
		 -3.2564087e-06 0.76525939 0.64372194 -3.2564092e-06 0.7652595 0.64372194 -3.2564089e-06
		 0.7652595 0.64372194 -3.2564087e-06 0.7652595 -0.75806129 -0.39569446 -0.51842934
		 -0.75806129 -0.39569449 -0.51842934 -0.75806129 -0.39569449 -0.51842934 -0.75806123
		 -0.39569449 -0.51842928 0 1 0 0 1 0 0 1 8.2326833e-06 0 1 2.0581706e-06 -0.64372194
		 -3.2562853e-06 0.7652595 -0.64372194 -3.2562848e-06 0.76525939 -0.64372194 -3.256285e-06
		 0.7652595 -0.64372194 -3.256285e-06 0.7652595 0.58495229 -0.3785969 -0.71728319 0.58495224
		 -0.37859687 -0.71728319 0.56614161 -0.38814902 -0.72720289 0.49391246 -0.42163369
		 -0.76044422 0.78084546 5.4790412e-06 0.62472421 0.7808454 5.4790412e-06 0.62472427
		 0.7808454 5.4790412e-06 0.62472421 0.78084546 5.4790416e-06 0.62472427 0.20045105
		 -0.50635648 -0.83870292 0.1904701 -0.50692284 -0.84068447 0.49391246 -0.42163369
		 -0.76044422 0.56614161 -0.38814902 -0.72720289 0 0 1 0 0 1 0 0 0.99999994 0 0 1 -0.96746171
		 -0.00046687247 -0.25301707 -0.93335986 -0.00019768525 -0.35894164 -0.93336004 -0.00019768527
		 -0.3589417 -0.97394264 -0.00053143845 -0.22679384 0.0030756451 -0.53398353 -0.8454892
		 0.0056764707 -0.53407878 -0.84541577 0 -0.53386629 -0.8455689 0 -0.53386629 -0.8455689
		 0.98990315 -1.0875994e-05 0.14174604 0.98990303 -1.0875992e-05 0.14174601 0.98990303
		 -1.0875993e-05 0.14174601 0.98990309 -1.0875994e-05 0.14174601 0.98990309 -1.0875994e-05
		 0.14174603 -0.9821527 -0.00035206179 -0.18808451 -0.98240215 -0.00034306478 -0.1867777
		 -0.98240215 -0.00034306475 -0.1867777 -0.98145175 -0.00037702572 -0.19170932 0 1
		 8.2906299e-06 0 1 8.2326833e-06 0 1 0 0 1 0 -0.97394264 -0.00053143845 -0.22679384
		 -0.9821527 -0.00035206179 -0.18808451 -0.98145175 -0.00037702572 -0.19170932 -0.96746171
		 -0.00046687247 -0.25301707 0.044101618 -0.53506297 -0.8436603 6.1062394e-07 -0.53558385
		 -0.844482 7.4088562e-06 -0.53558385 -0.84448206 0.0056764707 -0.53407878 -0.84541577
		 0.0030756451 -0.53398353 -0.8454892 0 0 1 0 0 1 0 0 0.99999994 0 0 1 0.96746135 -0.00046686604
		 -0.25301826 0.97394395 -0.00053144706 -0.22678807 0.93335962 -0.0001976872 -0.35894251
		 0.93335974 -0.00019768722 -0.35894251 -0.0030757962 -0.53398347 -0.84548932 0 -0.53386629
		 -0.84556901 0 -0.53386623 -0.84556901 -0.0056780009 -0.53407866 -0.84541565 -0.98990297
		 -1.0876025e-05 0.141746 -0.98990303 -1.0876025e-05 0.14174598 -0.98990309 -1.0876027e-05
		 0.141746 -0.98990303 -1.0876026e-05 0.141746 -0.98990309 -1.0876026e-05 0.141746
		 0.98215353 -0.00035202916 -0.18808055 0.98145181 -0.00037701929 -0.19170941 0.98240221
		 -0.00034305893 -0.18677749 0.98240215 -0.0003430589 -0.18677749 0 1 2.0726573e-06
		 0 1 0 0 1 0 0 1 2.0581706e-06 0.97394395 -0.00053144706 -0.22678807 0.96746135 -0.00046686604
		 -0.25301826 0.98145181 -0.00037701929 -0.19170941 0.98215353 -0.00035202916 -0.18808055
		 -0.04410053 -0.53506267 -0.84366065 -0.0030757962 -0.53398347 -0.84548932 -0.0056780009
		 -0.53407866 -0.84541565 7.4088562e-06 -0.53558385 -0.84448206 6.1062394e-07 -0.53558385
		 -0.844482 0.00012189853 -0.50624788 -0.86238796 -3.4591041e-05 -0.00048679349 -0.99999988
		 -8.6340326e-05 -0.00048573679 -0.99999994 0 -0.30138376 0.95350283 0 -0.30138379
		 0.95350289 0 -0.30138379 0.95350295 0 -0.30138376 0.95350289 0 1 2.0581706e-06 0
		 1 8.2326833e-06 0 1 5.6273711e-06 -0.70711339 -0.70710015 0 -0.70711339 -0.70710015
		 0 -0.70711339 -0.70710015 0 -0.70711339 -0.70710015 0 0 -0.70708454 0.70712912 0
		 -0.70708454 0.70712912 0 -0.70708454 0.70712912 0 -0.70708454 0.70712912 -0.70710695
		 0 0.70710659 -0.70710695 0 0.70710659 -0.70710695 0 0.70710659 -0.70710695 0 0.70710659
		 0.70711339 -0.70710015 0 0.70711339 -0.70710015 0 0.70711339 -0.70710015 0 0.70711339
		 -0.70710015 0 0.70710695 0 0.70710659 0.70710695 0 0.70710659;
	setAttr ".n[166:331]" -type "float3"  0.70710695 0 0.70710659 0.70710695 0
		 0.70710659 -0.70711339 0.70710015 0 -0.70711339 0.70710015 0 -0.70711339 0.70710015
		 0 -0.70711339 0.70710015 0 0 0.70708454 0.70712912 0 0.70708454 0.70712912 0 0.70708454
		 0.70712912 0 0.70708454 0.70712912 0.70711339 0.70710015 0 0.70711339 0.70710015
		 0 0.70711339 0.70710015 0 0.70711339 0.70710015 0 -0.70710677 0 -0.70710677 -0.70710677
		 0 -0.70710677 -0.70710677 0 -0.70710677 -0.70710677 0 -0.70710677 0 0.70708472 -0.70712888
		 0 0.70708472 -0.70712888 0 0.70708472 -0.70712888 0 0.70708472 -0.70712888 0.70710677
		 0 -0.70710677 0.70710677 0 -0.70710677 0.70710677 0 -0.70710677 0.70710677 0 -0.70710677
		 0 -0.70708472 -0.70712888 0 -0.70708472 -0.70712888 0 -0.70708472 -0.70712888 0 -0.70708472
		 -0.70712888 0 0 1 0 0 1 0 0 1 0 0 1 0 0.99999994 0 0 0.99999994 0 0 0.99999994 0
		 0 0.99999994 0 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 -0.99999994 0 0 -0.99999994 0 0 -0.99999994
		 0 0 -0.99999994 0 1 0 0 1 0 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -0.57734579
		 -0.57733607 0.57736886 -0.57734579 -0.57733613 0.57736886 -0.57734585 -0.57733607
		 0.57736892 0.57734585 -0.57733607 0.57736892 0.57734579 -0.57733613 0.57736886 0.57734579
		 -0.57733607 0.57736886 -0.57734585 0.57733607 0.57736892 -0.57734579 0.57733613 0.57736886
		 -0.57734579 0.57733607 0.57736886 0.57734579 0.57733607 0.57736886 0.57734579 0.57733613
		 0.57736886 0.57734585 0.57733607 0.57736892 -0.57734525 0.57733673 -0.57736886 -0.57734531
		 0.57733667 -0.57736886 -0.57734525 0.57733667 -0.57736886 0.57734525 0.57733667 -0.57736886
		 0.57734531 0.57733667 -0.57736886 0.57734525 0.57733673 -0.57736886 -0.57734525 -0.57733673
		 -0.57736886 -0.57734525 -0.57733667 -0.57736886 -0.57734531 -0.57733667 -0.57736886
		 0.57734531 -0.57733667 -0.57736886 0.57734525 -0.57733667 -0.57736886 0.57734525
		 -0.57733673 -0.57736886 -1.6052727e-05 0.7067222 0.70749116 -1.6135782e-05 0.70672214
		 0.7074911 0.0030591246 0.70646971 0.70773667 0.0030591248 0.70646971 0.70773667 -1.6135782e-05
		 0.70672214 0.7074911 -1.6052727e-05 0.7067222 0.70749116 -0.0030926226 0.70696813
		 0.70723867 -0.0030926224 0.70696813 0.70723867 -0.70943606 0.70365047 -0.039704069
		 -0.70943606 0.70365047 -0.039704069 -0.70943612 0.70365059 -0.039704073 -0.70943606
		 0.70365053 -0.039704073 -0.71013618 9.0233458e-05 0.70406437 -0.71013623 9.0233458e-05
		 0.70406443 -0.71013618 9.0233458e-05 0.70406437 -0.71013623 9.023345e-05 0.70406443
		 0.70958704 8.780678e-05 0.70461786 0.70958698 8.7806788e-05 0.7046178 0.70958698
		 8.780678e-05 0.70461774 0.70958704 8.780678e-05 0.7046178 0.70949227 0.70359373 -0.039707191
		 0.70949221 0.70359373 -0.039707188 0.70949221 0.70359373 -0.039707191 0.70949221
		 0.70359373 -0.039707188 -0.69825548 -0.71477073 -0.039271157 -0.69825542 -0.71477073
		 -0.039271157 -0.69834077 -0.71470571 -0.038937233 -0.69833541 -0.71470964 -0.038958021
		 -0.39200881 -0.71997768 0.57267892 -0.39200881 -0.71997768 0.57267892 -0.00047180735
		 -0.78285062 0.62220955 -0.38997197 -0.71960646 0.57453328 -0.69833541 -0.71470964
		 -0.038958021 -0.69834077 -0.71470571 -0.038937233 -0.70754021 -0.70667267 -0.0006791465
		 -0.70754021 -0.70667273 -0.0006791465 0.38878372 -0.72165912 0.57276124 -0.00047180735
		 -0.78285062 0.62220955 0.39093533 -0.72202122 0.57083708 0.39093536 -0.72202116 0.57083708
		 -0.5537883 6.4318483e-05 0.83265752 0.55387682 -6.4328764e-05 0.83259863 0.5537796
		 -6.4317472e-05 0.83266324 -0.55388552 6.4329775e-05 0.83259284 0.69825542 -0.71477073
		 -0.039271157 0.69825548 -0.71477073 -0.039271157 0.69833541 -0.71470964 -0.038958021
		 0.69834077 -0.71470571 -0.038937233 -0.39094102 0.72201157 0.57084531 -0.39094099
		 0.72201157 0.57084525 -0.38878903 0.72164887 0.57277042 0.00047492248 0.78292894
		 0.62211102 0.00047492248 0.78292894 0.62211102 0.39004537 0.71973407 0.57432348 0.39208302
		 0.72010624 0.57246649 0.39208305 0.72010624 0.57246649 -0.70792383 -0.70628881 0.00020078171
		 -0.70792383 -0.70628875 0.00020078172 -0.70792377 -0.70628881 0.00020078171 -0.70792389
		 -0.70628881 0.00020078174 0.70783693 -0.70637584 0.00020163137 0.70783699 -0.70637578
		 0.00020163138 0.70783699 -0.70637584 0.00020163137 0.70783699 -0.70637584 0.00020163138
		 -0.70665306 -9.3963052e-07 -0.70756018 -0.70665288 -1.3547001e-06 -0.70756036 -0.70669955
		 1.341738e-05 -0.70751375 -0.70669782 1.3383011e-05 -0.7075156 -0.70665288 -1.3547001e-06
		 -0.70756036 -0.70665306 -9.3963052e-07 -0.70756018 -0.70642853 -0.00050026417 -0.7077843
		 -0.70642847 -0.00050026417 -0.7077843 -0.70669782 1.3383011e-05 -0.7075156 -0.70669955
		 1.341738e-05 -0.70751375 -0.70792198 3.6602771e-05 -0.7062906 -0.70792198 3.6602774e-05
		 -0.70629072 -0.0046479278 -0.70703816 -0.70716023 -0.0046479269 -0.70703816 -0.70716017
		 1.4291032e-07 -0.70704579 -0.7071678 1.4270664e-07 -0.70704573 -0.7071678 0.706653
		 -1.3602443e-06 -0.7075603 0.70665312 -9.4508215e-07 -0.70756012 0.70669782 1.3379056e-05
		 -0.7075156 0.70669967 1.3413355e-05 -0.70751375 0.70665312 -9.4508215e-07 -0.70756012
		 0.706653 -1.3602443e-06 -0.7075603 0.70643032 -0.00050037832 -0.70778239 0.70643038
		 -0.00050037837 -0.70778245;
	setAttr ".n[332:497]" -type "float3"  0.70669967 1.3413355e-05 -0.70751375
		 0.70669782 1.3379056e-05 -0.7075156 0.7079221 3.6552363e-05 -0.70629042 0.7079221
		 3.6552367e-05 -0.70629054 0.0046482133 -0.70703816 -0.70716017 0.0046482128 -0.7070381
		 -0.70716012 1.4270664e-07 -0.70704573 -0.7071678 1.4291032e-07 -0.70704579 -0.7071678
		 0.70754021 -0.70667273 -0.0006791465 0.70754021 -0.70667267 -0.0006791465 0.69834077
		 -0.71470571 -0.038937233 0.69833541 -0.71470964 -0.038958021 0.0015594302 -0.70701224
		 0.70719963 0.0015594302 -0.70701218 0.70719969 6.878312e-06 -0.7070154 0.70719802
		 6.8763061e-06 -0.70701551 0.70719808 0.7072528 -1.7554646e-06 0.70696068 0.70725292
		 -1.7554648e-06 0.70696074 0.7072528 -1.7554645e-06 0.70696068 0.7072528 -1.7554646e-06
		 0.70696068 -0.70735949 1.5220874e-05 0.70685387 -0.70735949 1.5220873e-05 0.70685387
		 -0.70735955 1.5220876e-05 0.70685393 -0.70735961 1.5220877e-05 0.70685399 -0.0015460458
		 -0.70701712 0.70719469 -0.0015460459 -0.70701718 0.70719475 6.8763061e-06 -0.70701551
		 0.70719808 6.878312e-06 -0.7070154 0.70719802 0.0046479278 0.70703816 -0.70716023
		 0.0046479269 0.70703816 -0.70716017 -1.4291032e-07 0.70704579 -0.7071678 -1.4270664e-07
		 0.70704573 -0.7071678 0.70794481 0.70626765 -0.00020924317 0.70794493 0.70626765
		 -0.00020924318 0.70778066 0.70643222 0.00019702554 0.70778066 0.70643222 0.00019697071
		 0.70778066 0.70643222 0.00019697071 0.70778066 0.70643222 0.00019702554 0.70777863
		 0.70643419 0.00020194707 0.70777869 0.70643431 0.00020194708 0.0015592043 0.70692831
		 0.70728344 0.0015592044 0.70692831 0.70728344 -2.0554834e-08 0.70692927 0.70728433
		 -2.050384e-08 0.70692921 0.70728433 -0.0046482133 0.70703816 -0.70716017 -0.0046482128
		 0.7070381 -0.70716012 -1.4270664e-07 0.70704573 -0.7071678 -1.4291032e-07 0.70704579
		 -0.7071678 -0.70794481 0.70626765 -0.00019790235 -0.70794487 0.7062676 -0.00019790237
		 -0.70778191 0.70643103 0.00019722634 -0.70778191 0.70643103 0.00019727967 -0.70778191
		 0.70643103 0.00019727967 -0.70778191 0.70643103 0.00019722634 -0.70777994 0.70643306
		 0.00020206693 -0.70777994 0.706433 0.00020206693 -0.0015592453 0.70692831 0.70728344
		 -0.0015592453 0.70692831 0.70728344 -2.050384e-08 0.70692921 0.70728433 -2.0554834e-08
		 0.70692927 0.70728433 -0.56440562 6.5551605e-05 0.82549769 -0.5537883 6.4318483e-05
		 0.83265752 -0.55388552 6.4329775e-05 0.83259284 -0.56440562 6.5551605e-05 0.82549763
		 -0.00089650304 0.99999958 0.00016052842 2.6136673e-10 1 0.00016052819 4.0093919e-09
		 1 0.0001605282 -0.00089650298 0.99999952 0.00016052841 -0.0032884202 1.6220438e-08
		 -0.99999464 -3.881107e-09 1.6221962e-08 -1 -1.5435401e-07 6.186589e-08 -1 -0.0032881112
		 6.1824743e-08 -0.99999458 -0.001293133 -0.99999917 0.00010739328 0 -1 0.00010728673
		 0 -1 0.00010786292 -0.0012813328 -0.99999928 0.00010786283 0.99842066 -0.0013712499
		 -0.056163583 0.99844611 -0.0013727957 -0.055709679 0.9984591 -0.0013735915 -0.055475958
		 0.99842072 -0.00137125 -0.056163587 -0.99844611 -0.0013726375 -0.055709727 -0.99842066
		 -0.0013710893 -0.056163631 -0.99842072 -0.0013710895 -0.056163631 -0.99845904 -0.0013734344
		 -0.055475987 -0.99998802 -0.0015447366 -0.0046475763 -0.99844611 -0.0013726375 -0.055709727
		 -0.99845904 -0.0013734344 -0.055475987 -0.99999034 -5.824574e-05 -0.0043948311 -0.99999034
		 -2.5775358e-05 -0.0043893098 -0.003280113 -0.99999458 2.8331078e-05 0 -1 1.4165616e-05
		 0 -1 0.00010728673 -0.001293133 -0.99999917 0.00010739328 -0.0022068906 0.99999744
		 0.00027603286 1.1674373e-10 1 0.00027607736 0 1 -1.5587326e-05 -0.0032801623 0.9999947
		 -3.1174488e-05 -0.0027403652 3.5189343e-05 0.99999624 -0.002740365 3.5189343e-05
		 0.99999619 -3.4046528e-07 3.5184949e-05 1 -2.4641813e-07 3.5184949e-05 1 0.99999982
		 1.2850965e-06 -0.00057541276 0.99999034 -5.82475e-05 -0.0043943017 0.99999028 -2.5777006e-05
		 -0.0043887729 0.99999082 3.5151934e-05 -0.0042914776 3.1095639e-09 -1.6582777e-09
		 -1 -3.881107e-09 1.6221962e-08 -1 -0.0032884202 1.6220438e-08 -0.99999464 -0.0032884274
		 -1.6562641e-09 -0.99999464 -0.99999034 -2.5775358e-05 -0.0043893098 -0.99999034 -5.824574e-05
		 -0.0043948311 -0.99999982 1.4922236e-06 -0.00057551166 -0.99999076 3.5154353e-05
		 -0.0042920182 -0.99999076 3.5154353e-05 -0.0042920182 -0.99999982 1.4922236e-06 -0.00057551166
		 -1 -4.9554806e-06 0.00013574499 -1 -1.9972492e-07 0 9.2469172e-08 -5.1511296e-07
		 -1 3.1095639e-09 -1.6582777e-09 -1 -0.0032884274 -1.6562641e-09 -0.99999464 -0.0032883838
		 -5.1507851e-07 -0.9999947 0.99999982 1.2850965e-06 -0.00057541276 0.99999082 3.5151934e-05
		 -0.0042914776 1 -9.4893082e-08 0 1 -5.2021919e-06 0.00013574499 -0.0010977407 2.0992736e-08
		 0.9999994 -1.0791211e-07 1.0496619e-08 0.99999994 -1.0034496e-07 1.0496548e-08 1
		 -0.0010977407 2.0992738e-08 0.9999994 -0.0021940235 -0.99999756 0.00027984841 2.1769878e-10
		 -0.99999994 0.00027981744 -1.0769782e-08 -0.99999994 0.00027981741 -0.0021940232
		 -0.99999756 0.00027984841 0.99999982 1.2850965e-06 -0.00057541276 1 -5.2021919e-06
		 0.00013574499 1 -5.2499108e-06 0.0001370133 1 -5.2499104e-06 0.0001370133 1.4556818e-10
		 0.99999994 0.00027969389 1.1674373e-10 1 0.00027607736 -0.0022068906 0.99999744 0.00027603286
		 -0.0021935855 0.99999756 0.0002798413 -1 -4.9554806e-06 0.00013574499 -0.99999982
		 1.4922236e-06 -0.00057551166 -1 -4.9999153e-06 0.0001370133 -0.99999994 -4.9999153e-06
		 0.0001370133 4.0093919e-09 1 0.0001605282 2.6136673e-10 1 0.00016052819 0.00089650071
		 0.99999958 0.00016052779 0.00089650066 0.99999952 0.00016052779 -2.4641813e-07 3.5184949e-05
		 1 -3.4046528e-07 3.5184949e-05 1 0.0027400206 3.5180285e-05 0.99999619 0.0027400209
		 3.5180288e-05 0.99999624 -1.0769782e-08 -0.99999994 0.00027981741 2.1769878e-10 -0.99999994
		 0.00027981744 0.002194043 -0.99999756 0.0002797851 0.002194043 -0.99999756 0.0002797851
		 -1.0034496e-07 1.0496548e-08 1 -1.0791211e-07 1.0496619e-08 0.99999994 0.0010975761
		 0 0.99999934 0.0010975761 0 0.99999934 0.0022068911 0.99999744 0.00027612213 1.1674373e-10
		 1 0.00027607736 1.4556818e-10 0.99999994 0.00027969389 0.002193586 0.99999756 0.00027954514
		 0 1 -1.5587326e-05;
	setAttr ".n[498:567]" -type "float3"  1.1674373e-10 1 0.00027607736 0.0022068911
		 0.99999744 0.00027612213 0.0032801623 0.9999947 0 0.0032884337 -1.6581564e-09 -0.99999458
		 3.1095639e-09 -1.6582777e-09 -1 9.2469172e-08 -5.1511296e-07 -1 0.0032885871 -5.1514189e-07
		 -0.99999464 0.0032884132 1.6222636e-08 -0.99999458 -3.881107e-09 1.6221962e-08 -1
		 3.1095639e-09 -1.6582777e-09 -1 0.0032884337 -1.6581564e-09 -0.99999458 -1.5435401e-07
		 6.186589e-08 -1 -3.881107e-09 1.6221962e-08 -1 0.0032884132 1.6222636e-08 -0.99999458
		 0.0032878267 6.1906377e-08 -0.99999458 0 -1 0.00010728673 0 -1 1.4165616e-05 0.003280113
		 -0.99999458 0 0.001293133 -0.99999917 0.00010722603 0 -1 0.00010786292 0 -1 0.00010728673
		 0.001293133 -0.99999917 0.00010722603 0.0012813328 -0.99999928 0.00010786283 0.5537796
		 -6.4317472e-05 0.83266324 0.55387682 -6.4328764e-05 0.83259863 0.56439668 -6.5550565e-05
		 0.82550377 0.56439668 -6.5550565e-05 0.82550377 0.99999034 -5.82475e-05 -0.0043943017
		 0.9984591 -0.0013735915 -0.055475958 0.99844611 -0.0013727957 -0.055709679 0.99998796
		 -0.0015446349 -0.0046473597 0.99999028 -2.5777006e-05 -0.0043887729 -0.83203751 0.41506484
		 0.36801454 -0.83203757 0.4150649 0.3680146 -0.83203751 0.41506484 0.36801454 -0.83203751
		 0.41506481 0.36801457 0.83182216 0.41559562 0.36790252 0.83182216 0.41559568 0.36790255
		 0.83182204 0.41559559 0.36790249 0.83182204 0.41559562 0.36790252 0.38878372 -0.72165912
		 0.57276124 -0.38997197 -0.71960646 0.57453328 -0.00047180735 -0.78285062 0.62220955
		 -0.38878903 0.72164887 0.57277042 0.39004537 0.71973407 0.57432348 0.00047492248
		 0.78292894 0.62211102 -0.57850885 -0.5766263 -0.57691401 -0.57850879 -0.5766263 -0.57691401
		 -0.57850879 -0.57662624 -0.57691401 0.57850885 -0.57662624 -0.57691395 0.57850885
		 -0.57662624 -0.57691407 0.57850879 -0.57662624 -0.57691395 0.57784098 -0.57712919
		 0.57708031 0.57784098 -0.57712913 0.57708031 0.57784104 -0.57712907 0.57708037 -0.57804364
		 -0.57680571 0.57720083 -0.57804358 -0.57680565 0.57720083 -0.57804364 -0.57680565
		 0.57720083 0.57850885 0.5766263 -0.57691401 0.57850879 0.5766263 -0.57691401 0.57850879
		 0.57662624 -0.57691401 0.57778925 0.57711858 0.57714278 0.57778925 0.57711858 0.57714272
		 0.57778925 0.57711858 0.57714266 -0.57850885 0.57662624 -0.57691395 -0.57850885 0.57662624
		 -0.57691407 -0.57850879 0.57662624 -0.57691395 -0.57781661 0.57710487 0.57712907
		 -0.57781667 0.57710481 0.57712901 -0.57781667 0.57710487 0.57712907;
	setAttr -s 144 -ch 568 ".fc[0:143]" -type "polyFaces" 
		f 7 0 1 2 3 4 5 6
		mu 0 7 0 1 2 3 4 5 6
		f 7 7 8 9 10 11 12 13
		mu 0 7 7 8 9 10 11 12 13
		f 4 14 15 16 17
		mu 0 4 14 15 16 17
		f 4 -15 18 19 20
		mu 0 4 18 19 20 21
		f 4 21 22 23 24
		mu 0 4 21 22 23 24
		f 4 25 26 27 28
		mu 0 4 25 20 26 27
		f 4 29 30 -17 31
		mu 0 4 28 29 30 31
		f 4 -30 32 -1 33
		mu 0 4 32 33 1 34
		f 4 34 35 36 37
		mu 0 4 35 36 37 38
		f 4 -35 38 -3 39
		mu 0 4 39 40 41 2
		f 4 40 41 42 43
		mu 0 4 38 42 43 44
		f 4 -28 44 45 46
		mu 0 4 45 26 5 46
		f 4 -43 47 -13 48
		mu 0 4 47 48 13 49
		f 4 49 50 51 52
		mu 0 4 50 51 52 53
		f 4 -50 53 -8 54
		mu 0 4 54 55 56 7
		f 4 -24 55 -52 56
		mu 0 4 57 58 59 60
		f 4 57 -40 -2 -33
		mu 0 4 33 39 2 1
		f 4 58 -27 -19 59
		mu 0 4 61 26 20 19
		f 4 60 -36 -58 -32
		mu 0 4 31 37 36 28
		f 5 -38 61 62 -4 -39
		mu 0 5 40 62 63 64 41
		f 4 -31 -34 -7 63
		mu 0 4 17 32 34 65
		f 4 -6 -45 -59 64
		mu 0 4 6 5 26 61
		f 4 -18 -64 -65 -60
		mu 0 4 14 17 65 66
		f 5 -21 65 66 -61 -16
		mu 0 5 18 21 67 37 31
		f 4 -55 -14 -48 67
		mu 0 4 54 7 13 48
		f 4 68 -23 -29 69
		mu 0 4 68 23 22 69
		f 4 -51 -68 -42 70
		mu 0 4 52 51 43 42
		f 5 -49 -12 -63 -62 -44
		mu 0 5 47 49 70 63 62
		f 4 71 -9 -54 -53
		mu 0 4 59 71 56 55
		f 4 72 -70 -47 -10
		mu 0 4 9 68 69 10
		f 4 -69 -73 -72 -56
		mu 0 4 58 72 71 59
		f 5 -57 -71 73 -66 -25
		mu 0 5 24 52 42 67 21
		f 3 -20 -26 -22
		mu 0 3 21 20 25
		f 4 -37 -67 -74 -41
		mu 0 4 38 37 67 73
		f 3 -46 -5 -11
		mu 0 3 74 75 64
		f 4 74 75 76 77
		mu 0 4 76 77 78 104
		f 4 78 79 80 81
		mu 0 4 80 79 111 99
		f 4 82 83 84 85
		mu 0 4 108 80 87 109
		f 4 86 87 88 89
		mu 0 4 81 82 98 83
		f 4 90 91 92 93
		mu 0 4 99 84 112 88
		f 4 94 95 96 97
		mu 0 4 85 100 92 86
		f 4 98 99 100 101
		mu 0 4 100 87 88 101
		f 4 102 103 104 105
		mu 0 4 101 89 113 93
		f 4 106 107 108 109
		mu 0 4 90 102 96 91
		f 4 110 111 112 113
		mu 0 4 102 92 93 103
		f 4 114 115 116 117
		mu 0 4 103 94 95 97
		f 4 118 119 120 121
		mu 0 4 104 96 97 98
		f 4 -82 -94 -100 -84
		mu 0 4 80 99 88 87
		f 4 -102 -106 -112 -96
		mu 0 4 100 101 93 92
		f 4 -114 -118 -120 -108
		mu 0 4 102 103 97 96
		f 4 -122 -88 -80 -78
		mu 0 4 104 98 82 76
		f 4 -90 -116 -104 -92
		mu 0 4 84 105 106 112
		f 4 -76 -86 -98 -110
		mu 0 4 107 108 109 110
		f 3 -79 -83 -75
		mu 0 3 79 80 108
		f 3 -91 -81 -87
		mu 0 3 84 99 111
		f 3 -85 -99 -95
		mu 0 3 109 87 100
		f 3 -101 -93 -103
		mu 0 3 101 88 112
		f 3 -97 -111 -107
		mu 0 3 86 92 102
		f 3 -113 -105 -115
		mu 0 3 103 93 113
		f 3 -109 -119 -77
		mu 0 3 91 96 104
		f 3 -121 -117 -89
		mu 0 3 98 97 95
		f 4 122 123 124 125
		mu 0 4 170 189 114 190
		f 4 -123 126 127 128
		mu 0 4 189 170 116 156
		f 4 129 130 131 132
		mu 0 4 156 115 153 154
		f 4 133 134 135 136
		mu 0 4 215 116 183 176
		f 4 137 138 139 140
		mu 0 4 190 171 184 191
		f 4 141 142 143 144
		mu 0 4 212 117 118 160
		f 4 145 146 147 148
		mu 0 4 119 120 121 158
		f 4 -146 149 150 151
		mu 0 4 161 122 218 152
		f 4 -148 152 153 154
		mu 0 4 123 163 124 125
		f 4 155 156 157 158
		mu 0 4 126 209 127 128
		f 4 159 160 161 162
		mu 0 4 152 129 133 132
		f 4 -158 163 164 165
		mu 0 4 211 130 131 159
		f 4 -132 166 167 168
		mu 0 4 154 153 132 155
		f 4 169 170 -144 171
		mu 0 4 155 133 160 134
		f 4 -136 172 173 174
		mu 0 4 176 183 144 188
		f 4 -140 175 176 177
		mu 0 4 191 184 143 194
		f 4 178 179 180 181
		mu 0 4 157 135 136 173
		f 4 -179 182 183 184
		mu 0 4 137 157 139 138
		f 4 -181 185 186 187
		mu 0 4 173 175 149 178
		f 4 188 189 190 191
		mu 0 4 166 139 204 167
		f 4 192 193 194 195
		mu 0 4 140 202 201 172
		f 4 -193 196 197 198
		mu 0 4 202 140 219 206
		f 4 -195 199 200 201
		mu 0 4 172 201 145 179
		f 4 202 203 -191 204
		mu 0 4 206 207 167 204
		f 4 205 206 -165 207
		mu 0 4 207 141 142 208
		f 4 208 209 210 211
		mu 0 4 194 196 182 192
		f 4 212 213 214 215
		mu 0 4 196 143 147 197
		f 4 216 217 218 219
		mu 0 4 188 181 151 150
		f 4 220 221 -211 222
		mu 0 4 181 144 192 182
		f 4 223 224 225 226
		mu 0 4 146 145 177 199
		f 4 227 228 229 230
		mu 0 4 179 146 198 180
		f 4 -230 231 232 233
		mu 0 4 180 198 148 147
		f 4 234 235 236 237
		mu 0 4 197 148 185 195
		f 4 238 239 -226 240
		mu 0 4 178 169 199 177
		f 4 241 242 243 244
		mu 0 4 169 149 187 168
		f 4 -244 245 246 247
		mu 0 4 168 187 150 186
		f 4 248 249 -237 250
		mu 0 4 186 151 195 185
		f 4 -152 -163 -167 251
		mu 0 4 161 152 132 153
		f 4 -169 252 -129 -133
		mu 0 4 154 155 189 156
		f 4 253 254 -190 -183
		mu 0 4 157 205 204 139
		f 4 255 256 -150 -149
		mu 0 4 158 210 209 119
		f 4 -166 257 -145 258
		mu 0 4 211 159 212 160
		f 4 -147 -252 -131 259
		mu 0 4 163 161 153 162
		f 5 -153 -260 260 261 -185
		mu 0 5 124 163 162 164 165
		f 4 -192 262 -256 -155
		mu 0 4 166 167 210 158
		f 4 263 264 -240 -245
		mu 0 4 168 200 199 169
		f 4 -135 -127 265 266
		mu 0 4 183 116 170 193
		f 4 -139 267 -196 268
		mu 0 4 184 171 140 172
		f 4 269 -254 -182 270
		mu 0 4 203 205 157 173
		f 4 -262 -137 271 -180
		mu 0 4 174 215 176 175
		f 4 -272 272 -243 -186
		mu 0 4 175 176 187 149
		f 4 273 -271 -188 -241
		mu 0 4 177 203 173 178
		f 4 -269 -202 -231 274
		mu 0 4 184 172 179 180
		f 4 -223 275 -250 -218
		mu 0 4 181 182 195 151
		f 4 -267 276 -222 -173
		mu 0 4 183 193 192 144
		f 4 -275 -234 -214 -176
		mu 0 4 184 180 147 143
		f 4 277 -264 -248 -251
		mu 0 4 185 200 168 186
		f 4 -273 -175 -220 -246
		mu 0 4 187 176 188 150
		f 4 -253 -172 -143 -124
		mu 0 4 189 155 134 114
		f 4 -266 -126 -141 278
		mu 0 4 193 170 190 191
		f 4 -277 -279 -178 -212
		mu 0 4 192 193 191 194
		f 4 -276 -210 -216 -238
		mu 0 4 195 182 196 197
		f 4 279 -278 -236 -232
		mu 0 4 198 200 185 148
		f 4 -265 -280 -229 -227
		mu 0 4 199 200 198 146
		f 4 280 -274 -225 -200
		mu 0 4 201 203 177 145
		f 4 281 -270 -281 -194
		mu 0 4 202 205 203 201
		f 4 -255 -282 -199 -205
		mu 0 4 204 205 202 206
		f 4 -263 -204 -208 282
		mu 0 4 210 167 207 208
		f 4 -257 -283 -164 -157
		mu 0 4 209 210 208 127
		f 4 -161 -159 -259 -171
		mu 0 4 133 129 211 160
		f 5 283 -258 -207 -197 -268
		mu 0 5 216 212 159 213 214
		f 4 -261 -130 -128 -134
		mu 0 4 215 115 156 116
		f 4 -138 -125 -142 -284
		mu 0 4 216 217 117 212
		f 3 -160 -151 -156
		mu 0 3 129 152 218
		f 3 -162 -170 -168
		mu 0 3 132 133 155
		f 3 -154 -184 -189
		mu 0 3 166 138 139
		f 3 -198 -206 -203
		mu 0 3 206 219 207
		f 3 -177 -213 -209
		mu 0 3 194 143 196
		f 3 -174 -221 -217
		mu 0 3 188 144 181
		f 3 -228 -201 -224
		mu 0 3 146 179 145
		f 3 -215 -233 -235
		mu 0 3 197 147 148
		f 3 -187 -242 -239
		mu 0 3 178 149 169
		f 3 -247 -219 -249
		mu 0 3 186 150 151;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "GrapplingHook_MDL";
	rename -uid "0A1FF5F6-4643-B9C9-7B04-619D714FAF33";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".t" -type "double3" -40 0 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "GrapplingHook_MDLShape" -p "GrapplingHook_MDL";
	rename -uid "EC42015B-48EA-C5E9-1B9C-148A6F61C7A2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 423 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.43669021 0.92306632 0.41849291
		 0.92972374 0.42073828 0.89726031 0.42944539 0.89581561 0.46926439 0.92879081 0.38282049
		 0.93952304 0.65961999 0.96677727 0.19211099 0.98005146 0.70861685 0.97521931 0.1372135
		 0.987252 0.86357522 0.84076369 0.084882319 0.67287886 0.057178613 0.57507086 0.088699579
		 0.57449436 0.054315265 0.37858871 0.085623324 0.37824371 0.054528113 0.35704324 0.084812284
		 0.3569338 0.048929986 0.01222807 0.23069119 0.6914959 0.40184307 0.91747946 0.37493655
		 0.92457783 0.04963994 0.82949662 0.11282578 0.57244575 0.11574939 0.58066082 0.39906871
		 0.88722694 0.18530101 0.96836174 0.14030251 0.96302199 0.45096445 0.90962851 0.47669905
		 0.91338623 0.6664843 0.95493317 0.71087849 0.95220447 0.047164615 0.62547207 0.80633569
		 0.85855782 0.033010121 0.57377946 0.44839573 0.8813498 0.24395543 0.020736396 0.25026369
		 0.019870728 0.36818171 0.90281034 0.10837647 0.027788369 0.17116025 0.94737613 0.11151499
		 0.35606435 0.42613024 0.47864509 0.15312994 0.022993445 0.17369375 0.67437279 0.48225597
		 0.89073336 0.02782869 0.35706964 0.68150979 0.93404722 0.027771708 0.38918051 0.70961094
		 0.92862892 0.14713019 0.93966258 0.11248076 0.38803986 0.021541592 0.029216824 0.19969487
		 0.69226635 0.25577146 0.67233312 0.080519617 0.011622427 0.16739982 0.67614627 0.14678642
		 0.022442222 0.32887721 0.49040222 0.26214573 0.67379159 0.11684865 0.39002702 0.073601872
		 0.84498489 0.030338224 0.58209431 0.023465987 0.3913053 0.1172106 0.3441129 0.021791991
		 0.34529397 0.019730087 0.022887943 0.11000535 0.021399198 0.83340085 0.85065174 0.06432724
		 0.67335081 0.10040912 0.62450135 0.87185055 0.85062021 0.023483425 0.81153697 0.71408141
		 0.98641229 0.65728432 0.97929096 0.46758112 0.93557328 0.43178698 0.92800313 0.35311654
		 0.49882469 0.40443951 0.49262303 0.17776188 0.021963894 0.18313029 0.025705248 0.21412671
		 0.024934947 0.38459253 0.51406151 0.37728953 0.51496959 0.33934504 0.48904902 0.21930262
		 0.020931542 0.41562307 0.47982788 0.43669021 0.92306632 0.43178698 0.92800313 0.42073828
		 0.89726031 0.42944539 0.89581561 0.46926439 0.92879081 0.46758112 0.93557328 0.65961999
		 0.96677727 0.65728432 0.97929096 0.70861685 0.97521931 0.71408141 0.98641229 0.86357522
		 0.84076369 0.87185055 0.85062021 0.084882319 0.67287886 0.06432724 0.67335081 0.057178613
		 0.57507086 0.088699579 0.57449436 0.054315265 0.37858871 0.085623324 0.37824371 0.054528113
		 0.35704324 0.084812284 0.3569338 0.048929986 0.01222807 0.080519617 0.011622427 0.23069119
		 0.6914959 0.19969487 0.69226635 0.18313029 0.025705248 0.21412671 0.024934947 0.40184307
		 0.91747946 0.41849291 0.92972374 0.38282049 0.93952304 0.37493655 0.92457783 0.10040912
		 0.62450135 0.11282578 0.57244575 0.11574939 0.58066082 0.39906871 0.88722694 0.19211099
		 0.98005146 0.18530101 0.96836174 0.1372135 0.987252 0.14030251 0.96302199 0.023483425
		 0.81153697 0.04963994 0.82949662 0.45096445 0.90962851 0.47669905 0.91338623 0.6664843
		 0.95493317 0.71087849 0.95220447 0.83340085 0.85065174 0.047164615 0.62547207 0.030338224
		 0.58209431 0.033010121 0.57377946 0.38459253 0.51406151 0.40443951 0.49262303 0.44839573
		 0.8813498 0.24395543 0.020736396 0.25026369 0.019870728 0.26214573 0.67379159 0.25577146
		 0.67233312 0.10837647 0.027788369 0.11000535 0.021399198 0.1172106 0.3441129 0.11151499
		 0.35606435 0.14678642 0.022442222 0.15312994 0.022993445 0.17369375 0.67437279 0.16739982
		 0.67614627 0.019730087 0.022887943 0.021541592 0.029216824 0.02782869 0.35706964
		 0.021791991 0.34529397 0.027771708 0.38918051 0.023465987 0.3913053 0.11684865 0.39002702
		 0.11248076 0.38803986 0.48225597 0.89073336 0.36818171 0.90281034 0.41562307 0.47982788
		 0.42613024 0.47864509 0.68150979 0.93404722 0.17116025 0.94737613 0.70961094 0.92862892
		 0.14713019 0.93966258 0.80633569 0.85855782 0.073601872 0.84498489 0.21930262 0.020931542
		 0.37728953 0.51496959 0.35311654 0.49882469 0.33934504 0.48904902 0.32887721 0.49040222
		 0.17776188 0.021963894 0.43669021 0.92306632 0.43178698 0.92800313 0.42073828 0.89726031
		 0.42944539 0.89581561 0.46926439 0.92879081 0.46758112 0.93557328 0.65961999 0.96677727
		 0.65728432 0.97929096 0.70861685 0.97521931 0.71408141 0.98641229 0.86357522 0.84076369
		 0.87185055 0.85062021 0.084882319 0.67287886 0.06432724 0.67335081 0.057178613 0.57507086
		 0.088699579 0.57449436 0.054315265 0.37858871 0.085623324 0.37824371 0.054528113
		 0.35704324 0.084812284 0.3569338 0.048929986 0.01222807 0.080519617 0.011622427 0.23069119
		 0.6914959 0.19969487 0.69226635 0.18313029 0.025705248 0.21412671 0.024934947 0.40184307
		 0.91747946 0.41849291 0.92972374 0.38282049 0.93952304 0.37493655 0.92457783 0.10040912
		 0.62450135 0.11282578 0.57244575 0.11574939 0.58066082 0.39906871 0.88722694 0.19211099
		 0.98005146 0.18530101 0.96836174 0.1372135 0.987252 0.14030251 0.96302199 0.023483425
		 0.81153697 0.04963994 0.82949662 0.45096445 0.90962851 0.47669905 0.91338623 0.6664843
		 0.95493317 0.71087849 0.95220447 0.83340085 0.85065174 0.047164615 0.62547207 0.030338224
		 0.58209431 0.033010121 0.57377946 0.38459253 0.51406151 0.40443951 0.49262303 0.44839573
		 0.8813498 0.24395543 0.020736396 0.25026369 0.019870728 0.26214573 0.67379159 0.25577146
		 0.67233312 0.10837647 0.027788369 0.11000535 0.021399198 0.1172106 0.3441129 0.11151499
		 0.35606435 0.14678642 0.022442222 0.15312994 0.022993445 0.17369375 0.67437279 0.16739982
		 0.67614627 0.019730087 0.022887943 0.021541592 0.029216824 0.02782869 0.35706964
		 0.021791991 0.34529397 0.027771708 0.38918051 0.023465987 0.3913053 0.11684865 0.39002702
		 0.11248076 0.38803986 0.48225597 0.89073336 0.36818171 0.90281034 0.41562307 0.47982788
		 0.42613024 0.47864509 0.68150979 0.93404722;
	setAttr ".uvst[0].uvsp[250:422]" 0.17116025 0.94737613 0.70961094 0.92862892
		 0.14713019 0.93966258 0.80633569 0.85855782 0.073601872 0.84498489 0.21930262 0.020931542
		 0.37728953 0.51496959 0.35311654 0.49882469 0.33934504 0.48904902 0.32887721 0.49040222
		 0.17776188 0.021963894 0.43669021 0.92306632 0.42944539 0.89581561 0.42073828 0.89726031
		 0.43178698 0.92800313 0.46758112 0.93557328 0.46926439 0.92879081 0.65728432 0.97929096
		 0.65961999 0.96677727 0.71408141 0.98641229 0.70861685 0.97521931 0.87185055 0.85062021
		 0.86357522 0.84076369 0.084882319 0.67287886 0.088699579 0.57449436 0.057178613 0.57507086
		 0.06432724 0.67335081 0.085623324 0.37824371 0.054315265 0.37858871 0.084812284 0.3569338
		 0.054528113 0.35704324 0.080519617 0.011622427 0.048929986 0.01222807 0.23069119
		 0.6914959 0.21412671 0.024934947 0.18313029 0.025705248 0.19969487 0.69226635 0.40184307
		 0.91747946 0.37493655 0.92457783 0.38282049 0.93952304 0.41849291 0.92972374 0.10040912
		 0.62450135 0.11574939 0.58066082 0.11282578 0.57244575 0.39906871 0.88722694 0.18530101
		 0.96836174 0.19211099 0.98005146 0.14030251 0.96302199 0.1372135 0.987252 0.04963994
		 0.82949662 0.023483425 0.81153697 0.47669905 0.91338623 0.45096445 0.90962851 0.6664843
		 0.95493317 0.71087849 0.95220447 0.83340085 0.85065174 0.033010121 0.57377946 0.030338224
		 0.58209431 0.047164615 0.62547207 0.44839573 0.8813498 0.40443951 0.49262303 0.38459253
		 0.51406151 0.24395543 0.020736396 0.25577146 0.67233312 0.26214573 0.67379159 0.25026369
		 0.019870728 0.10837647 0.027788369 0.11151499 0.35606435 0.1172106 0.3441129 0.11000535
		 0.021399198 0.14678642 0.022442222 0.16739982 0.67614627 0.17369375 0.67437279 0.15312994
		 0.022993445 0.019730087 0.022887943 0.021791991 0.34529397 0.02782869 0.35706964
		 0.021541592 0.029216824 0.023465987 0.3913053 0.027771708 0.38918051 0.11248076 0.38803986
		 0.11684865 0.39002702 0.48225597 0.89073336 0.36818171 0.90281034 0.42613024 0.47864509
		 0.41562307 0.47982788 0.68150979 0.93404722 0.17116025 0.94737613 0.70961094 0.92862892
		 0.14713019 0.93966258 0.80633569 0.85855782 0.073601872 0.84498489 0.21930262 0.020931542
		 0.37728953 0.51496959 0.35311654 0.49882469 0.33934504 0.48904902 0.32887721 0.49040222
		 0.17776188 0.021963894 0.70213974 0.13505131 0.67860961 0.11054258 0.67781174 0.059526227
		 0.75093365 0.13006738 0.68314874 0.15499085 0.69461405 0.1975126 0.6625613 0.19772232
		 0.67330694 0.15461129 0.65425599 0.13471381 0.60557234 0.13095722 0.67668378 0.0058607962
		 0.80404913 0.12392707 0.72039711 0.23519942 0.552935 0.12630287 0.99821991 0.48749039
		 0.872751 0.6061278 0.87236571 0.55241364 0.94562751 0.48199007 0.88967896 0.41434374
		 0.91555715 0.37672427 0.74691093 0.48622403 0.80017239 0.48083422 0.87226534 0.5013386
		 0.89694583 0.47739181 0.87820852 0.45695558 0.86825109 0.4571428 0.85759133 0.41403946
		 0.84903443 0.47657743 0.63729918 0.23576066 0.83236158 0.37593558 0.69644094 0.60516387
		 0.66606414 0.60529155 0.72252631 0.60504663 0.8620109 0.0060411692 0.89241755 0.0063656569
		 0.91852725 0.0065426528 0.63997865 0.60550427 0.83590138 0.0057692528 0.61257738
		 0.67939985 0.61412966 0.68388224 0.57508671 0.74447608 0.57130301 0.74377942 0.70115232
		 0.70841086 0.69762987 0.71102399 0.70828408 0.78070915 0.70449287 0.78002 0.51871866
		 0.11049601 0.52317649 0.10449845 0.57521188 0.25414521 0.5682441 0.25375128 0.3435019
		 0.10068956 0.33975405 0.0941872 0.27829474 0.23755306 0.27132699 0.23715782 0.66704315
		 0.84502888 0.66548938 0.84055084 0.32782534 0.3808122 0.32335776 0.38682261 0.57859564
		 0.81607676 0.58212584 0.81346059 0.50304902 0.39062065 0.50679803 0.3971225 0.58841765
		 0.61396331 0.75539386 0.64833188 0.7979688 0.79964864 0.69116199 0.91053045 0.52438992
		 0.87624395 0.4816153 0.72502434 0.67420632 0.73081243 0.62463623 0.71540558 0.4232662
		 0.24566275 0.67931384 0.7736274 0.65499163 0.80899489 0.60559511 0.79363322 0.600209
		 0.75079083;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 271 ".vt";
	setAttr ".vt[0:165]"  0.18662262 16.019630432 4.61399841 -0.24329758 16.019630432 4.61399841
		 0.17596436 15.72368622 4.92269897 -0.23263168 15.72368622 4.92269897 0.27764893 15.72259521 4.23448181
		 -0.33430862 15.72259521 4.23448181 0.16858292 13.53170013 6.98106384 -0.22525024 13.53170013 6.98106384
		 0.23962784 12.89229584 7.2555542 -0.29629898 12.89229584 7.2555542 0.22586441 10.91551971 5.73512268
		 -0.28253174 10.91551971 5.73512268 -0.085201263 16.29694366 4.61671448 0.028533936 16.29694366 4.61671448
		 0.02520752 15.909729 5.024002075 -0.081882477 15.909729 5.024002075 0.070114136 13.69558716 7.065460205
		 -0.12678146 13.69558716 7.065460205 0.070114136 13.0063781738 7.57301331 -0.12678146 13.0063781738 7.57301331
		 0.070114136 10.49742126 5.53192139 -0.12678146 10.49742126 5.53192139 0.12315369 11.35018158 5.96391296
		 -0.17982101 11.35018158 5.96391296 0.12315369 12.93921661 7.073394775 -0.17982101 12.93921661 7.073394775
		 0.12315369 13.19012451 7.073394775 -0.17982101 13.19012451 7.073394775 0.12315369 15.67179108 4.76785278
		 -0.17982101 15.67179108 4.76785278 0.040081024 16.0045471191 4.22108459 -0.096759796 16.0045471191 4.22108459
		 0.35580444 11.05842495 0 0.30334473 11.039946556 0 0.32512665 15.48887634 4.7104187
		 0.31764984 15.43382263 4.74200439 -0.36001968 11.039946556 0 -0.41247559 11.05842495 0
		 -0.38179779 15.48887634 4.7104187 -0.37431335 15.43382263 4.74200439 -0.43278885 13.22376251 6.85835266
		 -0.38916779 13.11711121 6.91157532 0.37611771 13.22376251 6.85835266 0.33250046 13.11711121 6.91157532
		 -0.47058868 12.84115601 6.92628479 -0.42927933 12.85720062 6.94294739 0.41392517 12.84115601 6.92628479
		 0.372612 12.85720062 6.94294739 -0.41301727 11.37828064 5.92149353 -0.42332077 11.29872894 5.90153503
		 0.35634995 11.37828064 5.92149353 0.36664581 11.29872894 5.90153503 0.20256042 11.40910244 0
		 -0.25923538 11.40910244 0 -0.21158218 11.17582607 0 -0.17982101 11.23127651 0 0.12315369 11.23127651 0
		 -0.085109711 11.82261562 0 0.028442383 11.82261562 0 0.284729 11.16096306 0 0.15491104 11.17582607 0
		 -0.34139633 11.16096306 0 0.18662262 16.019622803 -4.61398315 -0.24329758 16.019622803 -4.61398315
		 0.17596436 15.72369385 -4.92269897 -0.23263168 15.72369385 -4.92269897 0.27764893 15.72259521 -4.23448181
		 -0.33430862 15.72259521 -4.23448181 0.16858292 13.5316925 -6.9810791 -0.22525024 13.5316925 -6.9810791
		 0.23962784 12.89229584 -7.2555542 -0.29629898 12.89229584 -7.2555542 0.22586441 10.91552734 -5.73513794
		 -0.28253174 10.91552734 -5.73513794 -0.085201263 16.29694366 -4.616745 0.028533936 16.29694366 -4.616745
		 0.02520752 15.90972137 -5.024002075 -0.081882477 15.90972137 -5.024002075 0.070114136 13.69557953 -7.065460205
		 -0.12678146 13.69557953 -7.065460205 0.070114136 13.0063934326 -7.57301331 -0.12678146 13.0063934326 -7.57301331
		 0.070114136 10.49742889 -5.53192139 -0.12678146 10.49742889 -5.53192139 0.12315369 11.35017395 -5.96391296
		 -0.17982101 11.35017395 -5.96391296 0.12315369 12.93921661 -7.073394775 -0.17982101 12.93921661 -7.073394775
		 0.12315369 13.19013214 -7.073394775 -0.17982101 13.19013214 -7.073394775 0.12315369 15.67179871 -4.76783752
		 -0.17982101 15.67179871 -4.76783752 0.040081024 16.0045471191 -4.22105408 -0.096759796 16.0045471191 -4.22105408
		 0.32512665 15.48888016 -4.71044922 0.31764984 15.43382263 -4.74197388 -0.38179779 15.48888016 -4.71044922
		 -0.37431335 15.43382263 -4.74197388 -0.43278885 13.22376251 -6.85835266 -0.38916779 13.11710358 -6.91157532
		 0.37611771 13.22376251 -6.85835266 0.33250046 13.11710358 -6.91157532 -0.47058868 12.84114838 -6.92628479
		 -0.42927933 12.85718536 -6.94294739 0.41392517 12.84114838 -6.92628479 0.372612 12.85718536 -6.94294739
		 -0.41301727 11.3782959 -5.92149353 -0.42332077 11.29873657 -5.90153503 0.35634995 11.3782959 -5.92149353
		 0.36664581 11.29873657 -5.90153503 4.61400604 16.019626617 0.18664551 4.61400604 16.019626617 -0.24327087
		 4.92270279 15.72368813 0.1759491 4.92270279 15.72368813 -0.23265076 4.23448467 15.72259903 0.27763367
		 4.23448467 15.72259998 -0.33430481 6.98107529 13.53170013 0.1685791 6.98107529 13.53169632 -0.22525024
		 7.25554657 12.89229774 0.23962402 7.25554657 12.8922987 -0.29629517 5.73513031 10.91552067 0.2258606
		 5.73513031 10.91552258 -0.28253174 4.61671066 16.29694176 -0.085220337 4.61671066 16.29694176 0.028503418
		 5.024003983 15.90972328 0.02520752 5.024003983 15.909729 -0.081878662 7.06546402 13.69557762 0.070114136
		 7.06546402 13.69557571 -0.12678528 7.57300949 13.0063838959 0.070114136 7.57300949 13.0063819885 -0.12678528
		 5.5319252 10.49742699 0.070114136 5.5319252 10.49742126 -0.12678528 5.96391678 11.35017872 0.12315369
		 5.96391678 11.35017872 -0.17982483 7.073402405 12.9392128 0.12315369 7.073402405 12.93921375 -0.17982483
		 7.073402405 13.19012737 0.12315369 7.073402405 13.19012928 -0.17982483 4.76785278 15.67179489 0.12313843
		 4.76785278 15.67179585 -0.17980957 4.22106838 16.0045433044 0.040100098 4.22106838 16.0045452118 -0.096740723
		 0 11.058422089 0.35578918 0 11.039950371 0.30334473 4.71043396 15.48887539 0.32510376
		 4.74199677 15.43381405 0.31765747 0 11.039953232 -0.36001587 0 11.058419228 -0.41247559
		 4.71043396 15.48887825 -0.38180542 4.74199677 15.43382454 -0.37431335 6.85835266 13.22376633 -0.43278503
		 6.91157532 13.11709881 -0.38917542 6.85835266 13.22376442 0.37611389 6.91157532 13.11709595 0.33248901
		 6.92628479 12.84113693 -0.47059631 6.9429512 12.85718727 -0.42927551 6.92628479 12.84113789 0.41392517
		 6.9429512 12.85718155 0.37260437 5.92148972 11.37829781 -0.4130249 5.90153885 11.29873466 -0.42332458
		 5.92148972 11.37829113 0.3563385 5.90153885 11.29873562 0.36663818 0 11.40909958 0.20256042
		 0 11.4090929 -0.25923157 0 11.1758213 -0.21157837 0 11.23128223 -0.17982483;
	setAttr ".vt[166:270]" 0 11.23128033 0.12315369 0 11.82262135 -0.085113525
		 0 11.8226223 0.028442383 0 11.1609745 0.284729 0 11.17582893 0.15490723 0 11.16096973 -0.34140015
		 -4.61399078 16.019626617 0.18664551 -4.61399078 16.019626617 -0.24327087 -4.92269897 15.72368813 0.1759491
		 -4.92269897 15.72368813 -0.23265076 -4.23448181 15.72259903 0.27763367 -4.23448181 15.72259998 -0.33430481
		 -6.9810791 13.53170013 0.1685791 -6.9810791 13.53169632 -0.22525024 -7.25553894 12.89229774 0.23962402
		 -7.25553894 12.8922987 -0.29629517 -5.73512268 10.91552067 0.2258606 -5.73512268 10.91552258 -0.28253174
		 -4.61671448 16.29694176 -0.085220337 -4.61671448 16.29694176 0.028503418 -5.024002075 15.90972328 0.02520752
		 -5.024002075 15.909729 -0.081878662 -7.065460205 13.69557762 0.070114136 -7.065460205 13.69557571 -0.12678528
		 -7.57299805 13.0063838959 0.070114136 -7.57299805 13.0063819885 -0.12678528 -5.53193665 10.49742699 0.070114136
		 -5.53193665 10.49742126 -0.12678528 -5.96391296 11.35017872 0.12315369 -5.96391296 11.35017872 -0.17982483
		 -7.073394775 12.9392128 0.12315369 -7.073394775 12.93921375 -0.17982483 -7.073394775 13.19012737 0.12315369
		 -7.073394775 13.19012928 -0.17982483 -4.76786041 15.67179489 0.12313843 -4.76786041 15.67179585 -0.17980957
		 -4.22108459 16.0045433044 0.040100098 -4.22108459 16.0045452118 -0.096740723 -4.71043396 15.48887539 0.32510376
		 -4.74198914 15.43381405 0.31765747 -4.71043396 15.48887825 -0.38180542 -4.74198914 15.43382454 -0.37431335
		 -6.85835266 13.22376633 -0.43278503 -6.91157532 13.11709881 -0.38917542 -6.85835266 13.22376442 0.37611389
		 -6.91157532 13.11709595 0.33248901 -6.92628479 12.84113693 -0.47059631 -6.94294739 12.85718727 -0.42927551
		 -6.92628479 12.84113789 0.41392517 -6.94294739 12.85718155 0.37260437 -5.92147827 11.37829781 -0.4130249
		 -5.90153503 11.29873466 -0.42332458 -5.92147827 11.37829113 0.3563385 -5.90153503 11.29873562 0.36663818
		 -0.029579163 1.71939075 -0.011157036 -0.52062225 2.21043396 -0.011157036 0.46146393 2.21043396 -0.011157036
		 -0.029579163 0.85969639 -0.4631815 -1.38031769 2.21043491 -0.46318102 1.32115936 2.21043491 -0.4631815
		 -0.029579163 5.9209805e-07 -0.011154175 -2.24000549 2.21043444 -0.011156559 2.18085098 2.21043444 -0.011157036
		 -0.029579163 0.85969496 0.44086742 -1.38031769 2.21043301 0.4408679 1.32115555 2.21043301 0.44086742
		 -0.49559402 3.95484972 -0.01115799 -0.31435013 3.27639866 -0.46318054 -0.13310623 2.59794617 -0.01115799
		 -0.31435013 3.27639675 0.44086838 0.43643951 3.95484972 -0.01115799 0.25518799 3.27639866 -0.46318054
		 0.073944092 2.59794617 -0.01115799 0.25518799 3.27639675 0.44086838 -0.029579163 11.8008728 -0.011154175
		 0.25518799 10.8530426 0.44087219 -0.31435013 10.8530426 0.44087219 -0.49559402 10.85304356 -0.011154175
		 -0.31435013 10.8530426 -0.46318054 0.25518799 10.8530426 -0.46318054 0.43643951 10.85304356 -0.011154175
		 0.46332932 10.88064957 0.77125549 0.44137573 10.85303783 0.73847961 -0.50054169 10.85303783 0.73847961
		 -0.52249146 10.88064957 0.77125549 0.54013062 11.8008604 0.89559937 0.55895615 11.76825714 0.92304993
		 -0.61811829 11.76825714 0.92304993 -0.59929276 11.8008604 0.89559937 -0.80112839 10.85304356 -0.011154175
		 -0.8362236 10.880723 -0.011154175 -0.9927063 11.76829624 -0.011154175 -0.96289444 11.8008585 -0.011154175
		 -0.50060654 10.85304165 -0.76089478 -0.52249146 10.88064957 -0.7935791 -0.61811829 11.76825333 -0.94537354
		 -0.59921265 11.80086327 -0.9178009 0.44137573 10.85303974 -0.76078796 0.46332932 10.88064957 -0.7935791
		 0.55895615 11.76825333 -0.94537354 0.54013062 11.8008604 -0.91792297 0.74197006 10.85304356 -0.011154175
		 0.77706528 10.880723 -0.011154175 0.93355179 11.76829624 -0.011154175 0.90373802 11.8008585 -0.011154175;
	setAttr -s 801 ".ed";
	setAttr ".ed[0:165]"  12 13 0 13 31 0 31 12 0 13 30 0 30 31 0 12 14 0 14 13 0
		 12 15 0 15 14 0 15 16 0 16 14 0 15 17 0 17 16 0 17 18 0 18 16 0 17 19 0 19 18 0 19 20 0
		 20 18 0 19 21 0 21 20 0 21 22 0 22 20 0 21 23 0 23 22 0 23 24 0 24 22 0 23 25 0 25 24 0
		 25 26 0 26 24 0 25 27 0 27 26 0 27 28 0 28 26 0 27 29 0 29 28 0 29 56 0 56 28 0 29 55 0
		 55 56 0 14 0 0 0 13 0 14 2 0 2 0 0 22 10 0 10 20 0 50 51 0 51 22 0 22 50 0 51 10 0
		 4 30 0 30 0 0 0 4 0 16 2 0 16 6 0 6 2 0 18 6 0 18 8 0 8 6 0 18 10 0 10 8 0 12 1 0
		 1 15 0 1 3 0 3 15 0 3 17 0 3 7 0 7 17 0 7 19 0 7 9 0 9 19 0 19 11 0 11 21 0 9 11 0
		 11 23 0 48 23 0 23 49 0 49 48 0 11 49 0 31 57 0 57 5 0 5 31 0 57 53 0 53 5 0 31 1 0
		 5 1 0 33 32 0 32 35 0 35 33 0 32 34 0 34 35 0 34 42 0 42 35 0 42 43 0 43 35 0 36 39 0
		 39 37 0 37 36 0 39 38 0 38 37 0 39 40 0 40 38 0 39 41 0 41 40 0 41 44 0 44 40 0 41 45 0
		 45 44 0 42 46 0 46 43 0 46 47 0 47 43 0 45 48 0 48 44 0 49 44 0 46 50 0 50 47 0 46 51 0
		 5 38 0 38 1 0 38 3 0 0 34 0 34 4 0 2 34 0 38 61 0 61 37 0 38 53 0 53 61 0 38 7 0
		 40 7 0 6 34 0 6 42 0 40 9 0 44 9 0 8 42 0 8 46 0 49 9 0 8 51 0 56 35 0 35 28 0 35 60 0
		 60 33 0 56 60 0 35 26 0 43 26 0 43 24 0 47 24 0 47 22 0 23 45 0 45 25 0 25 41 0 41 27 0
		 27 39 0 39 29 0 58 57 0 57 30 0 30 58 0 52 58 0 58 4 0 4 52 0 32 59 0 59 34 0 59 52 0
		 52 34 0 39 55 0;
	setAttr ".ed[166:331]" 36 54 0 54 39 0 54 55 0 74 93 0 93 75 0 75 74 0 93 92 0
		 92 75 0 75 76 0 76 74 0 76 77 0 77 74 0 76 78 0 78 77 0 78 79 0 79 77 0 78 80 0 80 79 0
		 80 81 0 81 79 0 80 82 0 82 81 0 82 83 0 83 81 0 82 84 0 84 83 0 84 85 0 85 83 0 84 86 0
		 86 85 0 86 87 0 87 85 0 86 88 0 88 87 0 88 89 0 89 87 0 88 90 0 90 89 0 90 91 0 91 89 0
		 90 56 0 56 91 0 55 91 0 64 76 0 76 62 0 62 64 0 75 62 0 82 72 0 72 84 0 108 84 0
		 84 109 0 109 108 0 72 109 0 66 62 0 62 92 0 92 66 0 68 78 0 78 64 0 64 68 0 70 80 0
		 80 68 0 68 70 0 70 72 0 72 80 0 65 63 0 63 77 0 77 65 0 63 74 0 69 65 0 65 79 0 79 69 0
		 71 69 0 69 81 0 81 71 0 83 73 0 73 81 0 73 71 0 85 73 0 106 107 0 107 85 0 85 106 0
		 107 73 0 93 67 0 67 57 0 57 93 0 67 53 0 63 93 0 63 67 0 33 95 0 95 32 0 95 94 0
		 94 32 0 101 100 0 100 95 0 95 101 0 100 94 0 96 97 0 97 37 0 37 96 0 97 36 0 96 98 0
		 98 97 0 98 99 0 99 97 0 98 102 0 102 99 0 102 103 0 103 99 0 105 104 0 104 101 0
		 101 105 0 104 100 0 106 102 0 102 107 0 106 103 0 105 108 0 108 104 0 109 104 0 65 96 0
		 96 63 0 96 67 0 66 94 0 94 62 0 94 64 0 61 96 0 53 96 0 69 96 0 69 98 0 100 68 0
		 68 94 0 71 98 0 71 102 0 104 70 0 70 100 0 107 71 0 109 70 0 90 95 0 95 56 0 60 95 0
		 95 88 0 88 101 0 101 86 0 86 105 0 105 84 0 85 103 0 87 103 0 87 99 0 89 99 0 89 97 0
		 91 97 0 58 92 0 92 57 0 52 66 0 66 58 0 94 59 0 94 52 0 55 97 0 97 54 0 122 141 0
		 141 123 0 123 122 0 141 140 0 140 123 0 123 124 0 124 122 0 124 125 0;
	setAttr ".ed[332:497]" 125 122 0 124 126 0 126 125 0 126 127 0 127 125 0 126 128 0
		 128 127 0 128 129 0 129 127 0 128 130 0 130 129 0 130 131 0 131 129 0 130 132 0 132 131 0
		 132 133 0 133 131 0 132 134 0 134 133 0 134 135 0 135 133 0 134 136 0 136 135 0 136 137 0
		 137 135 0 136 138 0 138 137 0 138 139 0 139 137 0 138 166 0 166 139 0 166 165 0 165 139 0
		 112 124 0 124 110 0 110 112 0 123 110 0 130 120 0 120 132 0 160 132 0 132 161 0 161 160 0
		 120 161 0 114 110 0 110 140 0 140 114 0 116 126 0 126 112 0 112 116 0 118 128 0 128 116 0
		 116 118 0 118 120 0 120 128 0 113 111 0 111 125 0 125 113 0 111 122 0 117 113 0 113 127 0
		 127 117 0 119 117 0 117 129 0 129 119 0 131 121 0 121 129 0 121 119 0 133 121 0 158 159 0
		 159 133 0 133 158 0 159 121 0 141 115 0 115 167 0 167 141 0 115 163 0 163 167 0 111 141 0
		 111 115 0 143 145 0 145 142 0 142 143 0 145 144 0 144 142 0 153 152 0 152 145 0 145 153 0
		 152 144 0 148 149 0 149 147 0 147 148 0 149 146 0 146 147 0 148 150 0 150 149 0 150 151 0
		 151 149 0 150 154 0 154 151 0 154 155 0 155 151 0 157 156 0 156 153 0 153 157 0 156 152 0
		 158 154 0 154 159 0 158 155 0 157 160 0 160 156 0 161 156 0 113 148 0 148 111 0 148 115 0
		 114 144 0 144 110 0 144 112 0 147 171 0 171 148 0 171 163 0 163 148 0 117 148 0 117 150 0
		 152 116 0 116 144 0 119 150 0 119 154 0 156 118 0 118 152 0 159 119 0 161 118 0 138 145 0
		 145 166 0 143 170 0 170 145 0 170 166 0 145 136 0 136 153 0 153 134 0 134 157 0 157 132 0
		 133 155 0 135 155 0 135 151 0 137 151 0 137 149 0 139 149 0 168 140 0 140 167 0 167 168 0
		 162 114 0 114 168 0 168 162 0 144 169 0 169 142 0 144 162 0 162 169 0 165 149 0 149 164 0
		 164 146 0 165 164 0 184 185 0 185 203 0 203 184 0 185 202 0 202 203 0;
	setAttr ".ed[498:663]" 184 186 0 186 185 0 184 187 0 187 186 0 187 188 0 188 186 0
		 187 189 0 189 188 0 189 190 0 190 188 0 189 191 0 191 190 0 191 192 0 192 190 0 191 193 0
		 193 192 0 193 194 0 194 192 0 193 195 0 195 194 0 195 196 0 196 194 0 195 197 0 197 196 0
		 197 198 0 198 196 0 197 199 0 199 198 0 199 200 0 200 198 0 199 201 0 201 200 0 201 166 0
		 166 200 0 201 165 0 186 172 0 172 185 0 186 174 0 174 172 0 194 182 0 182 192 0 218 219 0
		 219 194 0 194 218 0 219 182 0 176 202 0 202 172 0 172 176 0 188 174 0 188 178 0 178 174 0
		 190 178 0 190 180 0 180 178 0 190 182 0 182 180 0 184 173 0 173 187 0 173 175 0 175 187 0
		 175 189 0 175 179 0 179 189 0 179 191 0 179 181 0 181 191 0 191 183 0 183 193 0 181 183 0
		 183 195 0 216 195 0 195 217 0 217 216 0 183 217 0 203 167 0 167 177 0 177 203 0 163 177 0
		 203 173 0 177 173 0 142 205 0 205 143 0 142 204 0 204 205 0 204 210 0 210 205 0 210 211 0
		 211 205 0 146 207 0 207 147 0 207 206 0 206 147 0 207 208 0 208 206 0 207 209 0 209 208 0
		 209 212 0 212 208 0 209 213 0 213 212 0 210 214 0 214 211 0 214 215 0 215 211 0 213 216 0
		 216 212 0 217 212 0 214 218 0 218 215 0 214 219 0 177 206 0 206 173 0 206 175 0 172 204 0
		 204 176 0 174 204 0 206 171 0 206 163 0 206 179 0 208 179 0 178 204 0 178 210 0 208 181 0
		 212 181 0 180 210 0 180 214 0 217 181 0 180 219 0 166 205 0 205 200 0 205 170 0 205 198 0
		 211 198 0 211 196 0 215 196 0 215 194 0 195 213 0 213 197 0 197 209 0 209 199 0 199 207 0
		 207 201 0 167 202 0 202 168 0 168 176 0 176 162 0 169 204 0 162 204 0 207 165 0 164 207 0
		 221 220 0 220 224 0 224 221 0 220 223 0 223 224 0 234 221 0 221 233 0 233 234 0 224 233 0
		 233 237 0 237 234 0 237 238 0 238 234 0 220 222 0 222 223 0 222 225 0;
	setAttr ".ed[664:800]" 225 223 0 223 227 0 227 224 0 223 226 0 226 227 0 224 232 0
		 232 233 0 227 232 0 225 226 0 225 228 0 228 226 0 226 230 0 230 227 0 226 229 0 229 230 0
		 235 232 0 232 230 0 230 235 0 228 229 0 228 231 0 231 229 0 229 221 0 221 230 0 229 220 0
		 221 235 0 234 235 0 238 239 0 239 234 0 239 235 0 231 220 0 231 222 0 237 236 0 236 225 0
		 225 237 0 236 228 0 237 222 0 222 238 0 231 239 0 239 222 0 236 231 0 236 239 0 233 245 0
		 245 237 0 233 244 0 244 245 0 232 244 0 232 243 0 243 244 0 239 242 0 242 235 0 239 241 0
		 241 242 0 242 232 0 242 243 0 245 236 0 245 246 0 246 236 0 236 241 0 246 241 0 247 248 0
		 248 268 0 268 247 0 248 267 0 267 268 0 247 249 0 249 248 0 247 250 0 250 249 0 250 256 0
		 256 249 0 256 255 0 255 249 0 252 269 0 269 251 0 251 252 0 269 270 0 270 251 0 251 253 0
		 253 252 0 251 254 0 254 253 0 254 257 0 257 253 0 254 258 0 258 257 0 256 259 0 259 255 0
		 256 260 0 260 259 0 258 262 0 262 257 0 262 261 0 261 257 0 260 263 0 263 259 0 260 264 0
		 264 263 0 262 265 0 265 261 0 262 266 0 266 265 0 264 268 0 268 263 0 267 263 0 266 269 0
		 269 265 0 266 270 0 247 253 0 253 250 0 247 252 0 250 257 0 257 256 0 257 260 0 261 260 0
		 260 265 0 265 264 0 264 269 0 269 268 0 269 247 0 241 249 0 249 242 0 241 248 0 240 254 0
		 251 240 0 242 255 0 255 243 0 240 258 0 255 244 0 259 244 0 240 262 0 244 263 0 263 245 0
		 240 266 0 245 267 0 267 246 0 240 270 0 267 241 0;
	setAttr -s 1602 ".n";
	setAttr ".n[0:165]" -type "float3"  0 0.80420113 -0.59435725 0 0.80420119
		 -0.59435731 0 0.71800154 -0.69604152 0 0.71800154 -0.69604152 0 0.80420119 -0.59435731
		 0 0.71800166 -0.69604146 0 0.72474015 0.68902218 0 0.72474027 0.68902218 0 0.68357968
		 0.72987592 0 0.68357968 0.72987592 0 0.72474027 0.68902218 0 0.6835795 0.72987598
		 0 0.68357968 0.72987592 0 0.6835795 0.72987598 0 0.65564173 0.75507212 0 0.65564173
		 0.75507212 0 0.6835795 0.72987598 0 0.65564179 0.75507218 0 0.65564173 0.75507212
		 0 0.65564179 0.75507218 0 0.59298265 0.80521512 0 0.59298265 0.80521512 0 0.65564179
		 0.75507218 0 0.59298265 0.80521512 0 -0.63107014 0.77572584 0 -0.63107014 0.77572584
		 0 -0.63107014 0.77572584 0 -0.63107014 0.77572584 0 -0.63107014 0.77572584 0 -0.63107014
		 0.77572584 -0.0084450627 0.45024273 -0.89286625 0.0084451688 0.45024261 -0.89286637
		 -0.0383191 0.44409898 -0.89515793 -0.0383191 0.44409898 -0.89515793 0.0084451688
		 0.45024261 -0.89286637 0.038319405 0.44409844 -0.89515817 -0.099703193 0.569112 -0.81619287
		 0.099703036 0.569112 -0.81619287 -0.078624971 0.57030076 -0.81766444 -0.078624971
		 0.57030076 -0.81766444 0.099703036 0.569112 -0.81619287 0.078624837 0.5703007 -0.81766444
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 -0.6806314 -0.73262602 0 -0.6806314 -0.73262602
		 0 -0.6806314 -0.73262602 0 -0.6806314 -0.73262602 0 -0.6806314 -0.73262602 0 -0.6806314
		 -0.73262602 0 -0.73178071 0.68154007 0 -0.73178071 0.68154007 0 -0.73178071 0.68154007
		 0 -0.73178071 0.68154007 0 -0.73178071 0.68154007 0 -0.73178071 0.68154007 0.79333574
		 0.43264103 0.42829925 0.82537067 0.39132205 0.40697712 0.89508039 0.43931425 0.076381288
		 0.89508039 0.43931425 0.076381288 0.82537067 0.39132205 0.40697712 0.8612988 0.35877019
		 0.3597894 -0.0084450627 0.45024273 -0.89286625 -0.0383191 0.44409898 -0.89515793
		 -0.10378832 0.42915055 -0.89725018 -0.10378832 0.42915052 -0.89725012 -0.10378833
		 0.42915058 -0.89725018 -0.0383191 0.44409898 -0.89515793 -0.10378832 0.42915055 -0.89725018
		 -0.0383191 0.44409898 -0.89515793 -0.10378833 0.42915058 -0.89725018 0.8960039 0.31797048
		 -0.30995446 0.77183759 0.45963928 -0.439316 0.89508039 0.43931425 0.076381288 0.89508039
		 0.43931425 0.076381288 0.77183759 0.45963928 -0.439316 0.77859026 0.54487491 -0.31130135
		 0.82537067 0.39132205 0.40697712 0.84107131 0.36395374 0.40017083 0.8612988 0.35877019
		 0.3597894 0.8612988 0.35877019 0.3597894 0.84107131 0.36395374 0.40017083 0.859164
		 0.34268966 0.38000137 0.84107131 0.36395374 0.40017083 0.87677974 0.27789691 0.39246729
		 0.859164 0.34268966 0.38000137 0.859164 0.34268966 0.38000137 0.87677974 0.27789691
		 0.39246729 0.85808837 0.26872042 0.43757698 0.66756475 -0.46022427 0.58527857 0.65088356
		 -0.47328782 0.59359002 0.65861964 -0.46729279 0.58979464 0.65861964 -0.46729279 0.58979464
		 0.65088356 -0.47328782 0.59359002 0.65088362 -0.47328785 0.59359014 -0.79333597 0.43264109
		 0.42829865 -0.89508432 0.43930641 0.07638073 -0.82537711 0.39131528 0.4069705 -0.82537711
		 0.39131528 0.4069705 -0.89508432 0.43930641 0.07638073 -0.86129969 0.35876894 0.35978842
		 -0.82537711 0.39131528 0.4069705 -0.86129969 0.35876894 0.35978842 -0.84107745 0.3639468
		 0.40016428 -0.84107745 0.3639468 0.40016428 -0.86129969 0.35876894 0.35978842 -0.85916269
		 0.34269094 0.38000304 -0.84107745 0.3639468 0.40016428 -0.85916269 0.34269094 0.38000304
		 -0.87677693 0.27790099 0.3924706 -0.87677693 0.27790099 0.3924706 -0.85916269 0.34269094
		 0.38000304 -0.8580879 0.26872107 0.4375774 -0.65087909 -0.47329056 0.59359282 -0.65087909
		 -0.47329056 0.59359282 -0.65861571 -0.46729511 0.58979714 -0.65861571 -0.46729511
		 0.58979714 -0.65087909 -0.47329056 0.59359282 -0.66756105 -0.46022642 0.58528107
		 0.0084451688 0.45024261 -0.89286637 0.10378807 0.42914927 -0.89725083 0.038319405
		 0.44409844 -0.89515817 0.10378807 0.4291493 -0.89725083 0.038319405 0.44409844 -0.89515817
		 0.10378807 0.4291493 -0.89725083 0.038319405 0.44409844 -0.89515817 0.10378807 0.42914927
		 -0.89725083 0.10378807 0.4291493 -0.89725083 -0.77184635 0.45963204 -0.43930802 -0.76940548
		 0.44664606 -0.45664272 -0.89600474 0.3179695 -0.30995312 -0.89600474 0.3179695 -0.30995312
		 -0.76940548 0.44664606 -0.45664272 -0.96683943 0.25538501 1.7177861e-08 -0.77859908
		 0.54486525 -0.3112964 -0.77184635 0.45963204 -0.43930802 -0.89508432 0.43930641 0.07638073
		 -0.89508432 0.43930641 0.07638073 -0.77184635 0.45963204 -0.43930802 -0.89600474
		 0.3179695 -0.30995312 0.78224772 -0.45469776 0.42583865 0.78224766 -0.4546977 0.42583859
		 0.78224772 -0.45469773 0.42583865 0.78224772 -0.45469773 0.42583865 0.78224766 -0.4546977
		 0.42583859 0.78224766 -0.45469776 0.42583865 0.68060094 -0.49725199 -0.53807336 0.68060088
		 -0.49725199 -0.5380733 0.68060094 -0.49725196 -0.5380733 0.68060094 -0.49725196 -0.5380733
		 0.68060088 -0.49725199 -0.5380733 0.68060082 -0.49725193 -0.5380733 -0.78222817 -0.45471516
		 0.42585579 -0.78222817 -0.45471513 0.42585582 -0.78222823 -0.45471519 0.42585582
		 -0.78222823 -0.45471519 0.42585582 -0.78222817 -0.45471513 0.42585582 -0.78222817
		 -0.45471516 0.42585585 -0.68052119 -0.49730331 -0.53812677 -0.68052113 -0.49730328
		 -0.53812677 -0.68052113 -0.49730325 -0.53812671 -0.68052113 -0.49730325 -0.53812671;
	setAttr ".n[166:331]" -type "float3"  -0.68052113 -0.49730328 -0.53812677 -0.68052119
		 -0.49730328 -0.53812677 0.49412972 -0.19100262 -0.84814727 0.49412969 -0.19100264
		 -0.84814733 0.49412975 -0.19100262 -0.84814733 0.49412975 -0.19100262 -0.84814733
		 0.49412969 -0.19100264 -0.84814733 0.49412969 -0.19100261 -0.84814727 -0.49411848
		 -0.19100828 -0.84815252 -0.49411854 -0.19100828 -0.84815252 -0.49411851 -0.19100828
		 -0.84815252 -0.49411851 -0.19100828 -0.84815252 -0.49411854 -0.19100828 -0.84815252
		 -0.49411854 -0.1910083 -0.84815252 -0.40000418 0.50815469 -0.76274198 -0.40000421
		 0.50815475 -0.76274198 -0.40000421 0.50815481 -0.76274204 -0.40000421 0.50815481
		 -0.76274204 -0.40000421 0.50815475 -0.76274198 -0.40000421 0.50815475 -0.76274198
		 0.40002665 0.50814784 -0.76273489 0.40002662 0.5081479 -0.76273483 0.40002662 0.5081479
		 -0.76273489 0.40002662 0.5081479 -0.76273489 0.40002662 0.5081479 -0.76273483 0.40002662
		 0.5081479 -0.76273483 -0.89600474 0.3179695 -0.30995312 -0.96605831 0.25656873 0.030064836
		 -0.89508432 0.43930641 0.07638073 -0.89508432 0.43930641 0.07638073 -0.96605831 0.25656873
		 0.030064836 -0.86129969 0.35876894 0.35978842 0.8960039 0.31797048 -0.30995446 0.89508039
		 0.43931425 0.076381288 0.96605992 0.25656244 0.030066632 0.96605992 0.25656244 0.030066632
		 0.89508039 0.43931425 0.076381288 0.8612988 0.35877019 0.3597894 -0.98260719 0.18569662
		 2.252105e-07 -0.96605831 0.25656873 0.030064836 -0.98260707 0.18569659 0 -0.98260707
		 0.18569659 0 -0.96605831 0.25656873 0.030064836 -0.96683943 0.25538501 1.7177861e-08
		 -0.96605831 0.25656873 0.030064836 -0.89600474 0.3179695 -0.30995312 -0.96683943
		 0.25538501 1.7177861e-08 -0.86129969 0.35876894 0.35978842 -0.96605831 0.25656873
		 0.030064836 -0.85916269 0.34269094 0.38000304 -0.85916269 0.34269094 0.38000304 -0.96605831
		 0.25656873 0.030064836 -0.85924339 0.32542324 0.39471567 0.8612988 0.35877019 0.3597894
		 0.859164 0.34268966 0.38000137 0.96605992 0.25656244 0.030066632 0.96605992 0.25656244
		 0.030066632 0.859164 0.34268966 0.38000137 0.85924625 0.32541978 0.39471227 -0.85916269
		 0.34269094 0.38000304 -0.85924339 0.32542324 0.39471567 -0.8580879 0.26872107 0.4375774
		 -0.8580879 0.26872107 0.4375774 -0.85924339 0.32542324 0.39471567 -0.82899928 0.25504681
		 0.49770603 0.859164 0.34268966 0.38000137 0.85808837 0.26872042 0.43757698 0.85924625
		 0.32541978 0.39471227 0.85924625 0.32541978 0.39471227 0.85808837 0.26872042 0.43757698
		 0.82899642 0.25505072 0.4977088 -0.72230291 -0.41346303 0.55437076 -0.72230285 -0.413463
		 0.5543707 -0.66756105 -0.46022642 0.58528107 -0.66756105 -0.46022642 0.58528107 -0.72230285
		 -0.413463 0.5543707 -0.65861571 -0.46729511 0.58979714 0.72230321 -0.41346368 0.55436969
		 0.66756475 -0.46022427 0.58527857 0.72230321 -0.41346374 0.55436975 0.72230321 -0.41346374
		 0.55436975 0.66756475 -0.46022427 0.58527857 0.65861964 -0.46729279 0.58979464 -0.62032652
		 -0.57355207 0.53500748 -0.62032652 -0.57355207 0.53500742 -0.62032652 -0.57355213
		 0.53500754 -0.62032646 -0.57355207 0.53500748 -0.62032652 -0.57355213 0.53500754
		 -0.62032646 -0.57355213 0.53500742 -0.62032652 -0.57355213 0.53500754 -0.62032652
		 -0.57355207 0.53500742 -0.62032646 -0.57355213 0.53500742 -0.65444207 -0.51678348
		 -0.55194235 -0.65444213 -0.51678354 -0.55194241 -0.65444219 -0.51678348 -0.55194241
		 -0.65444219 -0.51678348 -0.55194241 -0.65444213 -0.51678354 -0.55194241 -0.65444207
		 -0.51678348 -0.55194235 -0.55736852 -0.094426982 -0.8248781 -0.55736846 -0.09442699
		 -0.8248781 -0.55736858 -0.09442699 -0.8248781 -0.55736858 -0.09442699 -0.8248781
		 -0.55736846 -0.09442699 -0.8248781 -0.55736846 -0.094426982 -0.8248781 -0.078624971
		 0.57030076 -0.81766444 -0.22427681 0.55673945 -0.79983819 -0.099703193 0.569112 -0.81619287
		 -0.099703193 0.569112 -0.81619287 -0.22427681 0.55673945 -0.79983819 -0.2242768 0.55673945
		 -0.79983819 0.078624837 0.5703007 -0.81766444 0.099703036 0.569112 -0.81619287 0.22427644
		 0.55673945 -0.79983824 0.22427644 0.55673945 -0.79983824 0.099703036 0.569112 -0.81619287
		 0.22427644 0.55673939 -0.7998383 0.55736917 -0.09442696 -0.82487768 0.55736917 -0.094426952
		 -0.82487774 0.55736911 -0.094426952 -0.82487762 0.55736911 -0.094426952 -0.82487762
		 0.55736917 -0.094426952 -0.82487774 0.55736905 -0.094426952 -0.82487774 0.65444595
		 -0.51678145 -0.55193973 0.65444589 -0.51678145 -0.55193967 0.65444589 -0.51678151
		 -0.55193973 0.65444589 -0.51678151 -0.55193973 0.65444589 -0.51678145 -0.55193967
		 0.65444595 -0.51678151 -0.55193973 0 0.71039373 -0.70380443 0 0.71039373 -0.70380443
		 0 0.71800166 -0.69604146 0 0.71800166 -0.69604146 0 0.71039373 -0.70380443 0 0.71800154
		 -0.69604152 0.96684021 0.25538188 2.576693e-08 0.7693966 0.44665337 -0.45665041 0.8960039
		 0.31797048 -0.30995446 0.8960039 0.31797048 -0.30995446 0.7693966 0.44665337 -0.45665041
		 0.77183759 0.45963928 -0.439316 0.98260856 0.18568897 2.4451759e-07 0.9826085 0.18568896
		 3.4955473e-08 0.96605992 0.25656244 0.030066632 0.9826085 0.18568896 3.4955473e-08
		 0.96684021 0.25538188 2.576693e-08 0.96605992 0.25656244 0.030066632 0.96684021 0.25538188
		 2.576693e-08 0.8960039 0.31797048 -0.30995446 0.96605992 0.25656244 0.030066632 0.620323
		 -0.57355464 0.53500885 0.620323 -0.57355458 0.53500891 0.62032294 -0.57355464 0.53500885
		 0.62032294 -0.57355458 0.53500891 0.62032294 -0.57355464 0.53500891 0.620323 -0.57355458
		 0.53500891 0.62032294 -0.57355464 0.53500891 0.62032294 -0.57355464 0.53500885 0.620323
		 -0.57355458 0.53500891 0 0.80424523 0.59429765 0 0.71800369 0.69603932 0 0.80424517
		 0.59429765 0 0.80424517 0.59429765 0 0.71800369 0.69603932 0 0.71800381 0.6960392
		 0 0.72470731 -0.68905687 0 0.68357527 -0.72987998;
	setAttr ".n[332:497]" -type "float3"  0 0.72470725 -0.68905687 0 0.72470725
		 -0.68905687 0 0.68357527 -0.72987998 0 0.68357515 -0.72988003 0 0.68357527 -0.72987998
		 0 0.65564549 -0.75506878 0 0.68357515 -0.72988003 0 0.68357515 -0.72988003 0 0.65564549
		 -0.75506878 0 0.65564543 -0.75506884 0 0.65564549 -0.75506878 0 0.59299624 -0.80520523
		 0 0.65564543 -0.75506884 0 0.65564543 -0.75506884 0 0.59299624 -0.80520523 0 0.59299624
		 -0.80520523 0 -0.63106894 -0.77572668 0 -0.63106894 -0.77572668 0 -0.63106894 -0.77572668
		 0 -0.63106894 -0.77572668 0 -0.63106894 -0.77572668 0 -0.63106894 -0.77572668 -0.0084433379
		 0.45024803 0.89286351 -0.038313415 0.44409916 0.89515811 0.0084433407 0.45024797
		 0.89286369 0.0084433407 0.45024797 0.89286369 -0.038313415 0.44409916 0.89515811
		 0.03831324 0.44409874 0.89515835 -0.099703893 0.56911212 0.81619263 -0.078625754
		 0.57030052 0.81766456 0.099704012 0.56911218 0.81619275 0.099704012 0.56911218 0.81619275
		 -0.078625754 0.57030052 0.81766456 0.078625828 0.57030052 0.81766456 0 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 -0.6806339 0.7326237 0 -0.6806339 0.7326237 0 -0.6806339
		 0.7326237 0 -0.6806339 0.7326237 0 -0.6806339 0.7326237 0 -0.6806339 0.7326237 0
		 -0.73177904 -0.68154192 0 -0.73177904 -0.68154192 0 -0.73177904 -0.68154192 0 -0.73177904
		 -0.68154192 0 -0.73177904 -0.68154192 0 -0.73177904 -0.68154192 0.86129189 0.3587786
		 -0.35979742 0.82536227 0.39133006 -0.40698659 0.89508033 0.43931806 -0.076360472
		 0.89508033 0.43931806 -0.076360472 0.82536227 0.39133006 -0.40698659 0.79335433 0.43262163
		 -0.42828417 -0.0084433379 0.45024803 0.89286351 -0.10376973 0.42914066 0.89725697
		 -0.038313415 0.44409916 0.89515811 -0.10376973 0.42914072 0.89725697 -0.038313415
		 0.44409916 0.89515811 -0.10376974 0.42914069 0.89725697 -0.10376973 0.42914066 0.89725697
		 -0.10376974 0.42914069 0.89725697 -0.038313415 0.44409916 0.89515811 0.89601153 0.31795967
		 0.30994362 0.89508033 0.43931806 -0.076360472 0.77184981 0.45962822 0.43930605 0.77184981
		 0.45962822 0.43930605 0.89508033 0.43931806 -0.076360472 0.77859539 0.5448795 0.31128046
		 0.85915816 0.34269476 -0.38000998 0.84105879 0.3639676 -0.40018445 0.86129189 0.3587786
		 -0.35979742 0.86129189 0.3587786 -0.35979742 0.84105879 0.3639676 -0.40018445 0.82536227
		 0.39133006 -0.40698659 0.85808891 0.26871744 -0.4375779 0.87677866 0.27789882 -0.39246848
		 0.85915816 0.34269476 -0.38000998 0.85915816 0.34269476 -0.38000998 0.87677866 0.27789882
		 -0.39246848 0.84105879 0.3639676 -0.40018445 0.66754532 -0.46023417 -0.58529282 0.65859616
		 -0.46730438 -0.58981156 0.65085566 -0.47330153 -0.59360981 0.65085566 -0.47330153
		 -0.59360981 0.65859616 -0.46730438 -0.58981156 0.6508556 -0.47330156 -0.59360981
		 -0.86129278 0.35877752 -0.35979655 -0.8950842 0.43931016 -0.076361492 -0.82536811
		 0.39132351 -0.40698096 -0.82536811 0.39132351 -0.40698096 -0.8950842 0.43931016 -0.076361492
		 -0.79335344 0.43262121 -0.42828631 -0.85915691 0.34269628 -0.3800115 -0.86129278
		 0.35877752 -0.35979655 -0.84106463 0.3639611 -0.40017828 -0.84106463 0.3639611 -0.40017828
		 -0.86129278 0.35877752 -0.35979655 -0.82536811 0.39132351 -0.40698096 -0.85808831
		 0.26871875 -0.43757838 -0.85915691 0.34269628 -0.3800115 -0.87677604 0.27790347 -0.39247093
		 -0.87677604 0.27790347 -0.39247093 -0.85915691 0.34269628 -0.3800115 -0.84106463
		 0.3639611 -0.40017828 -0.65085208 -0.47330368 -0.59361202 -0.65859312 -0.46730602
		 -0.58981365 -0.65085208 -0.47330365 -0.59361202 -0.65085208 -0.47330365 -0.59361202
		 -0.65859312 -0.46730602 -0.58981365 -0.66754234 -0.46023577 -0.5852949 0.0084433407
		 0.45024797 0.89286369 0.03831324 0.44409874 0.89515835 0.10376818 0.42913976 0.89725757
		 0.10376818 0.42913979 0.89725763 0.10376818 0.42913973 0.89725763 0.03831324 0.44409874
		 0.89515835 0.03831324 0.44409874 0.89515835 0.10376818 0.42913973 0.89725763 0.10376818
		 0.42913976 0.89725757 -0.77185863 0.45962104 0.43929803 -0.89601231 0.31795874 0.30994225
		 -0.76941854 0.44663396 0.45663241 -0.76941854 0.44663396 0.45663241 -0.89601231 0.31795874
		 0.30994225 -0.96683943 0.25538501 1.7177861e-08 -0.77860463 0.54487008 0.31127384
		 -0.8950842 0.43931016 -0.076361492 -0.77185863 0.45962104 0.43929803 -0.77185863
		 0.45962104 0.43929803 -0.8950842 0.43931016 -0.076361492 -0.89601231 0.31795874 0.30994225
		 0.78209162 -0.45484084 -0.42597249 0.78209162 -0.45484081 -0.42597246 0.78209162
		 -0.45484084 -0.42597249 0.78209162 -0.45484084 -0.42597249 0.78209162 -0.45484081
		 -0.42597246 0.78209156 -0.45484078 -0.4259724 0.68099111 -0.49699938 0.53781283 0.68099111
		 -0.49699944 0.53781289 0.68099105 -0.49699941 0.53781289 0.68099105 -0.49699941 0.53781289
		 0.68099111 -0.49699944 0.53781289 0.68099111 -0.49699947 0.53781283 -0.78207201 -0.45485854
		 -0.42598957 -0.78207201 -0.45485857 -0.42598957 -0.78207207 -0.45485857 -0.4259896
		 -0.78207207 -0.45485857 -0.4259896 -0.78207201 -0.45485857 -0.42598957 -0.78207201
		 -0.45485857 -0.4259896 -0.68091136 -0.49705061 0.53786641 -0.68091142 -0.4970507
		 0.53786647 -0.68091142 -0.49705064 0.53786641 -0.68091142 -0.49705064 0.53786641
		 -0.68091142 -0.4970507 0.53786647 -0.68091136 -0.49705064 0.53786641 0.494111 -0.19099794
		 0.84815925 0.49411106 -0.19099796 0.84815925 0.494111 -0.19099796 0.84815925 0.494111
		 -0.19099796 0.84815925 0.49411106 -0.19099796 0.84815925 0.494111 -0.19099793 0.84815925;
	setAttr ".n[498:663]" -type "float3"  -0.49410895 -0.19100462 0.84815896 -0.49410889
		 -0.19100462 0.84815896 -0.49410895 -0.19100463 0.84815902 -0.49410895 -0.19100463
		 0.84815902 -0.49410889 -0.19100462 0.84815896 -0.49410897 -0.19100465 0.84815902
		 -0.40001547 0.50815749 0.76273435 -0.40001547 0.50815749 0.76273435 -0.40001544 0.50815743
		 0.76273429 -0.40001544 0.50815743 0.76273429 -0.40001547 0.50815749 0.76273435 -0.40001547
		 0.50815749 0.76273435 0.40003735 0.50814998 0.7627278 0.40003735 0.50814998 0.7627278
		 0.40003738 0.50814998 0.7627278 0.40003738 0.50814998 0.7627278 0.40003735 0.50814998
		 0.7627278 0.40003735 0.50814998 0.76272786 -0.86129278 0.35877752 -0.35979655 -0.96605748
		 0.25657052 -0.030073997 -0.8950842 0.43931016 -0.076361492 -0.8950842 0.43931016
		 -0.076361492 -0.96605748 0.25657052 -0.030073997 -0.89601231 0.31795874 0.30994225
		 0.89601153 0.31795967 0.30994362 0.96605909 0.25656423 -0.030075915 0.89508033 0.43931806
		 -0.076360472 0.89508033 0.43931806 -0.076360472 0.96605909 0.25656423 -0.030075915
		 0.86129189 0.3587786 -0.35979742 -0.98260719 0.18569662 2.252105e-07 -0.98260707
		 0.18569659 0 -0.96605748 0.25657052 -0.030073997 -0.98260707 0.18569659 0 -0.96683943
		 0.25538501 1.7177861e-08 -0.96605748 0.25657052 -0.030073997 -0.96605748 0.25657052
		 -0.030073997 -0.96683943 0.25538501 1.7177861e-08 -0.89601231 0.31795874 0.30994225
		 -0.86129278 0.35877752 -0.35979655 -0.85915691 0.34269628 -0.3800115 -0.96605748
		 0.25657052 -0.030073997 -0.96605748 0.25657052 -0.030073997 -0.85915691 0.34269628
		 -0.3800115 -0.85924101 0.32542491 -0.39471963 0.85924381 0.32542127 -0.39471632 0.85915816
		 0.34269476 -0.38000998 0.96605909 0.25656423 -0.030075915 0.96605909 0.25656423 -0.030075915
		 0.85915816 0.34269476 -0.38000998 0.86129189 0.3587786 -0.35979742 -0.85915691 0.34269628
		 -0.3800115 -0.85808831 0.26871875 -0.43757838 -0.85924101 0.32542491 -0.39471963
		 -0.85924101 0.32542491 -0.39471963 -0.85808831 0.26871875 -0.43757838 -0.82900423
		 0.2550391 -0.49770182 0.82900202 0.25504237 -0.4977037 0.85808891 0.26871744 -0.4375779
		 0.85924381 0.32542127 -0.39471632 0.85924381 0.32542127 -0.39471632 0.85808891 0.26871744
		 -0.4375779 0.85915816 0.34269476 -0.38000998 -0.65859312 -0.46730602 -0.58981365
		 -0.72231019 -0.41345856 -0.55436456 -0.66754234 -0.46023577 -0.5852949 -0.66754234
		 -0.46023577 -0.5852949 -0.72231019 -0.41345856 -0.55436456 -0.72231019 -0.41345859
		 -0.55436456 0.7223106 -0.41345951 -0.55436325 0.72231066 -0.41345954 -0.55436331
		 0.66754532 -0.46023417 -0.58529282 0.66754532 -0.46023417 -0.58529282 0.72231066
		 -0.41345954 -0.55436331 0.65859616 -0.46730438 -0.58981156 -0.62031949 -0.57355469
		 -0.53501278 -0.62031943 -0.57355469 -0.53501272 -0.62031949 -0.57355475 -0.53501278
		 -0.62031943 -0.57355475 -0.53501278 -0.62031949 -0.57355475 -0.53501278 -0.62031943
		 -0.57355469 -0.53501272 -0.62031943 -0.57355469 -0.53501272 -0.62031949 -0.57355475
		 -0.53501278 -0.62031949 -0.57355475 -0.53501278 -0.65447205 -0.51676822 0.55192119
		 -0.65447199 -0.51676822 0.55192119 -0.65447199 -0.51676822 0.55192119 -0.65447199
		 -0.51676822 0.55192119 -0.65447199 -0.51676822 0.55192119 -0.65447193 -0.51676822
		 0.55192119 -0.55737275 -0.094424322 0.82487559 -0.55737275 -0.094424322 0.82487559
		 -0.55737269 -0.094424307 0.82487559 -0.55737269 -0.094424307 0.82487559 -0.55737275
		 -0.094424322 0.82487559 -0.55737275 -0.094424307 0.82487559 -0.22428539 0.55674118
		 0.79983461 -0.22428538 0.55674118 0.79983455 -0.099703893 0.56911212 0.81619263 -0.099703893
		 0.56911212 0.81619263 -0.22428538 0.55674118 0.79983455 -0.078625754 0.57030052 0.81766456
		 0.22428559 0.55674112 0.79983443 0.099704012 0.56911218 0.81619275 0.22428563 0.55674118
		 0.79983455 0.22428563 0.55674118 0.79983455 0.099704012 0.56911218 0.81619275 0.078625828
		 0.57030052 0.81766456 0.55737323 -0.094424263 0.82487518 0.55737329 -0.094424255
		 0.82487512 0.55737323 -0.09442427 0.82487524 0.55737323 -0.09442427 0.82487524 0.55737329
		 -0.094424255 0.82487512 0.55737329 -0.094424263 0.82487518 0.65447563 -0.51676655
		 0.55191869 0.65447551 -0.51676649 0.55191857 0.65447557 -0.51676655 0.55191863 0.65447557
		 -0.51676655 0.55191863 0.65447551 -0.51676649 0.55191857 0.65447557 -0.51676649 0.55191857
		 0 0.71039104 0.70380712 0 0.71800381 0.6960392 0 0.71039116 0.70380706 0 0.71039116
		 0.70380706 0 0.71800381 0.6960392 0 0.71800369 0.69603932 0.96684021 0.25538188 2.576693e-08
		 0.89601153 0.31795967 0.30994362 0.76940984 0.4466413 0.45664001 0.76940984 0.4466413
		 0.45664001 0.89601153 0.31795967 0.30994362 0.77184981 0.45962822 0.43930605 0.98260856
		 0.18568897 2.4451759e-07 0.96605909 0.25656423 -0.030075915 0.9826085 0.18568896
		 3.4955473e-08 0.9826085 0.18568896 3.4955473e-08 0.96605909 0.25656423 -0.030075915
		 0.96684021 0.25538188 2.576693e-08 0.96605909 0.25656423 -0.030075915 0.89601153
		 0.31795967 0.30994362 0.96684021 0.25538188 2.576693e-08 0.62031591 -0.57355726 -0.53501433
		 0.62031591 -0.57355714 -0.53501427 0.62031597 -0.5735572 -0.53501433 0.62031585 -0.5735572
		 -0.53501433 0.62031597 -0.5735572 -0.53501433 0.62031591 -0.57355714 -0.53501427
		 0.62031591 -0.57355714 -0.53501427 0.62031597 -0.5735572 -0.53501433 0.62031591 -0.57355714
		 -0.53501427 -0.59434706 0.80420864 7.7365412e-06 -0.69604123 0.71800178 1.0072755e-05
		 -0.59434706 0.80420864 7.7365412e-06 -0.59434706 0.80420864 7.7365412e-06 -0.69604123
		 0.71800178 1.0072755e-05 -0.69604212 0.71800101 1.0072776e-05 0.68901801 0.7247442
		 2.3055814e-05 0.72987694 0.68357849 1.0084311e-05 0.68901801 0.7247442 2.3055814e-05
		 0.68901801 0.7247442 2.3055814e-05 0.72987694 0.68357849 1.0084311e-05 0.72987628
		 0.68357927 1.008454e-05 0.72987694 0.68357849 1.0084311e-05 0.75507188 0.65564203
		 4.547459e-06 0.72987628 0.68357927 1.008454e-05 0.72987628 0.68357927 1.008454e-05;
	setAttr ".n[664:829]" -type "float3"  0.75507188 0.65564203 4.547459e-06 0.75507218
		 0.65564173 4.5474062e-06 0.75507188 0.65564203 4.547459e-06 0.80521286 0.59298587
		 -5.6588087e-06 0.75507218 0.65564173 4.5474062e-06 0.75507218 0.65564173 4.5474062e-06
		 0.80521286 0.59298587 -5.6588087e-06 0.80521286 0.59298587 -5.6588087e-06 0.77572715
		 -0.63106847 1.1980119e-05 0.77572715 -0.63106847 1.1980118e-05 0.77572721 -0.63106847
		 1.1980117e-05 0.77572721 -0.63106847 1.1980117e-05 0.77572715 -0.63106847 1.1980118e-05
		 0.77572709 -0.63106841 1.1980119e-05 -0.89286512 0.4502449 -0.0084503675 -0.89515853
		 0.44409746 -0.038324401 -0.89286542 0.45024467 0.008440081 -0.89286542 0.45024467
		 0.008440081 -0.89515853 0.44409746 -0.038324401 -0.89515918 0.44409633 0.03831936
		 -0.81619 0.56911498 -0.099709533 -0.8176623 0.57030362 -0.078627072 -0.81618983 0.56911445
		 0.099713877 -0.81618983 0.56911445 0.099713877 -0.8176623 0.57030362 -0.078627072
		 -0.817662 0.57030314 0.078632832 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -0.73262501
		 -0.68063265 -3.7171349e-06 -0.73262489 -0.68063259 -3.7171349e-06 -0.73262483 -0.68063259
		 -3.7171344e-06 -0.73262483 -0.68063259 -3.7171344e-06 -0.73262489 -0.68063259 -3.7171349e-06
		 -0.73262495 -0.68063253 -3.7171349e-06 0.68154013 -0.73178077 0 0.68154007 -0.73178077
		 0 0.68154019 -0.73178077 0 0.68154019 -0.73178077 0 0.68154007 -0.73178077 0 0.68154013
		 -0.73178077 0 0.35978442 0.3587625 0.86130404 0.40697983 0.39132744 0.8253668 0.076399975
		 0.43931025 0.89508075 0.076399975 0.43931025 0.89508075 0.40697983 0.39132744 0.8253668
		 0.42834383 0.43268263 0.79328883 -0.89286512 0.4502449 -0.0084503675 -0.89725429
		 0.42914069 -0.1037939 -0.89515853 0.44409746 -0.038324401 -0.89725429 0.42914069
		 -0.10379388 -0.89515853 0.44409746 -0.038324401 -0.89725423 0.42914066 -0.10379389
		 -0.89725429 0.42914069 -0.1037939 -0.89725423 0.42914066 -0.10379389 -0.89515853
		 0.44409746 -0.038324401 -0.30992559 0.3179417 0.89602405 0.076399975 0.43931025 0.89508075
		 -0.43928817 0.45961586 0.77186733 -0.43928817 0.45961586 0.77186733 0.076399975 0.43931025
		 0.89508075 -0.31128916 0.54488826 0.77858573 0.37999335 0.34268451 0.85916954 0.40016273
		 0.36394796 0.84107763 0.35978442 0.3587625 0.86130404 0.35978442 0.3587625 0.86130404
		 0.40016273 0.36394796 0.84107763 0.40697983 0.39132744 0.8253668 0.43757927 0.26871204
		 0.85808986 0.39246485 0.27789089 0.87678277 0.37999335 0.34268451 0.85916954 0.37999335
		 0.34268451 0.85916954 0.39246485 0.27789089 0.87678277 0.40016273 0.36394796 0.84107763
		 0.58528119 -0.46022427 0.66756231 0.58979589 -0.46729094 0.65861976 0.59359026 -0.47328472
		 0.65088576 0.59359026 -0.47328472 0.65088576 0.58979589 -0.46729094 0.65861976 0.59359026
		 -0.47328472 0.6508857 0.35979298 0.35877895 -0.86129355 0.076366827 0.4393087 -0.89508438
		 0.40699005 0.39133632 -0.82535756 0.40699005 0.39133632 -0.82535756 0.076366827 0.4393087
		 -0.89508438 0.42826355 0.4326354 -0.79335815 0.3800084 0.34268993 -0.85916078 0.35979298
		 0.35877895 -0.86129355 0.40019247 0.36397076 -0.84105361 0.40019247 0.36397076 -0.84105361
		 0.35979298 0.35877895 -0.86129355 0.40699005 0.39133632 -0.82535756 0.43757918 0.26871288
		 -0.85808957 0.3800084 0.34268993 -0.85916078 0.39246386 0.27789119 -0.87678301 0.39246386
		 0.27789119 -0.87678301 0.3800084 0.34268993 -0.85916078 0.40019247 0.36397076 -0.84105361
		 0.59358472 -0.4732801 -0.65089411 0.58979243 -0.4672873 -0.65862536 0.59358472 -0.4732801
		 -0.65089417 0.59358472 -0.4732801 -0.65089417 0.58979243 -0.4672873 -0.65862536 0.5852809
		 -0.46022272 -0.66756374 -0.89286542 0.45024467 0.008440081 -0.89515918 0.44409633
		 0.03831936 -0.89725512 0.42913806 0.1037971 -0.89725506 0.42913809 0.10379709 -0.89725506
		 0.429138 0.10379708 -0.89515918 0.44409633 0.03831936 -0.89515918 0.44409633 0.03831936
		 -0.89725506 0.429138 0.10379708 -0.89725512 0.42913806 0.1037971 -0.43930125 0.45962158
		 -0.77185649 -0.30995366 0.31797117 -0.89600396 -0.45663619 0.44664043 -0.76941258
		 -0.45663619 0.44664043 -0.76941258 -0.30995366 0.31797117 -0.89600396 1.4601223e-07
		 0.25539663 -0.96683639 -0.31127003 0.5448333 -0.77863199 0.076366827 0.4393087 -0.89508438
		 -0.43930125 0.45962158 -0.77185649 -0.43930125 0.45962158 -0.77185649 0.076366827
		 0.4393087 -0.89508438 -0.30995366 0.31797117 -0.89600396 0.42569077 -0.45453972 0.7824201
		 0.42569074 -0.45453966 0.78242004 0.42569077 -0.45453966 0.78242016 0.42569077 -0.45453966
		 0.78242016 0.42569074 -0.45453966 0.78242004 0.42569074 -0.45453966 0.78242004 -0.5378046
		 -0.49699178 0.68100327 -0.53780448 -0.49699178 0.68100321 -0.53780454 -0.49699172
		 0.68100327 -0.53780454 -0.49699172 0.68100327 -0.53780448 -0.49699178 0.68100321
		 -0.53780454 -0.49699172 0.68100327 0.42598808 -0.45485848 -0.78207284 0.42598811
		 -0.45485848 -0.78207284 0.42598811 -0.45485842 -0.78207284 0.42598811 -0.45485842
		 -0.78207284 0.42598811 -0.45485848 -0.78207284 0.42598814 -0.45485848 -0.78207284
		 -0.53796476 -0.49714518 -0.68076473 -0.53796476 -0.49714512 -0.68076468 -0.53796476
		 -0.49714518 -0.68076468 -0.53796476 -0.49714518 -0.68076468 -0.53796476 -0.49714512
		 -0.68076468 -0.53796476 -0.49714515 -0.68076462 -0.84814215 -0.19100195 0.49413875
		 -0.84814215 -0.19100194 0.49413875 -0.84814227 -0.19100198 0.49413881 -0.84814227
		 -0.19100198 0.49413881 -0.84814215 -0.19100194 0.49413875 -0.84814221 -0.19100197
		 0.49413878 -0.84818465 -0.1910096 -0.49406284 -0.84818465 -0.19100957 -0.49406278
		 -0.8481847 -0.19100958 -0.49406278 -0.8481847 -0.19100958 -0.49406278 -0.84818465
		 -0.19100957 -0.49406278 -0.84818465 -0.19100958 -0.49406281 -0.7626825 0.50812358
		 -0.40015739 -0.7626825 0.50812352 -0.40015736;
	setAttr ".n[830:995]" -type "float3"  -0.76268244 0.50812352 -0.40015736 -0.76268244
		 0.50812352 -0.40015736 -0.7626825 0.50812352 -0.40015736 -0.7626825 0.50812358 -0.40015736
		 -0.76272261 0.50814891 0.40004849 -0.76272267 0.50814903 0.40004852 -0.76272255 0.50814891
		 0.40004849 -0.76272255 0.50814891 0.40004849 -0.76272267 0.50814903 0.40004852 -0.76272267
		 0.50814897 0.40004852 0.35979298 0.35877895 -0.86129355 0.030052349 0.2565743 -0.96605718
		 0.076366827 0.4393087 -0.89508438 0.076366827 0.4393087 -0.89508438 0.030052349 0.2565743
		 -0.96605718 -0.30995366 0.31797117 -0.89600396 -0.30992559 0.3179417 0.89602405 0.030079283
		 0.25654271 0.96606475 0.076399975 0.43931025 0.89508075 0.076399975 0.43931025 0.89508075
		 0.030079283 0.25654271 0.96606475 0.35978442 0.3587625 0.86130404 1.7374006e-07 0.18571006
		 -0.98260462 1.8351056e-07 0.18571007 -0.98260462 0.030052349 0.2565743 -0.96605718
		 1.8351056e-07 0.18571007 -0.98260462 1.4601223e-07 0.25539663 -0.96683639 0.030052349
		 0.2565743 -0.96605718 0.030052349 0.2565743 -0.96605718 1.4601223e-07 0.25539663
		 -0.96683639 -0.30995366 0.31797117 -0.89600396 0.35979298 0.35877895 -0.86129355
		 0.3800084 0.34268993 -0.85916078 0.030052349 0.2565743 -0.96605718 0.030052349 0.2565743
		 -0.96605718 0.3800084 0.34268993 -0.85916078 0.39471322 0.32541329 -0.85924828 0.39470565
		 0.32541484 0.85925126 0.37999335 0.34268451 0.85916954 0.030079283 0.25654271 0.96606475
		 0.030079283 0.25654271 0.96606475 0.37999335 0.34268451 0.85916954 0.35978442 0.3587625
		 0.86130404 0.3800084 0.34268993 -0.85916078 0.43757918 0.26871288 -0.85808957 0.39471322
		 0.32541329 -0.85924828 0.39471322 0.32541329 -0.85924828 0.43757918 0.26871288 -0.85808957
		 0.49771109 0.25504217 -0.82899767 0.49770984 0.25504062 0.82899892 0.43757927 0.26871204
		 0.85808986 0.39470565 0.32541484 0.85925126 0.39470565 0.32541484 0.85925126 0.43757927
		 0.26871204 0.85808986 0.37999335 0.34268451 0.85916954 0.58979243 -0.4672873 -0.65862536
		 0.55440032 -0.4134838 -0.72226834 0.5852809 -0.46022272 -0.66756374 0.5852809 -0.46022272
		 -0.66756374 0.55440032 -0.4134838 -0.72226834 0.55440038 -0.4134838 -0.72226834 0.5543806
		 -0.41347301 0.72228944 0.55438066 -0.41347304 0.72228956 0.58528119 -0.46022427 0.66756231
		 0.58528119 -0.46022427 0.66756231 0.55438066 -0.41347304 0.72228956 0.58979589 -0.46729094
		 0.65861976 0.53501564 -0.57356161 -0.62031066 0.53501564 -0.57356161 -0.62031072
		 0.53501558 -0.57356167 -0.62031066 0.53501564 -0.57356161 -0.62031072 0.53501558
		 -0.57356161 -0.62031066 0.53501564 -0.57356161 -0.62031072 0.53501564 -0.57356161
		 -0.62031072 0.53501558 -0.57356161 -0.62031066 0.53501558 -0.57356167 -0.62031066
		 -0.55192751 -0.51677024 -0.65446514 -0.55192745 -0.51677024 -0.65446508 -0.55192751
		 -0.5167703 -0.65446514 -0.55192751 -0.5167703 -0.65446514 -0.55192745 -0.51677024
		 -0.65446508 -0.55192751 -0.51677024 -0.65446508 -0.82485098 -0.094436713 -0.55740714
		 -0.82485092 -0.094436713 -0.55740714 -0.82485092 -0.094436713 -0.55740714 -0.82485092
		 -0.094436713 -0.55740714 -0.82485092 -0.094436713 -0.55740714 -0.82485092 -0.094436698
		 -0.55740708 -0.79982954 0.55674195 -0.22430146 -0.79982954 0.55674195 -0.22430146
		 -0.81619 0.56911498 -0.099709533 -0.81619 0.56911498 -0.099709533 -0.79982954 0.55674195
		 -0.22430146 -0.8176623 0.57030362 -0.078627072 -0.7998293 0.55674082 0.224305 -0.81618983
		 0.56911445 0.099713877 -0.7998293 0.55674076 0.224305 -0.7998293 0.55674076 0.224305
		 -0.81618983 0.56911445 0.099713877 -0.817662 0.57030314 0.078632832 -0.82486457 -0.094420537
		 0.55738968 -0.82486451 -0.094420537 0.55738962 -0.82486457 -0.09442053 0.55738956
		 -0.82486457 -0.09442053 0.55738956 -0.82486451 -0.094420537 0.55738962 -0.82486463
		 -0.094420545 0.55738962 -0.55192894 -0.51677501 0.65446019 -0.55192894 -0.51677507
		 0.65446013 -0.55192894 -0.51677501 0.65446013 -0.55192894 -0.51677501 0.65446013
		 -0.55192894 -0.51677507 0.65446013 -0.55192888 -0.51677495 0.65446013 -0.70380497
		 0.71039319 1.025576e-05 -0.69604212 0.71800101 1.0072776e-05 -0.70380497 0.71039319
		 1.0255758e-05 -0.70380497 0.71039319 1.0255758e-05 -0.69604212 0.71800101 1.0072776e-05
		 -0.69604123 0.71800178 1.0072755e-05 -2.5767083e-08 0.25535756 0.96684664 -0.30992559
		 0.3179417 0.89602405 -0.45662174 0.44662368 0.76943088 -0.45662174 0.44662368 0.76943088
		 -0.30992559 0.3179417 0.89602405 -0.43928817 0.45961586 0.77186733 -6.4351853e-09
		 0.18566845 0.98261243 0.030079283 0.25654271 0.96606475 -1.7476593e-08 0.18566845
		 0.98261249 -1.7476593e-08 0.18566845 0.98261249 0.030079283 0.25654271 0.96606475
		 -2.5767083e-08 0.25535756 0.96684664 0.030079283 0.25654271 0.96606475 -0.30992559
		 0.3179417 0.89602405 -2.5767083e-08 0.25535756 0.96684664 0.53501374 -0.5735597 0.62031406
		 0.53501374 -0.5735597 0.62031412 0.53501374 -0.5735597 0.62031412 0.53501374 -0.57355976
		 0.62031406 0.53501374 -0.5735597 0.62031412 0.53501379 -0.5735597 0.62031406 0.53501379
		 -0.5735597 0.62031406 0.53501374 -0.5735597 0.62031412 0.53501374 -0.5735597 0.62031412
		 0.59435916 0.80419976 7.7366985e-06 0.59435916 0.80419976 7.7366994e-06 0.69604087
		 0.71800208 5.3288195e-06 0.69604087 0.71800208 5.3288195e-06 0.59435916 0.80419976
		 7.7366994e-06 0.69604182 0.71800131 5.3287977e-06 -0.6890226 0.72473979 2.3055967e-05
		 -0.6890226 0.72473985 2.3055969e-05 -0.72987783 0.68357766 1.0084324e-05 -0.72987783
		 0.68357766 1.0084324e-05 -0.6890226 0.72473985 2.3055969e-05 -0.72987705 0.68357837
		 1.0084551e-05 -0.72987783 0.68357766 1.0084324e-05 -0.72987705 0.68357837 1.0084551e-05
		 -0.75507325 0.65564042 4.5474676e-06 -0.75507325 0.65564042 4.5474676e-06 -0.72987705
		 0.68357837 1.0084551e-05 -0.75507355 0.65564018 4.5474148e-06 -0.75507325 0.65564042
		 4.5474676e-06 -0.75507355 0.65564018 4.5474148e-06 -0.80521679 0.59298044 -5.6588374e-06
		 -0.80521679 0.59298044 -5.6588374e-06 -0.75507355 0.65564018 4.5474148e-06 -0.80521697
		 0.59298044 -5.6588378e-06;
	setAttr ".n[996:1161]" -type "float3"  -0.77573061 -0.63106424 1.1980173e-05
		 -0.77573055 -0.63106412 1.1980171e-05 -0.77573067 -0.63106424 1.1980173e-05 -0.77573067
		 -0.63106424 1.1980173e-05 -0.77573055 -0.63106412 1.1980171e-05 -0.77573061 -0.63106418
		 1.1980172e-05 0.89287138 0.45023227 -0.0084553929 0.89287168 0.45023212 0.0084420238
		 0.89516336 0.44408616 -0.038339105 0.89516336 0.44408616 -0.038339105 0.89287168
		 0.45023212 0.0084420238 0.89516413 0.44408521 0.038334198 0.81619018 0.56911433 -0.099712007
		 0.81618983 0.56911367 0.099718027 0.8176626 0.57030296 -0.078628831 0.8176626 0.57030296
		 -0.078628831 0.81618983 0.56911367 0.099718027 0.81766236 0.57030225 0.078635916
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 0.73262721 -0.68063015 -3.7171465e-06 0.73262721
		 -0.68063009 -3.7171462e-06 0.73262721 -0.68063009 -3.7171465e-06 0.73262721 -0.68063009
		 -3.7171465e-06 0.73262721 -0.68063009 -3.7171462e-06 0.73262727 -0.68063003 -3.7171465e-06
		 -0.68153948 -0.7317813 -3.8650751e-06 -0.68153948 -0.7317813 -3.8650742e-06 -0.68153954
		 -0.7317813 -3.8650751e-06 -0.68153954 -0.7317813 -3.8650751e-06 -0.68153948 -0.7317813
		 -3.8650742e-06 -0.68153948 -0.7317813 -3.8650746e-06 -0.42833164 0.4326728 0.79330087
		 -0.40697891 0.39132729 0.82536733 -0.076393008 0.43931109 0.89508098 -0.076393008
		 0.43931109 0.89508098 -0.40697891 0.39132729 0.82536733 -0.35978457 0.35876355 0.86130351
		 0.89287138 0.45023227 -0.0084553929 0.89516336 0.44408616 -0.038339105 0.89725441
		 0.42913145 -0.10383018 0.89725435 0.42913142 -0.10383017 0.89725441 0.42913145 -0.10383017
		 0.89516336 0.44408616 -0.038339105 0.89725441 0.42913145 -0.10383018 0.89516336 0.44408616
		 -0.038339105 0.89725441 0.42913145 -0.10383017 0.30992919 0.31794518 0.89602154 0.4392955
		 0.45962316 0.77185887 -0.076393008 0.43931109 0.89508098 -0.076393008 0.43931109
		 0.89508098 0.4392955 0.45962316 0.77185887 0.31130844 0.54489779 0.77857137 -0.40697891
		 0.39132729 0.82536733 -0.40016574 0.36395049 0.84107518 -0.35978457 0.35876355 0.86130351
		 -0.35978457 0.35876355 0.86130351 -0.40016574 0.36395049 0.84107518 -0.37999502 0.34268498
		 0.85916871 -0.40016574 0.36395049 0.84107518 -0.39247271 0.27788979 0.87677962 -0.37999502
		 0.34268498 0.85916871 -0.37999502 0.34268498 0.85916871 -0.39247271 0.27788979 0.87677962
		 -0.43758786 0.26871005 0.85808611 -0.58527625 -0.46021822 0.66757083 -0.59358162
		 -0.47327515 0.65090054 -0.58978891 -0.46728304 0.65863168 -0.58978891 -0.46728304
		 0.65863168 -0.59358162 -0.47327515 0.65090054 -0.59358162 -0.4732751 0.65090048 -0.42825139
		 0.43262625 -0.79336953 -0.076359719 0.43930975 -0.89508438 -0.40698928 0.39133644
		 -0.82535791 -0.40698928 0.39133644 -0.82535791 -0.076359719 0.43930975 -0.89508438
		 -0.35979325 0.35878009 -0.86129308 -0.40698928 0.39133644 -0.82535791 -0.35979325
		 0.35878009 -0.86129308 -0.40019587 0.36397368 -0.84105074 -0.40019587 0.36397368
		 -0.84105074 -0.35979325 0.35878009 -0.86129308 -0.38001037 0.34269059 -0.85915953
		 -0.40019587 0.36397368 -0.84105074 -0.38001037 0.34269059 -0.85915953 -0.39247379
		 0.27789158 -0.87677848 -0.39247379 0.27789158 -0.87677848 -0.38001037 0.34269059
		 -0.85915953 -0.43758851 0.26871121 -0.85808551 -0.59357572 -0.47327018 -0.6509096
		 -0.59357566 -0.47327012 -0.6509096 -0.58978498 -0.46727902 -0.65863794 -0.58978498
		 -0.46727902 -0.65863794 -0.59357566 -0.47327012 -0.6509096 -0.58527541 -0.46021625
		 -0.66757298 0.89287168 0.45023212 0.0084420238 0.89725441 0.42912892 0.1038405 0.89516413
		 0.44408521 0.038334198 0.89725441 0.42912886 0.10384048 0.89516413 0.44408521 0.038334198
		 0.89725441 0.42912889 0.10384049 0.89516413 0.44408521 0.038334198 0.89725441 0.42912892
		 0.1038405 0.89725441 0.42912889 0.10384049 0.43930864 0.459629 -0.77184778 0.45664233
		 0.44664738 -0.76940501 0.30995747 0.31797484 -0.8960014 0.30995747 0.31797484 -0.8960014
		 0.45664233 0.44664738 -0.76940501 1.4601223e-07 0.25539663 -0.96683639 0.31128985
		 0.54484344 -0.77861691 0.43930864 0.459629 -0.77184778 -0.076359719 0.43930975 -0.89508438
		 -0.076359719 0.43930975 -0.89508438 0.43930864 0.459629 -0.77184778 0.30995747 0.31797484
		 -0.8960014 -0.4257071 -0.45455688 0.78240114 -0.42570716 -0.45455694 0.78240114 -0.4257071
		 -0.45455685 0.78240103 -0.4257071 -0.45455685 0.78240103 -0.42570716 -0.45455694
		 0.78240114 -0.4257071 -0.45455685 0.78240108 0.53777176 -0.49696136 0.68105131 0.5377717
		 -0.49696136 0.68105131 0.53777176 -0.49696141 0.68105137 0.53777176 -0.49696141 0.68105137
		 0.5377717 -0.49696136 0.68105131 0.53777176 -0.49696136 0.68105137 -0.42600855 -0.45488003
		 -0.78204912 -0.42600855 -0.45488006 -0.78204918 -0.42600855 -0.45488003 -0.78204918
		 -0.42600855 -0.45488003 -0.78204918 -0.42600855 -0.45488006 -0.78204918 -0.42600855
		 -0.45487997 -0.78204906 0.53793752 -0.4971199 -0.68080467 0.53793752 -0.49711987
		 -0.68080467 0.53793746 -0.49711987 -0.68080467 0.53793746 -0.49711987 -0.68080467
		 0.53793752 -0.49711987 -0.68080467 0.53793752 -0.49711987 -0.68080467 0.84815568
		 -0.1909969 0.49411741 0.84815586 -0.19099693 0.49411741 0.84815574 -0.19099692 0.49411741
		 0.84815574 -0.19099692 0.49411741 0.84815586 -0.19099693 0.49411741 0.8481558 -0.1909969
		 0.49411741 0.84819907 -0.19100462 -0.49404004 0.84819913 -0.19100463 -0.49404004
		 0.84819907 -0.19100463 -0.49404004 0.84819907 -0.19100463 -0.49404004 0.84819913
		 -0.19100463 -0.49404004 0.84819907 -0.19100462 -0.49404001 0.76263398 0.50808996
		 -0.40029252 0.76263392 0.50808996 -0.40029255 0.76263392 0.50808996 -0.40029252 0.76263392
		 0.50808996 -0.40029252 0.76263392 0.50808996 -0.40029255 0.76263398 0.50808996 -0.40029249
		 0.76267952 0.50811964 0.40016806 0.76267946 0.50811958 0.40016803 0.76267952 0.50811964
		 0.40016803 0.76267952 0.50811964 0.40016803;
	setAttr ".n[1162:1327]" -type "float3"  0.76267946 0.50811958 0.40016803 0.76267946
		 0.50811964 0.40016806 0.30995747 0.31797484 -0.8960014 -0.030053215 0.25657505 -0.96605694
		 -0.076359719 0.43930975 -0.89508438 -0.076359719 0.43930975 -0.89508438 -0.030053215
		 0.25657505 -0.96605694 -0.35979325 0.35878009 -0.86129308 0.30992919 0.31794518 0.89602154
		 -0.076393008 0.43931109 0.89508098 -0.030080141 0.25654322 0.96606463 -0.030080141
		 0.25654322 0.96606463 -0.076393008 0.43931109 0.89508098 -0.35978457 0.35876355 0.86130351
		 1.7374006e-07 0.18571006 -0.98260462 -0.030053215 0.25657505 -0.96605694 1.8351056e-07
		 0.18571007 -0.98260462 1.8351056e-07 0.18571007 -0.98260462 -0.030053215 0.25657505
		 -0.96605694 1.4601223e-07 0.25539663 -0.96683639 -0.030053215 0.25657505 -0.96605694
		 0.30995747 0.31797484 -0.8960014 1.4601223e-07 0.25539663 -0.96683639 -0.35979325
		 0.35878009 -0.86129308 -0.030053215 0.25657505 -0.96605694 -0.38001037 0.34269059
		 -0.85915953 -0.38001037 0.34269059 -0.85915953 -0.030053215 0.25657505 -0.96605694
		 -0.39471442 0.32541335 -0.85924774 -0.35978457 0.35876355 0.86130351 -0.37999502
		 0.34268498 0.85916871 -0.030080141 0.25654322 0.96606463 -0.030080141 0.25654322
		 0.96606463 -0.37999502 0.34268498 0.85916871 -0.3947069 0.32541505 0.85925055 -0.38001037
		 0.34269059 -0.85915953 -0.39471442 0.32541335 -0.85924774 -0.43758851 0.26871121
		 -0.85808551 -0.43758851 0.26871121 -0.85808551 -0.39471442 0.32541335 -0.85924774
		 -0.49771729 0.25503823 -0.82899517 -0.37999502 0.34268498 0.85916871 -0.43758786
		 0.26871005 0.85808611 -0.3947069 0.32541505 0.85925055 -0.3947069 0.32541505 0.85925055
		 -0.43758786 0.26871005 0.85808611 -0.49771729 0.25503787 0.82899523 -0.55440766 -0.4134894
		 -0.7222594 -0.55440766 -0.4134894 -0.7222594 -0.58527541 -0.46021625 -0.66757298
		 -0.58527541 -0.46021625 -0.66757298 -0.55440766 -0.4134894 -0.7222594 -0.58978498
		 -0.46727902 -0.65863794 -0.55438882 -0.41347912 0.72227985 -0.58527625 -0.46021822
		 0.66757083 -0.55438876 -0.41347909 0.72227979 -0.55438876 -0.41347909 0.72227979
		 -0.58527625 -0.46021822 0.66757083 -0.58978891 -0.46728304 0.65863168 -0.53502297
		 -0.57356954 -0.62029696 -0.53502291 -0.5735696 -0.6202969 -0.53502297 -0.57356954
		 -0.62029696 -0.53502297 -0.5735696 -0.62029696 -0.53502297 -0.57356954 -0.62029696
		 -0.53502297 -0.5735696 -0.62029696 -0.53502297 -0.57356954 -0.62029696 -0.53502291
		 -0.5735696 -0.6202969 -0.53502297 -0.5735696 -0.62029696 0.55192417 -0.51676637 -0.65447092
		 0.55192423 -0.51676643 -0.65447086 0.55192417 -0.51676637 -0.65447086 0.55192417
		 -0.51676637 -0.65447086 0.55192423 -0.51676643 -0.65447086 0.55192417 -0.51676637
		 -0.65447092 0.82486188 -0.094429351 -0.55739206 0.82486188 -0.094429344 -0.55739206
		 0.82486188 -0.094429336 -0.55739212 0.82486188 -0.094429336 -0.55739212 0.82486188
		 -0.094429344 -0.55739206 0.82486188 -0.094429344 -0.55739206 0.8176626 0.57030296
		 -0.078628831 0.79982841 0.55674213 -0.22430523 0.81619018 0.56911433 -0.099712007
		 0.81619018 0.56911433 -0.099712007 0.79982841 0.55674213 -0.22430523 0.79982835 0.55674213
		 -0.22430523 0.81766236 0.57030225 0.078635916 0.81618983 0.56911367 0.099718027 0.79982746
		 0.5567404 0.22431242 0.79982746 0.5567404 0.22431242 0.81618983 0.56911367 0.099718027
		 0.79982746 0.55674046 0.22431248 0.82487667 -0.094411582 0.55737317 0.82487673 -0.094411589
		 0.55737323 0.82487673 -0.094411589 0.55737323 0.82487673 -0.094411589 0.55737323
		 0.82487673 -0.094411589 0.55737323 0.82487667 -0.094411582 0.55737323 0.55192673
		 -0.51677215 0.65446419 0.55192679 -0.51677221 0.65446424 0.55192673 -0.51677221 0.65446419
		 0.55192673 -0.51677221 0.65446419 0.55192679 -0.51677221 0.65446424 0.55192673 -0.51677215
		 0.65446419 0.70380366 0.71039456 5.1278698e-06 0.7038036 0.71039456 5.1278698e-06
		 0.69604182 0.71800131 5.3287977e-06 0.69604182 0.71800131 5.3287977e-06 0.7038036
		 0.71039456 5.1278698e-06 0.69604087 0.71800208 5.3288195e-06 -2.5767083e-08 0.25535756
		 0.96684664 0.45662773 0.44663045 0.76942343 0.30992919 0.31794518 0.89602154 0.30992919
		 0.31794518 0.89602154 0.45662773 0.44663045 0.76942343 0.4392955 0.45962316 0.77185887
		 -6.4351853e-09 0.18566845 0.98261243 -1.7476593e-08 0.18566845 0.98261249 -0.030080141
		 0.25654322 0.96606463 -1.7476593e-08 0.18566845 0.98261249 -2.5767083e-08 0.25535756
		 0.96684664 -0.030080141 0.25654322 0.96606463 -2.5767083e-08 0.25535756 0.96684664
		 0.30992919 0.31794518 0.89602154 -0.030080141 0.25654322 0.96606463 -0.53502035 -0.57356673
		 0.62030196 -0.53502035 -0.57356668 0.62030196 -0.53502035 -0.57356668 0.6203019 -0.53502041
		 -0.57356673 0.6203019 -0.53502035 -0.57356668 0.6203019 -0.53502035 -0.57356668 0.62030196
		 -0.53502035 -0.57356668 0.6203019 -0.53502035 -0.57356668 0.6203019 -0.53502035 -0.57356668
		 0.62030196 0.42193195 0.42193222 -0.80246288 0.42193192 0.42193219 -0.80246288 0.42193192
		 0.42193219 -0.80246288 0.42193192 0.42193219 -0.80246288 0.42193192 0.42193219 -0.80246288
		 0.42193189 0.42193222 -0.80246294 0.31571466 -0.46625227 -0.82639766 0.42192969 -0.42193222
		 -0.80246401 0.29070443 -0.47552207 -0.83028293 0.29070443 -0.47552207 -0.83028293
		 0.42192969 -0.42193222 -0.80246401 0.42192978 -0.42193225 -0.80246407 0.29070443
		 -0.47552207 -0.83028293 -0.29070434 -0.47552279 -0.83028245 0.31571466 -0.46625227
		 -0.82639766 0.31571466 -0.46625227 -0.82639766 -0.29070434 -0.47552279 -0.83028245
		 -0.31571418 -0.46625322 -0.82639718 -0.42193222 0.42193216 -0.8024627 -0.42193225
		 0.42193219 -0.80246276 -0.42193222 0.42193213 -0.80246276 -0.42193222 0.42193213
		 -0.80246276 -0.42193225 0.42193219 -0.80246276 -0.42193228 0.42193219 -0.80246276
		 -0.42193407 -0.42193359 -0.80246109 -0.42193401 -0.42193356 -0.80246103 -0.42193404
		 -0.42193362 -0.80246103 -0.42193404 -0.42193362 -0.80246103 -0.42193401 -0.42193356
		 -0.80246103 -0.42193401 -0.42193359 -0.80246103 -0.42193282 0.42193252 -0.80246222
		 -0.42193282 0.42193252 -0.80246222;
	setAttr ".n[1328:1493]" -type "float3"  -0.42193279 0.42193252 -0.80246216 -0.42193279
		 0.42193252 -0.80246216 -0.42193282 0.42193252 -0.80246222 -0.42193282 0.42193252
		 -0.80246222 0.42193311 -0.42193329 -0.80246156 0.42193311 -0.42193329 -0.80246156
		 0.42193311 -0.42193332 -0.80246162 0.42193311 -0.42193332 -0.80246162 0.42193311
		 -0.42193329 -0.80246156 0.42193314 -0.42193329 -0.80246162 -0.42193323 -0.42193192
		 0.80246228 -0.42193323 -0.42193195 0.80246234 -0.42193323 -0.42193198 0.80246234
		 -0.42193323 -0.42193198 0.80246234 -0.42193323 -0.42193195 0.80246234 -0.42193323
		 -0.42193198 0.80246234 -0.42193314 0.42193338 0.80246162 -0.42193308 0.42193338 0.80246168
		 -0.42193308 0.42193338 0.80246168 -0.42193308 0.42193338 0.80246168 -0.42193308 0.42193338
		 0.80246168 -0.42193311 0.42193338 0.80246162 0.42193219 -0.42193067 0.80246359 0.42193216
		 -0.42193064 0.80246353 0.42193213 -0.42193064 0.80246353 0.42193213 -0.42193064 0.80246353
		 0.42193216 -0.42193064 0.80246353 0.42193219 -0.42193067 0.80246359 0.42193195 0.42193183
		 0.80246305 0.42193198 0.4219318 0.802463 0.42193195 0.42193177 0.802463 0.42193195
		 0.42193177 0.802463 0.42193198 0.4219318 0.802463 0.42193198 0.42193186 0.80246311
		 0.42193201 -0.42193401 0.80246192 0.42193198 -0.42193398 0.8024618 0.29070613 -0.47552472
		 0.83028072 0.29070613 -0.47552472 0.83028072 0.42193198 -0.42193398 0.8024618 0.31571624
		 -0.46625495 0.82639551 -0.31571594 -0.4662559 0.82639498 -0.29070604 -0.47552565
		 0.8302803 0.31571624 -0.46625495 0.82639551 0.31571624 -0.46625495 0.82639551 -0.29070604
		 -0.47552565 0.8302803 0.29070613 -0.47552472 0.83028072 -0.42193261 0.42193189 0.80246264
		 -0.42193264 0.42193186 0.80246258 -0.42193267 0.42193195 0.8024627 -0.42193267 0.42193195
		 0.8024627 -0.42193264 0.42193186 0.80246258 -0.42193264 0.42193189 0.80246264 0.42193064
		 0.42193121 -0.80246401 0.42193067 0.42193124 -0.80246413 0.42193061 0.42193118 -0.80246407
		 0.42193061 0.42193118 -0.80246407 0.42193067 0.42193124 -0.80246413 0.42193064 0.42193121
		 -0.80246407 -0.31571418 -0.46625322 -0.82639718 -0.29070434 -0.47552279 -0.83028245
		 -0.42192915 -0.42193359 -0.80246359 -0.42192915 -0.42193359 -0.80246359 -0.29070434
		 -0.47552279 -0.83028245 -0.42192912 -0.42193359 -0.80246359 -0.42193192 -0.42193532
		 0.80246127 -0.29070604 -0.47552565 0.8302803 -0.42193189 -0.42193529 0.80246121 -0.42193189
		 -0.42193529 0.80246121 -0.29070604 -0.47552565 0.8302803 -0.31571594 -0.4662559 0.82639498
		 0.42193085 0.42193079 0.80246425 0.42193079 0.42193079 0.80246419 0.42193079 0.42193076
		 0.80246419 0.42193079 0.42193076 0.80246419 0.42193079 0.42193079 0.80246419 0.42193079
		 0.42193079 0.80246413 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 -0.92816901 1.0146421e-07
		 -0.37215903 -0.92816901 1.014642e-07 -0.372159 -0.92816895 1.0146419e-07 -0.37215897
		 -0.92816895 1.0146419e-07 -0.37215897 -0.92816901 1.014642e-07 -0.372159 -0.92816895
		 1.014642e-07 -0.37215894 0 -5.0348103e-07 1 0 -5.0348103e-07 1 0 -5.0348103e-07 1
		 0 -5.0348103e-07 1 0 -5.0348103e-07 1 0 -5.0348103e-07 1 -0.92816961 -1.9815904e-07
		 0.37215748 -0.92816967 -1.9815904e-07 0.37215748 -0.92816967 -1.9815906e-07 0.37215751
		 -0.92816967 -1.9815906e-07 0.37215751 -0.92816967 -1.9815904e-07 0.37215748 -0.92816961
		 -1.9815903e-07 0.37215748 0.92816353 9.6088201e-08 -0.37217247 0.92816359 9.6088222e-08
		 -0.3721725 0.92816353 9.6088215e-08 -0.3721725 0.92816353 9.6088215e-08 -0.3721725
		 0.92816359 9.6088222e-08 -0.3721725 0.92816353 9.6088208e-08 -0.3721725 0.92816418
		 -1.9731155e-07 0.37217098 0.92816418 -1.9731155e-07 0.37217101 0.92816418 -1.9731155e-07
		 0.37217101 0.92816418 -1.9731155e-07 0.37217101 0.92816418 -1.9731155e-07 0.37217101
		 0.92816418 -1.9731154e-07 0.37217101 0.60059917 -0.76243043 0.24079143 0.60059917
		 -0.76243037 0.24079141 0.61878341 -0.78556162 2.9792395e-06 0.61878341 -0.78556162
		 2.9792395e-06 0.60059917 -0.76243037 0.24079141 0.61878335 -0.78556174 3.6140034e-06
		 0 -0.76478362 0.64428717 0 -0.76478368 0.64428723 0 -0.76478368 0.64428717 0 -0.76478368
		 0.64428717 0 -0.76478368 0.64428723 0 -0.76478362 0.64428711 -0.60062039 -0.76241326
		 0.24079311 -0.61909825 -0.78531355 1.7018812e-05 -0.60062027 -0.7624132 0.24079311
		 -0.60062027 -0.7624132 0.24079311 -0.61909825 -0.78531355 1.7018812e-05 -0.61909825
		 -0.78531361 2.3998977e-05 0.70735198 0.64745218 0.28365287 0.70735192 0.64745218
		 0.28365284 0.70735192 0.64745212 0.28365284 0.70735192 0.64745212 0.28365284 0.70735192
		 0.64745218 0.28365284 0.70735198 0.64745218 0.28365287 0 0.64407021 0.76496643 0
		 0.64407015 0.76496643 0 0.64407021 0.76496643 0 0.64407021 0.76496643 0 0.64407015
		 0.76496643 0 0.64407015 0.76496643 -0.70736063 0.6474362 0.28366762 -0.70736068 0.64743614
		 0.28366762 -0.70736063 0.6474362 0.28366762 -0.70736063 0.6474362 0.28366762 -0.70736068
		 0.64743614 0.28366762 -0.70736068 0.64743626 0.28366765 -0.61909825 -0.78531361 2.3998977e-05
		 -0.61909825 -0.78531355 1.7018812e-05 -0.60111898 -0.76196831 -0.24095702 -0.60111898
		 -0.76196831 -0.24095702 -0.61909825 -0.78531355 1.7018812e-05 -0.60111904 -0.76196826
		 -0.24095699 -0.70673269 0.64821374 -0.28345713 -0.70673269 0.64821362 -0.2834571
		 -0.70673263 0.64821368 -0.28345707 -0.70673263 0.64821368 -0.28345707 -0.70673269
		 0.64821362 -0.2834571 -0.70673269 0.64821362 -0.2834571 3.4974266e-05 -0.76443601
		 -0.64469975 3.4974259e-05 -0.76443589 -0.64469969 3.4974259e-05 -0.76443589 -0.64469975
		 3.4974259e-05 -0.76443589 -0.64469975 3.4974259e-05 -0.76443589 -0.64469969 3.4974259e-05
		 -0.76443589 -0.64469969;
	setAttr ".n[1494:1601]" -type "float3"  -3.9504939e-05 0.64485592 -0.76430416
		 -3.9504939e-05 0.64485592 -0.76430416 -3.9504943e-05 0.64485598 -0.76430428 -3.9504943e-05
		 0.64485598 -0.76430428 -3.9504939e-05 0.64485592 -0.76430416 -3.9504936e-05 0.64485586
		 -0.76430416 0.60055727 -0.76246893 -0.24077392 0.61878341 -0.78556162 2.9792395e-06
		 0.60055715 -0.76246893 -0.24077389 0.60055715 -0.76246893 -0.24077389 0.61878341
		 -0.78556162 2.9792395e-06 0.61878335 -0.78556174 3.6140034e-06 0.70736974 0.64742881
		 -0.28366145 0.70736974 0.64742881 -0.28366148 0.7073698 0.64742881 -0.28366145 0.7073698
		 0.64742881 -0.28366145 0.70736974 0.64742881 -0.28366148 0.7073698 0.64742887 -0.28366151
		 0 -0.16856815 0.98569 0 -0.16856815 0.98569 0 -0.16856815 0.98568994 0 -0.16856815
		 0.98568994 0 -0.16856815 0.98569 0 -0.16856815 0.98568994 -0.91598475 -0.16149282
		 0.36727658 -0.91598469 -0.16149281 0.36727658 -0.91598475 -0.16149282 0.36727661
		 -0.91598475 -0.16149282 0.36727661 -0.91598469 -0.16149281 0.36727658 -0.91598475
		 -0.16149281 0.36727655 -0.91598696 -0.16149305 -0.36727077 -0.91598696 -0.16149305
		 -0.36727074 -0.91598696 -0.16149305 -0.36727077 -0.91598696 -0.16149305 -0.36727077
		 -0.91598696 -0.16149305 -0.36727074 -0.91598696 -0.16149306 -0.36727077 0 -0.16856878
		 -0.98568988 0 -0.16856878 -0.98568988 0 -0.16856879 -0.98568994 0 -0.16856879 -0.98568994
		 0 -0.16856878 -0.98568988 0 -0.16856879 -0.98568994 0.91598451 -0.16149512 -0.36727616
		 0.91598439 -0.16149509 -0.3672761 0.91598451 -0.16149512 -0.36727616 0.91598451 -0.16149512
		 -0.36727616 0.91598439 -0.16149509 -0.3672761 0.91598445 -0.1614951 -0.36727613 0.91598201
		 -0.1614949 0.36728233 0.91598201 -0.1614949 0.36728233 0.91598207 -0.16149488 0.36728233
		 0.91598207 -0.16149488 0.36728233 0.91598201 -0.1614949 0.36728233 0.91598207 -0.1614949
		 0.36728236 2.332574e-06 -1 -1.044656e-05 -2.3325831e-06 -1 -1.0446587e-05 2.1990761e-06
		 -1 -1.0637387e-05 2.1990761e-06 -1 -1.0637387e-05 -2.3325831e-06 -1 -1.0446587e-05
		 -2.1990697e-06 -1 -1.0637431e-05 5.0739663e-07 1 3.3580196e-07 -6.6401003e-06 0.99999994
		 8.3356545e-06 6.6400949e-06 1 9.8002338e-06 2.7490041e-06 -1 -1.9479564e-06 2.332574e-06
		 -1 -1.044656e-05 2.748882e-06 -1 -1.9477206e-06 2.748882e-06 -1 -1.9477206e-06 2.332574e-06
		 -1 -1.044656e-05 2.1990761e-06 -1 -1.0637387e-05 5.0739663e-07 1 3.3580196e-07 -1.5327205e-05
		 1 5.63507e-07 -6.6401003e-06 0.99999994 8.3356545e-06 2.7490041e-06 -1 -1.9479564e-06
		 2.748882e-06 -1 -1.9477206e-06 -5.0135878e-07 -1 5.2124847e-06 -5.0135878e-07 -1
		 5.2124847e-06 2.748882e-06 -1 -1.9477206e-06 -5.4492415e-07 -1 5.3387948e-06 5.0739663e-07
		 1 3.3580196e-07 -5.2175924e-06 0.99999994 -7.8484063e-06 -1.5327205e-05 1 5.63507e-07
		 -1.9427075e-06 -1 6.99566e-06 -5.0135878e-07 -1 5.2124847e-06 -1.9037191e-06 -0.99999994
		 7.0199058e-06 -1.9037191e-06 -0.99999994 7.0199058e-06 -5.0135878e-07 -1 5.2124847e-06
		 -5.4492415e-07 -1 5.3387948e-06 5.0739663e-07 1 3.3580196e-07 8.063299e-06 1 -9.3123908e-06
		 -5.2175924e-06 0.99999994 -7.8484063e-06 -3.9236388e-06 -1 3.1724683e-13 -1.9427075e-06
		 -1 6.99566e-06 -3.9236393e-06 -0.99999994 5.2067541e-13 -3.9236393e-06 -0.99999994
		 5.2067541e-13 -1.9427075e-06 -1 6.99566e-06 -1.9037191e-06 -0.99999994 7.0199058e-06
		 5.0739663e-07 1 3.3580196e-07 1.5327174e-05 1 5.6343066e-07 8.063299e-06 1 -9.3123908e-06
		 -3.9236388e-06 -1 3.1724683e-13 -3.9236393e-06 -0.99999994 5.2067541e-13 -2.3325831e-06
		 -1 -1.0446587e-05 -2.3325831e-06 -1 -1.0446587e-05 -3.9236393e-06 -0.99999994 5.2067541e-13
		 -2.1990697e-06 -1 -1.0637431e-05 5.0739663e-07 1 3.3580196e-07 6.6400949e-06 1 9.8002338e-06
		 1.5327174e-05 1 5.6343066e-07;
	setAttr -s 534 -ch 1602 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 76 3
		f 3 -2 3 4
		mu 0 3 3 76 2
		f 3 -1 5 6
		mu 0 3 76 0 75
		f 3 -6 7 8
		mu 0 3 75 0 4
		f 3 -9 9 10
		mu 0 3 75 4 74
		f 3 -10 11 12
		mu 0 3 74 4 6
		f 3 -13 13 14
		mu 0 3 74 6 73
		f 3 -14 15 16
		mu 0 3 73 6 8
		f 3 -17 17 18
		mu 0 3 73 8 71
		f 3 -18 19 20
		mu 0 3 71 8 10
		f 3 -21 21 22
		mu 0 3 11 69 13
		f 3 -22 23 24
		mu 0 3 13 69 12
		f 3 -25 25 26
		mu 0 3 13 12 15
		f 3 -26 27 28
		mu 0 3 15 12 14
		f 3 -29 29 30
		mu 0 3 15 14 17
		f 3 -30 31 32
		mu 0 3 17 14 16
		f 3 -33 33 34
		mu 0 3 17 16 55
		f 3 -34 35 36
		mu 0 3 55 16 18
		f 3 -37 37 38
		mu 0 3 19 53 81
		f 3 -38 39 40
		mu 0 3 81 53 80
		f 3 -7 41 42
		mu 0 3 1 5 20
		f 3 -42 43 44
		mu 0 3 20 5 21
		f 3 -23 45 46
		mu 0 3 11 13 70
		f 3 47 48 49
		mu 0 3 23 24 13
		f 3 -46 -49 50
		mu 0 3 70 13 24
		f 3 51 52 53
		mu 0 3 25 2 20
		f 3 -53 -4 -43
		mu 0 3 20 2 1
		f 3 -11 54 -44
		mu 0 3 5 7 21
		f 3 -55 55 56
		mu 0 3 21 7 26
		f 3 -15 57 -56
		mu 0 3 7 9 26
		f 3 -58 58 59
		mu 0 3 26 9 27
		f 3 -59 60 61
		mu 0 3 27 9 22
		f 3 -61 -19 -47
		mu 0 3 22 9 72
		f 3 62 63 -8
		mu 0 3 0 28 4
		f 3 -64 64 65
		mu 0 3 4 28 29
		f 3 -66 66 -12
		mu 0 3 4 29 6
		f 3 -67 67 68
		mu 0 3 6 29 30
		f 3 -69 69 -16
		mu 0 3 6 30 8
		f 3 -70 70 71
		mu 0 3 8 30 31
		f 3 -20 72 73
		mu 0 3 10 8 68
		f 3 -73 -72 74
		mu 0 3 68 8 31
		f 3 -74 75 -24
		mu 0 3 69 32 12
		f 3 76 77 78
		mu 0 3 34 12 62
		f 3 -76 79 -78
		mu 0 3 12 32 62
		f 3 80 81 82
		mu 0 3 3 82 35
		f 3 -82 83 84
		mu 0 3 35 82 78
		f 3 -3 85 -63
		mu 0 3 0 3 28
		f 3 -86 -83 86
		mu 0 3 28 3 35
		f 3 87 88 89
		mu 0 3 36 37 54
		f 3 -89 90 91
		mu 0 3 54 37 59
		f 3 92 93 -92
		mu 0 3 67 64 39
		f 3 -94 94 95
		mu 0 3 39 64 41
		f 3 96 97 98
		mu 0 3 43 44 57
		f 3 -98 99 100
		mu 0 3 57 44 56
		f 3 -100 101 102
		mu 0 3 66 52 65
		f 3 -102 103 104
		mu 0 3 65 52 46
		f 3 -105 105 106
		mu 0 3 65 46 63
		f 3 -106 107 108
		mu 0 3 63 46 48
		f 3 109 110 -95
		mu 0 3 64 60 41
		f 3 -111 111 112
		mu 0 3 41 60 51
		f 3 113 114 -109
		mu 0 3 48 34 63
		f 3 -115 -79 115
		mu 0 3 63 34 62
		f 3 -112 116 117
		mu 0 3 51 60 23
		f 3 -117 118 -48
		mu 0 3 23 60 24
		f 3 119 120 -87
		mu 0 3 35 45 28
		f 3 -121 121 -65
		mu 0 3 28 45 29
		f 3 -54 122 123
		mu 0 3 25 20 38
		f 3 -123 -45 124
		mu 0 3 38 20 21
		f 3 -101 125 126
		mu 0 3 42 45 86
		f 3 -126 127 128
		mu 0 3 86 45 78
		f 3 -120 -85 -128
		mu 0 3 45 35 78
		f 3 -122 129 -68
		mu 0 3 29 45 30
		f 3 -130 -103 130
		mu 0 3 30 45 47
		f 3 -57 131 -125
		mu 0 3 21 26 38
		f 3 -132 132 -93
		mu 0 3 38 26 40
		f 3 -131 133 -71
		mu 0 3 30 47 31
		f 3 -134 -107 134
		mu 0 3 31 47 49
		f 3 -60 135 -133
		mu 0 3 26 27 40
		f 3 -136 136 -110
		mu 0 3 40 27 50
		f 3 -116 137 -135
		mu 0 3 49 33 31
		f 3 -138 -80 -75
		mu 0 3 31 33 68
		f 3 -137 138 -119
		mu 0 3 50 27 61
		f 3 -139 -62 -51
		mu 0 3 61 27 22
		f 3 -39 139 140
		mu 0 3 19 81 54
		f 3 -90 141 142
		mu 0 3 36 54 85
		f 3 -140 143 -142
		mu 0 3 54 81 85
		f 3 -141 144 -35
		mu 0 3 55 39 17
		f 3 -145 -96 145
		mu 0 3 17 39 41
		f 3 -146 146 -31
		mu 0 3 17 41 15
		f 3 -147 -113 147
		mu 0 3 15 41 51
		f 3 -148 148 -27
		mu 0 3 15 51 13
		f 3 -149 -118 -50
		mu 0 3 13 51 23
		f 3 -28 149 150
		mu 0 3 14 12 48
		f 3 -150 -77 -114
		mu 0 3 48 12 34
		f 3 -32 151 152
		mu 0 3 16 14 46
		f 3 -152 -151 -108
		mu 0 3 46 14 48
		f 3 -36 153 154
		mu 0 3 18 16 52
		f 3 -154 -153 -104
		mu 0 3 52 16 46
		f 3 155 156 157
		mu 0 3 83 82 2
		f 3 -157 -81 -5
		mu 0 3 2 82 3
		f 3 158 159 160
		mu 0 3 77 83 25
		f 3 -160 -158 -52
		mu 0 3 25 83 2
		f 3 161 162 -91
		mu 0 3 58 84 38
		f 3 163 164 -163
		mu 0 3 84 77 38
		f 3 -161 -124 -165
		mu 0 3 77 25 38
		f 3 -155 165 -40
		mu 0 3 53 44 80
		f 3 166 167 -97
		mu 0 3 43 79 44
		f 3 168 -166 -168
		mu 0 3 79 80 44
		f 3 169 170 171
		mu 0 3 87 90 88
		f 3 -171 172 173
		mu 0 3 88 90 89
		f 3 174 175 -172
		mu 0 3 88 92 87
		f 3 -176 176 177
		mu 0 3 87 92 91
		f 3 178 179 -177
		mu 0 3 92 94 91
		f 3 -180 180 181
		mu 0 3 91 94 93
		f 3 182 183 -181
		mu 0 3 94 96 93
		f 3 -184 184 185
		mu 0 3 93 96 95
		f 3 186 187 -185
		mu 0 3 96 98 95
		f 3 -188 188 189
		mu 0 3 95 98 97
		f 3 190 191 -189
		mu 0 3 99 102 100
		f 3 -192 192 193
		mu 0 3 100 102 101
		f 3 194 195 -193
		mu 0 3 102 104 101
		f 3 -196 196 197
		mu 0 3 101 104 103
		f 3 198 199 -197
		mu 0 3 104 106 103
		f 3 -200 200 201
		mu 0 3 103 106 105
		f 3 202 203 -201
		mu 0 3 106 108 105
		f 3 -204 204 205
		mu 0 3 105 108 107
		f 3 206 207 -205
		mu 0 3 109 112 110
		f 3 -208 -41 208
		mu 0 3 110 112 111
		f 3 209 210 211
		mu 0 3 116 115 113
		f 3 -211 -175 212
		mu 0 3 113 115 114
		f 3 213 214 -191
		mu 0 3 99 117 102
		f 3 215 216 217
		mu 0 3 118 102 119
		f 3 218 -217 -215
		mu 0 3 117 119 102
		f 3 219 220 221
		mu 0 3 120 113 89
		f 3 -221 -213 -174
		mu 0 3 89 113 114
		f 3 222 223 224
		mu 0 3 122 121 116
		f 3 -224 -179 -210
		mu 0 3 116 121 115
		f 3 225 226 227
		mu 0 3 124 123 122
		f 3 -227 -183 -223
		mu 0 3 122 123 121
		f 3 228 229 -226
		mu 0 3 124 126 123
		f 3 -230 -214 -187
		mu 0 3 123 126 125
		f 3 230 231 232
		mu 0 3 128 127 91
		f 3 -232 233 -178
		mu 0 3 91 127 87
		f 3 234 235 236
		mu 0 3 129 128 93
		f 3 -236 -233 -182
		mu 0 3 93 128 91
		f 3 237 238 239
		mu 0 3 130 129 95
		f 3 -239 -237 -186
		mu 0 3 95 129 93
		f 3 240 241 -190
		mu 0 3 97 131 95
		f 3 -242 242 -240
		mu 0 3 95 131 130
		f 3 -194 243 -241
		mu 0 3 100 101 132
		f 3 244 245 246
		mu 0 3 134 133 101
		f 3 -246 247 -244
		mu 0 3 101 133 132
		f 3 248 249 250
		mu 0 3 90 137 135
		f 3 -250 251 -84
		mu 0 3 135 137 136
		f 3 -234 252 -170
		mu 0 3 87 127 90
		f 3 -253 253 -249
		mu 0 3 90 127 137
		f 3 254 255 -88
		mu 0 3 138 141 139
		f 3 -256 256 257
		mu 0 3 139 141 140
		f 3 258 259 260
		mu 0 3 145 144 142
		f 3 -260 261 -257
		mu 0 3 142 144 143
		f 3 262 263 264
		mu 0 3 149 148 146
		f 3 -264 265 -99
		mu 0 3 146 148 147
		f 3 266 267 -263
		mu 0 3 150 153 151
		f 3 -268 268 269
		mu 0 3 151 153 152
		f 3 270 271 -269
		mu 0 3 153 155 152
		f 3 -272 272 273
		mu 0 3 152 155 154
		f 3 274 275 276
		mu 0 3 157 156 145
		f 3 -276 277 -259
		mu 0 3 145 156 144
		f 3 -245 278 279
		mu 0 3 133 134 155
		f 3 -279 280 -273
		mu 0 3 155 134 154
		f 3 281 282 -275
		mu 0 3 157 118 156
		f 3 -283 -218 283
		mu 0 3 156 118 119
		f 3 284 285 -231
		mu 0 3 128 158 127
		f 3 -286 286 -254
		mu 0 3 127 158 137
		f 3 287 288 -220
		mu 0 3 120 159 113
		f 3 -289 289 -212
		mu 0 3 113 159 116
		f 3 -127 290 -265
		mu 0 3 161 160 158
		f 3 -129 291 -291
		mu 0 3 160 136 158
		f 3 -292 -252 -287
		mu 0 3 158 136 137
		f 3 -235 292 -285
		mu 0 3 128 129 158
		f 3 -293 293 -267
		mu 0 3 158 129 162
		f 3 294 295 -262
		mu 0 3 163 122 159
		f 3 -296 -225 -290
		mu 0 3 159 122 116
		f 3 -238 296 -294
		mu 0 3 129 130 162
		f 3 -297 297 -271
		mu 0 3 162 130 164
		f 3 298 299 -278
		mu 0 3 165 124 163
		f 3 -300 -228 -295
		mu 0 3 163 124 122
		f 3 -248 300 -243
		mu 0 3 131 166 130
		f 3 -301 -280 -298
		mu 0 3 130 166 164
		f 3 -284 301 -299
		mu 0 3 165 167 124
		f 3 -302 -219 -229
		mu 0 3 124 167 126
		f 3 302 303 -207
		mu 0 3 109 141 112
		f 3 -143 304 -255
		mu 0 3 138 168 141
		f 3 -305 -144 -304
		mu 0 3 141 168 112
		f 3 -261 305 306
		mu 0 3 145 142 106
		f 3 -306 -303 -203
		mu 0 3 106 142 108
		f 3 -277 307 308
		mu 0 3 157 145 104
		f 3 -308 -307 -199
		mu 0 3 104 145 106
		f 3 -282 309 -216
		mu 0 3 118 157 102
		f 3 -310 -309 -195
		mu 0 3 102 157 104
		f 3 -247 310 -281
		mu 0 3 134 101 154
		f 3 -311 -198 311
		mu 0 3 154 101 103
		f 3 -312 312 -274
		mu 0 3 154 103 152
		f 3 -313 -202 313
		mu 0 3 152 103 105
		f 3 -314 314 -270
		mu 0 3 152 105 151
		f 3 -315 -206 315
		mu 0 3 151 105 107
		f 3 316 317 -156
		mu 0 3 169 89 135
		f 3 -318 -173 -251
		mu 0 3 135 89 90
		f 3 318 319 -159
		mu 0 3 170 120 169
		f 3 -320 -222 -317
		mu 0 3 169 120 89
		f 3 -258 320 -162
		mu 0 3 172 159 171
		f 3 -321 321 -164
		mu 0 3 171 159 170
		f 3 -288 -319 -322
		mu 0 3 159 120 170
		f 3 -209 322 -316
		mu 0 3 110 111 148
		f 3 -266 323 -167
		mu 0 3 147 148 173
		f 3 -324 -323 -169
		mu 0 3 173 148 111
		f 3 324 325 326
		mu 0 3 174 177 175
		f 3 -326 327 328
		mu 0 3 175 177 176
		f 3 329 330 -327
		mu 0 3 175 179 174
		f 3 -331 331 332
		mu 0 3 174 179 178
		f 3 333 334 -332
		mu 0 3 179 181 178
		f 3 -335 335 336
		mu 0 3 178 181 180
		f 3 337 338 -336
		mu 0 3 181 183 180
		f 3 -339 339 340
		mu 0 3 180 183 182
		f 3 341 342 -340
		mu 0 3 183 185 182
		f 3 -343 343 344
		mu 0 3 182 185 184
		f 3 345 346 -344
		mu 0 3 186 189 187
		f 3 -347 347 348
		mu 0 3 187 189 188
		f 3 349 350 -348
		mu 0 3 189 191 188
		f 3 -351 351 352
		mu 0 3 188 191 190
		f 3 353 354 -352
		mu 0 3 191 193 190
		f 3 -355 355 356
		mu 0 3 190 193 192
		f 3 357 358 -356
		mu 0 3 193 195 192
		f 3 -359 359 360
		mu 0 3 192 195 194
		f 3 361 362 -360
		mu 0 3 196 199 197
		f 3 -363 363 364
		mu 0 3 197 199 198
		f 3 365 366 367
		mu 0 3 203 202 200
		f 3 -367 -330 368
		mu 0 3 200 202 201
		f 3 369 370 -346
		mu 0 3 186 204 189
		f 3 371 372 373
		mu 0 3 205 189 206
		f 3 374 -373 -371
		mu 0 3 204 206 189
		f 3 375 376 377
		mu 0 3 207 200 176
		f 3 -377 -369 -329
		mu 0 3 176 200 201
		f 3 378 379 380
		mu 0 3 209 208 203
		f 3 -380 -334 -366
		mu 0 3 203 208 202
		f 3 381 382 383
		mu 0 3 211 210 209
		f 3 -383 -338 -379
		mu 0 3 209 210 208
		f 3 384 385 -382
		mu 0 3 211 213 210
		f 3 -386 -370 -342
		mu 0 3 210 213 212
		f 3 386 387 388
		mu 0 3 215 214 178
		f 3 -388 389 -333
		mu 0 3 178 214 174
		f 3 390 391 392
		mu 0 3 216 215 180
		f 3 -392 -389 -337
		mu 0 3 180 215 178
		f 3 393 394 395
		mu 0 3 217 216 182
		f 3 -395 -393 -341
		mu 0 3 182 216 180
		f 3 396 397 -345
		mu 0 3 184 218 182
		f 3 -398 398 -396
		mu 0 3 182 218 217
		f 3 -349 399 -397
		mu 0 3 187 188 219
		f 3 400 401 402
		mu 0 3 221 220 188
		f 3 -402 403 -400
		mu 0 3 188 220 219
		f 3 404 405 406
		mu 0 3 177 224 222
		f 3 -406 407 408
		mu 0 3 222 224 223
		f 3 -390 409 -325
		mu 0 3 174 214 177
		f 3 -410 410 -405
		mu 0 3 177 214 224
		f 3 411 412 413
		mu 0 3 225 228 226
		f 3 -413 414 415
		mu 0 3 226 228 227
		f 3 416 417 418
		mu 0 3 232 231 229
		f 3 -418 419 -415
		mu 0 3 229 231 230
		f 3 420 421 422
		mu 0 3 236 235 233
		f 3 -422 423 424
		mu 0 3 233 235 234
		f 3 425 426 -421
		mu 0 3 237 240 238
		f 3 -427 427 428
		mu 0 3 238 240 239
		f 3 429 430 -428
		mu 0 3 240 242 239
		f 3 -431 431 432
		mu 0 3 239 242 241
		f 3 433 434 435
		mu 0 3 244 243 232
		f 3 -435 436 -417
		mu 0 3 232 243 231
		f 3 -401 437 438
		mu 0 3 220 221 242
		f 3 -438 439 -432
		mu 0 3 242 221 241
		f 3 440 441 -434
		mu 0 3 244 205 243
		f 3 -442 -374 442
		mu 0 3 243 205 206
		f 3 443 444 -387
		mu 0 3 215 245 214
		f 3 -445 445 -411
		mu 0 3 214 245 224
		f 3 446 447 -376
		mu 0 3 207 246 200
		f 3 -448 448 -368
		mu 0 3 200 246 203
		f 3 449 450 -423
		mu 0 3 248 247 245
		f 3 451 452 -451
		mu 0 3 247 223 245
		f 3 -453 -408 -446
		mu 0 3 245 223 224
		f 3 -391 453 -444
		mu 0 3 215 216 245
		f 3 -454 454 -426
		mu 0 3 245 216 249
		f 3 455 456 -420
		mu 0 3 250 209 246
		f 3 -457 -381 -449
		mu 0 3 246 209 203
		f 3 -394 457 -455
		mu 0 3 216 217 249
		f 3 -458 458 -430
		mu 0 3 249 217 251
		f 3 459 460 -437
		mu 0 3 252 211 250
		f 3 -461 -384 -456
		mu 0 3 250 211 209
		f 3 -404 461 -399
		mu 0 3 218 253 217
		f 3 -462 -439 -459
		mu 0 3 217 253 251
		f 3 -443 462 -460
		mu 0 3 252 254 211
		f 3 -463 -375 -385
		mu 0 3 211 254 213
		f 3 463 464 -362
		mu 0 3 196 228 199
		f 3 465 466 -412
		mu 0 3 225 255 228
		f 3 -467 467 -465
		mu 0 3 228 255 199
		f 3 -419 468 469
		mu 0 3 232 229 193
		f 3 -469 -464 -358
		mu 0 3 193 229 195
		f 3 -436 470 471
		mu 0 3 244 232 191
		f 3 -471 -470 -354
		mu 0 3 191 232 193
		f 3 -441 472 -372
		mu 0 3 205 244 189
		f 3 -473 -472 -350
		mu 0 3 189 244 191
		f 3 -403 473 -440
		mu 0 3 221 188 241
		f 3 -474 -353 474
		mu 0 3 241 188 190
		f 3 -475 475 -433
		mu 0 3 241 190 239
		f 3 -476 -357 476
		mu 0 3 239 190 192
		f 3 -477 477 -429
		mu 0 3 239 192 238
		f 3 -478 -361 478
		mu 0 3 238 192 194
		f 3 479 480 481
		mu 0 3 256 176 222
		f 3 -481 -328 -407
		mu 0 3 222 176 177
		f 3 482 483 484
		mu 0 3 257 207 256
		f 3 -484 -378 -480
		mu 0 3 256 207 176
		f 3 -416 485 486
		mu 0 3 259 246 258
		f 3 -486 487 488
		mu 0 3 258 246 257
		f 3 -447 -483 -488
		mu 0 3 246 207 257
		f 3 -365 489 -479
		mu 0 3 197 198 235
		f 3 -424 490 491
		mu 0 3 234 235 260
		f 3 -491 -490 492
		mu 0 3 260 235 198
		f 3 493 494 495
		mu 0 3 261 264 262
		f 3 -495 496 497
		mu 0 3 262 264 263
		f 3 -494 498 499
		mu 0 3 264 261 265
		f 3 -499 500 501
		mu 0 3 265 261 266
		f 3 -502 502 503
		mu 0 3 265 266 267
		f 3 -503 504 505
		mu 0 3 267 266 268
		f 3 -506 506 507
		mu 0 3 267 268 269
		f 3 -507 508 509
		mu 0 3 269 268 270
		f 3 -510 510 511
		mu 0 3 269 270 271
		f 3 -511 512 513
		mu 0 3 271 270 272
		f 3 -514 514 515
		mu 0 3 273 276 274
		f 3 -515 516 517
		mu 0 3 274 276 275
		f 3 -518 518 519
		mu 0 3 274 275 277
		f 3 -519 520 521
		mu 0 3 277 275 278
		f 3 -522 522 523
		mu 0 3 277 278 279
		f 3 -523 524 525
		mu 0 3 279 278 280
		f 3 -526 526 527
		mu 0 3 279 280 281
		f 3 -527 528 529
		mu 0 3 281 280 282
		f 3 -530 530 531
		mu 0 3 283 286 284
		f 3 -531 532 -364
		mu 0 3 284 286 285
		f 3 -500 533 534
		mu 0 3 290 289 287
		f 3 -534 535 536
		mu 0 3 287 289 288
		f 3 -516 537 538
		mu 0 3 273 274 291
		f 3 539 540 541
		mu 0 3 293 292 274
		f 3 -538 -541 542
		mu 0 3 291 274 292
		f 3 543 544 545
		mu 0 3 294 263 287
		f 3 -545 -497 -535
		mu 0 3 287 263 290
		f 3 -504 546 -536
		mu 0 3 289 296 288
		f 3 -547 547 548
		mu 0 3 288 296 295
		f 3 -508 549 -548
		mu 0 3 296 298 295
		f 3 -550 550 551
		mu 0 3 295 298 297
		f 3 -551 552 553
		mu 0 3 297 298 299
		f 3 -553 -512 -539
		mu 0 3 299 298 300
		f 3 554 555 -501
		mu 0 3 261 302 266
		f 3 -556 556 557
		mu 0 3 266 302 301
		f 3 -558 558 -505
		mu 0 3 266 301 268
		f 3 -559 559 560
		mu 0 3 268 301 303
		f 3 -561 561 -509
		mu 0 3 268 303 270
		f 3 -562 562 563
		mu 0 3 270 303 304
		f 3 -513 564 565
		mu 0 3 272 270 305
		f 3 -565 -564 566
		mu 0 3 305 270 304
		f 3 -566 567 -517
		mu 0 3 276 308 275
		f 3 568 569 570
		mu 0 3 306 275 307
		f 3 -568 571 -570
		mu 0 3 275 308 307
		f 3 572 573 574
		mu 0 3 262 311 309
		f 3 -574 -409 575
		mu 0 3 309 311 310
		f 3 -496 576 -555
		mu 0 3 261 262 302
		f 3 -577 -575 577
		mu 0 3 302 262 309
		f 3 -414 578 579
		mu 0 3 312 315 313
		f 3 -579 580 581
		mu 0 3 313 315 314
		f 3 582 583 -582
		mu 0 3 319 318 316
		f 3 -584 584 585
		mu 0 3 316 318 317
		f 3 586 587 -425
		mu 0 3 323 322 320
		f 3 -588 588 589
		mu 0 3 320 322 321
		f 3 -589 590 591
		mu 0 3 324 327 325
		f 3 -591 592 593
		mu 0 3 325 327 326
		f 3 -594 594 595
		mu 0 3 325 326 328
		f 3 -595 596 597
		mu 0 3 328 326 329
		f 3 598 599 -585
		mu 0 3 318 331 317
		f 3 -600 600 601
		mu 0 3 317 331 330
		f 3 602 603 -598
		mu 0 3 329 306 328
		f 3 -604 -571 604
		mu 0 3 328 306 307
		f 3 -601 605 606
		mu 0 3 330 331 293
		f 3 -606 607 -540
		mu 0 3 293 331 292
		f 3 608 609 -578
		mu 0 3 309 332 302
		f 3 -610 610 -557
		mu 0 3 302 332 301
		f 3 -546 611 612
		mu 0 3 294 287 333
		f 3 -612 -537 613
		mu 0 3 333 287 288
		f 3 -590 614 -450
		mu 0 3 334 332 335
		f 3 -615 615 -452
		mu 0 3 335 332 310
		f 3 -609 -576 -616
		mu 0 3 332 309 310
		f 3 -611 616 -560
		mu 0 3 301 332 303
		f 3 -617 -592 617
		mu 0 3 303 332 336
		f 3 -549 618 -614
		mu 0 3 288 295 333
		f 3 -619 619 -583
		mu 0 3 333 295 337
		f 3 -618 620 -563
		mu 0 3 303 336 304
		f 3 -621 -596 621
		mu 0 3 304 336 338
		f 3 -552 622 -620
		mu 0 3 295 297 337
		f 3 -623 623 -599
		mu 0 3 337 297 339
		f 3 -605 624 -622
		mu 0 3 338 340 304
		f 3 -625 -572 -567
		mu 0 3 304 340 305
		f 3 -624 625 -608
		mu 0 3 339 297 341
		f 3 -626 -554 -543
		mu 0 3 341 297 299
		f 3 -532 626 627
		mu 0 3 283 284 313
		f 3 -580 628 -466
		mu 0 3 312 313 342
		f 3 -627 -468 -629
		mu 0 3 313 284 342
		f 3 -628 629 -528
		mu 0 3 281 316 279
		f 3 -630 -586 630
		mu 0 3 279 316 317
		f 3 -631 631 -524
		mu 0 3 279 317 277
		f 3 -632 -602 632
		mu 0 3 277 317 330
		f 3 -633 633 -520
		mu 0 3 277 330 274
		f 3 -634 -607 -542
		mu 0 3 274 330 293
		f 3 -521 634 635
		mu 0 3 278 275 329
		f 3 -635 -569 -603
		mu 0 3 329 275 306
		f 3 -525 636 637
		mu 0 3 280 278 326
		f 3 -637 -636 -597
		mu 0 3 326 278 329
		f 3 -529 638 639
		mu 0 3 282 280 327
		f 3 -639 -638 -593
		mu 0 3 327 280 326
		f 3 -482 640 641
		mu 0 3 343 311 263
		f 3 -641 -573 -498
		mu 0 3 263 311 262
		f 3 -485 642 643
		mu 0 3 344 343 294
		f 3 -643 -642 -544
		mu 0 3 294 343 263
		f 3 -487 644 -581
		mu 0 3 346 345 333
		f 3 -489 645 -645
		mu 0 3 345 344 333
		f 3 -644 -613 -646
		mu 0 3 344 294 333
		f 3 -640 646 -533
		mu 0 3 286 322 285
		f 3 -492 647 -587
		mu 0 3 323 347 322
		f 3 -493 -647 -648
		mu 0 3 347 285 322
		f 3 648 649 650
		mu 0 3 348 349 351
		f 3 -650 651 652
		mu 0 3 351 349 350
		f 3 653 654 655
		mu 0 3 352 348 353
		f 3 -655 -651 656
		mu 0 3 353 348 351
		f 3 657 658 -656
		mu 0 3 353 354 352
		f 3 -659 659 660
		mu 0 3 352 354 355
		f 3 661 662 -652
		mu 0 3 349 356 350
		f 3 -663 663 664
		mu 0 3 350 356 357
		f 3 -653 665 666
		mu 0 3 351 350 359
		f 3 -666 667 668
		mu 0 3 359 350 358
		f 3 -657 669 670
		mu 0 3 353 351 360
		f 3 -670 -667 671
		mu 0 3 360 351 359
		f 3 -665 672 -668
		mu 0 3 350 357 358
		f 3 -673 673 674
		mu 0 3 358 357 361
		f 3 -669 675 676
		mu 0 3 362 363 365
		f 3 -676 677 678
		mu 0 3 365 363 364
		f 3 679 680 681
		mu 0 3 366 367 365
		f 3 -681 -672 -677
		mu 0 3 365 367 362
		f 3 -675 682 -678
		mu 0 3 363 368 364
		f 3 -683 683 684
		mu 0 3 364 368 369
		f 3 -679 685 686
		mu 0 3 365 364 371
		f 3 -686 687 -649
		mu 0 3 371 364 370
		f 3 -687 688 -682
		mu 0 3 365 371 366
		f 3 -689 -654 689
		mu 0 3 366 371 372
		f 3 690 691 -661
		mu 0 3 373 374 372
		f 3 -692 692 -690
		mu 0 3 372 374 366
		f 3 -685 693 -688
		mu 0 3 364 369 370
		f 3 -694 694 -662
		mu 0 3 370 369 375
		f 3 695 696 697
		mu 0 3 354 376 357
		f 3 -697 698 -674
		mu 0 3 357 376 361
		f 3 -660 699 700
		mu 0 3 355 354 356
		f 3 -700 -698 -664
		mu 0 3 356 354 357
		f 3 701 702 -695
		mu 0 3 369 374 375
		f 3 -703 -691 -701
		mu 0 3 375 374 373
		f 3 -699 703 -684
		mu 0 3 368 377 369
		f 3 -704 704 -702
		mu 0 3 369 377 374
		f 3 -658 705 706
		mu 0 3 354 353 379
		f 3 -706 707 708
		mu 0 3 379 353 378
		f 3 -671 709 -708
		mu 0 3 353 360 378
		f 3 -710 710 711
		mu 0 3 378 360 380
		f 3 -693 712 713
		mu 0 3 366 374 382
		f 3 -713 714 715
		mu 0 3 382 374 381
		f 3 -714 716 -680
		mu 0 3 366 382 367
		f 3 -717 717 -711
		mu 0 3 367 382 383
		f 3 -707 718 -696
		mu 0 3 354 379 376
		f 3 -719 719 720
		mu 0 3 376 379 384
		f 3 -705 721 -715
		mu 0 3 374 377 381
		f 3 -722 -721 722
		mu 0 3 381 377 385
		f 3 723 724 725
		mu 0 3 386 387 389
		f 3 -725 726 727
		mu 0 3 389 387 388
		f 3 -724 728 729
		mu 0 3 387 386 391
		f 3 -729 730 731
		mu 0 3 391 386 390
		f 3 732 733 -732
		mu 0 3 390 392 391
		f 3 -734 734 735
		mu 0 3 391 392 393
		f 3 736 737 738
		mu 0 3 395 396 394
		f 3 -738 739 740
		mu 0 3 394 396 397
		f 3 -739 741 742
		mu 0 3 395 394 399
		f 3 -742 743 744
		mu 0 3 399 394 398
		f 3 -745 745 746
		mu 0 3 399 398 401
		f 3 -746 747 748
		mu 0 3 401 398 400
		f 3 -735 749 750
		mu 0 3 393 392 403
		f 3 -750 751 752
		mu 0 3 403 392 402
		f 3 753 754 -749
		mu 0 3 400 404 401
		f 3 -755 755 756
		mu 0 3 401 404 405
		f 3 -753 757 758
		mu 0 3 403 402 407
		f 3 -758 759 760
		mu 0 3 407 402 406
		f 3 -756 761 762
		mu 0 3 405 404 409
		f 3 -762 763 764
		mu 0 3 409 404 408;
	setAttr ".fc[500:533]"
		f 3 765 766 -761
		mu 0 3 406 389 407
		f 3 -767 -728 767
		mu 0 3 407 389 388
		f 3 -765 768 769
		mu 0 3 409 408 396
		f 3 -769 770 -740
		mu 0 3 396 408 397
		f 3 -731 771 772
		mu 0 3 390 386 411
		f 3 -772 773 -743
		mu 0 3 411 386 410
		f 3 -733 774 775
		mu 0 3 392 390 412
		f 3 -775 -773 -747
		mu 0 3 412 390 411
		f 3 -776 776 -752
		mu 0 3 392 412 402
		f 3 -777 -757 777
		mu 0 3 402 412 413
		f 3 -760 778 779
		mu 0 3 406 402 414
		f 3 -779 -778 -763
		mu 0 3 414 402 413
		f 3 -766 780 781
		mu 0 3 389 406 415
		f 3 -781 -780 -770
		mu 0 3 415 406 414
		f 3 -782 782 -726
		mu 0 3 389 415 386
		f 3 -783 -737 -774
		mu 0 3 386 415 410
		f 3 -716 783 784
		mu 0 3 416 417 391
		f 3 -784 785 -730
		mu 0 3 391 417 387
		f 3 786 -744 787
		mu 0 3 418 398 394
		f 3 -718 788 789
		mu 0 3 419 416 393
		f 3 -789 -785 -736
		mu 0 3 393 416 391
		f 3 790 -748 -787
		mu 0 3 418 400 398
		f 3 -790 791 -712
		mu 0 3 419 393 420
		f 3 -792 -751 792
		mu 0 3 420 393 403
		f 3 793 -754 -791
		mu 0 3 418 404 400
		f 3 -709 794 795
		mu 0 3 421 420 407
		f 3 -795 -793 -759
		mu 0 3 407 420 403
		f 3 796 -764 -794
		mu 0 3 418 408 404
		f 3 -720 797 798
		mu 0 3 422 421 388
		f 3 -798 -796 -768
		mu 0 3 388 421 407
		f 3 799 -771 -797
		mu 0 3 418 397 408
		f 3 -799 800 -723
		mu 0 3 422 388 417
		f 3 -801 -727 -786
		mu 0 3 417 388 387
		f 3 -788 -741 -800
		mu 0 3 418 394 397;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "85C16C6C-4DD0-3D55-BA31-BD88698E7D2B";
	setAttr -s 13 ".lnk";
	setAttr -s 13 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "50CC4AAB-430B-EE36-AF1D-A0ADADBFE54E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "31C78C09-4B01-9FB9-1A68-1F981C6C4554";
createNode displayLayerManager -n "layerManager";
	rename -uid "92918BEA-428D-7B85-BF25-0290DF2CA1A1";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "9B4AD46B-41F8-E023-C81A-9C99477386F5";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "869D90D4-4199-6DC1-69E5-938C30484DB7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F32BEED8-4B2B-DDA3-B5E5-F0B2FB88F8A7";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "A5490308-4927-6D1D-EDC8-7799AAFCA67C";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".AA_samples" 4;
	setAttr ".GI_diffuse_samples" 3;
	setAttr ".GI_specular_samples" 3;
	setAttr ".GI_transmission_samples" 3;
	setAttr ".GI_sss_samples" 3;
	setAttr ".GI_volume_samples" 3;
	setAttr ".GI_diffuse_depth" 3;
	setAttr ".GI_specular_depth" 3;
	setAttr ".GI_total_depth" 11;
	setAttr ".version" -type "string" "5.0.0.1";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=turnTableCamera1Shape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "E894360E-4763-E184-F1B2-DB96C8BA10EE";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "F137B71D-4869-AC7C-07C0-D1A31C03C0CC";
	setAttr ".color_management" 1;
	setAttr ".ai_translator" -type "string" "png";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "325F8BF9-4FB8-D34D-E836-7D81A9B1A93B";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "3ED6E056-4624-6F13-A583-6685E9858E95";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 654\n            -height 331\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 653\n            -height 330\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 654\n            -height 330\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 653\n            -height 331\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n"
		+ "                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n"
		+ "\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 654\\n    -height 331\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 654\\n    -height 331\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 653\\n    -height 331\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 653\\n    -height 331\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 653\\n    -height 330\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 653\\n    -height 330\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 654\\n    -height 330\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 654\\n    -height 330\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4E239099-47EE-6E44-4336-82ABBB486D54";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Geometry";
	rename -uid "8E9B4C7C-4B4E-D7ED-36AA-8199B1F210E7";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode skinCluster -n "skinCluster1";
	rename -uid "AB897850-40C6-2F67-F895-DBA0051B25B5";
	setAttr -s 1789 ".wl";
	setAttr ".wl[0:303].w"
		2 14 0.59680002927780151 15 0.40319997072219849
		2 14 0.58719998598098755 15 0.41280001401901245
		2 13 0.072307954331620405 14 0.92769204566837959
		2 13 0.089374551721646114 14 0.9106254482783539
		2 14 0.54274511337280273 15 0.45725488662719727
		2 14 0.55644363164901733 15 0.44355636835098267
		2 13 0.10591504213633129 14 0.89408495786366871
		2 13 0.048011607172011139 14 0.95198839282798886
		2 14 0.56978726387023926 15 0.43021273612976074
		2 14 0.58048254251480103 15 0.41951745748519897
		2 13 0.072000026702880859 14 0.92799997329711914
		2 13 0.079989174145538966 14 0.92001082585446103
		2 14 0.56543999910354614 15 0.43456000089645386
		2 14 0.55520004034042358 15 0.44479995965957642
		2 13 0.055999994277954102 14 0.9440000057220459
		2 13 0.0021935733452894696 14 0.99780642665471042
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		2 12 0.16747403144836426 13 0.83252596855163574
		2 12 0.028021812438964844 13 0.97197818756103516
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		2 8 0.58719998598098755 9 0.41280001401901245
		2 8 0.59680002927780151 9 0.40319997072219849
		2 7 0.072219610214233398 8 0.9277803897857666
		2 7 0.089600026607513428 8 0.91039997339248657
		2 8 0.55644363164901733 9 0.44355636835098267
		2 8 0.54274511337280273 9 0.45725488662719727
		2 7 0.10592001676559448 8 0.89407998323440552
		2 7 0.047999978065490723 8 0.95200002193450928
		2 8 0.58048254251480103 9 0.41951745748519897
		2 8 0.56978726387023926 9 0.43021273612976074
		2 7 0.079999983310699463 8 0.92000001668930054
		2 7 0.072000026702880859 8 0.92799997329711914
		2 8 0.55520004034042358 9 0.44479995965957642
		2 8 0.56543999910354614 9 0.43456000089645386
		2 7 0.055999994277954102 8 0.9440000057220459
		2 7 0.0010980367660522461 8 0.99890196323394775
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		2 6 0.028021812438964844 7 0.97197818756103516
		2 6 0.16747403144836426 7 0.83252596855163574
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 6 0.88780800253152847 7 0.11219199746847153
		2 6 0.88505599647760391 7 0.11494400352239609
		1 6 1
		1 6 1
		2 6 0.89062400162220001 7 0.10937599837779999
		2 6 0.89250560104846954 7 0.10749439895153046
		1 6 1
		1 6 1
		2 6 0.79591424763202667 7 0.20408575236797333
		2 6 0.78449152410030365 7 0.21550847589969635
		1 7 1
		1 7 1
		2 6 0.7957826554775238 7 0.2042173445224762
		2 6 0.7881026566028595 7 0.2118973433971405
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 7 1
		2 6 0.88848640024662018 7 0.11151359975337982
		1 6 1
		1 6 1
		1 7 1
		2 6 0.85957120358943939 7 0.14042879641056061
		1 6 1
		1 6 1
		2 27 0.0038373470306395374 28 0.99616265296936035
		2 27 0.00030219554901123047 28 0.99969780445098877
		1 28 1
		2 27 0.0081523656845092773 28 0.99184763431549072
		3 0 0.14697472602529468 27 0.80994974970417077 28 0.043075524270534515
		3 0 0.13972773867121066 27 0.85463433062264593 28 0.0056379307061433792
		3 0 0.11625310678451559 27 0.85210233654410339 28 0.031644556671380997
		2 27 0.023172974586486816 28 0.97682702541351318
		3 0 0.050172139182786686 27 0.79862968228747389 28 0.15119817852973938
		3 0 0.085224946768321819 27 0.77173849400754946 28 0.14303655922412872
		2 27 0.14829099178314198 28 0.85170900821685791
		3 0 0.020219666658909324 27 0.48702539712282894 28 0.49275493621826172
		1 28 1
		2 0 0.16112500429153442 27 0.83887499570846558
		1 27 1
		3 0 0.16229371442631124 27 0.83736196682849662 28 0.00034431874519214034
		3 0 0.25380172750640007 27 0.74550963500321565 28 0.00068863749038428068
		2 27 0.00079047679901111945 28 0.99920952320098877
		2 27 6.1035156250111022e-05 28 0.99993896484375
		2 27 0.028559565544128418 28 0.97144043445587158
		2 27 0.10147804021835327 28 0.89852195978164673
		3 0 0.10562488416145095 27 0.86359180158068893 28 0.030783314257860184
		2 27 0.97050009854137897 28 0.029499901458621025
		2 27 0.55222177505493164 28 0.44777822494506836
		2 27 0.1012970209121704 28 0.89870297908782959
		2 27 0.0058759450912475586 28 0.99412405490875244
		1 28 1
		2 27 6.103515625e-05 28 0.99993896484375
		2 27 0.83466030657291412 28 0.16533969342708588
		2 27 0.30690371990203857 28 0.69309628009796143
		1 28 1
		2 27 0.0058759450912475595 28 0.99412405490875244
		3 0 0.38583644119698546 27 0.60896276204239586 28 0.0052007967606186867
		2 0 0.36393004612361163 27 0.63606995387638832
		3 0 0.22108533447855844 27 0.74863656023269765 28 0.030278105288743973
		3 0 0.22507733555452886 27 0.77232226606516186 28 0.0026003983803093433
		2 27 0.0093462467193603516 28 0.99065375328063965
		2 27 0.0048248171806335449 28 0.99517518281936646
		2 27 0.0012543797492980957 28 0.9987456202507019
		2 27 0.00048637390136718755 28 0.99951362609863281
		1 28 1
		2 27 8.9585781097412109e-05 28 0.99991041421890259
		2 27 0.0002816319465637207 28 0.99971836805343628
		2 27 0.0010623931884765625 28 0.99893760681152344
		2 0 0.39051246537154599 27 0.60948753462845406
		2 0 0.3744801092230457 27 0.62551989077695436
		3 0 0.20014729302622566 27 0.77763699788354146 28 0.022215709090232849
		3 0 0.19467646583895779 27 0.76903383478541276 28 0.036289699375629425
		3 0 0.19373747523721691 27 0.80239571673947929 28 0.0038668080233037472
		3 0 0.18816788292789779 27 0.80783185145517866 28 0.0040002656169235706
		3 0 0.37849257170294132 27 0.61377381225045125 28 0.0077336160466074944
		3 0 0.38003726191155085 27 0.61946691906277618 28 0.0004958190256729722
		3 0 0.15812927242113517 27 0.81133087780581559 28 0.030539849773049355
		3 0 0.15354048982936064 27 0.80735529064458689 28 0.039104219526052475
		2 27 0.00039774179458618164 28 0.99960225820541382
		2 27 0.0002176165580749512 28 0.99978238344192505
		2 27 1.2814998626708984e-05 28 0.99998718500137329
		2 27 1.2814998626708984e-05 28 0.99998718500137329
		2 27 0.044469714164733887 28 0.95553028583526611
		2 27 0.027831137180328369 28 0.97216886281967163
		2 27 0.015366733074188232 28 0.98463326692581177
		2 27 0.021323621273040883 28 0.97867637872695923
		2 27 0.066427290439605713 28 0.93357270956039429
		2 27 0.084165990352630615 28 0.91583400964736938
		3 0 0.057391251999667367 27 0.82362559102124866 28 0.11898315697908401
		3 0 0.054883627880761079 27 0.80314488829260167 28 0.14197148382663727
		3 0 0.12827898468007698 27 0.80797416810760847 28 0.063746847212314606
		3 0 0.13114804778263719 27 0.84440992396309222 28 0.024442028254270554
		2 27 0.8569246232509613 28 0.1430753767490387
		2 27 0.96009304374456406 28 0.039906956255435944
		3 0 0.10145441811308013 27 0.80879645426050084 28 0.089749127626419067
		3 0 0.099661666924914488 27 0.77821389210704883 28 0.12212444096803665
		2 27 0.31184744834899902 28 0.68815255165100098
		2 27 0.18735182285308841 28 0.81264817714691162
		2 27 0.52375483512878418 28 0.47624516487121582
		2 27 0.38842165470123291 28 0.61157834529876709
		2 27 0.53104484081268311 28 0.46895515918731689
		2 27 0.44296884536743164 28 0.55703115463256836
		2 27 0.062971293926239014 28 0.93702870607376099
		2 27 0.083270013332366943 28 0.91672998666763306
		2 27 0.015789091587066761 28 0.98421090841293335
		2 27 0.036056756973266491 28 0.9639432430267334
		2 27 0.0023846030235290527 28 0.99761539697647095
		2 27 0.0036858320236206055 28 0.99631416797637939
		2 27 0.81926250457763683 28 0.18073749542236328
		2 27 0.72005271911621094 28 0.27994728088378906
		3 0 0.020680892577049938 27 0.52996833313477265 28 0.44935077428817749
		3 0 0.021748335838427252 27 0.66263466906536606 28 0.31561699509620667
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		2 27 1.2814998626708984e-05 28 0.99998718500137329
		2 27 1.2814998626820007e-05 28 0.99998718500137329
		2 27 0.0024485588073731579 28 0.99755144119262695
		2 27 0.0036858320236206055 28 0.99631416797637939
		2 0 0.97919999994337559 27 0.020800000056624413
		2 0 0.65600001811981201 27 0.34399998188018799
		2 0 0.34399998188018799 27 0.65600001811981201
		1 28 1
		2 27 0.0028799772262573242 28 0.99712002277374268
		2 27 0.00040000677108764648 28 0.99959999322891235
		1 28 1
		2 27 0.00040000677108764648 28 0.99959999322891235
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 0 0.99800000013783574 27 0.001999999862164259
		2 0 0.97919999994337559 27 0.020800000056624413
		2 0 0.97919999994337559 27 0.020800000056624413
		2 0 0.65600001811981201 27 0.34399998188018799
		2 0 0.65600001811981201 27 0.34399998188018799
		2 0 0.34399998188018799 27 0.65600001811981201
		2 0 0.34399998188018799 27 0.65600001811981201
		2 27 0.00032001733779896124 28 0.99967998266220093
		2 27 0.00040000677108753546 28 0.99959999322891235
		2 27 0.00032001733779907227 28 0.99967998266220093
		2 0 0.99800000013783574 27 0.001999999862164259
		2 0 0.99800000013783574 27 0.001999999862164259
		2 0 0.97919999994337559 27 0.020800000056624409
		2 0 0.97919999994337559 27 0.020800000056624413
		2 0 0.65600001811981201 27 0.34399998188018799
		2 0 0.65600001811981201 27 0.34399998188018799
		2 0 0.34398557219716452 27 0.65601442780283548
		2 0 0.34399998188018799 27 0.65600001811981201
		2 27 0.00080001354217529297 28 0.99919998645782471
		2 0 0.97919999994337559 27 0.020800000056624413
		2 0 0.97919999994337559 27 0.020800000056624413
		2 0 0.65600001811981201 27 0.34399998188018799
		2 0 0.65600001811981201 27 0.34399998188018799
		2 0 0.34399998188018799 27 0.65600001811981201
		2 0 0.34399998188018799 27 0.65600001811981201
		2 27 0.00080001354217529297 28 0.99919998645782471
		2 0 0.99800000013783574 27 0.001999999862164259
		2 0 0.99800000013783574 27 0.001999999862164259
		2 0 0.99800000013783574 27 0.001999999862164259
		2 0 0.99800000013783574 27 0.001999999862164259
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1;
	setAttr ".wl[304:610].w"
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 27 0.11136001348495485 28 0.88863998651504517
		2 27 0.023360013961791992 28 0.97663998603820801
		2 27 0.040639996528625488 28 0.95936000347137451
		2 27 0.0054399967193603516 28 0.99456000328063965
		2 27 0.0054399967193603516 28 0.99456000328063965
		2 27 0.040639996528625488 28 0.95936000347137451
		2 27 0.040639996528625488 28 0.95936000347137451
		2 27 0.0054399967193603516 28 0.99456000328063965
		2 27 0.0054399967193603516 28 0.99456000328063965
		3 0 1.9073809198744132e-10 27 0.043840007953640736 28 0.95615999185562117
		2 27 0.0054399967193603516 28 0.99456000328063965
		2 27 0.040639996528625488 28 0.95936000347137451
		2 27 0.043839991092681885 28 0.95616000890731812
		2 27 0.0054399967193603516 28 0.99456000328063965
		2 0 0.97919999994337559 27 0.020800000056624413
		2 0 0.97919999994337559 27 0.020800000056624416
		2 0 0.65601188411764533 27 0.34398811588235467
		2 0 0.65600001811981201 27 0.34399998188018799
		2 0 0.34399998188018799 27 0.65600001811981201
		2 0 0.34399998188018799 27 0.65600001811981201
		2 0 0.97919999994337559 27 0.020800000056624416
		2 0 0.97919999994337559 27 0.020800000056624413
		2 0 0.65600001811981201 27 0.34399998188018799
		2 0 0.65600001811981201 27 0.34399998188018799
		2 0 0.34399998188018799 27 0.65600001811981201
		2 0 0.34399998188018799 27 0.65600001811981201
		2 0 0.99800000013783574 27 0.001999999862164259
		2 0 0.99800000013783574 27 0.001999999862164259
		2 0 0.99800000013783574 27 0.001999999862164259
		2 0 0.99800000013783574 27 0.001999999862164259
		2 27 0.085759997367858887 28 0.91424000263214111
		2 27 0.055999994277954102 28 0.9440000057220459
		2 27 0.0024000406265257679 28 0.99759995937347412
		2 27 0.008639991283416637 28 0.99136000871658325
		2 27 0.015680015087127797 28 0.98431998491287231
		2 27 0.0024000406265258789 28 0.99759995937347412
		2 27 0.015680015087127575 28 0.98431998491287231
		2 27 0.0086399912834168591 28 0.99136000871658325
		2 27 0.055999994277954102 28 0.9440000057220459
		2 27 0.085759997367858887 28 0.91424000263214111
		2 0 0.31055790185928345 22 0.68944209814071655
		2 0 0.64103177189826965 22 0.35896822810173035
		2 0 0.40386819839477539 22 0.59613180160522461
		2 0 0.6743171215057373 22 0.3256828784942627
		1 0 1
		2 0 0.9765922361666084 22 0.023407763833391604
		1 0 1
		2 0 0.93999710253109137 22 0.060002897468908634
		2 0 0.98021700605750084 17 0.019782993942499161
		2 0 0.93243370950222015 17 0.067566290497779846
		2 0 0.99412328097969294 17 0.0058767190203070641
		2 0 0.91190194338560104 17 0.088098056614398956
		2 0 7.9989433288574219e-05 23 0.99992001056671143
		2 0 0.00013333559036254883 23 0.99986666440963745
		2 0 0.00013333559036254883 23 0.99986666440963745
		3 0 7.9989433288574219e-05 22 0.17474299669265747 23 0.82517701387405396
		1 23 1
		2 22 4.0829181671142578e-05 23 0.99995917081832886
		2 22 1.5318393707275391e-05 23 0.99998468160629272
		2 22 0.00010639429092407227 23 0.99989360570907593
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		2 22 0.00023305416107177734 23 0.99976694583892822
		2 22 0.00051528215408325195 23 0.99948471784591675
		2 22 1.9609928131103516e-05 23 0.9999803900718689
		2 22 0.00032222270965576172 23 0.99967777729034424
		2 22 7.7486038208007812e-07 23 0.99999922513961792
		2 22 7.3909759521484375e-06 23 0.99999260902404785
		2 22 5.9604644775390625e-07 23 0.99999940395355225
		2 22 7.152557373046875e-07 23 0.9999992847442627
		1 23 1
		1 23 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		2 24 0.0013918876647949219 25 0.99860811233520508
		2 0 0.31055790185928345 17 0.68944209814071655
		2 0 0.64103177189826965 17 0.35896822810173035
		2 0 0.40386819839477539 17 0.59613180160522461
		2 0 0.6743171215057373 17 0.3256828784942627
		1 0 1
		2 0 0.97659221105277538 17 0.023407788947224617
		1 0 1
		2 0 0.93999723345041275 17 0.06000276654958725
		2 0 7.9989433288574219e-05 18 0.99992001056671143
		2 0 0.00013333559036254883 18 0.99986666440963745
		2 0 0.00013333559036254883 18 0.99986666440963745
		3 0 7.9989433288574219e-05 17 0.17474299669265747 18 0.82517701387405396
		1 18 1
		2 17 4.0829181671142578e-05 18 0.99995917081832886
		2 17 1.5318393707275391e-05 18 0.99998468160629272
		2 17 0.00010639429092407227 18 0.99989360570907593
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		2 17 0.00023305416107177734 18 0.99976694583892822
		2 17 0.00051528215408325195 18 0.99948471784591675
		2 17 1.9609928131103516e-05 18 0.9999803900718689
		2 17 0.00032222270965576172 18 0.99967777729034424
		2 17 7.7486038208007812e-07 18 0.99999922513961792
		2 17 7.3909759521484375e-06 18 0.99999260902404785
		2 17 5.9604644775390625e-07 18 0.99999940395355225
		2 17 7.152557373046875e-07 18 0.9999992847442627
		1 18 1
		1 18 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		2 19 0.0013918876647949219 20 0.99860811233520508
		2 0 7.9989433288574219e-05 18 0.99992001056671143
		2 0 0.6555745005607605 17 0.3444254994392395
		1 0 1
		2 0 0.6555745005607605 22 0.3444254994392395
		2 0 7.9989433288574219e-05 23 0.99992001056671143
		2 19 0.0029586553573608398 20 0.99704134464263916
		1 20 1
		2 19 7.1406364440917969e-05 20 0.99992859363555908
		2 19 0.0025528669357299805 20 0.99744713306427002
		1 19 1
		1 24 1
		2 24 0.0025528669357299805 25 0.99744713306427002
		2 24 7.1406364440917969e-05 25 0.99992859363555908
		1 25 1
		2 24 0.0029586553573608398 25 0.99704134464263916
		1 18 1
		2 17 0.00063645839691162109 18 0.99936354160308838
		2 17 7.7486038208007812e-07 18 0.99999922513961792
		1 18 1
		1 19 1
		1 19 1
		1 19 1
		1 18 1
		2 17 3.4570693969726562e-06 18 0.99999654293060303
		2 17 0.00014334917068481445 18 0.99985665082931519
		2 17 4.9352645874023438e-05 18 0.99995064735412598
		1 17 1
		1 17 1
		1 23 1
		1 22 1
		1 22 1
		2 22 4.9352645874023438e-05 23 0.99995064735412598
		2 22 0.00014334917068481445 23 0.99985665082931519
		2 22 3.4570693969726562e-06 23 0.99999654293060303
		1 23 1
		1 24 1
		1 24 1
		1 24 1
		1 23 1
		2 22 7.7486038208007812e-07 23 0.99999922513961792
		2 22 0.00063645839691162109 23 0.99936354160308838
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 0 1
		1 0 1
		2 0 0.45439046621322632 17 0.54560953378677368
		2 0 0.48072254657745361 17 0.51927745342254639
		3 0 7.9989433288574219e-05 17 0.43233883380889893 18 0.5675811767578125
		3 0 7.9989433288574219e-05 17 0.41880339384078979 18 0.58111661672592163
		2 0 7.9989433288574219e-05 18 0.99992001056671143
		2 0 7.9989433288574219e-05 18 0.99992001056671143
		2 0 0.51469618082046509 17 0.48530381917953491
		2 0 0.50550812482833862 17 0.49449187517166138
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 0 0.51469391764879902 22 0.48530608235120098
		2 0 0.50550991810856161 22 0.49449008189143839
		2 0 7.9989433288574219e-05 23 0.99992001056671143
		2 0 7.9989433288574219e-05 23 0.99992001056671143
		3 0 7.9989433288574219e-05 22 0.41880339384078979 23 0.58111661672592163
		3 0 7.9989433288574219e-05 22 0.43233883380889893 23 0.5675811767578125
		2 0 0.45441744537494638 22 0.54558255462505356
		2 0 0.48069486749765977 22 0.51930513250234034
		1 0 1
		1 0 1
		2 23 0.95728794485330582 24 0.042712055146694183
		2 23 0.38641871752293466 24 0.61358128247706523
		2 23 0.50582106942470739 24 0.49417893057529255
		2 23 0.99406421813327661 24 0.0059357818667234224
		2 23 0.97888417494008306 24 0.02111582505991693
		3 22 9.0335829094900788e-11 23 0.9919513552215441 24 0.0080486446881201067
		2 23 0.27215996911809925 24 0.72784003088190086
		2 23 0.010581016540527344 24 0.98941898345947266
		2 23 0.033011198043823242 24 0.96698880195617676
		2 24 0.14885467290878296 25 0.85114532709121704
		2 24 0.21307909488677979 25 0.78692090511322021
		2 24 0.048865914344787598 25 0.9511340856552124
		2 24 0.074925005435943604 25 0.9250749945640564
		2 24 0.054379105567932129 25 0.94562089443206787
		2 24 0.0012100934982299805 25 0.99878990650177002
		2 24 0.00021475553512573242 25 0.99978524446487427
		2 24 4.4770964564122551e-05 25 0.99995522903543588
		2 24 2.6073298346560681e-06 25 0.99999739267016541
		2 24 0.00033921003341674805 25 0.99966078996658325
		2 24 0.0012462139129638672 25 0.99875378608703613
		2 24 0.0058714151382446289 25 0.99412858486175537
		2 24 0.02274554967880249 25 0.97725445032119751
		2 24 6.7532062530517578e-05 25 0.99993246793746948
		2 24 0.00026631355285644531 25 0.99973368644714355
		2 18 0.95728794485330582 19 0.042712055146694183
		2 18 0.99793463805690408 19 0.0020653619430959225
		2 18 0.49616330862045288 19 0.50383669137954712
		2 18 0.40126246213912964 19 0.59873753786087036
		2 18 0.99194267019629478 19 0.0080573298037052155
		2 18 0.98204145208001137 19 0.017958547919988632
		2 18 0.2720491886138916 19 0.7279508113861084
		2 19 4.482269287109375e-05 20 0.99995517730712891
		1 20 1
		2 19 0.0012462139129638672 20 0.99875378608703613
		2 19 0.00033921003341674805 20 0.99966078996658325
		2 19 0.0058714151382446289 20 0.99412858486175537
		2 19 0.02274554967880249 20 0.97725445032119751
		2 19 6.7532062530517578e-05 20 0.99993246793746948
		2 19 0.00026631355285644531 20 0.99973368644714355
		2 18 0.010581016540527344 19 0.98941898345947266
		2 18 0.033011198043823242 19 0.96698880195617676
		2 19 0.21307909488677979 20 0.78692090511322021
		2 19 0.14885467290878296 20 0.85114532709121704
		2 19 0.048865914344787598 20 0.9511340856552124
		2 19 0.054379105567932129 20 0.94562089443206787
		2 19 0.074925005435943604 20 0.9250749945640564
		2 19 0.00021475553512573242 20 0.99978524446487427
		2 19 0.0012100934982299805 20 0.99878990650177002
		2 17 5.3644180297851562e-07 18 0.99999946355819702
		2 17 6.5565109252929688e-07 18 0.99999934434890747
		2 17 8.5294246673583984e-05 18 0.99991470575332642
		2 17 6.866455078125e-05 18 0.99993133544921875
		1 18 1
		1 18 1
		2 18 0.95737024024128914 19 0.042629759758710861
		2 18 0.3502652645111084 19 0.6497347354888916
		2 18 0.38076120615005493 19 0.61923879384994507
		1 18 1
		1 19 1
		1 19 1
		1 19 1
		1 18 1
		1 18 1
		2 17 5.3644180297851562e-07 18 0.99999946355819702
		2 17 5.9604644775390625e-07 18 0.99999940395355225
		2 17 0.0010609626770019531 18 0.99893903732299805
		2 17 0.001195371150970459 18 0.99880462884902954
		1 18 1
		2 17 2.9802322387695312e-07 18 0.99999970197677612
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		2 22 5.3644180297851562e-07 23 0.99999946355819702
		2 22 6.5565109252929688e-07 23 0.99999934434890747
		1 22 1
		1 22 1
		1 22 1
		1 22 0.99999999999999989;
	setAttr ".wl[611:1064].w"
		1 22 1
		1 22 1
		2 22 2.5955888683064642e-17 23 1
		2 22 3.0103336712272721e-07 23 0.99999969896663288
		2 22 0.0010609626770019531 23 0.99893903732299805
		2 22 0.001195371150970459 23 0.99880462884902954
		2 22 5.3644180297851562e-07 23 0.99999946355819702
		2 22 5.9604644775390625e-07 23 0.99999940395355225
		1 23 1
		2 22 2.4948890585871162e-17 23 1
		1 24 1
		1 24 1
		1 24 1
		2 23 0.95737024024128914 24 0.042629759758710861
		1 23 1
		2 23 0.38076120615005493 24 0.61923879384994507
		2 23 0.3502652645111084 24 0.6497347354888916
		2 22 1.3723422398470575e-10 23 0.99999999986276578
		2 22 8.8143297991908102e-11 23 0.99999999991185673
		2 22 8.5291614027482865e-05 23 0.99991470838597252
		2 22 6.8667119990095671e-05 23 0.9999313328800099
		1 24 1
		2 23 0.00078171491622924805 24 0.99921828508377075
		2 23 0.15331041812896729 24 0.84668958187103271
		1 19 1
		2 18 0.15331041812896729 19 0.84668958187103271
		2 18 0.00078171491622924805 19 0.99921828508377075
		2 23 0.326339491326749 24 0.673660508673251
		2 23 0.43629292280555898 24 0.56370707719444102
		2 18 0.43729329109191895 19 0.56270670890808105
		2 18 0.3248288631439209 19 0.6751711368560791
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
		2 0 0.64969998598098755 27 0.35030001401901245
		2 0 0.64969998598098755 27 0.35030001401901245
		2 0 0.64969998598098755 27 0.35030001401901245
		2 0 0.64969998598098755 27 0.35030001401901251
		2 0 0.35029995441436768 27 0.64970004558563232
		2 0 0.35029995441436768 27 0.64970004558563232
		2 0 0.35029995441436768 27 0.64970004558563232
		2 0 0.35029995441436768 27 0.64970004558563232
		2 0 0.64969998598098755 27 0.35030001401901245
		2 0 0.64969998598098755 27 0.35030001401901245
		2 0 0.35029995441436768 27 0.64970004558563232
		2 0 0.35029995441436768 27 0.64970004558563232
		2 0 0.16112500429153442 27 0.83887499570846558
		2 0 0.16112500429153442 27 0.83887499570846558
		2 0 0.16112500429153442 27 0.83887499570846547
		2 0 0.16112500429153442 27 0.83887499570846558
		2 0 0.16112500429153442 27 0.83887499570846558
		2 0 0.16112500429153442 27 0.83887499570846558
		2 0 0.83887499570846558 27 0.16112500429153442
		2 0 0.83887499570846558 27 0.16112500429153442
		2 0 0.83887499570846558 27 0.16112500429153442
		2 0 0.83887499570846558 27 0.16112500429153442
		2 0 0.83887499570846558 27 0.16112500429153442
		2 0 0.83887499570846558 27 0.16112500429153442
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
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 0.99999999999999989
		1 27 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 27 1
		1 27 1
		1 27 1
		1 27 0.99999999999999989
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 0.99999999999999989
		1 27 1
		1 27 1
		1 27 0.99999999999999989
		1 27 1
		1 27 1
		1 27 0.99999999999999989
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 0.99999999999999989
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 27 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1;
	setAttr ".wl[1065:1363].w"
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		2 12 0.79591424763202667 13 0.20408575236797333
		2 12 0.78449152410030365 13 0.21550847589969635
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		2 12 0.7957826554775238 13 0.2042173445224762
		2 12 0.7881026566028595 13 0.2118973433971405
		2 12 0.88780800253152847 13 0.11219199746847153
		2 12 0.88505599647760391 13 0.11494400352239609
		1 13 1
		1 13 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		2 12 0.89062400162220001 13 0.10937599837779999
		2 12 0.89250560104846954 13 0.10749439895153046
		1 13 1
		1 13 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		2 12 0.85957120358943939 13 0.14042879641056061
		1 12 1
		1 12 1
		2 12 0.88848640024662018 13 0.11151359975337982
		1 13 1
		1 13 1
		1 12 1
		1 12 1
		2 0 0.10562735795974731 22 0.89437264204025269
		2 0 0.16116334523081721 22 0.83883665476918279
		2 0 0.16320526140579261 22 0.83679473859420739
		2 0 0.22193825244903564 22 0.77806174755096436
		2 0 0.25933104753494263 22 0.74066895246505737
		2 0 0.26616901159286499 22 0.73383098840713501
		2 0 0.2124824206592803 22 0.78751757934071964
		2 0 0.18891353644998787 22 0.81108646355001213
		2 0 0.099550724029541016 22 0.90044927597045898
		2 0 0.045161306858062744 22 0.95483869314193726
		2 0 0.046325377732778734 22 0.95367462226722122
		2 0 0.050192013029072058 22 0.94980798697092794
		2 0 0.062454521656036377 22 0.93754547834396362
		2 0 0.075793802738189697 22 0.9242061972618103
		2 0 0.080194652080535889 22 0.91980534791946411
		2 0 0.070517716214252318 22 0.92948228378574771
		2 0 0.064150010195771587 22 0.9358499898042284
		2 0 0.037910938262939453 22 0.96208906173706055
		2 0 0.011456012725830078 22 0.98854398727416992
		2 0 0.011882660362118366 22 0.98811733963788162
		2 0 0.013006225742891786 22 0.98699377425710821
		2 0 0.014765620231628418 22 0.98523437976837158
		2 0 0.014556467533111572 22 0.98544353246688843
		2 0 0.014765620231628418 22 0.98523437976837158
		2 0 0.013005714862579681 22 0.98699428513742038
		2 0 0.011883108036874656 22 0.98811689196312535
		2 0 0.011456012725830078 22 0.98854398727416992
		2 0 0.0012800097465515137 22 0.99871999025344849
		2 0 0.001280009862557686 22 0.99871999013744239
		2 0 0.0014933359356182965 22 0.99850666406438171
		2 0 0.0016675591468811035 22 0.9983324408531189
		2 0 0.0017066597938537598 22 0.99829334020614624
		2 0 0.0016675591468811035 22 0.9983324408531189
		2 0 0.0014932882454239405 22 0.99850671175457606
		2 0 0.0012800520392939677 22 0.99871994796070607
		2 0 0.0012800097465515137 22 0.99871999025344849
		2 0 0.22193825244903564 17 0.77806174755096436
		2 0 0.16320455074310303 17 0.83679544925689697
		2 0 0.16116386651992798 17 0.83883613348007202
		2 0 0.10562735795974731 17 0.89437264204025269
		2 0 0.099550724029541016 17 0.90044927597045898
		2 0 0.18889415264129639 17 0.81110584735870361
		2 0 0.21250259876251221 17 0.78749740123748779
		2 0 0.26616901159286499 17 0.73383098840713501
		2 0 0.25933104753494263 17 0.74066895246505737
		2 0 0.062454521656036377 17 0.93754547834396362
		2 0 0.050191879272460938 17 0.94980812072753906
		2 0 0.046325385570526123 17 0.95367461442947388
		2 0 0.045161306858062744 17 0.95483869314193726
		2 0 0.037910938262939453 17 0.96208906173706055
		2 0 0.064146161079406738 17 0.93585383892059326
		2 0 0.070521891117095947 17 0.92947810888290405
		2 0 0.080194652080535889 17 0.91980534791946411
		2 0 0.075793802738189697 17 0.9242061972618103
		2 0 0.014765620231628418 17 0.98523437976837158
		2 0 0.013006210327148438 17 0.98699378967285156
		2 0 0.011882662773132324 17 0.98811733722686768
		2 0 0.011456012725830078 17 0.98854398727416992
		2 0 0.011456012725830078 17 0.98854398727416992
		2 0 0.011882662773132324 17 0.98811733722686768
		2 0 0.013006210327148438 17 0.98699378967285156
		2 0 0.014765620231628418 17 0.98523437976837158
		2 0 0.014556467533111572 17 0.98544353246688843
		2 0 0.0016675591468811035 17 0.9983324408531189
		2 0 0.0014933347702026367 17 0.99850666522979736
		2 0 0.0012800097465515137 17 0.99871999025344849
		2 0 0.0012800097465515137 17 0.99871999025344849
		2 0 0.0012800097465515137 17 0.99871999025344849
		2 0 0.0012800097465515137 17 0.99871999025344849
		2 0 0.0014933347702026367 17 0.99850666522979736
		2 0 0.0016675591468811035 17 0.9983324408531189
		2 0 0.0017066597938537598 17 0.99829334020614624
		2 22 4.4107437133789062e-05 23 0.99995589256286621
		2 22 4.1723251342773438e-07 23 0.99999958276748657
		2 22 1.1920928955078125e-07 23 0.99999988079071045
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		2 22 1.1738165994756855e-11 23 0.99999999998826183
		2 22 2.384185791015625e-07 23 0.9999997615814209
		2 22 1.6927719116210938e-05 23 0.99998307228088379
		2 22 0.026333034038543701 23 0.9736669659614563
		2 22 0.032455503940582275 23 0.96754449605941772
		2 22 0.032207369804382324 23 0.96779263019561768
		2 22 0.040176689624786377 23 0.95982331037521362
		2 22 0.039742939299969748 23 0.96025706070003025
		2 22 0.0064566731452941895 23 0.99354332685470581
		2 22 0.0038740791633884442 23 0.99612592083661156
		2 22 0.0051652109518762757 23 0.99483478904812372
		2 22 0.00067859888076782227 23 0.99932140111923218
		2 22 0.0058902495847164005 23 0.9941097504152836
		2 22 0.47448563575744629 23 0.52551436424255371
		2 22 0.48788845539093018 23 0.51211154460906982
		2 22 0.48653370141983032 23 0.51346629858016968
		2 22 0.48311632871627808 23 0.51688367128372192
		2 22 0.45842164902059324 23 0.54157835097940676
		2 22 0.42573833465576172 23 0.57426166534423828
		2 22 0.37123741187961989 23 0.62876258812038011
		2 22 0.39004864061467764 23 0.60995135938532241
		2 22 0.43179070949554443 23 0.56820929050445557
		2 22 0.44144177436828613 23 0.55855822563171387
		1 18 1
		2 17 1.1920928955078125e-07 18 0.99999988079071045
		2 17 4.1723251342773438e-07 18 0.99999958276748657
		2 17 4.4107437133789062e-05 18 0.99995589256286621
		2 17 1.6927719116210938e-05 18 0.99998307228088379
		2 17 2.384185791015625e-07 18 0.9999997615814209
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		2 17 0.040176689624786377 18 0.95982331037521362
		2 17 0.032207369804382324 18 0.96779263019561768
		2 17 0.032455503940582275 18 0.96754449605941772
		2 17 0.026333034038543701 18 0.9736669659614563
		2 17 0.0058902502059936523 18 0.99410974979400635
		2 17 0.00067859888076782227 18 0.99932140111923218
		2 17 0.0051653385162353516 18 0.99483466148376465
		2 17 0.0038740038871765137 18 0.99612599611282349
		2 17 0.0064566731452941895 18 0.99354332685470581
		2 17 0.039742648601531982 18 0.96025735139846802
		2 17 0.48311632871627808 18 0.51688367128372192
		2 17 0.48653370141983032 18 0.51346629858016968
		2 17 0.48788845539093018 18 0.51211154460906982
		2 17 0.47448563575744629 18 0.52551436424255371
		2 17 0.44144177436828613 18 0.55855822563171387
		2 17 0.43179070949554443 18 0.56820929050445557
		2 17 0.39004814624786377 18 0.60995185375213623
		2 17 0.37123674154281616 18 0.62876325845718384
		2 17 0.42573833465576172 18 0.57426166534423828
		2 17 0.45842164754867554 18 0.54157835245132446
		2 22 1.1920928955078125e-07 23 0.99999988079071045
		1 23 1
		2 22 5.9603827651244501e-08 23 0.99999994039617235
		2 22 1.1921382762596728e-07 23 0.99999988078617241
		2 22 4.1723251342773438e-07 23 0.99999958276748657
		2 22 4.5895576477050781e-06 23 0.99999541044235229
		2 22 3.5762786865234375e-07 23 0.99999964237213135
		2 22 2.4437904357910156e-06 23 0.99999755620956421
		2 22 3.0398312347301726e-06 23 0.99999696016876527
		2 22 3.1590251980837265e-06 23 0.9999968409748019
		2 22 1.1920928955078125e-06 23 0.99999880790710449
		2 22 2.1457668904625247e-06 23 0.99999785423310961
		2 22 5.3644180297851562e-07 23 0.99999946355819702
		1 23 1
		2 22 9.2370555648813024e-14 23 0.99999999999990763
		1 23 1
		2 22 1.0728836059570312e-06 23 0.99999892711639404
		2 22 3.4630298614501953e-05 23 0.9999653697013855
		2 17 4.5895576477050781e-06 18 0.99999541044235229
		2 17 4.1723251342773438e-07 18 0.99999958276748657
		2 17 1.1920928955078125e-07 18 0.99999988079071045
		2 17 5.9604644775390625e-08 18 0.99999994039535522
		1 18 1
		2 17 1.1920928955078125e-07 18 0.99999988079071045
		2 17 2.1457672119140625e-06 18 0.99999785423278809
		2 17 1.1920928955078125e-06 18 0.99999880790710449
		2 17 3.1590461730957031e-06 18 0.9999968409538269
		2 17 3.0398368835449219e-06 18 0.99999696016311646
		2 17 2.4437904357910156e-06 18 0.99999755620956421
		2 17 3.5762786865234375e-07 18 0.99999964237213135
		2 17 3.4630298614501953e-05 18 0.9999653697013855
		2 17 1.0728836059570312e-06 18 0.99999892711639404
		1 18 1
		1 18 1
		1 18 1
		2 17 5.3644180297851562e-07 18 0.99999946355819702
		2 22 0.00019854307174682617 23 0.99980145692825317
		2 22 5.3719624285453876e-07 23 0.99999946280375718
		2 22 2.9800418247655225e-07 23 0.99999970199581756
		2 22 1.22166532889878e-07 23 0.99999987783346711
		2 22 1.1861324310302734e-05 23 0.9999881386756897
		2 22 1.4297423190492986e-05 23 0.99998570257680952
		2 22 1.162265175701227e-05 23 0.99998837734824297
		2 22 1.4835708697091832e-05 23 0.99998516429130291
		2 22 2.2053718566894531e-06 23 0.99999779462814331
		3 22 1.1300276512304919e-06 23 0.99999444595595932 24 4.4240163894482265e-06
		2 22 4.7996901073044107e-07 23 0.99999952003098924
		3 22 2.97843509855511e-07 23 0.99999845420004863 24 1.2479564416089379e-06
		2 17 0.00019854307174682617 18 0.99980145692825317
		2 17 5.3644180297851562e-07 18 0.99999946355819702
		2 17 2.9802322387695312e-07 18 0.99999970197677612
		2 17 1.1920928955078125e-07 18 0.99999988079071045
		2 17 1.1861324310302734e-05 18 0.9999881386756897
		2 17 1.430511474609375e-05 18 0.99998569488525391
		2 17 1.1622905731201172e-05 18 0.9999883770942688
		2 17 1.4841556549072266e-05 18 0.99998515844345093
		2 17 2.2053718566894531e-06 18 0.99999779462814331
		2 17 1.1324882507324219e-06 18 0.99999886751174927
		2 17 4.76837158203125e-07 18 0.9999995231628418
		2 17 2.9802322387695312e-07 18 0.99999970197677612
		2 24 0.98259868735983769 25 0.017401312640162304
		2 24 0.98696252564265907 25 0.013037474357340928
		2 24 0.98824825137853622 25 0.011751748621463776
		2 24 0.97558106668293476 25 0.024418933317065239
		2 24 0.99676770553924143 25 0.0032322944607585669
		2 24 0.97984614595770836 25 0.020153854042291641
		2 24 0.97518541439262552 25 0.024814585607374484
		2 24 0.97422678582370281 25 0.025773214176297188
		2 19 0.99676770553924143 20 0.0032322944607585669
		2 19 0.97558106668293476 20 0.024418933317065239
		2 19 0.98824825137853622 20 0.011751748621463776
		2 19 0.98696252331137657 20 0.013037476688623428
		2 19 0.98259865306317806 20 0.017401346936821938;
	setAttr ".wl[1364:1684].w"
		2 19 0.97422678582370281 20 0.025773214176297188
		2 19 0.97518541291356087 20 0.024814587086439133
		2 19 0.97984614595770836 20 0.020153854042291641
		2 24 0.0016918669131733566 25 0.99830813308682664
		2 24 0.0083659887313842773 25 0.99163401126861572
		2 24 0.063425898551940918 25 0.93657410144805908
		2 24 0.049322128295898438 25 0.95067787170410156
		2 24 0.0067819952964782715 25 0.99321800470352173
		2 24 0.033002674579620361 25 0.96699732542037964
		2 24 0.016116857528686523 25 0.98388314247131348
		2 24 0.0064134781246287277 25 0.99358652187537133
		2 24 0.69329369068145752 25 0.30670630931854248
		2 24 0.59618666768074036 25 0.40381333231925964
		2 24 0.59533420205116272 25 0.40466579794883728
		2 24 0.58748751878738403 25 0.41251248121261597
		2 24 0.62532153725624084 25 0.37467846274375916
		2 24 0.62220296263694763 25 0.37779703736305237
		2 24 0.64643377065658569 25 0.35356622934341431
		2 24 0.63779923628611712 25 0.36220076371388288
		2 19 0.0067819952964782715 20 0.99321800470352173
		2 19 0.049322128295898438 20 0.95067787170410156
		2 19 0.063425898551940918 20 0.93657410144805908
		2 19 0.0083659887313842773 20 0.99163401126861572
		2 19 0.0016916394233703613 20 0.99830836057662964
		2 19 0.0064129233360290527 20 0.99358707666397095
		2 19 0.016116857528686523 20 0.98388314247131348
		2 19 0.033002674579620361 20 0.96699732542037964
		2 19 0.62532153725624084 20 0.37467846274375916
		2 19 0.58748751878738403 20 0.41251248121261597
		2 19 0.59533420205116272 20 0.40466579794883728
		2 19 0.59618666768074036 20 0.40381333231925964
		2 19 0.69329369068145752 20 0.30670630931854248
		2 19 0.63779923319816589 20 0.36220076680183411
		2 19 0.64643377065658569 20 0.35356622934341431
		2 19 0.62220296263694763 20 0.37779703736305237
		2 24 0.0045533180236816406 25 0.99544668197631836
		1 25 1
		2 24 0.0091964602470397949 25 0.99080353975296021
		2 24 0.082426598484076533 25 0.91757340151592348
		2 24 1.4722346382001206e-05 25 0.999985277653618
		2 24 1.8445807361630188e-07 25 0.99999981554192652
		2 24 1.8540410292332277e-05 25 0.99998145958970763
		2 24 0.00060480833053588867 25 0.99939519166946411
		2 24 0.0049673318862915039 25 0.9950326681137085
		2 24 0.0035154819488525391 25 0.99648451805114746
		2 24 0.026221571103089238 25 0.9737784288969108
		1 25 1
		2 24 5.4793880792658456e-06 25 0.99999452061192073
		2 24 1.5339393135325665e-06 25 0.99999846606068654
		2 19 0.0045533180236816406 20 0.99544668197631836
		2 19 1.1622905731201172e-05 20 0.9999883770942688
		2 19 1.7881393432617188e-07 20 0.99999982118606567
		2 19 1.4722347259521484e-05 20 0.99998527765274048
		2 19 0.082426607608795166 20 0.91757339239120483
		2 19 0.0091964602470397949 20 0.99080353975296021
		1 20 1
		2 19 0.00060480833053588867 20 0.99939519166946411
		2 19 4.76837158203125e-07 20 0.9999995231628418
		2 19 5.4836273193359375e-06 20 0.99999451637268066
		1 20 1
		2 19 0.026221573352813721 20 0.97377842664718628
		2 19 0.0035154819488525391 20 0.99648451805114746
		2 19 0.0049673318862915039 20 0.9950326681137085
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		1 24 1
		2 24 0.99999999965823672 25 3.4176318464813793e-10
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		2 12 0.99999975257492624 13 2.4742507376274148e-07
		1 12 1
		1 12 1
		2 12 0.99999978679035662 13 2.1320964341862175e-07
		1 12 1
		2 12 0.99999958392346344 13 4.1607653656410164e-07
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		2 6 0.42527997493743896 7 0.57472002506256104
		2 6 0.41280001401901245 7 0.58719998598098755
		2 6 0.33600002527236938 7 0.66399997472763062
		2 6 0.41376000642776489 7 0.58623999357223511
		2 6 0.42335999011993408 7 0.57664000988006592
		2 6 0.43295997381210327 7 0.56704002618789673
		2 6 0.4424319863319397 7 0.5575680136680603
		2 6 0.45311999320983887 7 0.54688000679016113
		2 6 0.46252799034118652 7 0.53747200965881348
		2 6 0.43904000520706177 7 0.56095999479293823
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		2 12 0.42527997493743896 13 0.57472002506256104
		2 12 0.43903960732052794 13 0.56096039267947206
		2 12 0.46252799034118652 13 0.53747200965881348
		2 12 0.45311999320983887 13 0.54688000679016113
		2 12 0.4424319863319397 13 0.5575680136680603
		2 12 0.43295997381210327 13 0.56704002618789673
		2 12 0.4233590312195048 13 0.5766409687804952
		2 12 0.41376000642776489 13 0.58623999357223511
		2 12 0.33599958467480207 13 0.66400041532519793
		2 12 0.4127989560126899 13 0.5872010439873101
		2 14 0.99995461350256454 15 4.5386497435434547e-05
		2 14 0.99986855893817683 15 0.0001314410618231649
		1 14 1
		2 14 0.9999999700093426 15 2.9990657393548468e-08
		2 14 0.99999556547005275 15 4.4345299473023958e-06
		2 14 0.99999828652963174 15 1.7134703682586405e-06
		1 14 1
		2 14 0.99994977396073137 15 5.0226039268620043e-05
		2 14 0.91031334517938534 15 0.089686654820614761
		2 14 0.89591076894671251 15 0.10408923105328749
		2 14 0.92198403549575403 15 0.078015964504245972
		2 14 0.92960000119853659 15 0.070399998801463415
		2 14 0.90694685543529252 15 0.093053144564707521
		2 14 0.89027400589991901 15 0.1097259941000811
		2 14 0.86594755421908409 15 0.13405244578091591
		2 14 0.9055254257352523 15 0.094474574264747771
		2 8 0.90560001134872437 9 0.094399988651275635
		2 8 0.86594510078430176 9 0.13405489921569824
		2 8 0.89027762413024902 9 0.10972237586975098
		2 8 0.90695405006408691 9 0.093045949935913086
		2 8 0.92960000038146973 9 0.070399999618530273
		2 8 0.92198401689529419 9 0.078015983104705811
		2 8 0.89593601226806641 9 0.10406398773193359
		2 8 0.91040003299713135 9 0.089599967002868652
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		2 13 0.99984656879833878 14 0.00015343120166124574
		2 13 0.99990980323691858 14 9.0196763081390463e-05
		1 13 1
		2 12 0.0043622851371765137 13 0.99563771486282349
		3 12 0.051171963746566018 13 0.94881550116954383 14 1.25350838901478e-05
		3 12 6.3779626186437691e-06 13 0.99999348394533338 14 1.380920480187342e-07
		1 13 1
		2 13 0.99987611061955028 14 0.00012388938044973277
		2 13 0.45265519970473789 14 0.54734480029526222
		2 13 0.44462028930209824 14 0.55537971069790171
		2 13 0.45124570326968438 14 0.54875429673031562
		3 12 1.4040672624560102e-08 13 0.37600198152287589 14 0.62399800443645148
		2 13 0.36799113435576808 14 0.63200886564423187
		3 12 7.5359399150085713e-09 13 0.42078695948020511 14 0.57921303298385496
		2 13 0.42656549502193641 14 0.57343450497806359
		2 13 0.44563110028880237 14 0.55436889971119763
		2 7 0.44576001167297363 8 0.55423998832702637
		2 7 0.42655998468399048 8 0.57344001531600952
		2 7 0.42079997062683105 8 0.57920002937316895
		2 7 0.36799997091293335 8 0.63200002908706665
		2 7 0.37599998712539673 8 0.62400001287460327
		2 7 0.45124393701553345 8 0.54875606298446655
		2 7 0.44474351406097412 8 0.55525648593902588
		2 7 0.45288783311843872 8 0.54711216688156128
		1 7 1
		1 7 1
		1 7 1
		2 6 0.05118030309677124 7 0.94881969690322876
		2 6 0.0043622851371765137 7 0.99563771486282349
		1 7 1
		1 7 1
		1 7 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 0.99999999999999989
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 0.99999999999999989
		1 15 1
		1 15 1
		1 15 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		1 9 1
		3 0 0.0016000270843505862 27 0.38335996866226196 28 0.61504000425338745
		3 0 0.0016000270843505859 27 0.29087996482849121 28 0.7075200080871582
		3 0 0.0016000270843505859 27 0.21855998039245605 28 0.77983999252319336
		3 0 0.0016000270843505862 27 0.18527996540069569 28 0.81312000751495361
		3 0 0.0016000270843505862 27 0.17663997411727894 28 0.82175999879837036
		3 0 0.0016000270843505859 27 0.17504000663757324 28 0.82335996627807617
		3 0 0.0016000270843505859 27 0.17504000663757324 28 0.82335996627807617
		3 0 0.0016000270843505862 27 0.17663997411727894 28 0.82175999879837036
		3 0 0.0015999983016651636 27 0.18527814745868343 28 0.81312185423965144
		3 0 0.0016000270843505859 27 0.21855998039245605 28 0.77983999252319336
		3 0 0.0016000270843505859 27 0.29087996482849121 28 0.7075200080871582
		2 0 0.020799994468688965 27 0.97920000553131104
		3 0 0.020799994468688965 27 0.66047999262809753 28 0.3187200129032135
		3 0 0.020799994468688965 27 0.53856000304222107 28 0.44064000248908997
		3 0 0.020799994468688965 27 0.49568000435829157 28 0.48352000117301941
		3 0 0.020799994468688965 27 0.48320001363754272 28 0.49599999189376831
		3 0 0.020799994468688965 27 0.48096001148223871 28 0.49823999404907227
		3 0 0.020799994468688965 27 0.48096001148223877 28 0.49823999404907227
		3 0 0.020799994468688965 27 0.48320001363754272 28 0.49599999189376831
		3 0 0.020799326324643284 27 0.49567141646393698 28 0.48352925721141959
		3 0 0.020799994468688965 27 0.53856000304222107 28 0.44064000248908997
		3 0 0.020799994468688965 27 0.66047999262809753 28 0.3187200129032135
		2 0 0.11360001564025879 27 0.88639998435974121
		2 0 0.11360001564025879 27 0.8863999843597411
		2 0 0.11360001564025879 27 0.88639998435974121
		1 0 0.11360001564025879;
	setAttr ".wl[1684:1788].w"
		1 27 0.88639998435974121
		2 0 0.11360001564025879 27 0.88639998435974121
		2 0 0.11360001564025879 27 0.88639998435974121
		2 0 0.11360001564025879 27 0.88639998435974121
		2 0 0.11360001564025879 27 0.88639998435974132
		3 0 0.11359539154960518 27 0.88638051534901374 28 2.4093101381073012e-05
		2 0 0.11360001564025879 27 0.88639998435974132
		2 0 0.11360001564025879 27 0.88639998435974121
		2 0 0.8863999992609024 27 0.1136000007390976
		2 0 0.8863999992609024 27 0.1136000007390976
		2 0 0.8863999992609024 27 0.1136000007390976
		2 0 0.8863999992609024 27 0.1136000007390976
		2 0 0.8863999992609024 27 0.1136000007390976
		2 0 0.8863999992609024 27 0.1136000007390976
		2 0 0.8863999992609024 27 0.1136000007390976
		2 0 0.8863999992609024 27 0.11360000073909761
		2 0 0.8863999992609024 27 0.1136000007390976
		2 0 0.8863999992609024 27 0.1136000007390976
		2 0 0.88640275367590071 27 0.11359724632409929
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 0.99999999999999989
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		3 0 0.017456545554667097 27 0.60904856113287864 28 0.37349489331245422
		2 27 0.62010872364044189 28 0.37989127635955811
		2 27 0.67362755537033081 28 0.32637244462966919
		2 27 0.77289631962776184 28 0.22710368037223816
		2 27 0.82493506371974945 28 0.17506493628025055
		2 27 0.83434566855430614 28 0.16565433144569397
		2 27 0.31969708204269409 28 0.68030291795730591
		2 27 0.3268671035766601 28 0.67313289642333984
		2 27 0.37849360704421997 28 0.62150639295578003
		2 27 0.46756643056869501 28 0.53243356943130493
		2 27 0.53638923168182373 28 0.46361076831817627
		2 27 0.55322042107582092 28 0.44677957892417908
		2 27 0.11678975820541393 28 0.88321024179458618
		2 27 0.10928225517272938 28 0.89071774482727051
		2 27 0.14893990755081166 28 0.85106009244918823
		2 27 0.20878666639328003 28 0.79121333360671997
		2 27 0.24648803472518921 28 0.75351196527481079
		2 27 0.27414005994796753 28 0.72585994005203247
		3 0 0.14415175965104587 27 0.84635367957826368 28 0.0094945607706904411
		3 0 0.19281188249872919 27 0.80420394553518004 28 0.0029841719660907984
		3 0 0.19877951351630296 27 0.79862008810338769 28 0.0026003983803093433
		2 0 0.38786892478011192 27 0.61213107521988808
		2 0 0.37142762619186753 27 0.62857237380813247
		2 0 0.16112500429153442 27 0.83887499570846569
		2 27 0.69568812847137451 28 0.30431187152862549
		3 0 0.060193516370707759 27 0.66522454464728242 28 0.27458193898200989
		3 0 0.062069198164530444 27 0.73980758520644119 28 0.19812321662902832
		3 0 0.12282143436488087 27 0.79901152945939136 28 0.078167036175727844
		3 0 0.12704865766125215 27 0.86190477440697655 28 0.011046567931771278
		1 27 1
		2 27 0.03750765323638916 28 0.96249234676361084
		2 27 0.070007383823394775 28 0.92999261617660522
		2 27 0.12066549062728871 28 0.87933450937271118
		2 27 0.19724512100219738 28 0.80275487899780273
		2 27 0.24335765838623058 28 0.75664234161376953
		2 27 0.27335405349731445 28 0.72664594650268555
		2 27 0.028559565544128532 28 0.97144043445587136
		2 27 0.021195650100708008 28 0.97880434989929199
		2 27 0.014726758003234752 28 0.98527324199676514
		2 27 0.0077974796295166016 28 0.9922025203704834
		2 27 0.0026624202728271484 28 0.99733757972717285
		2 27 0.0010250210762023926 28 0.99897497892379761
		1 28 1
		2 27 1.2814998626708984e-05 28 0.99998718500137329
		2 27 0.00010240077972412109 28 0.99989759922027588
		2 27 0.0002176165580749512 28 0.99978238344192505
		2 27 0.00039774179458618164 28 0.99960225820541382
		2 27 0.00079047679901134149 28 0.99920952320098877
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1
		1 12 1;
	setAttr -s 30 ".pm";
	setAttr ".pm[0]" -type "matrix" 3.4575762276238111e-17 -1.1110720809118857e-15 1 0
		 0.99671581846810242 0.080978868944068402 8.9904604809807756e-17 0 -0.080978868944068472 0.99671581846810253 1.1065768506713951e-15 0
		 -89.922661705445918 -7.3058291063734551 -8.1110996878724394e-15 1;
	setAttr ".pm[1]" -type "matrix" 6.918311570553978e-17 -1.1094549782754254e-15 1 0
		 0.99370820429724827 0.11200002103722209 8.9904604809807756e-17 0 -0.11200002103722217 0.99370820429724838 1.1065768506713951e-15 0
		 -98.196186499595399 -10.370936743207041 -8.8882558051100506e-15 1;
	setAttr ".pm[2]" -type "matrix" 0.001007471574517631 -0.025528409183736327 0.99967358939084416 0
		 0.99922217631076082 0.039434025520947123 -6.2016364266170841e-17 0 -0.03942115383665544 0.9988960195915092 0.025548281242105786 0
		 -119.57825420298407 -1.679803926888547 0.077614304178200574 1;
	setAttr ".pm[3]" -type "matrix" 0.0076164837370273084 -0.99997099416707258 -2.0548994630500317e-13 0
		 0.99997099416707247 0.0076164837370272702 1.245621256556921e-16 0 1.3734803877338167e-15 -2.0551512913933977e-13 1 0
		 -135.44603381332166 -1.0156223630732719 3.6651656031278548 1;
	setAttr ".pm[4]" -type "matrix" 1 2.2678040001444831e-14 -2.0548994630500317e-13 0
		 -2.2640743446711266e-14 0.99999999999999978 1.2456212565569224e-16 0 2.0551962909287624e-13 -1.9186209000702675e-16 1 0
		 -0.13027686573530498 -150.44940547201142 3.6651656031278526 1;
	setAttr ".pm[5]" -type "matrix" 0.91713740401495025 0.39204105820551921 0.071852563195857241 0
		 -0.39305700674139121 0.91951410508566844 -2.7408630920433552e-16 0 -0.066069445345150177 -0.028242153416460074 0.99741526415138926 0
		 44.75959434624491 -115.68491127749239 1.6017331330491398 1;
	setAttr ".pm[6]" -type "matrix" 0.73462200035709246 0.6620039437155012 0.14859776275727613 0
		 -0.66943621051733593 0.74286954443441067 -2.8171909249863339e-15 0 -0.11038875232347217 -0.099476723191582961 0.98889772216520566 0
		 71.296881497827698 -97.916982655666303 0.63258330988607969 1;
	setAttr ".pm[7]" -type "matrix" 0.73462200035709246 0.6620039437155012 0.14859776275727613 0
		 -0.66943621051733593 0.74286954443441067 -2.8171909249863339e-15 0 -0.11038875232347217 -0.099476723191582961 0.98889772216520566 0
		 49.321311035265921 -97.916982655666317 0.63258330988607969 1;
	setAttr ".pm[8]" -type "matrix" 0.83466327849334687 0.54909811517377805 0.042760629641553291 0
		 -0.54960080976363579 0.83542740552794603 -6.9388939039072254e-16 0 -0.035723401880184587 -0.023501276677000051 0.99908534598034104 0
		 6.0482267550614823 -99.738948342314274 5.9499302243189902 1;
	setAttr ".pm[9]" -type "matrix" 0.19159353817436661 0.96265244426614305 0.19129084577743757 0
		 -0.980763818899971 0.19519818528035521 -6.4531713306337184e-16 0 -0.037339625956500706 -0.18761114042528496 0.98153339847493326 0
		 71.166620887737594 -70.096777222418083 -2.2569224801688841 1;
	setAttr ".pm[10]" -type "matrix" 0.99359468460214773 -0.111158518854132 0.020331906366949464 0
		 0.1118054864787195 0.99314588987390207 -0.034070142644716368 0 -0.016405362648101201 0.036125131317823689 0.9992126094899193 0
		 -63.872989345115464 -70.74512082684457 10.012503375495301 1;
	setAttr ".pm[11]" -type "matrix" 0.91713740401495014 0.39204105820551977 0.071852563195857325 0
		 0.39305700674139188 -0.91951410508566855 -4.8572257327350611e-17 0 0.06606944534515026 0.028242153416460344 -0.99741526415138915 0
		 -44.759600822494029 115.6849304316658 -1.601730497224841 1;
	setAttr ".pm[12]" -type "matrix" 0.73462200035709269 0.66200394371550297 0.14859776275726755 0
		 0.66943621051733593 -0.74286954443441089 1.2337353361147055e-14 0 0.11038875232347231 0.099476723191570221 -0.98889772216520688 0
		 -71.296686468055825 97.916810472776589 -0.63258191295552024 1;
	setAttr ".pm[13]" -type "matrix" 0.73462200035709269 0.66200394371550297 0.14859776275726755 0
		 0.66943621051733593 -0.74286954443441089 1.2337353361147055e-14 0 0.11038875232347231 0.099476723191570221 -0.98889772216520688 0
		 -49.321306633146619 97.916965279716194 -0.63258174964530689 1;
	setAttr ".pm[14]" -type "matrix" 0.8346632784933472 0.54909811517377805 0.042760629641555518 0
		 0.54960080976363601 -0.83542740552794659 -2.8484159475539184e-15 0 0.035723401880184663 0.023501276677004204 -0.99908534598034116 0
		 -6.0482588665024686 99.738973701315615 -5.9499332961344065 1;
	setAttr ".pm[15]" -type "matrix" 0.19159353817436647 0.9626524442661436 0.1912908457774378 0
		 0.98076381889997166 -0.19519818528035524 6.8001160258290858e-16 0 0.037339625956500852 0.18761114042528529 -0.98153339847493348 0
		 -71.166609960181134 70.096777885696312 2.2569194753943176 1;
	setAttr ".pm[16]" -type "matrix" 0.99359468460214784 -0.11115851885413225 0.020331906366949072 0
		 -0.1118054864787198 -0.9931458898739024 0.034070142644713516 0 0.016405362648101236 -0.036125131317820851 -0.99921260948991941 0
		 63.873022065111968 70.745113183067502 -10.012500161033058 1;
	setAttr ".pm[17]" -type "matrix" 0.0035352841929918001 0.99999375086331155 -4.3984146724769059e-14 0
		 -0.99999375086331155 0.0035352841929918236 -4.0549455685231891e-17 0 1.8317068672835036e-16 4.3960812757896892e-14 1 0
		 87.385045975409867 -5.2076983643269381 2.1862363935355361e-13 1;
	setAttr ".pm[18]" -type "matrix" 0.0035352841929918001 0.99999375086331155 -4.3984146724769059e-14 0
		 -0.99999375086331155 0.0035352841929918236 -4.0549455685231891e-17 0 1.8317068672835036e-16 4.3960812757896892e-14 1 0
		 49.303221392968737 -5.2076983643269594 2.1898446183655883e-13 1;
	setAttr ".pm[19]" -type "matrix" 0.0011578717631305201 0.00040135911301392575 -0.99999924912163962 0
		 -0.32751667596297535 0.94484539844683779 3.9903518857242764e-15 0 0.94484468898287399 0.32751643003779057 0.0012254616099472673 0
		 1.6219775052216945 -4.6986258547008646 5.1901540650829388 1;
	setAttr ".pm[20]" -type "matrix" 0.010637601955193686 0.00057034457843319335 -0.99994325645593773 0
		 -0.053538999614532665 0.99856575923685442 1.1075016771722184e-14 0 0.99850909707669577 0.053535961621948805 0.010652880751012412 0
		 -11.373451212508709 -1.6338503156876372 5.0824860550272142 1;
	setAttr ".pm[21]" -type "matrix" 0.032158275769245473 -0.99948278889611153 -3.6891837794083939e-14 0
		 0.99948278889611164 0.032158275769245598 1.4188599579102991e-15 0 1.9078333079435109e-19 -3.6696232015984203e-14 1 0
		 -0.82312990998205637 5.2536445257515343 -18.268505240663693 1;
	setAttr ".pm[22]" -type "matrix" 0.0035352841929912932 0.99999375086331155 -4.4357746582758803e-14 0
		 0.99999375086331133 -0.0035352841929912546 4.9720202486217267e-17 0 -1.7010375694892917e-16 -4.4190197339495354e-14 -1 0
		 -87.385035404596181 5.2076934779582249 -2.2177968169807747e-13 1;
	setAttr ".pm[23]" -type "matrix" 0.0035352841929912932 0.99999375086331155 -4.4357746582758803e-14 0
		 0.99999375086331133 -0.0035352841929912546 4.9720202486217267e-17 0 -1.7010375694892917e-16 -4.4190197339495354e-14 -1 0
		 -49.303197426409007 5.2076933581131382 -2.2131702236267829e-13 1;
	setAttr ".pm[24]" -type "matrix" 0.0011578717631300012 0.00040135911301428202 -0.99999924912163962 0
		 0.32751667596297523 -0.94484539844683757 -4.5585822443239285e-15 0 -0.94484468898287399 -0.32751643003779057 -0.0012254616099470377 0
		 -1.6219776014990279 4.6986261400737082 -5.1901561028211463 1;
	setAttr ".pm[25]" -type "matrix" 0.010637601955193537 0.00057034457861544622 -0.99994325645593773 0
		 0.053538999614533039 -0.9985657592368542 -1.9314291919286802e-13 0 -0.99850909707669577 -0.053535961621947306 -0.010652880751022163 0
		 11.373430360745379 1.6338454113905416 -5.0824905186092844 1;
	setAttr ".pm[26]" -type "matrix" 0.032158275769245577 -0.99948278889611186 -3.7072109638147198e-14 0
		 -0.99948278889611164 -0.032158275769245487 -1.4800373521180878e-15 0 3.1389188891835925e-16 3.6951060183243157e-14 -1 0
		 0.8231299546821772 -5.2536468043872171 18.268499999999811 1;
	setAttr ".pm[27]" -type "matrix" -2.2386202159416153e-17 -1.1113845015437855e-15 1 4.8148248609680896e-35
		 0.99955546166645493 0.029814074742645236 8.9904604809807732e-17 1.7347234759768071e-18
		 -0.029814074742645271 0.99955546166645504 1.1065768506713953e-15 -5.4210108624275222e-20
		 -98.7952875411262 -3.1561271978955077 -1.9903599725802474e-14 1;
	setAttr ".pm[28]" -type "matrix" 0.00064279030848654649 -0.0045095760434310846 0.99998962521844592 0
		 0.9899935444906216 0.14111265665026473 -7.8320960760175189e-15 1.7347234759768071e-18
		 -0.1411111926372775 0.98998327352385762 0.0045551570194859101 0 -109.67413293100044 -15.485161915671224 0.00066596144535050578 1;
	setAttr ".pm[29]" -type "matrix" 0.0076164837370277143 -0.99997099416707258 -9.7250224366518534e-16 -6.7762635780344027e-21
		 0.99997099416707247 0.0076164837370276519 -1.9100034054364556e-12 8.6736173798840355e-19
		 1.9099085133292367e-12 1.3584409146097991e-14 0.99999999999999978 -3.0120495416580576e-20
		 -135.44603381331473 -1.0156223630725179 3.6651656033865714 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 27 ".ma";
	setAttr -s 30 ".dpf[0:29]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4;
	setAttr -s 27 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 27 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "AEFAB4A7-4974-0F3B-3D59-DF8077FECE31";
	setAttr -s 27 ".wm";
	setAttr -s 30 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 90.218957138306607 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.47932794907451692 0.51985066820772374 0.47932794907451748 0.5198506682077243 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.5490206863127298 0 7.7715611723760948e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.015583305331245492 0.99987857292520932 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.943354856391366 -2.6645352591003757e-14
		 -8.2562764900395353e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.012738461328307624 -0.00096793985612383027 0.036384623195095993 0.9992562003262091 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 15.910731468284439 1.4685411010671929e-15
		 -8.0274265097534311e-18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.69782242867784694 -0.016423075631596715 0.011395146850248476 0.71599182345136569 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 14.999999999999829 1.5659348817637794e-14
		 2.2666059567471777e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.7044088004358674 0.70979450678946676 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.3717174473870859 1.1963776014485912
		 4.2149612849656686 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.35896549520762655 -0.56788035318191932 -0.61001908289698525 0.42015758498668454 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.9013077301989654 -2.1926904736346842e-15
		 1.3322676295501878e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.020792007615764444 0.032531307437729813 -0.16388135492546305 0.98572425554182874 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 21.97557046256177 3.4832581958856723e-15
		 -6.6791589343376712e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 28.543802066389812 5.4134034899230647e-14
		 1.3734302770845571e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.032497198928125193 -0.0420743825636734 0.075602051045750129 0.99571984426915339 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.7648215245581111 -2.0150275896366894e-14
		 2.9332752772209979e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.062027350191543859 0.041772381065326603 -0.38485812849094719 0.91994124646240005 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.8502428767090597 -1.9511421747314751e-14
		 -4.0911525824346604e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.064417545994664274 -0.059375515068089912 0.67513886759484742 0.73247009320597611 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.3633000186768669 1.4101787386915552
		 -4.1572032361170645 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.58369110459168361 -0.36895970292692837 0.41028449973536679 0.59568453170576197 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.9014430501171091 0.00024517192368023188
		 3.5282098942435169e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.02079200761575797 0.032531307437728765 -0.1638813549254628 0.98572425554182885 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -21.975379834909219 -0.00015480693959091241
		 -1.6331021346349672e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 -28.543762388566293 -3.786305317987626e-05
		 5.9832436906104292e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.032497198928116713 -0.042074382563673095 0.075602051045750324 0.99571984426915372 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.7648613801647386 3.2937974182800644e-05
		 3.1450492610218816e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.062027350191541999 0.041772381065327505 -0.38485812849094725 0.91994124646240016 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.8502422285359756 -3.0274609315483758e-05
		 -1.1753469069120115e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.06441754599466322 -0.059375515068090953 0.67513886759484731 0.732470093205976 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8067981422108801 -0.22804026453587234
		 4.8987348489672975 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.027404957717274941 -0.70657552200209695 -0.70647422220122147 0.029902731734035841 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 38.081824582441151 2.1507164469534858e-14
		 -3.6082248300523633e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 44.350901440119344 1.5631940186722227e-13
		 2.5243548967071388e-29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.57501121890260098 -0.41079114806815098 0.40925697469038919 0.57716675187701671 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 12.054701966989766 1.3504870445234946e-15
		 -1.7312482588415602e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00090698965226314451 0.0046257119971601169 0.13959576665495968 0.99019735512184837 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.8889548728406265 7.7870129864996778e-16
		 -1.6534170708009329e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.47556171893544208 0.5181839548921241 0.50800590522992761 0.49724887192134121 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8068086954602052 -0.22804112194193316
		 -4.8987299999999996 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70657552200209783 0.027404957717275122 0.029902731734035671 0.70647422220122058 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 -38.081837978187174 1.1984508674345307e-07
		 -4.6265933539915773e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 -44.350877179599841 -7.0450056881554701e-06
		 -3.4784614820860202e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.57501121890260098 -0.41079114806815098 0.40925697469038919 0.57716675187701671 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 -12.054683341169886 1.0776698294634457e-05
		 2.2268727812857492e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00090698965235315888 0.004625711997147554 0.13959576665495993 0.99019735512184837 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.888970517526575 -4.5964748367488539e-06
		 -2.128988892735606e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.47556171893548732 0.51818395489207802 0.50800590522997513 0.49724887192129769 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 -1.9705775993785118e-31 -2.0260066123519809e-32
		 0.051249141972227387 0 8.5812345604984586 0.90711188033591483 1.1792500037930034e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 0.99999999999999989 1 -0.0045095922598754482
		 -0.00064279035275107007 -0.11176528514608375 0 11.921669314070641 6.6613381477509392e-15
		 -9.9618320373797725e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999989
		 1.0000000000000002 -1.5662410218938416 -0.007616478357054147 0.14155053258737693 0 24.937541018342273
		 7.1054273576010019e-15 -2.8406096919120216e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr -s 29 ".m";
	setAttr -s 29 ".p";
	setAttr -s 5 ".g";
	setAttr ".g[1]" yes;
	setAttr ".g[2]" yes;
	setAttr ".g[27]" yes;
	setAttr ".g[28]" yes;
	setAttr ".g[29]" yes;
	setAttr ".bp" yes;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "62C7D3F9-4C10-DAEC-1883-E8BFF58162A0";
createNode objectSet -n "Export";
	rename -uid "99849823-48C1-024F-ED2F-6C88BDE8CE77";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
createNode shapeEditorManager -n "Main_MOD_MASTER:shapeEditorManager";
	rename -uid "BA0B80A2-4EA6-D014-D39B-A48CBD5BF067";
createNode poseInterpolatorManager -n "Main_MOD_MASTER:poseInterpolatorManager";
	rename -uid "6992D322-4836-0EEF-2FDE-91A0624B5344";
createNode renderLayerManager -n "Main_MOD_MASTER:renderLayerManager";
	rename -uid "8B8F2328-4D9E-D75B-525B-C6936866CA78";
createNode renderLayer -n "Main_MOD_MASTER:defaultRenderLayer";
	rename -uid "7B177481-4C9E-A271-D61F-97BC2EA57E69";
	setAttr ".g" yes;
createNode shadingEngine -n "Main_MOD_MASTER:lambert2SG";
	rename -uid "2457F49D-4B6A-7F97-0A51-A5A5343C0FB3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Main_MOD_MASTER:materialInfo2";
	rename -uid "E40BE922-4248-E01E-31B0-D5A3BE091EC4";
createNode groupId -n "Main_MOD_MASTER:groupId11";
	rename -uid "B4860520-4DBC-D601-382A-468AE41E95DF";
	setAttr ".ihi" 0;
createNode groupId -n "Main_MOD_MASTER:groupId17";
	rename -uid "45F634FE-4F88-90F5-20D1-11B1CD7C9A6E";
	setAttr ".ihi" 0;
createNode lightEditor -n "Main_MOD_MASTER:lightEditor";
	rename -uid "92CCCE9C-43CB-A5A3-EE5B-0FAD0B8FD991";
createNode lightItem -n "Main_MOD_MASTER:main_light__LEItem";
	rename -uid "9C4ABB92-4F0F-7C4A-F06A-94B7A46040DF";
createNode lightItem -n "Main_MOD_MASTER:back_light__LEItem";
	rename -uid "E268A365-4769-4B76-E9B5-0184222799E0";
createNode renderSetup -n "Main_MOD_MASTER:renderSetup";
	rename -uid "EA43B3DD-4106-A993-F2C8-2880E10D60BA";
createNode groupId -n "Main_MOD_MASTER:groupId79";
	rename -uid "E6D1D548-463F-0762-F3F4-F9875944EFFA";
	setAttr ".ihi" 0;
createNode shadingEngine -n "Main_MOD_MASTER:lambert4SG";
	rename -uid "12779F54-416B-3318-D23A-828A6EF533F1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Main_MOD_MASTER:materialInfo6";
	rename -uid "8D27990A-4158-6AC1-E288-2BA41B0BDC56";
createNode groupId -n "Main_MOD_MASTER:groupId84";
	rename -uid "31397ED8-469B-B855-A4DF-E7809C7C580F";
	setAttr ".ihi" 0;
createNode shadingEngine -n "Main_MOD_MASTER:lambert5SG";
	rename -uid "B1C2E77B-4746-90EB-2C4C-2CAC1B28C2B5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Main_MOD_MASTER:materialInfo7";
	rename -uid "54B5A1B2-4000-D8DA-23F7-F384A7476039";
createNode file -n "Main_MOD_MASTER:file1";
	rename -uid "05076111-4470-5F64-A25E-2293C14DA080";
	setAttr ".ftn" -type "string" "C:/Users/Glade/Desktop/School/Papercut/Models/Character/Sadao/sourceimages/Sadao_eyes.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture1";
	rename -uid "3A596EF5-40C3-EB4F-266D-BC92C28A9177";
createNode shadingEngine -n "Main_MOD_MASTER:blinn1SG";
	rename -uid "0BA7633D-44EC-98BB-68AB-189F3D9113E5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Main_MOD_MASTER:materialInfo9";
	rename -uid "07FF10B2-4AD6-3B0B-18E0-039EE3A70160";
createNode file -n "Main_MOD_MASTER:file3";
	rename -uid "2BD0BAC8-4A8D-F7E1-76E0-7398F33B406F";
	setAttr ".ftn" -type "string" "C:/Users/Glade/Desktop/School/Papercut/Models/Character/Sadao/sourceimages/Sadao_eyes.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture3";
	rename -uid "74C8B263-41D6-4F7B-6FBF-B7ABFB8C3AFF";
createNode shadingEngine -n "Main_MOD_MASTER:lambert6SG";
	rename -uid "13487251-4FCB-6A63-ED0D-BB9D2D2CA133";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Main_MOD_MASTER:materialInfo10";
	rename -uid "300954E4-4B09-C0E7-125E-B3AD83C5CCFC";
createNode shadingEngine -n "Main_MOD_MASTER:phong1SG";
	rename -uid "65BEB3A7-4480-6B94-ED79-E9992C1496D0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Main_MOD_MASTER:materialInfo11";
	rename -uid "E6665ED3-46F5-1623-F58D-A3823FA46B6D";
createNode file -n "Main_MOD_MASTER:file4";
	rename -uid "F9392C03-4672-2E78-ECBA-03844FF7FC9C";
	setAttr ".ftn" -type "string" "C:/Users/Glade/Desktop/Art/Pixel Grid/PixelTextureGrid_1024.png";
	setAttr ".cs" -type "string" "Raw";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture4";
	rename -uid "A24EC649-4667-342C-0DF7-9CBEC83BF239";
createNode checker -n "Main_MOD_MASTER:checker1";
	rename -uid "B994894C-4537-AFF3-4272-E48886F28899";
	setAttr ".ag" 1.0259740352630615;
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture5";
	rename -uid "F2F5B86D-4A44-3621-721B-83B480160ABF";
	setAttr ".re" -type "float2" 4 4 ;
createNode checker -n "Main_MOD_MASTER:checker2";
	rename -uid "BA5278CF-4666-AE0C-15DB-39B7C17804F8";
	setAttr ".c2" -type "float3" 0.012075922 0 0.15700001 ;
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture6";
	rename -uid "B91B62D9-4C5F-DC13-E958-EB9773DECFDF";
	setAttr ".re" -type "float2" 80 80 ;
createNode gameFbxExporter -n "Main_MOD_MASTER:gameExporterPreset1";
	rename -uid "7A8E8C7F-417F-D71A-0CAB-73B6A78438C4";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".esi" 2;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".ich" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "C:/Users/Glade/Desktop/School/Papercut/Models/Character/Sadao/Models";
	setAttr ".exf" -type "string" "Sadao_MDL";
createNode gameFbxExporter -n "Main_MOD_MASTER:gameExporterPreset2";
	rename -uid "B2660F53-4E00-AE92-1D5F-84A6556E24AC";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 2;
	setAttr ".ssn" -type "string" "";
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "Main_MOD_MASTER:gameExporterPreset3";
	rename -uid "CAD0B23F-4836-3127-712E-B5BB3161EECA";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode file -n "Main_MOD_MASTER:file5";
	rename -uid "E7AEEE1D-4AF7-29F9-D5EC-6BB474FB7CC2";
	setAttr ".ftn" -type "string" "C:/Users/Glade/Desktop/School/Papercut/Models/Character/Sadao/sourceimages/Substance textures/Sadao_MDL_Sadao_MAT_MaskMap.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture7";
	rename -uid "5B763F9A-414A-CD5F-ED2D-3A9C3CE13EB6";
createNode file -n "Main_MOD_MASTER:file6";
	rename -uid "471C86FB-41CC-511C-858D-9CB7B15DC254";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture8";
	rename -uid "AED571FC-4216-C2A0-F073-76853045BEFD";
createNode file -n "Main_MOD_MASTER:file7";
	rename -uid "2D57C04D-4CB3-42C4-BCAC-D99167905C75";
	setAttr ".ftn" -type "string" "C:/Users/Glade/Desktop/School/Papercut/Models/Character/Sadao/sourceimages/Substance textures/Sadao_MDL_Sadao_MAT_BaseMap.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture9";
	rename -uid "B810DD79-422C-F8CC-A108-11995FC80F86";
createNode file -n "Main_MOD_MASTER:file8";
	rename -uid "B484BF91-4E14-9CD4-1ABF-E7A33C304055";
	setAttr ".ftn" -type "string" "C:/Users/Glade/Desktop/School/Papercut/Models/Character/Sadao/sourceimages/Substance textures/Sadao_MDL_Opacity.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture10";
	rename -uid "5F38DAC5-4C08-5A6C-8101-8E863875357D";
createNode file -n "Main_MOD_MASTER:file9";
	rename -uid "2887DE2C-4E7C-F9F7-C526-5C8C1DED7822";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/Glade/Desktop/School/Papercut/Models/Character/Sadao/sourceimages/Substance textures/Sadao_MDL_Sadao_MAT_Normal.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture11";
	rename -uid "1C0D21A1-4A71-0D03-4D89-5A91A286EB03";
createNode bump2d -n "Main_MOD_MASTER:bump2d1";
	rename -uid "BCF50038-48EF-B118-1F5C-0E81E9FF8FA8";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 0.00016000003 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "Main_MOD_MASTER:file10";
	rename -uid "FC7CC0BE-4369-E0BC-626E-03BF536D3DCC";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture12";
	rename -uid "16ACAA57-4A7D-790B-C720-1884614BBDE3";
createNode shadingEngine -n "Main_MOD_MASTER:standardSurface2SG";
	rename -uid "E257586A-4565-24FD-1553-249C610316AB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Main_MOD_MASTER:materialInfo12";
	rename -uid "042582C7-4619-D68A-1FA0-368E66D64B75";
createNode file -n "Main_MOD_MASTER:file11";
	rename -uid "5A9EBE8C-4929-44AF-CC98-49A83D07706C";
	setAttr ".ftn" -type "string" "C:/Users/Glade/Desktop/School/Papercut/Models/Character/Sadao/sourceimages/Substance textures/Sadao_MDL_Sadao_MAT_BaseMap.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture13";
	rename -uid "389E192D-4620-1F1C-8056-83A00EA18464";
createNode file -n "Main_MOD_MASTER:file12";
	rename -uid "88151CB0-4273-4AC2-371B-E5B762317B7D";
	setAttr ".ftn" -type "string" "C:/Users/Glade/Desktop/School/Papercut/Models/Character/Sadao/sourceimages/Substance textures/Sadao_MDL_Sadao_MAT_BaseMap.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture14";
	rename -uid "EA4A559C-4F2B-43C3-B5F7-02BE712FD91E";
createNode file -n "Main_MOD_MASTER:file13";
	rename -uid "23A39E24-4C90-E156-D7A0-05847D8F178A";
	setAttr ".ftn" -type "string" "C:/Users/Glade/Desktop/School/Papercut/Models/Character/Sadao/sourceimages/Substance textures/Sadao_MDL_Sadao_MAT_MaskMap.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture15";
	rename -uid "A4DCB13C-46C2-204C-51E0-8AAC2F87A1A0";
createNode file -n "Main_MOD_MASTER:file14";
	rename -uid "E9BC53DF-42E2-B03B-BCF2-A18D241809BF";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/Glade/Desktop/School/Papercut/Models/Character/Sadao/sourceimages/Substance textures/Sadao_MDL_Sadao_MAT_Normal.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture16";
	rename -uid "FB0976B2-4B83-C8F9-D4EC-1DB70CE5C879";
createNode bump2d -n "Main_MOD_MASTER:bump2d2";
	rename -uid "CEE3653A-445D-4C80-1031-EBA87BE8F32E";
	setAttr ".bi" 1;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode file -n "Main_MOD_MASTER:file15";
	rename -uid "7259481A-4BE6-E9E9-296B-FC952B653FEF";
	setAttr ".ftn" -type "string" "C:/Users/Glade/Desktop/School/Papercut/Models/Character/Sadao/sourceimages/Substance textures/Sadao_MDL_Roughness.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture17";
	rename -uid "24ED8D8E-4696-36BC-0867-3D8770D323F6";
createNode file -n "Main_MOD_MASTER:file16";
	rename -uid "D77D739B-483B-234F-DB79-24A4579DE274";
	setAttr ".ftn" -type "string" "C:/Users/Glade/Desktop/School/Papercut/Models/Character/Sadao/sourceimages/Substance textures/Sadao_MDL_Opacity.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Main_MOD_MASTER:place2dTexture18";
	rename -uid "F1FD388D-47CD-A704-91CB-F5A7E209050F";
createNode shadingEngine -n "Main_MOD_MASTER:standardSurface1SG";
	rename -uid "5A8E9CB5-4D32-0ECA-E123-B091B610F48A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Main_MOD_MASTER:materialInfo13";
	rename -uid "940C8973-4E52-0149-393B-C9BC7DF3E6CD";
createNode lambert -n "Main_MOD_MASTER:MainC_MAT";
	rename -uid "B271FEA8-43A8-70F2-EFD7-77983FC4B42F";
	setAttr ".c" -type "float3" 0.070152 0.088116713 0.148 ;
createNode shadingEngine -n "Main_MOD_MASTER:lambert7SG";
	rename -uid "8FE6DF71-4EF8-A103-09FF-1E85C2FB606D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "Main_MOD_MASTER:materialInfo14";
	rename -uid "A4BE0CCC-45C6-D294-792B-1597504D50B5";
createNode nodeGraphEditorInfo -n "Main_MOD_MASTER:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "342A6DA5-4C2B-6F2E-126C-9DAC72C48C12";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2034.5237286791003 -2052.9564496591875 ;
	setAttr ".tgi[0].vh" -type "double2" 2033.3332525359292 2097.0040669565119 ;
	setAttr ".tgi[0].ni[0].x" -81.428573608398438;
	setAttr ".tgi[0].ni[0].y" 80;
	setAttr ".tgi[0].ni[0].nvs" 1923;
createNode phong -n "Sword_MAT";
	rename -uid "86B9672D-4A7F-E2A8-31C5-FAAA78E5D927";
	setAttr ".c" -type "float3" 0.87741935 0.87741935 0.87741935 ;
	setAttr ".cp" 6.311790943145752;
createNode shadingEngine -n "Sword_MDLSG";
	rename -uid "8A54B55C-482A-89D7-1D73-B686ECE985EA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "44BDC4BE-49D9-74BE-9C73-C5A69FDFF641";
createNode skinCluster -n "skinCluster2";
	rename -uid "42F36BAA-4D5D-9359-3310-BF901DC61768";
	setAttr -s 146 ".wl";
	setAttr ".wl[0:145].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 51.58250241382143 -83.96155685132068 5.0861434936523438 1;
	setAttr ".gm" -type "matrix" 0.53128693610017308 -0.84719194491525396 0 0 -0.021314868915411345 -0.013366878034444252 -0.9996834513658468 0
		 0.84692376746222553 0.53111875794620722 -0.025159432928205668 0 -49.38536802924569 85.39676324921939 68.688993388600053 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode dagPose -n "bindPose2";
	rename -uid "A55FA9B3-4580-7009-6FB5-18AC8CE5E547";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -51.58250241382143 83.96155685132068
		 -5.0861434936523438 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".bp" yes;
createNode phong -n "GrapplingHook_MAT";
	rename -uid "43BE4609-41E3-A528-A487-918C93090B98";
createNode shadingEngine -n "GrapplingHook_MDLSG";
	rename -uid "2BEB4FBA-4F51-05CA-96D2-EBAD8D5BFA4E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "B882B987-4020-A094-29F5-4AAD5B905003";
select -ne :time1;
	setAttr ".o" 69;
	setAttr ".unw" 69;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 13 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 19 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 17 ".tx";
select -ne :initialShadingGroup;
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
connectAttr "Base_JNT.s" "Spine01_JNT.is";
connectAttr "Spine01_JNT_parentConstraint1.ctx" "Spine01_JNT.tx";
connectAttr "Spine01_JNT_parentConstraint1.cty" "Spine01_JNT.ty";
connectAttr "Spine01_JNT_parentConstraint1.ctz" "Spine01_JNT.tz";
connectAttr "Spine01_JNT_parentConstraint1.crx" "Spine01_JNT.rx";
connectAttr "Spine01_JNT_parentConstraint1.cry" "Spine01_JNT.ry";
connectAttr "Spine01_JNT_parentConstraint1.crz" "Spine01_JNT.rz";
connectAttr "Spine01_JNT.s" "Spine02_JNT.is";
connectAttr "Spine02_JNT_parentConstraint1.ctx" "Spine02_JNT.tx";
connectAttr "Spine02_JNT_parentConstraint1.cty" "Spine02_JNT.ty";
connectAttr "Spine02_JNT_parentConstraint1.ctz" "Spine02_JNT.tz";
connectAttr "Spine02_JNT_parentConstraint1.crx" "Spine02_JNT.rx";
connectAttr "Spine02_JNT_parentConstraint1.cry" "Spine02_JNT.ry";
connectAttr "Spine02_JNT_parentConstraint1.crz" "Spine02_JNT.rz";
connectAttr "Spine02_JNT.s" "Head_JNT.is";
connectAttr "Head_JNT_parentConstraint1.ctx" "Head_JNT.tx";
connectAttr "Head_JNT_parentConstraint1.cty" "Head_JNT.ty";
connectAttr "Head_JNT_parentConstraint1.ctz" "Head_JNT.tz";
connectAttr "Head_JNT_parentConstraint1.crx" "Head_JNT.rx";
connectAttr "Head_JNT_parentConstraint1.cry" "Head_JNT.ry";
connectAttr "Head_JNT_parentConstraint1.crz" "Head_JNT.rz";
connectAttr "Head_JNT.s" "HeadEnd_JNT.is";
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
connectAttr "Spine02_JNT.s" "L_Clavicle_JNT.is";
connectAttr "L_Clavicle_JNT_parentConstraint1.ctx" "L_Clavicle_JNT.tx";
connectAttr "L_Clavicle_JNT_parentConstraint1.cty" "L_Clavicle_JNT.ty";
connectAttr "L_Clavicle_JNT_parentConstraint1.ctz" "L_Clavicle_JNT.tz";
connectAttr "L_Clavicle_JNT_parentConstraint1.crx" "L_Clavicle_JNT.rx";
connectAttr "L_Clavicle_JNT_parentConstraint1.cry" "L_Clavicle_JNT.ry";
connectAttr "L_Clavicle_JNT_parentConstraint1.crz" "L_Clavicle_JNT.rz";
connectAttr "L_Clavicle_JNT.s" "L_Shoulder_JNT.is";
connectAttr "L_Shoulder_JNT_parentConstraint1.ctx" "L_Shoulder_JNT.tx";
connectAttr "L_Shoulder_JNT_parentConstraint1.cty" "L_Shoulder_JNT.ty";
connectAttr "L_Shoulder_JNT_parentConstraint1.ctz" "L_Shoulder_JNT.tz";
connectAttr "L_Shoulder_JNT_parentConstraint1.crx" "L_Shoulder_JNT.rx";
connectAttr "L_Shoulder_JNT_parentConstraint1.cry" "L_Shoulder_JNT.ry";
connectAttr "L_Shoulder_JNT_parentConstraint1.crz" "L_Shoulder_JNT.rz";
connectAttr "L_Shoulder_JNT.s" "L_Elbow_JNT.is";
connectAttr "L_Elbow_JNT_parentConstraint1.ctx" "L_Elbow_JNT.tx";
connectAttr "L_Elbow_JNT_parentConstraint1.cty" "L_Elbow_JNT.ty";
connectAttr "L_Elbow_JNT_parentConstraint1.ctz" "L_Elbow_JNT.tz";
connectAttr "L_Elbow_JNT_parentConstraint1.crx" "L_Elbow_JNT.rx";
connectAttr "L_Elbow_JNT_parentConstraint1.cry" "L_Elbow_JNT.ry";
connectAttr "L_Elbow_JNT_parentConstraint1.crz" "L_Elbow_JNT.rz";
connectAttr "L_Elbow_JNT.s" "L_Wrist_JNT.is";
connectAttr "L_Wrist_JNT_parentConstraint1.ctx" "L_Wrist_JNT.tx";
connectAttr "L_Wrist_JNT_parentConstraint1.cty" "L_Wrist_JNT.ty";
connectAttr "L_Wrist_JNT_parentConstraint1.ctz" "L_Wrist_JNT.tz";
connectAttr "L_Wrist_JNT_parentConstraint1.crx" "L_Wrist_JNT.rx";
connectAttr "L_Wrist_JNT_parentConstraint1.cry" "L_Wrist_JNT.ry";
connectAttr "L_Wrist_JNT_parentConstraint1.crz" "L_Wrist_JNT.rz";
connectAttr "L_Wrist_JNT.s" "L_Finger_JNT.is";
connectAttr "L_Finger_JNT_parentConstraint1.ctx" "L_Finger_JNT.tx";
connectAttr "L_Finger_JNT_parentConstraint1.cty" "L_Finger_JNT.ty";
connectAttr "L_Finger_JNT_parentConstraint1.ctz" "L_Finger_JNT.tz";
connectAttr "L_Finger_JNT_parentConstraint1.crx" "L_Finger_JNT.rx";
connectAttr "L_Finger_JNT_parentConstraint1.cry" "L_Finger_JNT.ry";
connectAttr "L_Finger_JNT_parentConstraint1.crz" "L_Finger_JNT.rz";
connectAttr "L_Finger_JNT.s" "L_ArmEnd_JNT.is";
connectAttr "L_Finger_JNT.ro" "L_Finger_JNT_parentConstraint1.cro";
connectAttr "L_Finger_JNT.pim" "L_Finger_JNT_parentConstraint1.cpim";
connectAttr "L_Finger_JNT.rp" "L_Finger_JNT_parentConstraint1.crp";
connectAttr "L_Finger_JNT.rpt" "L_Finger_JNT_parentConstraint1.crt";
connectAttr "L_Finger_JNT.jo" "L_Finger_JNT_parentConstraint1.cjo";
connectAttr "L_Finger_CTL.t" "L_Finger_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Finger_CTL.rp" "L_Finger_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Finger_CTL.rpt" "L_Finger_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Finger_CTL.r" "L_Finger_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Finger_CTL.ro" "L_Finger_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Finger_CTL.s" "L_Finger_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Finger_CTL.pm" "L_Finger_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Finger_JNT_parentConstraint1.w0" "L_Finger_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Wrist_JNT.ro" "L_Wrist_JNT_parentConstraint1.cro";
connectAttr "L_Wrist_JNT.pim" "L_Wrist_JNT_parentConstraint1.cpim";
connectAttr "L_Wrist_JNT.rp" "L_Wrist_JNT_parentConstraint1.crp";
connectAttr "L_Wrist_JNT.rpt" "L_Wrist_JNT_parentConstraint1.crt";
connectAttr "L_Wrist_JNT.jo" "L_Wrist_JNT_parentConstraint1.cjo";
connectAttr "L_Wrist_CTL.t" "L_Wrist_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Wrist_CTL.rp" "L_Wrist_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Wrist_CTL.rpt" "L_Wrist_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Wrist_CTL.r" "L_Wrist_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Wrist_CTL.ro" "L_Wrist_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Wrist_CTL.s" "L_Wrist_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Wrist_CTL.pm" "L_Wrist_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Wrist_JNT_parentConstraint1.w0" "L_Wrist_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Elbow_JNT.ro" "L_Elbow_JNT_parentConstraint1.cro";
connectAttr "L_Elbow_JNT.pim" "L_Elbow_JNT_parentConstraint1.cpim";
connectAttr "L_Elbow_JNT.rp" "L_Elbow_JNT_parentConstraint1.crp";
connectAttr "L_Elbow_JNT.rpt" "L_Elbow_JNT_parentConstraint1.crt";
connectAttr "L_Elbow_JNT.jo" "L_Elbow_JNT_parentConstraint1.cjo";
connectAttr "L_Elbow_CTL.t" "L_Elbow_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Elbow_CTL.rp" "L_Elbow_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Elbow_CTL.rpt" "L_Elbow_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Elbow_CTL.r" "L_Elbow_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Elbow_CTL.ro" "L_Elbow_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Elbow_CTL.s" "L_Elbow_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Elbow_CTL.pm" "L_Elbow_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Elbow_JNT_parentConstraint1.w0" "L_Elbow_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Shoulder_JNT.ro" "L_Shoulder_JNT_parentConstraint1.cro";
connectAttr "L_Shoulder_JNT.pim" "L_Shoulder_JNT_parentConstraint1.cpim";
connectAttr "L_Shoulder_JNT.rp" "L_Shoulder_JNT_parentConstraint1.crp";
connectAttr "L_Shoulder_JNT.rpt" "L_Shoulder_JNT_parentConstraint1.crt";
connectAttr "L_Shoulder_JNT.jo" "L_Shoulder_JNT_parentConstraint1.cjo";
connectAttr "L_Shoulder_CTL.t" "L_Shoulder_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Shoulder_CTL.rp" "L_Shoulder_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Shoulder_CTL.rpt" "L_Shoulder_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Shoulder_CTL.r" "L_Shoulder_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Shoulder_CTL.ro" "L_Shoulder_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Shoulder_CTL.s" "L_Shoulder_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Shoulder_CTL.pm" "L_Shoulder_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Shoulder_JNT_parentConstraint1.w0" "L_Shoulder_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Clavicle_JNT.ro" "L_Clavicle_JNT_parentConstraint1.cro";
connectAttr "L_Clavicle_JNT.pim" "L_Clavicle_JNT_parentConstraint1.cpim";
connectAttr "L_Clavicle_JNT.rp" "L_Clavicle_JNT_parentConstraint1.crp";
connectAttr "L_Clavicle_JNT.rpt" "L_Clavicle_JNT_parentConstraint1.crt";
connectAttr "L_Clavicle_JNT.jo" "L_Clavicle_JNT_parentConstraint1.cjo";
connectAttr "L_Clavicle_CTL.t" "L_Clavicle_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Clavicle_CTL.rp" "L_Clavicle_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Clavicle_CTL.rpt" "L_Clavicle_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Clavicle_CTL.r" "L_Clavicle_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Clavicle_CTL.ro" "L_Clavicle_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Clavicle_CTL.s" "L_Clavicle_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Clavicle_CTL.pm" "L_Clavicle_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Clavicle_JNT_parentConstraint1.w0" "L_Clavicle_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine02_JNT.s" "R_Clavicle_JNT.is";
connectAttr "R_Clavicle_JNT_parentConstraint1.ctx" "R_Clavicle_JNT.tx";
connectAttr "R_Clavicle_JNT_parentConstraint1.cty" "R_Clavicle_JNT.ty";
connectAttr "R_Clavicle_JNT_parentConstraint1.ctz" "R_Clavicle_JNT.tz";
connectAttr "R_Clavicle_JNT_parentConstraint1.crx" "R_Clavicle_JNT.rx";
connectAttr "R_Clavicle_JNT_parentConstraint1.cry" "R_Clavicle_JNT.ry";
connectAttr "R_Clavicle_JNT_parentConstraint1.crz" "R_Clavicle_JNT.rz";
connectAttr "R_Clavicle_JNT.s" "R_Shoulder_JNT.is";
connectAttr "R_Shoulder_JNT_parentConstraint1.ctx" "R_Shoulder_JNT.tx";
connectAttr "R_Shoulder_JNT_parentConstraint1.cty" "R_Shoulder_JNT.ty";
connectAttr "R_Shoulder_JNT_parentConstraint1.ctz" "R_Shoulder_JNT.tz";
connectAttr "R_Shoulder_JNT_parentConstraint1.crx" "R_Shoulder_JNT.rx";
connectAttr "R_Shoulder_JNT_parentConstraint1.cry" "R_Shoulder_JNT.ry";
connectAttr "R_Shoulder_JNT_parentConstraint1.crz" "R_Shoulder_JNT.rz";
connectAttr "R_Shoulder_JNT.s" "R_Elbow_JNT.is";
connectAttr "R_Elbow_JNT_parentConstraint1.ctx" "R_Elbow_JNT.tx";
connectAttr "R_Elbow_JNT_parentConstraint1.cty" "R_Elbow_JNT.ty";
connectAttr "R_Elbow_JNT_parentConstraint1.ctz" "R_Elbow_JNT.tz";
connectAttr "R_Elbow_JNT_parentConstraint1.crx" "R_Elbow_JNT.rx";
connectAttr "R_Elbow_JNT_parentConstraint1.cry" "R_Elbow_JNT.ry";
connectAttr "R_Elbow_JNT_parentConstraint1.crz" "R_Elbow_JNT.rz";
connectAttr "R_Elbow_JNT.s" "R_Wrist_JNT.is";
connectAttr "R_Wrist_JNT_parentConstraint1.ctx" "R_Wrist_JNT.tx";
connectAttr "R_Wrist_JNT_parentConstraint1.cty" "R_Wrist_JNT.ty";
connectAttr "R_Wrist_JNT_parentConstraint1.ctz" "R_Wrist_JNT.tz";
connectAttr "R_Wrist_JNT_parentConstraint1.crx" "R_Wrist_JNT.rx";
connectAttr "R_Wrist_JNT_parentConstraint1.cry" "R_Wrist_JNT.ry";
connectAttr "R_Wrist_JNT_parentConstraint1.crz" "R_Wrist_JNT.rz";
connectAttr "R_Wrist_JNT.s" "R_Finger_JNT.is";
connectAttr "R_Finger_JNT_parentConstraint1.ctx" "R_Finger_JNT.tx";
connectAttr "R_Finger_JNT_parentConstraint1.cty" "R_Finger_JNT.ty";
connectAttr "R_Finger_JNT_parentConstraint1.ctz" "R_Finger_JNT.tz";
connectAttr "R_Finger_JNT_parentConstraint1.crx" "R_Finger_JNT.rx";
connectAttr "R_Finger_JNT_parentConstraint1.cry" "R_Finger_JNT.ry";
connectAttr "R_Finger_JNT_parentConstraint1.crz" "R_Finger_JNT.rz";
connectAttr "R_Finger_JNT.s" "R_ArmEnd_JNT.is";
connectAttr "R_Finger_JNT.ro" "R_Finger_JNT_parentConstraint1.cro";
connectAttr "R_Finger_JNT.pim" "R_Finger_JNT_parentConstraint1.cpim";
connectAttr "R_Finger_JNT.rp" "R_Finger_JNT_parentConstraint1.crp";
connectAttr "R_Finger_JNT.rpt" "R_Finger_JNT_parentConstraint1.crt";
connectAttr "R_Finger_JNT.jo" "R_Finger_JNT_parentConstraint1.cjo";
connectAttr "R_Finger_CTL.t" "R_Finger_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Finger_CTL.rp" "R_Finger_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Finger_CTL.rpt" "R_Finger_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Finger_CTL.r" "R_Finger_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Finger_CTL.ro" "R_Finger_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Finger_CTL.s" "R_Finger_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Finger_CTL.pm" "R_Finger_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Finger_JNT_parentConstraint1.w0" "R_Finger_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Wrist_JNT.ro" "R_Wrist_JNT_parentConstraint1.cro";
connectAttr "R_Wrist_JNT.pim" "R_Wrist_JNT_parentConstraint1.cpim";
connectAttr "R_Wrist_JNT.rp" "R_Wrist_JNT_parentConstraint1.crp";
connectAttr "R_Wrist_JNT.rpt" "R_Wrist_JNT_parentConstraint1.crt";
connectAttr "R_Wrist_JNT.jo" "R_Wrist_JNT_parentConstraint1.cjo";
connectAttr "R_Wrist_CTL.t" "R_Wrist_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Wrist_CTL.rp" "R_Wrist_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Wrist_CTL.rpt" "R_Wrist_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Wrist_CTL.r" "R_Wrist_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Wrist_CTL.ro" "R_Wrist_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Wrist_CTL.s" "R_Wrist_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Wrist_CTL.pm" "R_Wrist_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Wrist_JNT_parentConstraint1.w0" "R_Wrist_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Elbow_JNT.ro" "R_Elbow_JNT_parentConstraint1.cro";
connectAttr "R_Elbow_JNT.pim" "R_Elbow_JNT_parentConstraint1.cpim";
connectAttr "R_Elbow_JNT.rp" "R_Elbow_JNT_parentConstraint1.crp";
connectAttr "R_Elbow_JNT.rpt" "R_Elbow_JNT_parentConstraint1.crt";
connectAttr "R_Elbow_JNT.jo" "R_Elbow_JNT_parentConstraint1.cjo";
connectAttr "R_Elbow_CTL.t" "R_Elbow_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Elbow_CTL.rp" "R_Elbow_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Elbow_CTL.rpt" "R_Elbow_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Elbow_CTL.r" "R_Elbow_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Elbow_CTL.ro" "R_Elbow_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Elbow_CTL.s" "R_Elbow_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Elbow_CTL.pm" "R_Elbow_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Elbow_JNT_parentConstraint1.w0" "R_Elbow_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Shoulder_JNT.ro" "R_Shoulder_JNT_parentConstraint1.cro";
connectAttr "R_Shoulder_JNT.pim" "R_Shoulder_JNT_parentConstraint1.cpim";
connectAttr "R_Shoulder_JNT.rp" "R_Shoulder_JNT_parentConstraint1.crp";
connectAttr "R_Shoulder_JNT.rpt" "R_Shoulder_JNT_parentConstraint1.crt";
connectAttr "R_Shoulder_JNT.jo" "R_Shoulder_JNT_parentConstraint1.cjo";
connectAttr "R_Shoulder_CTL.t" "R_Shoulder_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Shoulder_CTL.rp" "R_Shoulder_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Shoulder_CTL.rpt" "R_Shoulder_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Shoulder_CTL.r" "R_Shoulder_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Shoulder_CTL.ro" "R_Shoulder_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Shoulder_CTL.s" "R_Shoulder_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Shoulder_CTL.pm" "R_Shoulder_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Shoulder_JNT_parentConstraint1.w0" "R_Shoulder_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Clavicle_JNT.ro" "R_Clavicle_JNT_parentConstraint1.cro";
connectAttr "R_Clavicle_JNT.pim" "R_Clavicle_JNT_parentConstraint1.cpim";
connectAttr "R_Clavicle_JNT.rp" "R_Clavicle_JNT_parentConstraint1.crp";
connectAttr "R_Clavicle_JNT.rpt" "R_Clavicle_JNT_parentConstraint1.crt";
connectAttr "R_Clavicle_JNT.jo" "R_Clavicle_JNT_parentConstraint1.cjo";
connectAttr "R_Clavicle_CTL.t" "R_Clavicle_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Clavicle_CTL.rp" "R_Clavicle_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Clavicle_CTL.rpt" "R_Clavicle_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Clavicle_CTL.r" "R_Clavicle_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Clavicle_CTL.ro" "R_Clavicle_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Clavicle_CTL.s" "R_Clavicle_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Clavicle_CTL.pm" "R_Clavicle_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Clavicle_JNT_parentConstraint1.w0" "R_Clavicle_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine02_JNT.ro" "Spine02_JNT_parentConstraint1.cro";
connectAttr "Spine02_JNT.pim" "Spine02_JNT_parentConstraint1.cpim";
connectAttr "Spine02_JNT.rp" "Spine02_JNT_parentConstraint1.crp";
connectAttr "Spine02_JNT.rpt" "Spine02_JNT_parentConstraint1.crt";
connectAttr "Spine02_JNT.jo" "Spine02_JNT_parentConstraint1.cjo";
connectAttr "Spine02_CTL.t" "Spine02_JNT_parentConstraint1.tg[0].tt";
connectAttr "Spine02_CTL.rp" "Spine02_JNT_parentConstraint1.tg[0].trp";
connectAttr "Spine02_CTL.rpt" "Spine02_JNT_parentConstraint1.tg[0].trt";
connectAttr "Spine02_CTL.r" "Spine02_JNT_parentConstraint1.tg[0].tr";
connectAttr "Spine02_CTL.ro" "Spine02_JNT_parentConstraint1.tg[0].tro";
connectAttr "Spine02_CTL.s" "Spine02_JNT_parentConstraint1.tg[0].ts";
connectAttr "Spine02_CTL.pm" "Spine02_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Spine02_JNT_parentConstraint1.w0" "Spine02_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine01_JNT.ro" "Spine01_JNT_parentConstraint1.cro";
connectAttr "Spine01_JNT.pim" "Spine01_JNT_parentConstraint1.cpim";
connectAttr "Spine01_JNT.rp" "Spine01_JNT_parentConstraint1.crp";
connectAttr "Spine01_JNT.rpt" "Spine01_JNT_parentConstraint1.crt";
connectAttr "Spine01_JNT.jo" "Spine01_JNT_parentConstraint1.cjo";
connectAttr "Spine01_CTL.t" "Spine01_JNT_parentConstraint1.tg[0].tt";
connectAttr "Spine01_CTL.rp" "Spine01_JNT_parentConstraint1.tg[0].trp";
connectAttr "Spine01_CTL.rpt" "Spine01_JNT_parentConstraint1.tg[0].trt";
connectAttr "Spine01_CTL.r" "Spine01_JNT_parentConstraint1.tg[0].tr";
connectAttr "Spine01_CTL.ro" "Spine01_JNT_parentConstraint1.tg[0].tro";
connectAttr "Spine01_CTL.s" "Spine01_JNT_parentConstraint1.tg[0].ts";
connectAttr "Spine01_CTL.pm" "Spine01_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Spine01_JNT_parentConstraint1.w0" "Spine01_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "L_Femur_JNT.is";
connectAttr "L_Femur_JNT_parentConstraint1.ctx" "L_Femur_JNT.tx";
connectAttr "L_Femur_JNT_parentConstraint1.cty" "L_Femur_JNT.ty";
connectAttr "L_Femur_JNT_parentConstraint1.ctz" "L_Femur_JNT.tz";
connectAttr "L_Femur_JNT_parentConstraint1.crx" "L_Femur_JNT.rx";
connectAttr "L_Femur_JNT_parentConstraint1.cry" "L_Femur_JNT.ry";
connectAttr "L_Femur_JNT_parentConstraint1.crz" "L_Femur_JNT.rz";
connectAttr "L_Femur_JNT.s" "L_Tibia_JNT.is";
connectAttr "L_Tibia_JNT_parentConstraint1.ctx" "L_Tibia_JNT.tx";
connectAttr "L_Tibia_JNT_parentConstraint1.cty" "L_Tibia_JNT.ty";
connectAttr "L_Tibia_JNT_parentConstraint1.ctz" "L_Tibia_JNT.tz";
connectAttr "L_Tibia_JNT_parentConstraint1.crx" "L_Tibia_JNT.rx";
connectAttr "L_Tibia_JNT_parentConstraint1.cry" "L_Tibia_JNT.ry";
connectAttr "L_Tibia_JNT_parentConstraint1.crz" "L_Tibia_JNT.rz";
connectAttr "L_Tibia_JNT.s" "L_Ankle_JNT.is";
connectAttr "L_Ankle_JNT_pointConstraint1.ctx" "L_Ankle_JNT.tx";
connectAttr "L_Ankle_JNT_pointConstraint1.cty" "L_Ankle_JNT.ty";
connectAttr "L_Ankle_JNT_pointConstraint1.ctz" "L_Ankle_JNT.tz";
connectAttr "L_Ankle_JNT_orientConstraint1.crx" "L_Ankle_JNT.rx";
connectAttr "L_Ankle_JNT_orientConstraint1.cry" "L_Ankle_JNT.ry";
connectAttr "L_Ankle_JNT_orientConstraint1.crz" "L_Ankle_JNT.rz";
connectAttr "L_Ankle_JNT.s" "L_Ball_JNT.is";
connectAttr "L_Ball_JNT_orientConstraint1.crx" "L_Ball_JNT.rx";
connectAttr "L_Ball_JNT_orientConstraint1.cry" "L_Ball_JNT.ry";
connectAttr "L_Ball_JNT_orientConstraint1.crz" "L_Ball_JNT.rz";
connectAttr "L_Ball_JNT.s" "L_ToeEnd_JNT.is";
connectAttr "L_Ball_JNT.ro" "L_Ball_JNT_orientConstraint1.cro";
connectAttr "L_Ball_JNT.pim" "L_Ball_JNT_orientConstraint1.cpim";
connectAttr "L_Ball_JNT.jo" "L_Ball_JNT_orientConstraint1.cjo";
connectAttr "L_Ball_JNT.is" "L_Ball_JNT_orientConstraint1.is";
connectAttr "L_Tip_CTL.r" "L_Ball_JNT_orientConstraint1.tg[0].tr";
connectAttr "L_Tip_CTL.ro" "L_Ball_JNT_orientConstraint1.tg[0].tro";
connectAttr "L_Tip_CTL.pm" "L_Ball_JNT_orientConstraint1.tg[0].tpm";
connectAttr "L_Ball_JNT_orientConstraint1.w0" "L_Ball_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "L_Ankle_JNT.pim" "L_Ankle_JNT_pointConstraint1.cpim";
connectAttr "L_Ankle_JNT.rp" "L_Ankle_JNT_pointConstraint1.crp";
connectAttr "L_Ankle_JNT.rpt" "L_Ankle_JNT_pointConstraint1.crt";
connectAttr "L_AnkleIK_JNT.t" "L_Ankle_JNT_pointConstraint1.tg[0].tt";
connectAttr "L_AnkleIK_JNT.rp" "L_Ankle_JNT_pointConstraint1.tg[0].trp";
connectAttr "L_AnkleIK_JNT.rpt" "L_Ankle_JNT_pointConstraint1.tg[0].trt";
connectAttr "L_AnkleIK_JNT.pm" "L_Ankle_JNT_pointConstraint1.tg[0].tpm";
connectAttr "L_Ankle_JNT_pointConstraint1.w0" "L_Ankle_JNT_pointConstraint1.tg[0].tw"
		;
connectAttr "L_Ankle_JNT.ro" "L_Ankle_JNT_orientConstraint1.cro";
connectAttr "L_Ankle_JNT.pim" "L_Ankle_JNT_orientConstraint1.cpim";
connectAttr "L_Ankle_JNT.jo" "L_Ankle_JNT_orientConstraint1.cjo";
connectAttr "L_Ankle_JNT.is" "L_Ankle_JNT_orientConstraint1.is";
connectAttr "|Master_GRP|Master_CTL|L_Foot_GRP|L_Foot_CTL|L_HeelLift_GRP|L_HeelLift_CTL|L_ToeLift_GRP|L_ToeLift_CTL|L_Ball_GRP|L_Ball_CTL|AnkleRotation_GRP.r" "L_Ankle_JNT_orientConstraint1.tg[0].tr"
		;
connectAttr "|Master_GRP|Master_CTL|L_Foot_GRP|L_Foot_CTL|L_HeelLift_GRP|L_HeelLift_CTL|L_ToeLift_GRP|L_ToeLift_CTL|L_Ball_GRP|L_Ball_CTL|AnkleRotation_GRP.ro" "L_Ankle_JNT_orientConstraint1.tg[0].tro"
		;
connectAttr "|Master_GRP|Master_CTL|L_Foot_GRP|L_Foot_CTL|L_HeelLift_GRP|L_HeelLift_CTL|L_ToeLift_GRP|L_ToeLift_CTL|L_Ball_GRP|L_Ball_CTL|AnkleRotation_GRP.pm" "L_Ankle_JNT_orientConstraint1.tg[0].tpm"
		;
connectAttr "L_Ankle_JNT_orientConstraint1.w0" "L_Ankle_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "L_Tibia_JNT.ro" "L_Tibia_JNT_parentConstraint1.cro";
connectAttr "L_Tibia_JNT.pim" "L_Tibia_JNT_parentConstraint1.cpim";
connectAttr "L_Tibia_JNT.rp" "L_Tibia_JNT_parentConstraint1.crp";
connectAttr "L_Tibia_JNT.rpt" "L_Tibia_JNT_parentConstraint1.crt";
connectAttr "L_Tibia_JNT.jo" "L_Tibia_JNT_parentConstraint1.cjo";
connectAttr "L_TibiaIK_JNT.t" "L_Tibia_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_TibiaIK_JNT.rp" "L_Tibia_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_TibiaIK_JNT.rpt" "L_Tibia_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_TibiaIK_JNT.r" "L_Tibia_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_TibiaIK_JNT.ro" "L_Tibia_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_TibiaIK_JNT.s" "L_Tibia_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_TibiaIK_JNT.pm" "L_Tibia_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_TibiaIK_JNT.jo" "L_Tibia_JNT_parentConstraint1.tg[0].tjo";
connectAttr "L_TibiaIK_JNT.ssc" "L_Tibia_JNT_parentConstraint1.tg[0].tsc";
connectAttr "L_TibiaIK_JNT.is" "L_Tibia_JNT_parentConstraint1.tg[0].tis";
connectAttr "L_Tibia_JNT_parentConstraint1.w0" "L_Tibia_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Femur_JNT.ro" "L_Femur_JNT_parentConstraint1.cro";
connectAttr "L_Femur_JNT.pim" "L_Femur_JNT_parentConstraint1.cpim";
connectAttr "L_Femur_JNT.rp" "L_Femur_JNT_parentConstraint1.crp";
connectAttr "L_Femur_JNT.rpt" "L_Femur_JNT_parentConstraint1.crt";
connectAttr "L_Femur_JNT.jo" "L_Femur_JNT_parentConstraint1.cjo";
connectAttr "L_FemurIK_JNT.t" "L_Femur_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_FemurIK_JNT.rp" "L_Femur_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_FemurIK_JNT.rpt" "L_Femur_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_FemurIK_JNT.r" "L_Femur_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_FemurIK_JNT.ro" "L_Femur_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_FemurIK_JNT.s" "L_Femur_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_FemurIK_JNT.pm" "L_Femur_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_FemurIK_JNT.jo" "L_Femur_JNT_parentConstraint1.tg[0].tjo";
connectAttr "L_FemurIK_JNT.ssc" "L_Femur_JNT_parentConstraint1.tg[0].tsc";
connectAttr "L_FemurIK_JNT.is" "L_Femur_JNT_parentConstraint1.tg[0].tis";
connectAttr "L_Femur_JNT_parentConstraint1.w0" "L_Femur_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "R_Femur_JNT.is";
connectAttr "R_Femur_JNT_parentConstraint1.ctx" "R_Femur_JNT.tx";
connectAttr "R_Femur_JNT_parentConstraint1.cty" "R_Femur_JNT.ty";
connectAttr "R_Femur_JNT_parentConstraint1.ctz" "R_Femur_JNT.tz";
connectAttr "R_Femur_JNT_parentConstraint1.crx" "R_Femur_JNT.rx";
connectAttr "R_Femur_JNT_parentConstraint1.cry" "R_Femur_JNT.ry";
connectAttr "R_Femur_JNT_parentConstraint1.crz" "R_Femur_JNT.rz";
connectAttr "R_Femur_JNT.s" "R_Tibia_JNT.is";
connectAttr "R_Tibia_JNT_parentConstraint1.ctx" "R_Tibia_JNT.tx";
connectAttr "R_Tibia_JNT_parentConstraint1.cty" "R_Tibia_JNT.ty";
connectAttr "R_Tibia_JNT_parentConstraint1.ctz" "R_Tibia_JNT.tz";
connectAttr "R_Tibia_JNT_parentConstraint1.crx" "R_Tibia_JNT.rx";
connectAttr "R_Tibia_JNT_parentConstraint1.cry" "R_Tibia_JNT.ry";
connectAttr "R_Tibia_JNT_parentConstraint1.crz" "R_Tibia_JNT.rz";
connectAttr "R_Tibia_JNT.s" "R_Ankle_JNT.is";
connectAttr "R_Ankle_JNT_pointConstraint1.ctx" "R_Ankle_JNT.tx";
connectAttr "R_Ankle_JNT_pointConstraint1.cty" "R_Ankle_JNT.ty";
connectAttr "R_Ankle_JNT_pointConstraint1.ctz" "R_Ankle_JNT.tz";
connectAttr "R_Ankle_JNT_orientConstraint1.crx" "R_Ankle_JNT.rx";
connectAttr "R_Ankle_JNT_orientConstraint1.cry" "R_Ankle_JNT.ry";
connectAttr "R_Ankle_JNT_orientConstraint1.crz" "R_Ankle_JNT.rz";
connectAttr "R_Ankle_JNT.s" "R_Ball_JNT.is";
connectAttr "R_Ball_JNT_orientConstraint1.crx" "R_Ball_JNT.rx";
connectAttr "R_Ball_JNT_orientConstraint1.cry" "R_Ball_JNT.ry";
connectAttr "R_Ball_JNT_orientConstraint1.crz" "R_Ball_JNT.rz";
connectAttr "R_Ball_JNT.s" "R_ToeEnd_JNT.is";
connectAttr "R_Ball_JNT.ro" "R_Ball_JNT_orientConstraint1.cro";
connectAttr "R_Ball_JNT.pim" "R_Ball_JNT_orientConstraint1.cpim";
connectAttr "R_Ball_JNT.jo" "R_Ball_JNT_orientConstraint1.cjo";
connectAttr "R_Ball_JNT.is" "R_Ball_JNT_orientConstraint1.is";
connectAttr "R_Tip_CTL.r" "R_Ball_JNT_orientConstraint1.tg[0].tr";
connectAttr "R_Tip_CTL.ro" "R_Ball_JNT_orientConstraint1.tg[0].tro";
connectAttr "R_Tip_CTL.pm" "R_Ball_JNT_orientConstraint1.tg[0].tpm";
connectAttr "R_Ball_JNT_orientConstraint1.w0" "R_Ball_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "R_Ankle_JNT.pim" "R_Ankle_JNT_pointConstraint1.cpim";
connectAttr "R_Ankle_JNT.rp" "R_Ankle_JNT_pointConstraint1.crp";
connectAttr "R_Ankle_JNT.rpt" "R_Ankle_JNT_pointConstraint1.crt";
connectAttr "R_AnkleIK_JNT.t" "R_Ankle_JNT_pointConstraint1.tg[0].tt";
connectAttr "R_AnkleIK_JNT.rp" "R_Ankle_JNT_pointConstraint1.tg[0].trp";
connectAttr "R_AnkleIK_JNT.rpt" "R_Ankle_JNT_pointConstraint1.tg[0].trt";
connectAttr "R_AnkleIK_JNT.pm" "R_Ankle_JNT_pointConstraint1.tg[0].tpm";
connectAttr "R_Ankle_JNT_pointConstraint1.w0" "R_Ankle_JNT_pointConstraint1.tg[0].tw"
		;
connectAttr "R_Ankle_JNT.ro" "R_Ankle_JNT_orientConstraint1.cro";
connectAttr "R_Ankle_JNT.pim" "R_Ankle_JNT_orientConstraint1.cpim";
connectAttr "R_Ankle_JNT.jo" "R_Ankle_JNT_orientConstraint1.cjo";
connectAttr "R_Ankle_JNT.is" "R_Ankle_JNT_orientConstraint1.is";
connectAttr "|Master_GRP|Master_CTL|R_Foot_GRP|R_Foot_CTL|R_HeelLift_GRP|R_HeelLift_CTL|R_ToeLift_GRP|R_ToeLift_CTL|R_Ball_GRP|R_Ball_CTL|AnkleRotation_GRP.r" "R_Ankle_JNT_orientConstraint1.tg[0].tr"
		;
connectAttr "|Master_GRP|Master_CTL|R_Foot_GRP|R_Foot_CTL|R_HeelLift_GRP|R_HeelLift_CTL|R_ToeLift_GRP|R_ToeLift_CTL|R_Ball_GRP|R_Ball_CTL|AnkleRotation_GRP.ro" "R_Ankle_JNT_orientConstraint1.tg[0].tro"
		;
connectAttr "|Master_GRP|Master_CTL|R_Foot_GRP|R_Foot_CTL|R_HeelLift_GRP|R_HeelLift_CTL|R_ToeLift_GRP|R_ToeLift_CTL|R_Ball_GRP|R_Ball_CTL|AnkleRotation_GRP.pm" "R_Ankle_JNT_orientConstraint1.tg[0].tpm"
		;
connectAttr "R_Ankle_JNT_orientConstraint1.w0" "R_Ankle_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "R_Tibia_JNT.ro" "R_Tibia_JNT_parentConstraint1.cro";
connectAttr "R_Tibia_JNT.pim" "R_Tibia_JNT_parentConstraint1.cpim";
connectAttr "R_Tibia_JNT.rp" "R_Tibia_JNT_parentConstraint1.crp";
connectAttr "R_Tibia_JNT.rpt" "R_Tibia_JNT_parentConstraint1.crt";
connectAttr "R_Tibia_JNT.jo" "R_Tibia_JNT_parentConstraint1.cjo";
connectAttr "R_TibiaIK_JNT.t" "R_Tibia_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_TibiaIK_JNT.rp" "R_Tibia_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_TibiaIK_JNT.rpt" "R_Tibia_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_TibiaIK_JNT.r" "R_Tibia_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_TibiaIK_JNT.ro" "R_Tibia_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_TibiaIK_JNT.s" "R_Tibia_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_TibiaIK_JNT.pm" "R_Tibia_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_TibiaIK_JNT.jo" "R_Tibia_JNT_parentConstraint1.tg[0].tjo";
connectAttr "R_TibiaIK_JNT.ssc" "R_Tibia_JNT_parentConstraint1.tg[0].tsc";
connectAttr "R_TibiaIK_JNT.is" "R_Tibia_JNT_parentConstraint1.tg[0].tis";
connectAttr "R_Tibia_JNT_parentConstraint1.w0" "R_Tibia_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Femur_JNT.ro" "R_Femur_JNT_parentConstraint1.cro";
connectAttr "R_Femur_JNT.pim" "R_Femur_JNT_parentConstraint1.cpim";
connectAttr "R_Femur_JNT.rp" "R_Femur_JNT_parentConstraint1.crp";
connectAttr "R_Femur_JNT.rpt" "R_Femur_JNT_parentConstraint1.crt";
connectAttr "R_Femur_JNT.jo" "R_Femur_JNT_parentConstraint1.cjo";
connectAttr "R_FemurIK_JNT.t" "R_Femur_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_FemurIK_JNT.rp" "R_Femur_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_FemurIK_JNT.rpt" "R_Femur_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_FemurIK_JNT.r" "R_Femur_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_FemurIK_JNT.ro" "R_Femur_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_FemurIK_JNT.s" "R_Femur_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_FemurIK_JNT.pm" "R_Femur_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_FemurIK_JNT.jo" "R_Femur_JNT_parentConstraint1.tg[0].tjo";
connectAttr "R_FemurIK_JNT.ssc" "R_Femur_JNT_parentConstraint1.tg[0].tsc";
connectAttr "R_FemurIK_JNT.is" "R_Femur_JNT_parentConstraint1.tg[0].tis";
connectAttr "R_Femur_JNT_parentConstraint1.w0" "R_Femur_JNT_parentConstraint1.tg[0].tw"
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
connectAttr "L_FemurIK_JNT_pointConstraint1.ctx" "L_FemurIK_JNT.tx";
connectAttr "L_FemurIK_JNT_pointConstraint1.cty" "L_FemurIK_JNT.ty";
connectAttr "L_FemurIK_JNT_pointConstraint1.ctz" "L_FemurIK_JNT.tz";
connectAttr "L_FemurIK_JNT.s" "L_TibiaIK_JNT.is";
connectAttr "L_TibiaIK_JNT.s" "L_AnkleIK_JNT.is";
connectAttr "L_AnkleIK_JNT.tx" "effector1.tx";
connectAttr "L_AnkleIK_JNT.ty" "effector1.ty";
connectAttr "L_AnkleIK_JNT.tz" "effector1.tz";
connectAttr "L_AnkleIK_JNT.opm" "effector1.opm";
connectAttr "L_FemurIK_JNT.pim" "L_FemurIK_JNT_pointConstraint1.cpim";
connectAttr "L_FemurIK_JNT.rp" "L_FemurIK_JNT_pointConstraint1.crp";
connectAttr "L_FemurIK_JNT.rpt" "L_FemurIK_JNT_pointConstraint1.crt";
connectAttr "Base_JNT.t" "L_FemurIK_JNT_pointConstraint1.tg[0].tt";
connectAttr "Base_JNT.rp" "L_FemurIK_JNT_pointConstraint1.tg[0].trp";
connectAttr "Base_JNT.rpt" "L_FemurIK_JNT_pointConstraint1.tg[0].trt";
connectAttr "Base_JNT.pm" "L_FemurIK_JNT_pointConstraint1.tg[0].tpm";
connectAttr "L_FemurIK_JNT_pointConstraint1.w0" "L_FemurIK_JNT_pointConstraint1.tg[0].tw"
		;
connectAttr "R_FemurIK_JNT_pointConstraint1.ctx" "R_FemurIK_JNT.tx";
connectAttr "R_FemurIK_JNT_pointConstraint1.cty" "R_FemurIK_JNT.ty";
connectAttr "R_FemurIK_JNT_pointConstraint1.ctz" "R_FemurIK_JNT.tz";
connectAttr "R_FemurIK_JNT.s" "R_TibiaIK_JNT.is";
connectAttr "R_TibiaIK_JNT.s" "R_AnkleIK_JNT.is";
connectAttr "R_AnkleIK_JNT.tx" "effector2.tx";
connectAttr "R_AnkleIK_JNT.ty" "effector2.ty";
connectAttr "R_AnkleIK_JNT.tz" "effector2.tz";
connectAttr "R_AnkleIK_JNT.opm" "effector2.opm";
connectAttr "R_FemurIK_JNT.pim" "R_FemurIK_JNT_pointConstraint1.cpim";
connectAttr "R_FemurIK_JNT.rp" "R_FemurIK_JNT_pointConstraint1.crp";
connectAttr "R_FemurIK_JNT.rpt" "R_FemurIK_JNT_pointConstraint1.crt";
connectAttr "Base_JNT.t" "R_FemurIK_JNT_pointConstraint1.tg[0].tt";
connectAttr "Base_JNT.rp" "R_FemurIK_JNT_pointConstraint1.tg[0].trp";
connectAttr "Base_JNT.rpt" "R_FemurIK_JNT_pointConstraint1.tg[0].trt";
connectAttr "Base_JNT.pm" "R_FemurIK_JNT_pointConstraint1.tg[0].tpm";
connectAttr "R_FemurIK_JNT_pointConstraint1.w0" "R_FemurIK_JNT_pointConstraint1.tg[0].tw"
		;
connectAttr "Sword_JNT_parentConstraint1.ctx" "Sword_JNT.tx";
connectAttr "Sword_JNT_parentConstraint1.cty" "Sword_JNT.ty";
connectAttr "Sword_JNT_parentConstraint1.ctz" "Sword_JNT.tz";
connectAttr "Sword_JNT_parentConstraint1.crx" "Sword_JNT.rx";
connectAttr "Sword_JNT_parentConstraint1.cry" "Sword_JNT.ry";
connectAttr "Sword_JNT_parentConstraint1.crz" "Sword_JNT.rz";
connectAttr "Sword_JNT.ro" "Sword_JNT_parentConstraint1.cro";
connectAttr "Sword_JNT.pim" "Sword_JNT_parentConstraint1.cpim";
connectAttr "Sword_JNT.rp" "Sword_JNT_parentConstraint1.crp";
connectAttr "Sword_JNT.rpt" "Sword_JNT_parentConstraint1.crt";
connectAttr "Sword_JNT.jo" "Sword_JNT_parentConstraint1.cjo";
connectAttr "R_Finger_JNT.t" "Sword_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Finger_JNT.rp" "Sword_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Finger_JNT.rpt" "Sword_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Finger_JNT.r" "Sword_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Finger_JNT.ro" "Sword_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Finger_JNT.s" "Sword_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Finger_JNT.pm" "Sword_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Finger_JNT.jo" "Sword_JNT_parentConstraint1.tg[0].tjo";
connectAttr "R_Finger_JNT.ssc" "Sword_JNT_parentConstraint1.tg[0].tsc";
connectAttr "R_Finger_JNT.is" "Sword_JNT_parentConstraint1.tg[0].tis";
connectAttr "Sword_JNT_parentConstraint1.w0" "Sword_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "L_FemurIK_JNT.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "ikHandle1.pvz";
connectAttr "ikHandle1.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "L_FemurIK_JNT.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "L_FemurIK_JNT.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "L_Leg_POL.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "L_Leg_POL.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "L_Leg_POL.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "L_Leg_POL.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_FemurIK_JNT.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikRPsolver.msg" "ikHandle2.hsv";
connectAttr "ikHandle2_poleVectorConstraint1.ctx" "ikHandle2.pvx";
connectAttr "ikHandle2_poleVectorConstraint1.cty" "ikHandle2.pvy";
connectAttr "ikHandle2_poleVectorConstraint1.ctz" "ikHandle2.pvz";
connectAttr "ikHandle2.pim" "ikHandle2_poleVectorConstraint1.cpim";
connectAttr "R_FemurIK_JNT.pm" "ikHandle2_poleVectorConstraint1.ps";
connectAttr "R_FemurIK_JNT.t" "ikHandle2_poleVectorConstraint1.crp";
connectAttr "R_Leg_POL.t" "ikHandle2_poleVectorConstraint1.tg[0].tt";
connectAttr "R_Leg_POL.rp" "ikHandle2_poleVectorConstraint1.tg[0].trp";
connectAttr "R_Leg_POL.rpt" "ikHandle2_poleVectorConstraint1.tg[0].trt";
connectAttr "R_Leg_POL.pm" "ikHandle2_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle2_poleVectorConstraint1.w0" "ikHandle2_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Geometry.di" "Main_MOD_MASTER:MainC_GEO.do";
connectAttr "skinCluster1.og[0]" "MainC_GEOShapeDeformed.i";
connectAttr "skinCluster2.og[0]" "Sword_GEOShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Main_MOD_MASTER:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Main_MOD_MASTER:lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Main_MOD_MASTER:lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Main_MOD_MASTER:blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Main_MOD_MASTER:lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Main_MOD_MASTER:phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Main_MOD_MASTER:standardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Main_MOD_MASTER:standardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Main_MOD_MASTER:lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Sword_MDLSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GrapplingHook_MDLSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Main_MOD_MASTER:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Main_MOD_MASTER:lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Main_MOD_MASTER:lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Main_MOD_MASTER:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Main_MOD_MASTER:lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Main_MOD_MASTER:phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Main_MOD_MASTER:standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Main_MOD_MASTER:standardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Main_MOD_MASTER:lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Sword_MDLSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GrapplingHook_MDLSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "layerManager.dli[1]" "Geometry.id";
connectAttr "Main_MOD_MASTER:MainC_GEOShape.o" "skinCluster1.orggeom[0]";
connectAttr "Main_MOD_MASTER:MainC_GEOShape.w" "skinCluster1.ip[0].ig";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Base_JNT.wm" "skinCluster1.ma[0]";
connectAttr "Head_JNT.wm" "skinCluster1.ma[3]";
connectAttr "HeadEnd_JNT.wm" "skinCluster1.ma[4]";
connectAttr "L_Clavicle_JNT.wm" "skinCluster1.ma[5]";
connectAttr "L_Shoulder_JNT.wm" "skinCluster1.ma[6]";
connectAttr "L_Elbow_JNT.wm" "skinCluster1.ma[7]";
connectAttr "L_Wrist_JNT.wm" "skinCluster1.ma[8]";
connectAttr "L_Finger_JNT.wm" "skinCluster1.ma[9]";
connectAttr "L_ArmEnd_JNT.wm" "skinCluster1.ma[10]";
connectAttr "R_Clavicle_JNT.wm" "skinCluster1.ma[11]";
connectAttr "R_Shoulder_JNT.wm" "skinCluster1.ma[12]";
connectAttr "R_Elbow_JNT.wm" "skinCluster1.ma[13]";
connectAttr "R_Wrist_JNT.wm" "skinCluster1.ma[14]";
connectAttr "R_Finger_JNT.wm" "skinCluster1.ma[15]";
connectAttr "R_ArmEnd_JNT.wm" "skinCluster1.ma[16]";
connectAttr "L_Femur_JNT.wm" "skinCluster1.ma[17]";
connectAttr "L_Tibia_JNT.wm" "skinCluster1.ma[18]";
connectAttr "L_Ankle_JNT.wm" "skinCluster1.ma[19]";
connectAttr "L_Ball_JNT.wm" "skinCluster1.ma[20]";
connectAttr "L_ToeEnd_JNT.wm" "skinCluster1.ma[21]";
connectAttr "R_Femur_JNT.wm" "skinCluster1.ma[22]";
connectAttr "R_Tibia_JNT.wm" "skinCluster1.ma[23]";
connectAttr "R_Ankle_JNT.wm" "skinCluster1.ma[24]";
connectAttr "R_Ball_JNT.wm" "skinCluster1.ma[25]";
connectAttr "R_ToeEnd_JNT.wm" "skinCluster1.ma[26]";
connectAttr "Spine01_JNT.wm" "skinCluster1.ma[27]";
connectAttr "Spine02_JNT.wm" "skinCluster1.ma[28]";
connectAttr "Base_JNT.liw" "skinCluster1.lw[0]";
connectAttr "Head_JNT.liw" "skinCluster1.lw[3]";
connectAttr "HeadEnd_JNT.liw" "skinCluster1.lw[4]";
connectAttr "L_Clavicle_JNT.liw" "skinCluster1.lw[5]";
connectAttr "L_Shoulder_JNT.liw" "skinCluster1.lw[6]";
connectAttr "L_Elbow_JNT.liw" "skinCluster1.lw[7]";
connectAttr "L_Wrist_JNT.liw" "skinCluster1.lw[8]";
connectAttr "L_Finger_JNT.liw" "skinCluster1.lw[9]";
connectAttr "L_ArmEnd_JNT.liw" "skinCluster1.lw[10]";
connectAttr "R_Clavicle_JNT.liw" "skinCluster1.lw[11]";
connectAttr "R_Shoulder_JNT.liw" "skinCluster1.lw[12]";
connectAttr "R_Elbow_JNT.liw" "skinCluster1.lw[13]";
connectAttr "R_Wrist_JNT.liw" "skinCluster1.lw[14]";
connectAttr "R_Finger_JNT.liw" "skinCluster1.lw[15]";
connectAttr "R_ArmEnd_JNT.liw" "skinCluster1.lw[16]";
connectAttr "L_Femur_JNT.liw" "skinCluster1.lw[17]";
connectAttr "L_Tibia_JNT.liw" "skinCluster1.lw[18]";
connectAttr "L_Ankle_JNT.liw" "skinCluster1.lw[19]";
connectAttr "L_Ball_JNT.liw" "skinCluster1.lw[20]";
connectAttr "L_ToeEnd_JNT.liw" "skinCluster1.lw[21]";
connectAttr "R_Femur_JNT.liw" "skinCluster1.lw[22]";
connectAttr "R_Tibia_JNT.liw" "skinCluster1.lw[23]";
connectAttr "R_Ankle_JNT.liw" "skinCluster1.lw[24]";
connectAttr "R_Ball_JNT.liw" "skinCluster1.lw[25]";
connectAttr "R_ToeEnd_JNT.liw" "skinCluster1.lw[26]";
connectAttr "Spine01_JNT.liw" "skinCluster1.lw[27]";
connectAttr "Spine02_JNT.liw" "skinCluster1.lw[28]";
connectAttr "Base_JNT.obcc" "skinCluster1.ifcl[0]";
connectAttr "Head_JNT.obcc" "skinCluster1.ifcl[3]";
connectAttr "HeadEnd_JNT.obcc" "skinCluster1.ifcl[4]";
connectAttr "L_Clavicle_JNT.obcc" "skinCluster1.ifcl[5]";
connectAttr "L_Shoulder_JNT.obcc" "skinCluster1.ifcl[6]";
connectAttr "L_Elbow_JNT.obcc" "skinCluster1.ifcl[7]";
connectAttr "L_Wrist_JNT.obcc" "skinCluster1.ifcl[8]";
connectAttr "L_Finger_JNT.obcc" "skinCluster1.ifcl[9]";
connectAttr "L_ArmEnd_JNT.obcc" "skinCluster1.ifcl[10]";
connectAttr "R_Clavicle_JNT.obcc" "skinCluster1.ifcl[11]";
connectAttr "R_Shoulder_JNT.obcc" "skinCluster1.ifcl[12]";
connectAttr "R_Elbow_JNT.obcc" "skinCluster1.ifcl[13]";
connectAttr "R_Wrist_JNT.obcc" "skinCluster1.ifcl[14]";
connectAttr "R_Finger_JNT.obcc" "skinCluster1.ifcl[15]";
connectAttr "R_ArmEnd_JNT.obcc" "skinCluster1.ifcl[16]";
connectAttr "L_Femur_JNT.obcc" "skinCluster1.ifcl[17]";
connectAttr "L_Tibia_JNT.obcc" "skinCluster1.ifcl[18]";
connectAttr "L_Ankle_JNT.obcc" "skinCluster1.ifcl[19]";
connectAttr "L_Ball_JNT.obcc" "skinCluster1.ifcl[20]";
connectAttr "L_ToeEnd_JNT.obcc" "skinCluster1.ifcl[21]";
connectAttr "R_Femur_JNT.obcc" "skinCluster1.ifcl[22]";
connectAttr "R_Tibia_JNT.obcc" "skinCluster1.ifcl[23]";
connectAttr "R_Ankle_JNT.obcc" "skinCluster1.ifcl[24]";
connectAttr "R_Ball_JNT.obcc" "skinCluster1.ifcl[25]";
connectAttr "R_ToeEnd_JNT.obcc" "skinCluster1.ifcl[26]";
connectAttr "Spine01_JNT.obcc" "skinCluster1.ifcl[27]";
connectAttr "Spine02_JNT.obcc" "skinCluster1.ifcl[28]";
connectAttr "Spine02_JNT.msg" "skinCluster1.ptt";
connectAttr "Base_JNT.msg" "bindPose1.m[0]";
connectAttr "Head_JNT.msg" "bindPose1.m[3]";
connectAttr "HeadEnd_JNT.msg" "bindPose1.m[4]";
connectAttr "L_Clavicle_JNT.msg" "bindPose1.m[5]";
connectAttr "L_Shoulder_JNT.msg" "bindPose1.m[6]";
connectAttr "L_Elbow_JNT.msg" "bindPose1.m[7]";
connectAttr "L_Wrist_JNT.msg" "bindPose1.m[8]";
connectAttr "L_Finger_JNT.msg" "bindPose1.m[9]";
connectAttr "L_ArmEnd_JNT.msg" "bindPose1.m[10]";
connectAttr "R_Clavicle_JNT.msg" "bindPose1.m[11]";
connectAttr "R_Shoulder_JNT.msg" "bindPose1.m[12]";
connectAttr "R_Elbow_JNT.msg" "bindPose1.m[13]";
connectAttr "R_Wrist_JNT.msg" "bindPose1.m[14]";
connectAttr "R_Finger_JNT.msg" "bindPose1.m[15]";
connectAttr "R_ArmEnd_JNT.msg" "bindPose1.m[16]";
connectAttr "L_Femur_JNT.msg" "bindPose1.m[17]";
connectAttr "L_Tibia_JNT.msg" "bindPose1.m[18]";
connectAttr "L_Ankle_JNT.msg" "bindPose1.m[19]";
connectAttr "L_Ball_JNT.msg" "bindPose1.m[20]";
connectAttr "L_ToeEnd_JNT.msg" "bindPose1.m[21]";
connectAttr "R_Femur_JNT.msg" "bindPose1.m[22]";
connectAttr "R_Tibia_JNT.msg" "bindPose1.m[23]";
connectAttr "R_Ankle_JNT.msg" "bindPose1.m[24]";
connectAttr "R_Ball_JNT.msg" "bindPose1.m[25]";
connectAttr "R_ToeEnd_JNT.msg" "bindPose1.m[26]";
connectAttr "Spine01_JNT.msg" "bindPose1.m[27]";
connectAttr "Spine02_JNT.msg" "bindPose1.m[28]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[2]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[2]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[0]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[0]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[0]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "Base_JNT.bps" "bindPose1.wm[0]";
connectAttr "Head_JNT.bps" "bindPose1.wm[3]";
connectAttr "HeadEnd_JNT.bps" "bindPose1.wm[4]";
connectAttr "L_Clavicle_JNT.bps" "bindPose1.wm[5]";
connectAttr "L_Shoulder_JNT.bps" "bindPose1.wm[6]";
connectAttr "L_Elbow_JNT.bps" "bindPose1.wm[7]";
connectAttr "L_Wrist_JNT.bps" "bindPose1.wm[8]";
connectAttr "L_Finger_JNT.bps" "bindPose1.wm[9]";
connectAttr "L_ArmEnd_JNT.bps" "bindPose1.wm[10]";
connectAttr "R_Clavicle_JNT.bps" "bindPose1.wm[11]";
connectAttr "R_Shoulder_JNT.bps" "bindPose1.wm[12]";
connectAttr "R_Elbow_JNT.bps" "bindPose1.wm[13]";
connectAttr "R_Wrist_JNT.bps" "bindPose1.wm[14]";
connectAttr "R_Finger_JNT.bps" "bindPose1.wm[15]";
connectAttr "R_ArmEnd_JNT.bps" "bindPose1.wm[16]";
connectAttr "L_Femur_JNT.bps" "bindPose1.wm[17]";
connectAttr "L_Tibia_JNT.bps" "bindPose1.wm[18]";
connectAttr "L_Ankle_JNT.bps" "bindPose1.wm[19]";
connectAttr "L_Ball_JNT.bps" "bindPose1.wm[20]";
connectAttr "L_ToeEnd_JNT.bps" "bindPose1.wm[21]";
connectAttr "R_Femur_JNT.bps" "bindPose1.wm[22]";
connectAttr "R_Tibia_JNT.bps" "bindPose1.wm[23]";
connectAttr "R_Ankle_JNT.bps" "bindPose1.wm[24]";
connectAttr "R_Ball_JNT.bps" "bindPose1.wm[25]";
connectAttr "R_ToeEnd_JNT.bps" "bindPose1.wm[26]";
connectAttr "Spine01_JNT.bps" "bindPose1.wm[27]";
connectAttr "Spine02_JNT.bps" "bindPose1.wm[28]";
connectAttr "Base_JNT.iog" "Export.dsm" -na;
connectAttr "Main_MOD_MASTER:MainC_GEO.iog" "Export.dsm" -na;
connectAttr "Main_MOD_MASTER:renderLayerManager.rlmi[0]" "Main_MOD_MASTER:defaultRenderLayer.rlid"
		;
connectAttr "Main_MOD_MASTER:lambert2SG.msg" "Main_MOD_MASTER:materialInfo2.sg";
connectAttr "Main_MOD_MASTER:main_light__LEItem.msg" "Main_MOD_MASTER:lightEditor.fi"
		;
connectAttr "Main_MOD_MASTER:back_light__LEItem.msg" "Main_MOD_MASTER:lightEditor.li"
		;
connectAttr "Main_MOD_MASTER:lightEditor.lit" "Main_MOD_MASTER:main_light__LEItem.pls"
		;
connectAttr "Main_MOD_MASTER:lightEditor.en" "Main_MOD_MASTER:main_light__LEItem.pen"
		;
connectAttr "Main_MOD_MASTER:lightEditor.nic" "Main_MOD_MASTER:main_light__LEItem.pic"
		;
connectAttr "Main_MOD_MASTER:main_light__LEItem.nxt" "Main_MOD_MASTER:back_light__LEItem.prv"
		;
connectAttr "Main_MOD_MASTER:lightEditor.lit" "Main_MOD_MASTER:back_light__LEItem.pls"
		;
connectAttr "Main_MOD_MASTER:lightEditor.en" "Main_MOD_MASTER:back_light__LEItem.pen"
		;
connectAttr "Main_MOD_MASTER:lightEditor.nic" "Main_MOD_MASTER:back_light__LEItem.pic"
		;
connectAttr "Main_MOD_MASTER:lambert4SG.msg" "Main_MOD_MASTER:materialInfo6.sg";
connectAttr "Main_MOD_MASTER:lambert5SG.msg" "Main_MOD_MASTER:materialInfo7.sg";
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file1.ws";
connectAttr "Main_MOD_MASTER:place2dTexture1.c" "Main_MOD_MASTER:file1.c";
connectAttr "Main_MOD_MASTER:place2dTexture1.tf" "Main_MOD_MASTER:file1.tf";
connectAttr "Main_MOD_MASTER:place2dTexture1.rf" "Main_MOD_MASTER:file1.rf";
connectAttr "Main_MOD_MASTER:place2dTexture1.mu" "Main_MOD_MASTER:file1.mu";
connectAttr "Main_MOD_MASTER:place2dTexture1.mv" "Main_MOD_MASTER:file1.mv";
connectAttr "Main_MOD_MASTER:place2dTexture1.s" "Main_MOD_MASTER:file1.s";
connectAttr "Main_MOD_MASTER:place2dTexture1.wu" "Main_MOD_MASTER:file1.wu";
connectAttr "Main_MOD_MASTER:place2dTexture1.wv" "Main_MOD_MASTER:file1.wv";
connectAttr "Main_MOD_MASTER:place2dTexture1.re" "Main_MOD_MASTER:file1.re";
connectAttr "Main_MOD_MASTER:place2dTexture1.of" "Main_MOD_MASTER:file1.of";
connectAttr "Main_MOD_MASTER:place2dTexture1.r" "Main_MOD_MASTER:file1.ro";
connectAttr "Main_MOD_MASTER:place2dTexture1.n" "Main_MOD_MASTER:file1.n";
connectAttr "Main_MOD_MASTER:place2dTexture1.vt1" "Main_MOD_MASTER:file1.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture1.vt2" "Main_MOD_MASTER:file1.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture1.vt3" "Main_MOD_MASTER:file1.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture1.vc1" "Main_MOD_MASTER:file1.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture1.o" "Main_MOD_MASTER:file1.uv";
connectAttr "Main_MOD_MASTER:place2dTexture1.ofs" "Main_MOD_MASTER:file1.fs";
connectAttr "Main_MOD_MASTER:blinn1SG.msg" "Main_MOD_MASTER:materialInfo9.sg";
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file3.ws";
connectAttr "Main_MOD_MASTER:place2dTexture3.c" "Main_MOD_MASTER:file3.c";
connectAttr "Main_MOD_MASTER:place2dTexture3.tf" "Main_MOD_MASTER:file3.tf";
connectAttr "Main_MOD_MASTER:place2dTexture3.rf" "Main_MOD_MASTER:file3.rf";
connectAttr "Main_MOD_MASTER:place2dTexture3.mu" "Main_MOD_MASTER:file3.mu";
connectAttr "Main_MOD_MASTER:place2dTexture3.mv" "Main_MOD_MASTER:file3.mv";
connectAttr "Main_MOD_MASTER:place2dTexture3.s" "Main_MOD_MASTER:file3.s";
connectAttr "Main_MOD_MASTER:place2dTexture3.wu" "Main_MOD_MASTER:file3.wu";
connectAttr "Main_MOD_MASTER:place2dTexture3.wv" "Main_MOD_MASTER:file3.wv";
connectAttr "Main_MOD_MASTER:place2dTexture3.re" "Main_MOD_MASTER:file3.re";
connectAttr "Main_MOD_MASTER:place2dTexture3.of" "Main_MOD_MASTER:file3.of";
connectAttr "Main_MOD_MASTER:place2dTexture3.r" "Main_MOD_MASTER:file3.ro";
connectAttr "Main_MOD_MASTER:place2dTexture3.n" "Main_MOD_MASTER:file3.n";
connectAttr "Main_MOD_MASTER:place2dTexture3.vt1" "Main_MOD_MASTER:file3.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture3.vt2" "Main_MOD_MASTER:file3.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture3.vt3" "Main_MOD_MASTER:file3.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture3.vc1" "Main_MOD_MASTER:file3.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture3.o" "Main_MOD_MASTER:file3.uv";
connectAttr "Main_MOD_MASTER:place2dTexture3.ofs" "Main_MOD_MASTER:file3.fs";
connectAttr "Main_MOD_MASTER:lambert6SG.msg" "Main_MOD_MASTER:materialInfo10.sg"
		;
connectAttr "Main_MOD_MASTER:phong1SG.msg" "Main_MOD_MASTER:materialInfo11.sg";
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file4.ws";
connectAttr "Main_MOD_MASTER:place2dTexture4.c" "Main_MOD_MASTER:file4.c";
connectAttr "Main_MOD_MASTER:place2dTexture4.tf" "Main_MOD_MASTER:file4.tf";
connectAttr "Main_MOD_MASTER:place2dTexture4.rf" "Main_MOD_MASTER:file4.rf";
connectAttr "Main_MOD_MASTER:place2dTexture4.mu" "Main_MOD_MASTER:file4.mu";
connectAttr "Main_MOD_MASTER:place2dTexture4.mv" "Main_MOD_MASTER:file4.mv";
connectAttr "Main_MOD_MASTER:place2dTexture4.s" "Main_MOD_MASTER:file4.s";
connectAttr "Main_MOD_MASTER:place2dTexture4.wu" "Main_MOD_MASTER:file4.wu";
connectAttr "Main_MOD_MASTER:place2dTexture4.wv" "Main_MOD_MASTER:file4.wv";
connectAttr "Main_MOD_MASTER:place2dTexture4.re" "Main_MOD_MASTER:file4.re";
connectAttr "Main_MOD_MASTER:place2dTexture4.of" "Main_MOD_MASTER:file4.of";
connectAttr "Main_MOD_MASTER:place2dTexture4.r" "Main_MOD_MASTER:file4.ro";
connectAttr "Main_MOD_MASTER:place2dTexture4.n" "Main_MOD_MASTER:file4.n";
connectAttr "Main_MOD_MASTER:place2dTexture4.vt1" "Main_MOD_MASTER:file4.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture4.vt2" "Main_MOD_MASTER:file4.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture4.vt3" "Main_MOD_MASTER:file4.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture4.vc1" "Main_MOD_MASTER:file4.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture4.o" "Main_MOD_MASTER:file4.uv";
connectAttr "Main_MOD_MASTER:place2dTexture4.ofs" "Main_MOD_MASTER:file4.fs";
connectAttr "Main_MOD_MASTER:place2dTexture5.o" "Main_MOD_MASTER:checker1.uv";
connectAttr "Main_MOD_MASTER:place2dTexture5.ofs" "Main_MOD_MASTER:checker1.fs";
connectAttr "Main_MOD_MASTER:place2dTexture6.o" "Main_MOD_MASTER:checker2.uv";
connectAttr "Main_MOD_MASTER:place2dTexture6.ofs" "Main_MOD_MASTER:checker2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file5.ws";
connectAttr "Main_MOD_MASTER:place2dTexture7.c" "Main_MOD_MASTER:file5.c";
connectAttr "Main_MOD_MASTER:place2dTexture7.tf" "Main_MOD_MASTER:file5.tf";
connectAttr "Main_MOD_MASTER:place2dTexture7.rf" "Main_MOD_MASTER:file5.rf";
connectAttr "Main_MOD_MASTER:place2dTexture7.mu" "Main_MOD_MASTER:file5.mu";
connectAttr "Main_MOD_MASTER:place2dTexture7.mv" "Main_MOD_MASTER:file5.mv";
connectAttr "Main_MOD_MASTER:place2dTexture7.s" "Main_MOD_MASTER:file5.s";
connectAttr "Main_MOD_MASTER:place2dTexture7.wu" "Main_MOD_MASTER:file5.wu";
connectAttr "Main_MOD_MASTER:place2dTexture7.wv" "Main_MOD_MASTER:file5.wv";
connectAttr "Main_MOD_MASTER:place2dTexture7.re" "Main_MOD_MASTER:file5.re";
connectAttr "Main_MOD_MASTER:place2dTexture7.of" "Main_MOD_MASTER:file5.of";
connectAttr "Main_MOD_MASTER:place2dTexture7.r" "Main_MOD_MASTER:file5.ro";
connectAttr "Main_MOD_MASTER:place2dTexture7.n" "Main_MOD_MASTER:file5.n";
connectAttr "Main_MOD_MASTER:place2dTexture7.vt1" "Main_MOD_MASTER:file5.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture7.vt2" "Main_MOD_MASTER:file5.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture7.vt3" "Main_MOD_MASTER:file5.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture7.vc1" "Main_MOD_MASTER:file5.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture7.o" "Main_MOD_MASTER:file5.uv";
connectAttr "Main_MOD_MASTER:place2dTexture7.ofs" "Main_MOD_MASTER:file5.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file6.ws";
connectAttr "Main_MOD_MASTER:place2dTexture8.c" "Main_MOD_MASTER:file6.c";
connectAttr "Main_MOD_MASTER:place2dTexture8.tf" "Main_MOD_MASTER:file6.tf";
connectAttr "Main_MOD_MASTER:place2dTexture8.rf" "Main_MOD_MASTER:file6.rf";
connectAttr "Main_MOD_MASTER:place2dTexture8.mu" "Main_MOD_MASTER:file6.mu";
connectAttr "Main_MOD_MASTER:place2dTexture8.mv" "Main_MOD_MASTER:file6.mv";
connectAttr "Main_MOD_MASTER:place2dTexture8.s" "Main_MOD_MASTER:file6.s";
connectAttr "Main_MOD_MASTER:place2dTexture8.wu" "Main_MOD_MASTER:file6.wu";
connectAttr "Main_MOD_MASTER:place2dTexture8.wv" "Main_MOD_MASTER:file6.wv";
connectAttr "Main_MOD_MASTER:place2dTexture8.re" "Main_MOD_MASTER:file6.re";
connectAttr "Main_MOD_MASTER:place2dTexture8.of" "Main_MOD_MASTER:file6.of";
connectAttr "Main_MOD_MASTER:place2dTexture8.r" "Main_MOD_MASTER:file6.ro";
connectAttr "Main_MOD_MASTER:place2dTexture8.n" "Main_MOD_MASTER:file6.n";
connectAttr "Main_MOD_MASTER:place2dTexture8.vt1" "Main_MOD_MASTER:file6.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture8.vt2" "Main_MOD_MASTER:file6.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture8.vt3" "Main_MOD_MASTER:file6.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture8.vc1" "Main_MOD_MASTER:file6.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture8.o" "Main_MOD_MASTER:file6.uv";
connectAttr "Main_MOD_MASTER:place2dTexture8.ofs" "Main_MOD_MASTER:file6.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file7.ws";
connectAttr "Main_MOD_MASTER:place2dTexture9.c" "Main_MOD_MASTER:file7.c";
connectAttr "Main_MOD_MASTER:place2dTexture9.tf" "Main_MOD_MASTER:file7.tf";
connectAttr "Main_MOD_MASTER:place2dTexture9.rf" "Main_MOD_MASTER:file7.rf";
connectAttr "Main_MOD_MASTER:place2dTexture9.mu" "Main_MOD_MASTER:file7.mu";
connectAttr "Main_MOD_MASTER:place2dTexture9.mv" "Main_MOD_MASTER:file7.mv";
connectAttr "Main_MOD_MASTER:place2dTexture9.s" "Main_MOD_MASTER:file7.s";
connectAttr "Main_MOD_MASTER:place2dTexture9.wu" "Main_MOD_MASTER:file7.wu";
connectAttr "Main_MOD_MASTER:place2dTexture9.wv" "Main_MOD_MASTER:file7.wv";
connectAttr "Main_MOD_MASTER:place2dTexture9.re" "Main_MOD_MASTER:file7.re";
connectAttr "Main_MOD_MASTER:place2dTexture9.of" "Main_MOD_MASTER:file7.of";
connectAttr "Main_MOD_MASTER:place2dTexture9.r" "Main_MOD_MASTER:file7.ro";
connectAttr "Main_MOD_MASTER:place2dTexture9.n" "Main_MOD_MASTER:file7.n";
connectAttr "Main_MOD_MASTER:place2dTexture9.vt1" "Main_MOD_MASTER:file7.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture9.vt2" "Main_MOD_MASTER:file7.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture9.vt3" "Main_MOD_MASTER:file7.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture9.vc1" "Main_MOD_MASTER:file7.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture9.o" "Main_MOD_MASTER:file7.uv";
connectAttr "Main_MOD_MASTER:place2dTexture9.ofs" "Main_MOD_MASTER:file7.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file8.ws";
connectAttr "Main_MOD_MASTER:place2dTexture10.c" "Main_MOD_MASTER:file8.c";
connectAttr "Main_MOD_MASTER:place2dTexture10.tf" "Main_MOD_MASTER:file8.tf";
connectAttr "Main_MOD_MASTER:place2dTexture10.rf" "Main_MOD_MASTER:file8.rf";
connectAttr "Main_MOD_MASTER:place2dTexture10.mu" "Main_MOD_MASTER:file8.mu";
connectAttr "Main_MOD_MASTER:place2dTexture10.mv" "Main_MOD_MASTER:file8.mv";
connectAttr "Main_MOD_MASTER:place2dTexture10.s" "Main_MOD_MASTER:file8.s";
connectAttr "Main_MOD_MASTER:place2dTexture10.wu" "Main_MOD_MASTER:file8.wu";
connectAttr "Main_MOD_MASTER:place2dTexture10.wv" "Main_MOD_MASTER:file8.wv";
connectAttr "Main_MOD_MASTER:place2dTexture10.re" "Main_MOD_MASTER:file8.re";
connectAttr "Main_MOD_MASTER:place2dTexture10.of" "Main_MOD_MASTER:file8.of";
connectAttr "Main_MOD_MASTER:place2dTexture10.r" "Main_MOD_MASTER:file8.ro";
connectAttr "Main_MOD_MASTER:place2dTexture10.n" "Main_MOD_MASTER:file8.n";
connectAttr "Main_MOD_MASTER:place2dTexture10.vt1" "Main_MOD_MASTER:file8.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture10.vt2" "Main_MOD_MASTER:file8.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture10.vt3" "Main_MOD_MASTER:file8.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture10.vc1" "Main_MOD_MASTER:file8.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture10.o" "Main_MOD_MASTER:file8.uv";
connectAttr "Main_MOD_MASTER:place2dTexture10.ofs" "Main_MOD_MASTER:file8.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file9.ws";
connectAttr "Main_MOD_MASTER:place2dTexture11.c" "Main_MOD_MASTER:file9.c";
connectAttr "Main_MOD_MASTER:place2dTexture11.tf" "Main_MOD_MASTER:file9.tf";
connectAttr "Main_MOD_MASTER:place2dTexture11.rf" "Main_MOD_MASTER:file9.rf";
connectAttr "Main_MOD_MASTER:place2dTexture11.mu" "Main_MOD_MASTER:file9.mu";
connectAttr "Main_MOD_MASTER:place2dTexture11.mv" "Main_MOD_MASTER:file9.mv";
connectAttr "Main_MOD_MASTER:place2dTexture11.s" "Main_MOD_MASTER:file9.s";
connectAttr "Main_MOD_MASTER:place2dTexture11.wu" "Main_MOD_MASTER:file9.wu";
connectAttr "Main_MOD_MASTER:place2dTexture11.wv" "Main_MOD_MASTER:file9.wv";
connectAttr "Main_MOD_MASTER:place2dTexture11.re" "Main_MOD_MASTER:file9.re";
connectAttr "Main_MOD_MASTER:place2dTexture11.of" "Main_MOD_MASTER:file9.of";
connectAttr "Main_MOD_MASTER:place2dTexture11.r" "Main_MOD_MASTER:file9.ro";
connectAttr "Main_MOD_MASTER:place2dTexture11.n" "Main_MOD_MASTER:file9.n";
connectAttr "Main_MOD_MASTER:place2dTexture11.vt1" "Main_MOD_MASTER:file9.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture11.vt2" "Main_MOD_MASTER:file9.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture11.vt3" "Main_MOD_MASTER:file9.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture11.vc1" "Main_MOD_MASTER:file9.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture11.o" "Main_MOD_MASTER:file9.uv";
connectAttr "Main_MOD_MASTER:place2dTexture11.ofs" "Main_MOD_MASTER:file9.fs";
connectAttr "Main_MOD_MASTER:file9.oa" "Main_MOD_MASTER:bump2d1.bv";
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file10.ws";
connectAttr "Main_MOD_MASTER:place2dTexture12.c" "Main_MOD_MASTER:file10.c";
connectAttr "Main_MOD_MASTER:place2dTexture12.tf" "Main_MOD_MASTER:file10.tf";
connectAttr "Main_MOD_MASTER:place2dTexture12.rf" "Main_MOD_MASTER:file10.rf";
connectAttr "Main_MOD_MASTER:place2dTexture12.mu" "Main_MOD_MASTER:file10.mu";
connectAttr "Main_MOD_MASTER:place2dTexture12.mv" "Main_MOD_MASTER:file10.mv";
connectAttr "Main_MOD_MASTER:place2dTexture12.s" "Main_MOD_MASTER:file10.s";
connectAttr "Main_MOD_MASTER:place2dTexture12.wu" "Main_MOD_MASTER:file10.wu";
connectAttr "Main_MOD_MASTER:place2dTexture12.wv" "Main_MOD_MASTER:file10.wv";
connectAttr "Main_MOD_MASTER:place2dTexture12.re" "Main_MOD_MASTER:file10.re";
connectAttr "Main_MOD_MASTER:place2dTexture12.of" "Main_MOD_MASTER:file10.of";
connectAttr "Main_MOD_MASTER:place2dTexture12.r" "Main_MOD_MASTER:file10.ro";
connectAttr "Main_MOD_MASTER:place2dTexture12.n" "Main_MOD_MASTER:file10.n";
connectAttr "Main_MOD_MASTER:place2dTexture12.vt1" "Main_MOD_MASTER:file10.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture12.vt2" "Main_MOD_MASTER:file10.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture12.vt3" "Main_MOD_MASTER:file10.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture12.vc1" "Main_MOD_MASTER:file10.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture12.o" "Main_MOD_MASTER:file10.uv";
connectAttr "Main_MOD_MASTER:place2dTexture12.ofs" "Main_MOD_MASTER:file10.fs";
connectAttr "Main_MOD_MASTER:standardSurface2SG.msg" "Main_MOD_MASTER:materialInfo12.sg"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file11.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file11.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file11.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file11.ws";
connectAttr "Main_MOD_MASTER:place2dTexture13.c" "Main_MOD_MASTER:file11.c";
connectAttr "Main_MOD_MASTER:place2dTexture13.tf" "Main_MOD_MASTER:file11.tf";
connectAttr "Main_MOD_MASTER:place2dTexture13.rf" "Main_MOD_MASTER:file11.rf";
connectAttr "Main_MOD_MASTER:place2dTexture13.mu" "Main_MOD_MASTER:file11.mu";
connectAttr "Main_MOD_MASTER:place2dTexture13.mv" "Main_MOD_MASTER:file11.mv";
connectAttr "Main_MOD_MASTER:place2dTexture13.s" "Main_MOD_MASTER:file11.s";
connectAttr "Main_MOD_MASTER:place2dTexture13.wu" "Main_MOD_MASTER:file11.wu";
connectAttr "Main_MOD_MASTER:place2dTexture13.wv" "Main_MOD_MASTER:file11.wv";
connectAttr "Main_MOD_MASTER:place2dTexture13.re" "Main_MOD_MASTER:file11.re";
connectAttr "Main_MOD_MASTER:place2dTexture13.of" "Main_MOD_MASTER:file11.of";
connectAttr "Main_MOD_MASTER:place2dTexture13.r" "Main_MOD_MASTER:file11.ro";
connectAttr "Main_MOD_MASTER:place2dTexture13.n" "Main_MOD_MASTER:file11.n";
connectAttr "Main_MOD_MASTER:place2dTexture13.vt1" "Main_MOD_MASTER:file11.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture13.vt2" "Main_MOD_MASTER:file11.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture13.vt3" "Main_MOD_MASTER:file11.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture13.vc1" "Main_MOD_MASTER:file11.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture13.o" "Main_MOD_MASTER:file11.uv";
connectAttr "Main_MOD_MASTER:place2dTexture13.ofs" "Main_MOD_MASTER:file11.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file12.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file12.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file12.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file12.ws";
connectAttr "Main_MOD_MASTER:place2dTexture14.c" "Main_MOD_MASTER:file12.c";
connectAttr "Main_MOD_MASTER:place2dTexture14.tf" "Main_MOD_MASTER:file12.tf";
connectAttr "Main_MOD_MASTER:place2dTexture14.rf" "Main_MOD_MASTER:file12.rf";
connectAttr "Main_MOD_MASTER:place2dTexture14.mu" "Main_MOD_MASTER:file12.mu";
connectAttr "Main_MOD_MASTER:place2dTexture14.mv" "Main_MOD_MASTER:file12.mv";
connectAttr "Main_MOD_MASTER:place2dTexture14.s" "Main_MOD_MASTER:file12.s";
connectAttr "Main_MOD_MASTER:place2dTexture14.wu" "Main_MOD_MASTER:file12.wu";
connectAttr "Main_MOD_MASTER:place2dTexture14.wv" "Main_MOD_MASTER:file12.wv";
connectAttr "Main_MOD_MASTER:place2dTexture14.re" "Main_MOD_MASTER:file12.re";
connectAttr "Main_MOD_MASTER:place2dTexture14.of" "Main_MOD_MASTER:file12.of";
connectAttr "Main_MOD_MASTER:place2dTexture14.r" "Main_MOD_MASTER:file12.ro";
connectAttr "Main_MOD_MASTER:place2dTexture14.n" "Main_MOD_MASTER:file12.n";
connectAttr "Main_MOD_MASTER:place2dTexture14.vt1" "Main_MOD_MASTER:file12.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture14.vt2" "Main_MOD_MASTER:file12.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture14.vt3" "Main_MOD_MASTER:file12.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture14.vc1" "Main_MOD_MASTER:file12.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture14.o" "Main_MOD_MASTER:file12.uv";
connectAttr "Main_MOD_MASTER:place2dTexture14.ofs" "Main_MOD_MASTER:file12.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file13.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file13.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file13.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file13.ws";
connectAttr "Main_MOD_MASTER:place2dTexture15.c" "Main_MOD_MASTER:file13.c";
connectAttr "Main_MOD_MASTER:place2dTexture15.tf" "Main_MOD_MASTER:file13.tf";
connectAttr "Main_MOD_MASTER:place2dTexture15.rf" "Main_MOD_MASTER:file13.rf";
connectAttr "Main_MOD_MASTER:place2dTexture15.mu" "Main_MOD_MASTER:file13.mu";
connectAttr "Main_MOD_MASTER:place2dTexture15.mv" "Main_MOD_MASTER:file13.mv";
connectAttr "Main_MOD_MASTER:place2dTexture15.s" "Main_MOD_MASTER:file13.s";
connectAttr "Main_MOD_MASTER:place2dTexture15.wu" "Main_MOD_MASTER:file13.wu";
connectAttr "Main_MOD_MASTER:place2dTexture15.wv" "Main_MOD_MASTER:file13.wv";
connectAttr "Main_MOD_MASTER:place2dTexture15.re" "Main_MOD_MASTER:file13.re";
connectAttr "Main_MOD_MASTER:place2dTexture15.of" "Main_MOD_MASTER:file13.of";
connectAttr "Main_MOD_MASTER:place2dTexture15.r" "Main_MOD_MASTER:file13.ro";
connectAttr "Main_MOD_MASTER:place2dTexture15.n" "Main_MOD_MASTER:file13.n";
connectAttr "Main_MOD_MASTER:place2dTexture15.vt1" "Main_MOD_MASTER:file13.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture15.vt2" "Main_MOD_MASTER:file13.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture15.vt3" "Main_MOD_MASTER:file13.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture15.vc1" "Main_MOD_MASTER:file13.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture15.o" "Main_MOD_MASTER:file13.uv";
connectAttr "Main_MOD_MASTER:place2dTexture15.ofs" "Main_MOD_MASTER:file13.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file14.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file14.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file14.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file14.ws";
connectAttr "Main_MOD_MASTER:place2dTexture16.c" "Main_MOD_MASTER:file14.c";
connectAttr "Main_MOD_MASTER:place2dTexture16.tf" "Main_MOD_MASTER:file14.tf";
connectAttr "Main_MOD_MASTER:place2dTexture16.rf" "Main_MOD_MASTER:file14.rf";
connectAttr "Main_MOD_MASTER:place2dTexture16.mu" "Main_MOD_MASTER:file14.mu";
connectAttr "Main_MOD_MASTER:place2dTexture16.mv" "Main_MOD_MASTER:file14.mv";
connectAttr "Main_MOD_MASTER:place2dTexture16.s" "Main_MOD_MASTER:file14.s";
connectAttr "Main_MOD_MASTER:place2dTexture16.wu" "Main_MOD_MASTER:file14.wu";
connectAttr "Main_MOD_MASTER:place2dTexture16.wv" "Main_MOD_MASTER:file14.wv";
connectAttr "Main_MOD_MASTER:place2dTexture16.re" "Main_MOD_MASTER:file14.re";
connectAttr "Main_MOD_MASTER:place2dTexture16.of" "Main_MOD_MASTER:file14.of";
connectAttr "Main_MOD_MASTER:place2dTexture16.r" "Main_MOD_MASTER:file14.ro";
connectAttr "Main_MOD_MASTER:place2dTexture16.n" "Main_MOD_MASTER:file14.n";
connectAttr "Main_MOD_MASTER:place2dTexture16.vt1" "Main_MOD_MASTER:file14.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture16.vt2" "Main_MOD_MASTER:file14.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture16.vt3" "Main_MOD_MASTER:file14.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture16.vc1" "Main_MOD_MASTER:file14.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture16.o" "Main_MOD_MASTER:file14.uv";
connectAttr "Main_MOD_MASTER:place2dTexture16.ofs" "Main_MOD_MASTER:file14.fs";
connectAttr "Main_MOD_MASTER:file14.oa" "Main_MOD_MASTER:bump2d2.bv";
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file15.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file15.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file15.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file15.ws";
connectAttr "Main_MOD_MASTER:place2dTexture17.c" "Main_MOD_MASTER:file15.c";
connectAttr "Main_MOD_MASTER:place2dTexture17.tf" "Main_MOD_MASTER:file15.tf";
connectAttr "Main_MOD_MASTER:place2dTexture17.rf" "Main_MOD_MASTER:file15.rf";
connectAttr "Main_MOD_MASTER:place2dTexture17.mu" "Main_MOD_MASTER:file15.mu";
connectAttr "Main_MOD_MASTER:place2dTexture17.mv" "Main_MOD_MASTER:file15.mv";
connectAttr "Main_MOD_MASTER:place2dTexture17.s" "Main_MOD_MASTER:file15.s";
connectAttr "Main_MOD_MASTER:place2dTexture17.wu" "Main_MOD_MASTER:file15.wu";
connectAttr "Main_MOD_MASTER:place2dTexture17.wv" "Main_MOD_MASTER:file15.wv";
connectAttr "Main_MOD_MASTER:place2dTexture17.re" "Main_MOD_MASTER:file15.re";
connectAttr "Main_MOD_MASTER:place2dTexture17.of" "Main_MOD_MASTER:file15.of";
connectAttr "Main_MOD_MASTER:place2dTexture17.r" "Main_MOD_MASTER:file15.ro";
connectAttr "Main_MOD_MASTER:place2dTexture17.n" "Main_MOD_MASTER:file15.n";
connectAttr "Main_MOD_MASTER:place2dTexture17.vt1" "Main_MOD_MASTER:file15.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture17.vt2" "Main_MOD_MASTER:file15.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture17.vt3" "Main_MOD_MASTER:file15.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture17.vc1" "Main_MOD_MASTER:file15.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture17.o" "Main_MOD_MASTER:file15.uv";
connectAttr "Main_MOD_MASTER:place2dTexture17.ofs" "Main_MOD_MASTER:file15.fs";
connectAttr ":defaultColorMgtGlobals.cme" "Main_MOD_MASTER:file16.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "Main_MOD_MASTER:file16.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "Main_MOD_MASTER:file16.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "Main_MOD_MASTER:file16.ws";
connectAttr "Main_MOD_MASTER:place2dTexture18.c" "Main_MOD_MASTER:file16.c";
connectAttr "Main_MOD_MASTER:place2dTexture18.tf" "Main_MOD_MASTER:file16.tf";
connectAttr "Main_MOD_MASTER:place2dTexture18.rf" "Main_MOD_MASTER:file16.rf";
connectAttr "Main_MOD_MASTER:place2dTexture18.mu" "Main_MOD_MASTER:file16.mu";
connectAttr "Main_MOD_MASTER:place2dTexture18.mv" "Main_MOD_MASTER:file16.mv";
connectAttr "Main_MOD_MASTER:place2dTexture18.s" "Main_MOD_MASTER:file16.s";
connectAttr "Main_MOD_MASTER:place2dTexture18.wu" "Main_MOD_MASTER:file16.wu";
connectAttr "Main_MOD_MASTER:place2dTexture18.wv" "Main_MOD_MASTER:file16.wv";
connectAttr "Main_MOD_MASTER:place2dTexture18.re" "Main_MOD_MASTER:file16.re";
connectAttr "Main_MOD_MASTER:place2dTexture18.of" "Main_MOD_MASTER:file16.of";
connectAttr "Main_MOD_MASTER:place2dTexture18.r" "Main_MOD_MASTER:file16.ro";
connectAttr "Main_MOD_MASTER:place2dTexture18.n" "Main_MOD_MASTER:file16.n";
connectAttr "Main_MOD_MASTER:place2dTexture18.vt1" "Main_MOD_MASTER:file16.vt1";
connectAttr "Main_MOD_MASTER:place2dTexture18.vt2" "Main_MOD_MASTER:file16.vt2";
connectAttr "Main_MOD_MASTER:place2dTexture18.vt3" "Main_MOD_MASTER:file16.vt3";
connectAttr "Main_MOD_MASTER:place2dTexture18.vc1" "Main_MOD_MASTER:file16.vc1";
connectAttr "Main_MOD_MASTER:place2dTexture18.o" "Main_MOD_MASTER:file16.uv";
connectAttr "Main_MOD_MASTER:place2dTexture18.ofs" "Main_MOD_MASTER:file16.fs";
connectAttr ":standardSurface1.oc" "Main_MOD_MASTER:standardSurface1SG.ss";
connectAttr "Main_MOD_MASTER:standardSurface1SG.msg" "Main_MOD_MASTER:materialInfo13.sg"
		;
connectAttr ":standardSurface1.msg" "Main_MOD_MASTER:materialInfo13.m";
connectAttr ":standardSurface1.msg" "Main_MOD_MASTER:materialInfo13.t" -na;
connectAttr "Main_MOD_MASTER:MainC_MAT.oc" "Main_MOD_MASTER:lambert7SG.ss";
connectAttr "Main_MOD_MASTER:MainC_GEOShape.iog" "Main_MOD_MASTER:lambert7SG.dsm"
		 -na;
connectAttr "MainC_GEOShapeDeformed.iog" "Main_MOD_MASTER:lambert7SG.dsm" -na;
connectAttr "Main_MOD_MASTER:lambert7SG.msg" "Main_MOD_MASTER:materialInfo14.sg"
		;
connectAttr "Main_MOD_MASTER:MainC_MAT.msg" "Main_MOD_MASTER:materialInfo14.m";
connectAttr "Main_MOD_MASTER:standardSurface1SG.msg" "Main_MOD_MASTER:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Sword_MAT.oc" "Sword_MDLSG.ss";
connectAttr "Sword_GEOShape.iog" "Sword_MDLSG.dsm" -na;
connectAttr "Sword_MDLSG.msg" "materialInfo1.sg";
connectAttr "Sword_MAT.msg" "materialInfo1.m";
connectAttr "Sword_GEOShapeOrig.w" "skinCluster2.ip[0].ig";
connectAttr "Sword_GEOShapeOrig.o" "skinCluster2.orggeom[0]";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "Sword_JNT.wm" "skinCluster2.ma[0]";
connectAttr "Sword_JNT.liw" "skinCluster2.lw[0]";
connectAttr "Sword_JNT.obcc" "skinCluster2.ifcl[0]";
connectAttr "Sword_JNT.msg" "bindPose2.m[0]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "Sword_JNT.bps" "bindPose2.wm[0]";
connectAttr "GrapplingHook_MAT.oc" "GrapplingHook_MDLSG.ss";
connectAttr "GrapplingHook_MDLShape.iog" "GrapplingHook_MDLSG.dsm" -na;
connectAttr "GrapplingHook_MDLSG.msg" "materialInfo2.sg";
connectAttr "GrapplingHook_MAT.msg" "materialInfo2.m";
connectAttr "Main_MOD_MASTER:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "Main_MOD_MASTER:lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "Main_MOD_MASTER:lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "Main_MOD_MASTER:blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "Main_MOD_MASTER:lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "Main_MOD_MASTER:phong1SG.pa" ":renderPartition.st" -na;
connectAttr "Main_MOD_MASTER:standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "Main_MOD_MASTER:standardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "Main_MOD_MASTER:lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "Sword_MDLSG.pa" ":renderPartition.st" -na;
connectAttr "GrapplingHook_MDLSG.pa" ":renderPartition.st" -na;
connectAttr "Main_MOD_MASTER:MainC_MAT.msg" ":defaultShaderList1.s" -na;
connectAttr "Sword_MAT.msg" ":defaultShaderList1.s" -na;
connectAttr "GrapplingHook_MAT.msg" ":defaultShaderList1.s" -na;
connectAttr "Main_MOD_MASTER:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:place2dTexture3.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:place2dTexture4.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:place2dTexture5.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:place2dTexture6.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:place2dTexture7.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:place2dTexture8.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:place2dTexture9.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:place2dTexture10.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:place2dTexture11.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Main_MOD_MASTER:place2dTexture12.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:place2dTexture13.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:place2dTexture14.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:place2dTexture15.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:place2dTexture16.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Main_MOD_MASTER:place2dTexture17.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Main_MOD_MASTER:place2dTexture18.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Main_MOD_MASTER:defaultRenderLayer.msg" ":defaultRenderingList1.r" 
		-na;
connectAttr "Main_MOD_MASTER:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:checker2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file12.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file13.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file14.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file15.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file16.msg" ":defaultTextureList1.tx" -na;
connectAttr "Main_MOD_MASTER:file1.oa" ":standardSurface1.b";
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Main_RIG_MASTER.ma
