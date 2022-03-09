//Maya ASCII 2022 scene
//Name: Spider-Hunter_RIG_MASTER.ma
//Last modified: Sun, Mar 06, 2022 10:31:05 PM
//Codeset: 1252
requires maya "2022";
requires "stereoCamera" "10.0";
requires "mtoa" "5.0.0.1";
requires "mtoa" "5.0.0.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Education v2004 (Build: 19041)";
fileInfo "UUID" "BF324783-4DA9-A758-2A1B-1B84D21F64A3";
createNode transform -s -n "persp";
	rename -uid "62CDEB66-4996-D497-73A8-15840147762A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 518.50731426255822 141.65121790562114 97.051340640860431 ;
	setAttr ".r" -type "double3" -6.3383527212369 802.99999999964052 -6.5245175538680345e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "23EE1DB9-4A35-527C-865D-91AE63255899";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 535.91453172077922;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 60.857582092285156 13.992650985717773 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "554F4151-4E6D-B183-F680-1D80F07A34D3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 23.305125286300715 1000.1 61.909798470478229 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "BB84B377-425F-C81B-7859-6BB610CA9E7D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 214.54947400976076;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "DC2D7670-46CD-F22C-DD27-0984FE39A9D4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.8995271425681857 62.878036131197739 1003.1406423409248 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9B062936-4DE7-5194-1AA2-268854267D8D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 965.08964598972307;
	setAttr ".ow" 78.057170018904174;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 49.090866104803467 58.735221460414216 38.050996351201732 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "ABCC9731-46B9-DBC9-2200-629C79CD4A3D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.6103088459241 70.140381804090168 25.757264068616024 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D33A86A0-4469-33D4-DD12-4683DD12A2B9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.6103088459241;
	setAttr ".ow" 293.85056079530489;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -2.4980018054066022e-14 39.857042127162117 47.483738706926324 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "Base_JNT";
	rename -uid "7C6A7B96-42FD-B401-87AB-83A8869476F6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".liw" yes;
createNode joint -n "Tail02_JNT" -p "Base_JNT";
	rename -uid "0820E499-4946-D369-2F58-44BBD792DB2F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999886 62.737139423315242 89.999999999999872 ;
	setAttr ".bps" -type "matrix" 8.8817841970012523e-16 0.45807345184123482 -0.88891434498395638 0
		 8.3266726846886741e-17 0.88891434498395627 0.45807345184123482 0 1.0000000000000002 -5.2735593669694936e-16 7.7715611723760958e-16 0
		 4.440892098500623e-14 83.108379129137404 9.9365997691713766 1;
createNode joint -n "Tail03_JNT" -p "Tail02_JNT";
	rename -uid "CC19504D-4740-5105-AF48-F1BB16FAF0E5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -57.359019534925999 ;
	setAttr ".bps" -type "matrix" 4.0894349328194211e-16 -0.50145273729752948 -0.86518503931633906 0
		 7.9281742685385518e-16 0.86518503931633894 -0.50145273729752948 0 1.0000000000000002 -5.2735593669694936e-16 7.7715611723760958e-16 0
		 4.1626497651035073e-14 88.699925904497931 -0.91407520290596445 1;
createNode joint -n "Tail04_JNT" -p "Tail03_JNT";
	rename -uid "E0B0F8C4-44CF-5470-79D2-D6829A4839F1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -24.019604568232701 ;
	setAttr ".bps" -type "matrix" 5.0815835052918334e-17 -0.81020293573799806 -0.58614947148447516 0
		 8.9062450220543583e-16 0.58614947148447505 -0.81020293573799806 0 1.0000000000000002 -5.2735593669694936e-16 7.7715611723760958e-16 0
		 3.0084895887109068e-14 80.646254572038316 -14.809534196642907 1;
	setAttr ".liw" yes;
createNode joint -n "Tail05_JNT" -p "Tail04_JNT";
	rename -uid "04C25344-4B51-002E-5C3D-B3820E25B49F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.1299600123008406e-29 0 3.1805546814635176e-15 ;
	setAttr ".bps" -type "matrix" 5.0815835052918334e-17 -0.81020293573799806 -0.58614947148447516 0
		 8.9062450220543583e-16 0.58614947148447505 -0.81020293573799806 0 1.0000000000000002 -5.2735593669694936e-16 7.7715611723760958e-16 0
		 3.7130589230987658e-14 51.415795599476752 -35.956604050702524 1;
	setAttr ".liw" yes;
createNode joint -n "TailEnd_JNT" -p "Tail05_JNT";
	rename -uid "4FA85633-481D-F0EF-11B0-7DBD785F9F7F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 37.642950560349774 -3.5527136788005009e-14 -2.5364920301828633e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 54.115763526473842 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -7.0725712747199367e-16 6.4700478941482336e-16 0
		 7.5842369867327828e-16 1 -1.7763568394002503e-15 0 -6.4034995872383107e-16 1.8873791418627661e-15 1 0
		 1.3678526895738878e-14 20.917366545641016 -58.02099962676774 1;
	setAttr ".liw" yes;
createNode parentConstraint -n "Tail05_JNT_parentConstraint1" -p "Tail05_JNT";
	rename -uid "7261942A-4E2B-449D-0E20-4EA00EAFB7BB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Tail04_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 -1.4210854715202004e-14 
		1.2424559257230936e-29 ;
	setAttr ".rst" -type "double3" 36.077947490940801 2.8421709430404007e-14 5.2123623151310635e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Tail04_JNT_parentConstraint1" -p "Tail04_JNT";
	rename -uid "3200303D-427E-DBB6-52E8-E584062CE198";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Tail04_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -4.9737991503207013e-14 3.5527136788005009e-14 
		1.0704866594748789e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 4.4527765540489235e-14 ;
	setAttr ".lr" -type "double3" 0 0 -2.2263882770244617e-14 ;
	setAttr ".rst" -type "double3" 16.060678770771403 -1.4210854715202004e-14 -1.6139355234246374e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 -4.4527765540489235e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Tail03_JNT_parentConstraint1" -p "Tail03_JNT";
	rename -uid "0F8AF8AC-4569-CAE0-BF97-C69578C76A64";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Tail03_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 4.2632564145606011e-14 1.4796685078548898e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 4.4527765540489247e-14 ;
	setAttr ".lr" -type "double3" 0 0 -6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" 12.206659767959067 1.4210854715202004e-14 -8.2032692252326412e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.8166656177562201e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Tail02_JNT_parentConstraint1" -p "Tail02_JNT";
	rename -uid "9ABC074F-4018-A62C-3DA6-2B83425ED873";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Tail02_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-14 2.8421709430404007e-14 
		1.9539925233402692e-14 ;
	setAttr ".tg[0].tor" -type "double3" -6.3611093629269894e-15 1.2722218725854073e-14 
		3.8166656177562201e-14 ;
	setAttr ".lr" -type "double3" 9.5416640443905487e-15 1.8288189418415221e-14 -1.2722218725854065e-14 ;
	setAttr ".rst" -type "double3" 4.4408920985006249e-14 83.108379129137418 9.9365997691713819 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270367e-15 -8.3489560388417288e-15 -3.8166656177562201e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Body_JNT" -p "Base_JNT";
	rename -uid "9041A0AE-470B-7DB0-71DD-7F80047E55EF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -40.261934232392221 -90 ;
	setAttr ".bps" -type "matrix" 0 -0.7630978709977837 0.64628294057529445 0 0 0.64628294057529456 0.7630978709977837 0
		 -1 0 0 0 4.4408920985006255e-14 83.10837912913739 9.9365997691713872 1;
	setAttr ".liw" yes;
createNode joint -n "B_Mandible_JNT" -p "Body_JNT";
	rename -uid "9B953382-4E21-C118-35AF-1CA295B812A7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.9972202992197337e-14 7.1225942921916902e-14 26.604213454248672 ;
	setAttr ".bps" -type "matrix" 0 -0.39288051020822418 0.91958953055073711 0 0 0.91958953055073733 0.39288051020822423 0
		 -1 0 0 0 6.5947247662734299e-14 51.737719334226583 13.425903860512177 1;
	setAttr ".liw" yes;
createNode joint -n "B_MandibleEnd_JNT" -p "B_Mandible_JNT";
	rename -uid "9B7A6971-4A93-F951-445A-FD8A885CEC5A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 38.360423712793335 1.7763568394002505e-15 3.8479988536799316e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -23.133852313359185 89.999999999999886 0 ;
	setAttr ".bps" -type "matrix" 1 -8.0322774113279208e-16 1.9507086177501588e-15 0
		 7.7715611723760958e-16 1 -1.27675647831893e-15 0 -1.9984014443252818e-15 1.4432899320127035e-15 0.99999999999999967 0
		 6.2099248809054373e-14 36.666656494140682 48.701747894287166 1;
	setAttr ".liw" yes;
createNode parentConstraint -n "B_Mandible_JNT_parentConstraint1" -p "B_Mandible_JNT";
	rename -uid "F2DAE312-4914-DB23-9046-4CB3BD3AF77C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "B_Mandible_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.6415315207705135e-14 2.1316282072803006e-14 
		-3.8134008616318372e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -6.9972202992197363e-14 ;
	setAttr ".lr" -type "double3" 0 0 6.3611093629270335e-14 ;
	setAttr ".rst" -type "double3" 26.193961410005343 -17.611641736676113 -2.1538326677728037e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 6.3611093629270335e-14 ;
	setAttr -k on ".w0";
createNode joint -n "T_Mandible_JNT" -p "Body_JNT";
	rename -uid "02A479C5-4B1F-E554-2AFD-ACA9F50FA0B6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.5444437451708128e-14 6.2127250686084231e-14 -1.6452311957317978 ;
	setAttr ".bps" -type "matrix" 0 -0.78133856397018997 0.62410740137655873 0 0 0.62410740137655885 0.78133856397018997 0
		 -1 0 0 0 5.5067062021407752e-14 68.188116089707833 24.535235041125141 1;
	setAttr ".liw" yes;
createNode joint -n "T_MandibleEnd_JNT" -p "T_Mandible_JNT";
	rename -uid "6EB310D3-4D70-878D-9874-3EB5E8963439";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 38.721721293256969 2.8421709430404014e-14 9.0004936121262552e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999997 0 -69.670974153013134 ;
	setAttr ".bps" -type "matrix" -4.9303806576313238e-32 -0.85667906720269804 -0.5158497608962469 0
		 5.6655388976479796e-16 0.51584976089624679 -0.85667906720269793 0 1 -2.9225668857000955e-16 4.8535485780376726e-16 0
		 4.6066568409281497e-14 37.933341979980526 48.701747894287131 1;
	setAttr ".liw" yes;
createNode parentConstraint -n "T_Mandible_JNT_parentConstraint1" -p "T_Mandible_JNT";
	rename -uid "7879B00A-4AA8-1600-39A6-38A3BD9B9BFA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "T_Mandible_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.1316282072803006e-14 0 -2.2099121695532535e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -4.5124119543263645e-14 ;
	setAttr ".lr" -type "double3" 0 0 4.5124119543263632e-14 ;
	setAttr ".rst" -type "double3" 20.820469892060103 1.4974760242216476 -1.0658141036401496e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 4.5124119543263632e-14 ;
	setAttr -k on ".w0";
createNode joint -n "L_Mandible_JNT" -p "Body_JNT";
	rename -uid "B89C89FD-4750-3C91-76A2-BA969E75CA7C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 11.585550175405828 -14.988486969118039 11.334786270878897 ;
	setAttr ".bps" -type "matrix" -0.25862494645742801 -0.60005830488192713 0.75699614781854763 0
		 -0.19399816361940903 0.79995626801858855 0.56783332217303772 0 -0.94629691407199967 -1.96787031114809e-14 -0.32329885619626075 0
		 17.44544126305648 65.080411435876186 14.558543367408527 1;
	setAttr ".liw" yes;
createNode joint -n "L_MandibleEnd_JNT" -p "L_Mandible_JNT";
	rename -uid "976CC03A-4470-061D-0B4D-6BB61E499656";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 34.18286587476787 -1.1768364061026659e-14 1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.6675880315962299 18.020568714961428 54.660280327327591 ;
	setAttr ".bps" -type "matrix" -4.9960036108132044e-16 0.29048160362370007 0.9568805766427716 0
		 -1.2490009027033011e-15 0.9568805766427716 -0.29048160362370001 0 -1 -1.4134391456435075e-15 -1.1102230246251565e-16 0
		 8.6048994064331978 44.568698883056697 40.434841156005888 1;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_Mandible_JNT_parentConstraint1" -p "L_Mandible_JNT";
	rename -uid "32C34EA7-4DEC-52C3-1C66-7896F84D1CD7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Mandible_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.2632564145606011e-14 -7.1054273576010019e-15 
		-3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 4.6118042881220995e-14 3.0215269473903414e-14 
		-8.7465253740246719e-15 ;
	setAttr ".lr" -type "double3" -4.3732626870123361e-14 -3.2004331482226631e-14 9.1440947092076229e-15 ;
	setAttr ".rst" -type "double3" 16.744187064986306 -8.1241726537106587 -17.445441263056438 ;
	setAttr ".rsrr" -type "double3" -4.3732626870123361e-14 -3.2004331482226631e-14 
		9.1440947092076229e-15 ;
	setAttr -k on ".w0";
createNode joint -n "R_Mandible_JNT" -p "Body_JNT";
	rename -uid "9DBDCE4E-4EFF-3087-DC48-A6A07C2154C6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 11.585550175405782 -14.988486969118064 -168.66521372912112 ;
	setAttr ".bps" -type "matrix" -0.25862494645742845 0.60005830488192702 -0.75699614781854729 0
		 -0.19399816361940828 -0.79995626801858855 -0.56783332217303784 0 -0.94629691407199967 1.8735013540549517e-14 0.32329885619626064 0
		 -17.445399999999957 65.080399999999997 14.558499999999963 1;
	setAttr ".liw" yes;
createNode joint -n "R_MandibleEnd_JNT" -p "R_Mandible_JNT";
	rename -uid "7537A668-4570-5EB2-6BDC-25A28C103D6E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -34.18284919120061 -3.1773066879736689e-06 4.0323737405145721e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.6675880315963099 18.020568714961417 54.660280327327563 ;
	setAttr ".bps" -type "matrix" -3.3306690738754696e-16 -0.29048160362369935 -0.95688057664277182 0
		 -1.9984014443252818e-15 -0.95688057664277182 0.29048160362369924 0 -1 2.0469852756887977e-15 -2.2204460492503131e-16 0
		 -8.6048999999999545 44.568700000000007 40.434799999999967 1;
	setAttr ".liw" yes;
createNode parentConstraint -n "R_Mandible_JNT_parentConstraint1" -p "R_Mandible_JNT";
	rename -uid "304BEBCA-405A-3AD9-F505-F8A63FE065D1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Mandible_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.1316282072803006e-14 7.1054273576010019e-15 
		-3.907985046680551e-14 ;
	setAttr ".tg[0].tor" -type "double3" -4.9298597562684508e-14 -1.7493050748049344e-14 
		-1.7095481412866407e-14 ;
	setAttr ".lr" -type "double3" 5.2479152244148028e-14 1.5902773407317574e-14 2.0673605429512867e-14 ;
	setAttr ".rst" -type "double3" 16.744167764062759 -8.1242131380995062 17.4454 ;
	setAttr ".rsrr" -type "double3" 5.2479152244148028e-14 1.5902773407317574e-14 2.0673605429512867e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Body_JNT_parentConstraint1" -p "Body_JNT";
	rename -uid "E8785FFC-4E67-72BB-B020-6F8D032178CB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Body_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -7.1054273576010019e-15 
		1.7763568394002568e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -3.2441657750927878e-13 ;
	setAttr ".lr" -type "double3" 0 0 3.1805546814635174e-13 ;
	setAttr ".rst" -type "double3" 4.4408920985006255e-14 83.10837912913739 9.9365997691713872 ;
	setAttr ".rsrr" -type "double3" 0 0 3.1805546814635174e-13 ;
	setAttr -k on ".w0";
createNode joint -n "L_Foot_JNT" -p "Base_JNT";
	rename -uid "42551443-48D7-921B-8ECC-999060FA4F9E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 123.36948208782719 22.776356757902079 104.30409083911921 ;
	setAttr ".bps" -type "matrix" -0.22958891823470329 0.89333661727141367 -0.3863141427205149 0
		 0.44969620518123754 0.44937452303076975 0.77190404915148769 0 0.86316988575216924 0.003496611636418733 -0.50490149736126844 0
		 51.069068908691406 -2.4816271333966177e-14 86.994429409915981 1;
	setAttr ".liw" yes;
createNode joint -n "L_Knee_JNT" -p "L_Foot_JNT";
	rename -uid "D698B2D8-4EA8-9F73-85D7-FCA0D9E27AFD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 132 2.0537110127407416e-14 5.9114882883861693e-15 ;
	setAttr ".r" -type "double3" -8.2148723745266842e-31 6.6961827360552095e-16 1.8833493547748279e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.358670475173815 -6.005439584932609 -110.11512093699741 ;
	setAttr ".bps" -type "matrix" -0.2511175546910675 -0.72482179931784063 -0.64153981400972082 0
		 -0.26890983538363866 0.68892756415633838 -0.67310200696444122 0 0.92985346918744305 0.0034886357308437509 -0.3679135160072462 0
		 20.763331701710587 117.92043347982658 36.000962570808028 1;
	setAttr ".liw" yes;
createNode joint -n "L_Thigh_JNT" -p "L_Knee_JNT";
	rename -uid "DC87B7CF-4FD7-6907-1C87-7AA474E5BB33";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 60 3.8175016775804878e-15 3.0790393977124364e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.1642929776347088 0 0 ;
	setAttr ".bps" -type "matrix" -0.2511175546910675 -0.72482179931784063 -0.64153981400972082 0
		 -0.33572273880142511 0.68685541134009465 -0.64460832027247339 0 0.90787125539783931 0.0535070382891603 -0.41582061093201395 0
		 5.6962784202465393 74.431125520756154 -2.4914262697752179 1;
	setAttr ".liw" yes;
createNode ikEffector -n "effector1" -p "L_Knee_JNT";
	rename -uid "15331126-42A5-CE72-AFD1-1BB85D2CC82C";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "L_Foot_JNT_parentConstraint1" -p "L_Foot_JNT";
	rename -uid "BA9C9EDE-411A-F736-7838-AB9A04E6A80C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Foot_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -1.7763568394002473e-15 0 ;
	setAttr ".tg[0].tor" -type "double3" 123.18865010231849 22.725348107752172 104.41318008936844 ;
	setAttr ".lr" -type "double3" -0.2230320011794874 0.11206839154157025 -0.012776369926001447 ;
	setAttr ".rst" -type "double3" 51.069068908691406 -2.4816271333966174e-14 86.994429409915981 ;
	setAttr ".rsrr" -type "double3" -0.2230320011794874 0.11206839154157025 -0.012776369926001447 ;
	setAttr -k on ".w0";
createNode joint -n "R_Foot_JNT" -p "Base_JNT";
	rename -uid "A1B51B69-4595-7AE2-90EC-9BAF161434BC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -56.630517912172799 -22.776356757902075 -104.30409083911921 ;
	setAttr ".bps" -type "matrix" -0.23134586011954905 -0.89322979944770386 0.38551215076072642 0
		 0.4463429422084535 -0.44954695308886894 -0.77374770753083044 0 0.86444032237410551 -0.0069327012865976201 0.50268764328022186 0
		 -51.069099999999999 -2.4816299999999999e-14 86.994399999999999 1;
	setAttr ".liw" yes;
createNode joint -n "R_Knee_JNT" -p "R_Foot_JNT";
	rename -uid "189F202E-423F-B295-2967-A8AB685AC72D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -132.00010310310992 -5.4068655572336866e-05 7.3633401900294326e-05 ;
	setAttr ".r" -type "double3" -1.0079867096591101e-20 6.6962628830654763e-16 1.8833439052339813e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.3586704751735112 -6.0054395849326268 -110.1151209369974 ;
	setAttr ".bps" -type "matrix" -0.24725228299759319 0.72458679572204754 0.64330419244532666 0
		 -0.2693068977434121 -0.68914885968569972 0.67271661494400403 0 0.93077392710598517 -0.0069155375174638975 0.36552985098422136 0
		 -20.531383093223013 117.90644941778807 36.106835202182026 1;
	setAttr ".liw" yes;
createNode joint -n "R_Thigh_JNT" -p "R_Knee_JNT";
	rename -uid "0F810ABA-435B-B0CA-A268-069ADA24E744";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -60.000103061515766 9.7574443572057135e-05 -3.5552518149017942e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.1642929776341147 1.608331715693341e-15 -2.8973952951505667e-16 ;
	setAttr ".bps" -type "matrix" -0.24725228299759319 0.72458679572204754 0.64330419244532666 0
		 -0.33618559345902865 -0.68682727250021303 0.64439703948770521 0 0.90876044990034588 -0.056940962541687838 0.41341525308308025 0
		 -5.6962799999999927 74.431100000000001 -2.4914300000000225 1;
	setAttr ".liw" yes;
createNode ikEffector -n "effector2" -p "R_Knee_JNT";
	rename -uid "3A21CED0-4DB1-D991-53FE-ED963978B4E4";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "R_Foot_JNT_parentConstraint1" -p "R_Foot_JNT";
	rename -uid "818F13E2-469B-CA90-22F3-5081392CAE1C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Foot_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 -1.7763568394002505e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -56.989063318721982 -22.675538885501322 -104.52049575650575 ;
	setAttr ".lr" -type "double3" -0.44219781724195695 0.22213207902154156 -0.025754524452971293 ;
	setAttr ".rst" -type "double3" -51.069099999999992 -2.4816299999999999e-14 86.9944 ;
	setAttr ".rsrr" -type "double3" -0.44219781724195695 0.22213207902154156 -0.025754524452971293 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Base_JNT_parentConstraint1" -p "Base_JNT";
	rename -uid "23B1C75D-4722-35FF-49ED-9AA0116769B6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Master_CTLW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "Master_GRP";
	rename -uid "0F453403-4AD9-6169-A84E-21BB0D8E47B6";
	setAttr ".rp" -type "double3" 0 -5.9164567891575885e-31 1.0658141036401503e-14 ;
	setAttr ".sp" -type "double3" 0 -5.9164567891575885e-31 1.0658141036401503e-14 ;
createNode transform -n "Master_CTL" -p "Master_GRP";
	rename -uid "CEA7DE0C-4860-5A4C-C312-30A80FF35B36";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Master_CTLShape" -p "Master_CTL";
	rename -uid "558B9D02-495B-0C86-3C47-87BB0ACB49A1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 11.231262231745994 1.5425466872801238e-15 
		-20.175988813641347 2.1814904457452426e-15 2.1814904457452426e-15 -35.626442616174401 
		-11.231262231745994 1.5425466872801239e-15 -20.175988813641347 -24.172346439754335 
		7.4710020118089704e-31 -1.3268214217353613e-14 -42.465684000748546 -1.5425466872801238e-15 
		54.668438545274476 -7.5415177022654412e-15 -2.181490445745243e-15 47.065460111366697 
		42.465684000748546 -1.5425466872801239e-15 54.668438545274483 24.172346439754335 
		3.3652226940074746e-31 -6.5629677403120685e-15 0 0 0 0 0 0 0 0 0;
createNode transform -n "Body_GRP" -p "Master_CTL";
	rename -uid "DA535D7D-4B41-2940-7192-D0A19D304E25";
	setAttr ".t" -type "double3" 4.6185277824406512e-14 83.10837912913739 9.9365997691714014 ;
	setAttr ".r" -type "double3" 90 -40.261934232392548 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1.0000000000000004 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002509e-15 0 ;
	setAttr ".rpt" -type "double3" 0 6.2832771772161264e-16 -1.3555341222786776e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 -3.9443045261050608e-31 0 ;
createNode transform -n "Body_CTL" -p "Body_GRP";
	rename -uid "3B7E4BD7-440C-382B-228D-E0B847DF4C57";
	addAttr -ci true -sn "L_Leg_Attachment" -ln "L_Leg_Attachment" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "R_Leg_Attachment" -ln "R_Leg_Attachment" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Tail_Attachment" -ln "Tail_Attachment" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".L_Leg_Attachment" 1;
	setAttr -k on ".R_Leg_Attachment" 1;
	setAttr -k on ".Tail_Attachment" 1;
createNode nurbsCurve -n "Body_CTLShape" -p "Body_CTL";
	rename -uid "D0454809-414B-8D80-211D-B9AD818CB331";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 7.4621157304302574 4.1081907455299715 
		-12.713295006080042 7.4621157304302557 8.3343677889400425 -1.3648284241799507e-15 
		7.4621157304302539 4.1081907455299724 12.713295006080042 7.4621157304302557 -6.0947031896603798 
		17.979314220048579 7.4621157304302539 -16.297597124850768 12.713295006080042 7.4621157304302557 
		-20.523774168260832 1.5370872583807028e-15 7.4621157304302574 -16.297597124850785 
		-12.713295006080042 7.4621157304302574 -6.0947031896603825 -17.979314220048579 0 
		0 0 0 0 0 0 0 0;
createNode transform -n "B_Mandible_GRP" -p "Body_CTL";
	rename -uid "DDB96E60-4191-A5DC-A534-DCAE7A415867";
	setAttr ".t" -type "double3" 26.193961410005294 -17.611641736676276 1.8372038777990579e-14 ;
	setAttr ".r" -type "double3" 0 0 26.604213454248391 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002501e-15 0 ;
	setAttr ".rpt" -type "double3" 7.954967200927524e-16 1.8807834077171296e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 3.9443045261050573e-31 0 ;
createNode transform -n "B_Mandible_CTL" -p "B_Mandible_GRP";
	rename -uid "0463A8CE-409D-C0DA-8DB8-5C99C22F5FF8";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "B_Mandible_CTLShape" -p "B_Mandible_CTL";
	rename -uid "37EEC223-4D41-15DA-1539-84847C0B176E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 7.9384863806200148 -12.566804260162433 
		9.7699626167013776e-15 6.3519393545743554 -14.531352162089405 8.581481274128456e-15 
		7.9384863806200219 -12.566804260162447 9.7699626167013776e-15 11.768749728242117 
		-7.8239660713986305 4.4408920985006262e-15 15.599013075864217 -3.0811278826348234 
		9.7699626167013776e-15 24.654499561518477 0.48731401096885207 7.9125432476250498e-15 
		15.599013075864207 -3.081127882634819 9.7699626167013776e-15 11.768749728242117 -7.8239660713986297 
		4.4408920985006262e-15 0 0 0 0 0 0 0 0 0;
createNode transform -n "T_Mandible_GRP" -p "Body_CTL";
	rename -uid "B8586B75-417A-25AF-3D20-DBB4D59E1151";
	setAttr ".t" -type "double3" 20.820469892060132 1.4974760242215126 1.3217337498531288e-14 ;
	setAttr ".r" -type "double3" 0 0 -1.6452311957320931 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002501e-15 0 ;
	setAttr ".rpt" -type "double3" -5.1000546795745015e-17 7.3228305096906765e-19 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 3.9443045261050573e-31 0 ;
createNode transform -n "T_Mandible_CTL" -p "T_Mandible_GRP";
	rename -uid "D030C8ED-44CA-5EE6-71BB-BB8F43E7ED38";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "T_Mandible_CTLShape" -p "T_Mandible_CTL";
	rename -uid "F4F092CC-4745-5C61-B7AE-498DE6BD50EE";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 12.681141858915428 5.5550730908684285 
		0 22.701867954162079 0.7745043355062835 -5.5057929617993619e-15 12.681141858915435 
		5.5550730908684258 0 8.8686662301809562 10.376574100582173 0 5.0561906014465272 15.198075110295939 
		0 3.4770114898078219 17.195206219514951 -4.1735978911105696e-15 5.0561906014465308 
		15.198075110295939 0 8.8686662301809562 10.376574100582173 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "R_Mandible_GRP" -p "Body_CTL";
	rename -uid "17AE4DDF-4942-47F2-6032-7D9E77854582";
	setAttr ".t" -type "double3" 16.744167764062745 -8.1242131380996057 17.445400000000024 ;
	setAttr ".r" -type "double3" 11.585550175405837 -14.988486969118048 -168.6652137291214 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002499e-15 0 ;
	setAttr ".rpt" -type "double3" -4.3247882751572929e-16 3.464447375127363e-15 -3.4460996477642602e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 5.9164567891575877e-31 0 ;
createNode transform -n "R_Mandible_CTL" -p "R_Mandible_GRP";
	rename -uid "9AAAD1B1-440A-D573-F8AB-93B8339FD642";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_Mandible_CTLShape" -p "R_Mandible_CTL";
	rename -uid "BE0C9C80-4D23-22C7-CA57-E59A1175089D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -11.601987378508445 8.4376949871511897e-15 
		8.5418407709057398 -7.7960442599777293 7.1054273576010019e-15 5.5543612004284872 
		-3.9901011414470298 8.4376949871511897e-15 2.5668816299512178 -2.4136278841310843 
		7.8548278992229825e-15 1.3294270745469952 -3.9901011414470298 7.9936057773011271e-15 
		2.5668816299512178 -7.7960442599777293 7.1054273576010019e-15 5.5543612004284846 
		-11.601987378508445 8.4376949871511897e-15 8.5418407709057398 -20.579025457063 -9.6866958898544924e-15 
		8.1076911727675363 0 0 0 0 0 0 0 0 0;
createNode transform -n "L_Mandible_GRP" -p "Body_CTL";
	rename -uid "9931F280-47B8-C34D-CD71-1E8C8201521D";
	setAttr ".t" -type "double3" 16.744187064986299 -8.1241726537107581 -17.44544126305642 ;
	setAttr ".r" -type "double3" -11.585550175405778 14.988486969118068 -168.66521372912143 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 -1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002509e-15 0 ;
	setAttr ".rpt" -type "double3" -4.3247882751572771e-16 3.4644473751273669e-15 3.4460996477642489e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 -3.9443045261050608e-31 0 ;
createNode transform -n "L_Mandible_CTL" -p "L_Mandible_GRP";
	rename -uid "AC315D9C-4C12-6B37-5773-3D902D20B94F";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Mandible_CTLShape" -p "L_Mandible_CTL";
	rename -uid "D2CC4C34-4264-81CB-8046-58A7894D80FB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-11.601987378508445 3.9180581244561314 4.6237826464496177
		-7.7960442599777293 5.5409709377719452 5.5543612004284872
		-3.9901011414470302 3.9180581244561306 6.4849397544073408
		-2.4136278841310848 8.1420728110992237e-15 6.8703980123189359
		-3.9901011414470302 -3.9180581244561146 6.4849397544073408
		-7.7960442599777293 -5.5409709377719345 5.5543612004284855
		-11.601987378508445 -3.9180581244561137 4.6237826464496177
		-20.579025457063 -1.0442316140244471e-14 2.5667202349955955
		-11.601987378508445 3.9180581244561314 4.6237826464496177
		-7.7960442599777293 5.5409709377719452 5.5543612004284872
		-3.9901011414470302 3.9180581244561306 6.4849397544073408
		;
createNode transform -n "L_Leg_GRP" -p "Master_CTL";
	rename -uid "D0DAA860-479C-EDAC-2A41-BAA3B9785B5F";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" -8.0487369755676005e-16 9.7844308119917154e-16 -1.3678287854621232e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "L_Leg_CTL" -p "L_Leg_GRP";
	rename -uid "618C6D2C-4363-F043-D912-799A1B89CB99";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg_CTLShape" -p "L_Leg_CTL";
	rename -uid "345F612F-4039-8B9B-30AE-8CB07A856A01";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode ikHandle -n "L_Leg_IK" -p "L_Leg_CTL";
	rename -uid "2DE4DB15-4F91-FD41-F9B2-AEA788E05054";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.11519124462675023 -0.91994074863006858 -1.6016500597701153 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "L_Leg_IK_poleVectorConstraint1" -p "L_Leg_IK";
	rename -uid "1B9A08E5-4F58-7E10-97D1-8FB67AD23EB6";
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
	setAttr ".rst" -type "double3" -36.998947983246843 135.70625106947247 -68.481817337057066 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Foot_GRP_parentConstraint1" -p "L_Leg_GRP";
	rename -uid "CDD97508-46D1-310B-9FE9-BBB22AC5DCAC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Body_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.0773131756561569 -13.275003426293674 -5.5810871756197331 ;
	setAttr ".tg[0].tor" -type "double3" -49.738065767607459 90 0 ;
	setAttr ".lr" -type "double3" 6.361109362927032e-15 0 0 ;
	setAttr ".rst" -type "double3" 5.5810871756197828 75.351066269386223 -0.88977621000511364 ;
	setAttr ".rsrr" -type "double3" 6.361109362927032e-15 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "R_Leg_GRP" -p "Master_CTL";
	rename -uid "390DAD45-49F0-62F8-135E-74B0D566A56C";
	setAttr ".rp" -type "double3" 0 -1.7763568394002509e-15 0 ;
	setAttr ".rpt" -type "double3" -8.0487369755676034e-16 2.5742705976013318e-15 1.367828785462123e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 -3.9443045261050608e-31 0 ;
createNode transform -n "R_Leg_CTL" -p "R_Leg_GRP";
	rename -uid "5B8B8670-4DFE-E666-D623-EF95E5F281C4";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_Leg_CTLShape" -p "R_Leg_CTL";
	rename -uid "C4272B12-4619-AE6A-B149-92AE13B5F3EC";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode ikHandle -n "R_Leg_IK" -p "R_Leg_CTL";
	rename -uid "5CB9DA67-41DC-B4E6-4193-068BE3A25E25";
	setAttr ".v" no;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "R_Leg_IK_poleVectorConstraint1" -p "R_Leg_IK";
	rename -uid "E90A4A41-48DB-A4A4-33DD-35B1D6032695";
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
	setAttr ".rst" -type "double3" 36.94639817453178 135.57142116143231 -68.349811391118649 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Foot_GRP_parentConstraint1" -p "R_Leg_GRP";
	rename -uid "9B820989-49E9-79F6-814A-EC86F5533DDE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Body_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.4104103952792486 -15.09178052932331 5.696280000000038 ;
	setAttr ".tg[0].tor" -type "double3" -49.738065767607459 90 0 ;
	setAttr ".lr" -type "double3" 6.361109362927032e-15 0 0 ;
	setAttr ".rst" -type "double3" -5.6962799999999936 74.431100000000015 -2.4914300000000167 ;
	setAttr ".rsrr" -type "double3" 6.361109362927032e-15 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Tail01_GRP" -p "Master_CTL";
	rename -uid "0EB0F46D-477A-2F12-6540-97B3361BB92F";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" -4.8856734562454458e-31 1.9732776304700562e-16 -8.1370190912585795e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "Tail01_CTL" -p "Tail01_GRP";
	rename -uid "D6678ADE-498F-793C-C042-73B84B24546C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Tail01_CTLShape" -p "Tail01_CTL";
	rename -uid "9AEA9A52-46D0-3279-0EF8-D48442CDA78E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 4.8765861280103069 2.7007319962910561 
		-2.6803466175243416 4.7931168380516471 1.3242846603704308 -2.3856095063994146e-15 
		4.876586128010298 2.7007319962910508 2.6803466175242803 6.6883097460408409 0.27398100849959456 
		3.7905825383636929 8.5000333640713865 -2.1527699792918891 2.6803466175242803 9.2504738579312935 
		-3.1579631509374337 -1.56313741072359e-14 8.5000333640713936 -2.1527699792918824 
		-2.6803466175243416 6.6883097460408409 0.27398100849958706 -3.790582538363771 0 0 
		0 0 0 0 0 0 0;
createNode transform -n "Tail02_GRP" -p "Tail01_CTL";
	rename -uid "23D76576-4C42-10C2-811E-7580FD36805B";
	setAttr ".t" -type "double3" 12.206659767959053 0 -6.1704520160095798e-15 ;
	setAttr ".r" -type "double3" 0 0 -57.359019534926013 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002501e-15 0 ;
	setAttr ".rpt" -type "double3" -1.4958111708485599e-15 8.1823755556931372e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 3.9443045261050573e-31 0 ;
createNode transform -n "Tail02_CTL" -p "Tail02_GRP";
	rename -uid "8475E9D5-4FDA-B3B7-6807-9680C735D8DF";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Tail02_CTLShape" -p "Tail02_CTL";
	rename -uid "0685F799-4B8A-EEC8-8F0E-31BF2CEA94EB";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 2.9372111674905343 0.50932925860716693 
		1.3766765505351941e-14 4.1883192086622323 0.9485085906066022 1.2466512438732863e-14 
		2.9372111674905343 0.50932925860717138 1.3766765505351941e-14 -0.083230833500193224 
		0.75076189643420421 1.4210854715202004e-14 -1.4695986335368281 6.1698533224360572 
		1.3766765505351941e-14 2.4915532403685869 11.538370291608182 1.2409625063903169e-14 
		-1.4695986335368281 6.1698533224360519 1.3766765505351941e-14 -0.083230833500191448 
		0.75076189643420288 1.4210854715202004e-14 0 0 0 0 0 0 0 0 0;
createNode transform -n "Tail03_GRP" -p "Tail02_CTL";
	rename -uid "327BFE8F-4BB7-9070-B283-CDA100F39F02";
	setAttr ".t" -type "double3" 16.060678770771418 1.4210854715202004e-14 -1.2469558585861912e-14 ;
	setAttr ".r" -type "double3" 0 0 -24.019604568232701 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" -7.2306463371294929e-16 1.5382142950695458e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "Tail03_CTL" -p "Tail03_GRP";
	rename -uid "762373AE-4A3A-2703-6EC1-168EF2E54990";
	setAttr -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "Tail03_CTLShape" -p "Tail03_CTL";
	rename -uid "2DB0D7C0-4B58-1A8B-E577-BC96451F9149";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 3.1871122948307198 2.3351889454403301 
		0 4.6840489174552724 2.1736055901434348 -4.7794983852738329e-16 3.1871122948307162 
		2.335188945440331 0 -0.71042467696225586 5.9033900993083126 0 -4.684048917455284 
		10.324210502632891 0 -1.4397302398269849 12.400251046045405 -8.5263027241475901e-16 
		-4.6840489174552822 10.324210502632891 0 -0.71042467696225575 5.9033900993083117 
		0 0 0 0 0 0 0 0 0 0;
createNode transform -n "Tail04_GRP" -p "Tail03_CTL";
	rename -uid "AFED0750-4F07-FEAC-DA31-2290F7232665";
	setAttr ".t" -type "double3" 36.07794749094073 7.9936057773011271e-14 1.6128049339935888e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999889 0.99999999999999989 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "Tail04_CTL" -p "Tail04_GRP";
	rename -uid "AB14555F-49AB-940D-F294-AE916046F0E9";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Tail04_CTLShape" -p "Tail04_CTL";
	rename -uid "508EFDE6-45C1-8F0B-FCCB-38A3048D472D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.1871122948307202 6.2532470698964531 -3.9180581244561226
		4.6840489174552724 7.7145765279153728 -8.1723645468292889e-16
		3.1871122948307158 6.2532470698964531 3.9180581244561226
		-0.7104246769622562 5.9033900993083126 5.5409709377719407
		-4.684048917455284 6.4061523781767686 3.9180581244561226
		-1.4397302398269849 6.8592801082734631 -2.9758742393459773e-16
		-4.6840489174552822 6.4061523781767686 -3.9180581244561226
		-0.71042467696225542 5.9033900993083108 -5.5409709377719407
		3.1871122948307202 6.2532470698964531 -3.9180581244561226
		4.6840489174552724 7.7145765279153728 -8.1723645468292889e-16
		3.1871122948307158 6.2532470698964531 3.9180581244561226
		;
createNode parentConstraint -n "Tail02_GRP_parentConstraint1" -p "Tail01_GRP";
	rename -uid "2DE849A7-449B-4333-E736-75AC90C88587";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Body_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.4889926779029162e-14 -2.2957715822003248e-14 
		2.1316282072803002e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 179.99999999999994 22.475205190922715 ;
	setAttr ".lr" -type "double3" 89.999999999999915 62.737139423315263 89.999999999999901 ;
	setAttr ".rst" -type "double3" 2.48689957516035e-14 83.108379129137361 9.9365997691713943 ;
	setAttr ".rsrr" -type "double3" 89.999999999999915 62.737139423315263 89.999999999999901 ;
	setAttr -k on ".w0";
createNode transform -n "R_Leg_POL" -p "Master_CTL";
	rename -uid "224580E0-45D8-10C4-3EA4-599CDC2F9D50";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -11.886191066293897 135.57142116143228 19.536235660414849 ;
	setAttr ".sp" -type "double3" -11.886191066293897 135.57142116143228 19.536235660414849 ;
createNode mesh -n "R_Leg_POLShape" -p "R_Leg_POL";
	rename -uid "C9E6A9A5-48A7-4CB7-005D-5EACDFC3733D";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -11.886191 135.57143 19.536236 
		-11.886191 135.57143 19.536236 -11.886191 135.57143 19.536236 -11.886191 135.57143 
		19.536236 -11.886191 135.57143 19.536236 -11.886191 135.57143 19.536236 -11.886191 
		135.57143 19.536236 -11.886191 135.57143 19.536236;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
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
createNode transform -n "L_Leg_POL" -p "Master_CTL";
	rename -uid "47E53CD9-4441-9E53-CA4D-0B8EF9AB4210";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 12.070297902551081 135.70625106947244 19.309896992968149 ;
	setAttr ".sp" -type "double3" 12.070297902551081 135.70625106947244 19.309896992968149 ;
createNode mesh -n "L_Leg_POLShape" -p "L_Leg_POL";
	rename -uid "6B14FCA5-4885-C577-751A-7CA2CDD972C6";
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
createNode transform -n "L_Foot_GRP" -p "Master_CTL";
	rename -uid "4A569CFA-4688-40C3-1745-75A1D895AFC8";
	setAttr ".t" -type "double3" -51.0691 -2.401838624179892e-14 86.9944 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" -8.0487369755676005e-16 9.7844308119917154e-16 -1.3678287854621232e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "L_Foot_CTL" -p "L_Foot_GRP";
	rename -uid "C91D766C-4A44-E009-B7DA-9896D008AD3A";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Foot_CTLShape" -p "L_Foot_CTL";
	rename -uid "C4B830F2-4AC9-223E-A84B-DF926D4640BB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.9180581244561226 2.7704853987591256e-05 -2.7704854688859708
		3.392866161555456e-16 3.9180580253391547e-05 -3.9180581244561212
		-3.9180581244561226 2.7704853987591252e-05 -2.7704854688859699
		-5.5409709377719407 -1.3849475003920345e-15 -2.0311282504902267e-16
		-3.9180581244561226 -2.7704853990361148e-05 2.7704854688859704
		6.5503845091208403e-15 -3.9180580256161453e-05 7.0986176599305821
		3.9180581244561226 -2.7704853990361148e-05 2.7704854688859699
		5.5409709377719407 -1.3849548745621292e-15 5.3430420305263153e-16
		3.9180581244561226 2.7704853987591256e-05 -2.7704854688859708
		3.392866161555456e-16 3.9180580253391547e-05 -3.9180581244561212
		-3.9180581244561226 2.7704853987591252e-05 -2.7704854688859699
		;
createNode transform -n "R_Foot_GRP" -p "Master_CTL";
	rename -uid "36008AD7-4D66-0849-A49D-1DA64FEE9C8D";
	setAttr ".t" -type "double3" 51.069068908691406 -2.561418509216726e-14 86.994429409915981 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002509e-15 0 ;
	setAttr ".rpt" -type "double3" -8.0487369755676034e-16 2.5742705976013318e-15 1.367828785462123e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 -3.9443045261050608e-31 0 ;
createNode transform -n "R_Foot_CTL" -p "R_Foot_GRP";
	rename -uid "4C9205E1-4E68-1632-B601-03BA18DC3A75";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_Foot_CTLShape" -p "R_Foot_CTL";
	rename -uid "48C3C9B4-4869-F97A-BD30-2DBDBB553A70";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.9180581244561226 2.7704853987591225e-05 -2.7704854688859708
		3.392866161555456e-16 3.9180580253391493e-05 -3.9180581244561212
		-3.9180581244561226 2.7704853987591225e-05 -2.7704854688859699
		-5.5409709377719407 -1.3849761661391958e-15 -2.0311282504902267e-16
		-3.9180581244561226 -2.7704853990361162e-05 2.7704854688859704
		-5.5504284848016127e-16 -3.9180580256161453e-05 7.4082656217622826
		3.9180581244561226 -2.7704853990361162e-05 2.7704854688859699
		5.5409709377719407 -1.3849835403092905e-15 5.3430420305263153e-16
		3.9180581244561226 2.7704853987591225e-05 -2.7704854688859708
		3.392866161555456e-16 3.9180580253391493e-05 -3.9180581244561212
		-3.9180581244561226 2.7704853987591225e-05 -2.7704854688859699
		;
createNode transform -n "Spider_Hunter_MOD_MASTER:Hunter_GEO";
	rename -uid "120C4603-4322-60A0-8D3C-C793D74F97E7";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 60.857582092285156 13.992650985717775 ;
	setAttr ".sp" -type "double3" 0 60.857582092285156 13.992650985717775 ;
createNode mesh -n "Spider_Hunter_MOD_MASTER:Hunter_GEOShape" -p "Spider_Hunter_MOD_MASTER:Hunter_GEO";
	rename -uid "82A59C0F-43B1-9E34-51F7-C0867C4FDAB0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1186]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.15702800452709198 0.49408236145973206 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1445 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.24503273 0.19748837 0.23762703
		 0.21832633 0.1984672 0.21933675 0.20253474 0.19858509 0.15783083 0.45016462 0.15717882
		 0.45107961 0.15349811 0.45099771 0.15347666 0.44987214 0.16420478 0.66305089 0.16503131
		 0.68135309 0.16226083 0.68314517 0.16131967 0.66313541 0.30334219 0.68100959 0.27390999
		 0.71313989 0.29180738 0.66148233 0.16272551 0.43662357 0.15856224 0.43670505 0.15373951
		 0.4659248 0.15801162 0.46581995 0.16663706 0.46207184 0.15764302 0.43672085 0.16115612
		 0.68330646 0.16068423 0.66315889 0.2248067 0.77292216 0.20798936 0.77524316 0.17527968
		 0.69761872 0.17785013 0.69946563 0.181337 0.21978322 0.18385315 0.19907069 0.14751595
		 0.2206603 0.14697486 0.20002741 0.15316772 0.43682271 0.15672535 0.66323578 0.15702915
		 0.68334723 0.19268385 0.78964269 0.15863901 0.7894839 0.25978866 0.72912037 0.048919022
		 0.20262906 0.091415584 0.20149657 0.096565187 0.22200665 0.05740732 0.22305009 0.14913779
		 0.45033807 0.14982408 0.45122313 0.14924389 0.66327715 0.15213013 0.66327441 0.15179402
		 0.68330359 0.14897072 0.68159616 0.041103363 0.71665967 0.010713816 0.68543363 0.021652937
		 0.6655668 0.14361173 0.43710983 0.14777428 0.43697786 0.1494661 0.46595335 0.14072973
		 0.46247083 0.1486935 0.43694752 0.15276611 0.6632787 0.1529029 0.68343139 0.091998994
		 0.77493787 0.1367057 0.7000885 0.13921899 0.69816494 0.10887909 0.77674747 0.11369503
		 0.22155482 0.11009693 0.20100328 0.12461436 0.79067636 0.055700898 0.73220611 0.24029025
		 0.4044171 0.28245661 0.40520084 0.28663981 0.42575723 0.24778585 0.42503574 0.32861051
		 0.65445781 0.33292857 0.65411949 0.33291808 0.65523732 0.32926944 0.65535653 0.32464945
		 0.86571926 0.32751241 0.86577088 0.32680163 0.88563007 0.3240335 0.88388354 0.21638568
		 0.91663575 0.18683062 0.8850919 0.19805421 0.86559176 0.32364851 0.64105469 0.32777834
		 0.64110231 0.33283824 0.67005509 0.32859951 0.66999835 0.32000002 0.66637927 0.32869035
		 0.64111018 0.32814303 0.86578709 0.32789919 0.88577849 0.26576582 0.97538918 0.31152108
		 0.9019962 0.3140507 0.90013409 0.28247461 0.97750205 0.30363667 0.42607737 0.30099323
		 0.40554821 0.3375845 0.40623367 0.3371945 0.42670557 0.33313078 0.64117736 0.33207092
		 0.86581928 0.33199346 0.88577235 0.29781842 0.99161321 0.33158568 0.99107355 0.23057275
		 0.93232989 0.43487763 0.40812197 0.42660102 0.4284395 0.38774902 0.42768031 0.39271289
		 0.40729785 0.33723846 0.654549 0.33656248 0.6554293 0.33949271 0.86577672 0.33996767
		 0.88394481 0.3371861 0.88566977 0.33662954 0.86580616 0.47715601 0.88622308 0.44735655
		 0.91753519 0.46608436 0.86663616 0.34261212 0.64139611 0.33848241 0.64129287 0.33707765
		 0.67003727 0.3457076 0.6664899 0.33757049 0.64126861 0.33608741 0.88580972 0.33599868
		 0.86581761 0.39752504 0.97589976 0.38080049 0.97788316 0.34982401 0.90027243 0.35233927
		 0.90215409 0.37075257 0.42735308 0.37417591 0.40694028 0.36534771 0.99187499 0.43304795
		 0.93311822 0.51394075 0.78646779 0.50014615 0.84774959 0.47996217 0.84047079 0.49113309
		 0.77919817 0.50426733 0.51759094 0.51092398 0.58080423 0.49480247 0.58484548 0.48896915
		 0.51986951 0.46261984 0.82228553 0.47828901 0.77326047 0.47559163 0.59522665 0.46480906
		 0.54103291 0.44038188 0.79582548 0.46069622 0.75877064 0.50141418 0.73091853 0.51606172
		 0.73691756 0.52054012 0.63322234 0.50851411 0.63697433 0.49215996 0.72444868 0.49593461
		 0.64474106 0.48313567 0.71643764 0.52603453 0.5797509 0.53034449 0.58138418 0.53087044
		 0.63241458 0.52708519 0.63259089 0.52657121 0.51272047 0.53061616 0.51418149 0.52887559
		 0.78686887 0.52446902 0.78794986 0.52469885 0.7377454 0.52914995 0.73651958 0.52889872
		 0.84804183 0.52445567 0.8493011 0.53152955 0.68231177 0.53103304 0.68261302 0.52782828
		 0.68106174 0.52745938 0.68044293 0.55302626 0.78658473 0.57587773 0.77945262 0.58666748
		 0.84079933 0.56643856 0.84795386 0.5647049 0.51804233 0.57997102 0.52055782 0.57301915
		 0.58549935 0.55697691 0.58118176 0.58875817 0.77359349 0.60412276 0.82272017 0.60376632
		 0.54216808 0.59203172 0.59623694 0.6064412 0.75921261 0.62652463 0.79639721 0.55120975
		 0.73700988 0.5658946 0.73109239 0.55838054 0.63740999 0.54643095 0.63344002 0.57519287
		 0.72467822 0.57078773 0.64545155 0.58427471 0.71672434 0.54189116 0.57987857 0.53990054
		 0.63269711 0.53611809 0.63245749 0.53755391 0.58144212 0.53840357 0.51424062 0.54247141
		 0.51284045 0.53808963 0.78689647 0.53812134 0.73654127 0.5425669 0.73779124 0.54248935
		 0.78800386 0.54211998 0.84935552 0.53768492 0.84806895 0.53926265 0.68047714 0.53889501
		 0.68109262 0.53574765 0.68260717 0.53522825 0.68231893 0.43388456 0.56555748 0.43326858
		 0.56609845 0.43195143 0.55426931 0.43272895 0.55453026 0.45342505 0.60747063 0.45290327
		 0.60818982 0.48877531 0.65435261 0.48854244 0.65532303 0.50309712 0.48469907 0.50264668
		 0.48397925 0.52693373 0.46843112 0.52709323 0.46920109 0.48728275 0.50091356 0.48663729
		 0.50041741 0.46125555 0.52254176 0.46065658 0.52198404 0.49898341 0.48216757 0.49790516
		 0.48196483 0.52501798 0.46618396 0.52571517 0.46667689 0.47104245 0.50223297 0.46950418
		 0.50243932 0.45125267 0.52214593 0.44994691 0.52236283 0.42776218 0.55164051 0.42702365
		 0.55159438 0.5062893 0.68200779 0.50600296 0.68272901 0.52426475 0.6825285 0.52437931
		 0.68170893 0.52704 0.68215525 0.52658498 0.68289328 0.51764381 0.68238294 0.51771384
		 0.68154955 0.51266968 0.68253994 0.51300645 0.68186843 0.5256269 0.68130672 0.52559638
		 0.68046546 0.52730286 0.68135357 0.51928937 0.68136144 0.51924878 0.68058491 0.51247603
		 0.68166876 0.51257944 0.68097758 0.50537378 0.68333578 0.50586128 0.68311787 0.53413165
		 0.51558673;
	setAttr ".uvst[0].uvsp[250:499]" 0.53486651 0.51559269 0.53434342 0.58208358
		 0.53354359 0.58207726 0.53441697 0.46764129 0.53521258 0.46764299 0.53388524 0.63271314
		 0.53310043 0.63270664 0.53377753 0.68277311 0.532987 0.68277144 0.53390568 0.68364388
		 0.53535432 0.6832608 0.53306496 0.68364918 0.53397745 0.68401003 0.53310317 0.68400669
		 0.53148258 0.68328822 0.53424454 0.68469286 0.53540903 0.68398118 0.5357843 0.68470085
		 0.53311908 0.68469369 0.5340606 0.73844713 0.53320324 0.7384451 0.5311473 0.68475235
		 0.53149009 0.68402886 0.5338977 0.78847539 0.53305769 0.78847283 0.53370667 0.84952003
		 0.53286779 0.84951741 0.53355527 0.9010185 0.53269684 0.90101588 0.53531331 0.46360567
		 0.53537959 0.46279585 0.53912127 0.46360034 0.53904259 0.46443284 0.53437006 0.46359921
		 0.53525668 0.4666734 0.53438473 0.46666783 0.53432256 0.46277809 0.53062987 0.46437007
		 0.53056288 0.46353608 0.53874457 0.46738389 0.53842658 0.46833703 0.5311954 0.46828559
		 0.53088939 0.46732768 0.63485515 0.5678758 0.63425624 0.56733096 0.63563764 0.55629951
		 0.63638985 0.55605668 0.61448395 0.60962534 0.61397523 0.60889655 0.57791841 0.65627199
		 0.57770777 0.65528822 0.56678104 0.48443133 0.56632185 0.48514593 0.54251724 0.4693101
		 0.54268599 0.46854198 0.58257437 0.50112224 0.58193839 0.5016132 0.60827625 0.52317727
		 0.60766613 0.5237236 0.57154536 0.48247764 0.57046533 0.48266518 0.54392451 0.46680364
		 0.54462671 0.46631956 0.59984362 0.5034138 0.59818715 0.50321805 0.61901951 0.52374434
		 0.61780351 0.52353364 0.5422973 0.68176961 0.54240072 0.68259001 0.54012573 0.68292141
		 0.53967363 0.68218267 0.54890943 0.68169081 0.54896677 0.68252134 0.55361074 0.68206072
		 0.55397022 0.68272328 0.54110581 0.680516 0.54106742 0.6813544 0.53941435 0.68138528
		 0.54739046 0.68070227 0.54734451 0.68147922 0.55399877 0.68115616 0.55412114 0.68184745
		 0.64137065 0.55349338 0.64063096 0.55352437 0.56064105 0.68331516 0.56111807 0.68353903
		 0.56023246 0.68223047 0.56049687 0.68290776 0.4491626 0.6129595 0.42825118 0.56892085
		 0.50044292 0.8832047 0.47469082 0.85965359 0.45645428 0.83860862 0.43544513 0.80632204
		 0.48785537 0.65785056 0.51287216 0.68481982 0.52233297 0.68595684 0.50614226 0.68380904
		 0.49636096 0.6806308 0.52939963 0.90090537 0.52473962 0.90226829 0.5250845 0.68613315
		 0.53102952 0.68478286 0.61813855 0.61446303 0.63982272 0.57078671 0.59178197 0.8598786
		 0.56591988 0.88340765 0.61018711 0.839082 0.631396 0.80692494 0.57854038 0.65884286
		 0.5451315 0.68599313 0.55469149 0.68490541 0.56149757 0.68393445 0.5714314 0.68077409
		 0.5415045 0.9023205 0.53685313 0.90092862 0.53635389 0.6847887 0.54235309 0.68615788
		 0.025272384 0.060426891 0.031434 0.048718005 0.037600011 0.052527577 0.037711293
		 0.052788794 0.034992158 0.058729172 0.034669608 0.058816999 0.023236275 0.060343504
		 0.029938877 0.048651874 0.041168123 0.07520774 0.04085502 0.075712353 0.037789911
		 0.076320499 0.042310596 0.038185209 0.040139347 0.036879122 0.034709871 0.076927006
		 0.021514043 0.060174137 0.028698981 0.04854247 0.22363079 0.14491618 0.21131855 0.14419907
		 0.2429384 0.1144906 0.2362482 0.13057825 0.25485221 0.13253203 0.25886896 0.14117959
		 0.25898051 0.1414946 0.25563619 0.14710578 0.25535807 0.14716288 0.24871889 0.14425147
		 0.24781474 0.14305869 0.25362566 0.13090423 0.23185685 0.16719007 0.23394632 0.16848451
		 0.27605051 0.13722333 0.27379236 0.13092747 0.2439197 0.15813604 0.24622798 0.15918145
		 0.25250682 0.12958339 0.24701962 0.14210057 0.044462889 0.03971824 0.044631779 0.040132076
		 0.043526858 0.02343604 0.044013202 0.032315463 0.044779658 0.039696634 0.24914944
		 0.15998754 0.24871287 0.16008312 0.23478159 0.16855329 0.24887487 0.16035625 0.24236411
		 0.16391489 0.20505929 0.021065414 0.20645693 0.076964676 0.27516562 0.07826525 0.2752645
		 0.018223673 0.10964152 0.025703967 0.11108083 0.076973587 0.06092748 0.021397948
		 0.061708897 0.0771963 0.20949745 0.064765096 0.20935577 0.064212233 0.27342695 0.066320717
		 0.27340186 0.066858411 0.11433169 0.064667374 0.11415058 0.064104199 0.060388535
		 0.065818667 0.060287207 0.065259814 0.19815907 0.049716234 0.1977559 0.049161494
		 0.27355385 0.047293812 0.2735669 0.047841579 0.10241812 0.052010626 0.10187188 0.051418334
		 0.058378905 0.052195996 0.05815509 0.051622748 0.19450834 0.036557227 0.19464228
		 0.035987496 0.27165675 0.034258306 0.27172023 0.034807026 0.098173976 0.038836539
		 0.098320514 0.038255483 0.054215342 0.039187342 0.054218084 0.038643688 0.048689753
		 0.039623469 0.048524529 0.039166182 0.05093348 0.021780133 0.0510827 0.076409698
		 0.053518504 0.051812768 0.053411067 0.051241189 0.0519391 0.065403342 0.052037507
		 0.064875096 0.050403386 0.050878406 0.050585747 0.051414311 0.047235221 0.063891262
		 0.046971977 0.064411938 0.27334154 0.034453332 0.27331907 0.035011858 0.27754641
		 0.077873886 0.27944165 0.019119948 0.2758733 0.066139638 0.27590078 0.06660375 0.29278326
		 0.032263011 0.29254448 0.032445878 0.28972 0.025386512 0.29022682 0.025198907 0.2949065
		 0.03358236 0.29462093 0.033872128 0.29633725 0.035983443 0.29670924 0.035493582 0.30091327
		 0.038704693 0.30041724 0.038960099 0.27521861 0.047268838 0.27535796 0.047770053
		 0.28549659 0.038633555 0.28528541 0.038895994 0.27925664 0.036611557 0.2794283 0.036140233
		 0.28607744 0.040018827 0.28576952 0.040234447 0.28610432 0.041567296 0.28646517 0.041424602
		 0.28811014 0.042094707 0.28774095 0.042395264 0.28041512 0.077377617 0.28477389 0.020542026
		 0.27535146 0.034874737 0.27529442 0.035421968 0.27752095 0.047111452 0.27746236 0.047606826
		 0.27902526 0.04925105 0.27884942 0.049657822 0.28092593 0.051433563 0.28073561 0.051860452
		 0.27853507 0.0649997 0.30523747 0.020928055 0.28126937 0.067404151 0.30935991 0.023654401;
	setAttr ".uvst[0].uvsp[500:749]" 0.2831943 0.069259882 0.31286591 0.025155514
		 0.2899003 0.042880356 0.28952056 0.043246239 0.30378574 0.040211767 0.30319899 0.040479869
		 0.28691638 0.05679974 0.28680545 0.057375312 0.28286099 0.053971291 0.28303766 0.053525627
		 0.37274021 0.12636667 0.37238616 0.12679368 0.43294728 0.17326611 0.43277049 0.17381853
		 0.2885499 0.073816508 0.32119668 0.030406803 0.31605905 0.026959449 0.28512645 0.070981175
		 0.36627328 0.13904363 0.39826989 0.1008451 0.43245685 0.17989975 0.45098794 0.15813053
		 0.29450864 0.045940369 0.2939871 0.046238571 0.29122281 0.044284701 0.29162985 0.04394117
		 0.38077998 0.12013614 0.3802411 0.12040234 0.43824124 0.16790384 0.43774986 0.16821289
		 0.31119633 0.045338362 0.31056815 0.045486599 0.30602026 0.042233169 0.30662173 0.041981995
		 0.39311218 0.11305517 0.39274275 0.11346722 0.44636679 0.16348392 0.44588304 0.16378009
		 0.52152932 0.23958689 0.52136815 0.24018955 0.51960421 0.2388742 0.51980591 0.23832214
		 0.52325308 0.24096894 0.52311015 0.24157453 0.52507269 0.24242204 0.52495217 0.24304193
		 0.52088702 0.24519467 0.53073049 0.23302543 0.52923703 0.2315101 0.51914382 0.24392927
		 0.52266741 0.24655062 0.53244543 0.23434025 0.52445924 0.24793768 0.53422153 0.23574227
		 0.52414846 0.23672026 0.52359533 0.23699689 0.52201116 0.23585165 0.52259147 0.23556942
		 0.5256561 0.23807102 0.5251379 0.23836392 0.5273385 0.23944855 0.52682912 0.23975384
		 0.52826202 0.23562366 0.52773368 0.23587042 0.52631843 0.23455334 0.52683842 0.23427975
		 0.52989697 0.23683858 0.52931905 0.23710257 0.53161919 0.23815328 0.53103435 0.23841161
		 0.52056134 0.23409343 0.51999402 0.23434031 0.5176872 0.2366659 0.51745832 0.23717982
		 0.51677263 0.24237132 0.5272845 0.22961658 0.5249548 0.23258424 0.524459 0.23288596
		 0.58288383 0.28739381 0.58267593 0.28792137 0.65596759 0.34371638 0.65573835 0.34422755
		 0.71739781 0.3902905 0.71706951 0.39073229 0.58118868 0.29282665 0.59131002 0.28014725
		 0.6545707 0.34737873 0.66151881 0.33861506 0.71610177 0.39246905 0.71585345 0.39296865
		 0.58873284 0.28263062 0.58825171 0.28294361 0.65992641 0.34019923 0.65947211 0.34053361
		 0.7198745 0.38778269 0.71951544 0.38820004 0.58491409 0.28464156 0.58445263 0.28498441
		 0.65748799 0.34177959 0.65705621 0.34214157 0.71861577 0.38908982 0.71820319 0.38946664
		 0.045262575 0.040082693 0.042028964 0.075016469 0.37100649 0.27256739 0.32411847
		 0.30296049 0.36150026 0.36244556 0.41088307 0.32849979 0.31713307 0.19387713 0.27403641
		 0.22168407 0.2893562 0.15302825 0.24295053 0.18401089 0.36214781 0.28219891 0.36268401
		 0.28200406 0.40051371 0.33358192 0.40009046 0.33391881 0.3082692 0.20369819 0.30883574
		 0.2035287 0.27872434 0.15862575 0.27924135 0.15839198 0.34318286 0.28113285 0.34384948
		 0.28114662 0.38507038 0.3445186 0.38461447 0.34481898 0.29086888 0.20075244 0.29166579
		 0.20086744 0.26628849 0.16460225 0.26688614 0.16446 0.33055651 0.28598282 0.33095169
		 0.28555056 0.37328428 0.35030222 0.37279499 0.35055494 0.2780056 0.20526165 0.27840161
		 0.20481679 0.25337103 0.16872299 0.25381604 0.16841003 0.37559247 0.37040114 0.37571591
		 0.37092352 0.36914274 0.37006012 0.36876059 0.36895913 0.38534153 0.37015796 0.38542151
		 0.36976042 0.38814038 0.3699933 0.38794273 0.37057385 0.39290106 0.37167776 0.39296776
		 0.3722313 0.37906754 0.35552889 0.3787787 0.35593712 0.37541461 0.35326773 0.37583303
		 0.35291415 0.38573557 0.35926697 0.38574058 0.35889119 0.38703126 0.3584168 0.3871159
		 0.35879618 0.38863617 0.35930353 0.38859564 0.35977799 0.25056639 0.16373971 0.25103652
		 0.16361561 0.2826747 0.14471212 0.23761448 0.17557728 0.26328126 0.16090983 0.26381227
		 0.16067344 0.27372396 0.15204376 0.27410269 0.15166301 0.26181906 0.1584844 0.26127434
		 0.15863863 0.27046514 0.14813301 0.27018583 0.14864507 0.36458227 0.36536804 0.41191864
		 0.33067697 0.37436712 0.35150921 0.37391901 0.35183787 0.40172708 0.33578587 0.40133512
		 0.33604091 0.38603628 0.34604731 0.3855496 0.34621283 0.38711977 0.34787568 0.38674206
		 0.34820333 0.38958943 0.34785917 0.38935685 0.34823677 0.3924638 0.34815696 0.39222598
		 0.34855884 0.38045752 0.38561514 0.40192044 0.33888584 0.38498515 0.38763273 0.4054662
		 0.33974332 0.38822976 0.38960359 0.40810066 0.34026718 0.3903411 0.3602891 0.39025241
		 0.36080897 0.39571995 0.37311167 0.39582455 0.37374669 0.40042961 0.34999964 0.40003121
		 0.35041961 0.39514172 0.34910175 0.395401 0.34870043 0.50595748 0.38142115 0.50580478
		 0.38195479 0.57883549 0.40472281 0.57848567 0.40519011 0.3973622 0.39358816 0.41490996
		 0.34209931 0.41063762 0.34086847 0.39154863 0.39125678 0.49904644 0.41747636 0.51255971
		 0.36941606 0.5761044 0.42859465 0.58362192 0.40102085 0.39534062 0.36225659 0.39538637
		 0.36285585 0.39210325 0.36163062 0.39215815 0.36110061 0.50513649 0.39152747 0.50522214
		 0.39212596 0.57705909 0.41200274 0.57708347 0.41258341 0.40398329 0.3763513 0.40419972
		 0.37696776 0.39887315 0.37508047 0.39874786 0.37444362 0.50644916 0.40576342 0.50631642
		 0.40630141 0.57796335 0.42121017 0.57798648 0.42178059 0.68386424 0.44083235 0.68343079
		 0.44129536 0.68138087 0.44054955 0.68173575 0.44007972 0.68602431 0.44151396 0.68558967
		 0.44196668 0.68827665 0.4423199 0.68781626 0.44273537 0.68239528 0.45246345 0.6876877
		 0.43757233 0.68555671 0.43681988 0.68045992 0.45198867 0.68435854 0.45326015 0.68995571
		 0.43840796 0.68653464 0.45406604 0.69222796 0.43938842 0.68242389 0.44443777 0.6824944
		 0.44504902 0.68065351 0.44436586 0.68055964 0.44373044 0.6844098 0.4449842 0.68442762
		 0.44558179 0.68643332 0.44565532 0.6864171 0.4462522 0.6835981 0.44852152 0.68363953
		 0.44909918;
	setAttr ".uvst[0].uvsp[750:999]" 0.68181235 0.44858989 0.68178505 0.44801319
		 0.68539476 0.44921979 0.68543887 0.44985244 0.68732339 0.44998693 0.68737495 0.45060831
		 0.678101 0.44285896 0.67822766 0.44347069 0.67902768 0.43918377 0.67871714 0.43966222
		 0.67811185 0.45144907 0.68286306 0.43571547 0.67941552 0.44732979 0.67943251 0.44792327
		 0.75598449 0.46984631 0.7556327 0.47029141 0.84146982 0.50449806 0.84113908 0.50496155
		 0.91258824 0.53394371 0.91237271 0.53445011 0.75362486 0.48123035 0.75946069 0.46608812
		 0.839544 0.51232219 0.84359533 0.50190383 0.91097176 0.53893179 0.91359842 0.53223115
		 0.75449693 0.47717798 0.75446916 0.47775158 0.84016514 0.5095824 0.84010482 0.51015431
		 0.91163814 0.53733402 0.91145945 0.53785473 0.7543453 0.47286412 0.75428075 0.47343573
		 0.84033233 0.50669122 0.84023821 0.50724685 0.91206837 0.5355615 0.91195166 0.53610808
		 0.24946705 0.16053489 0.27638289 0.13804117 0.11271012 0.070709527 0.20801076 0.070739776
		 0.19613966 0.042991787 0.10011733 0.045258313 0.10391575 0.032063514 0.19976324 0.02861011
		 0.28918153 0.035671264 0.29042375 0.037586033 0.056996793 0.030349374 0.056771219
		 0.045438409 0.060811937 0.071408153 0.044713736 0.069095194 0.27320683 0.02623871
		 0.27431321 0.072414637 0.27218968 0.041199654 0.29581219 0.025283188 0.28287178 0.029980838
		 0.27962106 0.041071713 0.28102195 0.044962376 0.28258449 0.046958685 0.29097486 0.039477319
		 0.29369211 0.03985402 0.30122077 0.026237726 0.3056832 0.029345632 0.28973246 0.05290848
		 0.37558091 0.12411946 0.30219567 0.045561045 0.38665426 0.1168431 0.31711316 0.03586638
		 0.39633536 0.1054526 0.52233505 0.23860353 0.52397311 0.23998398 0.52591848 0.2363053
		 0.52746451 0.23763597 0.52979219 0.23401839 0.53148639 0.23528022 0.43476498 0.17135829
		 0.44924152 0.16015142 0.44199836 0.16587484 0.51856697 0.23579395 0.5264082 0.23074371
		 0.52246535 0.23348981 0.59033501 0.28108621 0.66091681 0.33921385 0.58655441 0.28380668
		 0.658463 0.34116709 0.58347702 0.28648239 0.6563791 0.34312111 0.71770227 0.38997912
		 0.72029948 0.38718271 0.71905804 0.38865244 0.52065992 0.23740768 0.52833283 0.2325592
		 0.52443516 0.23502904 0.52573478 0.24141395 0.53323722 0.23664987 0.52916443 0.23894525
		 0.27664435 0.072006375 0.29663032 0.019571304 0.27556437 0.026640683 0.27826792 0.027384073
		 0.27365911 0.041407585 0.27564222 0.041703403 0.29594475 0.04104653 0.28447151 0.048867196
		 0.30901986 0.030801684 0.29820335 0.042446226 0.28643423 0.050505996 0.31215495 0.032579899
		 0.049084872 0.031206727 0.050867707 0.070689648 0.051903844 0.04524222 0.048456728
		 0.045338035 0.36676151 0.27738607 0.31289539 0.19877002 0.33718291 0.28327578 0.28479737
		 0.20278919 0.32736152 0.29435557 0.27605516 0.21337456 0.38616294 0.36422393 0.3880406
		 0.36361575 0.24810964 0.17571187 0.26041213 0.16696966 0.28408244 0.15557164 0.27303621
		 0.14361557 0.36702275 0.35629848 0.40559155 0.33114105 0.37882686 0.34711564 0.37453264
		 0.37922981 0.378894 0.3754788 0.38270795 0.37940928 0.37084499 0.3598412 0.37560451
		 0.36220959 0.3869651 0.35230601 0.38295996 0.35333443 0.38121849 0.34968901 0.3894974
		 0.35247058 0.38987827 0.36564106 0.38777062 0.3814317 0.5055638 0.3855741 0.39843541
		 0.35495797 0.39936775 0.3694064 0.50581473 0.39883482 0.39962924 0.38716578 0.50180095
		 0.41327021 0.68516201 0.44311509 0.68308473 0.44251469 0.68307084 0.44675633 0.68496305
		 0.44735378 0.68292576 0.45121703 0.68479615 0.45200413 0.57795489 0.40776771 0.57681787
		 0.42602086 0.57752156 0.4168275 0.67849809 0.44087425 0.67863286 0.45011815 0.6788097
		 0.4453662 0.75394356 0.47991452 0.83975595 0.51150262 0.75438654 0.47527531 0.84020215
		 0.50839448 0.84083426 0.50561535 0.75514513 0.47126392 0.91225779 0.53487021 0.91115606
		 0.53852469 0.91179764 0.53671068 0.68110365 0.4417637 0.68102181 0.45072734 0.68121821
		 0.44619176 0.68729621 0.44383851 0.68685067 0.4527646 0.68687642 0.44809583 0.40658897
		 0.33327979 0.36869663 0.3580204 0.37984109 0.34821504 0.39213228 0.36682105 0.39214164
		 0.35294437 0.39087656 0.38331914 0.39456159 0.36788642 0.39460272 0.35362455 0.39411175
		 0.38491508 0.24433205 0.16871592 0.27784494 0.14778152 0.25748727 0.16307285 0.25560784
		 0.1601809 0.38305637 0.36913705 0.38307419 0.3688398 0.38387689 0.3642706 0.38426512
		 0.35956651 0.38436067 0.35924181 0.98318094 0.37279868 0.98231822 0.3618508 0.93918467
		 0.70107579 0.88199806 0.69433713 0.90416443 0.71292758 0.84299695 0.39890683 0.83533275
		 0.35384822 0.84244686 0.38675034 0.89162791 0.36811268 0.96388924 0.38758126 0.95487344
		 0.38522446 0.93266332 0.67751038 0.88275039 0.67072189 0.9076432 0.67759025 0.87528449
		 0.39621913 0.86585307 0.40013474 0.89641225 0.36911377 0.96242797 0.38872457 0.95255744
		 0.3871741 0.93217015 0.67550516 0.88274693 0.66867989 0.90822589 0.67492867 0.8780005
		 0.39698645 0.86763835 0.40038684 0.96066225 0.39015302 0.93157172 0.67300642 0.94967616
		 0.38959333 0.8698262 0.4007377 0.9023301 0.37033308 0.88138485 0.3979145 0.88274419
		 0.66614801 0.90898943 0.67176533 0.90940475 0.37178054 0.93314087 0.52409315 0.93269491
		 0.53958321 0.90991163 0.66819632 0.93441725 0.53223658 0.93406904 0.53152543 0.93525457
		 0.52436113 0.97499788 0.65203446 0.93712962 0.53994894 0.93463778 0.53974354 0.9308629
		 0.66997778 0.9586255 0.39186648 0.94616538 0.39250934 0.93865561 0.52512079 0.99325764
		 0.42565444 0.99059689 0.42523256 0.93795979 0.52477187 0.93102789 0.52487814 0.93065643
		 0.53895903 0.92711127 0.53786725 0.84545982 0.62232137 0.88268781 0.66308427 0.88548428
		 0.39898705 0.87241471 0.4012281 0.84649336 0.44786978 0.84410787 0.44893694 0.92680311
		 0.52683401 0.92737377 0.52630687;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.93284941 0.53157806 0.93262589 0.53224695
		 0.93365407 0.53229195 0.93356812 0.53156173 0.5284245 0.089725435 0.52836746 0.08290416
		 0.52836436 0.081146181 0.52816331 0.074334323 0.5269981 0.056931883 0.52570933 0.040059745
		 0.52519238 0.038286537 0.86609441 0.044514894 0.86746269 0.068149537 0.86771947 0.076091647
		 0.83583784 0.75182492 0.79532886 0.77578682 0.78784674 0.76435667 0.82597262 0.73724788
		 0.73505968 0.69899279 0.74674094 0.66073161 0.78827691 0.72269654 0.77630883 0.77180582
		 0.7283119 0.70346504 0.79595554 0.64681911 0.85172188 0.71495628 0.79962862 0.70551467
		 0.76762712 0.66395736 0.74898356 0.65120083 0.7469185 0.64603359 0.79272705 0.6351161
		 0.86507148 0.72743392 0.82301432 0.86480808 0.79044551 0.85993087 0.791592 0.85385442
		 0.82236731 0.85724628 0.9651345 0.8647418 0.98690653 0.86585557 0.98415422 0.88639724
		 0.96552223 0.8784343 0.87452275 0.94367802 0.86147761 0.97892082 0.78316486 0.90796399
		 0.80268443 0.90935695 0.70103091 0.8592037 0.70140588 0.84638578 0.91006112 0.88066816
		 0.91941804 0.86242318 0.95580316 0.90757751 0.97727776 0.92238688 0.96156788 0.97605395
		 0.94446433 0.93758607 0.70669568 0.87362659 0.78847849 0.86856568 0.78598928 0.88629299
		 0.71368611 0.8892132 0.78948343 0.88108611 0.81774569 0.88041925 0.81089467 0.89422572
		 0.78673327 0.89270294 0.8962599 0.90466058 0.88699734 0.91980255 0.78663325 0.89183646
		 0.72029698 0.91720915 0.93492103 0.99044991 0.93831909 0.96859133 0.77856499 0.51151073
		 0.77633286 0.52897006 0.73007596 0.52197021 0.73159969 0.50839412 0.71244484 0.60412264
		 0.70440513 0.60317552 0.71641791 0.52052772 0.75731432 0.62069666 0.76713228 0.56917256
		 0.80936807 0.53725553 0.79033053 0.62321544 0.74012804 0.63299781 0.74925029 0.55895782
		 0.74642873 0.64048988 0.81565768 0.52009952 0.82451785 0.84988678 0.79175401 0.84768319
		 0.96708751 0.85115945 0.98651862 0.84511459 0.88407516 0.77670109 0.81121516 0.80535853
		 0.79217499 0.80680537 0.87343633 0.74047589 0.70173109 0.83353037 0.91242611 0.84328949
		 0.96081638 0.82101178 0.95275789 0.78970337 0.97339886 0.75260448 0.98373401 0.80831528
		 0.70782578 0.8194688 0.71454483 0.80381531 0.79165512 0.81857085 0.79114759 0.83795625
		 0.79471254 0.82972211 0.79177982 0.81613791 0.81730509 0.82015967 0.82217145 0.83400774
		 0.89429706 0.80173957 0.90172195 0.81788003 0.71653366 0.77341974 0.7918427 0.81089556
		 0.94958812 0.75789511 0.94776452 0.73572123 0.65002751 0.77120614 0.65656924 0.74592435
		 0.64928246 0.92023885 0.65588403 0.94535023 0.63615781 0.87869316 0.62735903 0.8560552
		 0.62276071 0.84454739 0.62783307 0.83329767 0.63720441 0.81139308 0.73740536 0.65653324
		 0.73369282 0.64095879 0.72721201 0.69676226 0.70644814 0.60965496 0.76068127 0.21543074
		 0.76063699 0.21620288 0.75990927 0.2164187 0.7598986 0.21531193 0.76610827 0.22227678
		 0.84756339 0.31201264 0.84633148 0.3145391 0.76552105 0.22287121 0.90149999 0.27182898
		 0.8986268 0.28580043 0.61742002 0.26529971 0.75262052 0.21829012 0.75366414 0.22214155
		 0.6598745 0.30681813 0.76777422 0.21839906 0.76813412 0.21095049 0.76778388 0.21019115
		 0.87665451 0.15501791 0.87701362 0.15789345 0.91175032 0.19344908 0.91061747 0.20682186
		 0.61177862 0.21325646 0.63268936 0.16646896 0.75179374 0.21129555 0.75192356 0.21398143
		 0.76848018 0.2138734 0.76073825 0.21489352 0.75998527 0.21449378 0.6129241 0.23584545
		 0.75202465 0.21607585 0.76869309 0.21615525 0.93159783 0.24707797 0.61412853 0.26512656
		 0.60905349 0.23670578 0.93290305 0.25473514 0.90250754 0.27627453 0.89906228 0.28860053
		 0.91387677 0.20315093 0.60854852 0.2123834 0.9136647 0.19132015 0.90338504 0.27994564
		 0.89936173 0.29096517 0.61140656 0.26503068 0.60562468 0.23741016 0.60588431 0.2116482
		 0.91526318 0.18947247 0.91657984 0.2001389 0.93400371 0.2611407 0.90411377 0.28289273
		 0.89956951 0.29289344 0.6092115 0.26495197 0.60274208 0.23793887 0.60374677 0.21104436
		 0.9165442 0.18794218 0.91875827 0.19771853 0.94337547 0.23281896 0.98568439 0.1877062
		 0.91312838 0.31853172 0.90007877 0.31750897 0.58379662 0.26489338 0.5646255 0.24038096
		 0.57865262 0.20316824 0.93312114 0.16772661 0.94486046 0.16904256 0.52406514 0.07520178
		 0.52218556 0.058243096 0.52481014 0.057415217 0.52633363 0.074688196 0.58877605 0.071630329
		 0.56407678 0.074529469 0.56648111 0.058413863 0.59360951 0.050589502 0.62114781 0.043657899
		 0.6122607 0.069467604 0.52425408 0.089293003 0.52654254 0.08976078 0.5256086 0.10693473
		 0.52291936 0.10625607 0.58893889 0.090478361 0.59448159 0.11134386 0.56712466 0.10432336
		 0.56402463 0.088292658 0.61252272 0.091963232 0.62222886 0.11748087 0.66298461 0.038058251
		 0.65730256 0.067999035 0.65764254 0.092139333 0.66421801 0.12189972 0.4481034 0.08367449
		 0.4667289 0.083738804 0.46685764 0.088130414 0.44819453 0.087292135 0.95614719 0.076116145
		 0.95525467 0.077362299 0.95149255 0.07674545 0.95148396 0.074957073 0.46676674 0.08196798
		 0.44813159 0.082124084 0.44819388 0.078531802 0.46682885 0.077575326 0.51756454 0.081464946
		 0.51754314 0.083296776 0.87080914 0.077685446 0.87079936 0.075910062 0.44551301 0.071561337
		 0.46438441 0.068949968 0.43464649 0.057802916 0.45384309 0.052628845 0.93132168 0.052322865
		 0.94913942 0.049794137 0.95209712 0.064972311 0.93198651 0.070528448 0.45296612 0.05113098
		 0.51003468 0.042969882 0.51123202 0.044478506 0.52146059 0.043749571 0.52047098 0.041964531
		 0.52311063 0.039869159 0.52379173 0.041658103 0.52397931 0.083085477 0.52401149 0.081467599
		 0.52647924 0.081371158 0.52649719 0.083077729 0.8690998 0.077763259 0.86909515 0.076038867
		 0.55904943 0.019814014 0.55770832 0.018542022 0.59571052 0.0078103244 0.59617722
		 0.0094812512;
	setAttr ".uvst[0].uvsp[1250:1444]" 0.84332472 0.076485753 0.84329206 0.078183472
		 0.8069337 0.078668684 0.80698174 0.076983631 0.56395292 0.082185328 0.56399322 0.080609113
		 0.58867592 0.080245644 0.58861011 0.081892222 0.62991005 0.0015138984 0.62960136
		 0.0031911135 0.77331954 0.0791246 0.77335781 0.077452511 0.6120314 0.079914749 0.61196983
		 0.081535667 0.65693617 0.0052500963 0.65852916 0.0072107613 0.68133283 0.0088659823
		 0.68068051 0.010574639 0.70342112 0.039763033 0.70153755 0.039284587 0.70282763 0.065618008
		 0.70120972 0.066170305 0.76926106 0.079201907 0.76933461 0.077596784 0.76567823 0.079359651
		 0.76572877 0.077636749 0.65725249 0.079214394 0.65720046 0.080949783 0.70125157 0.078447849
		 0.7012893 0.080350608 0.70289111 0.08038339 0.70285964 0.078489929 0.70319456 0.093206942
		 0.70158035 0.092672288 0.45334694 0.11471704 0.45422664 0.1132229 0.51224935 0.12037989
		 0.5110721 0.12190852 0.94973069 0.1021353 0.9318397 0.099862397 0.93216056 0.081630111
		 0.95266771 0.086935431 0.43494102 0.10819381 0.44562477 0.094310701 0.46455333 0.096774757
		 0.52174538 0.12255514 0.52266848 0.12072963 0.52509373 0.12271258 0.52449536 0.12453258
		 0.70458251 0.11902463 0.70271176 0.11956069 0.68339056 0.1505551 0.68268985 0.1488657
		 0.65911323 0.15485549 0.66064793 0.15285164 0.55975407 0.14452121 0.56104124 0.14320013
		 0.59834832 0.15235624 0.59793657 0.15404093 0.63187116 0.15768892 0.63224632 0.15932119
		 0.95892584 0.076516539 0.96994942 0.061859906 0.96296203 0.076351345 0.51494652 0.058392048
		 0.72377884 0.015681475 0.76013011 0.05812183 0.87826699 0.069252908 0.87770039 0.047551811
		 0.51766884 0.074671179 0.8698023 0.046527743 0.870637 0.069142908 0.86887795 0.068652183
		 0.86774629 0.045412391 0.83683711 0.028851211 0.84175676 0.060835719 0.80588657 0.057890475
		 0.80301243 0.018628925 0.74712056 0.012903392 0.76625067 0.057289004 0.77309442 0.055188596
		 0.77246034 0.0093412697 0.95189124 0.068284988 0.87459093 0.069049418 0.9583143 0.076705515
		 0.96244967 0.076390207 0.97131115 0.085071743 0.51561415 0.10639593 0.76074952 0.099035591
		 0.72566468 0.14251399 0.87855679 0.10589388 0.87848383 0.084159315 0.51785123 0.090079874
		 0.87074763 0.107227 0.868725 0.10842407 0.86915058 0.085193872 0.87089199 0.084569752
		 0.83827156 0.12594181 0.80479187 0.13712347 0.80643541 0.097780377 0.84221226 0.093853295
		 0.74912101 0.14459747 0.76690346 0.099628747 0.77457947 0.14746988 0.77379984 0.10145634
		 0.95227206 0.083549231 0.87482673 0.084471166 0.87388009 0.047051311 0.51613134 0.04401511
		 0.51487142 0.042452514 0.51848614 0.058133572 0.52074969 0.074825048 0.52062988 0.081440598
		 0.52062005 0.083196461 0.52093434 0.089807838 0.5191949 0.10653046 0.51724905 0.12067556
		 0.51603311 0.1222834 0.87478942 0.10654068 0.52781874 0.10727972 0.52707738 0.12422342
		 0.52663249 0.12601811 0.86709648 0.10938486 0.86774796 0.085778326 0.86773676 0.077869713
		 0.013097584 0.046232969 0.017730191 0.027703911 0.0036619902 0.060882807 0.010138348
		 0.017983243 0.27927393 0.071444869 0.40763611 0.33575618 0.41314757 0.3333171 0.28592819
		 0.020253241 0.27678341 0.13769343 0.28300244 0.14426073 0.41243118 0.33047467 0.41367674
		 0.33314902 0.4113819 0.3282584 0.28971687 0.15258852 0.3173219 0.19318667 0.37121928
		 0.27193603 0.050897539 0.076935709 0.04197076 0.075543553 0.28057826 0.077908397
		 0.27767152 0.078410506 0.27525201 0.078815877 0.061551511 0.077742726 0.11061662
		 0.077517778 0.20605853 0.077496827 0.40858817 0.33982742 0.41121501 0.34049153 0.84390217
		 0.50143653 0.91390419 0.53176421 0.75979644 0.46562526 0.69263911 0.43896204 0.68329358
		 0.43527943 0.68591493 0.43638816 0.58400935 0.40058157 0.69029087 0.43794775 0.68805903
		 0.4371075 0.51299578 0.36900973 0.41551667 0.34165651 0.40614006 0.33935928 0.40246254
		 0.33844507 0.28515053 0.071682096 0.28311849 0.06992349 0.72055781 0.38681793 0.65432262
		 0.34787869 0.58095849 0.2933507 0.52426052 0.24848157 0.51905799 0.24453497 0.51667809
		 0.24298978 0.43231702 0.18047434 0.52247822 0.24709785 0.52075326 0.24580544 0.36618394
		 0.1396727 0.28853005 0.074570298 0.28127486 0.068250805 0.2785055 0.065697223 0.27628735
		 0.13667855 0.2750448 0.13380852 0.042994976 0.022789896 0.04074055 0.021808386 0.22983727
		 0.1659008 0.0031116903 0.067842662 0.24835193 0.11008146 0.038530231 0.020881265
		 0.92301488 0.36127469 0.96622872 0.3233467 0.91934168 0.36415935 0.91480565 0.36767045
		 0.9349103 0.26631978 0.94824815 0.32734764 0.94014382 0.23666555 0.93620825 0.24141756;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "SculptMaskColorTemp";
	setAttr ".clst[0].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 98 ".pt";
	setAttr ".pt[0:47]" -type "float3" 0 0 -4.7683716e-07  0 -4.7683716e-06 
		9.5367432e-07  0 1.9073486e-06 2.3841858e-07  0 -1.9073486e-06 9.5367432e-07  0 -2.8610229e-06 
		-4.7683716e-07  0 -2.3841858e-06 -1.9073486e-06  0 -2.8610229e-06 -9.5367432e-07  
		0 -1.9073486e-06 -4.7683716e-07  0 1.9073486e-06 2.3841858e-07  0 -1.9073486e-06 
		9.5367432e-07  0 -2.3841858e-06 -1.9073486e-06  0 -9.5367432e-07 4.7683716e-07  0 
		0 0  0 -2.3841858e-06 9.5367432e-07  0 -2.3841858e-06 9.5367432e-07  0 0 0  0 -9.5367432e-07 
		2.3841858e-07  0 -2.3841858e-06 -9.5367432e-07  0 -2.3841858e-06 9.5367432e-07  0 
		-2.3841858e-06 0  0 -2.8610229e-06 -4.7683716e-07  0 -2.3841858e-06 -1.9073486e-06  
		0 -2.8610229e-06 -9.5367432e-07  0 0 2.3841858e-07  0 -2.8610229e-06 -4.7683716e-07  
		0 -2.3841858e-06 9.5367432e-07  0 -1.9073486e-06 9.5367432e-07  0 -2.3841858e-06 
		9.5367432e-07  0 1.9073486e-06 2.3841858e-07  0 -1.9073486e-06 9.5367432e-07  0 -2.8610229e-06 
		-4.7683716e-07  0 -2.3841858e-06 -1.9073486e-06  0 -2.8610229e-06 -9.5367432e-07  
		0 -1.9073486e-06 -4.7683716e-07  0 1.9073486e-06 2.3841858e-07  0 -1.9073486e-06 
		9.5367432e-07  0 -2.3841858e-06 -1.9073486e-06  0 -9.5367432e-07 4.7683716e-07  0 
		0 0  0 -2.3841858e-06 9.5367432e-07  0 -2.3841858e-06 9.5367432e-07  0 0 0  0 -9.5367432e-07 
		2.3841858e-07  0 -2.3841858e-06 -9.5367432e-07  0 -2.3841858e-06 9.5367432e-07  0 
		-2.3841858e-06 0  0 -2.8610229e-06 -4.7683716e-07  0 -2.3841858e-06 9.5367432e-07 ;
	setAttr ".pt[955:1004]" -type "float3" -2.3841858e-06 1.9073486e-06 -1.9073486e-06  
		-9.5367432e-07 -2.3841858e-06 2.8610229e-06  -6.6757202e-06 2.8610229e-06 0  0 -2.8610229e-06 
		-1.9073486e-06  -1.0490417e-05 -9.5367432e-07 -6.6757202e-06  -1.9073486e-06 9.5367432e-07 
		0  -1.9073486e-06 -4.7683716e-07 4.7683716e-07  -9.5367432e-07 -7.1525574e-07 -1.9073486e-06  
		0 -4.7683716e-06 -1.9073486e-06  -1.9073486e-06 -4.7683716e-06 0  -1.9073486e-06 
		-1.9073486e-06 1.9073486e-06  -1.9073486e-06 1.9073486e-06 -1.9073486e-06  -3.8146973e-06 
		1.9073486e-06 3.8146973e-06  1.9073486e-06 0 -3.8146973e-06  9.5367432e-07 -2.8610229e-06 
		4.6491623e-06  0 -3.5762787e-07 -9.5367432e-07  9.5367432e-07 9.5367432e-07 4.529953e-06  
		-9.5367432e-07 -2.8610229e-06 5.7220459e-06  5.7220459e-06 0 5.7220459e-06  4.7683716e-06 
		1.9073486e-06 3.8146973e-06  9.5367432e-06 2.8610229e-06 1.9073486e-06  1.9073486e-06 
		-9.5367432e-07 0  1.4305115e-06 1.4305115e-06 9.5367432e-07  9.5367432e-07 -9.5367432e-07 
		-2.8610229e-06  9.5367432e-07 0 3.8146973e-06  -3.8146973e-06 0 4.7683716e-07  0 
		-9.5367432e-07 -3.4570694e-06  5.7220459e-06 4.2915344e-06 -4.7683716e-07  -1.9073486e-06 
		-4.7683716e-07 -1.8775463e-06  -3.8146973e-06 -1.9073486e-06 -6.4373016e-06  1.9073486e-06 
		1.9073486e-06 -2.3841858e-06  -3.8146973e-06 9.5367432e-07 -9.5367432e-07  -1.9073486e-06 
		-2.3841858e-06 -1.4305115e-06  1.9073486e-06 -9.5367432e-07 -1.6689301e-06  0 4.7683716e-07 
		-2.8610229e-06  1.9073486e-06 -4.7683716e-07 3.8146973e-06  -2.8610229e-06 -1.4305115e-06 
		2.8610229e-06  2.8610229e-06 9.5367432e-07 -3.8146973e-06  0 -1.4305115e-06 -1.4305115e-06  
		-9.5367432e-07 2.3841858e-07 2.3841858e-07  -9.5367432e-07 -1.4305115e-06 3.8146973e-06  
		2.8610229e-06 9.5367432e-07 1.4305115e-06  3.8146973e-06 -9.5367432e-07 1.9073486e-06  
		9.5367432e-07 0 1.9073486e-06  -3.8146973e-06 1.9073486e-06 -2.8610229e-06  5.7220459e-06 
		9.5367432e-07 1.4305115e-06  2.8610229e-06 -1.6689301e-06 -2.2649765e-06  1.9073486e-06 
		1.4305115e-06 4.7683716e-06  -1.9073486e-06 1.9073486e-06 -2.3841858e-07  -2.8610229e-06 
		9.5367432e-07 2.8610229e-06 ;
	setAttr -s 1227 ".vt";
	setAttr ".vt[0:165]"  0 66.45700073 18.053712845 5.5511151e-17 37.93334579 48.70175171
		 16.40727997 66.45700836 18.053710938 1.59887302 39.3904953 47.0067672729 0.70364064 40.35418701 47.88846588
		 1.29410064 73.7374649 33.74174118 0.70838296 37.79589081 48.5629425 0.6736716 37.93334198 48.70174789
		 9.2950983 66.45700836 18.053710938 0.90132982 39.3904953 47.0067672729 0.78332078 73.7374649 33.74174118
		 8.52515697 64.098991394 20.5760746 15.078817368 64.098999023 20.5760746 1.24266028 70.82914734 34.97419357
		 0.76315868 70.82914734 34.97419357 6.16999102 66.45700836 18.053714752 5.65891361 64.098991394 20.57607651
		 0.67099226 73.73747253 33.74174118 1.83501601 70.73749542 32.40509415 1.47681355 70.73492432 32.92966843
		 5.5511151e-17 40.35418701 47.88846588 1.7385803e-16 73.7374649 33.74174118 -5.5511151e-17 37.79589081 48.5629425
		 -1.2209177e-16 64.098999023 20.57607651 0.74758154 39.39050293 47.0067710876 0.65751308 70.82914734 34.97419357
		 9.6315031e-17 39.3904953 47.0067672729 7.2871551e-18 70.82914734 34.97419357 -16.40727997 66.45700836 18.053710938
		 -1.59887302 39.3904953 47.0067672729 -0.70364064 40.35418701 47.88846588 -1.29410064 73.7374649 33.74174118
		 -0.70838296 37.79589081 48.5629425 -0.6736716 37.93334198 48.70174789 -9.2950983 66.45700836 18.053710938
		 -0.90132982 39.3904953 47.0067672729 -0.78332078 73.7374649 33.74174118 -8.52515697 64.098991394 20.5760746
		 -15.078817368 64.098999023 20.5760746 -1.24266028 70.82914734 34.97419357 -0.76315868 70.82914734 34.97419357
		 -6.16999102 66.45700836 18.053714752 -5.65891361 64.098991394 20.57607651 -0.67099226 73.73747253 33.74174118
		 -1.83501601 70.73749542 32.40509415 -1.47681355 70.73492432 32.92966843 -0.74758154 39.39050293 47.0067710876
		 -0.65751308 70.82914734 34.97419357 -2.6198008e-17 60.21121597 14.081594467 -6.196046e-18 36.66665268 48.70174789
		 16.40727997 60.2112236 14.081605911 1.59887302 37.99552155 46.90442276 0.70364064 36.92174149 46.16071701
		 1.29410064 43.29771423 10.46869087 0.70838296 36.83252716 48.80492401 0.6736716 36.66665649 48.70174789
		 9.2950983 60.2112236 14.081605911 0.90132982 37.99552155 46.90442276 0.78332078 43.29771042 10.46869278
		 8.52515697 58.27581787 16.9411087 15.078817368 58.27581406 16.94108391 1.24266028 42.74227142 13.57815933
		 0.76315868 42.74227142 13.57815742 6.16999102 60.2112236 14.081608772 5.65891361 58.27581406 16.94110298
		 0.67099226 43.29772568 10.46868515 1.83501601 45.26750946 13.096717834 1.47681355 44.75660706 13.21576118
		 2.8991754e-17 36.92174149 46.16071701 2.8197912e-16 43.29771042 10.46869278 -5.2320279e-17 36.83252716 48.80492401
		 -3.9642412e-16 58.27581787 16.94110489 0.74758154 37.99551392 46.90441895 0.65751308 42.74227142 13.57815742
		 3.7066737e-17 37.99552155 46.90442276 1.3098141e-17 42.74227142 13.57815742 -16.40727997 60.2112236 14.081605911
		 -1.59887302 37.99552155 46.90442276 -0.70364064 36.92174149 46.16071701 -1.29410064 43.29771423 10.46869087
		 -0.70838296 36.83252716 48.80492401 -0.6736716 36.66665649 48.70174789 -9.2950983 60.2112236 14.081605911
		 -0.90132982 37.99552155 46.90442276 -0.78332078 43.29771042 10.46869278 -8.52515697 58.27581787 16.9411087
		 -15.078817368 58.27581406 16.94108391 -1.24266028 42.74227142 13.57815933 -0.76315868 42.74227142 13.57815742
		 -6.16999102 60.2112236 14.081608772 -5.65891361 58.27581406 16.94110298 -0.67099226 43.29772568 10.46868515
		 -1.83501601 45.26750946 13.096717834 -1.47681355 44.75660706 13.21576118 -0.74758154 37.99551392 46.90441895
		 -0.65751308 42.74227142 13.57815742 6.58220148 56.47822571 -33.49465942 8.56584549 56.47822571 -36.51618576
		 11.7126112 36.65034103 -49.42033005 11.7126112 36.65034103 -44.93839264 18.067562103 36.65034103 -40.23686218
		 14.007144928 56.47822571 -28.79312515 17.99560547 36.65034103 -47.55240631 14.11064911 56.47822571 -33.36384964
		 22.91994476 39.72805023 -32.92854691 17.59757233 56.47823334 -25.035957336 24.31470108 39.72805023 -36.29311371
		 18.23572159 56.47823334 -26.084663391 25.087373734 42.49790573 -20.62190628 19.36752319 56.47822571 -16.81453323
		 5.84201145 72.36772156 -23.70109558 5.032176018 72.36772156 -24.42497826 10.26930618 72.36772156 -20.061077118
		 9.34832191 72.36772156 -21.87438583 12.064517021 72.36772919 -16.39185333 13.20093441 72.36772156 -17.21948624
		 13.089495659 72.36772156 -12.13186169 2.8185215 56.47822571 -37.54096985 1.34384727 56.47822571 -36.56271362
		 1.37521458 36.65034103 -52.23225403 2.83438301 36.65034103 -53.28862 1.33702374 56.47822571 -33.69970322
		 2.80670977 56.47822571 -34.4942894 2.80927086 36.65034103 -45.97599411 1.33632803 36.65034103 -45.11940002
		 1.2621274 72.36772156 -23.34675217 2.73220587 72.36772156 -24.1709938 2.49653339 72.36772156 -24.91573715
		 1.019770145 72.36772156 -25.06152153 -6.58220148 56.47822571 -33.49465942 -8.56584549 56.47822571 -36.51618576
		 -11.7126112 36.65034103 -49.42033005 -11.7126112 36.65034103 -44.93839264 -18.067562103 36.65034103 -40.23686218
		 -14.0071468353 56.47822571 -28.79312515 -17.99560547 36.65034103 -47.55240631 -14.11064911 56.47822571 -33.36384964
		 -22.91994476 39.72805023 -32.92854691 -17.59757423 56.47823334 -25.035957336 -24.31470108 39.72805023 -36.29311371
		 -18.23572159 56.47823334 -26.084663391 -25.087373734 42.49790573 -20.62190628 -19.36752319 56.47822571 -16.81453323
		 -5.84201145 72.36772156 -23.70109558 -5.032176018 72.36772156 -24.42497826 -10.26930618 72.36772156 -20.061077118
		 -9.34832191 72.36772156 -21.87438583 -12.064517021 72.36772919 -16.39185333 -13.20093441 72.36772156 -17.21948624
		 -13.089493752 72.36772156 -12.13186169 -2.8185215 56.47822571 -37.54096985 -1.34384727 56.47822571 -36.56271362
		 -1.37521458 36.65034103 -52.23225403 -2.83438301 36.65034103 -53.28862 -1.33702374 56.47822571 -33.69970322
		 -2.80670977 56.47822571 -34.4942894 -2.80927086 36.65034103 -45.97599411 -1.33632803 36.65034103 -45.11940002
		 -1.2621274 72.36772156 -23.34675217 -2.73220587 72.36772156 -24.1709938 -2.49653339 72.36772156 -24.91573715
		 -1.019770145 72.36772156 -25.06152153 27.69396973 42.44907761 -20.88482666 27.46230698 42.49790573 -20.62192917
		 21.71289063 56.47822571 -16.81454086 21.91353989 56.47822571 -17.094329834;
	setAttr ".vt[166:331]" 11.7126112 26.0075244904 -54.79931641 11.7126112 25.76490021 -54.60671616
		 18.12844467 29.65125084 -49.83205032 18.064910889 29.90887833 -50.016235352 11.7126112 25.76489639 -53.071331024
		 11.7126112 25.96552467 -52.7077446 19.48408127 29.97406387 -43.179245 19.47573471 29.65124893 -43.67279434
		 25.67672348 33.31698608 -38.88935852 25.72609711 33.5815239 -39.049163818 24.044147491 33.59777069 -34.80567169
		 24.22289085 33.31698227 -35.21339798 29.099557877 38.68076324 -22.12534523 28.97688675 38.48310471 -21.87355042
		 26.78009033 38.48310471 -21.87352943 26.52807426 38.6649437 -21.85117912 14.069666862 72.36772156 -12.13186169
		 14.28680325 72.36772156 -12.43170929 2.87152433 87.43786621 -11.79535294 2.97550869 87.72863007 -11.82450867
		 4.80759716 86.87839508 -10.27269077 4.68808174 86.59062958 -10.26288605 2.72017622 87.93574524 -12.20252609
		 2.854877 87.86445618 -12.47390366 4.65573311 87.030738831 -10.93711472 4.46309948 87.1191864 -10.71217442
		 5.85737514 86.18973541 -9.015769958 5.71317577 85.90890503 -9.025043488 6.31912422 86.016181946 -9.058589935
		 6.079482079 86.12122345 -8.89073563 6.86633873 84.73446655 -6.35970306 6.69369984 84.5054245 -6.48623466
		 7.063747406 84.73447418 -6.35970306 7.30413628 84.71812439 -6.66306686 0.15435123 36.65034103 -51.22854233
		 -0.15435123 36.65034103 -51.22854233 0.15435123 56.47822571 -36.14252853 -0.15435123 56.47822571 -36.14252853
		 0.15435123 72.36772156 -24.8837719 -0.15435123 72.36772156 -24.8837719 -0.15401697 88.039840698 -11.30155468
		 0.15368271 88.040206909 -11.30179977 0.15468168 88.021194458 -11.63729286 -0.15468168 88.021194458 -11.63729286
		 -0.15435123 87.65650177 -11.15515518 0.15435123 87.65650177 -11.15515518 0.15435123 87.96484375 -11.17003632
		 -0.15435123 87.96484375 -11.17003632 0.15435123 72.36772156 -24.54190636 -0.15435123 72.36772156 -24.54190636
		 0.15435123 56.47822571 -34.84766769 -0.15435123 56.47822571 -34.84766769 0.15435123 36.65034103 -46.14008713
		 -0.15435123 36.65034103 -46.14008713 -0.15534401 20.36789513 -56.79383469 0.15633726 20.36808014 -56.79524994
		 0.15939236 20.510252 -56.52368164 -0.15939236 20.510252 -56.52368164 -0.15477943 20.63399315 -58.086425781
		 0.15520763 20.63480949 -58.086204529 0.15391064 20.36774445 -57.90674591 -0.15391064 20.36774445 -57.90674591
		 2.81411648 20.74817467 -59.16740799 2.81983376 21.0074996948 -59.36444473 1.36657333 20.86586952 -58.37623978
		 1.35947132 20.59566116 -58.19220352 2.79223347 20.89569092 -57.85303879 2.79598427 20.73795319 -58.18600082
		 1.33305645 20.5899353 -57.096035004 1.32884645 20.73817635 -56.80883408 2.1715889 87.90078735 -12.13871765
		 2.19626427 87.59259796 -12.057468414 0.72322369 87.63581848 -11.21250916 0.69794846 87.93845367 -11.26961517
		 2.17696953 88.0078430176 -12.74314117 2.042098999 88.16471863 -12.53306007 2.17292738 88.055198669 -12.42053986
		 0.69821501 88.089302063 -11.52188873 0.83016157 88.20018005 -11.79409313 0.70181036 88.036834717 -11.85468483
		 -27.46230698 42.49790573 -20.62192917 -27.69561386 42.45040512 -20.87767982 -21.91353607 56.47822571 -17.094329834
		 -21.71288681 56.47822571 -16.81454086 -11.7126112 25.76490021 -54.60671616 -11.7126112 26.0075244904 -54.79931641
		 -18.1268158 29.65125084 -49.8394928 -18.064908981 29.90887833 -50.016235352 -11.7126112 25.96552467 -52.7077446
		 -11.7126112 25.76489639 -53.071331024 -19.47573471 29.65124893 -43.67279434 -19.47398758 30.02163887 -43.15827942
		 -2.97550893 87.72863007 -11.82450867 -2.87152433 87.43786621 -11.79535294 -4.80541658 86.87748718 -10.27104568
		 -4.68808174 86.59062958 -10.26288605 -2.854877 87.86445618 -12.47390366 -2.72017622 87.93574524 -12.20252609
		 -4.463099 87.1191864 -10.71217442 -4.65573311 87.030738831 -10.93711472 -25.67672348 33.31698608 -38.88935852
		 -25.72609138 33.5815239 -39.049163818 -24.20661163 33.31698227 -35.17224503 -24.044143677 33.59777069 -34.80567169
		 -5.85061932 86.18807983 -9.012752533 -5.71317577 85.90890503 -9.025043488 -6.079482079 86.12122345 -8.89073563
		 -6.31912422 86.016181946 -9.058589935 -29.1094265 38.66887283 -22.11019707 -28.97688675 38.48310471 -21.87355042
		 -26.52807426 38.6649437 -21.85117912 -26.78009033 38.48310471 -21.87352943 -6.69369984 84.5054245 -6.48623466
		 -6.86633873 84.73446655 -6.35970306 -7.075342655 84.73447418 -6.35970306 -7.3043108 84.71889496 -6.64875078
		 -14.28680325 72.36772156 -12.43170929 -14.069664001 72.36772156 -12.13186169 -2.81983376 21.0074996948 -59.36444473
		 -2.81411624 20.74817467 -59.16740799 -1.35947132 20.59566116 -58.19220352 -1.36657357 20.86586952 -58.37623978
		 -2.79598451 20.73795319 -58.18600082 -2.79223371 20.89569092 -57.85303879 -1.32884645 20.73817635 -56.80883408
		 -1.33305645 20.5899353 -57.096035004 -2.19626403 87.59259796 -12.057468414 -2.17158914 87.90078735 -12.13871765
		 -0.69794846 87.93845367 -11.26961517 -0.72322369 87.63581848 -11.21250916 -2.17292738 88.055198669 -12.42053986
		 -2.042098761 88.16471863 -12.53306007 -2.17696953 88.0078430176 -12.74314117 -0.70181036 88.036834717 -11.85468483
		 -0.83016187 88.20018005 -11.79409313 -0.69821501 88.089302063 -11.52188873 2.64083099 70.68199158 -6.36316299
		 3.76023388 69.54083252 -1.2598362 3.40372658 75.27532959 -3.038312912 4.54594421 73.13946533 1.98614025
		 3.42866898 69.36964417 -0.73654366 2.27415466 70.49240112 -5.55741882 3.1050005 74.90016174 -2.49245071
		 4.26614094 72.79332733 2.28784847 3.15367317 69.22766113 -0.3025322 1.97003841 70.33515167 -4.8891468
		 0 71.14845276 2.74295521 0 68.40963745 4.1359787 0 67.50686646 2.94835091 0 69.084365845 -0.11030006
		 -2.64083099 70.68199158 -6.36316299 -3.76023507 69.54083252 -1.2598362 -3.40372658 75.27532959 -3.038312912
		 -4.54594421 73.13946533 1.98614025 -3.42866898 69.36964417 -0.73654366 -2.27415466 70.49240112 -5.55741882
		 -3.10499954 74.90016174 -2.49245071 -4.26613998 72.79332733 2.28784847 -3.15367317 69.22766113 -0.3025322
		 -1.97003841 70.33515167 -4.8891468 14.27914524 100.82637024 27.17607689 14.39874554 100.82637024 27.29013824
		 8.050245285 84.034698486 11.9462738 7.92744112 84.034698486 11.82211781 17.50141144 100.82637024 27.29013824
		 17.60009766 100.82637024 27.1917057;
	setAttr ".vt[332:497]" 11.24839592 84.034698486 11.84393311 11.14782238 84.034698486 11.9462738
		 17.60009766 100.82637024 22.83387184 17.48131371 100.82637024 22.71722412 11.11279869 84.034698486 7.61403799
		 11.24839592 84.034698486 7.7538991 14.3782692 100.82637024 22.71722412 14.27914524 100.82637024 22.81404114
		 7.92744112 84.034698486 7.71357584 8.028997421 84.034698486 7.61403799 4.66367531 77.45468903 -1.19886577
		 4.75362301 77.48830414 -1.29926109 5.50721025 75.81881714 3.68717766 5.63143778 75.77754211 3.72822666
		 7.96729755 77.43618011 -1.20293236 7.85776949 77.48830414 -1.29926109 7.9029026 75.77754211 1.91359615
		 7.96729755 75.81676483 1.78967094 5.96178627 70.64362335 -6.27469635 5.86378717 70.68199158 -6.36316299
		 7.084857464 75.66461182 -3.61376953 6.98549461 75.72767639 -3.6964643 5.9106369 69.54083252 -3.67470169
		 5.96178627 69.5708847 -3.80142784 7.032823563 73.55680847 -0.79150385 7.084857464 73.60585785 -0.91425514
		 18.26325226 116.98171997 32.80019379 18.36260605 117.043701172 32.72522354 18.34331894 114.23738861 36.08033371
		 18.26325226 114.32480621 36.013763428 21.081953049 113.21498108 36.010986328 20.97213554 113.17429352 36.08033371
		 19.7832489 118.35832977 38.97400665 19.70635986 118.50151062 39.011341095 20.99938774 118.49407196 38.27041626
		 21.0059185028 118.35162354 38.28708649 21.57435226 116.96857452 32.78969955 21.48258972 117.043701172 32.72522354
		 19.70635986 121.71517944 36.056720734 19.78391647 121.70970154 35.93016434 21.026031494 121.68733215 35.91479492
		 20.99938774 121.68760681 36.058479309 18.68552017 115.21773529 36.78100204 18.60451889 115.31111908 36.72373199
		 18.60451889 118.10107422 33.57036972 18.70323563 118.16649628 33.49643707 21.84880638 118.23088074 33.54066467
		 21.91332054 118.07384491 33.56373215 22.14422607 117.91149139 34.14753342 22.14890671 117.75704956 34.15074539
		 21.40244675 114.17940521 36.3925705 21.30921173 114.15962982 36.51689911 21.55304146 113.86985779 37.048706055
		 21.52135658 113.90613556 37.26136017 21.42944908 121.2028656 36.56374741 21.45351028 121.19313812 36.41317368
		 21.30683517 118.001663208 39.55775452 21.30886078 117.83326721 39.57544327 23.12361526 116.54857635 36.58732986
		 23.10215569 116.39435577 36.57455826 34.91940308 96.53024292 52.31139755 34.80349731 96.46188354 52.29885483
		 22.15613937 112.51120758 38.57416916 22.13573647 112.48891449 38.76113129 32.084209442 95.24332428 53.87105942
		 32.064441681 95.24770355 54.026378632 23.18767929 119.16519165 38.58375168 23.20086098 119.15151978 38.43337631
		 36.36878967 97.65145874 53.75973129 36.36694717 97.66751099 53.90557098 22.53787994 115.79801178 41.79235077
		 22.56406593 115.96370697 41.78585434 34.12099075 96.4805603 56.22075272 34.23861694 96.54677582 56.21912384
		 49.31475449 59.10908127 74.21261597 49.1966362 59.021400452 74.20277405 49.35621262 58.61242294 74.37687683
		 49.23613358 58.52193069 74.3511734 48.36755753 58.45852661 74.87554169 48.35438919 58.44609833 75.028106689
		 48.39541245 57.9529686 75.03427124 48.39376831 57.94840622 75.17642975 49.65470505 59.40827179 74.99585724
		 49.66939545 59.4218483 74.84229279 49.70612335 58.917099 74.99945831 49.68949509 58.90433121 75.14237976
		 48.95236588 58.82699585 75.56304169 49.072673798 58.91580582 75.56196594 48.98432541 58.3233757 75.70477295
		 49.11083221 58.41627884 75.70536041 42.5413208 82.67483521 62.82102966 42.54643631 82.70052338 62.96026611
		 41.46697235 81.85473633 61.78271103 41.35741806 81.76744843 61.80871582 40.75234604 81.25437164 63.071422577
		 40.74153137 81.26864624 63.2154274 41.22203827 82.14345551 64.63382721 41.32820892 82.23330688 64.63574219
		 49.48941422 60.43930435 74.46980286 49.50577927 60.45045853 74.31716919 49.13743591 60.12602997 73.66725159
		 49.028282166 60.043907166 73.64355469 48.15329361 59.45827866 74.50714111 48.15726471 59.46323776 74.35411072
		 48.76812744 59.85155869 75.081436157 48.88277435 59.93526077 75.083076477 51.26590729 40.99674225 79.68473053
		 51.13946915 40.94261169 79.66111755 51.97472 18.66392517 83.46733093 51.8441925 18.62796783 83.44233704
		 50.098991394 40.54493332 80.24623108 50.10057831 40.54263687 80.38686371 51.15959549 18.45934105 83.87229919
		 51.16151428 18.45809937 84.0092773438 50.82662201 40.80299759 80.81427765 50.95706558 40.85728836 80.81236267
		 51.62677765 18.56562042 84.28541565 51.76052475 18.60149384 84.28274536 51.67539597 41.19945526 80.34926605
		 51.69386292 41.20719147 80.2093811 52.24889374 18.75080872 83.83955383 52.22566223 18.74427795 83.9757843
		 51.32489014 0 87.16950989 51.3528595 0 87.035339355 51.20284653 0 86.79588318 51.070152283 0 86.77119446
		 50.67924118 -1.5258789e-05 87.063262939 50.68552017 -1.5258789e-05 87.20005798 50.93405151 0 87.3497467
		 51.069068909 0 87.34539795 49.5803299 59.85779953 74.76766205 49.59785461 59.87064362 74.61288452
		 49.23947525 59.55643082 73.97801208 49.12747955 59.47198486 73.95437622 48.27254868 58.89620209 74.64975739
		 48.2700119 58.89138412 74.80342102 48.87117004 59.2750206 75.35173035 48.9896698 59.3620224 75.35223389
		 49.74016953 58.38705444 75.15573883 49.72353363 58.37431717 75.29824066 49.38915634 58.082450867 74.53040314
		 49.265522 57.99052048 74.51641083 48.43730545 57.43191147 75.19026184 48.43568039 57.42738724 75.33241272
		 49.021713257 57.79822922 75.85675812 49.14812851 57.89064789 75.85819244 21.63351631 117.53713226 33.064147949
		 21.72408867 117.46016693 33.12824249 21.20786858 113.58532715 36.2926445 21.11263847 113.58123016 36.39222717
		 18.49236679 114.66880035 36.39222717 18.41322899 114.75720215 36.32700729 18.41322899 117.47332764 33.13903809
		 18.51161194 117.53713226 33.064147949 21.65415192 117.44471741 40.16752625 21.64843369 117.26422119 40.18299103
		 21.91458511 120.64025116 37.12155151 21.93678284 120.62916565 36.97061157 22.41419029 117.53356171 34.81978607
		 22.41233444 117.38227844 34.81897736 21.71705055 113.48112488 37.4790535 21.69233513 113.48334503 37.65614319
		 21.99590492 116.88677979 40.77700424 21.98258591 116.71324921 40.78756332 22.39275932 120.085510254 37.67150497
		 22.41240311 120.073234558 37.51978302;
	setAttr ".vt[498:663]" 22.68045807 117.16107941 35.48222733 22.67198753 117.013084412 35.4774971
		 21.88236618 113.11943817 37.88825226 21.85883141 113.11287689 38.073329926 3.86575508 75.72767639 -3.6964643
		 3.73903656 75.61595917 -3.75550842 3.71037674 75.6604538 -3.5986557 3.78619576 75.68444061 -3.59053802
		 4.23640633 76.45497894 -2.70619965 4.14782333 76.41737366 -2.60685921 4.85587311 73.61000824 1.49202251
		 4.82424736 73.48374939 1.68604934 4.85816097 73.46689606 1.55783856 4.97754669 73.55680847 1.51653671
		 5.12508774 74.52215576 2.39951134 5.24816847 74.4741745 2.42978096 7.39141464 74.4741745 0.32727242
		 7.44938612 74.51916504 0.20279501 7.44938612 76.39630127 -2.61802292 7.343472 76.45497894 -2.70619965
		 -14.39874554 100.82637024 27.29013824 -14.27914524 100.82637024 27.17607689 -7.92744112 84.034698486 11.82348442
		 -8.051609039 84.034698486 11.9462738 -17.60009766 100.82637024 27.1917057 -17.50141144 100.82637024 27.29013824
		 -11.14782238 84.034698486 11.9462738 -11.24839592 84.034698486 11.84393311 -17.48131371 100.82637024 22.71722412
		 -17.60009766 100.82637024 22.82687569 -11.24839592 84.034698486 7.7538991 -11.11279869 84.034698486 7.61403799
		 -14.27914524 100.82637024 22.81457329 -14.3782692 100.82637024 22.71722412 -8.028997421 84.034698486 7.61403799
		 -7.92744112 84.034698486 7.71231604 -19.70635986 118.50151062 39.011341095 -19.7832489 118.35832977 38.97400665
		 -21.0059165955 118.35162354 38.28708649 -20.99938583 118.49407196 38.27041626 -19.78391647 121.70970154 35.93016434
		 -19.70635986 121.71517944 36.056720734 -20.99938583 121.68760681 36.058479309 -21.026027679 121.68733215 35.91479492
		 -4.75362396 77.48830414 -1.29926109 -4.66367531 77.45468903 -1.19886398 -5.50721169 75.81881714 3.68717766
		 -5.63143921 75.77754211 3.72822666 -7.96729851 77.43618011 -1.20293236 -7.8577714 77.48830414 -1.29926109
		 -7.9029026 75.77754211 1.91359615 -7.96729851 75.81676483 1.78967094 -5.8637867 70.68199158 -6.36316299
		 -5.96178627 70.64362335 -6.27469635 -6.98549461 75.72767639 -3.6964643 -7.084857464 75.66461182 -3.61376953
		 -5.96178627 69.5708847 -3.80142784 -5.9106369 69.54083252 -3.67470169 -7.084857464 73.60585785 -0.91425514
		 -7.032823563 73.55680847 -0.79150385 -18.34291077 114.23755646 36.08033371 -18.26325226 114.32453156 36.014102936
		 -18.26325226 116.98181915 32.80007172 -18.36244583 117.043701172 32.72522354 -21.081970215 113.21511078 36.010879517
		 -20.97198105 113.17436981 36.08033371 -21.48259354 117.043701172 32.72522354 -21.57435226 116.96857452 32.78969955
		 -18.60451889 115.31111908 36.72373199 -18.68552017 115.21773529 36.78100204 -18.70323563 118.16649628 33.49643707
		 -18.60451889 118.10107422 33.57036972 -21.91331863 118.07384491 33.56373215 -21.84880447 118.23088074 33.54066467
		 -22.14422607 117.91149139 34.14753342 -22.14890671 117.75704956 34.15074539 -21.30921173 114.15962982 36.51689911
		 -21.40244675 114.17940521 36.3925705 -21.55304337 113.86985779 37.048706055 -21.52262497 113.88274384 37.24757767
		 -21.42944717 121.2028656 36.56374741 -21.45351028 121.19313812 36.41317368 -21.30886078 117.83326721 39.57544327
		 -21.30683517 118.001663208 39.55775452 -23.10215378 116.39435577 36.57455826 -23.12361526 116.54857635 36.58732986
		 -34.91940308 96.53023529 52.31139755 -34.80349731 96.46188354 52.29885483 -22.13573837 112.48891449 38.76113129
		 -22.15613937 112.51120758 38.57416916 -32.079910278 95.24140167 53.8735466 -32.057701111 95.24365997 54.019184113
		 -23.20086479 119.15151978 38.43337631 -23.18767929 119.16519165 38.58375168 -36.36628342 97.66716766 53.90629196
		 -36.36878967 97.65145874 53.75973129 -22.56406784 115.96370697 41.78585434 -22.5374279 115.79430389 41.78895569
		 -34.12095642 96.48053741 56.22071075 -34.23865128 96.54679108 56.21908188 -49.1966362 59.021400452 74.20277405
		 -49.31475449 59.10908127 74.21261597 -49.35621262 58.61242294 74.37687683 -49.23613358 58.52193069 74.3511734
		 -48.35438919 58.44609833 75.028106689 -48.36755753 58.45852661 74.87554169 -48.39541245 57.9529686 75.03427124
		 -48.39376831 57.94840622 75.17642975 -49.66939545 59.4218483 74.84229279 -49.65470505 59.40827179 74.99585724
		 -49.68949509 58.90433121 75.14237976 -49.70612335 58.917099 74.99945831 -49.072673798 58.91580582 75.56196594
		 -48.95236588 58.82699585 75.56304169 -48.98432541 58.3233757 75.70477295 -49.11083221 58.41627884 75.70536041
		 -42.54643631 82.70052338 62.96026611 -42.5413208 82.67483521 62.82102966 -41.46857452 81.85595703 61.7842598
		 -41.35741806 81.76744843 61.80871582 -40.75234604 81.25437164 63.071422577 -40.74131393 81.26824951 63.21479034
		 -41.22142029 82.14233398 64.63200378 -41.32820892 82.23330688 64.63574219 -49.48839188 60.4384613 74.47083282
		 -49.50577927 60.45045853 74.31716919 -49.13743591 60.12602997 73.66725159 -49.025970459 60.042362213 73.64544678
		 -48.15726471 59.46323776 74.35411072 -48.15375519 59.4585762 74.50757599 -48.76673126 59.85066223 75.080131531
		 -48.88533783 59.93738937 75.080490112 -51.13946152 40.94261169 79.66111755 -51.2659111 40.99674225 79.68473053
		 -51.97559738 18.66419983 83.46852112 -51.8429451 18.62766266 83.44311523 -50.10057831 40.54263687 80.38686371
		 -50.098991394 40.54493332 80.24623108 -51.15975571 18.4593811 83.87219238 -51.16167831 18.45812988 84.0093688965
		 -50.95706177 40.85728836 80.81236267 -50.82662201 40.80299377 80.81427765 -51.62544632 18.56530762 84.28462219
		 -51.76180649 18.60188293 84.28189087 -51.69385529 41.20719147 80.2093811 -51.67539597 41.19945526 80.34926605
		 -52.22566605 18.74427795 83.9757843 -52.24889374 18.75080872 83.83955383 -51.3528595 0 87.035339355
		 -51.3249054 0 87.16950989 -51.070152283 0 86.77119446 -51.20284653 0 86.79588318
		 -50.68552017 -1.5258789e-05 87.20005798 -50.67924118 -1.5258789e-05 87.063262939
		 -51.069076538 0 87.34539795 -50.93405151 0 87.3497467 -49.59785461 59.87064362 74.61288452
		 -49.5803299 59.85779953 74.76766205 -49.12747955 59.47198486 73.95437622 -49.23947525 59.55643082 73.97801208
		 -48.2700119 58.89138412 74.80342102 -48.27254868 58.89620209 74.64975739 -48.9896698 59.3620224 75.35223389
		 -48.87117004 59.2750206 75.35173035 -49.72353363 58.37431717 75.29824066 -49.74016953 58.38705444 75.15573883;
	setAttr ".vt[664:829]" -49.38829422 58.081699371 74.52886963 -49.26707077 57.9915657 74.51515198
		 -48.43728638 57.43190765 75.1902771 -48.43566513 57.42737579 75.33239746 -49.022903442 57.79898071 75.85782623
		 -49.14706039 57.88974762 75.85923767 -21.72408676 117.46016693 33.12824249 -21.63351822 117.53713226 33.064147949
		 -21.11263657 113.58123016 36.39222717 -21.20786667 113.58532715 36.2926445 -18.41322899 114.75720215 36.32700729
		 -18.49236679 114.66880035 36.39222717 -18.51161194 117.53713226 33.064147949 -18.41322899 117.47332764 33.13903809
		 -21.64843369 117.26422119 40.18299103 -21.65415192 117.44471741 40.16752625 -21.91458511 120.64025116 37.12155151
		 -21.93678284 120.62916565 36.97061157 -22.41418839 117.53356171 34.81978607 -22.41233444 117.38227844 34.81897736
		 -21.71705246 113.48112488 37.4790535 -21.69233322 113.48334503 37.65614319 -21.98258591 116.71324921 40.78756332
		 -21.99590492 116.88677979 40.77700424 -22.39275742 120.085510254 37.67150497 -22.41240311 120.073234558 37.51978302
		 -22.68045807 117.16107941 35.48222733 -22.67198563 117.013084412 35.4774971 -21.88236618 113.11943817 37.88825226
		 -21.8588295 113.11287689 38.073329926 -3.78619576 75.68444061 -3.59053802 -3.71037674 75.6604538 -3.5986557
		 -3.73903656 75.61595917 -3.75550842 -3.86575508 75.72767639 -3.6964643 -4.14782333 76.41737366 -2.60685921
		 -4.23640633 76.45497894 -2.70619965 -4.97754669 73.55680847 1.51653671 -4.85816002 73.46689606 1.55783856
		 -4.82424736 73.48374939 1.68604934 -4.85587311 73.61000824 1.49202251 -5.24816895 74.4741745 2.42978096
		 -5.12508774 74.52215576 2.39951134 -7.44938612 74.51916504 0.20279501 -7.39141464 74.4741745 0.32727242
		 -7.343472 76.45497894 -2.70619965 -7.44938612 76.39630127 -2.61802292 -6.027301788 73.55680847 0.33767891
		 -6.34285498 74.4741745 1.35590172 -6.79161453 75.77754211 2.80138397 -9.63303375 84.034698486 11.9462738
		 -15.9834671 100.82637024 27.29013824 -19.6857338 113.69452667 36.08033371 -19.83069992 114.11330414 36.39222717
		 -20.025600433 114.67728424 36.64611053 -20.40774155 118.35490417 38.62315369 -20.36678505 118.49770355 38.63290405
		 -20.36678505 121.70109558 36.057617188 -20.41833878 121.69827271 35.92231369 -20.30986786 118.1993866 33.51902771
		 -20.10615921 117.53713226 33.064147949 -19.95609665 117.043701172 32.72522354 -15.96318531 100.82637024 22.71722412
		 -9.60408211 84.034698486 7.61403799 -6.33909988 77.48830414 -1.29926109 -5.82337379 76.45497894 -2.70619965
		 -5.45919609 75.72767639 -3.6964643 6.027301788 73.55680847 0.33767891 6.34285498 74.4741745 1.35590172
		 6.79161263 75.77754211 2.80138397 9.63236618 84.034698486 11.9462738 15.98346519 100.82637024 27.29013824
		 19.68601608 113.69441986 36.08033371 19.83069992 114.11330414 36.39222717 20.025598526 114.67728424 36.64611053
		 20.40774155 118.35490417 38.62315369 20.36678505 118.49770355 38.63290405 20.36678505 121.70109558 36.057617188
		 20.41834068 121.69827271 35.92231369 20.30986977 118.1993866 33.51902771 20.10615921 117.53713226 33.064147949
		 19.95617294 117.043701172 32.72522354 15.96318245 100.82637024 22.71722412 9.60408211 84.034698486 7.61403799
		 6.33909988 77.48830414 -1.29926109 5.82337379 76.45497894 -2.70619965 5.45919609 75.72767639 -3.6964643
		 -4.31193542 74.66487122 -1.09249115 -4.62814331 75.48588562 -0.14625931 -5.078268051 76.65066528 1.20259476
		 -7.92744112 84.034698486 9.73292923 -14.27914524 100.82637024 24.95822525 -18.26325226 115.67578125 34.37974548
		 -18.41322708 116.1383667 34.70590591 -18.60451889 116.72983551 35.12022781 -19.70635986 120.13567352 37.50889969
		 -20.36678505 120.12665558 37.32335663 -20.99938583 120.11799622 37.1456337 -21.36918259 119.62949371 38.035282135
		 -21.78658676 119.069671631 38.61862946 -22.19770432 118.51335907 39.19783783 -22.88117599 117.59169006 40.15756607
		 -35.32056427 97.11650848 55.043018341 -41.94768524 82.47088623 63.78375244 -49.19199371 60.19218445 74.77047729
		 -49.2900238 59.61412811 75.054977417 -49.3686409 59.16622925 75.27409363 -49.40508652 58.6644516 75.41908264
		 -49.44020081 58.13615417 75.57396698 -51.32234192 41.031280518 80.57687378 -51.99768066 18.67428589 84.12623596
		 -51.19916153 0 87.25596619 4.31193542 74.66487122 -1.09249115 4.62814331 75.48588562 -0.14625931
		 5.078268051 76.65066528 1.20259476 7.92744112 84.034698486 9.73289871 14.27914524 100.82637024 24.95795441
		 18.26325226 115.67586517 34.37964249 18.41322899 116.1383667 34.70590591 18.60451889 116.72983551 35.12022781
		 19.70635986 120.13567352 37.50889969 20.36678505 120.12665558 37.32335663 20.99938774 120.11799622 37.1456337
		 21.36918449 119.62949371 38.035282135 21.78658295 119.069671631 38.61862946 22.19770813 118.51335907 39.19783783
		 22.88117599 117.59169006 40.15756607 35.3208847 97.11667633 55.042667389 41.94768524 82.47088623 63.78375244
		 49.19125748 60.19157028 74.77122498 49.2900238 59.61412811 75.054977417 49.3686409 59.16622925 75.27409363
		 49.40508652 58.6644516 75.41908264 49.44072342 58.13659286 75.57345581 51.32234573 41.031280518 80.57687378
		 51.99705505 18.67410278 84.12666321 51.19915771 0 87.25596619 22.28776169 113.73987579 39.90704346
		 32.84189224 95.71376801 54.85593033 40.92317963 81.5993576 63.75163651 48.38572311 59.60695267 74.72424316
		 48.49727249 59.0364151 75.010696411 48.58044434 58.59009171 75.23033142 48.61701965 58.09016037 75.37615967
		 48.65722275 57.56757736 75.53063965 50.37504959 40.64105988 80.54843903 51.33740234 18.49874878 84.11366272
		 50.77947235 -7.6293945e-06 87.25665283 51.259552 0 86.88641357 52.078365326 18.69676971 83.60804749
		 51.42768478 41.07629776 79.8830719 49.5218544 58.19760132 74.76679993 49.48849106 58.72759628 74.61222839
		 49.44882202 59.22732544 74.45065308 49.37495804 59.67521286 74.21801758 49.27668381 60.24868011 73.91294861
		 41.87311554 82.1647644 62.17523193 35.4673233 96.95410156 52.85891724 23.15281677 117.53257751 37.28520203
		 22.57912445 118.26197815 36.25249481 22.23371315 118.70381927 35.63287354 21.88311005 119.15206909 35.0040283203
		 21.53776741 119.53754425 34.43817139 20.35087585 119.52207947 34.4275589 19.11177063 119.50595093 34.41647339
		 19.021053314 119.46733093 34.51029968 19.021053314 118.017364502 36.023231506;
	setAttr ".vt[830:995]" 19.021053314 116.51721191 37.58853149 19.10050201 116.40498352 37.61003876
		 20.17006302 116.067565918 37.39350128 21.19455528 115.74435425 37.18609619 21.44102478 115.39073181 38.13616943
		 21.67573929 114.91265106 38.61138153 21.90561485 114.47395325 39.099407196 -22.28758812 113.73847961 39.9057579
		 -32.83768463 95.71124268 54.85144424 -40.9228096 81.59868622 63.7505455 -48.38547897 59.60680389 74.72402191
		 -48.49727249 59.0364151 75.010696411 -48.58044434 58.59009171 75.23033142 -48.61701965 58.09016037 75.37615967
		 -48.65766144 57.56785965 75.53102112 -50.37504578 40.64105988 80.54843903 -51.33700562 18.49864006 84.11343384
		 -50.77947235 -7.6293945e-06 87.25665283 -51.259552 0 86.88641357 -52.078914642 18.69694519 83.60877991
		 -51.42769241 41.07629776 79.8830719 -49.52131653 58.19713593 74.76585388 -49.48849106 58.72759628 74.61222839
		 -49.44881821 59.22732544 74.45065308 -49.37495804 59.67521286 74.21801758 -49.27668381 60.24868011 73.91294861
		 -41.87411118 82.16551971 62.17619705 -35.4673233 96.95410156 52.85891724 -23.15281677 117.53257751 37.28520203
		 -22.57912445 118.26197815 36.25249481 -22.23371124 118.70381927 35.63287354 -21.88311005 119.15206909 35.0040283203
		 -21.5377655 119.53754425 34.43817139 -20.35087204 119.52207947 34.4275589 -19.11177063 119.50595093 34.41647339
		 -19.021053314 119.46733093 34.51029968 -19.021053314 118.017364502 36.023231506 -19.021053314 116.51721191 37.58853149
		 -19.10050201 116.40498352 37.61003876 -20.17006302 116.067565918 37.39350128 -21.19455338 115.74435425 37.18609619
		 -21.44181442 115.37618256 38.12759399 -21.67573929 114.91265106 38.61138153 -21.90561295 114.47395325 39.099407196
		 2.3136874e-16 63.0010185242 23.71092415 -1.4976012e-17 52.95626068 6.6650176 1.0838499e-15 86.44290161 12.94538784
		 -3.4563455e-16 73.35631561 -5.39257622 -11.14028454 69.28364563 10.20116138 -6.8576107 55.56905746 19.44774055
		 -4.57706642 83.68693542 13.5295639 -3.14358211 63.068187714 23.71092415 -2.40700746 52.95624161 6.66502428
		 -4.04681778 73.35630798 -5.39258575 0 50.57206345 21.61921692 -1.83911014 50.57147217 21.13266945
		 -3.10804462 50.61048889 18.34706116 -12.19305038 68.072731018 3.42123508 -4.97366762 79.19535828 5.30254173
		 5.0397804e-16 80.75308228 4.31544399 -4.53784418 58.66777802 25.49511528 -1.55046463 54.022319794 24.94183731
		 -8.3266727e-17 60.40259171 26.083904266 3.3306691e-16 54.92407227 26.44332314 1.7581666e-16 89.12833405 17.43338394
		 4.22887e-16 87.409935 12.50203419 -10.26515102 86.13560486 14.86128902 -7.88751602 82.78675079 10.51181316
		 -16.72470093 76.70322418 5.90025282 -17.58078957 73.5693512 2.25977588 -3.66341424 50.69534302 21.40232277
		 -7.2244463 52.97062302 21.82072067 -15.022089005 81.18210602 11.055175781 -6.184659 55.99536896 24.084133148
		 -2.6350472 51.95767975 22.71920013 -12.37169838 75.73995972 3.69446301 -3.15048552 88.37155914 16.10166168
		 -1.58837962 60.46976089 26.083904266 -0.6511122 54.81723404 25.95295334 -2.93725491 86.18521881 12.42540455
		 11.14028454 69.28364563 10.20116138 6.8576107 55.56905746 19.44774055 4.57706642 83.68693542 13.5295639
		 3.14358211 63.068187714 23.71092415 2.40700746 52.95624161 6.66502428 4.04681778 73.35630798 -5.39258575
		 1.83911014 50.57147217 21.13266945 3.10804462 50.61048889 18.34706116 12.19305038 68.072731018 3.42123508
		 4.97366762 79.19535828 5.30254173 4.53784418 58.66777802 25.49511528 1.55046463 54.022319794 24.94183731
		 10.26515102 86.13560486 14.86128902 7.88751602 82.78675079 10.51181316 16.72470093 76.70322418 5.90025282
		 17.58078957 73.5693512 2.25977588 3.66341424 50.69534302 21.40232277 7.2244463 52.97062302 21.82072067
		 15.022089005 81.18210602 11.055175781 6.184659 55.99536896 24.084133148 2.6350472 51.95767975 22.71920013
		 12.37169838 75.73995972 3.69446301 3.15048552 88.37155914 16.10166168 1.58837962 60.46976089 26.083904266
		 0.6511122 54.81723404 25.95295334 2.93725491 86.18521881 12.42540455 9.41768932 66.33859253 15.080550194
		 14.061168671 62.3032341 9.56019592 16.21552086 66.71820068 16.31735992 12.96313953 71.25828552 19.36422348
		 10.2709198 74.31750488 20.7393837 4.63356876 77.893013 21.26165962 5.1770654e-17 79.32884979 20.33189201
		 -4.63356876 77.893013 21.26165962 -10.2709198 74.31750488 20.7393837 -12.96313953 71.25828552 19.36422348
		 -16.21552086 66.71820068 16.31735992 -14.061168671 62.3032341 9.56019592 -9.41768932 66.33859253 15.080550194
		 -6.67033195 69.33613586 17.25947571 -3.28002167 71.51715088 18.13229942 3.8088703e-16 72.21913147 18.8544445
		 3.28002167 71.51715088 18.13229942 6.67033195 69.33613586 17.25947571 0 50.46900558 18.23973656
		 24.045135498 65.86768341 14.20015144 16.92723846 63.15697861 15.44048309 9.25623989 45.5676384 39.11656189
		 8.79163456 45.59072495 39.10893631 8.65437412 46.56991577 39.95612335 8.47785854 46.57868958 39.953228
		 8.57693672 71.05834198 29.28920746 8.00014019012 71.087745667 29.27948761 8.5976162 44.54334259 40.41860962
		 8.4028883 44.55311203 40.41536713 8.41518021 44.87263489 40.57582855 8.59038925 44.86384964 40.57872009
		 8.58787632 44.82382965 38.55604935 8.4111824 44.83262634 38.55314636 8.70549679 50.53936768 12.26392937
		 8.10678768 50.56878281 12.25420475 15.46323204 67.80076599 19.70399475 8.67761612 45.95110703 39.41691208
		 8.40804863 44.68596649 40.48414612 8.59974575 44.67636108 40.48732758 9.036740303 45.93323898 39.4228096
		 18.34487152 67.76108551 19.70421219 17.32738113 59.15488434 13.35220909 8.963624 45.24189758 38.87109756
		 8.62519169 45.25872421 38.86553955 14.70868397 59.19338989 13.35090065 9.1413765 66.85266113 17.2520752
		 9.14134502 68.8045578 10.90271473 9.14138317 69.084625244 15.58596897 9.14135647 72.05909729 8.48426151
		 9.14135838 62.59282684 7.37187862 9.1413517 60.56598282 8.88708687 17.50068092 67.88248444 19.32646561
		 14.88335991 67.71380615 19.47909355 16.21307755 63.67500305 15.024256706 14.19802189 59.31929398 12.94145966
		 16.57652092 59.4702301 12.80366325 22.67808723 66.43559265 13.67586136 16.78993034 67.98469543 19.0084285736
		 14.39514637 67.64058685 19.28973961 15.61180115 64.11114502 14.67382336;
	setAttr ".vt[996:1161]" 13.76807499 59.42529297 12.596735 15.94434166 59.7357254 12.34182262
		 21.5271244 66.91372681 13.23444366 20.59094048 67.30264282 12.87539864 16.21181107 68.067832947 18.7497406
		 13.99803829 67.5810318 19.13572121 15.12273026 64.46590424 14.38877964 13.41836262 59.51151657 12.31634045
		 15.43013573 59.95167923 11.9661684 4.26020813 88.70043945 -1.0069093704 4.7873168 88.51820374 -10.50300026
		 7.60316086 80.62914276 -19.17694473 6.26234102 84.77089691 -15.046673775 1.56050539 90.47333527 -10.50300026
		 1.56179881 90.9001236 -1.0069093704 1.56179881 86.43252563 -1.0069093704 3.44916725 84.071968079 -6.44848919
		 4.22186518 79.60758209 -12.26120567 4.92425823 75.5493927 -17.54504967 4.22605419 73.72061157 -19.3787365
		 2.47837639 83.87696075 -19.17694283 2.041314125 86.99051666 -15.046673775 -4.26020813 88.70043945 -1.0069093704
		 -4.7873168 88.51820374 -10.50300026 -7.60316086 80.62914276 -19.17694473 -6.26234102 84.77089691 -15.046673775
		 -1.56050539 90.47333527 -10.50300026 -1.56179881 90.9001236 -1.0069093704 -1.56179881 86.43252563 -1.0069093704
		 -3.44916725 84.071968079 -6.44848919 -4.22186518 79.60758209 -12.26120567 -4.92425823 75.5493927 -17.54504967
		 -4.22605419 73.72061157 -19.3787365 -2.47837639 83.87696075 -19.17694283 -2.041314125 86.99051666 -15.046673775
		 2.47837639 76.29894257 -25.11708069 8.13943577 73.70890045 -24.45126152 4.55301809 74.57701874 -18.52003479
		 -4.55301809 74.57701874 -18.52003479 -8.13943672 73.70890045 -24.45126152 -2.47837639 76.29894257 -25.11708069
		 -0.17846262 82.78961945 13.84559631 0.17846262 82.78961945 13.84559631 0.17846262 85.020614624 10.43617725
		 -0.17846262 85.020614624 10.43617725 0.17846262 78.53111267 13.84559631 -0.17846262 78.53111267 13.84559631
		 2.56249309 82.076507568 13.84559631 2.73597002 84.25099945 10.41862202 4.75719357 80.59999084 10.34475517
		 4.89096689 80.914711 10.42364216 4.5878334 78.89372253 13.84559631 1.064253569 85.02142334 10.4345932
		 1.010214686 82.78742218 13.84559631 6.26176834 86.79606628 -1.0069093704 6.12667608 86.43252563 -1.0069093704
		 0.17846262 90.9001236 -1.0069093704 -0.17846262 90.9001236 -1.0069093704 0.17846262 86.43252563 -1.0069093704
		 -0.17846262 86.43252563 -1.0069093704 10.24705696 82.97899628 -6.68242073 10.059741974 82.74456787 -6.44848919
		 0.17846262 84.48920441 -6.44848919 -0.17846262 84.48920441 -6.44848919 0.17846262 90.47333527 -10.50300026
		 -0.17846262 90.47333527 -10.50300026 12.57946014 78.96974945 -12.41626072 12.42671204 78.68672943 -12.26120567
		 0.17846262 79.8082428 -12.26120567 -0.17846262 79.8082428 -12.26120567 0.17846262 87.043106079 -15.046673775
		 -0.17846262 87.043106079 -15.046673775 14.46861839 74.69297791 -17.54504967 14.6213398 75.023361206 -17.65059471
		 13.38685036 71.16960907 -22.11311531 13.352911 71.1293869 -21.63653374 7.31117058 67.64539337 -29.53710365
		 7.66189098 67.8727417 -29.70290184 12.37701607 68.00060272217 -25.22785187 12.43386936 68.28636932 -25.44352722
		 0.17846262 75.5493927 -17.54504967 -0.17846262 75.5493927 -17.54504967 0.17846262 75.0040512085 -18.12833977
		 -0.17846262 75.0040512085 -18.12833977 0.17846262 83.93043518 -19.17694473 -0.17846262 83.93043518 -19.17694473
		 -0.17846262 76.33357239 -25.1170845 0.17846262 76.33357239 -25.1170845 -0.17846262 74.52120972 -18.6443882
		 0.17846262 74.52120972 -18.6443882 0.17846262 68.35377502 -29.97228432 0.17846262 68.098854065 -29.72245216
		 -0.17846262 68.098854065 -29.72245216 -0.17846262 68.35377502 -29.97228432 2.57681203 68.055038452 -29.73088837
		 2.47837639 68.31769562 -29.98250771 1.069344997 80.61398315 10.31750965 1.056097269 78.87361908 13.84559631
		 0.8776347 78.53111267 13.84559631 -4.76372242 80.59721375 10.35015678 -4.5878334 78.89372253 13.84559631
		 -4.89096689 80.914711 10.42364216 -0.87763482 78.53111267 13.84559631 -1.056097269 78.87361908 13.84559631
		 -1.069344997 80.61398315 10.31750965 -2.55640221 82.069480896 13.84559631 -2.73597002 84.25099945 10.41862202
		 -1.064253569 85.02142334 10.4345932 -1.010790348 82.79006958 13.84559631 -6.12667608 86.43252563 -1.0069093704
		 -6.26176834 86.79606628 -1.0069093704 -7.31117153 67.64539337 -29.53710365 -7.66189194 67.8727417 -29.70290184
		 -12.43386936 68.28636932 -25.44352722 -12.37701607 68.00060272217 -25.22785187 -2.57567787 68.051147461 -29.7380085
		 -2.47837639 68.31069183 -29.98678017 -10.059740067 82.74456787 -6.44848919 -10.24705696 82.97899628 -6.68242073
		 -12.42671013 78.68672943 -12.26120567 -12.57945919 78.96974945 -12.41626072 -14.62133789 75.023361206 -17.65059471
		 -14.49750423 74.69038391 -17.54504967 -13.35291004 71.1293869 -21.63653374 -13.38684654 71.16960907 -22.11311531
		 1.53008223 86.057785034 -0.27755928 6.038474083 86.056877136 -0.27580452 6.17348146 86.41727448 -0.27072382
		 4.16203928 88.41387177 -0.27104712 1.5297544 90.52150726 -0.27001858 0.17846262 90.52145386 -0.26991653
		 -0.17846262 90.52145386 -0.26991653 -1.5297544 90.52150726 -0.27001858 -4.16203976 88.41387177 -0.27104712
		 -6.17348146 86.41727448 -0.27072382 -6.03889513 86.05670166 -0.27545643 -1.53008235 86.057785034 -0.27755928
		 -4.29275942 88.6891861 -1.59333611 -6.50787783 86.56034851 -1.35739803 -6.3695612 86.20478058 -1.34295177
		 -1.67835236 86.28675079 -1.34295177 -0.17846262 86.31251526 -1.34295177 0.17846262 86.31251526 -1.34295177
		 1.67835236 86.28675079 -1.34295177 6.3695612 86.20478058 -1.34295177 6.50787783 86.56034851 -1.35739803
		 4.29275942 88.6891861 -1.59333611 1.56171894 90.87376404 -1.59333658 0.17846262 90.87376404 -1.59333611
		 -0.17846262 90.87376404 -1.59333658 -1.56171894 90.87376404 -1.59333658 -4.31890631 88.68014526 -2.064385414
		 -6.70556593 86.3710022 -1.63892937 -6.56465912 86.021835327 -1.61287844 -1.77197444 86.16965485 -1.6128788
		 -0.17846274 86.21611786 -1.6128788 0.17846262 86.21611786 -1.61287844 1.77197444 86.16965485 -1.6128788
		 6.56465912 86.021835327 -1.6128788 6.70556593 86.3710022 -1.63892937 4.31890678 88.68014526 -2.064385414
		 1.56165481 90.8526001 -2.064385414 0.17846262 90.8526001 -2.064385414 -0.17846262 90.8526001 -2.064385414
		 -1.56165481 90.8526001 -2.064385414 1.50040841 85.70717621 0.4048171;
	setAttr ".vt[1162:1226]" 5.95595312 85.70542908 0.40821362 6.090881348 86.06288147 0.41804743
		 4.070193291 88.14575958 0.41742179 1.49977374 90.16727448 0.41941261 0.17846262 90.16717529 0.41961005
		 -0.17846262 90.16717529 0.41961005 -1.49977374 90.16727448 0.41941261 -4.070193768 88.14575958 0.41742179
		 -6.090880871 86.06288147 0.41804743 -5.95676756 85.70508575 0.40888739 -1.50040865 85.70717621 0.4048171
		 9.25623989 45.5676384 39.11656189 8.79163456 45.59072495 39.10893631 8.60489941 44.56869888 40.43484116
		 8.40388012 44.57878113 40.43149185 -8.59956264 44.67636108 40.48732758 -8.59038925 44.86384964 40.57872009
		 -8.41518021 44.87263489 40.57582855 -8.40804863 44.68596649 40.48414612 -8.65437412 46.56991577 39.95612335
		 -8.57693672 71.05834198 29.28920746 -8.00014019012 71.087745667 29.27948761 -8.47785854 46.57868958 39.953228
		 -18.34487152 67.76108551 19.70421219 -15.46323204 67.80076599 19.70399475 -8.67738914 45.95110703 39.41691208
		 -9.036740303 45.93323898 39.4228096 -8.58787632 44.82382965 38.55604935 -8.41095543 44.83262634 38.55314636
		 -8.10678768 50.56878281 12.25420475 -8.70549679 50.53936768 12.26392937 -14.70868397 59.19338989 13.35090065
		 -17.32738113 59.15488434 13.35220909 -8.62519169 45.25872421 38.86553955 -8.963624 45.24189758 38.87109756
		 -8.59743309 44.54334259 40.41860962 -8.4028883 44.55311203 40.41536713 -16.92723846 63.15697861 15.44048309
		 -8.79163456 45.59072495 39.10893631 -9.25623989 45.5676384 39.11656189 -24.045135498 65.86768341 14.20015144
		 -14.88335991 67.71380615 19.47909355 -16.21307755 63.67500305 15.024256706 -22.67808723 66.43559265 13.67586136
		 -17.50068092 67.88248444 19.32646561 -16.57652092 59.4702301 12.80366325 -14.19802189 59.31929398 12.94145966
		 -16.78993034 67.98469543 19.0084285736 -14.39514637 67.64058685 19.28973961 -15.61180115 64.11114502 14.67382336
		 -13.76807499 59.42529297 12.596735 -15.94434166 59.7357254 12.34182262 -21.5271244 66.91372681 13.23444366
		 -16.21181107 68.067832947 18.7497406 -13.99803829 67.5810318 19.13572121 -15.12273026 64.46590424 14.38877964
		 -13.41836262 59.51151657 12.31634045 -15.43013573 59.95167923 11.9661684 -20.59094048 67.30264282 12.87539864
		 -9.14135647 72.05909729 8.48426151 -9.14138317 69.084625244 15.58596897 -9.1413765 66.85266113 17.2520752
		 -9.14134502 68.8045578 10.90271473 -9.1413517 60.56598282 8.88708687 -9.14135838 62.59282684 7.37187862;
	setAttr -s 2400 ".ed";
	setAttr ".ed[0:165]"  0 23 1 21 0 1 22 1 1 2 8 0 8 11 0 11 12 1 2 12 0 7 1 0
		 6 7 0 13 14 1 14 10 0 5 10 0 13 5 0 10 8 0 5 2 0 12 13 1 3 9 0 9 22 0 3 6 0 4 20 0
		 4 7 0 3 4 0 10 17 0 18 11 0 18 19 0 19 16 0 16 11 0 11 9 0 12 3 0 4 13 0 20 14 0
		 15 0 0 15 16 0 17 15 0 10 18 0 17 19 0 20 1 1 17 21 0 6 22 0 23 16 0 24 22 0 9 24 0
		 25 17 0 14 25 0 16 24 0 20 25 0 24 26 0 23 26 1 26 22 1 20 27 1 25 27 0 27 21 1 28 38 0
		 37 38 1 34 37 0 28 34 0 32 33 0 33 1 0 32 22 0 39 31 0 31 36 0 40 36 0 39 40 1 31 28 0
		 36 34 0 38 39 1 29 32 0 35 22 0 29 35 0 30 33 0 30 20 0 29 30 0 46 22 0 35 46 0 36 43 0
		 47 43 0 40 47 0 42 37 0 45 42 0 44 45 0 44 37 0 37 35 0 42 46 0 38 29 0 30 39 0 20 40 0
		 20 47 0 41 42 0 23 42 0 41 0 0 46 26 0 47 27 0 43 21 0 43 41 0 36 44 0 43 45 0 50 60 0
		 59 60 1 56 59 0 50 56 0 54 55 0 55 49 0 70 49 1 54 70 0 61 53 0 53 58 0 62 58 0 61 62 1
		 53 50 0 58 56 0 60 61 1 51 54 0 57 70 0 51 57 0 68 49 1 52 55 0 52 68 0 51 52 0 72 70 0
		 57 72 0 58 65 0 73 65 0 62 73 0 64 59 0 67 64 0 66 67 0 66 59 0 59 57 0 64 72 0 60 51 0
		 52 61 0 68 62 0 68 73 0 63 64 0 71 64 0 48 71 1 63 48 0 72 74 0 71 74 1 74 70 1 68 75 1
		 73 75 0 65 69 0 75 69 1 69 48 1 65 63 0 58 66 0 65 67 0 76 82 0 82 85 0 85 86 1 76 86 0
		 80 70 0 81 49 0 80 81 0 87 88 1 88 84 0 79 84 0 87 79 0 84 82 0 79 76 0 86 87 1 77 83 0
		 83 70 0 77 80 0 78 68 0;
	setAttr ".ed[166:331]" 78 81 0 77 78 0 83 94 0 94 70 0 88 95 0 95 91 0 84 91 0
		 92 85 0 92 93 0 93 90 0 90 85 0 90 94 0 85 83 0 86 77 0 78 87 0 68 88 0 68 95 0 89 48 0
		 71 90 0 89 90 0 94 74 0 95 75 0 91 69 0 91 89 0 84 92 0 91 93 0 97 98 1 99 96 1 99 100 1
		 96 101 1 100 101 1 98 102 1 97 103 1 103 102 1 100 104 1 101 105 1 104 105 1 102 106 1
		 103 107 1 107 106 1 104 108 1 105 109 1 108 109 1 108 181 1 96 110 1 97 111 1 101 112 1
		 110 112 1 103 113 1 111 113 1 105 114 1 112 114 1 107 115 1 113 115 1 109 116 1 114 116 1
		 116 197 1 117 118 1 118 128 1 128 127 1 127 117 1 117 120 1 120 119 1 119 118 1 121 122 1
		 122 126 1 126 125 1 125 121 0 121 124 0 124 123 1 123 122 1 128 245 1 117 97 1 98 120 1
		 123 99 1 96 122 1 110 126 1 127 111 1 141 142 1 132 129 1 132 133 1 133 134 1 129 134 1
		 130 131 1 130 136 1 136 135 1 131 135 1 133 137 1 137 138 1 134 138 1 136 140 1 140 139 1
		 135 139 1 137 141 1 138 142 1 141 276 1 134 145 1 143 145 1 129 143 1 130 144 1 144 146 1
		 136 146 1 138 147 1 145 147 1 146 148 1 140 148 1 142 149 1 147 149 1 149 278 1 150 151 1
		 151 161 1 161 160 1 160 150 1 150 153 1 153 152 1 152 151 1 154 155 1 155 159 1 159 158 1
		 158 154 0 154 157 0 157 156 1 156 155 1 161 299 1 150 130 1 131 153 1 156 132 1 129 155 1
		 143 159 1 160 144 1 181 180 0 196 197 0 240 127 1 241 240 0 242 241 0 244 241 0 244 243 0
		 245 244 0 277 276 0 278 279 0 298 160 1 297 296 0 298 297 0 300 297 0 300 299 0 301 300 0
		 162 163 1 163 179 0 179 178 0 178 162 1 162 165 1 165 164 1 164 163 0 165 183 1 183 182 1
		 182 164 0 166 167 1 167 228 0 228 229 0 229 166 1 166 169 1 169 168 1 168 167 0 169 175 1
		 175 174 1 174 168 0;
	setAttr ".ed[332:497]" 170 171 1 171 232 1 232 233 1 233 170 1 170 173 0 173 172 1
		 172 171 1 173 177 0 177 176 1 176 172 1 175 178 1 179 174 0 177 180 0 181 176 1 183 199 1
		 199 198 0 198 182 0 184 185 1 185 236 0 236 237 0 237 184 1 184 187 1 187 186 1 186 185 0
		 187 193 1 193 192 1 192 186 0 188 189 1 189 240 1 240 242 1 242 188 0 188 191 0 191 190 1
		 190 189 1 191 195 0 195 194 1 194 190 1 193 197 1 196 192 0 195 198 0 199 194 1 200 201 1
		 201 203 1 203 202 1 202 200 1 200 225 1 225 224 0 224 201 1 203 205 1 205 204 1 204 202 1
		 205 209 1 209 208 0 208 204 1 206 209 1 209 299 0 299 301 0 301 206 0 207 206 0 206 213 1
		 213 212 0 212 207 1 208 207 1 207 243 0 243 245 0 245 208 0 210 213 1 213 294 0 294 295 1
		 295 210 0 211 210 0 210 215 1 215 214 1 214 211 1 212 211 1 211 238 0 238 239 1 239 212 0
		 215 217 1 217 216 1 216 214 1 217 219 0 219 218 1 218 216 0 219 223 1 223 222 1 222 218 1
		 220 223 1 223 290 0 290 291 1 291 220 1 221 220 1 220 227 1 227 226 0 226 221 1 222 221 1
		 221 234 1 234 235 1 235 222 0 224 227 1 227 286 0 286 287 1 287 224 0 226 225 1 225 230 0
		 230 231 1 231 226 0 228 231 0 230 229 0 232 235 1 234 233 0 236 239 0 238 237 0 246 247 1
		 247 274 1 274 275 0 275 246 0 246 249 0 249 248 1 248 247 1 249 283 0 283 282 1 282 248 1
		 250 251 1 251 284 1 284 285 0 285 250 0 250 252 0 252 253 1 253 251 1 252 266 0 266 267 1
		 267 253 1 254 255 1 255 288 1 288 289 1 289 254 1 254 257 1 257 256 1 256 255 0 257 269 1
		 269 268 1 268 256 0 258 259 1 259 292 1 292 293 0 293 258 0 258 260 0 260 261 1 261 259 1
		 260 270 0 270 271 1 271 261 1 262 263 1 263 296 0 296 298 1 298 262 1 262 265 1 265 264 1
		 264 263 0 265 273 1 273 272 1 272 264 0 266 275 0 274 267 1 269 276 1;
	setAttr ".ed[498:663]" 277 268 0 270 279 0 278 271 1 273 281 1 281 280 0 280 272 0
		 281 282 1 283 280 0 284 287 0 286 285 0 288 291 0 290 289 1 292 295 0 294 293 0 108 163 1
		 164 109 1 170 167 1 168 173 1 188 185 1 186 191 1 174 177 1 192 195 1 179 180 0 107 165 1
		 162 106 1 196 198 0 102 169 1 166 98 1 99 171 1 172 100 1 106 175 1 176 104 1 182 116 1
		 115 183 1 112 187 1 184 110 1 111 189 1 190 113 1 114 193 1 194 115 1 120 229 1 230 119 1
		 124 235 0 232 123 1 228 233 1 234 231 1 126 237 1 238 125 0 236 242 1 243 239 1 121 216 1
		 218 124 1 119 200 1 202 118 1 204 128 1 125 214 1 142 249 1 246 141 1 256 252 1 250 255 1
		 264 260 1 258 263 1 268 266 1 272 270 1 277 275 0 139 247 1 248 140 1 280 279 0 131 251 1
		 253 135 1 133 257 1 254 132 1 267 139 1 137 269 1 149 283 1 282 148 1 143 259 1 261 145 1
		 146 265 1 262 144 1 271 147 1 148 273 1 152 287 1 284 153 1 156 289 1 290 157 0 286 291 1
		 288 285 1 158 295 0 292 159 1 294 301 1 296 293 1 157 219 1 217 154 1 151 203 1 201 152 1
		 161 205 1 215 158 1 302 303 0 303 354 0 302 307 0 303 306 0 304 308 0 305 309 0 304 305 1
		 306 310 0 305 306 1 307 311 0 306 307 1 307 304 1 308 312 0 309 313 0 308 309 1 310 314 0
		 309 310 1 311 315 0 310 311 1 311 308 1 312 313 0 313 314 0 314 315 1 315 312 0 316 317 0
		 317 555 0 318 319 1 316 321 0 321 318 1 317 320 0 320 321 1 319 320 1 318 322 0 322 323 1
		 319 323 0 323 324 1 320 324 0 324 325 1 321 325 0 325 322 1 322 312 0 323 313 0 324 314 0
		 325 315 0 351 302 0 351 350 0 355 350 0 355 354 0 455 454 0 456 811 0 457 458 0 457 456 0
		 459 810 0 458 459 0 461 799 0 461 460 0 503 302 0 504 304 0 505 775 0 502 503 0 503 504 0
		 505 504 0 509 305 0 510 303 1 508 509 0 510 509 0 511 510 0 550 316 0;
	setAttr ".ed[664:829]" 551 550 0 554 551 0 555 554 0 647 646 0 648 651 0 649 848 0
		 649 648 0 650 847 0 650 651 0 652 774 0 653 652 0 694 750 0 695 318 0 696 316 0 695 694 0
		 695 696 0 696 697 0 701 317 1 702 319 0 701 700 0 702 701 0 702 703 0 326 327 1 327 360 0
		 360 361 1 361 326 0 326 329 0 329 328 1 328 327 0 329 344 0 344 345 1 345 328 0 330 331 1
		 331 362 0 362 363 1 363 330 0 330 333 0 333 332 1 332 331 0 333 348 1 348 349 1 349 332 0
		 334 335 1 335 369 0 369 368 1 368 334 0 334 337 0 337 336 1 336 335 0 337 346 0 346 347 1
		 347 336 0 338 339 1 339 358 0 358 359 1 359 338 0 338 341 0 341 340 1 340 339 0 341 343 0
		 343 342 1 342 340 0 343 506 0 506 507 1 507 342 0 344 512 0 512 513 1 513 345 0 346 516 0
		 516 517 1 517 347 0 348 514 1 514 515 1 515 349 1 351 353 0 353 352 1 352 350 0 353 517 0
		 516 352 0 355 357 1 357 356 1 356 354 1 357 515 1 514 356 1 358 484 0 484 485 1 485 359 0
		 360 482 0 482 483 1 483 361 0 362 480 0 480 481 1 481 363 0 364 365 0 365 830 0 375 374 1
		 374 831 0 364 738 0 367 366 0 366 739 0 367 389 1 389 388 1 388 366 0 369 478 0 478 479 1
		 479 368 0 370 371 0 371 827 0 377 376 1 376 828 0 370 740 0 373 372 0 372 741 0 373 386 0
		 386 387 1 387 372 0 375 483 0 482 374 0 377 485 0 484 376 0 378 379 1 379 479 0 478 378 0
		 378 380 1 380 381 1 381 379 0 380 490 1 490 491 1 491 381 0 382 383 0 383 481 0 480 382 0
		 382 384 0 384 385 1 385 383 0 384 492 0 492 493 1 493 385 1 386 488 0 488 489 1 489 387 1
		 389 487 1 487 486 1 486 388 0 390 391 0 391 499 0 499 498 1 498 390 1 390 392 0 392 393 1
		 393 391 0 392 424 0 424 425 1 425 393 0 394 395 1 395 501 0 501 500 1 500 394 0 394 396 0
		 396 397 1 397 395 0 396 426 0 426 427 1 427 397 0 398 399 1 399 497 0;
	setAttr ".ed[830:995]" 497 496 1 496 398 0 398 401 0 401 400 1 400 399 0 401 423 0
		 423 422 1 422 400 0 402 403 1 403 494 0 494 495 1 495 402 1 402 404 0 404 405 1 405 403 0
		 404 428 0 428 429 1 429 405 0 406 407 1 407 465 0 465 464 1 464 406 0 406 408 0 408 409 1
		 409 407 0 408 472 0 472 473 1 473 409 0 410 411 1 411 467 0 467 466 1 466 410 0 410 412 0
		 412 413 1 413 411 0 412 474 0 474 475 1 475 413 0 414 415 1 415 463 0 463 462 1 462 414 0
		 414 417 0 417 416 1 416 415 0 417 471 0 471 470 1 470 416 0 418 419 1 419 469 0 469 468 1
		 468 418 0 418 420 0 420 421 1 421 419 0 420 476 0 476 477 1 477 421 0 423 430 0 430 431 1
		 431 422 0 424 432 0 432 433 1 433 425 0 426 435 0 435 434 1 434 427 0 428 436 0 436 437 1
		 437 429 0 430 462 0 463 431 0 432 464 0 465 433 0 435 466 0 467 434 0 436 468 0 469 437 0
		 438 439 1 439 473 0 472 438 0 438 440 0 440 441 1 441 439 0 440 456 0 457 441 0 442 443 1
		 443 475 0 474 442 0 442 444 0 444 445 1 445 443 0 444 458 0 459 445 0 446 447 1 447 477 0
		 476 446 0 446 448 0 448 449 1 449 447 0 448 460 0 461 449 0 450 451 1 451 470 0 471 450 0
		 450 453 0 453 452 1 452 451 0 453 454 0 455 452 0 487 495 1 494 486 0 488 496 0 497 489 0
		 490 498 1 499 491 0 492 500 0 501 493 0 502 505 1 505 507 0 506 502 0 508 511 0 511 513 0
		 512 508 0 518 519 1 519 559 0 559 558 1 558 518 0 518 521 0 521 520 1 520 519 0 521 545 0
		 545 544 1 544 520 0 522 523 1 523 563 0 563 562 1 562 522 0 522 525 0 525 524 1 524 523 0
		 525 549 0 549 548 1 548 524 1 526 527 1 527 565 0 565 564 1 564 526 0 526 529 0 529 528 1
		 528 527 0 529 547 0 547 546 1 546 528 0 530 531 1 531 561 0 561 560 1 560 530 0 530 533 0
		 533 532 1 532 531 0 533 543 0 543 542 1 542 532 0 534 535 0 535 868 0;
	setAttr ".ed[996:1161]" 567 566 1 566 867 0 534 719 0 537 536 0 536 718 0 537 581 0
		 581 580 1 580 536 1 538 539 0 539 865 0 569 568 1 568 864 0 538 721 0 541 540 0 540 720 0
		 541 579 0 579 578 1 578 540 0 543 698 0 698 699 1 699 542 0 545 704 0 704 705 1 705 544 0
		 547 708 0 708 709 1 709 546 0 549 706 1 706 707 1 707 548 1 551 553 0 553 552 1 552 550 0
		 553 709 0 708 552 0 555 557 1 557 556 1 556 554 1 557 707 1 706 556 1 559 674 0 674 675 1
		 675 558 0 561 676 0 676 677 1 677 560 0 563 672 0 672 673 1 673 562 0 565 670 0 670 671 1
		 671 564 0 567 675 0 674 566 0 569 677 0 676 568 0 570 571 1 571 671 0 670 570 0 570 573 0
		 573 572 1 572 571 1 573 683 0 683 682 1 682 572 1 574 575 0 575 673 0 672 574 0 574 577 0
		 577 576 1 576 575 0 577 685 1 685 684 1 684 576 0 579 681 1 681 680 1 680 578 0 581 679 0
		 679 678 1 678 580 1 582 583 0 583 690 1 690 691 1 691 582 0 582 585 0 585 584 1 584 583 0
		 585 617 0 617 616 1 616 584 0 586 587 1 587 692 0 692 693 1 693 586 0 586 589 0 589 588 1
		 588 587 0 589 619 0 619 618 1 618 588 0 590 591 1 591 688 0 688 689 1 689 590 0 590 593 0
		 593 592 1 592 591 0 593 615 0 615 614 1 614 592 0 594 595 1 595 686 1 686 687 1 687 594 0
		 594 597 0 597 596 1 596 595 0 597 621 0 621 620 1 620 596 0 598 599 1 599 657 0 657 656 1
		 656 598 0 598 601 0 601 600 1 600 599 0 601 665 0 665 664 1 664 600 0 602 603 1 603 659 0
		 659 658 1 658 602 0 602 605 0 605 604 1 604 603 0 605 667 0 667 666 1 666 604 0 606 607 1
		 607 655 0 655 654 1 654 606 0 606 609 0 609 608 1 608 607 0 609 663 0 663 662 1 662 608 0
		 610 611 1 611 661 0 661 660 1 660 610 0 610 613 0 613 612 1 612 611 0 613 669 0 669 668 1
		 668 612 0 615 623 0 623 622 1 622 614 0 617 625 0 625 624 1 624 616 0;
	setAttr ".ed[1162:1327]" 619 627 0 627 626 1 626 618 0 621 629 0 629 628 1 628 620 0
		 623 654 0 655 622 0 625 656 0 657 624 0 627 658 0 659 626 0 629 660 0 661 628 0 630 631 1
		 631 664 0 665 630 0 630 633 0 633 632 1 632 631 0 633 648 0 649 632 0 634 635 1 635 666 0
		 667 634 0 634 637 0 637 636 1 636 635 0 637 650 0 651 636 0 638 639 1 639 668 0 669 638 0
		 638 641 0 641 640 1 640 639 0 641 652 0 653 640 0 642 643 1 643 662 0 663 642 0 642 645 0
		 645 644 1 644 643 0 645 646 0 647 644 0 679 687 0 686 678 1 681 689 0 688 680 0 683 691 0
		 690 682 1 685 693 0 692 684 0 694 697 1 697 699 0 698 694 0 700 703 0 703 705 0 704 700 0
		 328 733 1 330 734 1 332 337 1 334 331 1 336 746 1 338 745 1 340 778 1 326 779 1 370 783 0
		 366 785 0 342 777 1 347 747 1 349 346 1 345 732 1 356 730 1 352 357 1 361 780 1 363 735 1
		 368 362 1 359 744 1 374 737 1 383 833 0 376 782 1 378 742 1 372 825 0 382 379 1 381 384 1
		 387 824 1 388 786 0 385 834 1 394 391 0 393 396 1 390 821 1 400 820 1 398 789 1 405 790 1
		 402 800 1 397 801 1 410 407 1 409 412 1 406 816 1 416 815 1 414 794 1 421 795 1 418 805 1
		 413 806 1 422 819 1 425 426 1 427 802 1 429 791 1 431 818 1 433 435 1 434 803 1 437 792 1
		 442 439 1 441 444 1 446 808 1 445 809 1 450 797 1 449 798 1 438 813 1 452 812 1 464 817 1
		 466 465 1 468 804 1 462 793 1 470 814 1 473 474 1 475 807 1 477 796 1 480 479 1 482 736 1
		 484 781 1 478 743 1 486 787 1 489 823 1 491 492 1 493 835 1 494 788 1 497 822 1 499 500 1
		 501 836 1 512 776 1 514 731 1 516 515 1 506 748 1 353 749 1 518 714 1 524 713 1 522 527 1
		 528 525 1 526 725 1 532 726 1 530 754 1 520 753 1 540 760 0 534 758 0 544 752 1 542 727 1
		 546 549 1 548 712 1 700 710 1 556 553 1 560 755 1 558 715 1 562 565 1;
	setAttr ".ed[1328:1493]" 564 724 1 536 870 0 574 717 1 566 757 1 571 862 0 568 722 1
		 576 573 1 570 575 1 572 861 1 578 761 0 580 871 1 588 585 1 582 587 0 584 857 1 590 858 1
		 592 765 1 594 764 1 596 838 1 586 837 1 604 601 1 598 603 1 600 852 1 606 853 1 608 770 1
		 610 769 1 612 843 1 602 842 1 616 856 1 618 617 1 620 839 1 614 766 1 624 855 1 626 625 1
		 628 840 1 622 767 1 636 633 1 630 635 1 640 846 1 634 845 1 644 773 1 638 772 1 632 849 1
		 642 850 1 654 854 1 656 659 1 658 841 1 660 768 1 664 851 1 666 665 1 668 844 1 662 771 1
		 670 673 1 672 716 1 674 756 1 676 723 1 680 762 1 682 860 1 684 683 1 678 872 1 688 763 1
		 690 859 1 692 691 1 686 873 1 698 751 1 704 711 1 706 709 1 697 729 1 708 728 1 710 557 1
		 711 707 1 710 711 1 712 545 1 711 712 1 713 521 1 712 713 1 714 523 1 713 714 1 715 563 1
		 714 715 1 716 675 1 715 716 1 717 567 1 716 717 1 718 535 0 717 869 1 719 537 0 718 719 1
		 720 539 0 719 759 1 721 541 0 720 721 1 722 571 1 721 863 1 723 671 1 722 723 1 724 561 1
		 723 724 1 725 531 1 724 725 1 726 529 1 725 726 1 727 547 1 726 727 1 728 699 1 727 728 1
		 729 552 1 728 729 1 730 511 1 731 513 1 730 731 1 732 348 1 731 732 1 733 333 1 732 733 1
		 734 327 1 733 734 1 735 360 1 734 735 1 736 481 1 735 736 1 737 383 1 736 737 1 738 367 0
		 737 832 1 739 365 0 738 739 1 740 373 0 739 784 1 741 371 0 740 741 1 742 377 1 741 826 1
		 743 485 1 742 743 1 744 369 1 743 744 1 745 335 1 744 745 1 746 341 1 745 746 1 747 343 1
		 746 747 1 748 517 1 747 748 1 749 502 1 748 749 1 750 703 0 751 705 1 750 751 1 752 543 1
		 751 752 1 753 533 1 752 753 1 754 519 1 753 754 1 755 559 1 754 755 1 756 677 1 755 756 1
		 757 569 1 756 757 1 758 539 0 757 866 1 759 720 1 758 759 1 760 537 0;
	setAttr ".ed[1494:1659]" 759 760 1 761 581 0 760 761 1 762 679 1 761 762 1 763 687 1
		 762 763 1 764 591 1 763 764 1 765 597 1 764 765 1 766 621 1 765 766 1 767 629 1 766 767 1
		 768 655 1 767 768 1 769 607 1 768 769 1 770 613 1 769 770 1 771 669 1 770 771 1 772 643 1
		 771 772 1 773 641 1 772 773 1 774 647 0 773 774 1 775 508 0 776 507 1 775 776 1 777 344 1
		 776 777 1 778 329 1 777 778 1 779 339 1 778 779 1 780 358 1 779 780 1 781 483 1 780 781 1
		 782 375 1 781 782 1 783 365 0 782 829 1 784 740 1 783 784 1 785 373 0 784 785 1 786 386 0
		 785 786 1 787 488 1 786 787 1 788 496 1 787 788 1 789 403 1 788 789 1 790 401 1 789 790 1
		 791 423 1 790 791 1 792 430 1 791 792 1 793 469 1 792 793 1 794 419 1 793 794 1 795 417 1
		 794 795 1 796 471 1 795 796 1 797 447 1 796 797 1 798 453 1 797 798 1 799 454 0 798 799 1
		 800 395 1 801 404 1 800 801 1 802 428 1 801 802 1 803 436 1 802 803 1 804 467 1 803 804 1
		 805 411 1 804 805 1 806 420 1 805 806 1 807 476 1 806 807 1 808 443 1 807 808 1 809 448 1
		 808 809 1 810 460 0 809 810 1 811 455 0 812 440 1 811 812 1 813 451 1 812 813 1 814 472 1
		 813 814 1 815 408 1 814 815 1 816 415 1 815 816 1 817 463 1 816 817 1 818 432 1 817 818 1
		 819 424 1 818 819 1 820 392 1 819 820 1 821 399 1 820 821 1 822 498 1 821 822 1 823 490 1
		 822 823 1 824 380 1 823 824 1 825 378 0 824 825 1 826 742 1 825 826 1 827 377 0 826 827 1
		 828 370 0 827 828 1 829 783 1 828 829 1 830 375 0 829 830 1 831 364 0 830 831 1 832 738 1
		 831 832 1 833 367 0 832 833 1 834 389 1 833 834 1 835 487 1 834 835 1 836 495 1 835 836 1
		 836 800 1 837 595 1 838 589 1 837 838 1 839 619 1 838 839 1 840 627 1 839 840 1 841 661 1
		 840 841 1 842 611 1 841 842 1 843 605 1 842 843 1 844 667 1 843 844 1;
	setAttr ".ed[1660:1825]" 845 639 1 844 845 1 846 637 1 845 846 1 847 653 0 846 847 1
		 848 646 0 849 645 1 848 849 1 850 631 1 849 850 1 851 663 1 850 851 1 852 609 1 851 852 1
		 853 599 1 852 853 1 854 657 1 853 854 1 855 623 1 854 855 1 856 615 1 855 856 1 857 593 1
		 856 857 1 858 583 1 857 858 1 859 689 1 858 859 1 860 681 1 859 860 1 861 579 1 860 861 1
		 862 541 0 861 862 1 863 722 1 862 863 1 864 538 0 863 864 1 865 569 0 864 865 1 866 758 1
		 865 866 1 867 534 0 866 867 1 868 567 0 867 868 1 869 718 1 868 869 1 870 574 0 869 870 1
		 871 577 1 870 871 1 872 685 1 871 872 1 873 693 1 872 873 1 873 837 1 874 884 0 876 889 0
		 875 877 0 876 880 0 877 883 0 878 887 0 879 886 0 878 879 0 881 879 0 880 878 0 881 874 0
		 880 881 0 882 875 0 881 885 1 882 883 1 883 888 1 884 885 0 886 882 0 885 886 0 887 883 0
		 886 887 1 888 880 1 887 888 1 889 877 0 888 889 1 890 891 0 892 893 0 894 895 0 896 897 0
		 890 907 0 891 908 0 892 942 0 893 951 0 894 906 0 895 909 0 896 944 0 897 949 0 896 902 0
		 897 905 0 898 899 0 891 904 0 899 947 0 890 903 0 901 900 0 898 946 0 902 898 0 903 901 0
		 902 945 1 904 900 0 903 904 1 905 899 0 904 948 1 905 902 1 906 896 0 907 892 0 906 943 1
		 908 893 0 907 908 1 909 897 0 908 950 1 909 906 1 914 875 0 884 916 0 877 915 0 915 919 1
		 919 889 1 917 918 1 914 915 1 912 913 0 913 874 0 876 912 0 912 910 0 910 911 0 916 917 0
		 911 913 0 917 914 0 915 918 0 918 919 1 913 916 1 911 917 0 910 918 0 919 912 1 933 934 1
		 934 893 0 933 892 0 895 935 0 935 932 1 894 932 0 924 925 0 925 937 0 927 926 0 924 938 0
		 934 952 1 932 941 1 922 923 0 923 931 0 931 928 1 922 928 0 923 953 0 921 930 0 930 936 1
		 920 921 0 920 929 0 929 930 1 922 940 0 928 939 1 928 924 0 929 927 0;
	setAttr ".ed[1826:1991]" 930 926 0 931 925 0 920 933 0 932 922 0 921 934 0 935 923 0
		 936 931 1 937 926 0 936 937 1 938 927 0 937 938 1 939 929 1 938 939 1 940 920 0 939 940 1
		 941 933 1 940 941 1 942 894 0 941 942 1 943 907 1 942 943 1 944 890 0 943 944 1 945 903 1
		 944 945 1 946 901 0 945 946 1 947 900 0 946 947 1 948 905 1 947 948 1 949 891 0 948 949 1
		 950 909 1 949 950 1 951 895 0 950 951 1 952 935 1 951 952 1 953 921 0 952 953 1 953 936 1
		 886 954 0 884 954 0 917 954 0 875 954 0 956 958 0 966 965 0 963 974 0 959 960 0 960 962 0
		 961 962 0 959 961 0 962 971 0 961 976 0 958 972 0 958 964 0 960 965 0 959 966 0 967 969 0
		 969 970 0 968 970 0 967 968 0 969 977 0 970 980 0 958 979 0 957 978 0 967 963 0 968 964 0
		 971 956 0 972 960 0 971 972 1 973 965 0 972 973 1 974 966 0 973 974 1 975 959 0 974 975 1
		 976 955 0 975 976 1 976 971 0 977 955 0 978 967 0 977 978 1 978 963 1 963 964 1 979 968 0
		 964 979 1 980 956 0 979 980 1 980 977 0 971 988 0 956 989 0 981 982 0 976 987 0 955 992 0
		 983 984 0 983 981 0 977 991 0 985 984 0 980 990 0 986 982 0 986 985 0 987 993 0 988 994 0
		 987 988 0 989 995 0 988 989 1 990 996 0 989 990 1 991 997 0 990 991 1 992 998 0 991 992 1
		 992 987 1 993 1000 0 994 1001 0 993 994 1 995 1002 0 994 995 1 996 1003 0 995 996 1
		 997 1004 0 996 997 1 998 999 0 997 998 1 998 993 1 999 984 0 1000 983 0 999 1000 1
		 1001 981 0 1000 1001 1 1002 982 0 1001 1002 1 1003 986 0 1002 1003 1 1004 985 0 1003 1004 1
		 1004 999 1 1005 1010 1 1005 1142 1 1006 1009 1 1006 1008 1 1007 1016 1 1007 1032 1
		 1008 1007 1 1008 1017 1 1009 1157 1 1011 1139 1 1012 1013 1 1013 1014 1 1014 1033 1
		 1016 1017 1 1017 1009 1 1018 1023 1 1018 1133 1 1024 1136 1 1019 1022 1 1022 1160 1
		 1019 1021 1 1025 1026 1 1030 1022 1 1021 1030 1 1020 1035 1 1020 1029 1 1026 1027 1;
	setAttr ".ed[1992:2157]" 1021 1020 1 1029 1030 1 1031 1016 1 1031 1032 1 1033 1015 1
		 1034 1028 1 1036 1029 1 1035 1036 1 1092 1161 1 1094 1093 1 1100 1172 1 1098 1100 0
		 1099 1098 1 1037 1040 1 1040 1103 1 1103 1104 1 1104 1037 1 1038 1037 1 1037 1042 1
		 1042 1041 0 1041 1038 1 1039 1038 1 1038 1049 1 1049 1048 1 1048 1039 1 1040 1039 1
		 1039 1166 1 1052 1053 1 1053 1127 1 1042 1055 1 1055 1054 0 1054 1041 1 1043 1044 1
		 1044 1048 1 1049 1043 1 1043 1047 1 1047 1046 1 1046 1044 1 1045 1047 0 1047 1093 1
		 1093 1092 0 1092 1045 0 1046 1045 0 1045 1162 0 1051 1050 0 1050 1123 1 1051 1140 0
		 1057 1056 1 1056 1155 1 1052 1144 1 1060 1061 1 1061 1159 1 1055 1137 1 1059 1058 1
		 1058 1152 1 1057 1063 0 1063 1062 1 1062 1056 1 1059 1065 1 1065 1064 1 1064 1058 1
		 1060 1066 1 1066 1067 1 1067 1061 1 1063 1068 0 1068 1069 1 1069 1062 1 1065 1077 1
		 1077 1076 1 1076 1064 1 1066 1080 1 1080 1081 1 1081 1067 1 1068 1071 0 1071 1070 1
		 1070 1069 1 1071 1074 0 1074 1075 1 1075 1070 1 1072 1073 1 1073 1075 1 1074 1072 1
		 1072 1090 1 1090 1091 1 1091 1073 1 1077 1079 1 1079 1078 1 1078 1076 1 1079 1084 1
		 1084 1085 1 1085 1078 1 1080 1083 1 1083 1082 1 1082 1081 1 1083 1086 1 1086 1089 1
		 1089 1082 1 1084 1088 1 1088 1087 1 1087 1085 1 1087 1086 1 1086 1091 1 1090 1087 1
		 1089 1088 1 1088 1111 1 1111 1112 1 1112 1089 1 1095 1097 0 1097 1170 1 1106 1105 0
		 1105 1131 0 1096 1095 0 1095 1100 0 1100 1099 0 1099 1096 1 1097 1096 1 1096 1101 1
		 1101 1102 1 1102 1097 1 1101 1104 1 1103 1102 1 1106 1134 1 1114 1113 1 1113 1149 0
		 1107 1108 1 1108 1112 1 1111 1107 1 1107 1110 1 1110 1109 1 1109 1108 1 1110 1119 0
		 1119 1120 1 1120 1109 1 1114 1116 1 1116 1115 1 1115 1113 0 1116 1117 1 1117 1118 1
		 1118 1115 0 1117 1120 1 1119 1118 0 1049 1093 1 1050 1005 1 1005 1124 1 1074 1015 1
		 1015 1090 1 1011 1051 0 1010 1125 1 1056 1006 1 1012 1057 1 1062 1008 1 1013 1063 1
		 1032 1070 1 1073 1032 1 1071 1033 1 1091 1031 1 1014 1068 1 1069 1007 1 1052 1010 1
		 1009 1060 1 1041 1094 1 1054 1011 0 1092 1094 0 1058 1012 1 1064 1013 1 1076 1014 1;
	setAttr ".ed[2158:2323]" 1033 1078 1 1085 1015 1 1083 1031 1 1066 1017 1 1016 1080 1
		 1099 1104 1 1102 1169 1 1018 1106 1 1111 1028 1 1028 1110 1 1105 1024 0 1103 1168 1
		 1019 1114 1 1113 1025 1 1021 1116 1 1115 1026 1 1035 1108 1 1120 1035 1 1034 1119 1
		 1036 1112 1 1118 1027 1 1020 1117 1 1061 1022 1 1023 1053 1 1098 1042 1 1024 1055 0
		 1025 1059 1 1026 1065 1 1027 1077 1 1028 1084 1 1079 1034 1 1036 1082 1 1081 1029 1
		 1030 1067 1 1027 1034 1 1121 1011 1 1122 1051 0 1121 1122 1 1123 1163 1 1122 1123 1
		 1124 1164 1 1123 1124 1 1125 1165 1 1124 1125 1 1126 1052 1 1125 1126 1 1127 1167 1
		 1126 1127 1 1128 1023 1 1127 1128 1 1129 1018 1 1128 1129 1 1130 1106 1 1129 1130 1
		 1131 1171 0 1130 1131 1 1132 1024 1 1131 1132 1 1133 1147 1 1134 1148 1 1133 1134 1
		 1135 1105 0 1134 1135 1 1136 1150 1 1135 1136 1 1137 1151 1 1136 1137 1 1138 1054 1
		 1137 1138 1 1139 1153 1 1138 1139 1 1140 1154 0 1139 1140 1 1141 1050 1 1140 1141 1
		 1142 1156 1 1141 1142 1 1143 1010 1 1142 1143 1 1144 1158 1 1143 1144 1 1145 1053 1
		 1144 1145 1 1146 1023 1 1145 1146 1 1146 1133 1 1147 1019 1 1148 1114 1 1147 1148 1
		 1149 1135 0 1148 1149 1 1150 1025 1 1149 1150 1 1151 1059 1 1150 1151 1 1152 1138 1
		 1151 1152 1 1153 1012 1 1152 1153 1 1154 1057 0 1153 1154 1 1155 1141 1 1154 1155 1
		 1156 1006 1 1155 1156 1 1157 1143 1 1156 1157 1 1158 1060 1 1157 1158 1 1159 1145 1
		 1158 1159 1 1160 1146 1 1159 1160 1 1160 1147 1 1161 1121 1 1162 1122 0 1161 1162 1
		 1163 1046 1 1162 1163 1 1164 1044 1 1163 1164 1 1165 1048 1 1164 1165 1 1166 1126 1
		 1165 1166 1 1167 1040 1 1166 1167 1 1168 1128 1 1167 1168 1 1169 1129 1 1168 1169 1
		 1170 1130 1 1169 1170 1 1171 1095 0 1170 1171 1 1172 1132 1 1171 1172 1 955 957 0
		 1173 1175 0 957 963 0 957 975 0 1173 1174 0 1174 1176 0 1175 1176 0 964 973 0 1177 1178 0
		 1178 1179 0 1180 1179 0 1180 1177 1 1181 1182 0 1182 1183 0 1184 1183 0 1181 1184 0
		 1182 1185 0 1185 1186 0 1183 1186 0 1186 1187 1 1187 1184 0 1188 1181 0 1188 1185 1
		 1187 1180 1 1184 1179 0 1181 1178 0 1177 1188 1 1189 1190 0 1190 1191 0;
	setAttr ".ed[2324:2399]" 1192 1191 0 1189 1192 0 1191 1193 0 1193 1194 0 1192 1194 0
		 1195 1190 0 1195 1193 1 1194 1196 1 1196 1189 0 1196 1197 1 1189 1197 0 1197 1198 1
		 1190 1198 0 1198 1195 1 1199 1200 0 1200 1187 0 1186 1199 0 1200 1198 0 1198 1180 0
		 1197 1177 0 1201 1197 0 1201 1188 0 1202 1201 0 1185 1202 0 1194 1202 0 1201 1196 0
		 1200 1195 0 1193 1199 0 1186 1203 0 1203 1204 1 1199 1204 0 1202 1205 0 1205 1206 1
		 1185 1206 0 1206 1203 0 1194 1207 0 1207 1205 1 1204 1208 1 1193 1208 0 1208 1207 1
		 1206 1209 0 1209 1210 1 1203 1210 0 1210 1211 1 1204 1211 0 1211 1212 1 1208 1212 0
		 1212 1213 1 1207 1213 0 1213 1214 1 1205 1214 0 1214 1209 1 1209 1215 0 1215 1216 1
		 1210 1216 0 1216 1217 1 1211 1217 0 1217 1218 1 1212 1218 0 1218 1219 1 1213 1219 0
		 1219 1220 1 1214 1220 0 1220 1215 1 1220 1221 0 1222 1221 0 1215 1222 0 1222 1223 0
		 1216 1223 0 1223 1224 0 1217 1224 0 1225 1224 0 1218 1225 0 1225 1226 0 1219 1226 0
		 1226 1221 0;
	setAttr -s 1187 -ch 4756 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 6 -6 -5 -4
		mu 0 4 0 1 2 3
		f 4 8 7 -3 -39
		mu 0 4 4 5 6 7
		f 4 12 11 -11 -10
		mu 0 4 8 9 10 11
		f 4 14 3 -14 -12
		mu 0 4 9 12 13 10
		f 4 -13 -16 -7 -15
		mu 0 4 9 8 14 12
		f 4 18 38 -18 -17
		mu 0 4 15 4 7 16
		f 4 36 -8 -21 19
		mu 0 4 17 6 5 18
		f 4 20 -9 -19 21
		mu 0 4 18 5 4 19
		f 3 -41 -42 17
		mu 0 3 7 20 16
		f 4 22 -43 -44 10
		mu 0 4 10 21 22 11
		f 4 -27 -26 -25 23
		mu 0 4 23 24 25 26
		f 4 27 41 -45 26
		mu 0 4 2 16 20 27
		f 4 28 16 -28 5
		mu 0 4 1 15 16 2
		f 4 -30 -22 -29 15
		mu 0 4 8 18 19 14
		f 4 29 9 -31 -20
		mu 0 4 18 8 11 17
		f 3 -46 30 43
		mu 0 3 22 17 11
		f 4 32 -40 -1 -32
		mu 0 4 28 27 29 30
		f 4 46 -48 39 44
		mu 0 4 20 31 29 27
		f 3 -49 -47 40
		mu 0 3 7 31 20
		f 3 -50 45 50
		mu 0 3 32 17 22
		f 4 37 -52 -51 42
		mu 0 4 21 33 32 22
		f 4 31 -2 -38 33
		mu 0 4 34 35 33 21
		f 4 4 -24 -35 13
		mu 0 4 13 36 26 10
		f 4 34 24 -36 -23
		mu 0 4 10 26 25 21
		f 4 35 25 -33 -34
		mu 0 4 21 25 24 34
		f 4 55 54 53 -53
		mu 0 4 37 38 39 40
		f 4 58 2 -58 -57
		mu 0 4 41 7 6 42
		f 4 62 61 -61 -60
		mu 0 4 43 44 45 46
		f 4 60 64 -56 -64
		mu 0 4 46 45 47 48
		f 4 63 52 65 59
		mu 0 4 46 48 49 43
		f 4 68 67 -59 -67
		mu 0 4 50 51 7 41
		f 4 -71 69 57 -37
		mu 0 4 17 52 42 6
		f 4 -72 66 56 -70
		mu 0 4 52 53 41 42
		f 3 -68 73 72
		mu 0 3 7 51 54
		f 4 -62 76 75 -75
		mu 0 4 45 44 55 56
		f 4 -81 79 78 77
		mu 0 4 57 58 59 60
		f 4 -78 82 -74 -82
		mu 0 4 39 61 54 51
		f 4 -54 81 -69 -84
		mu 0 4 40 39 51 50
		f 4 -66 83 71 84
		mu 0 4 43 49 53 52
		f 4 70 85 -63 -85
		mu 0 4 52 17 44 43
		f 3 -77 -86 86
		mu 0 3 55 44 17
		f 4 89 0 88 -88
		mu 0 4 62 30 29 61
		f 4 -83 -89 47 -91
		mu 0 4 54 61 29 31
		f 3 -73 90 48
		mu 0 3 7 54 31
		f 3 -92 -87 49
		mu 0 3 32 55 17
		f 4 -76 91 51 -93
		mu 0 4 56 55 32 33
		f 4 -94 92 1 -90
		mu 0 4 63 56 33 35
		f 4 -65 94 80 -55
		mu 0 4 47 45 58 64
		f 4 74 95 -80 -95
		mu 0 4 45 56 59 58
		f 4 93 87 -79 -96
		mu 0 4 56 63 60 59
		f 4 99 98 97 -97
		mu 0 4 65 66 67 68
		f 4 103 102 -102 -101
		mu 0 4 69 70 71 72
		f 4 107 106 -106 -105
		mu 0 4 73 74 75 76
		f 4 105 109 -100 -109
		mu 0 4 76 75 77 78
		f 4 108 96 110 104
		mu 0 4 76 78 79 73
		f 4 113 112 -104 -112
		mu 0 4 80 81 70 69
		f 4 -117 115 101 -115
		mu 0 4 82 83 72 71
		f 4 -118 111 100 -116
		mu 0 4 83 84 69 72
		f 3 -113 119 118
		mu 0 3 70 81 85
		f 4 -107 122 121 -121
		mu 0 4 75 74 86 87
		f 4 -127 125 124 123
		mu 0 4 88 89 90 91
		f 4 -124 128 -120 -128
		mu 0 4 67 92 85 81
		f 4 -98 127 -114 -130
		mu 0 4 68 67 81 80
		f 4 -111 129 117 130
		mu 0 4 73 79 84 83
		f 4 116 131 -108 -131
		mu 0 4 83 82 74 73
		f 3 -123 -132 132
		mu 0 3 86 74 82
		f 4 136 135 134 -134
		mu 0 4 93 94 95 92
		f 4 -129 -135 138 -138
		mu 0 4 85 92 95 96
		f 3 -119 137 139
		mu 0 3 70 85 96
		f 3 -142 -133 140
		mu 0 3 97 86 82
		f 4 -122 141 143 -143
		mu 0 4 87 86 97 98
		f 4 -146 142 144 -137
		mu 0 4 99 87 98 100
		f 4 -110 146 126 -99
		mu 0 4 77 75 89 101
		f 4 120 147 -126 -147
		mu 0 4 75 87 90 89
		f 4 145 133 -125 -148
		mu 0 4 87 99 91 90
		f 4 151 -151 -150 -149
		mu 0 4 102 103 104 105
		f 4 154 153 -103 -153
		mu 0 4 106 107 71 70
		f 4 158 157 -157 -156
		mu 0 4 108 109 110 111
		f 4 160 148 -160 -158
		mu 0 4 109 112 113 110
		f 4 -159 -162 -152 -161
		mu 0 4 109 108 114 112
		f 4 164 152 -164 -163
		mu 0 4 115 106 70 116
		f 4 114 -154 -167 165
		mu 0 4 82 71 107 117
		f 4 166 -155 -165 167
		mu 0 4 117 107 106 118
		f 3 -170 -169 163
		mu 0 3 70 119 116
		f 4 172 -172 -171 156
		mu 0 4 110 120 121 111
		f 4 -177 -176 -175 173
		mu 0 4 122 123 124 125
		f 4 178 168 -178 176
		mu 0 4 104 116 119 126
		f 4 179 162 -179 150
		mu 0 4 103 115 116 104
		f 4 -181 -168 -180 161
		mu 0 4 108 117 118 114
		f 4 180 155 -182 -166
		mu 0 4 117 108 111 82
		f 3 -183 181 170
		mu 0 3 121 82 111
		f 4 185 -185 -136 -184
		mu 0 4 127 126 95 94
		f 4 186 -139 184 177
		mu 0 4 119 96 95 126
		f 3 -140 -187 169
		mu 0 3 70 96 119
		f 3 -141 182 187
		mu 0 3 97 82 121
		f 4 188 -144 -188 171
		mu 0 4 120 98 97 121
		f 4 183 -145 -189 189
		mu 0 4 128 100 98 120
		f 4 149 -174 -191 159
		mu 0 4 113 129 125 110
		f 4 190 174 -192 -173
		mu 0 4 110 125 124 120
		f 4 191 175 -186 -190
		mu 0 4 120 124 123 128
		f 4 -194 194 196 -196
		mu 0 4 130 131 132 133
		f 4 -193 198 199 -198
		mu 0 4 134 135 136 137
		f 4 -197 200 202 -202
		mu 0 4 133 132 138 139
		f 4 -200 204 205 -204
		mu 0 4 137 136 140 141
		f 4 -203 206 208 -208
		mu 0 4 139 138 142 143
		f 4 195 212 -214 -211
		mu 0 4 130 133 144 145
		f 4 -199 211 215 -215
		mu 0 4 136 135 146 147
		f 4 201 216 -218 -213
		mu 0 4 133 139 148 144
		f 4 -205 214 219 -219
		mu 0 4 140 136 147 149
		f 4 207 220 -222 -217
		mu 0 4 139 143 150 148
		f 4 223 224 225 226
		mu 0 4 151 152 153 154
		f 4 -224 227 228 229
		mu 0 4 152 151 155 156
		f 4 230 231 232 233
		mu 0 4 157 158 159 160
		f 4 -231 234 235 236
		mu 0 4 158 157 161 162
		f 6 -226 237 303 301 299 298
		mu 0 6 154 153 163 164 165 166
		f 4 238 192 239 -228
		mu 0 4 151 135 134 155
		f 4 240 193 241 -237
		mu 0 4 162 131 130 158
		f 4 -242 210 242 -232
		mu 0 4 158 130 145 159
		f 4 -239 -227 243 -212
		mu 0 4 135 151 154 146
		f 4 248 -248 -247 245
		mu 0 4 167 168 169 170
		f 4 252 -252 -251 249
		mu 0 4 171 172 173 174
		f 4 255 -255 -254 247
		mu 0 4 168 175 176 169
		f 4 258 -258 -257 251
		mu 0 4 172 177 178 173
		f 4 260 -245 -260 254
		mu 0 4 175 179 180 176
		f 4 264 263 -263 -249
		mu 0 4 167 181 182 168
		f 4 267 -267 -266 250
		mu 0 4 173 183 184 174
		f 4 262 269 -269 -256
		mu 0 4 168 182 185 175
		f 4 271 -271 -268 256
		mu 0 4 178 186 183 173
		f 4 268 273 -273 -261
		mu 0 4 175 185 187 179
		f 4 -279 -278 -277 -276
		mu 0 4 188 189 190 191
		f 4 -282 -281 -280 275
		mu 0 4 191 192 193 188
		f 4 -286 -285 -284 -283
		mu 0 4 194 195 196 197
		f 4 -289 -288 -287 282
		mu 0 4 197 198 199 194
		f 6 -307 308 -310 310 -290 277
		mu 0 6 189 200 201 202 203 190
		f 4 279 -292 -250 -291
		mu 0 4 188 193 171 174
		f 4 288 -294 -246 -293
		mu 0 4 198 197 167 170
		f 4 283 -295 -265 293
		mu 0 4 197 196 181 167
		f 4 265 -296 278 290
		mu 0 4 174 184 189 188
		f 4 312 313 314 315
		mu 0 4 204 205 206 207
		f 4 -313 316 317 318
		mu 0 4 205 204 208 209
		f 4 -318 319 320 321
		mu 0 4 209 208 210 211
		f 4 322 323 324 325
		mu 0 4 212 213 214 215
		f 4 -323 326 327 328
		mu 0 4 213 212 216 217
		f 4 -328 329 330 331
		mu 0 4 217 216 218 219
		f 4 332 333 334 335
		mu 0 4 220 221 222 223
		f 4 -333 336 337 338
		mu 0 4 221 220 224 225
		f 4 -338 339 340 341
		mu 0 4 225 224 226 227
		f 4 -331 342 -315 343
		mu 0 4 219 218 207 206
		f 4 -341 344 -297 345
		mu 0 4 227 226 228 229
		f 4 -321 346 347 348
		mu 0 4 211 210 230 231
		f 4 349 350 351 352
		mu 0 4 232 233 234 235
		f 4 -350 353 354 355
		mu 0 4 233 232 236 237
		f 4 -355 356 357 358
		mu 0 4 237 236 238 239
		f 4 359 360 361 362
		mu 0 4 240 241 166 242
		f 4 -360 363 364 365
		mu 0 4 241 240 243 244
		f 4 -365 366 367 368
		mu 0 4 244 243 245 246
		f 4 -358 369 -298 370
		mu 0 4 239 238 247 248
		f 4 -368 371 -348 372
		mu 0 4 246 245 231 230
		f 4 373 374 375 376
		mu 0 4 249 250 251 252
		f 4 -374 377 378 379
		mu 0 4 250 249 253 254
		f 4 -376 380 381 382
		mu 0 4 252 251 255 256
		f 4 -382 383 384 385
		mu 0 4 256 255 257 258
		f 4 386 387 388 389
		mu 0 4 259 257 203 260
		f 4 390 391 392 393
		mu 0 4 261 259 262 263
		f 4 394 395 396 397
		mu 0 4 258 261 264 163
		f 4 398 399 400 401
		mu 0 4 265 262 266 267
		f 4 402 403 404 405
		mu 0 4 268 265 269 270
		f 4 406 407 408 409
		mu 0 4 263 268 271 272
		f 4 -405 410 411 412
		mu 0 4 270 269 273 274
		f 4 -412 413 414 415
		mu 0 4 274 273 275 276
		f 4 -415 416 417 418
		mu 0 4 276 275 277 278
		f 4 419 420 421 422
		mu 0 4 279 280 281 282
		f 4 423 424 425 426
		mu 0 4 283 279 284 285
		f 4 427 428 429 430
		mu 0 4 286 283 287 288
		f 4 431 432 433 434
		mu 0 4 254 284 289 290
		f 4 435 436 437 438
		mu 0 4 285 253 291 292
		f 4 -325 439 -438 440
		mu 0 4 215 214 292 291
		f 4 -335 441 -430 442
		mu 0 4 223 222 288 287
		f 4 -352 443 -409 444
		mu 0 4 235 234 272 271
		f 4 445 446 447 448
		mu 0 4 293 294 295 296
		f 4 -446 449 450 451
		mu 0 4 294 293 297 298
		f 4 -451 452 453 454
		mu 0 4 298 297 299 300
		f 4 455 456 457 458
		mu 0 4 301 302 303 304
		f 4 -456 459 460 461
		mu 0 4 302 301 305 306
		f 4 -461 462 463 464
		mu 0 4 306 305 307 308
		f 4 465 466 467 468
		mu 0 4 309 310 311 312
		f 4 -466 469 470 471
		mu 0 4 310 309 313 314
		f 4 -471 472 473 474
		mu 0 4 314 313 315 316
		f 4 475 476 477 478
		mu 0 4 317 318 319 320
		f 4 -476 479 480 481
		mu 0 4 318 317 321 322
		f 4 -481 482 483 484
		mu 0 4 322 321 323 324
		f 4 485 486 487 488
		mu 0 4 325 326 327 200
		f 4 -486 489 490 491
		mu 0 4 326 325 328 329
		f 4 -491 492 493 494
		mu 0 4 329 328 330 331
		f 4 -464 495 -448 496
		mu 0 4 308 307 296 295
		f 4 -474 497 -305 498
		mu 0 4 316 315 332 333
		f 4 -484 499 -306 500
		mu 0 4 324 323 334 335
		f 4 -494 501 502 503
		mu 0 4 331 330 336 337
		f 4 -503 504 -454 505
		mu 0 4 337 336 300 299
		f 4 -458 506 -434 507
		mu 0 4 304 303 290 289
		f 4 -468 508 -422 509
		mu 0 4 312 311 282 281
		f 4 -478 510 -401 511
		mu 0 4 320 319 267 266
		f 4 -209 512 -319 513
		mu 0 4 338 339 205 209
		f 4 514 -329 515 -337
		mu 0 4 220 213 217 224
		f 4 516 -356 517 -364
		mu 0 4 240 233 237 243
		f 4 -516 -332 518 -340
		mu 0 4 224 217 219 226
		f 4 -518 -359 519 -367
		mu 0 4 243 237 239 245
		f 4 -519 -344 520 -345
		mu 0 4 226 219 206 228
		f 4 -206 521 -317 522
		mu 0 4 141 140 208 204
		f 4 -520 -371 523 -372
		mu 0 4 245 239 248 231
		f 4 197 524 -327 525
		mu 0 4 134 137 216 212
		f 4 -195 526 -339 527
		mu 0 4 132 131 340 341
		f 4 203 528 -330 -525
		mu 0 4 137 141 218 216
		f 4 -201 -528 -342 529
		mu 0 4 138 132 341 342
		f 4 -523 -316 -343 -529
		mu 0 4 141 204 207 218
		f 5 -513 209 296 -521 -314
		mu 0 5 205 339 229 228 206
		f 4 -207 -530 -346 -210
		mu 0 4 142 138 342 343
		f 4 -514 -322 530 -221
		mu 0 4 338 209 211 344
		f 4 -522 218 531 -320
		mu 0 4 208 140 149 210
		f 4 213 532 -354 533
		mu 0 4 145 144 345 346
		f 4 -216 534 -366 535
		mu 0 4 147 146 241 244
		f 4 217 536 -357 -533
		mu 0 4 144 148 347 345
		f 4 -220 -536 -369 537
		mu 0 4 149 147 244 246
		f 4 221 222 -370 -537
		mu 0 4 148 150 348 347
		f 5 -531 -349 -524 297 -223
		mu 0 5 344 211 231 248 247
		f 4 -532 -538 -373 -347
		mu 0 4 210 149 246 230
		f 4 -229 538 -441 539
		mu 0 4 156 155 215 291
		f 4 -236 540 -442 541
		mu 0 4 162 161 349 350
		f 4 -440 542 -443 543
		mu 0 4 292 214 223 287
		f 4 -233 544 -445 545
		mu 0 4 160 159 351 352
		f 6 -444 546 300 -302 302 547
		mu 0 6 272 234 242 165 164 264
		f 4 -351 -517 -363 -547
		mu 0 4 234 233 240 242
		f 4 -324 -515 -336 -543
		mu 0 4 214 213 220 223
		f 4 -235 548 -416 549
		mu 0 4 161 157 274 276
		f 4 -548 -396 -394 -410
		mu 0 4 272 264 261 263
		f 4 -230 550 -377 551
		mu 0 4 152 156 249 252
		f 4 -544 -429 -427 -439
		mu 0 4 292 287 283 285
		f 4 -240 -526 -326 -539
		mu 0 4 155 134 212 215
		f 4 -241 -542 -334 -527
		mu 0 4 131 162 350 340
		f 4 -550 -419 -431 -541
		mu 0 4 161 276 278 349
		f 4 -378 -551 -540 -437
		mu 0 4 253 249 156 291
		f 4 -552 -383 552 -225
		mu 0 4 152 252 256 153
		f 4 -549 -234 553 -413
		mu 0 4 274 157 160 270
		f 4 -243 -534 -353 -545
		mu 0 4 159 145 346 351
		f 4 -244 -299 -361 -535
		mu 0 4 146 154 166 241
		f 4 -553 -386 -398 -238
		mu 0 4 153 256 258 163
		f 4 -554 -546 -408 -406
		mu 0 4 270 160 352 268
		f 4 554 -450 555 244
		mu 0 4 353 297 293 354
		f 4 -472 556 -460 557
		mu 0 4 310 314 305 301
		f 4 -492 558 -480 559
		mu 0 4 326 329 321 317
		f 4 -475 560 -463 -557
		mu 0 4 314 316 307 305
		f 4 -495 561 -483 -559
		mu 0 4 329 331 323 321
		f 4 -499 562 -496 -561
		mu 0 4 316 333 296 307
		f 4 563 -452 564 257
		mu 0 4 177 294 298 178
		f 4 -504 565 -500 -562
		mu 0 4 331 337 334 323
		f 4 566 -462 567 -253
		mu 0 4 171 302 306 172
		f 4 568 -470 569 246
		mu 0 4 169 355 356 170
		f 4 -568 -465 570 -259
		mu 0 4 172 306 308 177
		f 4 571 -473 -569 253
		mu 0 4 176 357 355 169
		f 4 -571 -497 -447 -564
		mu 0 4 177 308 295 294
		f 5 -449 -563 304 -262 -556
		mu 0 5 293 296 333 332 354
		f 4 261 -498 -572 259
		mu 0 4 180 358 357 176
		f 4 272 572 -453 -555
		mu 0 4 353 359 299 297
		f 4 -455 573 -272 -565
		mu 0 4 298 300 186 178
		f 4 574 -482 575 -264
		mu 0 4 181 360 361 182
		f 4 576 -490 577 266
		mu 0 4 183 328 325 184
		f 4 -576 -485 578 -270
		mu 0 4 182 361 362 185
		f 4 579 -493 -577 270
		mu 0 4 186 330 328 183
		f 4 -579 -501 -275 -274
		mu 0 4 185 362 363 187
		f 5 274 305 -566 -506 -573
		mu 0 5 359 335 334 337 299
		f 4 -505 -502 -580 -574
		mu 0 4 300 336 330 186
		f 4 580 -507 581 280
		mu 0 4 192 290 303 193
		f 4 582 -510 583 287
		mu 0 4 198 364 365 199
		f 4 584 -509 585 -508
		mu 0 4 289 282 311 304
		f 4 586 -511 587 284
		mu 0 4 195 366 367 196
		f 6 588 311 309 307 589 -512
		mu 0 6 266 260 202 201 327 320
		f 4 -590 -487 -560 -479
		mu 0 4 320 327 326 317
		f 4 -586 -467 -558 -459
		mu 0 4 304 311 310 301
		f 4 590 -414 591 286
		mu 0 4 199 275 273 194
		f 4 -400 -392 -390 -589
		mu 0 4 266 262 259 260
		f 4 592 -375 593 281
		mu 0 4 191 251 250 192
		f 4 -433 -425 -423 -585
		mu 0 4 289 284 279 282
		f 4 -582 -457 -567 291
		mu 0 4 193 303 302 171
		f 4 -570 -469 -583 292
		mu 0 4 170 356 364 198
		f 4 -584 -421 -417 -591
		mu 0 4 199 365 277 275
		f 4 -435 -581 -594 -380
		mu 0 4 254 290 192 250
		f 4 276 594 -381 -593
		mu 0 4 191 190 255 251
		f 4 -411 595 285 -592
		mu 0 4 273 269 195 194
		f 4 -588 -477 -575 294
		mu 0 4 196 367 360 181
		f 4 -578 -489 306 295
		mu 0 4 184 325 200 189
		f 4 289 -388 -384 -595
		mu 0 4 190 203 257 255
		f 4 -404 -402 -587 -596
		mu 0 4 269 265 366 195
		f 4 -391 -395 -385 -387
		mu 0 4 259 261 258 257
		f 4 -403 -407 -393 -399
		mu 0 4 265 268 263 262
		f 4 -424 -428 -418 -420
		mu 0 4 279 283 286 280
		f 4 -379 -436 -426 -432
		mu 0 4 254 253 285 284
		f 3 -300 -301 -362
		mu 0 3 166 165 242
		f 3 -303 -304 -397
		mu 0 3 264 164 163
		f 3 -308 -309 -488
		mu 0 3 327 201 200
		f 3 -311 -312 -389
		mu 0 3 203 202 260
		f 6 -597 -641 641 -643 643 -598
		mu 0 6 368 369 370 371 372 373
		f 4 596 599 606 -599
		mu 0 4 369 368 374 375
		f 5 -660 661 658 604 -600
		mu 0 5 368 376 377 378 374
		f 4 -603 600 610 -602
		mu 0 4 1432 379 380 1436
		f 4 -605 601 612 -604
		mu 0 4 374 378 381 382
		f 4 -607 603 614 -606
		mu 0 4 375 374 382 383
		f 4 -608 605 615 -601
		mu 0 4 379 375 383 380
		f 4 -611 608 616 -610
		mu 0 4 1436 380 1376 1378
		f 4 -613 609 617 -612
		mu 0 4 382 381 1434 1377
		f 4 -615 611 618 -614
		mu 0 4 383 382 1377 1375
		f 4 -616 613 619 -609
		mu 0 4 380 383 1375 1376
		f 6 621 666 665 664 663 620
		mu 0 6 388 389 390 391 392 393
		f 4 623 -627 -626 -621
		mu 0 4 393 394 395 388
		f 5 625 -628 -683 684 681
		mu 0 5 388 395 1430 1429 398
		f 4 630 -630 -629 622
		mu 0 4 396 1433 400 401
		f 4 632 -632 -631 627
		mu 0 4 395 402 399 1430
		f 4 634 -634 -633 626
		mu 0 4 394 403 402 395
		f 4 628 -636 -635 624
		mu 0 4 401 400 403 394
		f 4 637 -617 -637 629
		mu 0 4 1433 385 384 400
		f 4 638 -618 -638 631
		mu 0 4 402 386 1435 399
		f 4 639 -619 -639 633
		mu 0 4 403 387 386 402
		f 4 636 -620 -640 635
		mu 0 4 400 384 387 403
		f 5 -657 652 598 607 -654
		mu 0 5 404 405 369 375 379
		f 7 -661 -1524 -655 657 653 602 -659
		mu 0 7 1431 406 407 408 404 379 1432
		f 5 -680 676 -625 -624 -678
		mu 0 5 409 410 401 394 393
		f 7 -686 682 -623 -677 678 675 1474
		mu 0 7 411 397 396 401 410 412 413
		f 4 686 687 688 689
		mu 0 4 1398 415 416 1395
		f 4 -687 690 691 692
		mu 0 4 415 1398 1397 419
		f 4 -692 693 694 695
		mu 0 4 419 1397 1396 421
		f 4 696 697 698 699
		mu 0 4 422 423 424 425
		f 4 -697 700 701 702
		mu 0 4 423 422 426 427
		f 4 -702 703 704 705
		mu 0 4 427 426 428 429
		f 4 706 707 708 709
		mu 0 4 430 431 432 433
		f 4 -707 710 711 712
		mu 0 4 431 430 434 435
		f 4 -712 713 714 715
		mu 0 4 435 434 436 437
		f 4 716 717 718 719
		mu 0 4 438 439 440 441
		f 4 -717 720 721 722
		mu 0 4 439 438 442 443
		f 4 -722 723 724 725
		mu 0 4 443 442 444 445
		f 4 -725 726 727 728
		mu 0 4 445 444 446 447
		f 4 -695 729 730 731
		mu 0 4 421 1396 1391 449
		f 4 -715 732 733 734
		mu 0 4 437 436 450 451
		f 4 -705 735 736 737
		mu 0 4 429 428 452 453
		f 4 -642 738 739 740
		mu 0 4 371 370 454 455
		f 4 -740 741 -734 742
		mu 0 4 455 454 451 450
		f 4 -644 743 744 745
		mu 0 4 373 372 456 457
		f 4 -745 746 -737 747
		mu 0 4 457 456 453 452
		f 4 -719 748 749 750
		mu 0 4 441 440 458 459
		f 4 -689 751 752 753
		mu 0 4 1395 416 460 1394
		f 4 -699 754 755 756
		mu 0 4 425 424 462 463
		f 4 757 758 1633 1632
		mu 0 4 464 465 466 467
		f 4 -758 761 1453 1452
		mu 0 4 465 464 468 469
		f 4 -763 764 765 766
		mu 0 4 470 471 472 473
		f 4 -709 767 768 769
		mu 0 4 433 432 474 475
		f 4 770 771 1627 1626
		mu 0 4 476 477 478 479
		f 4 -771 774 1457 1456
		mu 0 4 477 476 480 481
		f 4 -776 777 778 779
		mu 0 4 482 483 484 485
		f 4 -760 780 -753 781
		mu 0 4 486 1393 1394 460
		f 4 -773 782 -750 783
		mu 0 4 488 489 459 458
		f 4 784 785 -769 786
		mu 0 4 490 491 475 474
		f 4 -785 787 788 789
		mu 0 4 491 490 492 493
		f 4 -789 790 791 792
		mu 0 4 493 492 494 495
		f 4 793 794 -756 795
		mu 0 4 496 1428 463 462
		f 4 -794 796 797 798
		mu 0 4 1428 496 498 1427
		f 4 -798 799 800 801
		mu 0 4 1427 498 500 1415
		f 4 -779 802 803 804
		mu 0 4 485 484 502 503
		f 4 -766 805 806 807
		mu 0 4 473 472 504 505
		f 4 808 809 810 811
		mu 0 4 506 507 508 509
		f 4 -809 812 813 814
		mu 0 4 507 506 510 511
		f 4 -814 815 816 817
		mu 0 4 511 510 512 513
		f 4 818 819 820 821
		mu 0 4 514 1426 1414 517
		f 4 -819 822 823 824
		mu 0 4 1426 514 518 1425
		f 4 -824 825 826 827
		mu 0 4 1425 518 520 1422
		f 4 828 829 830 831
		mu 0 4 522 523 524 525
		f 4 -829 832 833 834
		mu 0 4 523 522 526 527
		f 4 -834 835 836 837
		mu 0 4 527 526 528 529
		f 4 838 839 840 841
		mu 0 4 530 531 532 533
		f 4 -839 842 843 844
		mu 0 4 531 530 534 535
		f 4 -844 845 846 847
		mu 0 4 535 534 536 537
		f 4 848 849 850 851
		mu 0 4 538 539 540 541
		f 4 -849 852 853 854
		mu 0 4 539 538 542 543
		f 4 -854 855 856 857
		mu 0 4 543 542 544 545
		f 4 858 859 860 861
		mu 0 4 546 1424 1420 549
		f 4 -859 862 863 864
		mu 0 4 1424 546 550 1423
		f 4 -864 865 866 867
		mu 0 4 1423 550 552 1419
		f 4 868 869 870 871
		mu 0 4 554 555 556 557
		f 4 -869 872 873 874
		mu 0 4 555 554 558 559
		f 4 -874 875 876 877
		mu 0 4 559 558 560 561
		f 4 878 879 880 881
		mu 0 4 562 563 564 565
		f 4 -879 882 883 884
		mu 0 4 563 562 566 567
		f 4 -884 885 886 887
		mu 0 4 567 566 568 569
		f 4 -837 888 889 890
		mu 0 4 529 528 570 571
		f 4 -817 891 892 893
		mu 0 4 513 512 572 573
		f 4 -827 894 895 896
		mu 0 4 1422 520 574 1421
		f 4 -847 897 898 899
		mu 0 4 537 536 576 577
		f 4 -890 900 -871 901
		mu 0 4 571 570 557 556
		f 4 -893 902 -851 903
		mu 0 4 573 572 541 540
		f 4 -896 904 -861 905
		mu 0 4 1421 574 549 1420
		f 4 -899 906 -881 907
		mu 0 4 577 576 565 564
		f 4 908 909 -857 910
		mu 0 4 578 579 545 544
		f 4 -909 911 912 913
		mu 0 4 579 578 580 581
		f 4 -913 914 -648 915
		mu 0 4 581 580 582 583
		f 4 916 917 -867 918
		mu 0 4 584 1418 1419 552
		f 4 -917 919 920 921
		mu 0 4 1418 584 586 1417
		f 4 -921 922 649 923
		mu 0 4 1417 586 588 589
		f 4 924 925 -887 926
		mu 0 4 590 591 569 568
		f 4 -925 927 928 929
		mu 0 4 591 590 592 593
		f 4 -929 930 -652 931
		mu 0 4 593 592 594 595
		f 4 932 933 -877 934
		mu 0 4 596 597 561 560
		f 4 -933 935 936 937
		mu 0 4 597 596 598 599
		f 4 -937 938 -645 939
		mu 0 4 599 598 600 601
		f 4 -807 940 -841 941
		mu 0 4 505 504 533 532
		f 4 -804 942 -831 943
		mu 0 4 503 502 525 524
		f 4 -792 944 -811 945
		mu 0 4 495 494 509 508
		f 4 -801 946 -821 947
		mu 0 4 1415 500 517 1414
		f 4 948 949 -728 950
		mu 0 4 602 408 447 446
		f 4 951 952 -731 953
		mu 0 4 1392 603 449 1391
		f 4 954 955 956 957
		mu 0 4 604 1390 1387 607
		f 4 -955 958 959 960
		mu 0 4 1390 604 608 1389
		f 4 -960 961 962 963
		mu 0 4 1389 608 610 1388
		f 4 964 965 966 967
		mu 0 4 612 613 614 615
		f 4 -965 968 969 970
		mu 0 4 613 612 616 617
		f 4 -970 971 972 973
		mu 0 4 617 616 618 619
		f 4 974 975 976 977
		mu 0 4 620 621 622 623
		f 4 -975 978 979 980
		mu 0 4 621 620 624 625
		f 4 -980 981 982 983
		mu 0 4 625 624 626 627
		f 4 984 985 986 987
		mu 0 4 628 629 630 631
		f 4 -985 988 989 990
		mu 0 4 629 628 632 633
		f 4 -990 991 992 993
		mu 0 4 633 632 634 635
		f 4 1706 1705 996 997
		mu 0 4 636 637 638 639
		f 4 1414 1413 999 1000
		mu 0 4 640 641 642 643
		f 4 -1000 1001 1002 1003
		mu 0 4 643 642 644 645
		f 4 1700 1699 1006 1007
		mu 0 4 646 647 648 649
		f 4 1418 1417 1009 1010
		mu 0 4 650 651 652 653
		f 4 -1010 1011 1012 1013
		mu 0 4 653 652 654 655
		f 4 -993 1014 1015 1016
		mu 0 4 635 634 656 657
		f 4 -963 1017 1018 1019
		mu 0 4 1388 610 658 1384
		f 4 -983 1020 1021 1022
		mu 0 4 627 626 660 661
		f 4 -973 1023 1024 1025
		mu 0 4 619 618 662 663
		f 4 -665 1026 1027 1028
		mu 0 4 392 391 664 665
		f 4 -1028 1029 -1022 1030
		mu 0 4 665 664 661 660
		f 4 -667 1031 1032 1033
		mu 0 4 390 389 666 667
		f 4 -1033 1034 -1025 1035
		mu 0 4 667 666 663 662
		f 4 -957 1036 1037 1038
		mu 0 4 607 1387 1385 669
		f 4 -987 1039 1040 1041
		mu 0 4 631 630 670 671
		f 4 -967 1042 1043 1044
		mu 0 4 615 614 672 673
		f 4 -977 1045 1046 1047
		mu 0 4 623 622 674 675
		f 4 -997 1048 -1038 1049
		mu 0 4 1386 1381 669 1385
		f 4 -1007 1050 -1041 1051
		mu 0 4 649 648 671 670
		f 4 1052 1053 -1047 1054
		mu 0 4 676 677 675 674
		f 4 -1053 1055 1056 1057
		mu 0 4 677 676 678 679
		f 4 -1057 1058 1059 1060
		mu 0 4 679 678 680 681
		f 4 1061 1062 -1044 1063
		mu 0 4 1413 683 673 672
		f 4 -1062 1064 1065 1066
		mu 0 4 683 1413 1412 685
		f 4 -1066 1067 1068 1069
		mu 0 4 685 1412 1399 687
		f 4 -1013 1070 1071 1072
		mu 0 4 655 654 688 689
		f 4 -1003 1073 1074 1075
		mu 0 4 645 644 690 691
		f 4 1076 1077 1078 1079
		mu 0 4 692 693 694 695
		f 4 -1077 1080 1081 1082
		mu 0 4 693 692 696 697
		f 4 -1082 1083 1084 1085
		mu 0 4 697 696 698 699
		f 4 1086 1087 1088 1089
		mu 0 4 1411 701 702 1400
		f 4 -1087 1090 1091 1092
		mu 0 4 701 1411 1410 705
		f 4 -1092 1093 1094 1095
		mu 0 4 705 1410 1407 707
		f 4 1096 1097 1098 1099
		mu 0 4 708 709 710 711
		f 4 -1097 1100 1101 1102
		mu 0 4 709 708 712 713
		f 4 -1102 1103 1104 1105
		mu 0 4 713 712 714 715
		f 4 1106 1107 1108 1109
		mu 0 4 716 717 718 719
		f 4 -1107 1110 1111 1112
		mu 0 4 717 716 720 721
		f 4 -1112 1113 1114 1115
		mu 0 4 721 720 722 723
		f 4 1116 1117 1118 1119
		mu 0 4 724 725 726 727
		f 4 -1117 1120 1121 1122
		mu 0 4 725 724 728 729
		f 4 -1122 1123 1124 1125
		mu 0 4 729 728 730 731
		f 4 1126 1127 1128 1129
		mu 0 4 1409 733 734 1406
		f 4 -1127 1130 1131 1132
		mu 0 4 733 1409 1408 737
		f 4 -1132 1133 1134 1135
		mu 0 4 737 1408 1404 739
		f 4 1136 1137 1138 1139
		mu 0 4 740 741 742 743
		f 4 -1137 1140 1141 1142
		mu 0 4 741 740 744 745
		f 4 -1142 1143 1144 1145
		mu 0 4 745 744 746 747
		f 4 1146 1147 1148 1149
		mu 0 4 748 749 750 751
		f 4 -1147 1150 1151 1152
		mu 0 4 749 748 752 753
		f 4 -1152 1153 1154 1155
		mu 0 4 753 752 754 755
		f 4 -1105 1156 1157 1158
		mu 0 4 715 714 756 757
		f 4 -1085 1159 1160 1161
		mu 0 4 699 698 758 759
		f 4 -1095 1162 1163 1164
		mu 0 4 707 1407 1405 761
		f 4 -1115 1165 1166 1167
		mu 0 4 723 722 762 763
		f 4 -1158 1168 -1139 1169
		mu 0 4 757 756 743 742
		f 4 -1161 1170 -1119 1171
		mu 0 4 759 758 727 726
		f 4 -1164 1172 -1129 1173
		mu 0 4 761 1405 1406 734
		f 4 -1167 1174 -1149 1175
		mu 0 4 763 762 751 750
		f 4 1176 1177 -1125 1178
		mu 0 4 764 765 731 730
		f 4 -1177 1179 1180 1181
		mu 0 4 765 764 766 767
		f 4 -1181 1182 -671 1183
		mu 0 4 767 766 768 769
		f 4 1184 1185 -1135 1186
		mu 0 4 1403 771 739 1404
		f 4 -1185 1187 1188 1189
		mu 0 4 771 1403 1401 773
		f 4 -1189 1190 672 1191
		mu 0 4 773 1401 1402 775
		f 4 1192 1193 -1155 1194
		mu 0 4 776 777 755 754
		f 4 -1193 1195 1196 1197
		mu 0 4 777 776 778 779
		f 4 -1197 1198 -675 1199
		mu 0 4 779 778 780 781
		f 4 1200 1201 -1145 1202
		mu 0 4 782 783 747 746
		f 4 -1201 1203 1204 1205
		mu 0 4 783 782 784 785
		f 4 -1205 1206 -668 1207
		mu 0 4 785 784 786 787;
	setAttr ".fc[500:999]"
		f 4 -1075 1208 -1109 1209
		mu 0 4 691 690 719 718
		f 4 -1072 1210 -1099 1211
		mu 0 4 689 688 711 710
		f 4 -1060 1212 -1079 1213
		mu 0 4 681 680 695 694
		f 4 -1069 1214 -1089 1215
		mu 0 4 687 1399 1400 702
		f 4 1216 1217 -1016 1218
		mu 0 4 412 788 657 656
		f 4 1219 1220 -1019 1221
		mu 0 4 789 1383 1384 658
		f 4 -693 1222 1443 1442
		mu 0 4 415 419 790 791
		f 4 -703 1224 -711 1225
		mu 0 4 423 427 434 430
		f 4 1467 1466 -721 1227
		mu 0 4 792 793 442 438
		f 4 -723 1228 1531 1530
		mu 0 4 439 443 794 795
		f 4 1230 1541 1540 -775
		mu 0 4 476 796 797 480
		f 4 -1229 -726 1232 1529
		mu 0 4 794 443 445 798
		f 4 -1467 1469 1468 -724
		mu 0 4 442 793 799 444
		f 4 -1225 -706 1234 -714
		mu 0 4 434 427 429 436
		f 4 -1223 -696 1235 1441
		mu 0 4 790 419 421 800
		f 6 1236 1435 662 659 597 -746
		mu 0 6 457 801 603 376 368 373
		f 4 1237 -744 642 -741
		mu 0 4 455 456 372 371
		f 4 -1531 1533 1532 -718
		mu 0 4 439 795 802 440
		f 4 -1443 1445 1444 -688
		mu 0 4 415 791 803 416
		f 4 -1226 -710 1240 -698
		mu 0 4 423 430 433 424
		f 4 -1228 -720 1241 1465
		mu 0 4 792 438 441 804
		f 4 1635 1634 -762 -1633
		mu 0 4 467 805 468 464
		f 4 1629 1628 -1231 -1627
		mu 0 4 479 806 796 476
		f 4 1625 -772 -1457 1459
		mu 0 4 807 478 477 481
		f 4 1247 -790 1248 -797
		mu 0 4 496 491 493 498
		f 4 -1247 -780 1249 1621
		mu 0 4 808 482 485 809
		f 4 -1543 1545 1544 -778
		mu 0 4 483 810 811 484
		f 4 -1637 1639 1638 -765
		mu 0 4 471 812 813 472
		f 4 1252 -815 1253 -823
		mu 0 4 514 507 511 518
		f 4 1612 -835 1255 1613
		mu 0 4 814 523 527 815
		f 4 1256 1553 1552 -833
		mu 0 4 522 816 817 526
		f 4 1258 1574 1573 -843
		mu 0 4 530 818 819 534
		f 4 1260 -855 1261 -863
		mu 0 4 546 539 543 550
		f 4 1602 -875 1263 1603
		mu 0 4 820 555 559 821
		f 4 1264 1563 1562 -873
		mu 0 4 554 822 823 558
		f 4 1266 1584 1583 -883
		mu 0 4 562 824 825 566
		f 4 -1256 -838 1268 1611
		mu 0 4 815 527 529 826
		f 4 -1254 -818 1269 -826
		mu 0 4 518 511 513 520
		f 4 -1574 1576 1575 -846
		mu 0 4 534 819 827 536
		f 4 -1553 1555 1554 -836
		mu 0 4 526 817 828 528
		f 4 -1269 -891 1272 1609
		mu 0 4 826 529 571 829
		f 4 -1270 -894 1273 -895
		mu 0 4 520 513 573 574
		f 4 -1576 1578 1577 -898
		mu 0 4 536 827 830 576
		f 4 -1555 1557 1556 -889
		mu 0 4 528 828 831 570
		f 4 1276 -914 1277 -920
		mu 0 4 584 579 581 586
		f 4 1278 1590 1589 -928
		mu 0 4 590 832 833 592
		f 4 1280 1569 1568 -936
		mu 0 4 596 834 835 598
		f 4 1596 -938 1283 1597
		mu 0 4 836 597 599 837
		f 4 -1284 -940 -1594 1595
		mu 0 4 837 599 601 838
		f 4 -1278 -916 646 -923
		mu 0 4 586 581 583 588
		f 4 -1590 1592 1591 -931
		mu 0 4 592 833 839 594
		f 4 -1569 1571 1570 -939
		mu 0 4 598 835 840 600
		f 4 1604 -870 -1603 1605
		mu 0 4 841 556 555 820
		f 4 1285 -850 -1261 -862
		mu 0 4 549 540 539 546
		f 4 1286 1582 -1267 -882
		mu 0 4 565 842 824 562
		f 4 1287 1561 -1265 -872
		mu 0 4 557 843 822 554
		f 4 -1578 1580 -1287 -907
		mu 0 4 576 830 842 565
		f 4 -1557 1559 -1288 -901
		mu 0 4 570 831 843 557
		f 4 -1273 -902 -1605 1607
		mu 0 4 829 571 556 841
		f 4 -1274 -904 -1286 -905
		mu 0 4 574 573 540 549
		f 4 -1264 -878 1288 1601
		mu 0 4 821 559 561 844
		f 4 -1262 -858 1289 -866
		mu 0 4 550 543 545 552
		f 4 -1584 1586 1585 -886
		mu 0 4 566 825 845 568
		f 4 -1563 1565 1564 -876
		mu 0 4 558 823 846 560
		f 4 -1289 -934 -1597 1599
		mu 0 4 844 561 597 836
		f 4 -1290 -910 -1277 -919
		mu 0 4 552 545 579 584
		f 4 -1586 1588 -1279 -927
		mu 0 4 568 845 832 590
		f 4 -1565 1567 -1281 -935
		mu 0 4 560 846 834 596
		f 4 1292 -786 -1248 -796
		mu 0 4 462 475 491 496
		f 4 1293 1449 -1243 -782
		mu 0 4 460 847 1379 486
		f 4 1294 1537 -1245 -784
		mu 0 4 458 849 850 488
		f 4 1460 -783 -1459 1461
		mu 0 4 851 459 489 852
		f 4 -1241 -770 -1293 -755
		mu 0 4 424 433 475 462
		f 4 -1445 1447 -1294 -752
		mu 0 4 416 803 847 460
		f 4 -1533 1535 -1295 -749
		mu 0 4 440 802 849 458
		f 4 -1242 -751 -1461 1463
		mu 0 4 804 441 459 851
		f 4 -1545 1547 1546 -803
		mu 0 4 484 811 853 502
		f 4 -1250 -805 1297 1619
		mu 0 4 809 485 503 854
		f 4 -1249 -793 1298 -800
		mu 0 4 498 493 495 500
		f 4 -1639 1641 1640 -806
		mu 0 4 472 813 855 504
		f 4 -1547 1549 1548 -943
		mu 0 4 502 853 856 525
		f 4 -1298 -944 1301 1617
		mu 0 4 854 503 524 857
		f 4 -1299 -946 1302 -947
		mu 0 4 500 495 508 517
		f 4 -1641 1643 1642 -941
		mu 0 4 504 855 858 533
		f 4 -1549 1551 -1257 -832
		mu 0 4 525 856 816 522
		f 4 -1302 -830 -1613 1615
		mu 0 4 857 524 523 814
		f 4 -1303 -810 -1253 -822
		mu 0 4 517 508 507 514
		f 4 -1643 1644 -1259 -842
		mu 0 4 533 858 818 530
		f 4 1524 -950 654 1525
		mu 0 4 859 447 408 407
		f 4 1436 -953 -1436 1437
		mu 0 4 860 449 603 801
		f 4 1306 -747 -1238 -743
		mu 0 4 450 453 456 455
		f 4 1307 1473 1472 -951
		mu 0 4 446 861 862 602
		f 4 -1233 -729 -1525 1527
		mu 0 4 798 445 447 859
		f 4 -1236 -732 -1437 1439
		mu 0 4 800 421 449 860
		f 4 -1235 -738 -1307 -733
		mu 0 4 436 429 453 450
		f 4 -1469 1471 -1308 -727
		mu 0 4 444 799 861 446
		f 4 1403 -971 1310 1404
		mu 0 4 863 613 617 864
		f 4 1311 -981 1312 -969
		mu 0 4 612 621 625 616
		f 4 1313 1428 1427 -979
		mu 0 4 620 865 866 624
		f 4 1481 -961 1316 1482
		mu 0 4 867 605 609 868
		f 4 1494 1493 -1414 1416
		mu 0 4 869 870 642 641
		f 4 -964 1319 1480 -1317
		mu 0 4 609 611 871 868
		f 4 1430 1429 -982 -1428
		mu 0 4 866 872 626 624
		f 4 -984 1321 -972 -1313
		mu 0 4 625 627 618 616
		f 4 -974 1322 1402 -1311
		mu 0 4 617 619 873 864
		f 6 -1032 -622 -682 683 1323 1396
		mu 0 6 666 389 388 398 789 874
		f 4 -1027 -666 -1034 1324
		mu 0 4 664 391 390 667
		f 4 1484 1483 -956 -1482
		mu 0 4 867 875 606 605
		f 4 1406 1405 -966 -1404
		mu 0 4 863 876 614 613
		f 4 -968 1327 -976 -1312
		mu 0 4 612 615 622 621
		f 4 -978 1328 1426 -1314
		mu 0 4 620 623 877 865
		f 4 1412 1710 1709 1330
		mu 0 4 878 879 880 682
		f 4 1490 1704 -998 1331
		mu 0 4 881 882 636 639
		f 4 1332 1696 1695 1419
		mu 0 4 677 883 884 885
		f 4 -1067 1334 -1056 1335
		mu 0 4 683 685 678 676
		f 4 -1058 1336 1694 -1333
		mu 0 4 677 679 886 883
		f 4 1496 1495 -1002 -1494
		mu 0 4 870 887 644 642
		f 4 1712 1711 -1065 -1710
		mu 0 4 880 888 684 682
		f 4 -1093 1339 -1081 1340
		mu 0 4 701 705 696 692
		f 4 -1083 1341 1686 1685
		mu 0 4 693 697 889 890
		f 4 1504 1503 -1111 1344
		mu 0 4 891 892 720 716
		f 4 1647 1646 -1091 1346
		mu 0 4 893 894 704 700
		f 4 -1133 1347 -1121 1348
		mu 0 4 733 737 728 724
		f 4 -1123 1349 1676 1675
		mu 0 4 725 729 895 896
		f 4 1514 1513 -1151 1352
		mu 0 4 897 898 752 748
		f 4 1657 1656 -1131 1354
		mu 0 4 899 900 736 732
		f 4 -1086 1355 1684 -1342
		mu 0 4 697 699 901 889
		f 4 -1096 1356 -1084 -1340
		mu 0 4 705 707 698 696
		f 4 1649 1648 -1094 -1647
		mu 0 4 894 902 706 704
		f 4 1506 1505 -1114 -1504
		mu 0 4 892 903 722 720
		f 4 -1162 1359 1682 -1356
		mu 0 4 699 759 904 901
		f 4 -1165 1360 -1160 -1357
		mu 0 4 707 761 758 698
		f 4 1651 1650 -1163 -1649
		mu 0 4 902 905 760 706
		f 4 1508 1507 -1166 -1506
		mu 0 4 903 906 762 722
		f 4 -1190 1363 -1180 1364
		mu 0 4 771 773 766 764
		f 4 1663 1662 -1188 1366
		mu 0 4 907 908 772 770
		f 4 1520 1519 -1196 1368
		mu 0 4 909 910 778 776
		f 4 -1182 1369 1670 1669
		mu 0 4 765 767 911 912
		f 4 -1184 669 1668 -1370
		mu 0 4 767 769 913 911
		f 4 -1192 -669 -1183 -1364
		mu 0 4 773 775 768 766
		f 4 1665 -672 -1191 -1663
		mu 0 4 908 914 774 772
		f 4 1522 -674 -1199 -1520
		mu 0 4 910 915 780 778
		f 4 -1118 -1676 1678 1677
		mu 0 4 726 725 896 916
		f 4 -1128 -1349 -1120 1372
		mu 0 4 734 733 724 727
		f 4 1655 -1355 -1130 1373
		mu 0 4 917 899 732 735
		f 4 1512 -1353 -1150 1374
		mu 0 4 918 897 748 751
		f 4 1653 -1374 -1173 -1651
		mu 0 4 905 917 735 760
		f 4 1510 -1375 -1175 -1508
		mu 0 4 906 918 751 762
		f 4 -1172 -1678 1680 -1360
		mu 0 4 759 726 916 904
		f 4 -1174 -1373 -1171 -1361
		mu 0 4 761 734 727 758
		f 4 -1126 1375 1674 -1350
		mu 0 4 729 731 919 895
		f 4 -1136 1376 -1124 -1348
		mu 0 4 737 739 730 728
		f 4 1659 1658 -1134 -1657
		mu 0 4 900 920 738 736
		f 4 1516 1515 -1154 -1514
		mu 0 4 898 921 754 752
		f 4 -1178 -1670 1672 -1376
		mu 0 4 731 765 912 919
		f 4 -1186 -1365 -1179 -1377
		mu 0 4 739 771 764 730
		f 4 1661 -1367 -1187 -1659
		mu 0 4 920 907 770 738
		f 4 1518 -1369 -1195 -1516
		mu 0 4 921 909 776 754
		f 4 -1063 -1336 -1055 1379
		mu 0 4 673 683 676 674
		f 4 1410 -1331 -1064 1380
		mu 0 4 922 1380 1413 672
		f 4 1488 -1332 -1050 1381
		mu 0 4 923 881 639 668
		f 4 -1054 -1420 1422 1421
		mu 0 4 675 677 885 924
		f 4 -1045 -1380 -1046 -1328
		mu 0 4 615 673 674 622
		f 4 1408 -1381 -1043 -1406
		mu 0 4 876 922 672 614
		f 4 1486 -1382 -1037 -1484
		mu 0 4 875 923 668 606
		f 4 -1048 -1422 1424 -1329
		mu 0 4 623 675 924 877
		f 4 1498 1497 -1074 -1496
		mu 0 4 887 925 690 644
		f 4 -1061 1384 1692 -1337
		mu 0 4 679 681 926 886
		f 4 -1070 1385 -1059 -1335
		mu 0 4 685 687 680 678
		f 4 1714 1713 -1068 -1712
		mu 0 4 888 927 686 684
		f 4 1500 1499 -1209 -1498
		mu 0 4 925 928 719 690
		f 4 -1214 1388 1690 -1385
		mu 0 4 681 694 929 926
		f 4 -1216 1389 -1213 -1386
		mu 0 4 687 702 695 680
		f 4 1716 1715 -1215 -1714
		mu 0 4 927 930 703 686
		f 4 1502 -1345 -1110 -1500
		mu 0 4 928 891 716 719
		f 4 -1078 -1686 1688 -1389
		mu 0 4 694 693 890 929
		f 4 -1088 -1341 -1080 -1390
		mu 0 4 702 701 692 695
		f 4 1717 -1347 -1090 -1716
		mu 0 4 930 893 700 703
		f 4 -1221 -1475 1476 1475
		mu 0 4 659 411 413 931
		f 4 -1035 -1397 1398 1397
		mu 0 4 663 666 874 932
		f 4 -1030 -1325 -1036 1393
		mu 0 4 661 664 667 662
		f 4 1434 1433 -1031 1395
		mu 0 4 933 934 665 660
		f 4 -1020 -1476 1478 -1320
		mu 0 4 611 659 931 871
		f 4 -1026 -1398 1400 -1323
		mu 0 4 619 663 932 873
		f 4 -1023 -1394 -1024 -1322
		mu 0 4 627 661 662 618
		f 4 1432 -1396 -1021 -1430
		mu 0 4 872 933 660 626
		f 6 -656 -1473 -1309 -739 640 -653
		mu 0 6 405 602 862 454 370 369
		f 6 -681 677 -664 -1029 -1434 -1395
		mu 0 6 788 409 393 392 665 934
		f 4 655 656 -658 -949
		mu 0 4 602 405 404 408
		f 4 660 -662 -663 -952
		mu 0 4 1392 377 376 603
		f 4 -679 679 680 -1217
		mu 0 4 412 410 409 788
		f 4 -684 -685 685 -1220
		mu 0 4 789 398 1429 1383
		f 4 -1399 -1324 -1222 1392
		mu 0 4 932 874 789 658
		f 4 -1401 -1393 -1018 -1400
		mu 0 4 873 932 658 610
		f 4 -1403 1399 -962 -1402
		mu 0 4 864 873 610 608
		f 4 1309 -1405 1401 -959
		mu 0 4 604 863 864 608
		f 4 -958 1326 -1407 -1310
		mu 0 4 604 607 876 863
		f 4 -1039 -1408 -1409 -1327
		mu 0 4 607 669 922 876
		f 4 -1049 -1410 -1411 1407
		mu 0 4 669 1381 1380 922
		f 4 -1706 1708 -1413 1409
		mu 0 4 638 637 879 878
		f 4 -995 998 -1415 1411
		mu 0 4 935 936 641 640
		f 4 1492 -1417 -999 1318
		mu 0 4 937 869 641 936
		f 4 -1005 1008 -1419 1415
		mu 0 4 938 939 651 650
		f 4 -1696 1698 -1008 1333
		mu 0 4 885 884 646 649
		f 4 -1423 -1334 -1052 1382
		mu 0 4 924 885 649 670
		f 4 -1425 -1383 -1040 -1424
		mu 0 4 877 924 670 630
		f 4 -1427 1423 -986 -1426
		mu 0 4 865 877 630 629
		f 4 -1429 1425 -991 1314
		mu 0 4 866 865 629 633
		f 4 -994 1320 -1431 -1315
		mu 0 4 633 635 872 866
		f 4 -1017 -1432 -1433 -1321
		mu 0 4 635 657 933 872
		f 4 -1218 1394 -1435 1431
		mu 0 4 657 788 934 933
		f 4 1305 -1438 -1237 -748
		mu 0 4 452 860 801 457
		f 4 -1439 -1440 -1306 -736
		mu 0 4 428 800 860 452
		f 4 -1441 -1442 1438 -704
		mu 0 4 426 790 800 428
		f 4 -1444 1440 -701 1223
		mu 0 4 791 790 426 422
		f 4 -1446 -1224 -700 1239
		mu 0 4 803 791 422 425
		f 4 -1448 -1240 -757 -1447
		mu 0 4 847 803 425 463
		f 4 -1450 1446 -795 -1449
		mu 0 4 1379 847 463 1428
		f 4 -1635 1637 1636 -1451
		mu 0 4 468 805 812 471
		f 4 -1454 1450 762 763
		mu 0 4 469 468 471 470
		f 4 -1541 1543 1542 -1455
		mu 0 4 480 797 810 483
		f 4 -1458 1454 775 776
		mu 0 4 481 480 483 482
		f 4 1623 -1460 -777 1246
		mu 0 4 808 807 481 482
		f 4 1295 -1462 -1246 -787
		mu 0 4 474 851 852 490
		f 4 -1463 -1464 -1296 -768
		mu 0 4 432 804 851 474
		f 4 -1465 -1466 1462 -708
		mu 0 4 431 792 804 432
		f 4 -713 1226 -1468 1464
		mu 0 4 431 435 793 792
		f 4 -1470 -1227 -716 1233
		mu 0 4 799 793 435 437
		f 4 -1472 -1234 -735 -1471
		mu 0 4 861 799 437 451
		f 4 -1474 1470 -742 1308
		mu 0 4 862 861 451 454
		f 4 -1477 -676 -1219 1391
		mu 0 4 931 413 412 656
		f 4 -1479 -1392 -1015 -1478
		mu 0 4 871 931 656 634
		f 4 -1481 1477 -992 -1480
		mu 0 4 868 871 634 632
		f 4 1315 -1483 1479 -989
		mu 0 4 628 867 868 632
		f 4 -988 1325 -1485 -1316
		mu 0 4 628 631 875 867
		f 4 -1042 -1486 -1487 -1326
		mu 0 4 631 671 923 875
		f 4 -1051 -1488 -1489 1485
		mu 0 4 671 648 881 923
		f 4 -1700 1702 -1491 1487
		mu 0 4 648 647 882 881
		f 4 -1416 -1492 -1493 1489
		mu 0 4 938 650 869 937
		f 4 -1011 1317 -1495 1491
		mu 0 4 650 653 870 869
		f 4 -1014 1337 -1497 -1318
		mu 0 4 653 655 887 870
		f 4 -1073 1383 -1499 -1338
		mu 0 4 655 689 925 887
		f 4 -1212 1387 -1501 -1384
		mu 0 4 689 710 928 925
		f 4 -1098 -1502 -1503 -1388
		mu 0 4 710 709 891 928
		f 4 -1103 1343 -1505 1501
		mu 0 4 709 713 892 891
		f 4 -1106 1358 -1507 -1344
		mu 0 4 713 715 903 892
		f 4 -1159 1362 -1509 -1359
		mu 0 4 715 757 906 903
		f 4 -1170 -1510 -1511 -1363
		mu 0 4 757 742 918 906
		f 4 -1138 -1512 -1513 1509
		mu 0 4 742 741 897 918
		f 4 -1143 1351 -1515 1511
		mu 0 4 741 745 898 897
		f 4 -1146 1378 -1517 -1352
		mu 0 4 745 747 921 898
		f 4 -1202 -1518 -1519 -1379
		mu 0 4 747 783 909 921
		f 4 -1206 1367 -1521 1517
		mu 0 4 783 785 910 909
		f 4 -1208 -1522 -1523 -1368
		mu 0 4 785 787 915 910
		f 4 1304 -1526 1523 -954
		mu 0 4 448 859 407 406
		f 4 -1527 -1528 -1305 -730
		mu 0 4 420 798 859 448
		f 4 -1529 -1530 1526 -694
		mu 0 4 418 794 798 420
		f 4 -1532 1528 -691 1229
		mu 0 4 795 794 418 414
		f 4 -1534 -1230 -690 1238
		mu 0 4 802 795 414 417
		f 4 -1536 -1239 -754 -1535
		mu 0 4 849 802 417 461
		f 4 -1538 1534 -781 -1537
		mu 0 4 850 849 461 487
		f 4 -1629 1631 -759 -1539
		mu 0 4 796 806 466 465
		f 4 -1542 1538 -1453 1455
		mu 0 4 797 796 465 469
		f 4 -1544 -1456 -764 1231
		mu 0 4 810 797 469 470
		f 4 -1546 -1232 -767 1250
		mu 0 4 811 810 470 473
		f 4 -1548 -1251 -808 1296
		mu 0 4 853 811 473 505
		f 4 -1550 -1297 -942 1300
		mu 0 4 856 853 505 532
		f 4 -1552 -1301 -840 -1551
		mu 0 4 816 856 532 531
		f 4 -1554 1550 -845 1257
		mu 0 4 817 816 531 535
		f 4 -1556 -1258 -848 1271
		mu 0 4 828 817 535 537
		f 4 -1558 -1272 -900 1275
		mu 0 4 831 828 537 577
		f 4 -1560 -1276 -908 -1559
		mu 0 4 843 831 577 564
		f 4 -1562 1558 -880 -1561
		mu 0 4 822 843 564 563
		f 4 -1564 1560 -885 1265
		mu 0 4 823 822 563 567
		f 4 -1566 -1266 -888 1291
		mu 0 4 846 823 567 569
		f 4 -1568 -1292 -926 -1567
		mu 0 4 834 846 569 591
		f 4 -1570 1566 -930 1281
		mu 0 4 835 834 591 593
		f 4 -1572 -1282 -932 650
		mu 0 4 840 835 593 595
		f 4 1572 -825 1259 -1575
		mu 0 4 818 515 519 819
		f 4 -1577 -1260 -828 1270
		mu 0 4 827 819 519 521
		f 4 -1579 -1271 -897 1274
		mu 0 4 830 827 521 575
		f 4 -1581 -1275 -906 -1580
		mu 0 4 842 830 575 548
		f 4 -1583 1579 -860 -1582
		mu 0 4 824 842 548 547
		f 4 -1585 1581 -865 1267
		mu 0 4 825 824 547 551
		f 4 -1587 -1268 -868 1290
		mu 0 4 845 825 551 553
		f 4 -1589 -1291 -918 -1588
		mu 0 4 832 845 553 585
		f 4 -1591 1587 -922 1279
		mu 0 4 833 832 585 587
		f 4 -1593 -1280 -924 648
		mu 0 4 839 833 587 1416
		f 4 -1595 -1596 -646 -915
		mu 0 4 580 837 838 582
		f 4 1282 -1598 1594 -912
		mu 0 4 578 836 837 580
		f 4 -1599 -1600 -1283 -911
		mu 0 4 544 844 836 578
		f 4 -1601 -1602 1598 -856
		mu 0 4 542 821 844 544
		f 4 1262 -1604 1600 -853
		mu 0 4 538 820 821 542
		f 4 1284 -1606 -1263 -852
		mu 0 4 541 841 820 538
		f 4 -1607 -1608 -1285 -903
		mu 0 4 572 829 841 541
		f 4 -1609 -1610 1606 -892
		mu 0 4 512 826 829 572
		f 4 -1611 -1612 1608 -816
		mu 0 4 510 815 826 512
		f 4 1254 -1614 1610 -813
		mu 0 4 506 814 815 510
		f 4 -1615 -1616 -1255 -812
		mu 0 4 509 857 814 506
		f 4 -1617 -1618 1614 -945
		mu 0 4 494 854 857 509
		f 4 -1619 -1620 1616 -791
		mu 0 4 492 809 854 494
		f 4 -1621 -1622 1618 -788
		mu 0 4 490 808 809 492
		f 4 1245 -1623 -1624 1620
		mu 0 4 490 852 807 808
		f 4 1458 -1625 -1626 1622
		mu 0 4 852 489 478 807
		f 4 -1628 1624 772 773
		mu 0 4 479 478 489 488
		f 4 1244 1539 -1630 -774
		mu 0 4 488 850 806 479
		f 4 -1632 -1540 1536 -1631
		mu 0 4 466 806 850 487
		f 4 -1634 1630 759 760
		mu 0 4 467 466 487 1382
		f 4 1242 1451 -1636 -761
		mu 0 4 1382 848 805 467
		f 4 -1638 -1452 1448 1243
		mu 0 4 812 805 848 497
		f 4 -1640 -1244 -799 1251
		mu 0 4 813 812 497 499
		f 4 -1642 -1252 -802 1299
		mu 0 4 855 813 499 501
		f 4 -1644 -1300 -948 1303
		mu 0 4 858 855 501 516
		f 4 -1645 -1304 -820 -1573
		mu 0 4 818 858 516 515
		f 4 -1113 1345 -1648 1645
		mu 0 4 717 721 894 893
		f 4 -1116 1357 -1650 -1346
		mu 0 4 721 723 902 894
		f 4 -1168 1361 -1652 -1358
		mu 0 4 723 763 905 902
		f 4 -1176 -1653 -1654 -1362
		mu 0 4 763 750 917 905
		f 4 -1148 -1655 -1656 1652
		mu 0 4 750 749 899 917
		f 4 -1153 1353 -1658 1654
		mu 0 4 749 753 900 899
		f 4 -1156 1377 -1660 -1354
		mu 0 4 753 755 920 900
		f 4 -1194 -1661 -1662 -1378
		mu 0 4 755 777 907 920
		f 4 -1198 1365 -1664 1660
		mu 0 4 777 779 908 907
		f 4 -1200 -1665 -1666 -1366
		mu 0 4 779 781 914 908
		f 4 -1669 1666 -1207 -1668
		mu 0 4 911 913 786 784
		f 4 -1671 1667 -1204 1370
		mu 0 4 912 911 784 782
		f 4 -1673 -1371 -1203 -1672
		mu 0 4 919 912 782 746
		f 4 -1675 1671 -1144 -1674
		mu 0 4 895 919 746 744
		f 4 -1677 1673 -1141 1350
		mu 0 4 896 895 744 740
		f 4 -1679 -1351 -1140 1371
		mu 0 4 916 896 740 743
		f 4 -1681 -1372 -1169 -1680
		mu 0 4 904 916 743 756
		f 4 -1683 1679 -1157 -1682
		mu 0 4 901 904 756 714
		f 4 -1685 1681 -1104 -1684
		mu 0 4 889 901 714 712
		f 4 -1687 1683 -1101 1342
		mu 0 4 890 889 712 708
		f 4 -1689 -1343 -1100 -1688
		mu 0 4 929 890 708 711
		f 4 -1691 1687 -1211 -1690
		mu 0 4 926 929 711 688
		f 4 -1693 1689 -1071 -1692
		mu 0 4 886 926 688 654
		f 4 -1695 1691 -1012 -1694
		mu 0 4 883 886 654 652
		f 4 -1697 1693 -1418 1420
		mu 0 4 884 883 652 651
		f 4 -1699 -1421 -1009 -1698
		mu 0 4 646 884 651 939
		f 4 1004 1005 -1701 1697
		mu 0 4 939 938 647 646
		f 4 -1703 -1006 -1490 -1702
		mu 0 4 882 647 938 937
		f 4 -1705 1701 -1319 -1704
		mu 0 4 636 882 937 936
		f 4 994 995 -1707 1703
		mu 0 4 936 935 637 636
		f 4 -1709 -996 -1412 -1708
		mu 0 4 879 637 935 640
		f 4 -1711 1707 -1001 1329
		mu 0 4 880 879 640 643
		f 4 -1004 1338 -1713 -1330
		mu 0 4 643 645 888 880
		f 4 -1076 1386 -1715 -1339
		mu 0 4 645 691 927 888
		f 4 -1210 1390 -1717 -1387
		mu 0 4 691 718 930 927
		f 4 -1108 -1646 -1718 -1391
		mu 0 4 718 717 893 930
		f 4 1741 1722 1733 1742
		mu 0 4 1014 1015 1016 1017
		f 4 -1736 1738 1737 -1733
		mu 0 4 1018 1019 1020 1016
		f 4 1732 -1723 -1721 -1731
		mu 0 4 1018 1016 1021 1022
		f 3 1740 -1734 -1738
		mu 0 3 1020 1017 1016
		f 4 -1730 1727 1725 -1727
		mu 0 4 1023 1024 1025 1026
		f 4 1731 -1735 -1719 -1729
		mu 0 4 1023 1027 1028 1029
		f 4 -1732 1726 1724 -1737
		mu 0 4 1027 1023 1026 1019
		f 4 1723 -1739 -1725 -1726
		mu 0 4 1025 1020 1019 1026
		f 4 -1728 -1740 -1741 -1724
		mu 0 4 1025 1024 1017 1020
		f 4 1719 -1743 1739 -1722
		mu 0 4 1030 1014 1017 1024
		f 4 1775 1774 -1745 -1773
		mu 0 4 1031 1032 1033 1034
		f 4 1745 1752 1778 -1752
		mu 0 4 1035 1036 1037 1038
		f 4 1854 1853 -1762 -1852
		mu 0 4 1039 1040 1041 1042
		f 4 1777 1862 -1751 -1775
		mu 0 4 1032 1043 1044 1033
		f 4 1845 1772 1749 1846
		mu 0 4 1045 1031 1034 1046
		f 4 1746 1756 1770 -1756
		mu 0 4 1047 1048 1049 1050
		f 4 1857 1758 1769 1858
		mu 0 4 1051 1052 1053 1054
		f 4 -1744 1760 1767 -1759
		mu 0 4 1055 1056 1057 1058
		f 4 -1848 1850 1849 -1761
		mu 0 4 1056 1059 1060 1057
		f 4 -1850 1852 1851 -1765
		mu 0 4 1057 1060 1039 1042
		f 4 -1768 1764 1761 -1767
		mu 0 4 1058 1057 1042 1041
		f 4 -1770 1766 -1854 1856
		mu 0 4 1054 1053 1061 1062
		f 4 -1771 1768 -1758 -1764
		mu 0 4 1050 1049 1063 1064
		f 4 1847 1747 -1846 1848
		mu 0 4 1059 1056 1031 1045
		f 4 1743 1748 -1776 -1748
		mu 0 4 1056 1055 1032 1031
		f 4 -1858 1860 -1778 -1749
		mu 0 4 1052 1051 1043 1032
		f 4 -1779 1776 -1747 -1772
		mu 0 4 1038 1037 1048 1047
		f 4 -1784 -1783 -1782 -1742
		mu 0 4 1065 1066 1067 1068
		f 4 1779 1720 1781 -1786
		mu 0 4 1069 1070 1071 1067
		f 4 -1791 -1790 1786 -1793
		mu 0 4 1072 1073 1074 1075
		f 4 1793 1785 1794 -1785
		mu 0 4 1076 1069 1067 1077
		f 3 -1795 1782 -1796
		mu 0 3 1077 1067 1066
		f 4 1787 1718 1780 -1797
		mu 0 4 1075 1029 1028 1078
		f 4 1791 -1798 1792 1796
		mu 0 4 1078 1076 1072 1075
		f 4 1790 1797 1784 -1799
		mu 0 4 1073 1072 1076 1077
		f 4 1789 1798 1795 1799
		mu 0 4 1074 1073 1077 1066
		f 4 1788 -1800 1783 -1720
		mu 0 4 1079 1074 1066 1065
		f 4 1802 1744 -1802 -1801
		mu 0 4 1080 1034 1033 1081
		f 4 1805 -1805 -1804 -1746
		mu 0 4 1035 1082 1083 1036
		f 4 1835 1808 -1834 1836
		mu 0 4 1084 1085 1086 1087
		f 4 1801 1750 1864 -1811
		mu 0 4 1081 1033 1044 1088
		f 4 1844 -1750 -1803 -1842
		mu 0 4 1089 1046 1034 1080
		f 4 1815 -1815 -1814 -1813
		mu 0 4 1090 1091 1092 1093
		f 4 1867 -1819 -1818 -1866
		mu 0 4 1094 1095 1096 1097
		f 4 1817 -1822 -1821 1819
		mu 0 4 1098 1099 1100 1101
		f 4 1820 -1838 1840 1839
		mu 0 4 1101 1100 1102 1103
		f 4 1825 -1836 1838 1837
		mu 0 4 1100 1085 1084 1102
		f 4 1826 -1809 -1826 1821
		mu 0 4 1099 1086 1085 1100
		f 4 1834 1833 -1827 1818
		mu 0 4 1095 1104 1105 1096
		f 4 1824 1806 -1828 1814
		mu 0 4 1091 1106 1107 1092
		f 4 1842 1841 -1829 -1840
		mu 0 4 1103 1089 1080 1101
		f 4 1828 1800 -1831 -1820
		mu 0 4 1101 1080 1081 1098
		f 4 1830 1810 1866 1865
		mu 0 4 1097 1081 1088 1094
		f 4 1829 1812 -1832 1804
		mu 0 4 1082 1090 1093 1083
		f 4 1827 1807 -1835 1832
		mu 0 4 1108 1109 1104 1095
		f 4 1809 -1837 -1808 -1807
		mu 0 4 1106 1084 1087 1107
		f 4 -1839 -1810 -1825 1823
		mu 0 4 1102 1084 1106 1091
		f 4 -1841 -1824 -1816 1822
		mu 0 4 1103 1102 1091 1090
		f 4 -1830 1811 -1843 -1823
		mu 0 4 1090 1082 1089 1103
		f 4 -1806 -1844 -1845 -1812
		mu 0 4 1082 1035 1046 1089
		f 4 1773 -1847 1843 1751
		mu 0 4 1038 1045 1046 1035
		f 4 1753 -1849 -1774 1771
		mu 0 4 1047 1059 1045 1038
		f 4 -1851 -1754 1755 1765
		mu 0 4 1060 1059 1047 1050
		f 4 -1853 -1766 1763 1762
		mu 0 4 1039 1060 1050 1064
		f 4 1757 1759 -1855 -1763
		mu 0 4 1064 1063 1040 1039
		f 4 -1856 -1857 -1760 -1769
		mu 0 4 1110 1054 1062 1111
		f 4 1754 -1859 1855 -1757
		mu 0 4 1112 1051 1054 1110
		f 4 -1861 -1755 -1777 -1860
		mu 0 4 1043 1051 1112 1113
		f 4 -1863 1859 -1753 -1862
		mu 0 4 1044 1043 1113 1114
		f 4 -1865 1861 1803 -1864
		mu 0 4 1088 1044 1114 1115
		f 4 -1867 1863 1831 1816
		mu 0 4 1094 1088 1115 1116
		f 4 1813 -1833 -1868 -1817
		mu 0 4 1116 1108 1095 1094
		f 4 1736 1868 -1870 1734
		mu 0 4 1027 1019 1117 1028
		f 4 -1792 -1781 1869 -1871
		mu 0 4 1076 1078 1028 1118
		f 4 1730 1871 -1869 1735
		mu 0 4 1018 1119 1117 1019
		f 4 -1780 -1794 1870 -1872
		mu 0 4 1120 1069 1076 1118
		f 4 1900 1873 -1899 1901
		mu 0 4 1121 1122 1123 1124
		f 4 1878 1877 -1877 -1876
		mu 0 4 1125 1126 1127 1128
		f 4 1880 1906 -1880 -1878
		mu 0 4 1126 1129 1130 1127
		f 4 1897 1896 1876 1879
		mu 0 4 1131 1132 1133 1134
		f 4 -1879 -1903 1905 -1881
		mu 0 4 1126 1125 1135 1129
		f 4 2296 2301 -2301 -2300
		f 4 1899 1898 -1884 -1897
		mu 0 4 1132 1124 1123 1133
		f 4 1883 -1874 -1885 1875
		mu 0 4 1128 1123 1122 1125
		f 4 1884 -1901 1903 1902
		mu 0 4 1125 1122 1121 1135
		f 4 1888 1887 -1887 -1886
		mu 0 4 1136 1137 1138 1139
		f 4 1886 1890 1916 -1890
		mu 0 4 1139 1138 1140 1141
		f 4 -1891 -1888 -1913 1915
		mu 0 4 1142 1143 1144 1145
		f 4 1889 1909 1908 1885
		mu 0 4 1139 1141 1146 1136
		f 3 1910 -1894 -1909
		mu 0 3 1146 1147 1136
		f 4 1893 1911 -1895 -1889
		mu 0 4 1136 1147 1148 1137
		f 3 1894 1913 1912
		mu 0 3 1144 1148 1145
		f 4 1872 1881 -1898 1895
		mu 0 4 1149 1150 1132 1131
		f 4 1882 2302 -1900 -1882
		mu 0 4 1150 1148 1124 1132
		f 4 1874 -1902 -2303 -1912
		mu 0 4 1147 1121 1124 1148
		f 4 -1904 -1875 -2298 2298
		mu 0 4 1135 1121 1147 1151
		f 4 -1906 -2299 -2296 -1905
		mu 0 4 1129 1135 1151 1152
		f 4 1907 2295 1892 -1910
		mu 0 4 1141 1152 1151 1146
		f 3 2297 -1911 -1893
		mu 0 3 1151 1147 1146
		f 3 -1914 -1883 1891
		mu 0 3 1145 1148 1150
		f 4 -1915 -1916 -1892 -1873
		mu 0 4 1149 1142 1145 1150
		f 4 -1896 1917 1933 -1919
		mu 0 4 1149 1131 1153 1154
		f 4 1904 1921 1940 -1921
		mu 0 4 1129 1152 1155 1156
		f 4 -1907 1920 1931 -1918
		mu 0 4 1130 1129 1156 1157
		f 4 -1908 1924 1939 -1922
		mu 0 4 1152 1141 1158 1444
		f 4 1914 1918 1935 -1927
		mu 0 4 1142 1149 1154 1159
		f 4 -1917 1926 1937 -1925
		mu 0 4 1141 1140 1160 1158
		f 4 -1932 1929 1943 -1931
		mu 0 4 1157 1156 1161 1162
		f 4 -1934 1930 1945 -1933
		mu 0 4 1154 1153 1163 1164
		f 4 -1936 1932 1947 -1935
		mu 0 4 1159 1154 1164 1165
		f 4 -1938 1934 1949 -1937
		mu 0 4 1158 1160 1166 1167
		f 4 -1940 1936 1951 -1939
		mu 0 4 1444 1158 1167 1443
		f 4 -1941 1938 1952 -1930
		mu 0 4 1156 1155 1168 1161
		f 4 -1944 1941 1957 -1943
		mu 0 4 1162 1161 1169 1170
		f 4 -1946 1942 1959 -1945
		mu 0 4 1164 1163 1171 1172
		f 4 -1948 1944 1961 -1947
		mu 0 4 1165 1164 1172 1173
		f 4 -1950 1946 1963 -1949
		mu 0 4 1167 1166 1174 1175
		f 4 -1952 1948 1964 -1951
		mu 0 4 1443 1167 1175 1176
		f 4 -1953 1950 1955 -1942
		mu 0 4 1161 1168 1441 1169
		f 4 -1956 1953 -1923 -1955
		mu 0 4 1169 1441 1442 1178
		f 4 -1958 1954 1923 -1957
		mu 0 4 1170 1169 1178 1179
		f 4 -1960 1956 1919 -1959
		mu 0 4 1172 1171 1180 1181
		f 4 -1962 1958 -1928 -1961
		mu 0 4 1173 1172 1181 1182
		f 4 -1964 1960 1928 -1963
		mu 0 4 1175 1174 1183 1184
		f 4 -1965 1962 1925 -1954
		mu 0 4 1176 1175 1184 1177
		f 4 -1966 1966 2236 2235
		mu 0 4 1185 1186 1187 1188
		f 4 1979 -1968 1968 1972
		mu 0 4 1189 1190 1191 1192
		f 4 -1973 1971 1969 1978
		mu 0 4 1189 1192 1193 1194
		f 4 -2242 2243 -1982 1980
		mu 0 4 1195 1196 1197 1198
		f 4 -1989 -1986 1983 -1988
		mu 0 4 1199 1200 1201 1202
		f 4 -1994 -1991 -1993 1988
		mu 0 4 1199 1203 1204 1200
		f 4 -1970 1970 -1996 1994
		mu 0 4 1194 1193 1205 1206
		f 4 -1999 -2000 -1990 1990
		mu 0 4 1203 1207 1208 1204
		f 4 2005 2006 2007 2008
		mu 0 4 1209 1210 1211 1212
		f 4 2009 2010 2011 2012
		mu 0 4 1213 1214 1215 1216
		f 4 2013 2014 2015 2016
		mu 0 4 1217 1218 1219 1220
		f 4 2017 2018 2284 2283
		mu 0 4 1210 1217 1221 1222
		f 4 -2012 2021 2022 2023
		mu 0 4 1216 1215 1223 1224
		f 4 2024 2025 -2016 2026
		mu 0 4 1225 1226 1220 1219
		f 4 -2025 2027 2028 2029
		mu 0 4 1226 1225 1227 1228
		f 4 2030 2031 2032 2033
		mu 0 4 1229 1230 1231 1232
		f 4 2034 2035 2276 2275
		mu 0 4 1228 1233 1234 1235
		f 4 -2037 2038 2232 2231
		mu 0 4 1236 1237 1238 1239
		f 4 -2020 2041 2240 2239
		mu 0 4 1240 1241 1242 1243
		f 4 -2023 2044 2226 2225
		mu 0 4 1224 1223 1244 1245
		f 4 -2040 2047 2048 2049
		mu 0 4 1246 1247 1248 1249
		f 4 -2046 2050 2051 2052
		mu 0 4 1250 1251 1252 1253
		f 4 -2043 2053 2054 2055
		mu 0 4 1254 1255 1256 1257
		f 4 -2049 2056 2057 2058
		mu 0 4 1249 1248 1258 1259
		f 4 -2052 2059 2060 2061
		mu 0 4 1253 1252 1260 1261;
	setAttr ".fc[1000:1186]"
		f 4 -2055 2062 2063 2064
		mu 0 4 1257 1256 1262 1263
		f 4 -2058 2065 2066 2067
		mu 0 4 1259 1258 1264 1265
		f 4 -2067 2068 2069 2070
		mu 0 4 1265 1264 1266 1267
		f 4 2071 2072 -2070 2073
		mu 0 4 1268 1269 1267 1266
		f 4 -2072 2074 2075 2076
		mu 0 4 1269 1268 1270 1271
		f 4 -2061 2077 2078 2079
		mu 0 4 1261 1260 1272 1273
		f 4 -2079 2080 2081 2082
		mu 0 4 1273 1272 1274 1275
		f 4 -2064 2083 2084 2085
		mu 0 4 1263 1262 1276 1277
		f 4 -2085 2086 2087 2088
		mu 0 4 1277 1276 1278 1279
		f 4 -2082 2089 2090 2091
		mu 0 4 1275 1274 1280 1281
		f 4 2092 2093 -2076 2094
		mu 0 4 1281 1278 1271 1270
		f 4 2095 2096 2097 2098
		mu 0 4 1279 1280 1282 1283
		f 4 2099 2100 2292 2291
		mu 0 4 1284 1285 1286 1287
		f 4 2103 2104 2105 2106
		mu 0 4 1288 1289 1290 1291
		f 4 2107 2108 2109 2110
		mu 0 4 1285 1292 1293 1294
		f 4 -2110 2111 -2008 2112
		mu 0 4 1294 1293 1212 1211
		f 4 -2102 2113 2220 2219
		mu 0 4 1295 1296 1297 1298
		f 4 2116 2117 -2098 2118
		mu 0 4 1299 1300 1283 1282
		f 4 -2117 2119 2120 2121
		mu 0 4 1300 1299 1301 1302
		f 4 -2121 2122 2123 2124
		mu 0 4 1302 1301 1303 1304
		f 4 -2115 2125 2126 2127
		mu 0 4 1305 1306 1307 1308
		f 4 -2127 2128 2129 2130
		mu 0 4 1308 1307 1309 1310
		f 4 -2130 2131 -2124 2132
		mu 0 4 1310 1309 1304 1303
		f 4 2133 -2032 -2028 -2027
		mu 0 4 1311 1231 1312 1313
		f 4 -2030 -2276 2278 2277
		mu 0 4 1226 1228 1235 1314
		f 4 -2074 2136 2137 -2075
		mu 0 4 1268 1315 1316 1270
		f 4 -2034 2000 2274 -2036
		mu 0 4 1229 1232 1317 1318
		f 4 2279 -2026 -2278 2280
		mu 0 4 1319 1220 1226 1314
		f 4 -2135 -2232 2234 -1967
		mu 0 4 1186 1236 1239 1187
		f 4 -2139 1974 2230 -2039
		mu 0 4 1320 1321 1322 1323
		f 4 -2141 -2050 2142 -1969
		mu 0 4 1191 1246 1249 1192
		f 4 -2142 1975 2143 -2048
		mu 0 4 1324 1325 1326 1327
		f 4 2144 -2071 -2073 2145
		mu 0 4 1205 1265 1267 1269
		f 4 2146 1996 -2137 -2069
		mu 0 4 1328 1329 1316 1315
		f 4 1995 -2146 -2077 2147
		mu 0 4 1206 1205 1269 1271
		f 4 -2144 1976 2148 -2057
		mu 0 4 1327 1326 1330 1331
		f 4 -2143 -2059 2149 -1972
		mu 0 4 1192 1249 1259 1193
		f 4 2150 -2236 2238 -2042
		mu 0 4 1241 1185 1188 1242
		f 4 -2019 -2017 -2280 2282
		mu 0 4 1221 1217 1220 1319
		f 5 -2013 2152 2001 -2134 -2015
		mu 0 5 1213 1216 1332 1231 1311
		f 7 -2024 2153 -2194 -2273 -2001 2154 -2153
		mu 0 7 1216 1224 1321 1333 1317 1232 1332
		f 4 -1975 -2154 -2226 2228
		mu 0 4 1322 1321 1224 1245
		f 4 -1976 -2156 -2053 2156
		mu 0 4 1326 1325 1250 1253
		f 4 -1977 -2157 -2062 2157
		mu 0 4 1330 1326 1253 1261
		f 4 -1997 2158 -2083 2159
		mu 0 4 1316 1329 1273 1275
		f 4 -2138 -2160 -2092 -2095
		mu 0 4 1270 1316 1275 1281
		f 4 2160 -2148 -2094 -2087
		mu 0 4 1276 1206 1271 1278
		f 4 2161 -1979 2162 -2063
		mu 0 4 1256 1189 1194 1262
		f 4 -2152 -1980 -2162 -2054
		mu 0 4 1255 1190 1189 1256
		f 4 -2112 -2109 -2107 2163
		mu 0 4 1334 1335 1336 1291
		f 4 2164 2290 -2101 -2111
		mu 0 4 1294 1337 1286 1285
		f 4 -2119 2166 2167 -2120
		mu 0 4 1299 1282 1338 1339
		f 4 -2105 -2292 2294 -2003
		mu 0 4 1290 1289 1340 1341
		f 4 2288 -2165 -2113 2169
		mu 0 4 1342 1337 1294 1211
		f 4 1981 2218 -2114 -2166
		mu 0 4 1198 1197 1297 1296
		f 4 -2220 2222 -1983 -2169
		mu 0 4 1343 1344 1345 1346
		f 4 1985 2172 -2126 -2171
		mu 0 4 1201 1200 1307 1306
		f 4 -2128 2173 -1987 -2172
		mu 0 4 1347 1348 1349 1350
		f 4 2174 -2122 -2125 2175
		mu 0 4 1208 1300 1302 1304
		f 4 -2123 -2168 -1998 2176
		mu 0 4 1351 1339 1338 1352
		f 4 2177 -2118 -2175 1999
		mu 0 4 1207 1283 1300 1208
		f 4 -2131 2178 -1992 -2174
		mu 0 4 1348 1353 1354 1349
		f 4 1992 2179 -2129 -2173
		mu 0 4 1200 1204 1309 1307
		f 4 -2240 2242 2241 2181
		mu 0 4 1240 1243 1196 1195
		f 4 2286 -2170 -2007 -2284
		mu 0 4 1222 1342 1211 1210
		f 5 -2009 -2164 2004 2182 -2011
		mu 0 5 1214 1334 1291 1355 1215
		f 7 -2183 2003 2002 2293 2214 2183 -2022
		mu 0 7 1215 1355 1290 1341 1356 1346 1223
		f 4 2224 -2045 -2184 1982
		mu 0 4 1345 1244 1223 1346
		f 4 2185 -2051 -2185 1986
		mu 0 4 1349 1252 1251 1350
		f 4 2186 -2060 -2186 1991
		mu 0 4 1354 1260 1252 1349
		f 4 2187 -2081 2188 1997
		mu 0 4 1338 1274 1272 1352
		f 4 -2097 -2090 -2188 -2167
		mu 0 4 1282 1280 1274 1338
		f 4 -2089 -2099 -2178 2189
		mu 0 4 1277 1279 1283 1207
		f 4 -2065 2190 1993 2191
		mu 0 4 1257 1263 1203 1199
		f 4 -2056 -2192 1987 -2181
		mu 0 4 1254 1257 1199 1202
		f 4 -2150 -2068 -2145 -1971
		mu 0 4 1193 1259 1265 1205
		f 4 -2149 1977 -2147 -2066
		mu 0 4 1331 1330 1329 1328
		f 4 -2159 -1978 -2158 -2080
		mu 0 4 1273 1329 1330 1261
		f 4 -2189 -2078 -2187 2192
		mu 0 4 1352 1272 1260 1354
		f 4 -2133 -2177 -2193 -2179
		mu 0 4 1353 1351 1352 1354
		f 4 1989 -2176 -2132 -2180
		mu 0 4 1204 1208 1304 1309
		f 4 -2086 -2190 1998 -2191
		mu 0 4 1263 1277 1207 1203
		f 4 -2163 -1995 -2161 -2084
		mu 0 4 1262 1194 1206 1276
		f 4 -2010 -2014 -2018 -2006
		mu 0 4 1209 1218 1217 1210
		f 3 -2035 -2029 -2031
		mu 0 3 1233 1228 1227
		f 4 -2093 -2091 -2096 -2088
		mu 0 4 1278 1281 1280 1279
		f 3 -2033 -2002 -2155
		mu 0 3 1232 1231 1332
		f 3 -2104 -2108 -2100
		mu 0 3 1284 1292 1285
		f 3 -2005 -2106 -2004
		mu 0 3 1355 1291 1290
		f 4 -2196 2193 2138 -2195
		mu 0 4 1357 1333 1321 1320
		f 4 -2198 2194 2036 2037
		mu 0 4 1358 1359 1237 1236
		f 4 -2200 -2038 2134 2135
		mu 0 4 1360 1358 1236 1186
		f 4 2139 -2202 -2136 1965
		mu 0 4 1185 1361 1360 1186
		f 4 -2203 -2204 -2140 -2151
		mu 0 4 1241 1362 1361 1185
		f 4 -2206 2202 2019 2020
		mu 0 4 1363 1362 1241 1240
		f 4 -2182 -2207 -2208 -2021
		mu 0 4 1240 1195 1364 1363
		f 4 -1981 -2209 -2210 2206
		mu 0 4 1195 1198 1365 1364
		f 4 -2212 2208 2165 -2211
		mu 0 4 1366 1365 1198 1296
		f 4 -2214 2210 2101 2102
		mu 0 4 1367 1366 1296 1295
		f 4 -2216 -2103 2168 -2215
		mu 0 4 1356 1368 1343 1346
		f 4 2216 2246 -2218 -2219
		mu 0 4 1197 1369 1370 1297
		f 4 -2221 2217 2248 2247
		mu 0 4 1298 1297 1370 1371
		f 4 -2223 -2248 2250 -2222
		mu 0 4 1345 1344 1372 1373
		f 4 2252 -2224 -2225 2221
		mu 0 4 1373 1374 1244 1345
		f 4 -2227 2223 2254 2253
		mu 0 4 1245 1244 1374 1013
		f 4 -2228 -2229 -2254 2256
		mu 0 4 1012 1322 1245 1013
		f 4 -2231 2227 2258 -2230
		mu 0 4 1323 1322 1012 1011
		f 4 -2233 2229 2260 2259
		mu 0 4 1239 1238 1010 1009
		f 4 -2235 -2260 2262 -2234
		mu 0 4 1187 1239 1009 1008
		f 4 -2237 2233 2264 2263
		mu 0 4 1188 1187 1008 1007
		f 4 -2239 -2264 2266 -2238
		mu 0 4 1242 1188 1007 1006
		f 4 -2241 2237 2268 2267
		mu 0 4 1243 1242 1006 1005
		f 4 -2243 -2268 2270 2269
		mu 0 4 1196 1243 1005 1004
		f 4 -2244 -2270 2271 -2217
		mu 0 4 1197 1196 1004 1369
		f 4 2244 2170 -2246 -2247
		mu 0 4 1369 1201 1306 1370
		f 4 -2249 2245 2114 2115
		mu 0 4 1371 1370 1306 1305
		f 4 -2251 -2116 2171 -2250
		mu 0 4 1373 1372 1347 1350
		f 4 2184 -2252 -2253 2249
		mu 0 4 1350 1251 1374 1373
		f 4 -2255 2251 2045 2046
		mu 0 4 1013 1374 1251 1250
		f 4 -2256 -2257 -2047 2155
		mu 0 4 1325 1012 1013 1250
		f 4 -2259 2255 2141 -2258
		mu 0 4 1011 1012 1325 1324
		f 4 -2261 2257 2039 2040
		mu 0 4 1009 1010 1247 1246
		f 4 -2263 -2041 2140 -2262
		mu 0 4 1008 1009 1246 1191
		f 4 -2265 2261 1967 1973
		mu 0 4 1007 1008 1191 1190
		f 4 -2267 -1974 2151 -2266
		mu 0 4 1006 1007 1190 1255
		f 4 -2269 2265 2042 2043
		mu 0 4 1005 1006 1255 1254
		f 4 -2271 -2044 2180 1984
		mu 0 4 1004 1005 1254 1202
		f 4 -2272 -1985 -1984 -2245
		mu 0 4 1369 1004 1202 1201
		f 4 -2275 2272 2195 -2274
		mu 0 4 1318 1317 1333 1357
		f 4 -2277 2273 2197 2196
		mu 0 4 1235 1234 1359 1358
		f 4 -2279 -2197 2199 2198
		mu 0 4 1314 1235 1358 1360
		f 4 2200 -2281 -2199 2201
		mu 0 4 1361 1319 1314 1360
		f 4 -2282 -2283 -2201 2203
		mu 0 4 1362 1221 1319 1361
		f 4 -2285 2281 2205 2204
		mu 0 4 1222 1221 1362 1363
		f 4 2207 -2286 -2287 -2205
		mu 0 4 1363 1364 1342 1222
		f 4 2209 -2288 -2289 2285
		mu 0 4 1364 1365 1337 1342
		f 4 -2291 2287 2211 -2290
		mu 0 4 1286 1337 1365 1366
		f 4 -2293 2289 2213 2212
		mu 0 4 1287 1286 1366 1367
		f 4 -2295 -2213 2215 -2294
		mu 0 4 1341 1340 1368 1356
		f 4 -2307 2305 -2305 -2304
		mu 0 4 1003 1002 1001 1000
		f 4 2310 2309 -2309 -2308
		mu 0 4 999 998 997 996
		f 4 2308 2313 -2313 -2312
		mu 0 4 996 997 995 994
		f 4 -2314 -2310 -2316 -2315
		mu 0 4 993 992 991 990
		f 4 2311 -2318 2316 2307
		mu 0 4 996 994 989 999
		f 4 2315 2319 -2306 -2319
		mu 0 4 990 991 1001 1002
		f 4 -2311 2320 2304 -2320
		mu 0 4 998 999 1000 1001
		f 4 -2317 -2322 2303 -2321
		mu 0 4 999 989 1003 1000
		f 4 2325 2324 -2324 -2323
		mu 0 4 988 987 986 985
		f 4 2328 -2328 -2327 -2325
		mu 0 4 987 984 983 986
		f 4 -2331 2329 2323 2326
		mu 0 4 982 981 980 979
		f 4 -2326 -2333 -2332 -2329
		mu 0 4 987 988 978 984
		f 3 2332 2334 -2334
		mu 0 3 978 988 977
		f 4 2322 2336 -2336 -2335
		mu 0 4 988 985 976 977
		f 3 -2330 -2338 -2337
		mu 0 3 980 981 976
		f 4 -2341 2314 -2340 -2339
		mu 0 4 975 993 990 974
		f 4 2339 2318 -2343 -2342
		mu 0 4 974 990 1002 976
		f 4 2335 2342 2306 -2344
		mu 0 4 977 976 1002 1003
		f 4 -2346 2344 2343 2321
		mu 0 4 989 973 977 1003
		f 4 2347 2346 2345 2317
		mu 0 4 994 972 973 989
		f 4 2331 -2350 -2347 -2349
		mu 0 4 984 978 973 972
		f 3 2349 2333 -2345
		mu 0 3 973 978 977
		f 3 -2351 2341 2337
		mu 0 3 981 974 976
		f 4 2338 2350 2330 2351
		mu 0 4 975 974 981 982
		f 4 2354 -2354 -2353 2340
		mu 0 4 975 971 970 993
		f 4 2357 -2357 -2356 -2348
		mu 0 4 994 969 968 972
		f 4 2352 -2359 -2358 2312
		mu 0 4 995 967 969 994
		f 4 2355 -2361 -2360 2348
		mu 0 4 972 1440 966 984
		f 4 2362 -2362 -2355 -2352
		mu 0 4 982 965 971 975
		f 4 2359 -2364 -2363 2327
		mu 0 4 984 966 964 983
		f 4 2366 -2366 -2365 2358
		mu 0 4 967 963 962 969
		f 4 2368 -2368 -2367 2353
		mu 0 4 971 961 960 970
		f 4 2370 -2370 -2369 2361
		mu 0 4 965 959 961 971
		f 4 2372 -2372 -2371 2363
		mu 0 4 966 958 957 964
		f 4 2374 -2374 -2373 2360
		mu 0 4 1440 1439 958 966
		f 4 2364 -2376 -2375 2356
		mu 0 4 969 962 956 968
		f 4 2378 -2378 -2377 2365
		mu 0 4 963 955 954 962
		f 4 2380 -2380 -2379 2367
		mu 0 4 961 953 952 960
		f 4 2382 -2382 -2381 2369
		mu 0 4 959 951 953 961
		f 4 2384 -2384 -2383 2371
		mu 0 4 958 950 949 957
		f 4 2386 -2386 -2385 2373
		mu 0 4 1439 1437 950 958
		f 4 2376 -2388 -2387 2375
		mu 0 4 962 954 948 956
		f 4 2390 2389 -2389 2387
		mu 0 4 954 947 946 948
		f 4 2392 -2392 -2391 2377
		mu 0 4 955 945 947 954
		f 4 2394 -2394 -2393 2379
		mu 0 4 953 944 943 952
		f 4 2396 2395 -2395 2381
		mu 0 4 951 942 944 953
		f 4 2398 -2398 -2397 2383
		mu 0 4 950 941 940 949
		f 4 2388 -2400 -2399 2385
		mu 0 4 1437 1438 941 950;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dfgi" 22;
	setAttr ".vcs" 2;
createNode mesh -n "Hunter_GEOShapeDeformed" -p "Spider_Hunter_MOD_MASTER:Hunter_GEO";
	rename -uid "A4D298EB-469C-0510-D108-668D49198368";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53419715166091919 0.68254929780960083 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dfgi" 22;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A4A69AD0-46CC-8858-D8D5-38AE052C108B";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "CAAE9B74-4AA1-4E26-350F-968DA71B2529";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "23E98834-4E52-C36F-223B-7FAC6E72E4C7";
createNode displayLayerManager -n "layerManager";
	rename -uid "D474A28C-4E7A-4585-7DA5-E5B99032F364";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "3390ABD2-4FE0-5563-D009-698D46F90824";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E41260D1-4739-072E-DABA-7E9601AC2FF0";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B9C205B9-4C31-0B79-1E17-D39BD42EE9FD";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "384550D8-416A-DC55-94C4-A6A11D6AC197";
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
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1206\n            -height 734\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1206\\n    -height 734\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1206\\n    -height 734\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "186C8B27-46E0-0FDD-2553-4097F95AB3C1";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Geometry";
	rename -uid "FD725B52-4F1D-B2E2-90AD-A188F48A5363";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "14995441-4D63-7784-9F51-06BB7FDFDF53";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "D75FD1AD-4219-E563-F7DB-A281EE4F55A0";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 30;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "8AFA90EB-48BB-D2BF-9BC5-5F9C2AADB6A2";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "E6ECEE84-4E21-19E9-468E-31BF9E705F19";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "E0B7A4F0-4984-7558-D539-D295D525DDCD";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "FACFE1CF-4548-D933-02D3-BDB28FD710FC";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "D5CD06A8-4CF0-C429-0A31-B9B2F0BDF492";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle13";
	rename -uid "29449880-43E5-B2EF-990D-63B132567D3A";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "2A1CCB59-4D6F-E3C2-8BEF-628C11BD280F";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "1C7FBB10-48CE-0532-F254-8B903FF7EC10";
	setAttr ".nr" -type "double3" 0 1 1 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle20";
	rename -uid "6B1552E6-4255-0957-7AEB-618F6F82A41E";
	setAttr ".nr" -type "double3" 0 1 1 ;
	setAttr ".r" 5;
createNode polyCube -n "polyCube1";
	rename -uid "D8C43D3C-40C5-6E0F-D7E3-D088C993AC25";
	setAttr ".w" 2;
	setAttr ".h" 2;
	setAttr ".d" 2;
	setAttr ".cuv" 4;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "7C369903-484A-D444-3358-59BA101F156C";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 12.070297902551081 135.70625106947244 19.309896992968149 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "AA05A0DC-4972-2102-69F0-BF9F5A0E13EA";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -396.53943092515902 -479.47923087005842 ;
	setAttr ".tgi[0].vh" -type "double2" 460.59705276217505 214.55496850809013 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 125.94903564453125;
	setAttr ".tgi[0].ni[0].y" 196.11245727539062;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -342.59713745117188;
	setAttr ".tgi[0].ni[1].y" 174.98216247558594;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" 142.08937072753906;
	setAttr ".tgi[0].ni[2].y" 130.36251831054688;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 174.37002563476562;
	setAttr ".tgi[0].ni[3].y" 78.204429626464844;
	setAttr ".tgi[0].ni[3].nvs" 18306;
createNode skinCluster -n "skinCluster1";
	rename -uid "E2E446A2-4AF8-3909-D25B-A0BDEB187CF9";
	setAttr -s 1227 ".wl";
	setAttr ".wl[0:349].w"
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
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
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.70399999618530273 20 0.29600000381469727
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.19999998807907104 20 0.80000001192092896
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.70399999618530273 20 0.29600000381469727
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.19999998807907104 20 0.80000001192092896
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.68799999356269836 20 0.31200000643730164
		2 3 0.67199999094009399 20 0.32800000905990601
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
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
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.7199999988079071 20 0.2800000011920929
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
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.7199999988079071 20 0.2800000011920929
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.19999998807907104 20 0.80000001192092896
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
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
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.19999998807907104 20 0.80000001192092896
		2 3 0.67199999094009399 20 0.32800000905990601
		2 3 0.68799999356269836 20 0.31200000643730164
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 3 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
		1 20 1
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
		3 14 0.00020799340563826263 15 0.99819197951001115 17 0.0016000270843505862
		3 14 0.00022384339536074549 15 0.99817612952028867 17 0.0016000270843505857
		3 14 0.00080441072350367904 15 0.97839559480780736 17 0.020799994468688965
		3 14 0.0008426206186413765 15 0.97835738491266966 17 0.020799994468688965
		3 14 0.00080105476081371307 15 0.97839895077049732 17 0.020799994468688965
		3 14 0.00079245248343795538 15 0.97840755304787308 17 0.020799994468688965
		4 14 0.0019642754923552275 15 0.88443570886738598 17 0.064914971590042114 
		18 0.048685044050216675
		4 14 0.001987123629078269 15 0.88441286073066294 17 0.065116770565509796 
		18 0.048483245074748993
		4 14 0.0019691043999046087 15 0.8844308799598366 17 0.064770624041557312 
		18 0.048829391598701477
		4 14 0.0019033533753827214 15 0.88449663098435849 17 0.064695924520492554 
		18 0.048904091119766235
		4 14 0.0035848675761371851 15 0.65241515054367483 17 0.073339194059371948 
		18 0.27066078782081604
		4 14 0.0037051418330520391 15 0.65229487628675997 17 0.073430240154266357 
		18 0.27056974172592163
		4 14 0.0036068609915673733 15 0.65239315712824464 17 0.073210768401622772 
		18 0.27078921347856522
		4 14 0.0035537101794034243 15 0.65244630794040859 17 0.072990834712982178 
		18 0.27100914716720581
		4 14 0.0037805140018463135 15 0.015419485047459602 17 0.027300912886857986 
		18 0.9534990880638361
		4 14 0.0043849735520780087 15 0.014815025497227907 17 0.027838146314024925 
		18 0.95296185463666916
		4 14 0.0053312843665480614 15 0.10866871569305658 17 0.050870325416326523 
		18 0.83512967452406883
		4 14 0.0058548492379486561 15 0.10814515082165599 17 0.051305487751960754 
		18 0.8346945121884346
		4 14 0.0055553368292748928 15 0.1080446639098227 17 0.050833780318498611 
		18 0.83556621894240379
		4 14 0.005259800236672163 15 0.10834020050242543 17 0.050455208867788315 
		18 0.83594479039311409
		4 14 0.005090727936476469 15 0.33890925394371152 17 0.067996002733707428 
		18 0.58800401538610458
		4 14 0.0052595124579966068 15 0.33874046942219138 17 0.068300701677799225 
		18 0.58769931644201279
		4 14 0.0051649049855768681 15 0.33883507689461112 17 0.067889392375946045 
		18 0.58811062574386597
		4 14 0.0049734138883650303 15 0.33902656799182296 17 0.06775219738483429 
		18 0.58824782073497772
		2 14 0.0023419498465955257 15 0.99765805015340447
		2 14 0.0065968711860477924 15 0.99340312881395221
		2 14 0.0017409758875146508 15 0.99825902411248535
		2 14 0.00054658215958625078 15 0.99945341784041375
		2 14 0.024619366973638535 15 0.97538063302636147
		2 14 0.030935630202293396 15 0.9690643697977066
		2 14 0.0091128507629036903 15 0.99088714923709631
		2 14 0.007084820419549942 15 0.99291517958045006
		2 14 0.031367108225822449 15 0.96863289177417755
		2 14 0.025621417909860611 15 0.97437858209013939
		2 14 0.0075579062104225159 15 0.99244209378957748
		2 14 0.0092963064089417458 15 0.99070369359105825
		2 14 0.0074059762991964817 15 0.99259402370080352
		2 14 0.0027409733738750219 15 0.99725902662612498
		2 14 0.00070590549148619175 15 0.99929409450851381
		2 14 0.002095251576974988 15 0.99790474842302501
		2 14 0.00013472394493874162 15 0.99986527605506126
		2 14 0.00044579332461580634 15 0.99955420667538419
		2 14 8.5538282291963696e-05 15 0.99991446171770804
		2 14 0.00033471977803856134 15 0.99966528022196144
		2 14 0.0021688749548047781 15 0.99783112504519522
		2 14 0.0017487985314801335 15 0.99825120146851987
		2 14 0.0015856341924518347 15 0.99841436580754817
		2 14 0.0020932399202138186 15 0.99790676007978618;
	setAttr ".wl[350:613].w"
		2 14 1.3512771147361491e-05 15 0.99998648722885264
		2 14 5.0709793868009001e-05 15 0.99994929020613199
		2 14 5.0831629778258502e-05 15 0.99994916837022174
		2 14 4.6020344598218799e-05 15 0.99995397965540178
		2 14 5.2854178647976369e-05 15 0.99994714582135202
		2 14 1.5232412806653883e-05 15 0.99998476758719335
		2 14 3.9133414247771725e-05 15 0.99996086658575223
		2 14 4.6005305193830281e-05 15 0.99995399469480617
		2 14 0.0080214804038405418 15 0.99197851959615946
		2 14 0.020388342440128326 15 0.97961165755987167
		2 14 0.018894307315349579 15 0.98110569268465042
		2 14 0.0072905737906694412 15 0.99270942620933056
		2 14 0.084549121558666229 15 0.91545087844133377
		2 14 0.068574011325836182 15 0.93142598867416382
		2 14 0.12927484512329102 15 0.87072515487670898
		2 14 0.11542196571826935 15 0.88457803428173065
		2 14 0.39783942699432373 15 0.60216057300567627
		2 14 0.39095452427864075 15 0.60904547572135925
		2 14 0.0852469801902771 15 0.9147530198097229
		2 14 0.070368364453315735 15 0.92963163554668427
		2 14 0.11653946340084076 15 0.88346053659915924
		2 14 0.13132175803184509 15 0.86867824196815491
		2 14 0.39343070983886719 15 0.60656929016113281
		2 14 0.39907994866371155 15 0.60092005133628845
		2 14 0.073818743228912354 15 0.92618125677108765
		2 14 0.034426514059305191 15 0.96557348594069481
		2 14 0.03566703200340271 15 0.96433296799659729
		2 14 0.076294943690299988 15 0.92370505630970001
		2 14 0.32304897904396057 15 0.67695102095603943
		2 14 0.36165839433670044 15 0.63834160566329956
		2 14 0.57132530212402344 15 0.42867469787597656
		2 14 0.57827383279800415 15 0.42172616720199585
		2 14 0.36053735017776489 15 0.63946264982223511
		2 14 0.32006007432937622 15 0.67993992567062378
		2 14 0.57723784446716309 15 0.42276215553283691
		2 14 0.56883919239044189 15 0.43116080760955811
		2 14 0.59734541177749634 15 0.40265458822250366
		2 14 0.59395390748977661 15 0.40604609251022339
		2 14 0.59626668691635132 15 0.40373331308364868
		2 14 0.5918387770652771 15 0.4081612229347229
		2 14 0.96118354797363281 15 0.038816452026367188
		2 14 0.96112978458404541 15 0.03887021541595459
		2 14 0.98882168531417847 15 0.011178314685821533
		2 14 0.98881155252456665 15 0.01118844747543335
		2 14 0.96094638109207153 15 0.039053618907928467
		2 14 0.96071046590805054 15 0.039289534091949463
		2 14 0.98873591423034668 15 0.01126408576965332
		2 14 0.98865842819213867 15 0.011341571807861328
		2 14 0.96131443977355957 15 0.03868556022644043
		2 14 0.96139931678771973 15 0.038600683212280273
		2 14 0.98879104852676392 15 0.011208951473236084
		2 14 0.98873239755630493 15 0.011267602443695068
		2 14 0.96104490756988525 15 0.038955092430114746
		2 14 0.96115505695343018 15 0.038844943046569824
		2 14 0.98867952823638916 15 0.01132047176361084
		2 14 0.98868250846862793 15 0.01131749153137207
		2 14 0.99999690055847168 15 3.0994415283203125e-06
		2 14 0.99999690055847168 15 3.0994415283203125e-06
		2 14 0.99999988079071045 15 1.1920928955078125e-07
		2 14 0.99999988079071045 15 1.1920928955078125e-07
		2 14 0.99999678134918213 15 3.2186508178710938e-06
		2 14 0.99999678134918213 15 3.2186508178710938e-06
		2 14 0.99999988079071045 15 1.1920928955078125e-07
		2 14 0.99999988079071045 15 1.1920928955078125e-07
		2 14 0.9999966025352478 15 3.3974647521972656e-06
		2 14 0.99999672174453735 15 3.2782554626464844e-06
		2 14 0.99999988079071045 15 1.1920928955078125e-07
		2 14 0.99999988079071045 15 1.1920928955078125e-07
		2 14 0.99999672174453735 15 3.2782554626464844e-06
		2 14 0.9999966025352478 15 3.3974647521972656e-06
		2 14 0.99999988079071045 15 1.1920928955078125e-07
		2 14 0.99999988079071045 15 1.1920928955078125e-07
		2 14 0.99751299619674683 15 0.0024870038032531738
		2 14 0.99748456478118896 15 0.0025154352188110352
		2 14 0.99754154682159424 15 0.0024584531784057617
		2 14 0.99753445386886597 15 0.0024655461311340332
		2 14 0.99751627445220947 15 0.0024837255477905273
		2 14 0.99749290943145752 15 0.0025070905685424805
		2 14 0.99748480319976807 15 0.0025151968002319336
		2 14 0.99747490882873535 15 0.0025250911712646484
		2 14 0.99958646297454834 15 0.00041353702545166016
		2 14 0.99959248304367065 15 0.0004075169563293457
		2 14 0.99960148334503174 15 0.00039851665496826172
		2 14 0.99960142374038696 15 0.00039857625961303711
		2 14 0.99959230422973633 15 0.00040769577026367188
		2 14 0.9995962381362915 15 0.00040376186370849609
		2 14 0.99958837032318115 15 0.00041162967681884766
		2 14 0.99958509206771851 15 0.00041490793228149414
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		2 14 0.99995237588882446 15 4.7624111175537109e-05
		2 14 0.9999539852142334 15 4.6014785766601562e-05
		2 14 0.99995571374893188 15 4.4286251068115234e-05
		2 14 0.99995517730712891 15 4.482269287109375e-05
		2 14 0.9999547004699707 15 4.5299530029296875e-05
		2 14 0.99995404481887817 15 4.5955181121826172e-05
		2 14 0.99995344877243042 15 4.6551227569580078e-05
		2 14 0.99995237588882446 15 4.7624111175537109e-05
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		2 14 0.16118626296520233 15 0.83881373703479767
		2 14 0.19136318564414978 15 0.80863681435585022
		2 14 0.19032713770866394 15 0.80967286229133606
		2 14 0.15870010852813721 15 0.84129989147186279
		2 14 0.042105667293071747 15 0.95789433270692825
		2 14 0.017467577010393143 15 0.98253242298960686
		2 14 0.018546359613537788 15 0.98145364038646221
		2 14 0.044220846146345139 15 0.95577915385365486
		2 14 0.77290636301040649 15 0.22709363698959351
		2 14 0.77101153135299683 15 0.22898846864700317
		2 14 0.77363729476928711 15 0.22636270523071289
		2 14 0.77250558137893677 15 0.22749441862106323
		2 14 0.76575785875320435 15 0.23424214124679565
		2 14 0.76663088798522949 15 0.23336911201477051
		2 14 0.76593303680419922 15 0.23406696319580078
		2 14 0.76396352052688599 15 0.23603647947311401
		2 14 0.89522480964660645 15 0.10477519035339355
		2 14 0.89463359117507935 15 0.10536640882492065
		2 14 0.89562386274337769 15 0.10437613725662231
		2 14 0.89544272422790527 15 0.10455727577209473
		2 14 0.89383095502853394 15 0.10616904497146606
		2 14 0.89385652542114258 15 0.10614347457885742
		2 14 0.89342504739761353 15 0.10657495260238647
		2 14 0.89282888174057007 15 0.10717111825942993
		2 14 2.9128668757039122e-05 15 0.99997087133124296
		2 14 0.00010147403372684494 15 0.99989852596627316
		3 14 0.00024187139933928847 15 0.99775815434986725 17 0.001999974250793457
		2 14 4.8517005780013278e-05 15 0.99995148299421999
		2 14 7.3289920692332089e-05 15 0.99992671007930767
		2 14 2.462931843183469e-05 15 0.99997537068156817
		2 14 5.7240504247602075e-05 15 0.9999427594957524
		3 14 0.00025947726680897176 15 0.99774054848239757 17 0.001999974250793457
		2 14 0.00011688371887430549 15 0.99988311628112569
		2 14 3.1891708204057068e-05 15 0.99996810829179594
		2 14 1.7451027815695852e-05 15 0.9999825489721843
		2 14 4.7553596232319251e-05 15 0.99995244640376768
		2 14 0.00026309312670491636 15 0.99973690687329508
		2 14 0.00036393862683326006 15 0.99963606137316674
		2 14 0.0003819198755081743 15 0.99961808012449183
		2 14 0.00031141462386585772 15 0.99968858537613414
		2 17 0.011307387612760067 18 0.98869261238723993
		2 17 0.0051626646891236305 18 0.99483733531087637
		2 17 0.0021820482797920704 18 0.99781795172020793
		2 17 0.0042287874966859818 18 0.99577121250331402
		2 17 0.040157370269298553 18 0.95984262973070145
		2 17 0.033142417669296265 18 0.96685758233070374
		2 17 0.011555087752640247 18 0.98844491224735975
		2 17 0.014030519872903824 18 0.98596948012709618
		2 17 0.033121392130851746 18 0.96687860786914825
		2 17 0.040151510387659073 18 0.95984848961234093
		2 17 0.014007526449859142 18 0.98599247355014086
		2 17 0.01147771067917347 18 0.98852228932082653
		2 17 0.0051179639995098114 18 0.99488203600049019
		2 17 0.011249060742557049 18 0.98875093925744295
		2 17 0.0040464787743985653 18 0.99595352122560143
		2 17 0.0020439969375729561 18 0.99795600306242704
		2 17 0.14131343364715576 18 0.85868656635284424
		2 17 0.15502329170703888 18 0.84497670829296112
		2 17 0.39835947751998901 18 0.60164052248001099
		2 17 0.40636396408081055 18 0.59363603591918945
		2 17 0.15502329170703888 18 0.84497670829296112
		2 17 0.14131343364715576 18 0.85868656635284424
		2 17 0.40636396408081055 18 0.59363603591918945
		2 17 0.39835947751998901 18 0.60164052248001099
		2 17 0.0022010256070643663 18 0.99779897439293563
		2 17 0.0020566941238939762 18 0.99794330587610602
		2 17 0.0023909090086817741 18 0.99760909099131823
		2 17 0.0026538616511970758 18 0.99734613834880292
		2 17 0.0042703538201749325 18 0.99572964617982507
		2 17 0.0036255537997931242 18 0.99637444620020688
		2 17 0.0038332056719809771 18 0.99616679432801902
		2 17 0.0043373419903218746 18 0.99566265800967813
		4 14 0.0018134471029043198 15 0.00018655275925993919 17 0.011576533317565918 
		18 0.98642346682026982
		2 17 0.0058592269197106361 18 0.99414077308028936
		2 17 0.0044041904620826244 18 0.99559580953791738
		2 17 0.0029722461476922035 18 0.9970277538523078
		2 17 0.0060696634463965893 18 0.99393033655360341
		3 14 0.001999999862164259 17 0.012147274799644947 18 0.98585272533819079
		2 17 0.0031810449436306953 18 0.9968189550563693
		2 17 0.0049971914850175381 18 0.99500280851498246
		2 17 0.027338266372680664 18 0.97266173362731934
		2 17 0.012914512306451797 18 0.9870854876935482
		2 17 0.012902745977044106 18 0.98709725402295589
		2 17 0.027324218302965164 18 0.97267578169703484
		2 17 0.097091063857078552 18 0.90290893614292145
		2 17 0.08095356822013855 18 0.91904643177986145
		2 17 0.080949701368808746 18 0.91905029863119125
		2 17 0.097090117633342743 18 0.90290988236665726
		2 17 0.050075624138116837 18 0.94992437586188316
		2 17 0.091270275413990021 18 0.90872972458600998
		2 17 0.091269955039024353 18 0.90873004496097565
		2 17 0.05007525160908699 18 0.94992474839091301
		2 17 0.36088958382606506 18 0.63911041617393494
		2 17 0.32499364018440247 18 0.67500635981559753
		2 17 0.55568540096282959 18 0.44431459903717041
		2 17 0.5618056058883667 18 0.4381943941116333
		2 17 0.32499364018440247 18 0.67500635981559753
		2 17 0.36088958382606506 18 0.63911041617393494
		2 17 0.5618056058883667 18 0.4381943941116333
		2 17 0.55568540096282959 18 0.44431459903717041
		2 17 0.58728784322738647 18 0.41271215677261353
		2 17 0.58182722330093384 18 0.41817277669906616
		2 17 0.58182722330093384 18 0.41817277669906616
		2 17 0.58728784322738647 18 0.41271215677261353
		2 17 0.94462358951568604 18 0.055376410484313965
		2 17 0.94470047950744629 18 0.055299520492553711
		2 17 0.98064553737640381 18 0.019354462623596191
		2 17 0.98062121868133545 18 0.019378781318664551
		2 17 0.94470047950744629 18 0.055299520492553711
		2 17 0.94462358951568604 18 0.055376410484313965
		2 17 0.98062121868133545 18 0.019378781318664551
		2 17 0.98064553737640381 18 0.019354462623596191
		2 17 0.94569855928421021 18 0.054301440715789795
		2 17 0.94605529308319092 18 0.053944706916809082
		2 17 0.98100584745407104 18 0.018994152545928955
		2 17 0.98090869188308716 18 0.019091308116912842
		2 17 0.94605529308319092 18 0.053944706916809082
		2 17 0.94569855928421021 18 0.054301440715789795
		2 17 0.98090869188308716 18 0.019091308116912842
		2 17 0.98100584745407104 18 0.018994152545928955
		2 17 0.99997121095657349 18 2.8789043426513672e-05
		2 17 0.99997121095657349 18 2.8789043426513672e-05
		2 17 0.99999731779098511 18 2.6822090148925781e-06
		2 17 0.99999731779098511 18 2.6822090148925781e-06
		2 17 0.99997121095657349 18 2.8789043426513672e-05
		2 17 0.99997121095657349 18 2.8789043426513672e-05
		2 17 0.99999731779098511 18 2.6822090148925781e-06
		2 17 0.99999731779098511 18 2.6822090148925781e-06
		2 17 0.99997133016586304 18 2.8669834136962891e-05
		2 17 0.99997138977050781 18 2.86102294921875e-05
		2 17 0.99999737739562988 18 2.6226043701171875e-06
		2 17 0.99999737739562988 18 2.6226043701171875e-06
		2 17 0.99997138977050781 18 2.86102294921875e-05
		2 17 0.99997133016586304 18 2.8669834136962891e-05
		2 17 0.99999737739562988 18 2.6226043701171875e-06
		1 17 0.99999737739562988;
	setAttr ".wl[613:888].w"
		1 18 2.6226043701171875e-06
		2 17 0.99457210302352905 18 0.0054278969764709473
		2 17 0.99455088376998901 18 0.0054491162300109863
		2 17 0.99449318647384644 18 0.0055068135261535645
		2 17 0.99448847770690918 18 0.0055115222930908203
		2 17 0.99448847770690918 18 0.0055115222930908203
		2 17 0.99449318647384644 18 0.0055068135261535645
		2 17 0.99455088376998901 18 0.0054491162300109863
		2 17 0.99457210302352905 18 0.0054278969764709473
		2 17 0.99876570701599121 18 0.0012342929840087891
		2 17 0.99876207113265991 18 0.0012379288673400879
		2 17 0.99875187873840332 18 0.0012481212615966797
		2 17 0.99875146150588989 18 0.0012485384941101074
		2 17 0.99875146150588989 18 0.0012485384941101074
		2 17 0.99875187873840332 18 0.0012481212615966797
		2 17 0.99876207113265991 18 0.0012379288673400879
		2 17 0.99876570701599121 18 0.0012342929840087891
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		2 17 0.9997820258140564 18 0.00021797418594360352
		2 17 0.99978244304656982 18 0.00021755695343017578
		2 17 0.99978065490722656 18 0.0002193450927734375
		2 17 0.99978059530258179 18 0.00021940469741821289
		2 17 0.99978059530258179 18 0.00021940469741821289
		2 17 0.99978065490722656 18 0.0002193450927734375
		2 17 0.99978244304656982 18 0.00021755695343017578
		2 17 0.9997820258140564 18 0.00021797418594360352
		2 17 0.99999988079071045 18 1.1920928955078125e-07
		2 17 0.99999988079071045 18 1.1920928955078125e-07
		2 17 0.99999988079071045 18 1.1920928955078125e-07
		2 17 0.99999988079071045 18 1.1920928955078125e-07
		2 17 0.99999988079071045 18 1.1920928955078125e-07
		2 17 0.99999988079071045 18 1.1920928955078125e-07
		2 17 0.99999988079071045 18 1.1920928955078125e-07
		2 17 0.99999988079071045 18 1.1920928955078125e-07
		2 17 0.2008962482213974 18 0.7991037517786026
		2 17 0.17094989120960236 18 0.82905010879039764
		2 17 0.17095036804676056 18 0.82904963195323944
		2 17 0.20089629292488098 18 0.79910370707511902
		2 17 0.027391742914915085 18 0.97260825708508492
		2 17 0.054934371262788773 18 0.94506562873721123
		2 17 0.054931666702032089 18 0.94506833329796791
		2 17 0.027389449998736382 18 0.97261055000126362
		2 17 0.74953949451446533 18 0.25046050548553467
		2 17 0.752236008644104 18 0.247763991355896
		2 17 0.752236008644104 18 0.247763991355896
		2 17 0.74953949451446533 18 0.25046050548553467
		2 17 0.74006462097167969 18 0.25993537902832031
		2 17 0.7406919002532959 18 0.2593080997467041
		2 17 0.7406919002532959 18 0.2593080997467041
		2 17 0.74006462097167969 18 0.25993537902832031
		2 17 0.87255752086639404 18 0.12744247913360596
		2 17 0.87363570928573608 18 0.12636429071426392
		2 17 0.87363570928573608 18 0.12636429071426392
		2 17 0.87255752086639404 18 0.12744247913360596
		2 17 0.86930668354034424 18 0.13069331645965576
		2 17 0.86921083927154541 18 0.13078916072845459
		2 17 0.86921083927154541 18 0.13078916072845459
		2 17 0.86930668354034424 18 0.13069331645965576
		3 14 0.001999999862164259 17 0.011972676962614059 18 0.98602732317522168
		4 14 0.0037415276747196913 15 0.018758471356704831 17 0.027634682133793831 
		18 0.94986531883478165
		4 14 0.003121635178104043 15 0.0013783646281808615 17 0.020638599991798401 
		18 0.97486140020191669
		2 17 0.0093056326732039452 18 0.99069436732679605
		2 17 0.0048893890343606472 18 0.99511061096563935
		2 17 0.0038625956512987614 18 0.99613740434870124
		2 17 0.010598097927868366 18 0.98940190207213163
		3 14 0.0044999998062849045 17 0.022024909034371376 18 0.97347509115934372
		4 14 0.0051789707504212856 15 0.017321028281003237 17 0.028952687978744507 
		18 0.94854731298983097
		3 14 0.001999999862164259 17 0.012987604364752769 18 0.98501239577308297
		2 17 0.0047332020476460457 18 0.99526679795235395
		2 17 0.0055452077649533749 18 0.99445479223504663
		2 17 0.0020599430426955223 18 0.99794005695730448
		2 17 0.0025890059769153595 18 0.99741099402308464
		2 17 0.0021720139775425196 18 0.99782798602245748
		2 17 0.0019266052404418588 18 0.99807339475955814
		2 17 0.0053962934762239456 18 0.99460370652377605
		2 17 0.0031073426362127066 18 0.99689265736378729
		2 17 0.0030466928146779537 18 0.99695330718532205
		2 17 0.0076455008238554001 18 0.9923544991761446
		2 17 0.021576495841145515 18 0.97842350415885448
		2 17 0.052106071263551712 18 0.94789392873644829
		2 17 0.10546690225601196 18 0.89453309774398804
		2 17 0.17687654495239258 18 0.82312345504760742
		2 17 0.24449591338634491 18 0.75550408661365509
		2 17 0.2484971284866333 18 0.7515028715133667
		2 17 0.2484971284866333 18 0.7515028715133667
		2 17 0.24449591338634491 18 0.75550408661365509
		2 17 0.17687639594078064 18 0.82312360405921936
		2 17 0.10546550899744034 18 0.89453449100255966
		2 17 0.052096612751483917 18 0.94790338724851608
		2 17 0.021534595638513565 18 0.97846540436148643
		2 17 0.0075035290792584419 18 0.99249647092074156
		2 17 0.0026861152146011591 18 0.99731388478539884
		2 17 0.002411585533991456 18 0.99758841446600854
		2 17 0.0044134599156677723 18 0.99558654008433223
		2 14 2.2819705918664113e-05 15 0.99997718029408134
		2 14 0.00013502116780728102 15 0.99986497883219272
		2 14 0.0008715264848433435 15 0.99912847351515666
		2 14 0.0041181249544024467 15 0.99588187504559755
		2 14 0.014680639840662479 15 0.98531936015933752
		2 14 0.040982257574796677 15 0.95901774242520332
		2 14 0.091247066855430603 15 0.9087529331445694
		2 14 0.16155993938446045 15 0.83844006061553955
		2 14 0.22355644404888153 15 0.77644355595111847
		2 14 0.22655177116394043 15 0.77344822883605957
		2 14 0.22777777910232544 15 0.77222222089767456
		2 14 0.225913405418396 15 0.774086594581604
		2 14 0.16478241980075836 15 0.83521758019924164
		2 14 0.094071708619594574 15 0.90592829138040543
		2 14 0.042941763997077942 15 0.95705823600292206
		2 14 0.015806088224053383 15 0.98419391177594662
		2 14 0.0046079945750534534 15 0.99539200542494655
		2 14 0.001047029159963131 15 0.99895297084003687
		2 14 0.00017838920757640153 15 0.9998216107924236
		2 14 3.1979452614905313e-05 15 0.99996802054738509
		2 17 0.0090804193168878555 18 0.99091958068311214
		2 17 0.0046850312501192093 18 0.99531496874988079
		2 17 0.0020143997389823198 18 0.99798560026101768
		2 17 0.0014536805683746934 18 0.99854631943162531
		2 17 0.0032079697120934725 18 0.99679203028790653
		2 17 0.0084126116707921028 18 0.9915873883292079
		2 17 0.019048875197768211 18 0.98095112480223179
		2 17 0.038167335093021393 18 0.96183266490697861
		2 17 0.13628053665161133 18 0.86371946334838867
		2 17 0.24853524565696716 18 0.75146475434303284
		2 17 0.40813127160072327 18 0.59186872839927673
		2 17 0.588767409324646 18 0.411232590675354
		2 17 0.75304228067398071 18 0.24695771932601929
		2 17 0.87397509813308716 18 0.12602490186691284
		2 17 0.94617033004760742 18 0.053829669952392578
		2 17 0.98103702068328857 18 0.018962979316711426
		2 17 0.99457883834838867 18 0.0054211616516113281
		2 17 0.99876672029495239 18 0.0012332797050476074
		2 17 0.99978256225585938 18 0.000217437744140625
		2 17 0.99997138977050781 18 2.86102294921875e-05
		2 17 0.99999737739562988 18 2.6226043701171875e-06
		2 17 0.99999988079071045 18 1.1920928955078125e-07
		1 17 1
		1 17 1
		1 17 1
		2 14 2.142060111509636e-05 15 0.9999785793988849
		2 14 7.5574212132778484e-06 15 0.99999244257878672
		2 14 3.6769888538401574e-05 15 0.9999632301114616
		2 14 0.00026818859623745084 15 0.99973181140376255
		2 14 0.0012521514436230063 15 0.99874784855637699
		2 14 0.0041794539429247379 15 0.99582054605707526
		2 14 0.010815438814461231 15 0.98918456118553877
		2 14 0.024081490933895111 15 0.97591850906610489
		2 14 0.11101852357387543 15 0.88898147642612457
		2 14 0.22676914930343628 15 0.77323085069656372
		2 14 0.39964377880096436 15 0.60035622119903564
		2 14 0.59768205881118774 15 0.40231794118881226
		2 14 0.77364599704742432 15 0.22635400295257568
		2 14 0.89548301696777344 15 0.10451698303222656
		2 14 0.96122628450393677 15 0.038773715496063232
		2 14 0.98868483304977417 15 0.01131516695022583
		2 14 0.99747312068939209 15 0.0025268793106079102
		2 14 0.99958258867263794 15 0.00041741132736206055
		2 14 0.99995207786560059 15 4.7922134399414062e-05
		2 14 0.99999648332595825 15 3.5166740417480469e-06
		2 14 0.99999988079071045 15 1.1920928955078125e-07
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		2 14 0.96083253622055054 15 0.039167463779449463
		2 14 0.98865741491317749 15 0.01134258508682251
		2 14 0.99748754501342773 15 0.0025124549865722656
		2 14 0.99959069490432739 15 0.00040930509567260742
		2 14 0.99995386600494385 15 4.6133995056152344e-05
		2 14 0.99999678134918213 15 3.2186508178710938e-06
		2 14 0.99999988079071045 15 1.1920928955078125e-07
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		1 14 1
		2 14 0.99999988079071045 15 1.1920928955078125e-07
		2 14 0.99999690055847168 15 3.0994415283203125e-06
		2 14 0.99995487928390503 15 4.5120716094970703e-05
		2 14 0.99959999322891235 15 0.00040000677108764648
		2 14 0.99753153324127197 15 0.0024684667587280273
		2 14 0.98883306980133057 15 0.011166930198669434
		2 14 0.96132242679595947 15 0.038677573204040527
		2 14 0.89473974704742432 15 0.10526025295257568
		2 14 0.76941174268722534 15 0.23058825731277466
		2 14 0.58482646942138672 15 0.41517353057861328
		2 14 0.37312078475952148 15 0.62687921524047852
		2 14 0.20542638003826141 15 0.79457361996173859
		2 14 0.10459096729755402 15 0.89540903270244598
		2 14 0.063043177127838135 15 0.93695682287216187
		2 14 0.05145234614610672 15 0.94854765385389328
		2 14 0.061817172914743423 15 0.93818282708525658
		2 14 0.10223400592803955 15 0.89776599407196045
		2 14 0.20227712392807007 15 0.79772287607192993
		2 14 0.36989828944206238 15 0.63010171055793762
		2 14 0.58200186491012573 15 0.41799813508987427
		2 14 0.76745223999023438 15 0.23254776000976562
		2 14 0.89361429214477539 15 0.10638570785522461
		2 17 0.94515645503997803 18 0.054843544960021973
		2 17 0.98076361417770386 18 0.019236385822296143
		2 17 0.99451857805252075 18 0.005481421947479248
		2 17 0.9987562894821167 18 0.0012437105178833008
		2 17 0.99978119134902954 18 0.00021880865097045898
		2 17 0.99997127056121826 18 2.8729438781738281e-05
		2 17 0.99999731779098511 18 2.6822090148925781e-06
		2 17 0.99999988079071045 18 1.1920928955078125e-07
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		1 17 1
		2 17 0.99999988079071045 18 1.1920928955078125e-07
		2 17 0.99999731779098511 18 2.6822090148925781e-06
		2 17 0.99997127056121826 18 2.8729438781738281e-05
		2 17 0.99978119134902954 18 0.00021880865097045898
		2 17 0.9987562894821167 18 0.0012437105178833008
		2 17 0.99451857805252075 18 0.005481421947479248
		2 17 0.98076361417770386 18 0.019236385822296143
		2 17 0.94515645503997803 18 0.054843544960021973
		2 17 0.87083768844604492 18 0.12916231155395508
		2 17 0.74480438232421875 18 0.25519561767578125
		2 17 0.57042145729064941 18 0.42957854270935059
		2 17 0.37551891803741455 18 0.62448108196258545
		2 17 0.22049659490585327 18 0.77950340509414673
		2 17 0.12478542327880859 18 0.87521457672119141
		2 17 0.083870649337768555 18 0.91612935066223145
		2 17 0.072406917810440063 18 0.92759308218955994
		2 17 0.083870679140090942 18 0.91612932085990906
		2 17 0.12478545308113098 18 0.87521454691886902
		2 17 0.22049659490585327 18 0.77950340509414673
		2 17 0.37551891803741455 18 0.62448108196258545
		2 17 0.57042145729064941 18 0.42957854270935059
		2 17 0.74480438232421875 18 0.25519561767578125
		2 17 0.87083768844604492 18 0.12916231155395508
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1;
	setAttr ".wl[889:1220].w"
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		2 1 0.59400999546051025 2 0.40599000453948975
		2 1 0.11510808765888214 2 0.88489191234111786
		2 1 0.01490639615803957 2 0.98509360384196043
		2 1 0.046113923192024231 2 0.95388607680797577
		2 1 0.1151261180639267 2 0.8848738819360733
		2 1 0.59423559904098511 2 0.40576440095901489
		2 1 0.59534966945648193 2 0.40465033054351807
		2 1 0.11511256545782089 2 0.88488743454217911
		2 1 0.046101901680231094 2 0.95389809831976891
		2 1 0.014901905320584774 2 0.98509809467941523
		2 1 0.0007627203012816608 2 0.99923727969871834
		2 1 0.014906398020684719 2 0.98509360197931528
		2 1 0.046117343008518219 2 0.95388265699148178
		2 1 0.59400999546051025 2 0.40599000453948975
		2 1 0.11510808765888214 2 0.88489191234111786
		2 1 0.01490639615803957 2 0.98509360384196043
		2 1 0.046113923192024231 2 0.95388607680797577
		2 1 0.1151261180639267 2 0.8848738819360733
		2 1 0.59423559904098511 2 0.40576440095901489
		2 1 0.59534966945648193 2 0.40465033054351807
		2 1 0.11511256545782089 2 0.88488743454217911
		2 1 0.046101901680231094 2 0.95389809831976891
		2 1 0.014901905320584774 2 0.98509809467941523
		2 1 0.0007627203012816608 2 0.99923727969871834
		2 1 0.014906398020684719 2 0.98509360197931528
		2 1 0.046117343008518219 2 0.95388265699148178
		2 1 0.0038095549680292606 2 0.99619044503197074
		2 1 0.0038139752577990294 2 0.99618602474220097
		2 1 0.0038087978027760983 2 0.9961912021972239
		2 1 0.0038087978027760983 2 0.9961912021972239
		2 1 0.0038139752577990294 2 0.99618602474220097
		2 1 0.0038095549680292606 2 0.99619044503197074
		2 1 0.91907960176467896 2 0.080920398235321045
		2 1 0.91907960176467896 2 0.080920398235321045
		2 1 0.93039381504058838 2 0.069606184959411621
		2 1 0.93039381504058838 2 0.069606184959411621
		2 1 0.82727509737014771 2 0.17272490262985229
		2 1 0.82727509737014771 2 0.17272490262985229
		2 1 0.96669018268585205 2 0.033309817314147949
		2 1 0.94644850492477417 2 0.05355149507522583
		2 1 0.94174492359161377 2 0.05825507640838623
		2 1 0.94556647539138794 2 0.054433524608612061
		2 1 0.96284019947052002 2 0.03715980052947998
		2 1 0.94122481346130371 2 0.058775186538696289
		2 1 0.95582377910614014 2 0.044176220893859863
		2 1 0.59330230951309204 2 0.40669769048690796
		2 1 0.5926472544670105 2 0.4073527455329895
		2 1 0.59418076276779175 2 0.40581923723220825
		2 1 0.59418076276779175 2 0.40581923723220825
		2 1 0.61424589157104492 2 0.38575410842895508
		2 1 0.61424589157104492 2 0.38575410842895508
		2 1 0.1150684654712677 2 0.8849315345287323
		2 1 0.11503643542528152 2 0.88496356457471848
		2 1 0.11532498151063919 2 0.88467501848936081
		2 1 0.11532498151063919 2 0.88467501848936081
		2 1 0.1151302307844162 2 0.8848697692155838
		2 1 0.1151302307844162 2 0.8848697692155838
		2 1 0.046104166656732559 2 0.95389583334326744
		2 1 0.046092953532934189 2 0.95390704646706581
		2 1 0.046138253062963486 2 0.95386174693703651
		2 1 0.046138253062963486 2 0.95386174693703651
		2 1 0.046117968857288361 2 0.95388203114271164
		2 1 0.046117968857288361 2 0.95388203114271164
		2 1 0.01490204781293869 2 0.98509795218706131
		2 1 0.014906659722328186 2 0.98509334027767181
		2 1 0.0038338042795658112 2 0.99616619572043419
		2 1 0.0038133917842060328 2 0.99618660821579397
		2 1 0.00026100478135049343 2 0.99973899521864951
		2 1 0.00078865315299481153 2 0.99921134684700519
		2 1 0.00078860705252736807 2 0.99921139294747263
		2 1 0.0009633044246584177 2 0.99903669557534158
		2 1 0.014906972646713257 2 0.98509302735328674
		2 1 0.014906972646713257 2 0.98509302735328674
		2 1 0.0038089482113718987 2 0.9961910517886281
		2 1 0.0038089482113718987 2 0.9961910517886281
		2 1 0.014906367287039757 2 0.98509363271296024
		2 1 0.014906367287039757 2 0.98509363271296024
		2 1 0.0038090955931693316 2 0.99619090440683067
		2 1 0.0038090955931693316 2 0.99619090440683067
		2 1 0.00076007546158507466 2 0.99923992453841493
		2 1 0.00076007546158507466 2 0.99923992453841493
		2 1 0.0007600959506817162 2 0.99923990404931828
		2 1 0.00021842430578544736 2 0.99978157569421455
		2 1 0.00021842430578544736 2 0.99978157569421455
		2 1 0.0007600959506817162 2 0.99923990404931828
		2 1 0.00022257598175201565 2 0.99977742401824798
		2 1 0.00076279323548078537 2 0.99923720676451921
		2 1 0.93151563405990601 2 0.068484365940093994
		2 1 0.95224100351333618 2 0.047758996486663818
		2 1 0.91496938467025757 2 0.085030615329742432
		2 1 0.94174492359161377 2 0.05825507640838623
		2 1 0.96284019947052002 2 0.03715980052947998
		2 1 0.94556647539138794 2 0.054433524608612061
		2 1 0.91496938467025757 2 0.085030615329742432
		2 1 0.95224100351333618 2 0.047758996486663818
		2 1 0.93151563405990601 2 0.068484365940093994
		2 1 0.96669018268585205 2 0.033309817314147949
		2 1 0.94644850492477417 2 0.05355149507522583
		2 1 0.94122481346130371 2 0.058775186538696289
		2 1 0.95582377910614014 2 0.044176220893859863
		2 1 0.5926472544670105 2 0.4073527455329895
		2 1 0.59330230951309204 2 0.40669769048690796
		2 1 0.00026100478135049343 2 0.99973899521864951
		2 1 0.00078865315299481153 2 0.99921134684700519
		2 1 0.0009633044246584177 2 0.99903669557534158
		2 1 0.00078860705252736807 2 0.99921139294747263
		2 1 0.00022257598175201565 2 0.99977742401824798
		2 1 0.00076279323548078537 2 0.99923720676451921
		2 1 0.11503643542528152 2 0.88496356457471848
		2 1 0.1150684654712677 2 0.8849315345287323
		2 1 0.046092953532934189 2 0.95390704646706581
		2 1 0.046104166656732559 2 0.95389583334326744
		2 1 0.014906659722328186 2 0.98509334027767181
		2 1 0.01490204781293869 2 0.98509795218706131
		2 1 0.0038133917842060328 2 0.99618660821579397
		2 1 0.0038338042795658112 2 0.99616619572043419
		2 1 0.75288897752761841 2 0.24711102247238159
		2 1 0.75810188055038452 2 0.24189811944961548
		2 1 0.76122033596038818 2 0.23877966403961182
		2 1 0.76256024837493896 2 0.23743975162506104
		2 1 0.7625497579574585 2 0.2374502420425415
		2 1 0.76193559169769287 2 0.23806440830230713
		2 1 0.76193559169769287 2 0.23806440830230713
		2 1 0.7625497579574585 2 0.2374502420425415
		2 1 0.76256024837493896 2 0.23743975162506104
		2 1 0.76122033596038818 2 0.23877966403961182
		2 1 0.75810188055038452 2 0.24189811944961548
		2 1 0.75288897752761841 2 0.24711102247238159
		2 1 0.40515205264091492 2 0.59484794735908508
		2 1 0.40483933687210083 2 0.59516066312789917
		2 1 0.40470725297927856 2 0.59529274702072144
		2 1 0.40608569979667664 2 0.59391430020332336
		2 1 0.41074103116989136 2 0.58925896883010864
		2 1 0.41074103116989136 2 0.58925896883010864
		2 1 0.40608569979667664 2 0.59391430020332336
		2 1 0.40470725297927856 2 0.59529274702072144
		2 1 0.40483933687210083 2 0.59516066312789917
		2 1 0.40515205264091492 2 0.59484794735908508
		2 1 0.40530073642730713 2 0.59469926357269287
		2 1 0.40532609820365906 2 0.59467390179634094
		2 1 0.40532609820365906 2 0.59467390179634094
		2 1 0.40530073642730713 2 0.59469926357269287
		2 1 0.23607632517814636 2 0.76392367482185364
		2 1 0.2359527200460434 2 0.7640472799539566
		2 1 0.23589128255844116 2 0.76410871744155884
		2 1 0.23628263175487518 2 0.76371736824512482
		2 1 0.23734205961227417 2 0.76265794038772583
		2 1 0.23734205961227417 2 0.76265794038772583
		2 1 0.23628263175487518 2 0.76371736824512482
		2 1 0.23589128255844116 2 0.76410871744155884
		2 1 0.2359527200460434 2 0.7640472799539566
		2 1 0.23607632517814636 2 0.76392367482185364
		2 1 0.23613740503787994 2 0.76386259496212006
		2 1 0.23615285754203796 2 0.76384714245796204
		2 1 0.23615285754203796 2 0.76384714245796204
		2 1 0.23613740503787994 2 0.76386259496212006
		2 1 0.86838012933731079 2 0.13161987066268921
		2 1 0.8765413761138916 2 0.1234586238861084
		2 1 0.88072454929351807 2 0.11927545070648193
		2 1 0.88199788331985474 2 0.11800211668014526
		2 1 0.88053464889526367 2 0.11946535110473633
		2 1 0.87760692834854126 2 0.12239307165145874
		2 1 0.87760692834854126 2 0.12239307165145874
		2 1 0.88053464889526367 2 0.11946535110473633
		2 1 0.88199788331985474 2 0.11800211668014526
		2 1 0.88072454929351807 2 0.11927545070648193
		2 1 0.8765413761138916 2 0.1234586238861084
		2 1 0.86838012933731079 2 0.13161987066268921
		1 5 1
		1 5 1
		1 5 1
		1 5 1
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
		1 12 1;
	setAttr ".wl[1221:1226].w"
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1
		1 5 1;
	setAttr -s 21 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 0 -0 1;
	setAttr ".pm[1]" -type "matrix" 9.323929751762834e-16 1.1277967179980626e-16 0.99999999999999978 -0
		 0.45807345184123471 0.88891434498395616 -4.8086794251698757e-16 0 -0.88891434498395605 0.45807345184123471 7.5137226118634731e-16 -0
		 -29.236956029433294 -78.427922952084614 -1.1910851144322206e-14 1;
	setAttr ".pm[2]" -type "matrix" 4.0793976786036642e-16 8.4596752912117362e-16 0.99999999999999978 -0
		 -0.50145273729752937 0.86518503931633894 -4.8086794251698757e-16 0 -0.86518503931633883 -0.50145273729752937 7.5137226118634731e-16 -0
		 43.68797645253423 -77.200214393632379 1.7132639721719169e-15 1;
	setAttr ".pm[3]" -type "matrix" 2.8264319289021299e-17 9.38763571291772e-16 0.99999999999999956 -0
		 -0.81020293573799795 0.58614947148447505 -4.8086794251698757e-16 0 -0.58614947148447494 -0.81020293573799795 7.5137226118634731e-16 -0
		 56.659231568245872 -59.26948757763504 1.9822775817096313e-14 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 7.0725712747199465e-16 -6.4700478941482198e-16 -0
		 -7.584236986732769e-16 1 1.7763568394002505e-15 0 6.4034995872383245e-16 -1.8873791418627657e-15 1 -0
		 3.9339444322427071e-14 -20.917366545641126 58.020999626767704 1;
	setAttr ".pm[5]" -type "matrix" 0 -0 -1 -0 -0.76309787099778392 0.64628294057529456 -0 0
		 0.64628294057529467 0.76309787099778392 0 -0 56.99797225738152 -61.294125778837106 4.4408920985006262e-14 1;
	setAttr ".pm[6]" -type "matrix" 0 -0 -1 -0 -0.39288051020822434 0.91958953055073733 -0 0
		 0.91958953055073756 0.39288051020822429 0 -0 7.9804209407331257 -52.852240993051822 6.5947247662734299e-14 1;
	setAttr ".pm[7]" -type "matrix" 1 8.0322774113279504e-16 -1.9507086177501584e-15 -0
		 -7.7715611723760701e-16 1 1.2767564783189322e-15 0 1.9984014443252837e-15 -1.4432899320127025e-15 1.0000000000000004 -0
		 -1.3092917574909225e-13 -36.666656494140611 -48.701747894287237 1;
	setAttr ".pm[8]" -type "matrix" 0 -0 -1 -0 -0.7813385639701903 0.62410740137655896 -0 0
		 0.62410740137655907 0.7813385639701903 0 -0 37.965382921685233 -61.727033251214493 5.5067062021407758e-14 1;
	setAttr ".pm[9]" -type "matrix" 0 5.6655388976479786e-16 1 -0 -0.85667906720269815 0.51584976089624701 -2.9225668857000974e-16 0
		 -0.5158497608962469 -0.85667906720269826 4.8535485780376746e-16 -0 57.619485029787981 22.15386256685035 -5.8617925419845312e-14 1;
	setAttr ".pm[10]" -type "matrix" -0.25862494645742806 -0.19399816361940914 -0.9462969140719999 0
		 -0.60005830488192735 0.79995626801858888 -1.9595436384634022e-14 0 0.75699614781854796 0.56783332217303795 -0.32329885619626086 -0
		 32.543106432836936 -56.943925531110423 21.21532765042279 1;
	setAttr ".pm[11]" -type "matrix" -5.16813154451579e-16 -1.3202425282755196e-15 -1 -0
		 0.29048160362370018 0.95688057664277226 -1.3402694180639595e-15 -0 0.95688057664277226 -0.29048160362370024 -1.1524609645772698e-16 -0
		 -51.637701244789938 -30.901344786171173 8.6048994064332618 1;
	setAttr ".pm[12]" -type "matrix" -0.25862494645742851 -0.19399816361940836 -0.9462969140719999 0
		 0.60005830488192746 -0.79995626801858888 1.8679502389318271e-14 0 -0.75699614781854807 -0.56783332217303817 0.32329885619626081 -0
		 -32.543121727949895 56.943899762407106 -21.215274582686092 1;
	setAttr ".pm[13]" -type "matrix" -3.8214139587510187e-16 -2.0232203238949752e-15 -1 0
		 -0.2904816036236994 -0.95688057664277248 2.0089813357816455e-15 0 -0.95688057664277248 0.29048160362369951 -2.6179360182990432e-16 -0
		 51.637662187858716 30.90135781001517 -8.6049000000000344 1;
	setAttr ".pm[14]" -type "matrix" -0.22958891823470334 0.44969620518123754 0.86316988575216935 -0
		 0.89333661727141367 0.44937452303076963 0.0034966116364187347 0 -0.38631414272051512 0.77190404915148791 -0.50490149736126866 0
		 45.332070704952059 -90.11691880551507 -0.15766470422906489 1;
	setAttr ".pm[15]" -type "matrix" -0.25111755469106722 -0.26890983538363838 0.92985346918744294 -0
		 -0.72482179931784019 0.68892756415633816 0.0034886357308438459 0 -0.64153981400972027 -0.673102006964441 -0.36791351600724637 0
		 113.78138868720772 -51.422852732530956 -6.4729967332882632 1;
	setAttr ".pm[16]" -type "matrix" -0.25111755469106734 -0.33572273880142506 0.90787125539783964 -0
		 -0.72482179931784041 0.68685541134009476 0.053507038289160369 0 -0.6415398140097206 -0.64460832027247339 -0.41582061093201428 0
		 53.781388687207802 -50.817045246687087 -10.190062917219251 1;
	setAttr ".pm[17]" -type "matrix" -0.23134586011954889 0.44634294220845344 0.86444032237410529 -0
		 -0.89322979944770364 -0.44954695308886899 -0.0069327012865977294 0 0.38551215076072631 -0.77374770753083044 0.50268764328022186 -0
		 -45.352023113170212 90.10604991795779 0.41517935277849272 1;
	setAttr ".pm[18]" -type "matrix" -0.24725228299759325 -0.26930689774341193 0.93077392710598494 -0
		 0.72458679572204776 -0.68914885968569972 -0.0069155375174640692 0 0.64330419244532655 0.67271661494400392 0.36552985098422131 -0
		 -113.73756618299252 51.436184125087962 6.7273364541308727 1;
	setAttr ".pm[19]" -type "matrix" -0.24725228299759325 -0.33618559345902849 0.90876044990034566 -0
		 0.72458679572204765 -0.68682727250021292 -0.05694096254168797 0 0.64330419244532655 0.6443970394877051 0.41341525308308014 -0
		 -53.73746312147675 50.811772245972669 10.444727616583755 1;
	setAttr ".pm[20]" -type "matrix" 2.8264319289021299e-17 9.38763571291772e-16 0.99999999999999956 -0
		 -0.81020293573799795 0.58614947148447505 -4.8086794251698757e-16 0 -0.58614947148447494 -0.81020293573799795 7.5137226118634731e-16 -0
		 20.581284077305082 -59.269487577635061 1.461041350196525e-14 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 21 ".ma";
	setAttr -s 21 ".dpf[0:20]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4;
	setAttr -s 21 ".lw";
	setAttr -s 21 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 21 ".ifcl";
	setAttr -s 21 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "E08FFACB-4307-9812-4F18-309EEE324170";
createNode dagPose -n "bindPose1";
	rename -uid "7E17B836-40D1-0D2B-8C56-87B9BD5FC923";
	setAttr -s 21 ".wm";
	setAttr -s 21 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 1.6653345369377346e-16 3.1918911957973251e-16
		 -2.2204460492503128e-16 0 4.440892098500623e-14 83.108379129137404 9.9365997691713766 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.16664757350171944 0.68718890142812161 0.16664757350171922 0.68718890142812228 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 -1.1102230246251565e-16 0 12.206659767959056
		 0 -1.3624115116494119e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.47990977995625039 0.87731784610957464 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 -3.8857805861880479e-16 0 16.060678770771379
		 4.2632564145606011e-14 -1.8109511844924402e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.20807903135123887 0.97811201644388879 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 37.642950560349782 -3.5527136788005009e-14
		 -2.5364920301828636e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.32165607740081781 -0.62971213095439016 0.3216560774008177 0.62971213095439038 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 5.5511151231257835e-15 0 4.4408920985006255e-14
		 83.10837912913739 9.9365997691713872 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.29737058505537561 -0.64153778933420891 -0.29737058505537561 0.64153778933420891 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 1.1102230246251565e-15 0 26.193961410005343
		 -17.611641736676113 -2.1538326677728037e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.23008552016260808 0.97317041334573162 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 38.360423712793335 1.7763568394002505e-15
		 3.8479988536799316e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.14178369921227138 0.69274626136680317 0.1417836992122711 0.69274626136680462 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 7.8756445809347022e-16 0 20.820469892060103
		 1.4974760242216476 -1.0658141036401496e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.014356857410905212 0.9998969350114455 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 38.721721293256969 2.8421709430404014e-14
		 9.0004936121262552e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.82079557088772181 0.57122205035441243 -1.6181403727385783e-16 2.3251246169407836e-16 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 -7.6327832942979522e-16 -5.5858095926453179e-16
		 1.5959455978986647e-16 0 16.744187064986306 -8.1241726537106587 -17.445441263056438 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.11239384860363102 -0.11924414350425873 0.11050963110424451 0.98027347126666842 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 34.18286587476787 -1.1768364061026659e-14
		 1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.028436845308147406 0.16137809266725348 0.44601861544279237 0.87989536407148683 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 9.1593399531575415e-16 2.7755575615628899e-16
		 3.6082248300317602e-16 0 16.744167764062759 -8.1242131380995062 17.445399999999999 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.11924414350425899 -0.11239384860363065 -0.98027347126666842 0.11050963110424444 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -34.18284919120061 -3.1773066879736689e-06
		 4.0323737405145721e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.028436845308146705 0.16137809266725373 0.44601861544279198 0.87989536407148694 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -0.0038926427578939468 0.0019559624198145832
		 -0.00022298972166164021 0 51.069068908691406 -2.4816271333966177e-14 86.994429409915981 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4555649662632808 0.73894077813525327 0.26051450056911385 0.42256275618614025 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 -1.4337657056661541e-32 1.1687043605936581e-17
		 3.2870647206131535e-16 0 132 2.0537110127407416e-14 5.9114882883861693e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.011151928129499958 -0.075357390803444085 -0.81567845093157365 0.57346801378643608 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 60 3.8175016775804878e-15
		 3.0790393977124364e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.036332313653648439 0 0 0.99933976353619236 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -0.0077178078560043335 0.0038769361532259936
		 -0.00044950124898966205 0 -51.069099999999999 -2.4816299999999999e-14 86.994399999999999 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.42256275618614025 0.26051450056911379 -0.73894077813525327 0.4555649662632808 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 -1.7592686899895601e-22 1.1687183488858061e-17
		 3.287055209370104e-16 0 -132.00010310310992 -5.4068655572336866e-05 7.3633401900294326e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.011151928129501595 -0.075357390803442018 -0.81567845093157365 0.57346801378643619 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 -60.000103061515766 9.7574443572057135e-05
		 -3.5552518149017942e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.036332313653643263 0 0 0.99933976353619258 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 -3.8857805861880479e-16 0 36.077947490940801
		 2.1316282072803006e-14 5.2123623151310729e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr -s 21 ".m";
	setAttr -s 21 ".p";
	setAttr ".bp" yes;
createNode animCurveTU -n "Tail03_CTL_visibility";
	rename -uid "4C8A7BC9-45B1-DC62-B8E1-8E8D99D6ED26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Tail03_CTL_scaleX";
	rename -uid "FD2B9F06-4C00-7B64-6810-B7A06B3B3197";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Tail03_CTL_scaleY";
	rename -uid "4A6FF2B6-4ABA-9F20-9145-959430506B1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Tail03_CTL_scaleZ";
	rename -uid "04EF8436-45BE-9398-FA68-01A3A7C56BAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode objectSet -n "Export";
	rename -uid "A9C55059-43B0-DA5E-D202-E19BEF641165";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
createNode shapeEditorManager -n "Spider_Hunter_MOD_MASTER:shapeEditorManager";
	rename -uid "1859C319-4D1B-675C-D2DD-A39EF8E57390";
createNode poseInterpolatorManager -n "Spider_Hunter_MOD_MASTER:poseInterpolatorManager";
	rename -uid "3C767498-4CFA-3550-A95C-EEBFF1CE8DDD";
createNode renderLayerManager -n "Spider_Hunter_MOD_MASTER:renderLayerManager";
	rename -uid "432A4D4E-4C33-F54E-B035-7A9009DEA5B0";
createNode renderLayer -n "Spider_Hunter_MOD_MASTER:defaultRenderLayer";
	rename -uid "C771FE62-41E0-0D46-A84D-E78B9C7267CA";
	setAttr ".g" yes;
createNode checker -n "Spider_Hunter_MOD_MASTER:checker1";
	rename -uid "97B6E0A4-4CBD-09F3-46DD-3B884A5E5723";
createNode place2dTexture -n "Spider_Hunter_MOD_MASTER:place2dTexture1";
	rename -uid "FCDBF05A-42E2-939F-4AA3-2CB701069233";
	setAttr ".re" -type "float2" 60 60 ;
createNode objectSet -n "Spider_Hunter_MOD_MASTER:textureEditorIsolateSelectSet";
	rename -uid "B0F892B8-4D0F-C794-E243-089A9FEB0281";
	setAttr ".ihi" 0;
	setAttr ".fo" yes;
createNode groupId -n "Spider_Hunter_MOD_MASTER:groupId8";
	rename -uid "A9053553-4C07-A798-1751-148E91C12C1C";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "Spider_Hunter_MOD_MASTER:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "D2C8B55F-4F31-0B2B-B24D-A68D4DD97E9E";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
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
connectAttr "Base_JNT.s" "Tail02_JNT.is";
connectAttr "Tail02_JNT_parentConstraint1.ctx" "Tail02_JNT.tx";
connectAttr "Tail02_JNT_parentConstraint1.cty" "Tail02_JNT.ty";
connectAttr "Tail02_JNT_parentConstraint1.ctz" "Tail02_JNT.tz";
connectAttr "Tail02_JNT_parentConstraint1.crx" "Tail02_JNT.rx";
connectAttr "Tail02_JNT_parentConstraint1.cry" "Tail02_JNT.ry";
connectAttr "Tail02_JNT_parentConstraint1.crz" "Tail02_JNT.rz";
connectAttr "Tail02_JNT.s" "Tail03_JNT.is";
connectAttr "Tail03_JNT_parentConstraint1.ctx" "Tail03_JNT.tx";
connectAttr "Tail03_JNT_parentConstraint1.cty" "Tail03_JNT.ty";
connectAttr "Tail03_JNT_parentConstraint1.ctz" "Tail03_JNT.tz";
connectAttr "Tail03_JNT_parentConstraint1.crx" "Tail03_JNT.rx";
connectAttr "Tail03_JNT_parentConstraint1.cry" "Tail03_JNT.ry";
connectAttr "Tail03_JNT_parentConstraint1.crz" "Tail03_JNT.rz";
connectAttr "Tail03_JNT.s" "Tail04_JNT.is";
connectAttr "Tail04_JNT_parentConstraint1.ctx" "Tail04_JNT.tx";
connectAttr "Tail04_JNT_parentConstraint1.cty" "Tail04_JNT.ty";
connectAttr "Tail04_JNT_parentConstraint1.ctz" "Tail04_JNT.tz";
connectAttr "Tail04_JNT_parentConstraint1.crx" "Tail04_JNT.rx";
connectAttr "Tail04_JNT_parentConstraint1.cry" "Tail04_JNT.ry";
connectAttr "Tail04_JNT_parentConstraint1.crz" "Tail04_JNT.rz";
connectAttr "Tail04_JNT.s" "Tail05_JNT.is";
connectAttr "Tail05_JNT_parentConstraint1.ctx" "Tail05_JNT.tx";
connectAttr "Tail05_JNT_parentConstraint1.cty" "Tail05_JNT.ty";
connectAttr "Tail05_JNT_parentConstraint1.ctz" "Tail05_JNT.tz";
connectAttr "Tail05_JNT_parentConstraint1.crx" "Tail05_JNT.rx";
connectAttr "Tail05_JNT_parentConstraint1.cry" "Tail05_JNT.ry";
connectAttr "Tail05_JNT_parentConstraint1.crz" "Tail05_JNT.rz";
connectAttr "Tail05_JNT.s" "TailEnd_JNT.is";
connectAttr "Tail05_JNT.ro" "Tail05_JNT_parentConstraint1.cro";
connectAttr "Tail05_JNT.pim" "Tail05_JNT_parentConstraint1.cpim";
connectAttr "Tail05_JNT.rp" "Tail05_JNT_parentConstraint1.crp";
connectAttr "Tail05_JNT.rpt" "Tail05_JNT_parentConstraint1.crt";
connectAttr "Tail05_JNT.jo" "Tail05_JNT_parentConstraint1.cjo";
connectAttr "Tail04_CTL.t" "Tail05_JNT_parentConstraint1.tg[0].tt";
connectAttr "Tail04_CTL.rp" "Tail05_JNT_parentConstraint1.tg[0].trp";
connectAttr "Tail04_CTL.rpt" "Tail05_JNT_parentConstraint1.tg[0].trt";
connectAttr "Tail04_CTL.r" "Tail05_JNT_parentConstraint1.tg[0].tr";
connectAttr "Tail04_CTL.ro" "Tail05_JNT_parentConstraint1.tg[0].tro";
connectAttr "Tail04_CTL.s" "Tail05_JNT_parentConstraint1.tg[0].ts";
connectAttr "Tail04_CTL.pm" "Tail05_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Tail05_JNT_parentConstraint1.w0" "Tail05_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Tail04_JNT.ro" "Tail04_JNT_parentConstraint1.cro";
connectAttr "Tail04_JNT.pim" "Tail04_JNT_parentConstraint1.cpim";
connectAttr "Tail04_JNT.rp" "Tail04_JNT_parentConstraint1.crp";
connectAttr "Tail04_JNT.rpt" "Tail04_JNT_parentConstraint1.crt";
connectAttr "Tail04_JNT.jo" "Tail04_JNT_parentConstraint1.cjo";
connectAttr "Tail03_CTL.t" "Tail04_JNT_parentConstraint1.tg[0].tt";
connectAttr "Tail03_CTL.rp" "Tail04_JNT_parentConstraint1.tg[0].trp";
connectAttr "Tail03_CTL.rpt" "Tail04_JNT_parentConstraint1.tg[0].trt";
connectAttr "Tail03_CTL.r" "Tail04_JNT_parentConstraint1.tg[0].tr";
connectAttr "Tail03_CTL.ro" "Tail04_JNT_parentConstraint1.tg[0].tro";
connectAttr "Tail03_CTL.s" "Tail04_JNT_parentConstraint1.tg[0].ts";
connectAttr "Tail03_CTL.pm" "Tail04_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Tail04_JNT_parentConstraint1.w0" "Tail04_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Tail03_JNT.ro" "Tail03_JNT_parentConstraint1.cro";
connectAttr "Tail03_JNT.pim" "Tail03_JNT_parentConstraint1.cpim";
connectAttr "Tail03_JNT.rp" "Tail03_JNT_parentConstraint1.crp";
connectAttr "Tail03_JNT.rpt" "Tail03_JNT_parentConstraint1.crt";
connectAttr "Tail03_JNT.jo" "Tail03_JNT_parentConstraint1.cjo";
connectAttr "Tail02_CTL.t" "Tail03_JNT_parentConstraint1.tg[0].tt";
connectAttr "Tail02_CTL.rp" "Tail03_JNT_parentConstraint1.tg[0].trp";
connectAttr "Tail02_CTL.rpt" "Tail03_JNT_parentConstraint1.tg[0].trt";
connectAttr "Tail02_CTL.r" "Tail03_JNT_parentConstraint1.tg[0].tr";
connectAttr "Tail02_CTL.ro" "Tail03_JNT_parentConstraint1.tg[0].tro";
connectAttr "Tail02_CTL.s" "Tail03_JNT_parentConstraint1.tg[0].ts";
connectAttr "Tail02_CTL.pm" "Tail03_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Tail03_JNT_parentConstraint1.w0" "Tail03_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Tail02_JNT.ro" "Tail02_JNT_parentConstraint1.cro";
connectAttr "Tail02_JNT.pim" "Tail02_JNT_parentConstraint1.cpim";
connectAttr "Tail02_JNT.rp" "Tail02_JNT_parentConstraint1.crp";
connectAttr "Tail02_JNT.rpt" "Tail02_JNT_parentConstraint1.crt";
connectAttr "Tail02_JNT.jo" "Tail02_JNT_parentConstraint1.cjo";
connectAttr "Tail01_CTL.t" "Tail02_JNT_parentConstraint1.tg[0].tt";
connectAttr "Tail01_CTL.rp" "Tail02_JNT_parentConstraint1.tg[0].trp";
connectAttr "Tail01_CTL.rpt" "Tail02_JNT_parentConstraint1.tg[0].trt";
connectAttr "Tail01_CTL.r" "Tail02_JNT_parentConstraint1.tg[0].tr";
connectAttr "Tail01_CTL.ro" "Tail02_JNT_parentConstraint1.tg[0].tro";
connectAttr "Tail01_CTL.s" "Tail02_JNT_parentConstraint1.tg[0].ts";
connectAttr "Tail01_CTL.pm" "Tail02_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Tail02_JNT_parentConstraint1.w0" "Tail02_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "Body_JNT.is";
connectAttr "Body_JNT_parentConstraint1.ctx" "Body_JNT.tx";
connectAttr "Body_JNT_parentConstraint1.cty" "Body_JNT.ty";
connectAttr "Body_JNT_parentConstraint1.ctz" "Body_JNT.tz";
connectAttr "Body_JNT_parentConstraint1.crx" "Body_JNT.rx";
connectAttr "Body_JNT_parentConstraint1.cry" "Body_JNT.ry";
connectAttr "Body_JNT_parentConstraint1.crz" "Body_JNT.rz";
connectAttr "Body_JNT.s" "B_Mandible_JNT.is";
connectAttr "B_Mandible_JNT_parentConstraint1.ctx" "B_Mandible_JNT.tx";
connectAttr "B_Mandible_JNT_parentConstraint1.cty" "B_Mandible_JNT.ty";
connectAttr "B_Mandible_JNT_parentConstraint1.ctz" "B_Mandible_JNT.tz";
connectAttr "B_Mandible_JNT_parentConstraint1.crx" "B_Mandible_JNT.rx";
connectAttr "B_Mandible_JNT_parentConstraint1.cry" "B_Mandible_JNT.ry";
connectAttr "B_Mandible_JNT_parentConstraint1.crz" "B_Mandible_JNT.rz";
connectAttr "B_Mandible_JNT.s" "B_MandibleEnd_JNT.is";
connectAttr "B_Mandible_JNT.ro" "B_Mandible_JNT_parentConstraint1.cro";
connectAttr "B_Mandible_JNT.pim" "B_Mandible_JNT_parentConstraint1.cpim";
connectAttr "B_Mandible_JNT.rp" "B_Mandible_JNT_parentConstraint1.crp";
connectAttr "B_Mandible_JNT.rpt" "B_Mandible_JNT_parentConstraint1.crt";
connectAttr "B_Mandible_JNT.jo" "B_Mandible_JNT_parentConstraint1.cjo";
connectAttr "B_Mandible_CTL.t" "B_Mandible_JNT_parentConstraint1.tg[0].tt";
connectAttr "B_Mandible_CTL.rp" "B_Mandible_JNT_parentConstraint1.tg[0].trp";
connectAttr "B_Mandible_CTL.rpt" "B_Mandible_JNT_parentConstraint1.tg[0].trt";
connectAttr "B_Mandible_CTL.r" "B_Mandible_JNT_parentConstraint1.tg[0].tr";
connectAttr "B_Mandible_CTL.ro" "B_Mandible_JNT_parentConstraint1.tg[0].tro";
connectAttr "B_Mandible_CTL.s" "B_Mandible_JNT_parentConstraint1.tg[0].ts";
connectAttr "B_Mandible_CTL.pm" "B_Mandible_JNT_parentConstraint1.tg[0].tpm";
connectAttr "B_Mandible_JNT_parentConstraint1.w0" "B_Mandible_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Body_JNT.s" "T_Mandible_JNT.is";
connectAttr "T_Mandible_JNT_parentConstraint1.ctx" "T_Mandible_JNT.tx";
connectAttr "T_Mandible_JNT_parentConstraint1.cty" "T_Mandible_JNT.ty";
connectAttr "T_Mandible_JNT_parentConstraint1.ctz" "T_Mandible_JNT.tz";
connectAttr "T_Mandible_JNT_parentConstraint1.crx" "T_Mandible_JNT.rx";
connectAttr "T_Mandible_JNT_parentConstraint1.cry" "T_Mandible_JNT.ry";
connectAttr "T_Mandible_JNT_parentConstraint1.crz" "T_Mandible_JNT.rz";
connectAttr "T_Mandible_JNT.s" "T_MandibleEnd_JNT.is";
connectAttr "T_Mandible_JNT.ro" "T_Mandible_JNT_parentConstraint1.cro";
connectAttr "T_Mandible_JNT.pim" "T_Mandible_JNT_parentConstraint1.cpim";
connectAttr "T_Mandible_JNT.rp" "T_Mandible_JNT_parentConstraint1.crp";
connectAttr "T_Mandible_JNT.rpt" "T_Mandible_JNT_parentConstraint1.crt";
connectAttr "T_Mandible_JNT.jo" "T_Mandible_JNT_parentConstraint1.cjo";
connectAttr "T_Mandible_CTL.t" "T_Mandible_JNT_parentConstraint1.tg[0].tt";
connectAttr "T_Mandible_CTL.rp" "T_Mandible_JNT_parentConstraint1.tg[0].trp";
connectAttr "T_Mandible_CTL.rpt" "T_Mandible_JNT_parentConstraint1.tg[0].trt";
connectAttr "T_Mandible_CTL.r" "T_Mandible_JNT_parentConstraint1.tg[0].tr";
connectAttr "T_Mandible_CTL.ro" "T_Mandible_JNT_parentConstraint1.tg[0].tro";
connectAttr "T_Mandible_CTL.s" "T_Mandible_JNT_parentConstraint1.tg[0].ts";
connectAttr "T_Mandible_CTL.pm" "T_Mandible_JNT_parentConstraint1.tg[0].tpm";
connectAttr "T_Mandible_JNT_parentConstraint1.w0" "T_Mandible_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Body_JNT.s" "L_Mandible_JNT.is";
connectAttr "L_Mandible_JNT_parentConstraint1.ctx" "L_Mandible_JNT.tx";
connectAttr "L_Mandible_JNT_parentConstraint1.cty" "L_Mandible_JNT.ty";
connectAttr "L_Mandible_JNT_parentConstraint1.ctz" "L_Mandible_JNT.tz";
connectAttr "L_Mandible_JNT_parentConstraint1.crx" "L_Mandible_JNT.rx";
connectAttr "L_Mandible_JNT_parentConstraint1.cry" "L_Mandible_JNT.ry";
connectAttr "L_Mandible_JNT_parentConstraint1.crz" "L_Mandible_JNT.rz";
connectAttr "L_Mandible_JNT.s" "L_MandibleEnd_JNT.is";
connectAttr "L_Mandible_JNT.ro" "L_Mandible_JNT_parentConstraint1.cro";
connectAttr "L_Mandible_JNT.pim" "L_Mandible_JNT_parentConstraint1.cpim";
connectAttr "L_Mandible_JNT.rp" "L_Mandible_JNT_parentConstraint1.crp";
connectAttr "L_Mandible_JNT.rpt" "L_Mandible_JNT_parentConstraint1.crt";
connectAttr "L_Mandible_JNT.jo" "L_Mandible_JNT_parentConstraint1.cjo";
connectAttr "L_Mandible_CTL.t" "L_Mandible_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Mandible_CTL.rp" "L_Mandible_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Mandible_CTL.rpt" "L_Mandible_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Mandible_CTL.r" "L_Mandible_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Mandible_CTL.ro" "L_Mandible_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Mandible_CTL.s" "L_Mandible_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Mandible_CTL.pm" "L_Mandible_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Mandible_JNT_parentConstraint1.w0" "L_Mandible_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Body_JNT.s" "R_Mandible_JNT.is";
connectAttr "R_Mandible_JNT_parentConstraint1.ctx" "R_Mandible_JNT.tx";
connectAttr "R_Mandible_JNT_parentConstraint1.cty" "R_Mandible_JNT.ty";
connectAttr "R_Mandible_JNT_parentConstraint1.ctz" "R_Mandible_JNT.tz";
connectAttr "R_Mandible_JNT_parentConstraint1.crx" "R_Mandible_JNT.rx";
connectAttr "R_Mandible_JNT_parentConstraint1.cry" "R_Mandible_JNT.ry";
connectAttr "R_Mandible_JNT_parentConstraint1.crz" "R_Mandible_JNT.rz";
connectAttr "R_Mandible_JNT.s" "R_MandibleEnd_JNT.is";
connectAttr "R_Mandible_JNT.ro" "R_Mandible_JNT_parentConstraint1.cro";
connectAttr "R_Mandible_JNT.pim" "R_Mandible_JNT_parentConstraint1.cpim";
connectAttr "R_Mandible_JNT.rp" "R_Mandible_JNT_parentConstraint1.crp";
connectAttr "R_Mandible_JNT.rpt" "R_Mandible_JNT_parentConstraint1.crt";
connectAttr "R_Mandible_JNT.jo" "R_Mandible_JNT_parentConstraint1.cjo";
connectAttr "R_Mandible_CTL.t" "R_Mandible_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Mandible_CTL.rp" "R_Mandible_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Mandible_CTL.rpt" "R_Mandible_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Mandible_CTL.r" "R_Mandible_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Mandible_CTL.ro" "R_Mandible_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Mandible_CTL.s" "R_Mandible_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Mandible_CTL.pm" "R_Mandible_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Mandible_JNT_parentConstraint1.w0" "R_Mandible_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Body_JNT.ro" "Body_JNT_parentConstraint1.cro";
connectAttr "Body_JNT.pim" "Body_JNT_parentConstraint1.cpim";
connectAttr "Body_JNT.rp" "Body_JNT_parentConstraint1.crp";
connectAttr "Body_JNT.rpt" "Body_JNT_parentConstraint1.crt";
connectAttr "Body_JNT.jo" "Body_JNT_parentConstraint1.cjo";
connectAttr "Body_CTL.t" "Body_JNT_parentConstraint1.tg[0].tt";
connectAttr "Body_CTL.rp" "Body_JNT_parentConstraint1.tg[0].trp";
connectAttr "Body_CTL.rpt" "Body_JNT_parentConstraint1.tg[0].trt";
connectAttr "Body_CTL.r" "Body_JNT_parentConstraint1.tg[0].tr";
connectAttr "Body_CTL.ro" "Body_JNT_parentConstraint1.tg[0].tro";
connectAttr "Body_CTL.s" "Body_JNT_parentConstraint1.tg[0].ts";
connectAttr "Body_CTL.pm" "Body_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Body_JNT_parentConstraint1.w0" "Body_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "L_Foot_JNT.is";
connectAttr "L_Foot_JNT_parentConstraint1.ctx" "L_Foot_JNT.tx";
connectAttr "L_Foot_JNT_parentConstraint1.cty" "L_Foot_JNT.ty";
connectAttr "L_Foot_JNT_parentConstraint1.ctz" "L_Foot_JNT.tz";
connectAttr "L_Foot_JNT_parentConstraint1.crx" "L_Foot_JNT.rx";
connectAttr "L_Foot_JNT_parentConstraint1.cry" "L_Foot_JNT.ry";
connectAttr "L_Foot_JNT_parentConstraint1.crz" "L_Foot_JNT.rz";
connectAttr "L_Foot_JNT.s" "L_Knee_JNT.is";
connectAttr "L_Knee_JNT.s" "L_Thigh_JNT.is";
connectAttr "L_Thigh_JNT.tx" "effector1.tx";
connectAttr "L_Thigh_JNT.ty" "effector1.ty";
connectAttr "L_Thigh_JNT.tz" "effector1.tz";
connectAttr "L_Thigh_JNT.opm" "effector1.opm";
connectAttr "L_Foot_JNT.ro" "L_Foot_JNT_parentConstraint1.cro";
connectAttr "L_Foot_JNT.pim" "L_Foot_JNT_parentConstraint1.cpim";
connectAttr "L_Foot_JNT.rp" "L_Foot_JNT_parentConstraint1.crp";
connectAttr "L_Foot_JNT.rpt" "L_Foot_JNT_parentConstraint1.crt";
connectAttr "L_Foot_JNT.jo" "L_Foot_JNT_parentConstraint1.cjo";
connectAttr "R_Foot_CTL.t" "L_Foot_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Foot_CTL.rp" "L_Foot_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Foot_CTL.rpt" "L_Foot_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Foot_CTL.r" "L_Foot_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Foot_CTL.ro" "L_Foot_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Foot_CTL.s" "L_Foot_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Foot_CTL.pm" "L_Foot_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Foot_JNT_parentConstraint1.w0" "L_Foot_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "R_Foot_JNT.is";
connectAttr "R_Foot_JNT_parentConstraint1.ctx" "R_Foot_JNT.tx";
connectAttr "R_Foot_JNT_parentConstraint1.cty" "R_Foot_JNT.ty";
connectAttr "R_Foot_JNT_parentConstraint1.ctz" "R_Foot_JNT.tz";
connectAttr "R_Foot_JNT_parentConstraint1.crx" "R_Foot_JNT.rx";
connectAttr "R_Foot_JNT_parentConstraint1.cry" "R_Foot_JNT.ry";
connectAttr "R_Foot_JNT_parentConstraint1.crz" "R_Foot_JNT.rz";
connectAttr "R_Foot_JNT.s" "R_Knee_JNT.is";
connectAttr "R_Knee_JNT.s" "R_Thigh_JNT.is";
connectAttr "R_Thigh_JNT.tx" "effector2.tx";
connectAttr "R_Thigh_JNT.ty" "effector2.ty";
connectAttr "R_Thigh_JNT.tz" "effector2.tz";
connectAttr "R_Thigh_JNT.opm" "effector2.opm";
connectAttr "R_Foot_JNT.ro" "R_Foot_JNT_parentConstraint1.cro";
connectAttr "R_Foot_JNT.pim" "R_Foot_JNT_parentConstraint1.cpim";
connectAttr "R_Foot_JNT.rp" "R_Foot_JNT_parentConstraint1.crp";
connectAttr "R_Foot_JNT.rpt" "R_Foot_JNT_parentConstraint1.crt";
connectAttr "R_Foot_JNT.jo" "R_Foot_JNT_parentConstraint1.cjo";
connectAttr "L_Foot_CTL.t" "R_Foot_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Foot_CTL.rp" "R_Foot_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Foot_CTL.rpt" "R_Foot_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Foot_CTL.r" "R_Foot_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Foot_CTL.ro" "R_Foot_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Foot_CTL.s" "R_Foot_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Foot_CTL.pm" "R_Foot_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Foot_JNT_parentConstraint1.w0" "R_Foot_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.ro" "Base_JNT_parentConstraint1.cro";
connectAttr "Base_JNT.pim" "Base_JNT_parentConstraint1.cpim";
connectAttr "Base_JNT.rp" "Base_JNT_parentConstraint1.crp";
connectAttr "Base_JNT.rpt" "Base_JNT_parentConstraint1.crt";
connectAttr "Base_JNT.jo" "Base_JNT_parentConstraint1.cjo";
connectAttr "Master_CTL.t" "Base_JNT_parentConstraint1.tg[0].tt";
connectAttr "Master_CTL.rp" "Base_JNT_parentConstraint1.tg[0].trp";
connectAttr "Master_CTL.rpt" "Base_JNT_parentConstraint1.tg[0].trt";
connectAttr "Master_CTL.r" "Base_JNT_parentConstraint1.tg[0].tr";
connectAttr "Master_CTL.ro" "Base_JNT_parentConstraint1.tg[0].tro";
connectAttr "Master_CTL.s" "Base_JNT_parentConstraint1.tg[0].ts";
connectAttr "Master_CTL.pm" "Base_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Base_JNT_parentConstraint1.w0" "Base_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle1.oc" "Master_CTLShape.cr";
connectAttr "makeNurbCircle14.oc" "Body_CTLShape.cr";
connectAttr "makeNurbCircle7.oc" "B_Mandible_CTLShape.cr";
connectAttr "makeNurbCircle9.oc" "T_Mandible_CTLShape.cr";
connectAttr "makeNurbCircle13.oc" "R_Mandible_CTLShape.cr";
connectAttr "L_Foot_GRP_parentConstraint1.ctx" "L_Leg_GRP.tx";
connectAttr "L_Foot_GRP_parentConstraint1.cty" "L_Leg_GRP.ty";
connectAttr "L_Foot_GRP_parentConstraint1.ctz" "L_Leg_GRP.tz";
connectAttr "L_Foot_GRP_parentConstraint1.crx" "L_Leg_GRP.rx";
connectAttr "L_Foot_GRP_parentConstraint1.cry" "L_Leg_GRP.ry";
connectAttr "L_Foot_GRP_parentConstraint1.crz" "L_Leg_GRP.rz";
connectAttr "makeNurbCircle17.oc" "L_Leg_CTLShape.cr";
connectAttr "L_Foot_JNT.msg" "L_Leg_IK.hsj";
connectAttr "effector1.hp" "L_Leg_IK.hee";
connectAttr "ikRPsolver.msg" "L_Leg_IK.hsv";
connectAttr "L_Leg_IK_poleVectorConstraint1.ctx" "L_Leg_IK.pvx";
connectAttr "L_Leg_IK_poleVectorConstraint1.cty" "L_Leg_IK.pvy";
connectAttr "L_Leg_IK_poleVectorConstraint1.ctz" "L_Leg_IK.pvz";
connectAttr "L_Leg_IK.pim" "L_Leg_IK_poleVectorConstraint1.cpim";
connectAttr "L_Foot_JNT.pm" "L_Leg_IK_poleVectorConstraint1.ps";
connectAttr "L_Foot_JNT.t" "L_Leg_IK_poleVectorConstraint1.crp";
connectAttr "L_Leg_POL.t" "L_Leg_IK_poleVectorConstraint1.tg[0].tt";
connectAttr "L_Leg_POL.rp" "L_Leg_IK_poleVectorConstraint1.tg[0].trp";
connectAttr "L_Leg_POL.rpt" "L_Leg_IK_poleVectorConstraint1.tg[0].trt";
connectAttr "L_Leg_POL.pm" "L_Leg_IK_poleVectorConstraint1.tg[0].tpm";
connectAttr "L_Leg_IK_poleVectorConstraint1.w0" "L_Leg_IK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_Leg_GRP.ro" "L_Foot_GRP_parentConstraint1.cro";
connectAttr "L_Leg_GRP.pim" "L_Foot_GRP_parentConstraint1.cpim";
connectAttr "L_Leg_GRP.rp" "L_Foot_GRP_parentConstraint1.crp";
connectAttr "L_Leg_GRP.rpt" "L_Foot_GRP_parentConstraint1.crt";
connectAttr "Body_CTL.t" "L_Foot_GRP_parentConstraint1.tg[0].tt";
connectAttr "Body_CTL.rp" "L_Foot_GRP_parentConstraint1.tg[0].trp";
connectAttr "Body_CTL.rpt" "L_Foot_GRP_parentConstraint1.tg[0].trt";
connectAttr "Body_CTL.r" "L_Foot_GRP_parentConstraint1.tg[0].tr";
connectAttr "Body_CTL.ro" "L_Foot_GRP_parentConstraint1.tg[0].tro";
connectAttr "Body_CTL.s" "L_Foot_GRP_parentConstraint1.tg[0].ts";
connectAttr "Body_CTL.pm" "L_Foot_GRP_parentConstraint1.tg[0].tpm";
connectAttr "L_Foot_GRP_parentConstraint1.w0" "L_Foot_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "Body_CTL.L_Leg_Attachment" "L_Foot_GRP_parentConstraint1.w0";
connectAttr "R_Foot_GRP_parentConstraint1.ctx" "R_Leg_GRP.tx";
connectAttr "R_Foot_GRP_parentConstraint1.cty" "R_Leg_GRP.ty";
connectAttr "R_Foot_GRP_parentConstraint1.ctz" "R_Leg_GRP.tz";
connectAttr "R_Foot_GRP_parentConstraint1.crx" "R_Leg_GRP.rx";
connectAttr "R_Foot_GRP_parentConstraint1.cry" "R_Leg_GRP.ry";
connectAttr "R_Foot_GRP_parentConstraint1.crz" "R_Leg_GRP.rz";
connectAttr "makeNurbCircle20.oc" "R_Leg_CTLShape.cr";
connectAttr "R_Foot_JNT.msg" "R_Leg_IK.hsj";
connectAttr "effector2.hp" "R_Leg_IK.hee";
connectAttr "ikRPsolver.msg" "R_Leg_IK.hsv";
connectAttr "R_Leg_IK_poleVectorConstraint1.ctx" "R_Leg_IK.pvx";
connectAttr "R_Leg_IK_poleVectorConstraint1.cty" "R_Leg_IK.pvy";
connectAttr "R_Leg_IK_poleVectorConstraint1.ctz" "R_Leg_IK.pvz";
connectAttr "R_Leg_IK.pim" "R_Leg_IK_poleVectorConstraint1.cpim";
connectAttr "R_Foot_JNT.pm" "R_Leg_IK_poleVectorConstraint1.ps";
connectAttr "R_Foot_JNT.t" "R_Leg_IK_poleVectorConstraint1.crp";
connectAttr "R_Leg_POL.t" "R_Leg_IK_poleVectorConstraint1.tg[0].tt";
connectAttr "R_Leg_POL.rp" "R_Leg_IK_poleVectorConstraint1.tg[0].trp";
connectAttr "R_Leg_POL.rpt" "R_Leg_IK_poleVectorConstraint1.tg[0].trt";
connectAttr "R_Leg_POL.pm" "R_Leg_IK_poleVectorConstraint1.tg[0].tpm";
connectAttr "R_Leg_IK_poleVectorConstraint1.w0" "R_Leg_IK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_Leg_GRP.ro" "R_Foot_GRP_parentConstraint1.cro";
connectAttr "R_Leg_GRP.pim" "R_Foot_GRP_parentConstraint1.cpim";
connectAttr "R_Leg_GRP.rp" "R_Foot_GRP_parentConstraint1.crp";
connectAttr "R_Leg_GRP.rpt" "R_Foot_GRP_parentConstraint1.crt";
connectAttr "Body_CTL.t" "R_Foot_GRP_parentConstraint1.tg[0].tt";
connectAttr "Body_CTL.rp" "R_Foot_GRP_parentConstraint1.tg[0].trp";
connectAttr "Body_CTL.rpt" "R_Foot_GRP_parentConstraint1.tg[0].trt";
connectAttr "Body_CTL.r" "R_Foot_GRP_parentConstraint1.tg[0].tr";
connectAttr "Body_CTL.ro" "R_Foot_GRP_parentConstraint1.tg[0].tro";
connectAttr "Body_CTL.s" "R_Foot_GRP_parentConstraint1.tg[0].ts";
connectAttr "Body_CTL.pm" "R_Foot_GRP_parentConstraint1.tg[0].tpm";
connectAttr "R_Foot_GRP_parentConstraint1.w0" "R_Foot_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "Body_CTL.R_Leg_Attachment" "R_Foot_GRP_parentConstraint1.w0";
connectAttr "Tail02_GRP_parentConstraint1.ctx" "Tail01_GRP.tx";
connectAttr "Tail02_GRP_parentConstraint1.cty" "Tail01_GRP.ty";
connectAttr "Tail02_GRP_parentConstraint1.ctz" "Tail01_GRP.tz";
connectAttr "Tail02_GRP_parentConstraint1.crx" "Tail01_GRP.rx";
connectAttr "Tail02_GRP_parentConstraint1.cry" "Tail01_GRP.ry";
connectAttr "Tail02_GRP_parentConstraint1.crz" "Tail01_GRP.rz";
connectAttr "makeNurbCircle5.oc" "Tail01_CTLShape.cr";
connectAttr "makeNurbCircle4.oc" "Tail02_CTLShape.cr";
connectAttr "Tail03_CTL_scaleX.o" "Tail03_CTL.sx" -l on;
connectAttr "Tail03_CTL_scaleY.o" "Tail03_CTL.sy" -l on;
connectAttr "Tail03_CTL_scaleZ.o" "Tail03_CTL.sz" -l on;
connectAttr "Tail03_CTL_visibility.o" "Tail03_CTL.v" -l on;
connectAttr "makeNurbCircle3.oc" "Tail03_CTLShape.cr";
connectAttr "Tail01_GRP.ro" "Tail02_GRP_parentConstraint1.cro";
connectAttr "Tail01_GRP.pim" "Tail02_GRP_parentConstraint1.cpim";
connectAttr "Tail01_GRP.rp" "Tail02_GRP_parentConstraint1.crp";
connectAttr "Tail01_GRP.rpt" "Tail02_GRP_parentConstraint1.crt";
connectAttr "Body_CTL.t" "Tail02_GRP_parentConstraint1.tg[0].tt";
connectAttr "Body_CTL.rp" "Tail02_GRP_parentConstraint1.tg[0].trp";
connectAttr "Body_CTL.rpt" "Tail02_GRP_parentConstraint1.tg[0].trt";
connectAttr "Body_CTL.r" "Tail02_GRP_parentConstraint1.tg[0].tr";
connectAttr "Body_CTL.ro" "Tail02_GRP_parentConstraint1.tg[0].tro";
connectAttr "Body_CTL.s" "Tail02_GRP_parentConstraint1.tg[0].ts";
connectAttr "Body_CTL.pm" "Tail02_GRP_parentConstraint1.tg[0].tpm";
connectAttr "Tail02_GRP_parentConstraint1.w0" "Tail02_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "Body_CTL.Tail_Attachment" "Tail02_GRP_parentConstraint1.w0";
connectAttr "transformGeometry1.og" "L_Leg_POLShape.i";
connectAttr "Geometry.di" "Spider_Hunter_MOD_MASTER:Hunter_GEO.do";
connectAttr "Spider_Hunter_MOD_MASTER:groupId8.id" "Spider_Hunter_MOD_MASTER:Hunter_GEOShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "Spider_Hunter_MOD_MASTER:Hunter_GEOShape.iog.og[0].gco"
		;
connectAttr "skinCluster1.og[0]" "Hunter_GEOShapeDeformed.i";
connectAttr "tweak1.vl[0].vt[0]" "Hunter_GEOShapeDeformed.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "Geometry.id";
connectAttr "polyCube1.out" "transformGeometry1.ig";
connectAttr "R_Foot_GRP_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Body_CTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "Tail02_GRP_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "L_Foot_GRP_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "tweak1.og[0]" "skinCluster1.ip[0].ig";
connectAttr "Spider_Hunter_MOD_MASTER:Hunter_GEOShape.o" "skinCluster1.orggeom[0]"
		;
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Base_JNT.wm" "skinCluster1.ma[0]";
connectAttr "Tail02_JNT.wm" "skinCluster1.ma[1]";
connectAttr "Tail03_JNT.wm" "skinCluster1.ma[2]";
connectAttr "Tail04_JNT.wm" "skinCluster1.ma[3]";
connectAttr "TailEnd_JNT.wm" "skinCluster1.ma[4]";
connectAttr "Body_JNT.wm" "skinCluster1.ma[5]";
connectAttr "B_Mandible_JNT.wm" "skinCluster1.ma[6]";
connectAttr "B_MandibleEnd_JNT.wm" "skinCluster1.ma[7]";
connectAttr "T_Mandible_JNT.wm" "skinCluster1.ma[8]";
connectAttr "T_MandibleEnd_JNT.wm" "skinCluster1.ma[9]";
connectAttr "L_Mandible_JNT.wm" "skinCluster1.ma[10]";
connectAttr "L_MandibleEnd_JNT.wm" "skinCluster1.ma[11]";
connectAttr "R_Mandible_JNT.wm" "skinCluster1.ma[12]";
connectAttr "R_MandibleEnd_JNT.wm" "skinCluster1.ma[13]";
connectAttr "L_Foot_JNT.wm" "skinCluster1.ma[14]";
connectAttr "L_Knee_JNT.wm" "skinCluster1.ma[15]";
connectAttr "L_Thigh_JNT.wm" "skinCluster1.ma[16]";
connectAttr "R_Foot_JNT.wm" "skinCluster1.ma[17]";
connectAttr "R_Knee_JNT.wm" "skinCluster1.ma[18]";
connectAttr "R_Thigh_JNT.wm" "skinCluster1.ma[19]";
connectAttr "Tail05_JNT.wm" "skinCluster1.ma[20]";
connectAttr "Base_JNT.liw" "skinCluster1.lw[0]";
connectAttr "Tail02_JNT.liw" "skinCluster1.lw[1]";
connectAttr "Tail03_JNT.liw" "skinCluster1.lw[2]";
connectAttr "Tail04_JNT.liw" "skinCluster1.lw[3]";
connectAttr "TailEnd_JNT.liw" "skinCluster1.lw[4]";
connectAttr "Body_JNT.liw" "skinCluster1.lw[5]";
connectAttr "B_Mandible_JNT.liw" "skinCluster1.lw[6]";
connectAttr "B_MandibleEnd_JNT.liw" "skinCluster1.lw[7]";
connectAttr "T_Mandible_JNT.liw" "skinCluster1.lw[8]";
connectAttr "T_MandibleEnd_JNT.liw" "skinCluster1.lw[9]";
connectAttr "L_Mandible_JNT.liw" "skinCluster1.lw[10]";
connectAttr "L_MandibleEnd_JNT.liw" "skinCluster1.lw[11]";
connectAttr "R_Mandible_JNT.liw" "skinCluster1.lw[12]";
connectAttr "R_MandibleEnd_JNT.liw" "skinCluster1.lw[13]";
connectAttr "L_Foot_JNT.liw" "skinCluster1.lw[14]";
connectAttr "L_Knee_JNT.liw" "skinCluster1.lw[15]";
connectAttr "L_Thigh_JNT.liw" "skinCluster1.lw[16]";
connectAttr "R_Foot_JNT.liw" "skinCluster1.lw[17]";
connectAttr "R_Knee_JNT.liw" "skinCluster1.lw[18]";
connectAttr "R_Thigh_JNT.liw" "skinCluster1.lw[19]";
connectAttr "Tail05_JNT.liw" "skinCluster1.lw[20]";
connectAttr "Base_JNT.obcc" "skinCluster1.ifcl[0]";
connectAttr "Tail02_JNT.obcc" "skinCluster1.ifcl[1]";
connectAttr "Tail03_JNT.obcc" "skinCluster1.ifcl[2]";
connectAttr "Tail04_JNT.obcc" "skinCluster1.ifcl[3]";
connectAttr "TailEnd_JNT.obcc" "skinCluster1.ifcl[4]";
connectAttr "Body_JNT.obcc" "skinCluster1.ifcl[5]";
connectAttr "B_Mandible_JNT.obcc" "skinCluster1.ifcl[6]";
connectAttr "B_MandibleEnd_JNT.obcc" "skinCluster1.ifcl[7]";
connectAttr "T_Mandible_JNT.obcc" "skinCluster1.ifcl[8]";
connectAttr "T_MandibleEnd_JNT.obcc" "skinCluster1.ifcl[9]";
connectAttr "L_Mandible_JNT.obcc" "skinCluster1.ifcl[10]";
connectAttr "L_MandibleEnd_JNT.obcc" "skinCluster1.ifcl[11]";
connectAttr "R_Mandible_JNT.obcc" "skinCluster1.ifcl[12]";
connectAttr "R_MandibleEnd_JNT.obcc" "skinCluster1.ifcl[13]";
connectAttr "L_Foot_JNT.obcc" "skinCluster1.ifcl[14]";
connectAttr "L_Knee_JNT.obcc" "skinCluster1.ifcl[15]";
connectAttr "L_Thigh_JNT.obcc" "skinCluster1.ifcl[16]";
connectAttr "R_Foot_JNT.obcc" "skinCluster1.ifcl[17]";
connectAttr "R_Knee_JNT.obcc" "skinCluster1.ifcl[18]";
connectAttr "R_Thigh_JNT.obcc" "skinCluster1.ifcl[19]";
connectAttr "Tail05_JNT.obcc" "skinCluster1.ifcl[20]";
connectAttr "Tail02_JNT.msg" "skinCluster1.ptt";
connectAttr "Spider_Hunter_MOD_MASTER:Hunter_GEOShape.w" "tweak1.ip[0].ig";
connectAttr "Base_JNT.msg" "bindPose1.m[0]";
connectAttr "Tail02_JNT.msg" "bindPose1.m[1]";
connectAttr "Tail03_JNT.msg" "bindPose1.m[2]";
connectAttr "Tail04_JNT.msg" "bindPose1.m[3]";
connectAttr "TailEnd_JNT.msg" "bindPose1.m[4]";
connectAttr "Body_JNT.msg" "bindPose1.m[5]";
connectAttr "B_Mandible_JNT.msg" "bindPose1.m[6]";
connectAttr "B_MandibleEnd_JNT.msg" "bindPose1.m[7]";
connectAttr "T_Mandible_JNT.msg" "bindPose1.m[8]";
connectAttr "T_MandibleEnd_JNT.msg" "bindPose1.m[9]";
connectAttr "L_Mandible_JNT.msg" "bindPose1.m[10]";
connectAttr "L_MandibleEnd_JNT.msg" "bindPose1.m[11]";
connectAttr "R_Mandible_JNT.msg" "bindPose1.m[12]";
connectAttr "R_MandibleEnd_JNT.msg" "bindPose1.m[13]";
connectAttr "L_Foot_JNT.msg" "bindPose1.m[14]";
connectAttr "L_Knee_JNT.msg" "bindPose1.m[15]";
connectAttr "L_Thigh_JNT.msg" "bindPose1.m[16]";
connectAttr "R_Foot_JNT.msg" "bindPose1.m[17]";
connectAttr "R_Knee_JNT.msg" "bindPose1.m[18]";
connectAttr "R_Thigh_JNT.msg" "bindPose1.m[19]";
connectAttr "Tail05_JNT.msg" "bindPose1.m[20]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[20]" "bindPose1.p[4]";
connectAttr "bindPose1.m[0]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[5]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[5]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[5]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[0]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[0]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[3]" "bindPose1.p[20]";
connectAttr "Base_JNT.bps" "bindPose1.wm[0]";
connectAttr "Tail02_JNT.bps" "bindPose1.wm[1]";
connectAttr "Tail03_JNT.bps" "bindPose1.wm[2]";
connectAttr "Tail04_JNT.bps" "bindPose1.wm[3]";
connectAttr "TailEnd_JNT.bps" "bindPose1.wm[4]";
connectAttr "Body_JNT.bps" "bindPose1.wm[5]";
connectAttr "B_Mandible_JNT.bps" "bindPose1.wm[6]";
connectAttr "B_MandibleEnd_JNT.bps" "bindPose1.wm[7]";
connectAttr "T_Mandible_JNT.bps" "bindPose1.wm[8]";
connectAttr "T_MandibleEnd_JNT.bps" "bindPose1.wm[9]";
connectAttr "L_Mandible_JNT.bps" "bindPose1.wm[10]";
connectAttr "L_MandibleEnd_JNT.bps" "bindPose1.wm[11]";
connectAttr "R_Mandible_JNT.bps" "bindPose1.wm[12]";
connectAttr "R_MandibleEnd_JNT.bps" "bindPose1.wm[13]";
connectAttr "L_Foot_JNT.bps" "bindPose1.wm[14]";
connectAttr "L_Knee_JNT.bps" "bindPose1.wm[15]";
connectAttr "L_Thigh_JNT.bps" "bindPose1.wm[16]";
connectAttr "R_Foot_JNT.bps" "bindPose1.wm[17]";
connectAttr "R_Knee_JNT.bps" "bindPose1.wm[18]";
connectAttr "R_Thigh_JNT.bps" "bindPose1.wm[19]";
connectAttr "Tail05_JNT.bps" "bindPose1.wm[20]";
connectAttr "Base_JNT.iog" "Export.dsm" -na;
connectAttr "Spider_Hunter_MOD_MASTER:Hunter_GEO.iog" "Export.dsm" -na;
connectAttr "Spider_Hunter_MOD_MASTER:renderLayerManager.rlmi[0]" "Spider_Hunter_MOD_MASTER:defaultRenderLayer.rlid"
		;
connectAttr "Spider_Hunter_MOD_MASTER:place2dTexture1.o" "Spider_Hunter_MOD_MASTER:checker1.uv"
		;
connectAttr "Spider_Hunter_MOD_MASTER:place2dTexture1.ofs" "Spider_Hunter_MOD_MASTER:checker1.fs"
		;
connectAttr "Spider_Hunter_MOD_MASTER:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Spider_Hunter_MOD_MASTER:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Spider_Hunter_MOD_MASTER:checker1.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "L_Leg_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "R_Leg_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Spider_Hunter_MOD_MASTER:Hunter_GEOShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Hunter_GEOShapeDeformed.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Spider_Hunter_MOD_MASTER:groupId8.msg" ":initialShadingGroup.gn" -na
		;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Spider-Hunter_RIG_MASTER.ma
