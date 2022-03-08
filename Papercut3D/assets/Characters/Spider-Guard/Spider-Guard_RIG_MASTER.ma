//Maya ASCII 2022 scene
//Name: Spider-Guard_RIG_MASTER.ma
//Last modified: Fri, Mar 04, 2022 08:12:55 PM
//Codeset: 1252
requires maya "2022";
requires "stereoCamera" "10.0";
requires "mtoa" "5.0.0.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Education v2004 (Build: 19041)";
fileInfo "UUID" "5B4BB408-43F9-15A7-6005-3590CC3B90F5";
createNode transform -s -n "persp";
	rename -uid "BC808C1F-4D4A-4EE6-6A72-AC98A09D2F7F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1011.0941954684529 399.99218893894522 1724.3094374569382 ;
	setAttr ".r" -type "double3" -8.1383527389533583 1107.3999999998148 4.4780631405840374e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0E4766C0-433E-61B9-ECBA-CD81EE9ED0E4";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2093.0148545083307;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 232.02869415283203 196.15210723876953 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B3636C84-4730-DA88-8058-589D4F030120";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -325.20207575970039 1000.1 -67.82432029956361 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "644405C0-4CE8-BC39-642D-B8809FBDFD0A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 547.73252641904458;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "6845167D-4318-1226-1329-AA99FDC4DAB1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 165.24494573919611 286.76593105490059 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D2622593-49AC-9868-AC44-43A402D744CC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 891.76486915157625;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "62A6F305-4427-9389-681D-24A05054D528";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 111.90402236418331 -6.9648756818860633 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "99C6881E-4B58-AD2B-8967-8FA1C1952550";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 992.02772309514398;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "Base_JNT";
	rename -uid "FEAF250B-4335-95F3-B887-75B4A54E39B7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.23496162861195566 191.38482658506703 101.8704987339374 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "Head_JNT" -p "Base_JNT";
	rename -uid "DFDDCF22-4390-3088-C5E2-2284A6B41DB3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999998636 0 ;
	setAttr ".bps" -type "matrix" 2.375877272697835e-14 0 -1 0 0 1 0 0 1 0 2.375877272697835e-14 0
		 5.8730798002670781e-14 280.00000000000006 197.57919304781669 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "Eyes_JNT" -p "Head_JNT";
	rename -uid "8D646C65-4030-D5B0-5B28-129EC91CEB8C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.375877272697835e-14 0 -1 0 0 1 0 0 1 0 2.375877272697835e-14 0
		 7.2282572505338831e-15 280.00000000000006 156.67810242806226 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode parentConstraint -n "Eyes_JNT_parentConstraint1" -p "Eyes_JNT";
	rename -uid "F825D59F-4E9B-798C-51FB-26AD8179E35A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Eyes_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 0 0 ;
	setAttr ".rst" -type "double3" 40.901090619754456 0 -1.0232622570724293e-12 ;
	setAttr -k on ".w0";
createNode joint -n "L_Face_JNT" -p "Head_JNT";
	rename -uid "42C6476D-4DBB-71D4-8008-E09A2B15737F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -131.72892993569886 10.377106082749721 -99.126571417694009 ;
	setAttr ".bps" -type "matrix" -0.18012612103249781 -0.97119094369716807 0.15602157351594043 0
		 -0.73409532260714061 0.23830264555938963 0.63585840125433113 0 -0.65472027450515369 1.021405182655144e-14 -0.75587126030290097 0
		 59.999999999999055 199.99999999999955 197.57919304781646 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_Mandible_JNT" -p "L_Face_JNT";
	rename -uid "ECB0E84E-446C-A229-D3D3-F989C8248021";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 17.019089260408744 10.739295047301997 134.88195243295453 ;
	setAttr ".bps" -type "matrix" -0.26416143922743252 0.83921096599541845 0.47533534328758703 0
		 0.40765857814536643 0.54380598980981865 -0.73354586026468838 0 -0.87408993684276537 1.2246345928012594e-14 -0.48576412209035169 0
		 38.473188257326221 83.933299116645671 216.22527847740997 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_MandibleEnd_JNT" -p "L_Mandible_JNT";
	rename -uid "A30FAF8C-40D2-7BD3-CCEA-23AA68E3D4E8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 111.35469706268688 -9.9475983006414026e-14 1.4210854715202004e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.9999999999998 60.937452255773202 122.94310686479939 ;
	setAttr ".bps" -type "matrix" 1 -7.6512944210518795e-15 -2.1482815526496779e-14 0
		 7.6343998912115905e-15 1 7.6858268690032508e-15 0 2.120525977034049e-14 -7.6141700154737579e-15 1 0
		 9.0575712165119384 177.38338200675025 269.1561016323875 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_Mandible_JNT_parentConstraint1" -p "L_Mandible_JNT";
	rename -uid "0C1637A2-4FF4-496A-19A7-2C99DC07BF68";
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
	setAttr ".tg[0].tot" -type "double3" 0 -5.6843418860808015e-14 0 ;
	setAttr ".tg[0].tor" -type "double3" 9.5416640443905503e-15 9.5416640443905456e-15 
		5.9635400277440912e-15 ;
	setAttr ".lr" -type "double3" 1.5902773407317578e-14 -3.1805546814635101e-15 -4.3931411537714818e-14 ;
	setAttr ".rst" -type "double3" 119.50966144876372 2.8421709430404007e-14 -8.5265128291212022e-14 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-15 -1.2324649390671127e-14 
		1.4908850069360238e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Face_JNT_parentConstraint1" -p "L_Face_JNT";
	rename -uid "1D6A57C9-4A69-B8A6-595F-E68106D68E16";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Face_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.6843418860808015e-14 2.8421709430404007e-14 
		-2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" -1.590277340731759e-14 7.9513867036587935e-15 
		-2.544443745170814e-14 ;
	setAttr ".lr" -type "double3" -6.3611093629270367e-15 -1.5902773407317584e-14 1.9083328088781101e-14 ;
	setAttr ".rst" -type "double3" 1.6484591469634324e-12 -80.000000000000512 59.999999999998998 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317581e-14 -1.272221872585407e-14 1.9083328088781097e-14 ;
	setAttr -k on ".w0";
createNode joint -n "R_Face_JNT" -p "Head_JNT";
	rename -uid "5284EE6C-4B64-6869-444B-DEA813597D36";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -131.72892993569616 10.377106082750151 80.873428582306502 ;
	setAttr ".bps" -type "matrix" -0.18012612103249784 0.97119094369716807 -0.1560215735159402 0
		 -0.73409532260714039 -0.23830264555938929 -0.63585840125433146 0 -0.65472027450515391 -1.0491607582707728e-14 0.75587126030290075 0
		 -59.999999999999986 200.00000000000003 197.57899999999998 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_Mandible_JNT" -p "R_Face_JNT";
	rename -uid "7755410F-451A-1205-95FB-2C86F49C02D5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 17.019089260408677 10.739295047301971 134.88195243295453 ;
	setAttr ".bps" -type "matrix" -0.26416143922743229 -0.83921096599541856 -0.47533534328758686 0
		 0.40765857814536727 -0.54380598980981865 0.73354586026468793 0 -0.87408993684276493 -1.2687509573229403e-14 0.48576412209035247 0
		 -38.473199999999977 83.93330000000006 216.22500000000002 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_MandibleEnd_JNT" -p "R_Mandible_JNT";
	rename -uid "FEE5E1E7-4549-65F7-25E2-8FB72FF0B2DC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -111.35446322111892 0.00034322478980186588 7.4577473100134739e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999972 60.937452255773159 122.94310686479929 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 7.1487327041366312e-15 2.1316282072803006e-14 0
		 7.2604068815503197e-15 -1 -8.0299572759925264e-15 0 2.1260770921571748e-14 8.0505160912157274e-15 -1 0
		 -9.0575699999999841 177.38300000000004 269.15600000000001 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode parentConstraint -n "R_Mandible_JNT_parentConstraint1" -p "R_Mandible_JNT";
	rename -uid "E24F26B4-4D99-77A8-E19B-EB98EE6EE2B0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Mandible_CTRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 4.2968346264160573e-05 -6.7933899003946863e-05 
		-3.1234479422437289e-05 ;
	setAttr ".tg[0].tor" -type "double3" -9.8597195125368991e-14 9.5416640443905487e-15 
		5.3274290914513896e-14 ;
	setAttr ".lr" -type "double3" 9.8597195125369017e-14 -4.3732626870122989e-15 -4.2639311198370276e-14 ;
	setAttr ".rst" -type "double3" -119.50964514683668 6.2730860292958823e-05 -5.6885608415768729e-05 ;
	setAttr ".rsrr" -type "double3" 9.8597195125369017e-14 -4.3732626870122989e-15 -4.2639311198370276e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Face_JNT_parentConstraint1" -p "R_Face_JNT";
	rename -uid "FFFBB292-4969-EC2A-05CC-DBBD8E13638F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Face_CTRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 2.8421709430404007e-14 
		-2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" -3.1805546814635168e-15 -1.590277340731758e-15 
		1.590277340731758e-15 ;
	setAttr ".rst" -type "double3" 0.00019304781528717285 -80.000000000000028 -60.000000000000043 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Head_JNT_parentConstraint1" -p "Head_JNT";
	rename -uid "76947015-4A61-38ED-22B5-1AB0B49BC46F";
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
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 0 0 ;
	setAttr ".rst" -type "double3" -0.23496162861189693 88.615173414933025 95.708694313879292 ;
	setAttr -k on ".w0";
createNode joint -n "L_Leg0101_JNT" -p "Base_JNT";
	rename -uid "B0CA00CA-4819-5372-6D41-FDA91317A57D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 32.494899590850082 25.057740267701146 56.378409090780025 ;
	setAttr ".bps" -type "matrix" 0.50159067094648435 0.7543382526744149 -0.4235334690099074 0
		 -0.57635659392686944 0.65648594847858466 0.4866613566816157 0 0.64515104855876448 1.511190923647598e-06 0.76405505334448443 0
		 89.914984849190475 257.97461591971461 155.26724683622086 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0102_JNT" -p "L_Leg0101_JNT";
	rename -uid "8A43B531-49EE-FB06-43E3-BDB1F190C90E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 57.939931455078515 -21.684200227027866 -125.93750266497966 ;
	setAttr ".bps" -type "matrix" 0.39845340102751625 -0.90530785783835421 0.14714812178799935 0
		 0.84924883355585457 0.42475602707138232 0.3136219637885006 0 -0.34642647981011188 1.6326799365776315e-06 0.93807712587169945 0
		 148.62836115972064 346.27319932663386 105.69080655044036 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0103_JNT" -p "L_Leg0102_JNT";
	rename -uid "FEBB761A-4AE2-E3C6-8353-71A8A7AFF7B7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -167.55918502503638 2.7554289453749741 -36.261401195047767 ;
	setAttr ".bps" -type "matrix" -0.16415862348274415 -0.98007023972626384 -0.11186720493135999 0
		 -0.8224131074990586 0.19860055560307771 -0.53309895885087877 0 0.54469131345193378 0.004488264369789525 -0.83862460525133298 0
		 239.24049905557754 140.39748025607005 139.15370551977256 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_LegEnd_JNT" -p "L_Leg0103_JNT";
	rename -uid "86EC7B1C-43C4-E9E3-3E36-6D8BB0C0AEFA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 143.25250192676606 0.00016402595156250754 0.00023923158100025432 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -126.92843892101082 -16.283105100738734 159.50389261827723 ;
	setAttr ".bps" -type "matrix" 0.023909343474726286 0.94921177112045807 -0.31372815758387396 0
		 -0.94540591735334645 0.12349356961288685 0.3015907652723217 0 0.32501691452582132 0.28938961942445612 0.90034307541152558 0
		 215.72436093909201 6.9707084549008869e-10 123.1281604622468 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_Leg0103_JNT_parentConstraint1" -p "L_Leg0103_JNT";
	rename -uid "7B6840FB-435E-1506-D9C7-9ABA3D46AF0A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg0102_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -8.5265128291212022e-14 -1.1368683772161603e-13 
		-2.1316282072803006e-14 ;
	setAttr ".tg[0].tor" -type "double3" -2.6652300800314133e-09 3.9628399352229311e-09 
		-2.7171503491826272e-09 ;
	setAttr ".lr" -type "double3" 2.6652272969521007e-09 -3.9628389413627906e-09 2.7171605865008383e-09 ;
	setAttr ".rst" -type "double3" 227.40962346460014 1.7053025658242404e-13 8.5265128291212022e-14 ;
	setAttr ".rsrr" -type "double3" 2.6652272969521007e-09 -3.9628389413627906e-09 2.7171605865008383e-09 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg0102_JNT_parentConstraint1" -p "L_Leg0102_JNT";
	rename -uid "1283708E-4702-7291-D331-C6A03A801A27";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_LegIK02_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 -2.1316282072803006e-14 ;
	setAttr ".tg[0].tor" -type "double3" -3.180554681463516e-15 0 -1.5902773407317587e-14 ;
	setAttr ".rst" -type "double3" 117.05436267333295 2.8421709430404007e-14 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_Leg0101_JNT_parentConstraint1" -p "L_Leg0101_JNT";
	rename -uid "90146B48-4CD0-A772-7EF2-BA90931CC46A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_LegIK01_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -5.6843418860808015e-14 -2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.0037512519230713e-10 2.4642746838698449e-09 
		-1.210232861843683e-09 ;
	setAttr ".lr" -type "double3" 4.846367280319958e-06 0.00011900024112839364 -5.8441903231580504e-05 ;
	setAttr ".rst" -type "double3" 89.680023220578519 66.589789334647577 53.396748102283468 ;
	setAttr ".rsrr" -type "double3" 4.8463672803199588e-06 0.00011900024112839364 -5.8441903231580504e-05 ;
	setAttr -k on ".w0";
createNode joint -n "L_Leg0201_JNT" -p "Base_JNT";
	rename -uid "D5EEBFE3-4327-6F21-EAE9-EEB127EF8070";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 104.79779220041151 -0.29873797523549683 -27.684161035058722 ;
	setAttr ".r" -type "double3" -7.9663308862993265e-15 1.1479159630461678e-14 1.3051068572938744e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 18.006620639524272 13.63672517661151 54.045681612055958 ;
	setAttr ".bps" -type "matrix" 0.57058861031369412 0.78666604771782456 -0.23576506770152511 0
		 -0.72704588875553267 0.61737875681628163 0.30041262669145613 0 0.38188075812217215 -9.1593399531575434e-16 0.92421160270580627 0
		 105.03275382902346 191.08608860983153 74.186337698878674 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0202_JNT" -p "L_Leg0201_JNT";
	rename -uid "866F1F70-4F11-B7F4-D60F-4F80AE0B008E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 216.79546984160513 -1.2801940239736202e-14 2.1762886025727491e-15 ;
	setAttr ".r" -type "double3" 4.3564179642529332e-31 -2.8788247506806706e-15 4.7542997131734749e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.1716916392442069 6.2791253655557675 -104.58010981565363 ;
	setAttr ".bps" -type "matrix" 0.51486971958031513 -0.79075472269217795 -0.33108328317706498 0
		 0.66510966739262067 0.61213312975203116 -0.42769400486897269 0 0.54086810055702628 -8.4653644535514147e-14 0.84110742346018708 0
		 228.73377968824934 361.63172403325586 23.073539074288689 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0203_JNT" -p "L_Leg0202_JNT";
	rename -uid "C56152FA-4F9D-811A-82D8-0B8B8998737E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 236.20502784507033 3.4940672295227198e-14 -2.1976833858052479e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -119.60444610078713 7.4737457326277275 -41.970632041862942 ;
	setAttr ".bps" -type "matrix" -0.13181759830816819 -0.98880787498365919 -0.069879232584274045 0
		 -0.87364021964281946 0.1491944582425922 -0.4631347322887216 0 0.46837686471335582 1.1633186648321489e-15 -0.88352878425170012 0
		 350.34859613830128 174.85148274112913 -55.129997047587267 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode ikEffector -n "effector2" -p "L_Leg0202_JNT";
	rename -uid "80963605-4292-7091-97FE-6E8CC01458A5";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "L_Leg0301_JNT" -p "Base_JNT";
	rename -uid "F8309D35-436A-8DD9-790C-1BBA1955BEB1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 100.70327246047273 -0.29873797523546841 -43.274890191577079 ;
	setAttr ".r" -type "double3" 1.1992589571312369e-06 -1.4853999189080146e-06 -3.4971311100625908e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 26.806401345772688 23.544287631914649 51.671071081760424 ;
	setAttr ".bps" -type "matrix" 0.56854660124711609 0.71915800845642608 -0.39945778385624131 0
		 -0.58843901246469577 0.69484657218193613 0.41343411777039774 0 0.57488632860760081 -1.8644257054889479e-08 0.81823328530442541 0
		 100.93823408908469 191.08608860983156 58.595608542360317 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0302_JNT" -p "L_Leg0301_JNT";
	rename -uid "EEE0ACC5-4E6A-4DC4-B78D-F0BB06FF516F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 234.72473541018667 8.5265128291212022e-14 9.9475983006414026e-14 ;
	setAttr ".r" -type "double3" -3.1406918862719086e-30 1.6402868687351474e-17 -8.6902445819550535e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.17830105788372058 0.13207795982775725 -101.72521302707428 ;
	setAttr ".bps" -type "matrix" 0.45929488236889371 -0.82649132951817517 -0.32551542707070469 0
		 0.67446893543763886 0.56294942819450378 -0.47768148009431877 0 0.57804832510730619 -0.00015338435518742221 0.81600251857079309 0
		 234.3901846351749 359.89026186288299 -35.167014080835351 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0303_JNT" -p "L_Leg0302_JNT";
	rename -uid "2F250371-45A4-4B6E-0080-EC9BB010DBB1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 236.20502784507062 5.6843418860808015e-14 -8.5265128291212022e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -112.99465501105732 6.5857992258346219 -37.050149187157608 ;
	setAttr ".bps" -type "matrix" -0.10584393114738885 -0.99220597735530369 -0.06575987180395905 0
		 -0.84279095405118121 0.12460858116681323 -0.52361828584293491 0 0.52773143738910089 7.3016686292129537e-09 -0.84941128435595503 0
		 342.87794511421788 164.66885436033303 -112.0553945960713 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode ikEffector -n "effector3" -p "L_Leg0302_JNT";
	rename -uid "B64FC83D-4436-CFE9-2F6B-C2989FA50DEF";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "L_Leg0401_JNT" -p "Base_JNT";
	rename -uid "45639887-44C1-837B-66AC-DF9E9D904A6C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 89.012781627792052 -15.946958599467251 -147.22634194540328 ;
	setAttr ".r" -type "double3" 5.5215418950462055e-07 -6.4204268885942738e-07 -1.0879511202964354e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 16.013512165407477 13.418392893817733 51.042026703926894 ;
	setAttr ".bps" -type "matrix" 0.61158620299937794 0.75637979507589981 -0.23206016871006377 0
		 -0.70718286677215669 0.65413271252929983 0.26833335115668078 0 0.35476007278824068 1.1102230246251563e-16 0.9349573737637894 0
		 89.247743256404007 175.43786798559978 -45.355843211465881 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0402_JNT" -p "L_Leg0401_JNT";
	rename -uid "EE096EB4-43F5-F54F-C770-7ABC1D02D483";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 234.72473541018681 8.0378938184310076e-14 -3.0798243873279384e-14 ;
	setAttr ".r" -type "double3" -7.8247315617626663e-31 -1.1789208463744713e-15 1.1814965923833957e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -13.11429973337658 9.3235589952723643 -104.33100170930099 ;
	setAttr ".bps" -type "matrix" 0.4692684809486567 -0.81015292507307146 -0.35133933850863686 0
		 0.64852810446164066 0.5862185923318588 -0.48555026488289044 0 0.59933161981621785 -1.225569301523239e-15 0.80050084914912389 0
		 232.80215293595376 352.97891525440173 -99.826104911178916 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_Leg0403_JNT" -p "L_Leg0402_JNT";
	rename -uid "7AD18D96-4742-3DF1-FC0E-33B20E0BE8B2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 220.09290177113968 -1.8326415532716167e-14 1.2217610355144112e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -59.664021056245083 9.111377229361425 -32.560852466659995 ;
	setAttr ".bps" -type "matrix" -0.049018642562832823 -0.98571695455176367 -0.1611187704474355 0
		 -0.11346853684876357 0.16576418510750182 -0.97961580534464976 0 0.99233162996384328 -0.029737525869548864 -0.11997339591951184 0
		 336.08481461767838 174.67000709669273 -177.15339942989749 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode ikEffector -n "effector4" -p "L_Leg0402_JNT";
	rename -uid "BA7A957A-438E-D9A5-D800-CEBFA7FA4474";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "R_Leg0101_JNT" -p "Base_JNT";
	rename -uid "961288EA-4235-6EDC-4EB4-68A84C28B684";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -147.50510040914995 -25.057740267701138 -56.378409090780039 ;
	setAttr ".bps" -type "matrix" 0.50159169330016973 -0.75433916296368875 0.42353063694555776 0
		 -0.57635736362326351 -0.65648490250648295 -0.48666185609547707 0 0.64514956607713048 5.4313991065813017e-07 -0.76405630511775446 0
		 -89.445100000000039 257.97500000000002 155.26699999999997 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_Leg0102_JNT" -p "R_Leg0101_JNT";
	rename -uid "3E63FDDA-4F9B-09B7-5A45-7BBDCC783B5F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 57.939931455078472 -21.684200227027855 -125.93750266497969 ;
	setAttr ".bps" -type "matrix" 0.39845287479375852 0.9053083263891103 -0.14714666404352397 0
		 0.84924833798384369 -0.42475502842250595 -0.31362465824847985 0 -0.34642829994137209 5.8680648710053483e-07 -0.9380764537069386 0
		 -148.15903163930798 346.27302817131334 105.69108764608926 1;
	setAttr ".radi" 2;
createNode joint -n "R_Leg0103_JNT" -p "R_Leg0102_JNT";
	rename -uid "9055F1BC-466C-8944-8BAD-3C8A50CC7CF5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -167.55918502503644 2.7554289453750092 -36.261401195047753 ;
	setAttr ".bps" -type "matrix" -0.16415866703271512 0.98006992040963603 0.11186993852814958 0
		 -0.82241202032763283 -0.19860208794810183 0.53310006516907849 0 0.5446929418109473 -0.0044901860656541351 0.83862353733390516 0
		 -238.77100000000013 140.39699999999996 139.15400000000005 1;
	setAttr ".radi" 2;
createNode joint -n "R_LegEnd_JNT" -p "R_Leg0103_JNT";
	rename -uid "81A34904-4028-D925-F7D3-61903BDD90B5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -143.17506904974093 0.38554546741013951 -0.25583450583915202 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -126.9283063415337 -16.283196145280364 159.50376642142595 ;
	setAttr ".bps" -type "matrix" 0.02390934499968364 -0.94921177247826383 0.31372815335949389 0
		 -0.9454059183314818 -0.12349356874196178 -0.30159076256275213 0 0.32501691156845075 -0.28938961534244168 -0.90034307779115996 0
		 -215.72399998886092 8.1482880887051579e-08 123.12799930218506 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode parentConstraint -n "R_Leg0103_JNT_parentConstraint1" -p "R_Leg0103_JNT";
	rename -uid "1A1495D5-4C5B-65EC-EBBB-68A0952485D3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Reg0102_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.076990409439389396 -0.38571137234100661 
		0.25546078779521508 ;
	setAttr ".tg[0].tor" -type "double3" 2.3125415195174268e-05 -3.4383884173769328e-05 
		2.3574675904430385e-05 ;
	setAttr ".lr" -type "double3" -3.7080851586292795e-09 5.5133450358946708e-09 -3.7801274057539741e-09 ;
	setAttr ".rst" -type "double3" -227.40983771350676 2.0214662299622432e-05 -0.00034080751563436706 ;
	setAttr ".rsrr" -type "double3" -3.876301018033661e-15 -1.3914926731402886e-15 4.7070172631550517e-32 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg0102_JNT_parentConstraint1" -p "R_Leg0102_JNT";
	rename -uid "936274E7-4BB8-7DB9-62AC-B7BB42957031";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_LegIK02_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -8.5265128291212022e-14 -5.6843418860808015e-14 
		1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" -1.2722218725854067e-14 3.6576378836830441e-14 
		2.8624992133171654e-14 ;
	setAttr ".lr" -type "double3" 6.3611093629270438e-15 -3.2600685485001048e-14 -3.6576378836830441e-14 ;
	setAttr ".rst" -type "double3" -117.05399878977258 0.00058995580954501747 -0.00043114562799928535 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270438e-15 -3.2600685485001048e-14 -3.6576378836830441e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_Leg0101_JNT_parentConstraint1" -p "R_Leg0101_JNT";
	rename -uid "704E290E-42C9-CFAA-88B5-4A959F03A71C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_LegIK01_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -5.6843418860808015e-14 2.8421709430404007e-14 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 1.1489464356310938e-08 2.8208781567000642e-07 
		-1.3853609135754412e-07 ;
	setAttr ".lr" -type "double3" -1.7420429856674245e-06 -4.2770216765659098e-05 2.1004875512147034e-05 ;
	setAttr ".rst" -type "double3" -89.680061628611995 66.590173414932991 53.396501266062572 ;
	setAttr ".rsrr" -type "double3" -1.7417636986472503e-06 -4.27633597888404e-05 2.1001507985169606e-05 ;
	setAttr -k on ".w0";
createNode joint -n "R_Leg0201_JNT" -p "Base_JNT";
	rename -uid "4A45698F-430B-4FF8-777F-F5A293C2DA5B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -104.79796162861196 -0.29882658506701887 -27.684198733937393 ;
	setAttr ".r" -type "double3" 1.2384924146699704e-05 -1.7846225719849514e-05 -2.0289930512555861e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -161.99337936047581 -13.636725176611495 -54.045681612055972 ;
	setAttr ".bps" -type "matrix" 0.57058875500671902 -0.78666602585479317 0.23576479047073157 0
		 -0.72704578600305492 -0.617378784674111 -0.30041281811786513 0 0.38188073755438651 3.7847829395531996e-07 -0.92421161120425999 0
		 -104.563 191.08600000000001 74.186300000000003 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_Leg0202_JNT" -p "R_Leg0201_JNT";
	rename -uid "E91795F1-493D-1FFF-98CC-D9B4C49BB706";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -216.79574221091289 -0.00024346948636377874 1.1146310768594958e-05 ;
	setAttr ".r" -type "double3" -1.5353532407016159e-20 -1.4393936728427502e-15 2.3771387378892356e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.1716916392441199 6.2791253655556991 -104.58010981565364 ;
	setAttr ".bps" -type "matrix" 0.51486958677737815 0.79075470262551883 0.33108353762656184 0
		 0.66510978541880517 -0.61213315567406057 0.42769378422496068 0 0.54086808183867052 3.7871534273639635e-07 -0.84110743549680589 0
		 -228.26403136885693 361.63199526019889 23.073560102502078 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_Leg0203_JNT" -p "R_Leg0202_JNT";
	rename -uid "1C525075-4A51-05EC-F708-869D385B3019";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -236.20571034186543 0.00035779848980155293 -0.00012965868936021252 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -119.60444610078721 7.4737457326276813 -41.970632041862935 ;
	setAttr ".bps" -type "matrix" -0.13181777203139028 0.98880782811896295 0.069879568024851874 0
		 -0.87364018288946621 -0.14919476884466704 0.46313470156126968 0 0.46837688437575631 -2.1407923902316327e-07 0.88352877382822892 0
		 -349.87900000000008 174.85099999999989 -55.129999999999903 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode ikEffector -n "effector6" -p "R_Leg0202_JNT";
	rename -uid "D121EA54-44F6-F22F-D9F6-BFAB1CF29143";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "R_Leg0301_JNT" -p "Base_JNT";
	rename -uid "5D34252D-4201-FC85-79BB-28AD87ACF66E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -100.70296162861196 -0.29882658506701887 -43.274898733937398 ;
	setAttr ".r" -type "double3" 3.5340549916377345e-05 -4.3772669042192653e-05 -1.0297391085903347e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -153.19359865422737 -23.54428763191466 -51.671071081760445 ;
	setAttr ".bps" -type "matrix" 0.56854702554301029 -0.71915800845621669 0.39945717995735625 0
		 -0.58843865786980754 -0.69484657218146473 -0.41343462246411827 0 0.5748862719447867 9.7800790693769415e-07 -0.81823332511482816 0
		 -100.468 191.08600000000001 58.595599999999997 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_Leg0302_JNT" -p "R_Leg0301_JNT";
	rename -uid "B3CE045E-49FD-9800-9601-43B2C9A57C50";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -234.72462989370658 0.00014013169779047985 -5.3026695681523961e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.17830105783822275 0.13207795982781625 -101.7252130270743 ;
	setAttr ".bps" -type "matrix" 0.45929444908029587 0.82649132730615271 0.32551604404658968 0
		 0.67446927899806164 -0.56294943117986385 0.47768099148082377 0 0.57804826851385227 0.00015434371209006815 -0.81600255848015313 0
		 -233.92010309097839 359.88999999989886 -35.166853270960225 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_Leg0303_JNT" -p "R_Leg0302_JNT";
	rename -uid "EB029595-4E68-FED7-D3AA-82AF9178E6D7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -236.20467719491896 -0.00020920537411939222 -0.00044764919483952781 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -112.99465501109388 6.5857992258072029 -37.050149187161786 ;
	setAttr ".bps" -type "matrix" -0.10584447381973418 0.99220586735887817 0.065760657998835112 0
		 -0.84279084906571977 -0.12460945701859626 0.52361824639007182 0 0.52773149621081705 -3.8301838969281713e-07 0.84941124781047384 0
		 -342.40800003884766 164.66900053210347 -112.0550000272942 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode ikEffector -n "effector7" -p "R_Leg0302_JNT";
	rename -uid "8D28F910-4602-51D7-63DA-F8883D836073";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "R_Leg0401_JNT" -p "Base_JNT";
	rename -uid "C31EC28A-436C-9921-409E-628000B3F375";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -89.012761628611955 -15.946826585067043 -147.2262987339374 ;
	setAttr ".r" -type "double3" 4.4509230401679882e-05 -5.1755200118510401e-05 -8.7699212135678529e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -163.98648783459262 -13.418392893817732 -51.042026703926858 ;
	setAttr ".bps" -type "matrix" 0.61158663169765393 -0.75637969495141255 0.2320593652364118 0
		 -0.70718249757133733 -0.65413282830308184 -0.26833404194208482 0 0.35476006970554552 1.1913884718495196e-06 -0.93495737493272779 0
		 -88.777799999999999 175.43799999999999 -45.355800000000002 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_Leg0402_JNT" -p "R_Leg0401_JNT";
	rename -uid "80CD731F-45EE-A176-97CD-64B6B621198C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -234.72458030787146 -0.00010708447127427689 0.00011019506808374047 ;
	setAttr ".r" -type "double3" 9.8305690207717841e-20 7.1175463969984021e-15 -4.1460529363023149e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -12.111104995432507 9.3235589952724407 -104.33100170930096 ;
	setAttr ".bps" -type "matrix" 0.46926802375077031 0.81015281829023678 0.35134019539675959 0
		 0.65892222341299256 -0.58612886378921858 0.4714599225020486 0 0.58788521445731612 0.010264796614960464 -0.80887922990575634 0
		 -232.3321006260627 352.9789764984655 -99.8259114049104 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_Leg0403_JNT" -p "R_Leg0402_JNT";
	rename -uid "9F20EC57-4270-1188-3F06-E28EA65550DF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -220.09299632959795 1.6906098835534067e-05 -0.00051895294878789855 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -60.519070236781111 8.5704833189046425 -32.692270322018331 ;
	setAttr ".bps" -type "matrix" -0.049019199715801848 0.98571675609712206 0.16111981507123579 0
		 -0.11346843983528399 -0.1657652873014574 0.97961563007498609 0 0.99233161353479438 0.029737960172684375 0.11997342415801471 0
		 -335.61500000000001 174.66999999999999 -177.15300000000002 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode ikEffector -n "effector8" -p "R_Leg0402_JNT";
	rename -uid "B3A591DF-48FC-DDC8-0799-C4BAB4459606";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Base_JNT_parentConstraint1" -p "Base_JNT";
	rename -uid "BD239A2A-4042-F9AD-33FD-5887E70C9C95";
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
	setAttr ".rst" -type "double3" 0.23496162861195566 191.38482658506703 101.8704987339374 ;
	setAttr -k on ".w0";
createNode joint -n "L_Digit02_JNT";
	rename -uid "C38A83FC-41D5-F843-CDBA-28BD3F625EAF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 147.26364978976093 4.0070507690376749 -97.593308208817689 ;
	setAttr ".bps" -type "matrix" -0.13181759830816908 -0.98880787498365896 -0.069879232584273462 0
		 -0.83878509571440552 0.073694937691174633 0.53945214742928749 0 -0.52826478586372017 0.12972294526796194 -0.83911159775524702 0
		 350.3485961383015 174.85148274112888 -55.129997047587231 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_DigitEnd_JNT" -p "L_Digit02_JNT";
	rename -uid "F54283A4-4CE4-2B48-2496-BEACBFFE1082";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 176.83059284293995 5.6843418860808015e-14 4.2632564145606011e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 123.92862284121831 46.57684638437604 -150.62854405522262 ;
	setAttr ".bps" -type "matrix" 0.74542663887204641 0.4732567038067117 0.46943286885552654 0
		 -0.35605266398947211 0.87803864734602188 -0.31980405599799405 0 -0.56352961459529682 0.071247639040001726 0.82301770783215933 0
		 327.03921208233538 8.2422957348171622e-13 -67.486783172873999 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_Digit02_JNT_parentConstraint1" -p "L_Digit02_JNT";
	rename -uid "5A649949-49AA-BE96-E315-4BA35AE17F8D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Digit01_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -5.6843418860808015e-14 -1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 1.8288189418415221e-14 -3.2998254820183988e-14 ;
	setAttr ".lr" -type "double3" 6.3611093629270264e-15 -1.9083328088781104e-14 4.4527765540489235e-14 ;
	setAttr ".rst" -type "double3" 350.3485961383015 174.85148274112888 -55.129997047587231 ;
	setAttr ".rsrr" -type "double3" 6.361109362927028e-15 -1.5902773407317587e-14 3.8166656177562201e-14 ;
	setAttr -k on ".w0";
createNode joint -n "L_Digit03_JNT";
	rename -uid "4CED0FBD-49F8-2323-F726-9DA0F9590AF8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 145.07229075078115 3.7704820895843292 -96.089019423769614 ;
	setAttr ".bps" -type "matrix" -0.10584390897871621 -0.99220598185766073 -0.065759839552577651 0
		 -0.81924328290206083 0.04952913790920499 0.57130316638176004 0 -0.56359339097611783 0.11434226717992985 -0.81810044345678889 0
		 342.87794511265696 164.66885433895118 -112.05539459497444 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_DigitEnd_JNT" -p "L_Digit03_JNT";
	rename -uid "43999D34-412C-2AF5-8DD8-9B87AA8F0233";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 165.96236845330276 1.1368683772161603e-13 1.1368683772161603e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 48.621637060949823 233.83599381846039 28.364707730659084 ;
	setAttr ".bps" -type "matrix" -0.17037575276745909 0.59363193250621826 -0.78649426671645528 0
		 0.098464242162721399 0.80442568278728566 0.58583625176966536 0 0.98044729378189577 0.022370730456162412 -0.19550614960817764 0
		 325.31183929219327 -4.0368095710618945e-07 -122.96905331622943 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_Digit03_JNT_parentConstraint1" -p "L_Digit03_JNT";
	rename -uid "1665E3E0-44B4-1569-8424-98A5A6AC68BC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Digit02_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 0 4.2632564145606011e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 3.1805546814635176e-15 2.385416011097638e-15 ;
	setAttr ".lr" -type "double3" 0 -6.3611093629270335e-15 0 ;
	setAttr ".rst" -type "double3" 342.87794511265696 164.66885433895118 -112.05539459497444 ;
	setAttr ".rsrr" -type "double3" 0 -6.3611093629270335e-15 0 ;
	setAttr -k on ".w0";
createNode joint -n "L_Digit04_JNT";
	rename -uid "07A55629-4CAE-BA33-AF00-64A63D82B277";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 143.2942787075514 9.271839613688849 -92.846912182836576 ;
	setAttr ".bps" -type "matrix" -0.049018642562832504 -0.98571695455176367 -0.16111877044743578 0
		 -0.80550955164549731 -0.056363406990105558 0.58989620151373878 0 -0.59055189009025033 0.15869861959596226 -0.79124156440948479 0
		 336.08481461767821 174.67000709669267 -177.15339942989723 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_DigitEnd_JNT" -p "L_Digit04_JNT";
	rename -uid "EE54EF65-4789-6BD7-BADD-7DA671C8C7FE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 177.20097670037566 0 4.2632564145606011e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -68.019691053778018 -59.066170649994056 157.60205255651633 ;
	setAttr ".bps" -type "matrix" -0.6410319669939426 0.5935651884145916 -0.4865782407734926 0
		 0.35915795493131736 0.7922565869486814 0.4932900402866251 0 0.67829461202447316 0.14145623895317092 -0.72104545748502746 0
		 327.39866327901768 3.4106051316484809e-13 -205.70380291794652 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode parentConstraint -n "L_Digit04_JNT_parentConstraint1" -p "L_Digit04_JNT";
	rename -uid "DA77F517-4185-C88C-C007-F094C3977423";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Digit03_CTLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0 -5.6843418860808015e-14 -5.6843418860808015e-14 ;
	setAttr ".tg[0].tor" -type "double3" 3.1805546814635168e-15 1.2722218725854067e-14 
		-3.8961794847928081e-14 ;
	setAttr ".lr" -type "double3" 1.5902773407317552e-14 -4.4527765540489247e-14 8.269442171805143e-14 ;
	setAttr ".rst" -type "double3" 336.08481461767821 174.67000709669264 -177.15339942989726 ;
	setAttr ".rsrr" -type "double3" -6.1794688172702219e-30 -1.5902773407317584e-14 
		4.4527765540489235e-14 ;
	setAttr -k on ".w0";
createNode joint -n "R_Digit02_JNT";
	rename -uid "85E561CB-4F19-8405-C10B-FBB93B50551B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 32.092585129538747 4.0070642451527467 -82.406472761353939 ;
	setAttr ".bps" -type "matrix" 0.13182137614180922 -0.98880735477354853 -0.069879467211887467 0
		 0.84466724311648855 0.075150904436580679 0.52999017912443891 0 -0.5188066819134759 -0.12888893167414153 0.84511967797101262 0
		 -350.34900000000022 174.85100000000008 -55.129999999999988 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_DigitEnd_JNT" -p "R_Digit02_JNT";
	rename -uid "4E8750D8-42EC-E73D-7AA4-76B53179FCEF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 176.83019766781871 1.1368683772161603e-13 -1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -140.23839348732918 -42.673617477617832 35.437291376465524 ;
	setAttr ".bps" -type "matrix" 0.087382062281002593 -0.64764911329951191 0.75691148837487932 0
		 0.03258143570766206 -0.75755331914902468 -0.65195967566523927 0 0.99564191617204778 0.081630843978559228 -0.045095233368967869 0
		 -327.0390000000001 5.6843418860808015e-13 -67.48679999999986 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode parentConstraint -n "R_Digit02_JNT_parentConstraint1" -p "R_Digit02_JNT";
	rename -uid "20F596C5-4E42-2CB1-EE7D-54BC511F61F1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Digit01_CTRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 5.6843418860808015e-14 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 2.8624992133171654e-14 7.9513867036587935e-15 
		2.7829853462805776e-15 ;
	setAttr ".lr" -type "double3" -2.7034714792439894e-14 -1.590277340731759e-14 -1.8288189418415217e-14 ;
	setAttr ".rst" -type "double3" -350.34900000000022 174.85100000000008 -55.129999999999995 ;
	setAttr ".rsrr" -type "double3" -2.3854160110976374e-14 -3.1805546814635168e-15 
		-7.951386703658785e-16 ;
	setAttr -k on ".w0";
createNode joint -n "R_Digit03_JNT";
	rename -uid "5CE94EEF-474C-431D-2557-839A8B61DAAE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 35.945944829197288 3.7705966310555818 -83.911022312548567 ;
	setAttr ".bps" -type "matrix" 0.1058431722751908 -0.99220592823541576 -0.065761834351100168 0
		 0.80909866644880835 0.047487629105728346 0.58575103331763478 0 -0.57806277412880036 -0.11520556000651211 0.80781873468625465 0
		 -342.87800000000004 164.66900000000004 -112.05500000000018 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_DigitEnd_JNT" -p "R_Digit03_JNT";
	rename -uid "92A4AEE0-4E7F-45F3-0484-37B2D31B141D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 165.96252382089156 -5.6843418860808015e-14 -9.9475983006414026e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -131.37704574683079 -53.83654869556883 28.363620748054309 ;
	setAttr ".bps" -type "matrix" -0.18491616040567199 -0.59490094869915655 0.78223965308444154 0
		 0.10785915272012256 -0.8034435558853017 -0.58552955150092956 0 0.97681749410794327 -0.023902170261836289 0.21273520973607807 0
		 -325.31199999999995 2.8421709430404007e-14 -122.96900000000028 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode parentConstraint -n "R_Digit03_JNT_parentConstraint1" -p "R_Digit03_JNT";
	rename -uid "44D68C2D-4816-BF00-08AE-40AA71FDCE1B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Digit02_CTRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 -1.1368683772161603e-13 
		-2.8421709430404007e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.192708005548819e-15 -1.192708005548819e-15 ;
	setAttr ".rst" -type "double3" -342.87800000000004 164.66900000000004 -112.05500000000018 ;
	setAttr -k on ".w0";
createNode joint -n "R_Digit04_JNT";
	rename -uid "3F8EE7DA-44B8-7A12-263B-BAB6DE788EDB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 35.762413907077097 9.2720307200744205 -87.153137226849992 ;
	setAttr ".bps" -type "matrix" 0.049017765827038429 -0.9857164600796583 -0.16112206230480308 0
		 0.81512273430054283 -0.053745725275377909 0.57678967140633686 0 -0.57721069520559998 -0.15960719702648377 0.80084540080943034 0
		 -336.08499999999998 174.67000000004109 -177.15300000000033 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_DigitEnd_JNT" -p "R_Digit04_JNT";
	rename -uid "2309A2E6-4343-0AC3-2DF4-CBB9CB78EEFE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 177.20105839695182 1.1368683772161603e-13 -6.0396132539608516e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -68.018530939862003 -59.066036222393265 -22.399110779697491 ;
	setAttr ".bps" -type "matrix" -0.63147966538426514 -0.59485418651180644 0.49737503857306048 0
		 0.35321160030224591 -0.79171199237209366 -0.49843122549268154 0 0.69027168391735649 -0.13907055016640543 0.7100594231881654 0
		 -327.3990000151947 -5.3710778047388885e-09 -205.70399997151105 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode parentConstraint -n "R_Digit04_JNT_parentConstraint1" -p "R_Digit04_JNT";
	rename -uid "0F8857B0-4498-140E-5E8B-36A6E023BD37";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Digit03_CTRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tor" -type "double3" 9.5416640443905519e-15 -1.5902773407317584e-15 
		1.5902773407317584e-15 ;
	setAttr ".lr" -type "double3" -1.5902773407317584e-15 -1.1034765745125399e-32 -7.9513867036587919e-16 ;
	setAttr ".rst" -type "double3" -336.085 174.67000000004109 -177.1530000000003 ;
	setAttr ".rsrr" -type "double3" -1.5902773407317584e-15 -1.1034765745125399e-32 
		-7.9513867036587919e-16 ;
	setAttr -k on ".w0";
createNode transform -n "Master_GRP";
	rename -uid "106161BC-4393-320E-6327-A2A06C1E62DD";
	setAttr ".rp" -type "double3" 0 -5.9164567891575885e-31 1.0658141036401503e-14 ;
	setAttr ".sp" -type "double3" 0 -5.9164567891575885e-31 1.0658141036401503e-14 ;
createNode transform -n "Master_CTL" -p "Master_GRP";
	rename -uid "ACD8A0BD-4282-2CE9-94DB-9FB4FBC7C429";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Master_CTLShape" -p "Master_CTL";
	rename -uid "66074E19-4229-B193-5752-6EA2FC63CB2E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 366.29117105043451 0 -284.94624474972704 
		3.1719205791671491e-14 0 -297.04600601442218 -366.29117105043451 0 -284.94624474972704 
		-398.53168595140488 0 -61.622935719551073 -204.22803120177269 0 220.18152193439465 
		-3.9921191550052668e-14 0 336.90875023185373 204.22803120177269 0 220.18152193439465 
		398.53168595140488 0 -61.622935719550995 0 0 0 0 0 0 0 0 0;
createNode transform -n "Base_GRP" -p "Master_CTL";
	rename -uid "685F0F69-4A82-A53C-DCC9-6993FFC1D8B8";
	setAttr ".t" -type "double3" 0.23496162861195566 191.38482658506703 101.8704987339374 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "Base_CTL" -p "Base_GRP";
	rename -uid "A2B5293C-49E9-F0C4-32A8-7AA4F6A87D81";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Base_CTLShape" -p "Base_CTL";
	rename -uid "A1F66507-428F-AF29-88C6-3A9E06FA5806";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 88.713927379375292 86.480463566299164 
		-173.73462244854113 9.5675881761538764e-15 53.774925760581397 -210.48113434046024 
		-88.713927379375292 86.480463566299164 -173.73462244854113 -125.46043927129439 143.54138552966745 
		-85.020695069165868 -88.713927379375292 169.66023521511519 3.6932323102094387 -1.0682106100635608e-14 
		169.66023521511519 8.8770154427829482 88.713927379375292 169.66023521511519 3.6932323102094387 
		125.46043927129439 143.54138552966745 -85.020695069165839 0 0 0 0 0 0 0 0 0;
createNode transform -n "Head_GRP" -p "Base_CTL";
	rename -uid "62ADA2CD-4D77-09D0-D0DA-4D8E41E8888D";
	setAttr ".t" -type "double3" -0.23496162861189693 88.615173414933025 95.70869431387932 ;
	setAttr ".r" -type "double3" 0 89.999999999998636 0 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "Head_CTL" -p "Head_GRP";
	rename -uid "12702CE4-4F5B-5C05-9308-EC999E07B701";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Head_CTLShape" -p "Head_CTL";
	rename -uid "BC581EBD-4E64-5576-77E2-999B17C5F15B";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 6.5383362179477582e-15 106.77913374697101 
		-106.77913374697101 2.8421709430404007e-14 139.48756838843744 -6.2209045673287361e-15 
		-6.5383362179477582e-15 106.77913374697101 106.77913374697101 -9.2466037547769308e-15 
		7.8283072606606001e-15 114.53103035621238 2.1883373212456248e-14 -221.08893574596073 
		74.834378535548268 2.8421709430404007e-14 -229.49919289040972 1.2209136805865638e-14 
		3.4960045648351766e-14 -221.08893574596073 -74.834378535548268 9.2466037547769308e-15 
		-2.0592975707707589e-14 -114.53103035621238 0 0 0 0 0 0 0 0 0;
createNode transform -n "Eyes_GRP" -p "Head_CTL";
	rename -uid "89778A6C-45F6-277C-4EAA-F099BEE7C52A";
	setAttr ".t" -type "double3" 40.901090619754484 0 -1.0218411716009096e-12 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" -3.3132158019282457e-29 7.1054273576009983e-16 -1.4210854715201997e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "Eyes_CTL" -p "Eyes_GRP";
	rename -uid "6C49DD8F-47BA-6117-698D-3B82AAFE3EA7";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "Eyes_CTLShape" -p "Eyes_CTL";
	rename -uid "E999A257-4884-4E78-B60B-AFAB4DCBF338";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -87.130141978961547 26.783913611555153 
		-54.279691552656168 -124.09969182859038 23.420809062716042 3.3422108012918423e-12 
		-87.130141978961547 26.783913611555157 52.5047722706163 -87.130141978961547 1.9636112228733183e-15 
		53.491057806679599 -87.130141978961547 -26.783913611555157 52.5047722706163 -141.50164031272698 
		-23.420809062716078 3.3483244530959195e-12 -87.130141978961547 -26.783913611555157 
		-54.279691552656168 -87.130141978961547 -5.1654331984664601e-15 -52.656977635669115 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "L_Face_GRP" -p "Head_CTL";
	rename -uid "BB62F815-49E0-8037-F0B4-319EFE90E6CE";
	setAttr ".t" -type "double3" 1.7053025658242404e-12 -80.000000000000568 59.999999999998991 ;
	setAttr ".r" -type "double3" -131.72892993569886 10.377106082749737 -99.126571417694009 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.1295114199582711e-15 1.3530463051136558e-15 1.3040152470849015e-15 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "L_Face_CTL" -p "L_Face_GRP";
	rename -uid "E28E5BD2-4C29-6F05-098F-3B87C3099905";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Face_CTLShape" -p "L_Face_CTL";
	rename -uid "DCA035D1-4DD3-ADE5-C253-7D891CE6367D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 21.093984742696545 20.726106852985978 
		-7.0486831804717323 1.1628940310015787 27.353470249150767 -10.654353321254254 -18.768196680693382 
		20.733770288335972 -15.045675051752848 -27.023924766365777 4.7447374287463493 -17.650271658985183 
		-18.768196680693382 -11.247469729699651 -16.942405774945193 1.1628940310015787 -17.874833125864441 
		-13.336735634162611 21.093984742696545 -11.255133165049635 -8.9454139036640878 29.349712828369004 
		4.7338996945399696 -6.3408172964317409 0 0 0 0 0 0 0 0 0;
createNode transform -n "L_Mandible_GRP" -p "L_Face_CTL";
	rename -uid "F889B3E0-4581-326D-7F81-4F9A5A10A713";
	setAttr ".t" -type "double3" 119.50966144876364 0 -1.1368683772161603e-13 ;
	setAttr ".r" -type "double3" 17.019089260408741 10.739295047301978 134.88195243295451 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 0.99999999999999967 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002497e-15 0 ;
	setAttr ".rpt" -type "double3" 1.2719041645381419e-15 2.9062994630441815e-15 -5.1081609644494143e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 0 7.8886090522101119e-31 0 ;
createNode transform -n "L_Mandible_CTL" -p "L_Mandible_GRP";
	rename -uid "BF3EBDF4-4974-21CD-876E-D39466D1259A";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Mandible_CTLShape" -p "L_Mandible_CTL";
	rename -uid "BA432B43-4413-3033-6C7B-D7A5CD59D296";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 20.45442994435578 -9.388287451545299 
		-8.2794090374780112 24.440987656519994 -9.574462232898842 -12.365297139405628 27.42826172764789 
		-8.2852112675294247 -15.804641250364233 80.822238123275937 -3.2262048441530009 -13.046164368321403 
		28.279992038555928 -9.7606115268807603 -12.481711943603766 23.82765253163522 -8.8556340893495307 
		-8.4872654820746085 20.020736518409876 -8.8799991967338396 -5.5372265549231283 18.623501973855401 
		-9.1006314433989459 -5.4511295965445328 0 0 0 0 0 0 0 0 0;
createNode transform -n "R_Face_GRP" -p "Head_CTL";
	rename -uid "CD5AA237-4D6E-97D6-2D65-F899C51F517F";
	setAttr ".t" -type "double3" 0.00019304781528604333 -80.000000000000057 -60.000000000000057 ;
	setAttr ".r" -type "double3" -131.72892993569616 10.377106082750155 80.873428582306502 ;
	setAttr ".rp" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".rpt" -type "double3" -1.8072182719331352e-14 3.5194677978989519e-14 2.0864243953359257e-14 ;
	setAttr ".sp" -type "double3" 0 -2.8421709430404007e-14 0 ;
createNode transform -n "R_Face_CTR" -p "R_Face_GRP";
	rename -uid "5CF14D8B-483A-BB84-7AC2-4FA9844989BB";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" 0 -2.8421709430404007e-14 0 ;
createNode nurbsCurve -n "R_Face_CTRShape" -p "R_Face_CTR";
	rename -uid "1CCB6AC5-4A5C-1E76-AB39-279093CB9954";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-21.093984742696549 -24.644164977442092 10.966741304927863
		-1.1628940310015778 -32.894441186922698 10.654353321254263
		18.768196680693386 -24.651828412792089 11.127616927296733
		27.023924766365784 -4.7447374287463466 12.109300721213247
		18.768196680693386 15.165527854155776 13.024347650489076
		-1.1628940310015794 23.41580406363639 13.336735634162617
		-21.093984742696549 15.173191289505768 12.863472028120217
		-29.349712828369011 -4.7338996945399563 11.881788234203691
		-21.093984742696549 -24.644164977442092 10.966741304927863
		-1.1628940310015778 -32.894441186922698 10.654353321254263
		18.768196680693386 -24.651828412792089 11.127616927296733
		;
createNode transform -n "R_Mandible_GRP" -p "R_Face_CTR";
	rename -uid "EEDA4603-44A1-E0CB-7F2D-F1B937AB9AD9";
	setAttr ".t" -type "double3" 119.50966144876364 0 -1.1368683772161603e-13 ;
	setAttr ".r" -type "double3" 17.019089260408741 10.739295047301978 134.88195243295451 ;
	setAttr ".rp" -type "double3" 165.70950235530529 171.14223080374683 -19.517540394898759 ;
	setAttr ".rpt" -type "double3" -404.72882525283256 -171.14223080374691 19.517540394899015 ;
	setAttr ".sp" -type "double3" 165.70950235530529 171.14223080374683 -19.517540394898759 ;
createNode transform -n "R_Mandible_CTR" -p "R_Mandible_GRP";
	rename -uid "95049F57-4D87-6790-32D5-6D911805E865";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 165.70950235530535 171.14223080374671 -19.517540394898759 ;
	setAttr ".sp" -type "double3" 165.70950235530535 171.14223080374671 -19.517540394898759 ;
createNode nurbsCurve -n "R_Mandible_CTRShape" -p "R_Mandible_CTR";
	rename -uid "B5EC2D00-42F8-0D9C-26D6-22AB25D5E375";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		145.25507241094954 176.61246013083604 -7.3200732329646208
		141.26851469878534 175.17572209887376 -7.1522432554931274
		138.28124062765744 175.50938394682015 -7.6309572689906453
		84.887264232029381 174.36843564789984 -12.012346964349291
		137.4295103167494 184.82090045508374 -10.95388657575111
		141.88184982367011 185.53883583086832 -11.030274912824146
		145.68876583689544 183.94028812493681 -10.062255715519504
		147.08600038144991 180.24286224714581 -8.5254398605822796
		145.25507241094954 176.61246013083604 -7.3200732329646208
		141.26851469878534 175.17572209887376 -7.1522432554931274
		138.28124062765744 175.50938394682015 -7.6309572689906453
		;
createNode joint -n "R_LegIK01_JNT" -p "Base_CTL";
	rename -uid "7937205B-46E5-8EFF-830C-188AA1ABBEA6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -89.680061628611952 66.590173414932991 53.3965012660626 ;
	setAttr ".r" -type "double3" -1.7420429863852434e-06 -4.2770216756454926e-05 2.1004875506583464e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -147.50510040914995 -25.057740267701128 -56.378409090780032 ;
	setAttr ".bps" -type "matrix" 0.50159169147411187 -0.754339161337785 0.42353064200403101 0
		 -0.57635736224846268 -0.65648490437474383 -0.48666185520346478 0 0.64514956872506213 5.3947059397430063e-07 -0.76405630288191162 0
		 -89.445099999999996 257.97500000000002 155.267 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_LegIK02_JNT" -p "R_LegIK01_JNT";
	rename -uid "CB75E4F0-4F0C-495F-315F-888F42CA55AF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -117.05399878977252 0.00058995580957343918 -0.00043114562797086364 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 57.939931455078501 -21.684200227027837 -125.93750266497973 ;
	setAttr ".bps" -type "matrix" 0.39845287573367372 0.90530832555222174 -0.14714666664725679 0
		 0.84924833886901863 -0.42475503020622785 -0.31362465343578999 0 -0.34642829669035219 5.8284217121988015e-07 -0.93807645490753144 0
		 -148.15903142556084 346.27302798099527 105.69108705397431 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "R_LegIK03_JNT" -p "R_LegIK02_JNT";
	rename -uid "D6EF4198-4458-6D72-4D52-BE8F0A6078F8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -227.40983771350676 2.0214662356465851e-05 -0.00034080751564147249 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -167.55918502503644 2.7554289453750092 -36.261401195047767 ;
	setAttr ".bps" -type "matrix" -0.16415866695494705 0.98006992097998447 0.11186993364556178 0
		 -0.8224120222694794 -0.19860208521112738 0.53310006319303482 0 0.54469293890246151 -0.0044901826332321903 0.83862353924136901 0
		 -238.77100000000007 140.39699999999982 139.15400000000005 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode ikEffector -n "effector5" -p "R_LegIK02_JNT";
	rename -uid "5C64600B-4226-A1D6-39D5-B2B59DFF3EF1";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "L_LegIK01_JNT" -p "Base_CTL";
	rename -uid "44518C90-49AB-AEE3-EF71-108B35A17613";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 89.680023220578505 66.589789334647634 53.396748102283524 ;
	setAttr ".r" -type "double3" 4.8463672900391791e-06 0.00011900024114685507 -5.8441903240812539e-05 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 32.494899590850075 25.057740267701131 56.378409090780025 ;
	setAttr ".bps" -type "matrix" 0.50159067093091059 0.75433825266054799 -0.42353346905304884 0
		 -0.57635659391514438 0.65648594849451825 0.48666135667400812 0 0.64515104858134753 1.5112222175595043e-06 0.76405505332541579 0
		 89.914984849190461 257.97461591971467 155.26724683622092 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_LegIK02_JNT" -p "L_LegIK01_JNT";
	rename -uid "D6F7B72D-4F9E-1F27-8A32-BD95515AC810";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 117.05436267333289 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 57.939931455078515 -21.684200227027866 -125.93750266497966 ;
	setAttr ".bps" -type "matrix" 0.39845340103553245 -0.9053078578312167 0.1471481218102054 0
		 0.84924883356340386 0.42475602708659466 0.31362196374745521 0 -0.34642647978238528 1.6327137466168849e-06 0.93807712588193881 0
		 148.62836115789764 346.27319932501064 105.69080654539053 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode joint -n "L_LegIK03_JNT" -p "L_LegIK02_JNT";
	rename -uid "9F88C5AB-4DE6-4AF3-08BB-6188DE125B62";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 227.40962346460017 1.1368683772161603e-13 2.1316282072803006e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -167.55918502503638 2.7554289453749741 -36.261401195047767 ;
	setAttr ".bps" -type "matrix" -0.16415862348208088 -0.98007023973112783 -0.11186720488971851 0
		 -0.82241310751561991 0.19860055557973536 -0.53309895883402603 0 0.54469131342712851 0.0044882643405157116 -0.83862460526760096 0
		 239.24049905557749 140.39748025606991 139.15370551977253 1;
	setAttr ".radi" 2;
	setAttr ".liw" yes;
createNode ikEffector -n "effector1" -p "L_LegIK02_JNT";
	rename -uid "09C05338-488A-91E9-F04C-2488A47588FD";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "L_Leg01_POL" -p "Master_CTL";
	rename -uid "8CFCCC6B-4AB9-209D-396A-509E48FA9575";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 84.361879309416082 492.29015104193655 81.957310812099294 ;
	setAttr ".sp" -type "double3" 84.361879309416082 492.29015104193655 81.957310812099294 ;
createNode mesh -n "L_Leg01_POLShape" -p "L_Leg01_POL";
	rename -uid "201B13E3-4960-F7AF-12E7-4EA856780241";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  84.361877 492.29016 81.957314 
		84.361877 492.29016 81.957314 84.361877 492.29016 81.957314 84.361877 492.29016 81.957314 
		84.361877 492.29016 81.957314 84.361877 492.29016 81.957314 84.361877 492.29016 81.957314 
		84.361877 492.29016 81.957314;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
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
createNode transform -n "L_Leg02_POL" -p "Master_CTL";
	rename -uid "A2AA6409-4049-219F-B757-A6B60FEF22E5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 145.69052944880917 489.17241989719679 76.473905981434882 ;
	setAttr ".sp" -type "double3" 145.69052944880917 489.17241989719679 76.473905981434882 ;
createNode mesh -n "L_Leg02_POLShape" -p "L_Leg02_POL";
	rename -uid "24D59E18-4E54-1B5F-EE35-608C34DB467E";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  145.69054 489.17242 76.473907 
		145.69054 489.17242 76.473907 145.69054 489.17242 76.473907 145.69054 489.17242 76.473907 
		145.69054 489.17242 76.473907 145.69054 489.17242 76.473907 145.69054 489.17242 76.473907 
		145.69054 489.17242 76.473907;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
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
	rename -uid "CBD5F188-42E3-F2B9-A41A-99AD73388BD5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 160.31059350031063 493.19490900721888 17.335318490688504 ;
	setAttr ".sp" -type "double3" 160.31059350031063 493.19490900721888 17.335318490688504 ;
createNode mesh -n "L_Leg03_POLShape" -p "L_Leg03_POL";
	rename -uid "9DC1756D-4938-EC22-EAD6-48A8331B7A69";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  160.31059 493.19492 17.335318 
		160.31059 493.19492 17.335318 160.31059 493.19492 17.335318 160.31059 493.19492 17.335318 
		160.31059 493.19492 17.335318 160.31059 493.19492 17.335318 160.31059 493.19492 17.335318 
		160.31059 493.19492 17.335318;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
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
	rename -uid "46CFB51C-4EE4-FBFE-B837-6E8FE0DA385D";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 157.11391878486319 483.64834390889217 -43.158642255743359 ;
	setAttr ".sp" -type "double3" 157.11391878486319 483.64834390889217 -43.158642255743359 ;
createNode mesh -n "L_Leg04_POLShape" -p "L_Leg04_POL";
	rename -uid "708683B6-43D0-D1E9-AF1C-CA8FAEC223D8";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  157.11392 483.64835 -43.158642 
		157.11392 483.64835 -43.158642 157.11392 483.64835 -43.158642 157.11392 483.64835 
		-43.158642 157.11392 483.64835 -43.158642 157.11392 483.64835 -43.158642 157.11392 
		483.64835 -43.158642 157.11392 483.64835 -43.158642;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
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
	rename -uid "9B9AB5F7-4E1D-2573-C8E6-48BF06582D8E";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -84.413937076718582 491.10545531506665 82.150212005806267 ;
	setAttr ".sp" -type "double3" -84.413937076718597 491.10545531506676 82.150212005806281 ;
	setAttr ".spt" -type "double3" 1.4210854715202002e-14 -1.13686837721616e-13 -1.4210854715202001e-14 ;
createNode mesh -n "R_Leg01_POLShape" -p "R_Leg01_POL";
	rename -uid "4B0BEE46-40D4-370B-0C71-20B7D46FEE33";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -84.41394 491.10547 82.150208 
		-84.41394 491.10547 82.150208 -84.41394 491.10547 82.150208 -84.41394 491.10547 82.150208 
		-84.41394 491.10547 82.150208 -84.41394 491.10547 82.150208 -84.41394 491.10547 82.150208 
		-84.41394 491.10547 82.150208;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
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
createNode transform -n "R_Leg02_POL" -p "Master_CTL";
	rename -uid "40D0751F-4583-1E79-23F5-2E8A248A016B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -146.84664656909229 486.67558731188808 75.428345616993667 ;
	setAttr ".sp" -type "double3" -146.84664656909229 486.67558731188808 75.428345616993667 ;
createNode mesh -n "R_Leg02_POLShape" -p "R_Leg02_POL";
	rename -uid "75F3BB10-4AB4-B87A-54FD-2B9C00ADE0CE";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -146.84665 486.6756 75.428345 
		-146.84665 486.6756 75.428345 -146.84665 486.6756 75.428345 -146.84665 486.6756 75.428345 
		-146.84665 486.6756 75.428345 -146.84665 486.6756 75.428345 -146.84665 486.6756 75.428345 
		-146.84665 486.6756 75.428345;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
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
	rename -uid "4B7440B8-48A4-C982-75CF-1482AF3DFFBF";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -161.29080354784966 490.5846866895024 16.307388980794371 ;
	setAttr ".sp" -type "double3" -161.29080354784966 490.5846866895024 16.307388980794371 ;
createNode mesh -n "R_Leg03_POLShape" -p "R_Leg03_POL";
	rename -uid "37F164D8-4F3D-49C3-4D04-F38A26E4B13A";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -161.2908 490.58469 16.307388 
		-161.2908 490.58469 16.307388 -161.2908 490.58469 16.307388 -161.2908 490.58469 16.307388 
		-161.2908 490.58469 16.307388 -161.2908 490.58469 16.307388 -161.2908 490.58469 16.307388 
		-161.2908 490.58469 16.307388;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
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
	rename -uid "CA7BF744-46A8-2FE8-4D59-AFA0F474B247";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -158.12565941635634 481.09006290640713 -44.268124827453761 ;
	setAttr ".sp" -type "double3" -158.12565941635634 481.09006290640713 -44.268124827453761 ;
createNode mesh -n "R_Leg04_POLShape" -p "R_Leg04_POL";
	rename -uid "4DDFAE2B-4A1B-53EC-E76D-0C81D552054A";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -158.12566 481.09006 -44.268124 
		-158.12566 481.09006 -44.268124 -158.12566 481.09006 -44.268124 -158.12566 481.09006 
		-44.268124 -158.12566 481.09006 -44.268124 -158.12566 481.09006 -44.268124 -158.12566 
		481.09006 -44.268124 -158.12566 481.09006 -44.268124;
	setAttr -s 8 ".vt[0:7]"  -5 -5 5 5 -5 5 -5 5 5 5 5 5 -5 5 -5 5 5 -5
		 -5 -5 -5 5 -5 -5;
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
createNode transform -n "L_Leg0101_GRP" -p "Master_CTL";
	rename -uid "83CAF91F-4F3F-1CA7-FCC5-698DF74ED516";
	setAttr ".t" -type "double3" 239.24049905557752 140.39748025606997 139.1537055197725 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.4608991482595288e-15 1.4235713840631039e-15 9.4697398169178553e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "L_Leg0101_CTL" -p "L_Leg0101_GRP";
	rename -uid "8C7B03A4-436A-5DDC-56CF-D09D6755D513";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg0101_CTLShape" -p "L_Leg0101_CTL";
	rename -uid "94B1B508-4663-0F2A-83B1-5898D425376D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		14.681115634623517 9.8642759462422962 -23.268339234783319
		23.538070211400658 9.913918808249246 -1.8854235039963918
		14.681115634623499 9.8642759462423086 19.497492226790449
		-6.7014642259544805 9.7444274755101468 28.354585925563349
		-28.084044086532543 9.6245790047779689 19.497492226790449
		-36.940998663309657 9.5749361427710298 -1.8854235039963889
		-28.084044086532547 9.6245790047779636 -23.268339234783319
		-6.701464225954485 9.7444274755101432 -32.125432933556219
		14.681115634623517 9.8642759462422962 -23.268339234783319
		23.538070211400658 9.913918808249246 -1.8854235039963918
		14.681115634623499 9.8642759462423086 19.497492226790449
		;
createNode transform -n "L_Leg0102_GRP" -p "L_Leg0101_CTL";
	rename -uid "C1FC5ABB-46B0-4811-77BD-21922FB6D1B8";
	setAttr ".t" -type "double3" -8.5265128291212022e-14 0 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -147.55659507911858 6.4229629716471699 -99.508593305784643 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999956 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.4608991482595288e-15 1.423571384063102e-15 9.4697398169178474e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "L_Leg0102_CTL" -p "L_Leg0102_GRP";
	rename -uid "8336B92D-4C86-9EF7-C0F9-53A45AB055FC";
	addAttr -ci true -sn "Detach" -ln "Detach" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -1.2722218725854067e-14 3.1805546814635168e-15 -3.5311250384401269e-31 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Detach";
createNode nurbsCurve -n "L_Leg0102_CTLShape" -p "L_Leg0102_CTL";
	rename -uid "49EAF43E-465E-94AC-C7FE-73B019C1EF47";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 19.348193037502995 23.713229941588171 
		-17.464857606330746 19.348193037502988 30.947410827045239 6.157765683101076e-14 19.34819303750298 
		23.713229941588157 17.464857606330774 19.348193037502984 6.2483723352574234 24.699038491787856 
		19.348193037502984 -11.216485271073376 17.464857606330774 19.348193037502988 -18.450666156530431 
		6.3555513739265614e-14 19.348193037502988 -11.216485271073379 -17.464857606330746 
		19.348193037502988 6.248372335257419 -24.699038491787828 0 0 0 0 0 0 0 0 0;
createNode ikHandle -n "ikHandle1" -p "L_Leg0101_CTL";
	rename -uid "DB6721F2-4932-8B9A-6CC7-4EAAC895EB4A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 2.8421709430404007e-14 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "6CB075E5-454A-2C8C-1702-66AC174A609F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg01_POLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -5.5531055397743785 234.31553512222189 -73.309936024121626 ;
	setAttr -k on ".w0";
createNode transform -n "L_Leg02_GRP" -p "Master_CTL";
	rename -uid "5CB61C71-4533-0F94-B634-38B68162924D";
	setAttr ".t" -type "double3" 350.34859613830133 174.85148274112905 -55.129997047587281 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.5518967793376574e-15 1.5113342431004074e-15 8.2269254926487866e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "L_Leg02_CTL" -p "L_Leg02_GRP";
	rename -uid "1FE4E6A4-4E3A-6006-FF4C-74A5046D8174";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg02_CTLShape" -p "L_Leg02_CTL";
	rename -uid "778FBA00-4917-BF7C-7D2D-CFB1881EC1B5";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -16.684295892515195 1.1368683772161603e-13 
		9.3489045866932372 -16.684295892515195 1.1368683772161603e-13 9.3489045866932372 
		-16.684295892515195 1.1368683772161603e-13 9.3489045866932372 -16.684295892515195 
		1.1368683772161603e-13 9.3489045866932372 -16.684295892515195 1.1368683772161603e-13 
		9.3489045866932372 -16.684295892515195 1.1368683772161603e-13 9.3489045866932372 
		-16.684295892515195 1.1368683772161603e-13 9.3489045866932337 -16.684295892515195 
		1.1368683772161603e-13 9.3489045866932372 0 0 0 0 0 0 0 0 0;
createNode ikHandle -n "ikHandle2" -p "L_Leg02_CTL";
	rename -uid "C78EC7F1-4D45-5AF8-B4C1-ADB889C052A8";
	setAttr ".v" no;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle2_poleVectorConstraint1" -p "ikHandle2";
	rename -uid "4A3EDC13-4460-2DFE-04D1-DE90FC53C9A1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg02_POLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 40.65777561978571 298.08633128736528 2.287568282556208 ;
	setAttr -k on ".w0";
createNode transform -n "L_Leg03_GRP" -p "Master_CTL";
	rename -uid "5A0A8EEB-49F8-4A55-8BDA-53A07C70A262";
	setAttr ".t" -type "double3" 342.87794232326263 164.66885435018133 -112.05539855136431 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.5518967793376574e-15 1.5113342431004074e-15 8.2269254926487866e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "L_Leg03_CTL" -p "L_Leg03_GRP";
	rename -uid "7C711944-42D4-5666-8939-399463A0EA21";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg03_CTLShape" -p "L_Leg03_CTL";
	rename -uid "B28119AA-4211-A88F-225A-89AAC22D793A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.252948520650271 1.7196972778472059e-13 -18.050495786500427
		-8.2554002260864632 1.7256597627935731e-13 -27.787972666395319
		-31.763748972823201 1.7196972778472059e-13 -18.050495786500424
		-41.501225852718107 1.7053025658242404e-13 5.4578529602363073
		-31.763748972823201 1.690907853801275e-13 28.966201706973045
		-8.2554002260864685 1.6849453688549078e-13 38.703678586867959
		15.252948520650271 1.690907853801275e-13 28.966201706973042
		24.990425400545178 1.7053025658242404e-13 5.4578529602363135
		15.252948520650271 1.7196972778472059e-13 -18.050495786500427
		-8.2554002260864632 1.7256597627935731e-13 -27.787972666395319
		-31.763748972823201 1.7196972778472059e-13 -18.050495786500424
		;
createNode ikHandle -n "ikHandle3" -p "L_Leg03_CTL";
	rename -uid "E9B3A47A-45A2-E2A9-8D75-33A9AE36FB61";
	setAttr ".v" no;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle3_poleVectorConstraint1" -p "ikHandle3";
	rename -uid "DB9D7372-42B0-8EBC-BFA3-178107E4FB0D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg03_POLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 59.372359411225943 302.10882039738732 -41.260290051671817 ;
	setAttr -k on ".w0";
createNode transform -n "L_Leg04_GRP" -p "Master_CTL";
	rename -uid "B7AB2D3B-4F96-0882-B0AC-5D98EA7B0E37";
	setAttr ".t" -type "double3" 336.08481461767838 174.6700070966927 -177.15339942989749 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.5518967793376574e-15 1.5113342431004074e-15 8.2269254926487866e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "L_Leg04_CTL" -p "L_Leg04_GRP";
	rename -uid "36A3532C-48CE-0BE7-9228-EF85C1A30294";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_Leg04_CTLShape" -p "L_Leg04_CTL";
	rename -uid "32BDA047-4EDA-2477-8AE8-0B8ABB112BCC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		21.167614474622575 1.4394712022965418e-15 -19.207696918728367
		-2.34073427211416 2.0357196969332736e-15 -28.945173798623259
		-25.849083018850898 1.4394712022965416e-15 -19.207696918728363
		-35.586559898745804 1.0553206857018082e-31 4.3006518280083679
		-25.849083018850898 -1.4394712022965418e-15 27.809000574745106
		-2.3407342721141653 -2.0357196969332748e-15 37.546477454640019
		21.167614474622575 -1.4394712022965416e-15 27.809000574745102
		30.905091354517481 -2.7761037630330301e-31 4.3006518280083741
		21.167614474622575 1.4394712022965418e-15 -19.207696918728367
		-2.34073427211416 2.0357196969332736e-15 -28.945173798623259
		-25.849083018850898 1.4394712022965416e-15 -19.207696918728363
		;
createNode ikHandle -n "ikHandle4" -p "L_Leg04_CTL";
	rename -uid "663DCCEE-4504-D496-6558-4E9F605BF832";
	setAttr ".v" no;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle4_poleVectorConstraint1" -p "ikHandle4";
	rename -uid "65DE6190-467D-506D-38CE-F5AA8A9BC6D3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_Leg04_POLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 67.866175528459181 308.21047592329239 2.1972009557225221 ;
	setAttr -k on ".w0";
createNode transform -n "L_Digit01_GRP" -p "Master_CTL";
	rename -uid "166835E2-424B-4865-BCE7-0AB9166647D0";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.5518967793376574e-15 1.5113342431004074e-15 8.2269254926487866e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "L_Digit01_CTL" -p "L_Digit01_GRP";
	rename -uid "521ABA0E-4665-7A21-A3EF-31B08E38F870";
	addAttr -ci true -sn "Attachment" -ln "Attachment" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Attachment" 1;
createNode nurbsCurve -n "L_Digit01_CTLShape" -p "L_Digit01_CTL";
	rename -uid "554B7347-47EB-9471-0412-588B502B1273";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		36.075785117343294 30.137609334488708 -21.404760888850554
		34.637338081749327 6.6611503684887401 -31.112884359851442
		34.546059237152932 -16.854194605239616 -21.392743634339112
		35.85541849276094 -26.633455424968336 2.061734678856427
		37.798410954656902 -16.948073732484129 25.511235282250844
		39.236857990250876 6.528385233515781 35.219358753251747
		39.32813683484725 30.043730207244149 25.499218027739381
		38.018777579239263 39.822991026972822 2.0447397145438644
		36.075785117343294 30.137609334488708 -21.404760888850554
		34.637338081749327 6.6611503684887401 -31.112884359851442
		34.546059237152932 -16.854194605239616 -21.392743634339112
		;
createNode parentConstraint -n "L_Digit01_GRP_parentConstraint1" -p "L_Digit01_GRP";
	rename -uid "83A9FFF9-42C1-A959-A8DC-DAB5673AFC86";
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
	setAttr ".tg[0].tot" -type "double3" 1.151768193631753e-13 -1.7066116508902093e-13 
		7.0096014064394852e-14 ;
	setAttr ".tg[0].tor" -type "double3" 147.26364978976093 4.0070507690376704 -97.593308208817731 ;
	setAttr ".lr" -type "double3" 147.26364978976093 4.0070507690376704 -97.593308208817746 ;
	setAttr ".rst" -type "double3" 350.34859613830145 174.85148274112888 -55.12999704758721 ;
	setAttr ".rsrr" -type "double3" 147.26364978976093 4.0070507690376704 -97.593308208817746 ;
	setAttr -k on ".w0";
createNode transform -n "L_Digit02_GRP" -p "Master_CTL";
	rename -uid "4600FBF7-42E0-BFA9-88C7-878B9D74CDC4";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.5518967793376574e-15 1.5113342431004074e-15 8.2269254926487866e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "L_Digit02_CTL" -p "L_Digit02_GRP";
	rename -uid "2423D26E-4100-151A-53DC-0DA2D40BBA0C";
	addAttr -ci true -sn "Attachment" -ln "Attachment" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Attachment" 1;
createNode nurbsCurve -n "L_Digit02_CTLShape" -p "L_Digit02_CTL";
	rename -uid "93B7A1B5-4D1A-AE4A-706D-FC90BB9A87FE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		36.075785117343159 23.538086702815079 -18.847079143206695
		34.637338081749192 0.061627736815119682 -28.555202614207584
		34.546059237152804 -23.453717236913249 -18.835061888695254
		35.855418492760805 -33.232978056641976 4.619416424500292
		37.798410954656774 -23.547596364157762 28.068917027894702
		39.236857990250741 -0.071137398157839371 37.77704049889563
		39.328136834847115 23.444207575570516 28.05689977338324
		38.018777579239128 33.223468395299186 4.6024214601877294
		36.075785117343159 23.538086702815079 -18.847079143206695
		34.637338081749192 0.061627736815119682 -28.555202614207584
		34.546059237152804 -23.453717236913249 -18.835061888695254
		;
createNode parentConstraint -n "L_Digit02_GRP_parentConstraint1" -p "L_Digit02_GRP";
	rename -uid "472F18B4-466D-4EE4-974B-06BB765DA067";
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
	setAttr ".tg[0].tot" -type "double3" 2.7893943311938386e-06 -1.1230156448379237e-08 
		3.9563898884663769e-06 ;
	setAttr ".tg[0].tor" -type "double3" 145.07229075078115 3.7704820895843372 -96.089019423769614 ;
	setAttr ".lr" -type "double3" 145.07229075078115 3.7704820895843372 -96.089019423769614 ;
	setAttr ".rst" -type "double3" 342.87794511265696 164.66885433895118 -112.05539459497442 ;
	setAttr ".rsrr" -type "double3" 145.07229075078115 3.7704820895843372 -96.089019423769614 ;
	setAttr -k on ".w0";
createNode transform -n "L_Digit03_GRP" -p "Master_CTL";
	rename -uid "57D99905-49E1-BE95-B4EA-4796FD039894";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.5518967793376574e-15 1.5113342431004074e-15 8.2269254926487866e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "L_Digit03_CTL" -p "L_Digit03_GRP";
	rename -uid "E8F8A79D-42DC-14BC-6E1B-F6AC46DD5BAB";
	addAttr -ci true -sn "Attachment" -ln "Attachment" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Attachment" 1;
createNode nurbsCurve -n "L_Digit03_CTLShape" -p "L_Digit03_CTL";
	rename -uid "0C8907FA-46FC-947A-D7BF-749CCEE502B5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		36.075785117343237 15.374347875029462 -22.719502444797467
		34.63733808174927 -8.1021110909705101 -32.427625915798352
		34.546059237152875 -31.617456064698864 -22.707485190286025
		35.855418492760883 -41.396716884427583 0.74699312290952102
		37.798410954656845 -31.711335191943377 24.196493726303931
		39.236857990250819 -8.23487622594347 33.904617197304844
		39.328136834847193 15.2804687477849 24.184476471792468
		38.018777579239206 25.059729567513571 0.72999815859695838
		36.075785117343237 15.374347875029462 -22.719502444797467
		34.63733808174927 -8.1021110909705101 -32.427625915798352
		34.546059237152875 -31.617456064698864 -22.707485190286025
		;
createNode parentConstraint -n "L_Digit03_GRP_parentConstraint1" -p "L_Digit03_GRP";
	rename -uid "74934E3C-4ED6-C045-9DE8-069346E089EB";
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
	setAttr ".tg[0].tot" -type "double3" -2.2594280304196435e-13 1.0012152349877232e-16 
		2.8316922815194492e-13 ;
	setAttr ".tg[0].tor" -type "double3" 143.2942787075514 9.271839613688833 -92.846912182836647 ;
	setAttr ".lr" -type "double3" 143.2942787075514 9.2718396136888295 -92.846912182836661 ;
	setAttr ".rst" -type "double3" 336.08481461767815 174.6700070966927 -177.15339942989721 ;
	setAttr ".rsrr" -type "double3" 143.2942787075514 9.2718396136888295 -92.846912182836661 ;
	setAttr -k on ".w0";
createNode transform -n "R_Reg0101_GRP" -p "Master_CTL";
	rename -uid "3AC31C25-4162-3DA1-E4EA-38AA5B11C1BC";
	setAttr ".t" -type "double3" -238.77100000000004 140.39699999999991 139.15400000000002 ;
	setAttr ".s" -type "double3" -1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.4608991482595288e-15 1.4235713840631039e-15 9.4697398169178553e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "R_Reg0101_CTL" -p "R_Reg0101_GRP";
	rename -uid "9E805EF9-405B-B6C4-FE26-B2A64AE003F5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_Reg0101_CTLShape" -p "R_Reg0101_CTL";
	rename -uid "9B56C23A-4BB9-2572-020D-3BA739E594DE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		14.681115634623517 9.8642759462422962 -23.268339234783319
		23.538070211400658 9.913918808249246 -1.8854235039963918
		14.681115634623499 9.8642759462423086 19.497492226790449
		-6.7014642259544805 9.7444274755101468 28.354585925563349
		-28.084044086532543 9.6245790047779689 19.497492226790449
		-36.940998663309657 9.5749361427710298 -1.8854235039963889
		-28.084044086532547 9.6245790047779636 -23.268339234783319
		-6.701464225954485 9.7444274755101432 -32.125432933556219
		14.681115634623517 9.8642759462422962 -23.268339234783319
		23.538070211400658 9.913918808249246 -1.8854235039963918
		14.681115634623499 9.8642759462423086 19.497492226790449
		;
createNode transform -n "R_Reg0102_GRP" -p "R_Reg0101_CTL";
	rename -uid "82226371-4317-75CB-4875-369D57483866";
	setAttr ".t" -type "double3" 0.46899999999996567 8.5265128291212022e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 147.55653118362562 -6.4230789087295781 80.491402635196209 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 -1 ;
	setAttr ".rp" -type "double3" -2.8421709430404014e-14 -2.8421709430404014e-14 -8.8817841970012523e-15 ;
	setAttr ".rpt" -type "double3" -4.4561651595611055e-15 6.1711675019084637e-15 -2.0008611959866667e-15 ;
	setAttr ".sp" -type "double3" -2.8421709430404007e-14 -2.8421709430404007e-14 8.8817841970012523e-15 ;
	setAttr ".spt" -type "double3" -6.3108872417680972e-30 -6.3108872417680972e-30 -1.7763568394002505e-14 ;
createNode transform -n "R_Reg0102_CTL" -p "R_Reg0102_GRP";
	rename -uid "D0B108B0-4C19-06C2-755F-248130B8D67E";
	addAttr -ci true -sn "Detach" -ln "Detach" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -2.8421709430404007e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" 3.1805546814635168e-15 0 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -2.8421709430404007e-14 -2.8421709430404007e-14 8.8817841970012523e-15 ;
	setAttr ".sp" -type "double3" -2.8421709430404007e-14 -2.8421709430404007e-14 8.8817841970012523e-15 ;
	setAttr -k on ".Detach";
createNode nurbsCurve -n "R_Reg0102_CTLShape" -p "R_Reg0102_CTL";
	rename -uid "52F9E1FC-461C-90F9-6E1F-4B9279456D0F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-19.348193037502998 -27.631288066044291 21.382915730786877
		-19.348193037502991 -36.488381764817177 -5.2625096135293064e-14
		-19.348193037502984 -27.631288066044281 -21.382915730786891
		-19.348193037502984 -6.2483723352574287 -30.240009429559791
		-19.34819303750298 15.134543395529494 -21.382915730786891
		-19.348193037502984 23.991637094302373 -5.5497282508183615e-14
		-19.348193037502984 15.134543395529505 21.382915730786877
		-19.348193037502988 -6.2483723352574128 30.240009429559777
		-19.348193037502998 -27.631288066044291 21.382915730786877
		-19.348193037502991 -36.488381764817177 -5.2625096135293064e-14
		-19.348193037502984 -27.631288066044281 -21.382915730786891
		;
createNode ikHandle -n "ikHandle5" -p "R_Reg0101_CTL";
	rename -uid "D8E066F9-432D-BB92-1957-6BBAC381D48F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4210854715202004e-13 -2.8421709430404007e-14 2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 -1.0000000000000002 ;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle5_poleVectorConstraint1" -p "ikHandle5";
	rename -uid "177A5278-4D6D-BB69-6B4C-208507AEB720";
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
	setAttr ".rst" -type "double3" 5.0311629232814141 233.13045531506663 -73.116787994193729 ;
	setAttr -k on ".w0";
createNode transform -n "R_Leg02_GRP" -p "Master_CTL";
	rename -uid "787F434C-44A4-EE4B-E27B-1EA74B48A492";
	setAttr ".t" -type "double3" -349.87900000000013 174.85099999999997 -55.129999999999903 ;
createNode transform -n "R_Leg02_CTR" -p "R_Leg02_GRP";
	rename -uid "AE38AB82-44EF-1B9C-528F-FABB007B0912";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_Leg02_CTRShape" -p "R_Leg02_CTR";
	rename -uid "586DDF11-4FB9-0A35-85DD-A690BEFE82E6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-6.8240528542215415 1.1512630892391257e-13 -14.159444160043492
		16.684295892515191 1.157225574185493e-13 -23.896921039938384
		40.192644639251931 1.1512630892391257e-13 -14.159444160043488
		49.930121519146837 1.1368683772161603e-13 9.3489045866932425
		40.192644639251931 1.1224736651931949e-13 32.857253333429981
		16.684295892515198 1.1165111802468276e-13 42.594730213324894
		-6.8240528542215415 1.1224736651931949e-13 32.857253333429973
		-16.561529734116448 1.1368683772161603e-13 9.3489045866932496
		-6.8240528542215415 1.1512630892391257e-13 -14.159444160043492
		16.684295892515191 1.157225574185493e-13 -23.896921039938384
		40.192644639251931 1.1512630892391257e-13 -14.159444160043488
		;
createNode ikHandle -n "ikHandle6" -p "R_Leg02_CTR";
	rename -uid "A6577F77-41C5-1E40-DCDB-5397E6F28E9E";
	setAttr ".v" no;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle6_poleVectorConstraint1" -p "ikHandle6";
	rename -uid "9476B810-4742-3621-CD06-E6A0815E78A7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg02_POLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -42.283646569092284 295.58958731188807 1.2420456169936642 ;
	setAttr -k on ".w0";
createNode transform -n "R_Leg03_GRP" -p "Master_CTL";
	rename -uid "6C97E06A-4ECE-3793-4383-A7B9BE674656";
	setAttr ".t" -type "double3" -342.408 164.66899999999995 -112.05499999999998 ;
createNode transform -n "R_Leg03_CTR" -p "R_Leg03_GRP";
	rename -uid "D7B17675-48D1-CE5C-0880-23BFEC322EBB";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_Leg03_CTRShape" -p "R_Leg03_CTR";
	rename -uid "7DD47C03-4C6E-8949-4998-2A85C338379D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-15.252948520650271 1.7281643651677298e-13 -18.050495786500427
		8.2554002260864632 1.7210770950893248e-13 -27.787972666395319
		31.763748972823201 1.7020648551181849e-13 -18.050495786500424
		41.501225852718107 1.6822647575783122e-13 5.4578529602363073
		31.763748972823201 1.6732754310722541e-13 28.966201706973045
		8.2554002260864685 1.6803627011506594e-13 38.703678586867959
		-15.252948520650271 1.699374941121799e-13 28.966201706973042
		-24.990425400545178 1.7191750386616717e-13 5.4578529602363135
		-15.252948520650271 1.7281643651677298e-13 -18.050495786500427
		8.2554002260864632 1.7210770950893248e-13 -27.787972666395319
		31.763748972823201 1.7020648551181849e-13 -18.050495786500424
		;
createNode ikHandle -n "ikHandle7" -p "R_Leg03_CTR";
	rename -uid "02CA888D-4F4D-530C-6824-9EA22BE38DE5";
	setAttr ".v" no;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle7_poleVectorConstraint1" -p "ikHandle7";
	rename -uid "3709FB92-4E32-C180-BDC9-52963D29B52D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg03_POLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -60.822803547849659 299.49868668950239 -42.288211019205626 ;
	setAttr -k on ".w0";
createNode transform -n "R_Leg04_GRP" -p "Master_CTL";
	rename -uid "EA05C9BB-45AB-716E-266B-ABA2A08EC201";
	setAttr ".t" -type "double3" -335.615 174.67000000000004 -177.15300000000002 ;
createNode transform -n "R_Leg04_CTR" -p "R_Leg04_GRP";
	rename -uid "7181567D-4AD8-4DA5-FD08-70BD61CCA567";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "R_Leg04_CTRShape" -p "R_Leg04_CTR";
	rename -uid "DAAF999B-40BD-2B67-4794-00AE534F84D4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-21.167614474622575 1.4394712022965418e-15 -19.207696918728395
		2.34073427211416 2.0357196969332736e-15 -28.945173798623287
		25.849083018850898 1.4394712022965416e-15 -19.207696918728391
		35.586559898745804 1.0553206857018082e-31 4.3006518280083395
		25.849083018850898 -1.4394712022965418e-15 27.809000574745077
		2.3407342721141653 -2.0357196969332748e-15 37.546477454639991
		-21.167614474622575 -1.4394712022965416e-15 27.809000574745074
		-30.905091354517481 -2.7761037630330301e-31 4.3006518280083457
		-21.167614474622575 1.4394712022965418e-15 -19.207696918728395
		2.34073427211416 2.0357196969332736e-15 -28.945173798623287
		25.849083018850898 1.4394712022965416e-15 -19.207696918728391
		;
createNode ikHandle -n "ikHandle8" -p "R_Leg04_CTR";
	rename -uid "F7FCF802-4F70-B4D3-9BC9-BFB53DE4F80C";
	setAttr ".v" no;
	setAttr ".hs" 1;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle8_poleVectorConstraint1" -p "ikHandle8";
	rename -uid "F48C973F-415C-CB41-FF5D-FEA6F63E87C1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg04_POLW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -69.347859416356343 305.65206290640714 1.0876751725462412 ;
	setAttr -k on ".w0";
createNode transform -n "R_Digit01_GRP" -p "Master_CTL";
	rename -uid "F3B41A9E-4338-CF4E-49D7-24BDCD065EC9";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.5518967793376574e-15 1.5113342431004074e-15 8.2269254926487866e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "R_Digit01_CTR" -p "R_Digit01_GRP";
	rename -uid "03EF8F57-4B76-1C1B-6361-6386A620C6DC";
	addAttr -ci true -sn "Attachment" -ln "Attachment" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Attachment" 1;
createNode nurbsCurve -n "R_Digit01_CTRShape" -p "R_Digit01_CTR";
	rename -uid "172DE201-4D1E-42A0-9359-888269B53CB2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		36.075785117343294 30.137609334488609 -21.404760888850575
		34.637338081749327 6.6611503684886282 -31.112884359851471
		34.546059237152932 -16.854194605239737 -21.392743634339148
		35.85541849276094 -26.633455424968464 2.0617346788563924
		37.798410954656902 -16.94807373248425 25.511235282250809
		39.236857990250876 6.5283852335156762 35.219358753251718
		39.32813683484725 30.04373020724405 25.49921802773936
		38.018777579239263 39.822991026972723 2.0447397145438448
		36.075785117343294 30.137609334488609 -21.404760888850575
		34.637338081749327 6.6611503684886282 -31.112884359851471
		34.546059237152932 -16.854194605239737 -21.392743634339148
		;
createNode parentConstraint -n "R_Digit01_GRP_parentConstraint1" -p "R_Digit01_GRP";
	rename -uid "44849E5C-4933-ECFD-D0B7-AEB2229E6E21";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg02_CTRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.47000000000014247 8.5131633468128983e-14 
		-1.2173371675871969e-13 ;
	setAttr ".tg[0].tor" -type "double3" 32.092585129538733 4.007064245152745 -82.406472761353939 ;
	setAttr ".lr" -type "double3" 32.092585129538726 4.0070642451527432 -82.406472761353939 ;
	setAttr ".rst" -type "double3" -350.34900000000027 174.85100000000006 -55.130000000000024 ;
	setAttr ".rsrr" -type "double3" 32.092585129538726 4.0070642451527423 -82.406472761353967 ;
	setAttr -k on ".w0";
createNode transform -n "R_Digit02_GRP" -p "Master_CTL";
	rename -uid "08822B47-46B9-DC37-E711-4EA93BAA3C7A";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.5518967793376574e-15 1.5113342431004074e-15 8.2269254926487866e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "R_Digit02_CTR" -p "R_Digit02_GRP";
	rename -uid "1BA255E0-41C1-5F24-4E22-D7B65F0290C5";
	addAttr -ci true -sn "Attachment" -ln "Attachment" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Attachment" 1;
createNode nurbsCurve -n "R_Digit02_CTRShape" -p "R_Digit02_CTR";
	rename -uid "137F2B02-44A5-24BD-4924-2AB374E24654";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		36.075785117343159 23.538086702815079 -18.847079143206695
		34.637338081749192 0.061627736815119682 -28.555202614207584
		34.546059237152804 -23.453717236913249 -18.835061888695254
		35.855418492760805 -33.232978056641976 4.619416424500292
		37.798410954656774 -23.547596364157762 28.068917027894702
		39.236857990250741 -0.071137398157839371 37.77704049889563
		39.328136834847115 23.444207575570516 28.05689977338324
		38.018777579239128 33.223468395299186 4.6024214601877294
		36.075785117343159 23.538086702815079 -18.847079143206695
		34.637338081749192 0.061627736815119682 -28.555202614207584
		34.546059237152804 -23.453717236913249 -18.835061888695254
		;
createNode parentConstraint -n "R_Digit02_GRP_parentConstraint1" -p "R_Digit02_GRP";
	rename -uid "7F6BBBA4-4B7D-96A6-94E1-349F44E14B0C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg03_CTRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.46999999999997188 5.6759063886059153e-14 
		-1.1472734057583557e-13 ;
	setAttr ".tg[0].tor" -type "double3" 35.945944829197281 3.7705966310555805 -83.911022312548567 ;
	setAttr ".lr" -type "double3" 35.945944829197281 3.7705966310555805 -83.911022312548567 ;
	setAttr ".rst" -type "double3" -342.878 164.669 -112.05500000000009 ;
	setAttr ".rsrr" -type "double3" 35.945944829197281 3.7705966310555805 -83.911022312548567 ;
	setAttr -k on ".w0";
createNode transform -n "R_Digit03_GRP" -p "Master_CTL";
	rename -uid "AD679018-4392-9AB3-E0F5-C39BD7BDE239";
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 1.5518967793376574e-15 1.5113342431004074e-15 8.2269254926487866e-16 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "R_Digit03_CTR" -p "R_Digit03_GRP";
	rename -uid "A337C19D-4FFB-7D28-BD7C-928FA2131389";
	addAttr -ci true -sn "Attachment" -ln "Attachment" -min 0 -max 1 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".Attachment" 1;
createNode nurbsCurve -n "R_Digit03_CTRShape" -p "R_Digit03_CTR";
	rename -uid "F7FEF53F-4D3B-3CE6-7ECE-6E96CCF91205";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		36.075785117343237 15.374347875029462 -22.719502444797467
		34.63733808174927 -8.1021110909705101 -32.427625915798352
		34.546059237152875 -31.617456064698864 -22.707485190286025
		35.855418492760883 -41.396716884427583 0.74699312290952102
		37.798410954656845 -31.711335191943377 24.196493726303931
		39.236857990250819 -8.23487622594347 33.904617197304844
		39.328136834847193 15.2804687477849 24.184476471792468
		38.018777579239206 25.059729567513571 0.72999815859695838
		36.075785117343237 15.374347875029462 -22.719502444797467
		34.63733808174927 -8.1021110909705101 -32.427625915798352
		34.546059237152875 -31.617456064698864 -22.707485190286025
		;
createNode parentConstraint -n "R_Digit03_GRP_parentConstraint1" -p "R_Digit03_GRP";
	rename -uid "C19D2539-4B98-5276-332D-2A898B461EB4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_Leg04_CTRW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.46999999999997188 4.1041043889090069e-11 
		-3.1366338801214217e-13 ;
	setAttr ".tg[0].tor" -type "double3" 35.762413907077097 9.2720307200744259 -87.153137226849992 ;
	setAttr ".lr" -type "double3" 35.762413907077097 9.2720307200744259 -87.153137226849992 ;
	setAttr ".rst" -type "double3" -336.085 174.67000000004109 -177.15300000000033 ;
	setAttr ".rsrr" -type "double3" 35.762413907077097 9.2720307200744259 -87.153137226849992 ;
	setAttr -k on ".w0";
createNode transform -n "Spider_Guard_MOD_MASTER:SpiderGuard_GEO";
	rename -uid "7AE749E8-4079-DB9C-7414-1DBF1C56E961";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 199.47388458251953 30.591217041015629 ;
	setAttr ".sp" -type "double3" 0 199.47388458251953 30.591217041015629 ;
	setAttr ".dla" yes;
createNode mesh -n "Spider_Guard_MOD_MASTER:SpiderGuard_GEOShape" -p "Spider_Guard_MOD_MASTER:SpiderGuard_GEO";
	rename -uid "C2DA5096-4924-909C-4669-B19701A6E344";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[0:41]" "f[55:66]" "f[1821:1862]" "f[1876:1887]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 4 "f[0:66]" "f[1813]" "f[1818:1820]" "f[1976:2083]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "f[0:2083]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.48810842633247375 0.34908003825694323 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 2603 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.19177735 0.41627446 0.18808618
		 0.41867492 0.1881243 0.41742328 0.19129127 0.41624895 0.15007764 0.35609761 0.16744626
		 0.35262969 0.16069829 0.30381802 0.12332237 0.32183823 0.1869576 0.41827485 0.14343539
		 0.35827979 0.14638078 0.35669419 0.18748966 0.41788313 0.13362405 0.3622885 0.13557979
		 0.35922876 0.18204561 0.41952148 0.18155837 0.41992947 0.11950299 0.32387725 0.11501172
		 0.3245782 0.11173993 0.3271161 0.10602656 0.32798317 0.18396682 0.41935202 0.13863632
		 0.35901079 0.18324211 0.42109254 0.11101246 0.32849529 0.10690084 0.33064398 0.18023655
		 0.42307588 0.12439707 0.38073745 0.12329552 0.37712613 0.1799095 0.42191938 0.22966179
		 0.47987232 0.20991406 0.48632869 0.084902704 0.36628476 0.079272062 0.36559221 0.0077076852
		 0.36801788 0.017882407 0.36893216 0.0078678429 0.36919716 0.066675216 0.36516187
		 0.066861838 0.3639538 0.079143614 0.36674258 0.12388858 0.38187835 0.024363428 0.47863916
		 0.034431398 0.4751288 0.034695119 0.47656134 0.025056183 0.48010412 0.049166113 0.47102574
		 0.062490553 0.47510353 0.062098861 0.47693303 0.049052835 0.47260204 0.075208545
		 0.485118 0.074011236 0.48609838 0.016816944 0.44369963 0.027430087 0.44287756 0.069595039
		 0.44119886 0.09279862 0.45260158 0.055024594 0.44024768 0.045609921 0.55840349 0.042184949
		 0.56038773 0.038973898 0.55548179 0.043118775 0.55510902 0.034663498 0.47798505 0.025256574
		 0.48167536 0.049030662 0.47379413 0.061731219 0.47858384 0.073413104 0.48755088 0.048948288
		 0.47561732 0.03465125 0.48015848 0.025591493 0.4840152 0.072588265 0.48977461 0.061089844
		 0.48105779 0.03459689 0.55559468 0.031254947 0.556445 0.018186003 0.37117413 0.008168608
		 0.37143013 0.12292781 0.38403705 0.078899026 0.36892501 0.066332519 0.36745349 0.018598855
		 0.37428394 0.0085813701 0.37453315 0.12159917 0.38703248 0.078553319 0.37196228 0.065861583
		 0.37063053 0.12087989 0.3179616 0.11916259 0.31856713 0.1010232 0.32510814 0.10839421
		 0.32180294 0.070635259 0.35637555 0.16168496 0.29932997 0.16453788 0.30116054 0.066854656
		 0.36394909 0.1721541 0.35167024 0.017715067 0.36774841 0.17162147 0.35021213 0.017723024
		 0.36774692 0.15834874 0.95163554 0.1752395 0.94781393 0.17315513 0.95548493 0.15990907
		 0.95960921 0.29497451 0.88711685 0.28667074 0.88891119 0.28621 0.86318082 0.29339117
		 0.86304969 0.28108639 0.94678491 0.28073949 0.94736904 0.23826021 0.94330353 0.23823279
		 0.94205528 0.28182304 0.94694358 0.27725679 0.89012533 0.27790183 0.89037746 0.28162342
		 0.94737214 0.28972834 0.94950813 0.28941435 0.95008129 0.27681482 0.95313507 0.27595884
		 0.95274955 0.29785556 0.95217437 0.29711676 0.95303255 0.27555674 0.95352453 0.23540217
		 0.96503443 0.2357015 0.96213549 0.27659148 0.95385224 0.28445196 0.95757395 0.28413421
		 0.95820278 0.21240133 0.98141617 0.2119779 0.98189896 0.17703873 0.93971878 0.17722607
		 0.93902975 0.28965229 0.96252173 0.28916621 0.9630211 0.27800888 0.88993043 0.2785539
		 0.86257213 0.27917182 0.86260849 0.15683943 0.9434827 0.15674466 0.9427821 0.23540211
		 0.96503443 0.23763531 0.94148582 0.23503846 0.96512777 0.2067799 0.89312881 0.20756584
		 0.89257675 0.22132152 0.8836593 0.22217357 0.88316065 0.12034643 0.88679403 0.12064314
		 0.88618749 0.14459652 0.9012869 0.14406806 0.90189689 0.11003381 0.97608095 0.10960764
		 0.97562009 0.27740973 0.80080122 0.27800107 0.80094904 0.14324242 0.90292352 0.14281589
		 0.90367621 0.14145762 0.90461129 0.086050272 0.91820258 0.086495399 0.91719538 0.1552332
		 0.89178127 0.15763682 0.89019984 0.10470897 0.96863252 0.10386437 0.96911007 0.10904622
		 0.97596437 0.10412234 0.96902376 0.10944867 0.97644955 0.11433256 0.98194045 0.11369234
		 0.98222202 0.10806668 0.97768551 0.10766447 0.9772734 0.11809093 0.98847336 0.11737573
		 0.98862475 0.27801335 0.8002407 0.28488094 0.80105132 0.28488076 0.80175775 0.29157948
		 0.80144316 0.29161221 0.80215019 0.063706756 0.89584345 0.063706756 0.89584357 0.063761711
		 0.89596111 0.063706756 0.89584357 0.14861399 0.89867705 0.15222508 0.89346641 0.12388688
		 0.93586999 0.12387151 0.93574744 0.12175781 0.92760366 0.1214506 0.9266811 0.087815762
		 0.94607514 0.087710977 0.94538516 0.064687371 0.9393391 0.065584183 0.93884104 0.087023616
		 0.94071633 0.086995363 0.9400292 0.065786362 0.93680412 0.065678835 0.93603987 0.063640714
		 0.89655977 0.063706636 0.8958438 0.064757943 0.89763016 0.065241575 0.89601558 0.064016461
		 0.90018338 0.063791871 0.89889628 0.063634753 0.89600366 0.063849449 0.89531142 0.063706636
		 0.89584368 0.017851353 0.9441238 0.017221212 0.94377238 0.017438412 0.94213444 0.01808095
		 0.94232863 0.017711401 0.94472593 0.021502376 0.94514865 0.022090435 0.94580454 0.017724633
		 0.93847984 0.018467903 0.93856138 0.063398242 0.93591243 0.064166427 0.93511456 0.063619733
		 0.93981701 0.06395781 0.93868512 0.058766127 0.94295806 0.059513927 0.9435994 0.059682608
		 0.94260615 0.05525732 0.93838292 0.056183577 0.93828815 0.062829614 0.94088751 0.053725719
		 0.93579978 0.054521918 0.93575221 0.078236043 0.99544269 0.077480853 0.99584633 0.078063667
		 0.99209052 0.078757107 0.99175447 0.076356769 0.96137685 0.076936364 0.96056527 0.06204474
		 0.89790839 0.062319398 0.89709777 0.063636541 0.89908344 0.057208061 0.89700252 0.057429194
		 0.89640313 0.011030078 0.87982231 0.010919571 0.87975138 0.052548409 0.93415517 0.053817153
		 0.93409437 0.01124084 0.88020319 0.011282325 0.88021201 0.060428858 0.93416959 0.060702443
		 0.93349761 0.062775731 0.93507236 0.058345675 0.93233341 0.058480501 0.93156034 0.011367559
		 0.88020891 0.017086983 0.93476719 0.017986417 0.93650061 0.010821104 0.87966174 0.010865211
		 0.87976664 0.11224765 0.98294026 0.28641337 0.89078349 0.20665562 0.98690265 0.10264128
		 0.97106713 0.10242397 0.97095269;
	setAttr ".uvst[0].uvsp[250:499]" 0.23620576 0.85434729 0.12320602 0.87476498
		 0.14777166 0.89470166 0.14781934 0.89479059 0.26901567 0.79997605 0.14982742 0.89644307
		 0.103257 0.96681136 0.021113038 0.94305772 0.086438656 0.92040032 0.064599276 0.89362508
		 0.064600825 0.89362556 0.065419793 0.90192801 0.080042064 0.99432057 0.080211222
		 0.99042815 0.063427091 0.8964693 0.064383805 0.99717003 0.065759599 0.99359709 0.062075377
		 0.90129763 0.05791688 0.90061861 0.020833611 0.93790907 0.021046042 0.94007128 0.018379688
		 0.93636411 0.062719941 0.89366275 0.062712073 0.89368087 0.20051521 0.99115151 0.11628228
		 0.98887676 0.29477304 0.89082307 0.073617101 0.96288556 0.092534363 0.94622332 0.077932835
		 0.95948213 0.063926935 0.90344685 0.011100531 0.87989134 0.011065483 0.88005251 0.011024952
		 0.87999564 0.064000845 0.90319282 0.27741992 0.800098 0.15222484 0.89346665 0.12354398
		 0.87414378 0.14820117 0.8941955 0.064855337 0.89314288 0.26927453 0.79931325 0.064368367
		 0.89353627 0.085816741 0.91765565 0.08582902 0.9173885 0.010964036 0.87991124 0.011062741
		 0.88002568 0.42503965 0.94806677 0.42315358 0.95597798 0.40954423 0.95117897 0.40795958
		 0.94338697 0.3003425 0.86122447 0.30309463 0.88654989 0.31402308 0.94624442 0.3450467
		 0.94007224 0.34495276 0.9406634 0.3146289 0.94690067 0.31333435 0.94640666 0.31132656
		 0.88683909 0.31197858 0.88646251 0.3136813 0.94688934 0.3062585 0.94980186 0.30583125
		 0.94921452 0.32220507 0.95266861 0.32111096 0.95299524 0.29867089 0.95300263 0.345559
		 0.94710189 0.34574932 0.95002812 0.32310867 0.95321172 0.32135391 0.95371443 0.31241244
		 0.95796543 0.3121236 0.95732206 0.36738175 0.97203821 0.40652746 0.93451434 0.40667474
		 0.93521315 0.36776638 0.97255987 0.30716348 0.96283692 0.3066901 0.96232527 0.3113429
		 0.88615674 0.30738944 0.85963959 0.30801815 0.8595354 0.42702109 0.93927497 0.42689615
		 0.9399721 0.34537745 0.94043869 0.34574932 0.95002836 0.37913322 0.88735539 0.37989086
		 0.88780385 0.34594673 0.9500224 0.36524463 0.87900847 0.36605465 0.87945551 0.46583176
		 0.88465327 0.4415648 0.89886612 0.44105941 0.89823705 0.46555781 0.88403589 0.47310415
		 0.97409791 0.47265881 0.97454125 0.30553108 0.79937381 0.30613846 0.79918498 0.44235116
		 0.89992172 0.44407153 0.90166837 0.44274992 0.9006862 0.4985064 0.9160952 0.4989143
		 0.91711658 0.43079913 0.88833183 0.47912961 0.96784049 0.47830024 0.96732682 0.42846471
		 0.88665432 0.47887123 0.9677406 0.47365221 0.97446412 0.47322968 0.97493237 0.46875158
		 0.9805271 0.46812224 0.98022085 0.4749828 0.97582561 0.47456345 0.97622079 0.46481988
		 0.98677987 0.46411052 0.98660117 0.29845995 0.80088848 0.29840487 0.80018467 0.30547798
		 0.79866809 0.52207607 0.89558047 0.52207601 0.89558047 0.52201712 0.89569718 0.52207601
		 0.89558023 0.43714637 0.89547759 0.460471 0.93340653 0.46033064 0.93337518 0.43373132
		 0.89013642 0.46323165 0.92441148 0.46288988 0.92532426 0.49625564 0.94416541 0.49612549
		 0.94484848 0.51860356 0.93848413 0.51948118 0.93901628 0.49716777 0.9388606 0.49711427
		 0.93954355 0.5186125 0.93568224 0.51847684 0.93644148 0.52207613 0.89558047 0.52211678
		 0.89630204 0.52096224 0.89733273 0.52187955 0.89863449 0.52160966 0.89991421 0.52053785
		 0.89569968 0.52214193 0.89574283 0.52207625 0.89558083 0.52195275 0.89504296 0.56610453
		 0.94554371 0.56594217 0.94374126 0.56659138 0.94357127 0.56674731 0.94521588 0.56622207
		 0.94615048 0.56180596 0.94706529 0.56241798 0.94643158 0.56569564 0.93996173 0.56644154
		 0.93990844 0.52015793 0.9348138 0.52089584 0.93563968 0.52023411 0.9383896 0.52052975
		 0.93953329 0.52526236 0.94285387 0.52449137 0.9434666 0.5243597 0.94246763 0.52801681
		 0.9382835 0.52893889 0.93841261 0.52127934 0.94063264 0.5297718 0.93581098 0.53056562
		 0.93588847 0.50376129 0.9951002 0.50337762 0.99139518 0.50405812 0.99175674 0.50450099
		 0.99553198 0.50691307 0.96111971 0.50636423 0.96028703 0.52365905 0.89771289 0.5220263
		 0.89882773 0.52341342 0.89689201 0.52832949 0.89638644 0.52852845 0.89699334 0.57542992
		 0.88147444 0.57531679 0.88154119 0.53053761 0.93418103 0.53180319 0.93428892 0.57505012
		 0.88192099 0.57509196 0.88191408 0.52392805 0.93400937 0.52154911 0.93482357 0.52367961
		 0.93332785 0.52597213 0.93147498 0.5260781 0.93225247 0.57496512 0.88191456 0.56625366
		 0.93792099 0.56721711 0.93622226 0.57548356 0.8814916 0.57553136 0.88138849 0.47016835
		 0.98129982 0.302903 0.8886624 0.37268871 0.97802931 0.48049122 0.96973211 0.48026973
		 0.96983832 0.35118455 0.85042077 0.43808115 0.89162427 0.43813199 0.89153713 0.46342051
		 0.87252611 0.31480676 0.79772478 0.4360159 0.89320046 0.47983333 0.96557003 0.56288493
		 0.94435674 0.49844512 0.9192999 0.52126241 0.89333171 0.52126396 0.89333135 0.52014112
		 0.90160424 0.50197411 0.99001557 0.50199836 0.99391133 0.52235103 0.89626235 0.51629734
		 0.99372083 0.51753938 0.99734277 0.52768648 0.90057927 0.52350712 0.90110034 0.56335616
		 0.93922216 0.56586576 0.93776971 0.56306314 0.94137508 0.52314496 0.89345437 0.52315211
		 0.89347261 0.37847304 0.98275691 0.46590337 0.98707336 0.5095942 0.96273035 0.49131835
		 0.94530612 0.505409 0.95916671 0.5215776 0.90317839 0.57524371 0.88160735 0.57527292
		 0.88176984 0.57531536 0.88171452 0.5215131 0.90292186 0.30609626 0.79848319 0.43373132
		 0.89013654 0.43772149 0.89101571 0.4631058 0.87189299 0.52102548 0.89284021 0.31452852
		 0.79707116 0.52149808 0.89325088 0.49916765 0.91657895 0.49916539 0.91631228 0.57537937
		 0.88163239 0.57527649 0.88174301 0.77223402 0.46280235 0.76317567 0.44417709 0.78487295
		 0.42380637 0.804277 0.44186777 0.7586028 0.39872235 0.77206224 0.41180223 0.75434446
		 0.42949075;
	setAttr ".uvst[0].uvsp[500:749]" 0.74506074 0.4141261 0.73355699 0.4414658
		 0.72828817 0.43361467 0.746705 0.46496171 0.74701661 0.44880527 0.7139011 0.44518131
		 0.71386939 0.44430655 0.72555888 0.45679992 0.69512594 0.34922856 0.69630873 0.3501386
		 0.67586458 0.40458006 0.67440432 0.40484565 0.69541806 0.45649236 0.69427401 0.45706695
		 0.8276425 0.46354669 0.82775348 0.46515816 0.77244061 0.49058408 0.77247745 0.48913878
		 0.73190761 0.48777813 0.73234695 0.48639864 0.70567524 0.46979755 0.70485264 0.47081321
		 0.69638532 0.45803899 0.71318477 0.44358963 0.6606611 0.4123413 0.64467543 0.38114327
		 0.65996605 0.37393659 0.71357399 0.38420981 0.70506877 0.40696663 0.6843794 0.45404285
		 0.64907891 0.41775268 0.66651332 0.43952268 0.63193578 0.38704938 0.82051665 0.40739554
		 0.80164951 0.3998906 0.77222788 0.3848657 0.78701431 0.39258116 0.7841863 0.36824793
		 0.79306525 0.37194151 0.80308634 0.38368767 0.81881779 0.38180274 0.79417676 0.351551
		 0.80744237 0.36186284 0.79317445 0.35175365 0.74585986 0.31942648 0.74588835 0.32087845
		 0.80300087 0.33054894 0.80260903 0.33173174 0.84636003 0.4055993 0.84779936 0.40544528
		 0.82922965 0.46361464 0.83839566 0.3658337 0.83975929 0.36529511 0.81786317 0.34081048
		 0.80431503 0.33260602 0.81885678 0.33991593 0.79257339 0.35085434 0.7508058 0.30463964
		 0.71290362 0.31116503 0.71711934 0.2948063 0.72603822 0.36833113 0.75347477 0.34935182
		 0.79772192 0.32109588 0.75396162 0.29226357 0.77932888 0.30576152 0.72052228 0.28118604
		 0.82041645 0.32820237 0.82147443 0.30266771 0.85761303 0.32594925 0.86239368 0.34606051
		 0.82101274 0.32971466 0.83181638 0.26835099 0.83568901 0.26206818 0.83663017 0.26161289
		 0.83219957 0.26815709 0.83176309 0.26883689 0.82883543 0.27169386 0.82858098 0.27127254
		 0.85697985 0.29476297 0.85655081 0.29529962 0.85448825 0.29953378 0.85443157 0.30054897
		 0.82811868 0.27197471 0.83088952 0.26147744 0.83148682 0.26173192 0.83277333 0.25468323
		 0.83347952 0.2552492 0.7991907 0.22693509 0.80075336 0.21804225 0.80136645 0.21897221
		 0.79970664 0.22808778 0.83150953 0.3431288 0.83028984 0.34320757 0.81989765 0.32971823
		 0.80203527 0.21168035 0.80260372 0.21259481 0.83841097 0.25645423 0.83929896 0.25610021
		 0.857499 0.12572664 0.85677552 0.12425864 0.85836071 0.12595534 0.85756713 0.12588632
		 0.88226825 0.24509573 0.89275891 0.26566777 0.8923555 0.2665624 0.8790127 0.25183403
		 0.87808663 0.23683363 0.87901998 0.23652828 0.87779754 0.22911677 0.87865055 0.22873765
		 0.88682944 0.33120275 0.88647491 0.33171713 0.89759487 0.34249526 0.89666837 0.34260273
		 0.90657693 0.35112023 0.90640134 0.35135227 0.90692478 0.35159785 0.90795869 0.35362291
		 0.90707451 0.35448796 0.90739328 0.34999919 0.90765613 0.35087404 0.89886731 0.34037229
		 0.89895922 0.33942351 0.90849048 0.34685141 0.91069895 0.34751594 0.91058975 0.34873182
		 0.88765174 0.32888311 0.88740879 0.32949519 0.96031028 0.33424002 0.96007115 0.33507991
		 0.893529 0.26792106 0.90492731 0.30511415 0.90406448 0.3042284 0.91133064 0.34781149
		 0.96129555 0.36235896 0.96124965 0.36308146 0.96040779 0.36709589 0.9599039 0.36767063
		 0.86722118 0.4124788 0.94682378 0.3846364 0.94640726 0.38562894 0.86664587 0.41336697
		 0.96960837 0.34471801 0.96939319 0.34568632 0.98814136 0.36887488 0.97570449 0.35266349
		 0.97600549 0.35179973 0.98862284 0.36854449 0.98891336 0.3692793 0.98679751 0.37143028
		 0.98637086 0.37075287 0.99657613 0.36664727 0.99652797 0.36746514 0.98473352 0.37370133
		 0.98415953 0.37290987 0.96754402 0.36980271 0.96710092 0.37038404 0.98377818 0.37342632
		 0.97323173 0.36821565 0.97332674 0.36750996 0.98239797 0.37642071 0.98201925 0.37598246
		 0.9818539 0.37661356 0.97187895 0.3722924 0.97229356 0.37168932 0.98269421 0.3785204
		 0.98197275 0.37881255 0.98209244 0.38167381 0.96483344 0.3825675 0.96518916 0.38179812
		 0.98197764 0.38092676 0.98283535 0.38079882 0.96851462 0.36531317 0.96846634 0.36604637
		 0.95747429 0.38262326 0.95715684 0.3834163 0.82598227 0.11408585 0.82671082 0.11372522
		 0.88789248 0.1304307 0.88866425 0.13008833 0.81358778 0.23850006 0.81247264 0.2478345
		 0.85978025 0.24804008 0.85649514 0.25685912 0.8977676 0.23419705 0.90092868 0.24287495
		 0.99038249 0.37713945 0.98803228 0.37565395 0.89853007 0.29863277 0.87995499 0.29464477
		 0.86732405 0.35396093 0.9078601 0.26441729 0.90388602 0.24802351 0.96031624 0.3488861
		 0.88606542 0.38551232 0.95254534 0.37570429 0.97681493 0.32890788 0.81475997 0.23140654
		 0.8963111 0.22825429 0.86119097 0.24103415 0.83896977 0.11710498 0.89170748 0.12740427
		 0.87486643 0.12905896 0.9743821 0.35975003 0.96891278 0.35508209 0.98372656 0.34031478
		 0.98960298 0.34804857 0.96220464 0.376385 0.96840292 0.37708306 0.66431278 0.10050862
		 0.69000351 0.087985307 0.68722898 0.13030192 0.6730426 0.14448324 0.66310656 0.101835
		 0.7289775 0.082603209 0.7359637 0.080923297 0.73679686 0.081387155 0.72924328 0.082963876
		 0.72842681 0.082829796 0.72426826 0.081559144 0.72451371 0.081137635 0.7149657 0.11499319
		 0.71424586 0.11488458 0.70928991 0.11496563 0.7083084 0.11539076 0.7236619 0.081059746
		 0.73379683 0.076766886 0.73397231 0.077368267 0.74076295 0.073976956 0.74078512 0.074862011
		 0.74498057 0.031180725 0.75363243 0.028031141 0.75314879 0.029014394 0.74424517 0.032204747
		 0.65601152 0.11830352 0.65536869 0.11726117 0.66255331 0.10087781 0.75986421 0.026643097
		 0.75917757 0.027394801 0.74274921 0.079478808 0.74347115 0.080013312 0.87937284 0.03995961
		 0.88054669 0.038744442 0.88002229 0.040822752 0.87931442 0.040134318 0.769714 0.11424786
		 0.75796843 0.13452253 0.7568382 0.13445108 0.76478791 0.11460569 0.7774756 0.10821266;
	setAttr ".uvst[0].uvsp[750:999]" 0.77811158 0.10896219 0.78420413 0.10558307
		 0.7847544 0.10635576 0.69741273 0.15585297 0.6968019 0.15586102 0.69340765 0.16876668
		 0.69285113 0.16812095 0.68998826 0.17757556 0.68968362 0.17738909 0.68987048 0.17810276
		 0.68913603 0.18067247 0.68842 0.18011647 0.69122523 0.17867479 0.69072074 0.17912334
		 0.69567055 0.16923219 0.69644326 0.16903085 0.69412041 0.1797283 0.69406962 0.18196569
		 0.69317406 0.18219952 0.6996516 0.15577459 0.69905418 0.15575674 0.71122253 0.22602746
		 0.7103886 0.22605053 0.75610864 0.13613892 0.72719789 0.16157374 0.72765857 0.16043772
		 0.69395059 0.1826603 0.67985421 0.23335466 0.67896998 0.23337245 0.67405134 0.23233846
		 0.67329884 0.23187822 0.65455735 0.21435365 0.65374535 0.21347785 0.70174181 0.23840772
		 0.70067143 0.2384457 0.6781323 0.26006398 0.69364733 0.24579185 0.69465637 0.24596857
		 0.6785621 0.26051813 0.67782444 0.26081321 0.67496902 0.25908703 0.67566472 0.25861111
		 0.68122971 0.26808581 0.68040293 0.2680977 0.67198861 0.25683215 0.6728195 0.25631401
		 0.6725027 0.23956591 0.67173821 0.23917133 0.67217076 0.25595018 0.67559868 0.24529517
		 0.67642438 0.24537024 0.66867822 0.25500005 0.66911495 0.25453663 0.66841835 0.25448543
		 0.6706816 0.24405876 0.67146254 0.24439663 0.66655052 0.25581506 0.66612905 0.25511646
		 0.66327512 0.25587091 0.65806669 0.23687613 0.65895402 0.23725846 0.66398418 0.25558999
		 0.66430414 0.25648853 0.67784804 0.24052429 0.67699015 0.24050117 0.65617263 0.22786129
		 0.65529877 0.22728151 0.88054025 0.0052445307 0.88088024 0.0060681924 0.89416623
		 0.068696983 0.89473653 0.069315016 0.74240375 0.049550451 0.73375142 0.054179989
		 0.75986683 0.095098905 0.75063109 0.096147515 0.78268635 0.12644592 0.77498448 0.13062045
		 0.67042506 0.26322281 0.67107129 0.26043469 0.73042953 0.15318532 0.72562766 0.13498363
		 0.6703465 0.15324393 0.76314259 0.14946008 0.77755105 0.14011368 0.69620574 0.23072663
		 0.66295594 0.22344604 0.72072017 0.24049395 0.74913478 0.046818502 0.7878567 0.1236911
		 0.76663995 0.093934827 0.88148916 0.019020326 0.89704001 0.072745591 0.8876276 0.056702703
		 0.68542516 0.24548751 0.68984044 0.23961815 0.70895141 0.25090542 0.70105344 0.25874501
		 0.66401082 0.23387524 0.6646865 0.24060044 0.066586077 0.10891126 0.067650378 0.10764061
		 0.11291081 0.10514699 0.10170633 0.12224452 0.059353888 0.13390498 0.059262097 0.17107074
		 0.05963856 0.1712663 0.059928954 0.17892228 0.059278786 0.17826532 0.059399784 0.17049538
		 0.057049334 0.16714649 0.057432115 0.16683094 0.090308964 0.15090917 0.090565979
		 0.15154813 0.056836665 0.16634183 0.089901745 0.14523636 0.089663208 0.14621507 0.055383265
		 0.1776614 0.054762423 0.1777315 0.054598629 0.18522821 0.053818643 0.18555652 0.016480386
		 0.20315038 0.017224729 0.20216982 0.016858041 0.21171562 0.016071618 0.21242885 0.066598952
		 0.1072744 0.081286728 0.097654507 0.082401812 0.098131165 0.016911685 0.21819554
		 0.016184747 0.21893774 0.060329735 0.18566643 0.059534371 0.18522738 0.055111945
		 0.31787446 0.054114878 0.31924984 0.055210412 0.31773326 0.056018174 0.31786188 0.097436965
		 0.2050554 0.09607476 0.198956 0.11358863 0.19016443 0.11366874 0.19125091 0.095060527
		 0.21259676 0.09404856 0.21221481 0.094383299 0.21954618 0.093539298 0.21911345 0.12973887
		 0.12731199 0.1298297 0.12791763 0.14210135 0.12139694 0.14286011 0.12189005 0.15207416
		 0.11690973 0.15226704 0.11720704 0.15274137 0.11708783 0.15471357 0.11555408 0.15516275
		 0.11641751 0.15368336 0.11806916 0.15324908 0.11859386 0.15423185 0.1218975 0.14344054
		 0.12508027 0.14354879 0.12424009 0.1567381 0.12093256 0.1564762 0.12190782 0.12994093
		 0.12958191 0.13004309 0.13017593 0.11513263 0.18931852 0.20045859 0.14090179 0.20044714
		 0.14176123 0.136926 0.15880148 0.13801605 0.15826188 0.15715057 0.1218348 0.20836419
		 0.11085032 0.20830852 0.11167692 0.20716327 0.10547028 0.20757955 0.10620187 0.10340577
		 0.064482018 0.10260302 0.063614413 0.19132644 0.085368916 0.19196159 0.086356148
		 0.21262342 0.13185315 0.21256834 0.13290922 0.23514634 0.11165391 0.23557693 0.11209492
		 0.22024494 0.12663727 0.22012001 0.12565093 0.23592013 0.11139284 0.23382694 0.10919146
		 0.23434073 0.10854112 0.24301344 0.11443864 0.24293834 0.11525355 0.2317155 0.10633145
		 0.23227602 0.10556708 0.21463162 0.1043428 0.21497506 0.10509019 0.2313872 0.10568838
		 0.22057563 0.1091402 0.22054583 0.10834943 0.23019844 0.10263549 0.23068362 0.10223912
		 0.23019034 0.10195516 0.21990567 0.10435341 0.21962005 0.10358904 0.230964 0.099763855
		 0.23162872 0.10021494 0.23192078 0.097018108 0.23158902 0.09769623 0.21378595 0.091983423
		 0.2134946 0.09110795 0.23245388 0.098059937 0.21564609 0.10939787 0.2156294 0.1102116
		 0.20431596 0.088131294 0.2047537 0.089009807 0.022291005 0.32283041 0.021641433 0.32228002
		 0.087572396 0.3181968 0.086854756 0.31775007 0.033994734 0.18551074 0.032528222 0.19533537
		 0.078126252 0.19780569 0.077112019 0.18864857 0.11965948 0.2046036 0.11723226 0.21499543
		 0.23869997 0.10446672 0.2358976 0.1049289 0.11173445 0.15894835 0.13000757 0.16207384
		 0.1208747 0.099768147 0.12785619 0.19623218 0.11766177 0.21140949 0.20501262 0.12680511
		 0.12890548 0.089846298 0.1993311 0.095369861 0.21431905 0.15146302 0.032260239 0.20270418
		 0.11329001 0.22090481 0.0787099 0.20455383 0.034993231 0.3222681 0.090082943 0.32133064
		 0.073392808 0.31749561 0.22022206 0.11774026 0.21414334 0.12153338 0.23254448 0.13376598
		 0.22460896 0.14079307 0.20989567 0.096738026 0.21661741 0.097669348 0.54264504 0.71427703
		 0.54148555 0.74337518 0.51765901 0.73930573 0.52247334 0.70746684 0.49173287 0.73073101
		 0.49520224 0.70098382 0.52385926 0.49994376 0.48412284 0.51053554;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.49908891 0.49434164 0.51568347 0.48018906
		 0.53925365 0.76007938 0.51434821 0.75456452 0.48959991 0.7464146 0.55991048 0.71611929
		 0.56098729 0.73969787 0.56165963 0.756899 0.54338211 0.49351385 0.53411031 0.4725906
		 0.4230023 0.69273895 0.42472202 0.69093722 0.42549121 0.71557117 0.423792 0.71575242
		 0.4699758 0.63446927 0.47132292 0.63219941 0.52514583 0.61151505 0.52496737 0.6133498
		 0.55460221 0.61560738 0.55299711 0.61684507 0.42453521 0.73440671 0.42284107 0.73325032
		 0.49744377 0.56773049 0.49640101 0.56615144 0.53312474 0.56880647 0.53394938 0.57031733
		 0.55589235 0.56622982 0.55655384 0.56778443 0.53413624 0.5895254 0.48465577 0.60394526
		 0.49295026 0.58293563 0.53504354 0.53611255 0.53595823 0.53468984 0.55512208 0.52915901
		 0.55573422 0.58700901 0.51726657 0.64881611 0.53029865 0.64549643 0.57695842 0.71321881
		 0.59898955 0.70795131 0.60482347 0.73799253 0.58085603 0.74271351 0.63078076 0.72728825
		 0.62376243 0.69829571 0.59021544 0.50739563 0.5927555 0.48610201 0.61278522 0.49632564
		 0.63197482 0.50949746 0.60985732 0.75265253 0.58461994 0.75933111 0.63478065 0.7423535
		 0.57007068 0.50513995 0.57337391 0.48344675 0.69036865 0.67525202 0.69611192 0.69736409
		 0.6944505 0.69772923 0.68830252 0.67430985 0.63771099 0.62883818 0.58313656 0.61678714
		 0.58318841 0.61515272 0.6360395 0.62679398 0.55614173 0.61713594 0.70198727 0.7136215
		 0.70074487 0.71532571 0.60937047 0.58235955 0.58117002 0.57520151 0.58915597 0.57721996
		 0.61013347 0.58090478 0.55899334 0.56758744 0.57665855 0.59365493 0.61495858 0.59381765
		 0.62477481 0.61215848 0.56469387 0.53815991 0.58494884 0.54352355 0.58591026 0.54493296
		 0.58984619 0.65106022 0.5744701 0.65078855 0.46045554 0.67339247 0.45925379 0.67298561
		 0.53458464 0.53387785 0.6528703 0.66558474 0.6517092 0.6661123 0.58616513 0.54263085
		 0.46065512 0.67448008 0.4585107 0.71097445 0.45659274 0.71028483 0.45851475 0.72960705
		 0.45629257 0.72913551 0.48904413 0.54145223 0.48853326 0.53964996 0.651721 0.66733229
		 0.66294986 0.70165765 0.66117924 0.70260721 0.66728956 0.71984386 0.6649074 0.72075593
		 0.63400257 0.54046226 0.63392544 0.54246444 0.49721155 0.56585717 0.63008106 0.57196867
		 0.95042884 0.25459719 0.95149952 0.25308397 0.95681357 0.2527073 0.95852023 0.2538045
		 0.97995889 0.14374545 0.98062116 0.14994282 0.97173911 0.14588651 0.9733057 0.13932781
		 0.96845007 0.19077656 0.96556407 0.21190114 0.95901346 0.21139213 0.9597078 0.18980229
		 0.94830179 0.18835633 0.95026714 0.21121714 0.94754434 0.21170603 0.94502616 0.18914682
		 0.93078387 0.14683811 0.92831868 0.15214533 0.91859841 0.1514913 0.91626716 0.14527686
		 0.96536171 0.21362968 0.9650293 0.21673943 0.95893472 0.21599752 0.95884871 0.21308136
		 0.97245485 0.21588293 0.97182387 0.21882983 0.94176996 0.21529663 0.94227791 0.21817164
		 0.93670011 0.220312 0.935835 0.21725041 0.95023465 0.21297203 0.95064414 0.21575406
		 0.94814491 0.216103 0.94791198 0.2133625 0.97726965 0.19451322 0.97272563 0.21431465
		 0.94467747 0.14733708 0.94465405 0.15285566 0.94224888 0.15330827 0.94200677 0.14789174
		 0.96067202 0.14865774 0.95957047 0.14331734 0.93600899 0.19327618 0.94123513 0.21370418
		 0.93529439 0.21564204 0.92842519 0.19621997 0.92978776 0.16449475 0.92082602 0.16467825
		 0.94603074 0.16319707 0.94289315 0.16383608 0.97090065 0.15923193 0.96103287 0.16084886
		 0.97974807 0.16282073 0.93074864 0.17010312 0.92213845 0.17081587 0.9463836 0.16808936
		 0.94329649 0.16872856 0.97049755 0.16535605 0.9609586 0.16644631 0.97931963 0.16894308
		 0.93203592 0.17689566 0.92395866 0.17828637 0.9469732 0.17403829 0.94377458 0.17476055
		 0.96991313 0.17283238 0.96080101 0.17324729 0.97876686 0.17646383 0.95299971 0.25088194
		 0.95461375 0.25086331 0.96282375 0.2551963 0.52626878 0.28586334 0.52801949 0.28629357
		 0.54446191 0.3272211 0.52470726 0.32351017 0.49794418 0.29004699 0.46280733 0.30761498
		 0.46280855 0.30805743 0.45585418 0.31143451 0.45620656 0.31055677 0.46338475 0.30747437
		 0.46552742 0.30380255 0.46597412 0.30401027 0.49375284 0.32609117 0.49323726 0.32659984
		 0.46618414 0.30324715 0.49885839 0.32309353 0.49783343 0.3233192 0.45530018 0.30659682
		 0.45500666 0.30603576 0.44805452 0.30885643 0.44746134 0.308236 0.41743258 0.27937597
		 0.41862017 0.27972567 0.40947992 0.28281689 0.40853044 0.2823332 0.52792615 0.28518736
		 0.54317445 0.29463553 0.54329473 0.29585654 0.40333024 0.285209 0.40238646 0.2847296
		 0.44982818 0.31443208 0.44993222 0.31351656 0.32566559 0.35504031 0.32401782 0.35470468
		 0.3258298 0.35510504 0.32586581 0.35596502 0.44739237 0.35751981 0.45186582 0.35495949
		 0.46957096 0.36662251 0.46867603 0.36733943 0.43723053 0.35748154 0.43743917 0.35648382
		 0.43012515 0.35835302 0.43031988 0.3574577 0.53143555 0.35017437 0.53092402 0.35051125
		 0.54170007 0.35813469 0.54159671 0.35897946 0.54967147 0.36412543 0.54950649 0.36444485
		 0.54989022 0.36481982 0.55222362 0.36572737 0.55189508 0.36659813 0.54969877 0.36613494
		 0.54902333 0.36603159 0.54707724 0.36847782 0.53919476 0.36089087 0.53995854 0.3606267
		 0.54920393 0.3700223 0.54830736 0.37031829 0.52950889 0.35135978 0.52902204 0.35171181
		 0.47113952 0.36757755 0.56138116 0.41585898 0.56069416 0.4163509 0.5082882 0.37141258
		 0.50930721 0.37209427 0.54876429 0.37083268 0.59115958 0.40430945 0.59040636 0.40476209
		 0.59519523 0.4000892 0.59479475 0.40087014 0.6008513 0.37436455 0.60072768 0.37554246
		 0.57646924 0.42075884 0.57558781 0.4213326 0.60719723 0.42491639 0.60719746 0.42550397
		 0.58566654 0.42358786 0.58632094 0.42284846 0.60802001 0.42518133 0.60756165 0.42224485;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.60839331 0.42199993 0.61085486 0.43200004
		 0.61024278 0.43255907 0.60780001 0.41891629 0.60846174 0.4188664 0.60031182 0.40506214
		 0.5998559 0.40577579 0.60808146 0.41832769 0.59949964 0.41252124 0.60014266 0.41199541
		 0.61023474 0.41626745 0.610789 0.41651708 0.61081493 0.41596764 0.60322213 0.40905857
		 0.60374242 0.40841806 0.61322886 0.41586137 0.61306775 0.41667855 0.61616963 0.41564989
		 0.61541003 0.41567165 0.61032408 0.39699829 0.61088187 0.39623165 0.61544842 0.41683555
		 0.59654123 0.40896159 0.5958457 0.40945852 0.60764951 0.38660502 0.60725325 0.38756084
		 0.30873567 0.32630843 0.30891138 0.32547331 0.33483827 0.38632172 0.33499932 0.38548923
		 0.44022542 0.28945386 0.4305115 0.29162854 0.44537643 0.33602917 0.45340872 0.33159393
		 0.44873267 0.37623143 0.43968406 0.37595224 0.49574107 0.34923548 0.50194657 0.36697352
		 0.55168122 0.3329224 0.47340462 0.38235658 0.45595142 0.38319224 0.57563406 0.41176492
		 0.59892011 0.38760489 0.56177741 0.43387896 0.42350969 0.29397917 0.43334213 0.3760044
		 0.43919104 0.338745 0.31392103 0.33802128 0.3333267 0.39008975 0.3311969 0.37252676
		 0.59252441 0.41781002 0.58573478 0.41553456 0.58874804 0.4376294 0.57745737 0.43581426
		 0.60408437 0.39671278 0.60713995 0.40266275 0.17516369 0.18426932 0.18317944 0.18562357
		 0.18140101 0.18659951 0.17612648 0.18585365 0.19686067 0.2969164 0.18991405 0.30085704
		 0.18881088 0.29420456 0.19795603 0.29078069 0.18868226 0.24919435 0.1798929 0.24955431
		 0.18071556 0.22796835 0.18728513 0.22791745 0.16841328 0.25019667 0.16520125 0.24917749
		 0.16929746 0.22685285 0.17197925 0.22753139 0.14801443 0.29037598 0.13342255 0.29090813
		 0.13618702 0.28487381 0.1459294 0.28490797 0.18720406 0.22617875 0.18066949 0.22627161
		 0.18095899 0.2233683 0.18708938 0.22305305 0.19443685 0.2244239 0.19401294 0.22143929
		 0.16378903 0.22286589 0.15800673 0.22049965 0.15908277 0.21750863 0.1644969 0.22003426
		 0.17206949 0.22577868 0.16977984 0.22522612 0.17020452 0.22250853 0.17267299 0.22303207
		 0.19774222 0.24608223 0.19459796 0.2260076 0.16191268 0.29085836 0.15928632 0.29011682
		 0.15990913 0.284731 0.16227692 0.28535172 0.17649066 0.29591426 0.17796415 0.29066435
		 0.15649748 0.24442275 0.14914 0.24095093 0.15735471 0.22206484 0.16314429 0.22441657
		 0.13933867 0.27187654 0.14826512 0.27269271 0.16129273 0.27427438 0.16437781 0.27513292
		 0.17917991 0.27852872 0.1889112 0.28083327 0.19798893 0.27787301 0.14108032 0.2658464
		 0.1496188 0.26716623 0.16203952 0.26942244 0.16507411 0.27027759 0.17949903 0.27294013
		 0.18893898 0.27469614 0.19799137 0.27173522 0.15138125 0.26048163 0.14342278 0.25852284
		 0.16608083 0.2643849 0.16294062 0.26343933 0.1888811 0.26719728 0.17981982 0.26614508
		 0.19796824 0.26419392 0.17907816 0.18828572 0.17746943 0.18815471 0.18756902 0.18453355
		 0.81810236 0.59364039 0.83956873 0.58080029 0.85051614 0.59968358 0.82786518 0.61425954
		 0.81697696 0.50023085 0.81771624 0.49863622 0.8659026 0.51298428 0.86513066 0.51432532
		 0.91353077 0.55912805 0.91204149 0.56008649 0.8926518 0.53814566 0.89350522 0.53684622
		 0.74691623 0.63531196 0.7452172 0.63529909 0.74247026 0.60745269 0.74412918 0.60768276
		 0.87537992 0.55435234 0.85374779 0.53552347 0.82204902 0.52526534 0.89028162 0.57409143
		 0.77128929 0.63512915 0.76642972 0.60956609 0.85903782 0.47563133 0.91071737 0.50475901
		 0.93363714 0.51985431 0.82524067 0.55012923 0.82504421 0.54883993 0.84071559 0.55587661
		 0.84001094 0.55693489 0.85688853 0.56969899 0.85588437 0.57057506 0.87030232 0.58694994
		 0.86912358 0.58770853 0.78797078 0.60749501 0.78932106 0.60722369 0.79847836 0.63316762
		 0.79669863 0.63341528 0.80112267 0.55042166 0.80169916 0.54949331 0.79991877 0.55023378
		 0.78239548 0.56997055 0.78271723 0.5687589 0.70526254 0.50147486 0.70548427 0.49934381
		 0.77815878 0.50493032 0.7779544 0.507074 0.67955768 0.49884835 0.67977774 0.49671814
		 0.77929944 0.50818253 0.78154725 0.50688958 0.79115254 0.52756178 0.78920114 0.52864587
		 0.78151947 0.50525552 0.80100191 0.5481782 0.79924291 0.54897994 0.92393041 0.48221049
		 0.94661587 0.49652156 0.74928844 0.54833043 0.74801481 0.54894805 0.70070815 0.54372156
		 0.67508781 0.54104453 0.86056125 0.44644853 0.74798959 0.55135071 0.75024277 0.5496338
		 0.74955362 0.55137491 0.76734191 0.55863494 0.76669979 0.55995029 0.78157377 0.5683952
		 0.78128135 0.56943488 0.84258521 0.63168848 0.86316586 0.6174711 0.92713487 0.67140782
		 0.93425781 0.62174034 0.93579817 0.62159324 0.92889243 0.6713953 0.92551464 0.58658528
		 0.92397833 0.5868237 0.77515745 0.67919904 0.79914701 0.69318926 0.79866904 0.69479442
		 0.77446485 0.68075061 0.9102478 0.62332153 0.90207326 0.59583211 0.90645045 0.65642285
		 0.78542626 0.65709502 0.80667681 0.67211455 0.96184826 0.58420908 0.96695435 0.64331186
		 0.95760167 0.55709517 0.88514316 0.64321887 0.88506913 0.62695563 0.88632417 0.62675238
		 0.88623559 0.64393151 0.87923175 0.60685694 0.88044512 0.60630584 0.81748903 0.65337008
		 0.79751521 0.63468391 0.81829584 0.65225357 0.87488365 0.66504991 0.87596762 0.66490972
		 0.87455589 0.66622329 0.85056794 0.67420435 0.8493318 0.67399502 0.87972879 0.77257192
		 0.90473914 0.70409083 0.90677476 0.7047925 0.88176036 0.77325261 0.87350643 0.79773843
		 0.87147641 0.79705691 0.90428674 0.70240784 0.88976347 0.68492043 0.89155877 0.68359351
		 0.90639466 0.70089686 0.90787083 0.70159876 0.87541711 0.6673578 0.87687552 0.6660893
		 0.98421443 0.55494595 0.98784411 0.58152163 0.83938801 0.75922394 0.85421968 0.71399832
		 0.85530937 0.71309483 0.83121687 0.78365397 0.99414724 0.65401232 0.85202122 0.71302462;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.85264802 0.71159124 0.85451901 0.71168613
		 0.8519482 0.69243276 0.85341132 0.69239306 0.8493579 0.67523122 0.850425 0.67539585
		 0.63894391 0.23663379 0.64647484 0.23968305 0.64456201 0.24023749 0.63957357 0.23838891
		 0.64313519 0.3523733 0.63566577 0.35519272 0.63559783 0.34844476 0.64516091 0.34648883
		 0.64275026 0.30430984 0.63441765 0.30330664 0.63876295 0.28213364 0.64520586 0.28296679
		 0.62181258 0.30143404 0.61890388 0.29988343 0.62603188 0.27798259 0.62996387 0.27991509
		 0.59592807 0.33861268 0.58140254 0.33720011 0.58495164 0.33158827 0.59460688 0.33291596
		 0.64529002 0.28128731 0.63903379 0.2804786 0.63965333 0.2775529 0.64570642 0.27815115
		 0.65306425 0.2797364 0.65328193 0.27658409 0.62116218 0.27327263 0.61509705 0.26997793
		 0.61678064 0.26714605 0.6222676 0.27052534 0.63043499 0.27826124 0.6266557 0.27633452
		 0.6274817 0.27371967 0.63133097 0.27551997 0.65216053 0.30233717 0.65313697 0.28135896
		 0.60956693 0.34099618 0.60709631 0.33988643 0.60848057 0.33462536 0.61072969 0.33557969
		 0.62317324 0.34821975 0.62542343 0.34324852 0.6095289 0.29353726 0.60293412 0.28939438
		 0.61424339 0.27144784 0.62040591 0.27478772 0.58980632 0.31915361 0.59857202 0.3211171
		 0.61133921 0.32443434 0.61428308 0.32573432 0.6284585 0.33142704 0.63775277 0.33526748
		 0.64720285 0.33378857 0.59228611 0.31342441 0.60062301 0.31580645 0.61276102 0.31969875
		 0.6156826 0.32099241 0.62963247 0.325957 0.63874578 0.3292374 0.64819872 0.32776827
		 0.60314369 0.30937809 0.5954473 0.30646747 0.61758733 0.31526476 0.6144619 0.31382298
		 0.63990307 0.32188272 0.63102365 0.3193053 0.6494472 0.32036477 0.64202476 0.24142374
		 0.64049625 0.24090178 0.65087044 0.23855247 0.53329027 0.058734 0.54417598 0.085166156
		 0.50174665 0.079350054 0.48846436 0.064286411 0.53203058 0.057447612 0.54708409 0.1242429
		 0.54797399 0.13140619 0.54740381 0.13216054 0.54670995 0.12448132 0.54689801 0.12367368
		 0.54854453 0.11968225 0.54895222 0.11995804 0.51519722 0.10794234 0.51536906 0.10723853
		 0.51565856 0.10231596 0.51532745 0.1013211 0.54909307 0.11911249 0.55246586 0.13009727
		 0.55183351 0.13013577 0.55447298 0.13768053 0.55363512 0.13749313 0.59469503 0.14846379
		 0.59676385 0.15761328 0.59585911 0.15705043 0.59378189 0.14762783 0.51601499 0.04922843
		 0.51712555 0.048706651 0.53302968 0.05696255 0.59788668 0.16411102 0.59698856 0.16355091
		 0.54867405 0.13829219 0.54794371 0.13885355 0.57732713 0.26611012 0.57846588 0.26734686
		 0.57643193 0.26641661 0.57718688 0.26600295 0.51229042 0.16315156 0.4928847 0.14995629
		 0.49303219 0.14881253 0.51216149 0.15799141 0.51832706 0.17115426 0.51758057 0.17184848
		 0.52117532 0.17776066 0.52050942 0.17838997 0.47537956 0.087860525 0.47540823 0.087248564
		 0.46264526 0.083030105 0.46332175 0.082509816 0.45391139 0.079021394 0.45410806 0.078721881
		 0.45339429 0.078882158 0.45083857 0.078061461 0.45142201 0.077335477 0.45278758 0.080242574
		 0.45235568 0.079715133 0.46206325 0.08528024 0.46222362 0.086070776 0.45167068 0.083169281
		 0.44945785 0.083043516 0.44926083 0.082116365 0.47532004 0.090108812 0.47537389 0.089510381
		 0.40355694 0.095967948 0.40362608 0.095124543 0.49140584 0.14795727 0.46791282 0.11747253
		 0.46902058 0.11800104 0.44877788 0.082902789 0.39832449 0.064489245 0.39833385 0.063611984
		 0.39943898 0.058730364 0.39991087 0.057988584 0.41820335 0.040685952 0.41915333 0.039976954
		 0.39165205 0.085700393 0.39169437 0.084648728 0.37243611 0.0603109 0.38486296 0.07723403
		 0.3845613 0.078174889 0.3719303 0.060610235 0.37178892 0.059737504 0.37433714 0.057793736
		 0.37454963 0.058634698 0.36430979 0.06159085 0.36447853 0.060779512 0.37699938 0.056137085
		 0.37729311 0.056732297 0.3926447 0.056873381 0.39302748 0.056117475 0.37765646 0.056189895
		 0.38714778 0.059796751 0.38702255 0.060618341 0.37783718 0.05293566 0.37833405 0.053285897
		 0.37829691 0.052633405 0.38839346 0.054874539 0.38810694 0.055648804 0.37653881 0.051055372
		 0.37716037 0.050500453 0.37584692 0.047860146 0.39524728 0.04251796 0.39487129 0.043388724
		 0.37621433 0.048525453 0.37519252 0.049084663 0.3915168 0.062202454 0.39159101 0.061350644
		 0.40454823 0.041217685 0.40516871 0.040388942 0.61130029 0.26517528 0.61067599 0.2657572
		 0.54643416 0.27385378 0.54580468 0.27442181 0.57744646 0.14360082 0.57428849 0.13416266
		 0.53174329 0.15380573 0.53139627 0.14464557 0.50050002 0.17929727 0.49558398 0.17169255
		 0.47608045 0.12118012 0.49449 0.11741173 0.47987938 0.061003625 0.47758713 0.1536212
		 0.48590708 0.16904092 0.39985263 0.080774307 0.40874988 0.048407733 0.3879295 0.10399538
		 0.57905304 0.15081042 0.50373381 0.1847564 0.5326153 0.160505 0.59796804 0.26737058
		 0.54335982 0.27766335 0.55949712 0.27041036 0.38602984 0.069322109 0.39144993 0.074007034
		 0.37824363 0.091482759 0.3709141 0.082684815 0.39828944 0.048613846 0.3916167 0.049016595
		 0.95571285 0.017359987 0.95447141 0.018736871 0.94915175 0.018484579 0.94758713 0.017193848
		 0.91328424 0.12391283 0.9133656 0.11768151 0.92170173 0.12276808 0.91936296 0.12909319
		 0.93029171 0.078599319 0.93564731 0.057967301 0.94209033 0.059250601 0.93885761 0.080604941
		 0.95001513 0.083389819 0.95075303 0.060457535 0.9535138 0.060291938 0.95336121 0.082989886
		 0.96250182 0.12668371 0.96557993 0.12170517 0.97515482 0.12350502 0.97673315 0.12995194
		 0.93605244 0.056275468 0.93675017 0.053227272 0.94271183 0.054686338 0.94245297 0.057592489
		 0.92927885 0.053192087 0.93025327 0.050342508 0.95966834 0.057402037 0.95950204 0.054487608
		 0.96529156 0.053014688 0.9657892 0.056152828 0.95099169 0.058718286 0.95091218 0.055906869
		 0.95343417 0.055853374 0.95334357 0.058603227 0.9219768 0.073837794 0.92882299 0.054716021;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.94875664 0.12454572 0.94943804 0.1190691
		 0.95188147 0.11890481 0.95147699 0.12431142 0.93302411 0.12133542 0.93348068 0.12676917
		 0.96280068 0.079944372 0.96001267 0.059046023 0.96613836 0.057811119 0.97067636 0.077902839
		 0.96558672 0.10926584 0.97450763 0.11014152 0.94929838 0.10863794 0.95249075 0.10837413
		 0.92412329 0.10962021 0.93411648 0.10919023 0.91576499 0.10500163 0.96529716 0.10358162
		 0.97393173 0.10388593 0.94952643 0.10373847 0.95266902 0.10346831 0.92525125 0.10358941
		 0.93485463 0.10364275 0.91691756 0.098975725 0.96482086 0.096683405 0.97300637 0.096243739
		 0.94964576 0.097762272 0.95290852 0.097422883 0.92671835 0.096237928 0.93581754 0.096910238
		 0.91835755 0.091577135 0.95272273 0.020746926 0.95111817 0.020575147 0.94348001 0.015300119
		 0.60134333 0.94444013 0.64049178 0.95035863 0.65285498 0.98152316 0.60714889 0.98202288
		 0.72544402 0.81342101 0.72710085 0.8465755 0.69939977 0.85076058 0.69544655 0.81868732
		 0.7255435 0.92455554 0.7249822 0.94023025 0.69314331 0.9306711 0.69830966 0.9172653
		 0.67722714 0.90553361 0.67014724 0.91657472 0.6547879 0.9015435 0.65878826 0.88998592
		 0.63111228 0.84806609 0.64446497 0.87526476 0.63845354 0.88627589 0.61963916 0.85697794
		 0.71099377 0.74536401 0.71520877 0.75900656 0.67612523 0.76931089 0.66832131 0.75723255
		 0.60049367 0.91074634 0.63383049 0.92459083 0.64913803 0.7842595 0.63829106 0.77592272
		 0.67758381 0.85632461 0.67332184 0.82639468 0.6642741 0.94840133 0.68452752 0.97683281
		 0.65487254 0.92573375 0.70074451 0.86996704 0.67956573 0.87439346 0.7271049 0.86686736
		 0.6451025 0.83938539 0.64714962 0.83842152 0.65539443 0.86294305 0.65360886 0.86438501
		 0.72602206 0.90906423 0.72595811 0.91141164 0.7014879 0.90546751 0.70204377 0.90341902
		 0.6817261 0.89592832 0.68271577 0.89414787 0.63820833 0.81238604 0.63735056 0.81267583
		 0.63681161 0.81150931 0.65790856 0.79271984 0.65932244 0.79436362 0.7187506 0.77139616
		 0.71929866 0.77358741 0.68364668 0.78251398 0.6826244 0.78051424 0.66627622 0.87720603
		 0.66498536 0.87885809 0.6117897 0.86981767 0.61276537 0.86858916 0.63530397 0.8971855
		 0.63512969 0.898682 0.66309285 0.92441356 0.66183561 0.92492938 0.65196574 0.9149437
		 0.65205073 0.9135229 0.68716717 0.94123596 0.6864509 0.94221389 0.72448885 0.95342869
		 0.72443461 0.95488143 0.6305961 0.77022868 0.62943631 0.76933545 0.6624487 0.74792516
		 0.66319591 0.74917358 0.70775509 0.73434663 0.70816189 0.73574299 0.84531665 0.94784826
		 0.837192 0.98509187 0.79262841 0.98179609 0.80668873 0.95080817 0.75702357 0.81255907
		 0.75480354 0.8466875 0.75298524 0.91568434 0.75709474 0.92934823 0.77421767 0.90283114
		 0.78030866 0.91440362 0.79291612 0.88633549 0.7959528 0.89885992 0.82318884 0.84223074
		 0.83265364 0.8558678 0.81247193 0.8837111 0.80761743 0.87105268 0.75467825 0.74289769
		 0.75612122 0.75766897 0.84802437 0.91399026 0.81463146 0.92459971 0.78785986 0.74680591
		 0.78791982 0.76219273 0.78157306 0.81649733 0.77654409 0.85030288 0.76221168 0.9760921
		 0.78382152 0.94776744 0.79434186 0.92450136 0.77370691 0.8699947 0.75307322 0.86692232
		 0.81066376 0.82951277 0.79985845 0.85824966 0.79825437 0.85657156 0.80868745 0.82831287
		 0.75018656 0.90159822 0.7506156 0.9036743 0.7695806 0.89099544 0.77044505 0.89283293
		 0.82438558 0.7926054 0.78750575 0.7785179 0.78770101 0.77615428 0.8246187 0.78913802
		 0.82609212 0.79299015 0.75711435 0.77093631 0.75722682 0.77320832 0.78771317 0.87425315
		 0.78657019 0.8724823 0.83891582 0.87134218 0.81479383 0.89733243 0.8147217 0.89573562
		 0.83806628 0.86991954 0.78654528 0.92279649 0.79779744 0.91171348 0.79779482 0.91321635
		 0.78772199 0.92336577 0.76280218 0.94110882 0.762178 0.94010544 0.78808671 0.73672694
		 0.7537064 0.73315841 0.75357348 0.73170346 0.78815413 0.73526382 0.60635978 0.80546713
		 0.6055029 0.80641711 0.6045202 0.80641615 0.82065976 0.74204111 0.8198356 0.74272382
		 0.8202914 0.74134815 0.62617964 0.81095552 0.6268549 0.80913413 0.63634098 0.81276536
		 0.61439753 0.80898339 0.61504066 0.80674595 0.60582733 0.80739772 0.84510595 0.80617714
		 0.84384573 0.80752772 0.82761282 0.79463786 0.82899183 0.79289365 0.86045206 0.82108414
		 0.85889614 0.82216954 0.86905384 0.83045089 0.86749339 0.83151436 0.82088995 0.75365627
		 0.82304311 0.7717346 0.86864251 0.83155489 0.7245332 0.80539155 0.72438252 0.80420303
		 0.75729263 0.80314595 0.75727475 0.80435324 0.69375294 0.81100363 0.69347882 0.80987453
		 0.67153728 0.81936985 0.67122108 0.8183676 0.91526651 0.91754532 0.91441822 0.91852164
		 0.88889921 0.89639306 0.88974786 0.89541674 0.51287675 0.8369891 0.51299155 0.83570075
		 0.54668617 0.83885193 0.54657209 0.84014088 0.57299662 0.84194469 0.57289159 0.84323788
		 0.64412725 0.83362716 0.64379287 0.83287549 0.63107693 0.83999884 0.63088775 0.83896464
		 0.64166981 0.83390284 0.64204693 0.83465445 0.61820918 0.84676039 0.6178956 0.84543264
		 0.60684216 0.85418451 0.60650182 0.85071462 0.60507971 0.85005331 0.60504019 0.85142636
		 0.8248142 0.83280569 0.82526922 0.83168304 0.83652377 0.84512323 0.83588266 0.84623557
		 0.81449431 0.82391912 0.81501919 0.82300788 0.84506774 0.85811102 0.84429049 0.85941488
		 0.86901665 0.87938493 0.86987233 0.87841201 0.84525043 0.86111629 0.84609628 0.85953128
		 0.78343493 0.80708587 0.78317487 0.80827373 0.81290269 0.82145572 0.81248426 0.8224231
		 0.59191543 0.94334364 0.59731776 0.98193347 0.59191871 0.90701485 0.60588878 0.85867661
		 0.57618511 0.80745614 0.54965222 0.80584788 0.51591086 0.80299962 0.85476422 0.9475525
		 0.84694904 0.98574948 0.85688561 0.9112066 0.86896455 0.83257872 0.89088631 0.85272753;
	setAttr ".uvst[0].uvsp[2000:2249]" 0.91109878 0.870511 0.93667883 0.89280313
		 0.24356973 0.20956279 0.24450308 0.20803522 0.28815973 0.20546775 0.27862102 0.2231086
		 0.23887908 0.23772271 0.2447961 0.27658397 0.24521631 0.27674502 0.24581754 0.2844097
		 0.24513888 0.28373876 0.24486214 0.27599239 0.2421397 0.27270293 0.24247617 0.27235281
		 0.27155662 0.25338438 0.27185261 0.25405213 0.24183017 0.27190453 0.27034009 0.24755424
		 0.27021873 0.2486119 0.24117124 0.2828058 0.24054569 0.28280288 0.24067152 0.29002738
		 0.2398141 0.29025173 0.19984663 0.30609918 0.20062822 0.30511001 0.20001745 0.31454885
		 0.19920564 0.31528482 0.24343175 0.20777215 0.25707585 0.19625451 0.25825602 0.19657405
		 0.2001251 0.32079005 0.19959211 0.3216573 0.24636793 0.2911773 0.2456544 0.2906349
		 0.24540257 0.43281871 0.24455869 0.43428171 0.24555433 0.43271446 0.24641174 0.43320471
		 0.28661281 0.30683076 0.28557271 0.30198783 0.30237812 0.28869396 0.30276662 0.28975651
		 0.28381598 0.31640342 0.28292161 0.31599742 0.28312659 0.32353824 0.28223234 0.3232173
		 0.30582333 0.22501938 0.30599058 0.22560708 0.31643564 0.21773265 0.31721389 0.21808095
		 0.32440078 0.21204551 0.32466698 0.21228288 0.32513881 0.21201716 0.32665277 0.21004404
		 0.32739264 0.21056978 0.32636178 0.2125351 0.32607692 0.21314751 0.32791907 0.21561347
		 0.31833738 0.22091274 0.31830859 0.22011514 0.33001864 0.21399839 0.33004493 0.21492134
		 0.30636728 0.22720809 0.30655551 0.22777544 0.30379474 0.28750348 0.37698758 0.21791257
		 0.37720448 0.21871753 0.31900859 0.25328076 0.31996393 0.25252032 0.33067447 0.2146173
		 0.37493807 0.18574323 0.37518132 0.1865914 0.37186891 0.18074681 0.37252879 0.18133344
		 0.34867913 0.16727172 0.34974766 0.16780074 0.38606906 0.20502986 0.38634187 0.20606475
		 0.40021288 0.17714693 0.40077329 0.17742296 0.39153636 0.19708307 0.39107496 0.19616912
		 0.40083748 0.1766312 0.3981027 0.17521484 0.39835185 0.17440842 0.40855139 0.17696168
		 0.40878242 0.17775576 0.3950783 0.17316921 0.39532989 0.17222221 0.37838745 0.17713936
		 0.3789798 0.17776038 0.39454049 0.17265709 0.3856709 0.17981674 0.38535798 0.1790498
		 0.39229894 0.17015077 0.39261413 0.16959806 0.39204651 0.1695006 0.38329798 0.17535745
		 0.38274986 0.17470841 0.39198142 0.16712834 0.39277136 0.16732578 0.39187139 0.1641788
		 0.39180899 0.16493909 0.37287861 0.16545574 0.3722586 0.16471685 0.39275861 0.16498126
		 0.38118112 0.18177976 0.3814559 0.18259116 0.36231416 0.16481726 0.36311674 0.165489
		 0.21323633 0.44362104 0.21235073 0.44352144 0.2778548 0.43949199 0.27710348 0.43911326
		 0.21885377 0.28896722 0.21679372 0.29855892 0.26541835 0.30273324 0.26384997 0.2935831
		 0.30383676 0.3075048 0.30189449 0.31605461 0.40098053 0.16884656 0.39850765 0.17028542
		 0.29403549 0.25861284 0.31285065 0.25801325 0.29577637 0.20037998 0.3185938 0.29041192
		 0.31373984 0.30691007 0.3773827 0.20299755 0.36083829 0.17325468 0.39382327 0.22362868
		 0.21602333 0.30578285 0.30064207 0.3217696 0.26617551 0.30956376 0.22585613 0.44063205
		 0.2817874 0.44076169 0.26377267 0.43613365 0.38839769 0.18839149 0.38406122 0.19432719
		 0.40562379 0.19946115 0.40040666 0.20931841 0.37110287 0.1712722 0.37771791 0.16997449
		 0.37692264 0.13918999 0.37538216 0.13813916 0.37484869 0.13284695 0.37586707 0.13113575
		 0.26598835 0.10599086 0.27219301 0.10551689 0.2678864 0.11427625 0.26137429 0.11250611
		 0.31238857 0.11848388 0.33365908 0.12147557 0.33284271 0.12792099 0.31126031 0.12680125
		 0.30989835 0.13947299 0.33277538 0.13699579 0.333657 0.14128724 0.31066668 0.14267856
		 0.26739272 0.15514454 0.27257168 0.15786195 0.27141792 0.16753936 0.26509148 0.16955549
		 0.33530533 0.12181666 0.3384445 0.12220313 0.33749941 0.1282115 0.33451238 0.12807518
		 0.33876494 0.11468247 0.34186992 0.1152666 0.33699235 0.1471839 0.33992943 0.14680403
		 0.34182325 0.1529631 0.33865955 0.15388104 0.3344945 0.13695532 0.33737302 0.13677704
		 0.33814767 0.14095503 0.33540905 0.1410974 0.31666711 0.10987266 0.33721289 0.11420398
		 0.2685267 0.14134571 0.27406156 0.14158919 0.27441758 0.14400643 0.2689774 0.14401647
		 0.27034667 0.12543377 0.26496822 0.12635526 0.31445086 0.15334874 0.33533573 0.14753541
		 0.3370226 0.15433872 0.3168042 0.16077337 0.28499165 0.15700522 0.28467903 0.16598246
		 0.28448501 0.1406363 0.28500074 0.1438131 0.28117916 0.1155182 0.28255063 0.12548164
		 0.2849943 0.1067472 0.29064938 0.15636101 0.29085258 0.16502962 0.28942654 0.14047834
		 0.28994206 0.14363188 0.28726336 0.11607911 0.2881391 0.12572578 0.29106846 0.10730227
		 0.29750752 0.15554181 0.2983875 0.16372332 0.29544935 0.14007917 0.2960569 0.14346737
		 0.29467013 0.11681379 0.29492554 0.1260567 0.29854405 0.10795995 0.37318239 0.13661405
		 0.37306198 0.13500357 0.37806836 0.12716651 0.38450521 0.72776264 0.42751479 0.77002883
		 0.42120814 0.77644658 0.37033176 0.74218559 0.40725428 0.79524583 0.3563779 0.76098472
		 0.40367877 0.80350274 0.3483426 0.77954119 0.42843312 0.78180927 0.41447926 0.80060869
		 0.34014055 0.74893254 0.35409436 0.73013324 0.49288368 0.80820704 0.48318237 0.82594943
		 0.43565816 0.7871722 0.43997502 0.77927744 0.46922851 0.84474862 0.42170447 0.80597144
		 0.45379335 0.85781252 0.41483629 0.81178439 0.48546568 0.85680091 0.49941957 0.83800167
		 0.28962472 0.48998103 0.29007623 0.49015638 0.29246989 0.4925172 0.29199335 0.49366882
		 0.33777949 0.4422209 0.35210827 0.45248362 0.36400446 0.4007636 0.36495504 0.39628986
		 0.39429793 0.42997476 0.39048961 0.43248275 0.29318151 0.49376497 0.29285821 0.49319306
		 0.35521594 0.45454064 0.35723564 0.45718619 0.33389708 0.43942776 0.36448249 0.46484694;
	setAttr ".uvst[0].uvsp[2250:2499]" 0.29740331 0.49747416 0.29712752 0.49690524
		 0.36396793 0.46127191 0.39561418 0.43123975 0.39690199 0.43840066 0.39311656 0.43590841
		 0.40405074 0.43863502 0.40364388 0.44521359 0.39882341 0.44205585 0.36128619 0.45981941
		 0.29545423 0.49596515 0.29540011 0.49784073 0.40175155 0.44726047 0.39891276 0.44360754
		 0.29731604 0.50086868 0.29808506 0.49995354 0.36772987 0.48253772 0.36524889 0.48535296
		 0.2445282 0.54612833 0.22924975 0.5321964 0.41233388 0.49040964 0.4069517 0.48869166
		 0.4093655 0.44468895 0.42396364 0.48564216 0.36161992 0.39677486 0.33499107 0.43831316
		 0.47595212 0.52265292 0.47531173 0.52364898 0.46639037 0.51920277 0.46703914 0.5182054
		 0.46703133 0.51820004 0.42390653 0.49532053 0.4242532 0.49415079 0.4242458 0.49415216
		 0.41197035 0.49150619 0.36523685 0.48659202 0.41454718 0.61552054 0.41330537 0.61654681
		 0.40609816 0.60930604 0.40693739 0.60812467 0.3953611 0.59824246 0.39480165 0.59971291
		 0.38121173 0.59815854 0.38162521 0.59634274 0.36661878 0.60144764 0.36594805 0.60006207
		 0.43600732 0.58715177 0.4267773 0.5819546 0.38942638 0.56276554 0.36370173 0.56335676
		 0.40297613 0.56800818 0.36196253 0.67861551 0.36559144 0.67668468 0.36917695 0.67875725
		 0.36422345 0.68184102 0.41246447 0.61787552 0.40552869 0.61060327 0.39432099 0.60079831
		 0.38085148 0.59980291 0.36655059 0.60300821 0.40462801 0.61256939 0.39362982 0.6024788
		 0.41118869 0.61984748 0.38039312 0.602305 0.36636361 0.60535997 0.37308112 0.68069243
		 0.37574211 0.68285996 0.4741011 0.52553618 0.46517187 0.52109641 0.4112815 0.49358693
		 0.36520711 0.48893502 0.42325506 0.49753287 0.47242519 0.52815986 0.46349084 0.52372789
		 0.41032687 0.49648455 0.36515728 0.49218354 0.42234913 0.50059885 0.02575773 0.17377852
		 0.017839372 0.17194591 0.019673109 0.17107843 0.024892092 0.17213909 0.010785758
		 0.06004997 0.017953455 0.056526985 0.018661559 0.063232839 0.0093294978 0.066110566
		 0.016129613 0.10817046 0.02492547 0.10833023 0.022826314 0.12982647 0.016264915 0.12948899
		 0.036424041 0.10836954 0.039570212 0.1095777 0.034158468 0.13161997 0.031521976 0.13078223
		 0.05916369 0.069469407 0.073761702 0.06980212 0.070644915 0.075662136 0.060921609
		 0.075051382 0.016242921 0.131229 0.022771716 0.13152294 0.022310138 0.1344036 0.016172111
		 0.13435511 0.0089195371 0.13255523 0.009165585 0.13555734 0.039418221 0.13592984
		 0.045046926 0.13864018 0.043793023 0.14156188 0.038541436 0.13871427 0.031327069
		 0.13252656 0.03357935 0.13321479 0.032993078 0.13590236 0.030560613 0.13523223 0.0069009662
		 0.1107444 0.0088513494 0.13096572 0.045317531 0.0681649 0.04789567 0.069060549 0.046955228
		 0.074400142 0.044628024 0.073640153 0.031062484 0.062254313 0.02928108 0.067407802
		 0.047977686 0.11484189 0.055116117 0.11874582 0.045793235 0.13711683 0.040155351
		 0.13442056 0.066729903 0.088450387 0.057867229 0.087107018 0.044955373 0.084756359
		 0.041926146 0.083716691 0.027349412 0.079449818 0.017770708 0.076574877 0.0085332394
		 0.078994319 0.064634442 0.094367251 0.056189179 0.092543885 0.04392314 0.089555636
		 0.04094398 0.088522151 0.026700318 0.085009471 0.01737994 0.082699671 0.0081679821
		 0.08512187 0.054034531 0.099112615 0.061863124 0.10154007 0.039590836 0.09434475
		 0.042669773 0.095474765 0.016994834 0.090188548 0.025978863 0.091773406 0.0077456236
		 0.092651531 0.022092223 0.16953437 0.023689806 0.16976137 0.013393104 0.17277397
		 0.16397595 0.44137174 0.16467154 0.43962288 0.17429286 0.4518519 0.17270738 0.45069718
		 0.12684545 0.46002284 0.1495223 0.48523211 0.11665692 0.52686012 0.11592396 0.52478445
		 0.10721005 0.52538669 0.10826816 0.52366519 0.090213612 0.47515011 0.11442073 0.45351261
		 0.17239541 0.51481128 0.11975999 0.53543055 0.11920512 0.52817094 0.16569114 0.50507689
		 0.11851259 0.42308751 0.17514944 0.45445246 0.18815714 0.45869973 0.11906572 0.53778517
		 0.17211121 0.54406321 0.18973094 0.45650256 0.20077419 0.50247025 0.32074249 0.56956494
		 0.30893004 0.56470668 0.30728734 0.56363547 0.32212985 0.56829393 0.31646979 0.61091554
		 0.25968793 0.6440376 0.25748771 0.64407098 0.28485841 0.59864342 0.26342791 0.65080512
		 0.26218706 0.65240204 0.32694948 0.62024331 0.31521285 0.65055335 0.24911551 0.58767545
		 0.26059344 0.59051192 0.25537306 0.64213526 0.24838381 0.64415085 0.3539499 0.6056143
		 0.29596949 0.55309999 0.30455315 0.56376266 0.24641375 0.64561307 0.22183804 0.59825671
		 0.29746401 0.55084956 0.25058132 0.55678475 0.043541983 0.71243817 0.022493765 0.70559216
		 0.033105209 0.67987472 0.053471059 0.68622094 0.10795072 0.76323223 0.10800192 0.74014568
		 0.15663709 0.74112684 0.15365869 0.75980967 0.082342088 0.76676512 0.080560073 0.74425089
		 0.039860144 0.7412529 0.020975485 0.74294627 0.019312352 0.73919976 0.040591866 0.73723143
		 0.040635809 0.74125111 0.044848904 0.7362721 0.073717311 0.76656395 0.072003514 0.74691629
		 0.013994455 0.73948717 0.019598752 0.74309063 0.068410188 0.76789451 0.068468943
		 0.76657099 0.073576808 0.76878923 0.072711036 0.76953906 0.06649743 0.74791467 0.066128105
		 0.74677008 0.070705265 0.74525005 0.071707107 0.74588966 0.053987339 0.76604956 0.058851212
		 0.74941617 0.038663924 0.7224586 0.018128514 0.72389281 0.05924505 0.74833596 0.046920151
		 0.71442389 0.04705438 0.71544027 0.042717159 0.72247887 0.053840056 0.76731557 0.074685901
		 0.77346081 0.074354276 0.77446645 0.051754422 0.77363628 0.035753667 0.76373929 0.040110931
		 0.7421174 0.058796138 0.74227905 0.012874335 0.72476143 0.035760328 0.76536041 0.036854595
		 0.77238101 0.016457573 0.70613396 0.017418593 0.70532537 0.012829781 0.72439867 0.070952758
		 0.7399621 0.071487814 0.74058843 0.099780247 0.78889549 0.10072856 0.78824604 0.14611429
		 0.80742162 0.14516346 0.80807126 0.099607632 0.78872514 0.075632513 0.77420622;
	setAttr ".uvst[0].uvsp[2500:2602]" 0.07674177 0.77374685 0.10398865 0.78487331
		 0.10441279 0.78397828 0.1467737 0.8032518 0.14663008 0.80415934 0.080410182 0.77284604
		 0.081144974 0.77207589 0.10692839 0.72933871 0.10671321 0.72839922 0.16052461 0.71166509
		 0.16122171 0.71250439 0.08030913 0.74148023 0.079570323 0.74075937 0.099277437 0.72502995
		 0.098793358 0.72415787 0.15406018 0.70740736 0.15527093 0.70806253 0.09863539 0.72426707
		 0.073542044 0.73992527 0.072335631 0.73951519 0.050199509 0.63318962 0.013552561
		 0.67971015 0.0030654371 0.63382107 0.063254386 0.69226474 0.068231001 0.63876462
		 0.094121143 0.65404975 0.27331442 0.74902594 0.27221689 0.72101289 0.29354399 0.72145611
		 0.29544729 0.74921185 0.19604585 0.77725601 0.20317136 0.75528163 0.22797711 0.76764721
		 0.2193003 0.78850645 0.26766446 0.77751911 0.26824561 0.77347392 0.28780118 0.78209221
		 0.28503537 0.78511745 0.26693067 0.7772702 0.26451114 0.77121478 0.23529401 0.77281106
		 0.22759032 0.79092532 0.2927531 0.78405207 0.28629512 0.78569132 0.23226768 0.79378545
		 0.22760946 0.79407322 0.22702658 0.79309279 0.2326026 0.79252481 0.24023165 0.77545249
		 0.23589723 0.77192861 0.23705183 0.77163082 0.24094254 0.77448267 0.24704692 0.77924865
		 0.24648541 0.79654408 0.29378039 0.76795185 0.27476099 0.76007599 0.24700989 0.77810234
		 0.27091077 0.75880933 0.26903096 0.75075829 0.26948079 0.74983704 0.24623489 0.79779422
		 0.24622354 0.80445665 0.22476926 0.79814607 0.22452725 0.79723597 0.26715556 0.77825707
		 0.26449442 0.80013376 0.24934965 0.77250963 0.29848751 0.77044272 0.26397857 0.80167025
		 0.26072624 0.8079831 0.3009997 0.75164092 0.29864484 0.77011287 0.30034488 0.75056905
		 0.23847444 0.76654464 0.2377653 0.76697159 0.19592613 0.80420643 0.14681837 0.80833459
		 0.19522449 0.80329436 0.22249265 0.79689807 0.22344956 0.79767269 0.19614971 0.80409563
		 0.19315255 0.79907674 0.19302216 0.79809409 0.21881293 0.7939412 0.21927728 0.79490381
		 0.2075686 0.7453534 0.16214681 0.71192366 0.20806701 0.74452865 0.23001172 0.76464069
		 0.22908266 0.76509583 0.2161898 0.74363995 0.16826792 0.71013725 0.16962421 0.70989227
		 0.21692291 0.74296319 0.21703929 0.74311638 0.23728828 0.76569635 0.2360118 0.76571137
		 0.29214561 0.67175967 0.33664376 0.68731374 0.31213856 0.72750401 0.26102138 0.72364032
		 0.2438747 0.67760628 0.27327681 0.67132556;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 44 ".pt";
	setAttr ".pt[45]" -type "float3" 0 3.0517578e-05 0 ;
	setAttr ".pt[46]" -type "float3" 0 4.5776367e-05 0 ;
	setAttr ".pt[47]" -type "float3" 0 -6.1035156e-05 0 ;
	setAttr ".pt[48]" -type "float3" 0 -1.5258789e-05 0 ;
	setAttr ".pt[892]" -type "float3" 0 -4.7423096 0 ;
	setAttr ".pt[893]" -type "float3" 0 -4.7423096 0 ;
	setAttr ".pt[894]" -type "float3" 0 -4.741394 0 ;
	setAttr ".pt[895]" -type "float3" 0 -4.7414551 0 ;
	setAttr ".pt[918]" -type "float3" 0 -4.7419434 0 ;
	setAttr ".pt[919]" -type "float3" 0 -4.7419434 0 ;
	setAttr ".pt[1076]" -type "float3" 0 -4.7423096 0 ;
	setAttr ".pt[1077]" -type "float3" 0 -4.7423096 0 ;
	setAttr ".pt[1078]" -type "float3" 0 -4.741394 0 ;
	setAttr ".pt[1079]" -type "float3" 0 -4.7414551 0 ;
	setAttr ".pt[1102]" -type "float3" 0 -4.7419434 0 ;
	setAttr ".pt[1103]" -type "float3" 0 -4.7419434 0 ;
	setAttr ".pt[1243]" -type "float3" 0 -4.7423096 0 ;
	setAttr ".pt[1244]" -type "float3" 0 -4.7423096 0 ;
	setAttr ".pt[1245]" -type "float3" 0 -4.741394 0 ;
	setAttr ".pt[1246]" -type "float3" 0 -4.7414551 0 ;
	setAttr ".pt[1269]" -type "float3" 0 -4.7419434 0 ;
	setAttr ".pt[1270]" -type "float3" 0 -4.7419434 0 ;
	setAttr ".pt[1427]" -type "float3" 0 -4.7423096 0 ;
	setAttr ".pt[1428]" -type "float3" 0 -4.7423096 0 ;
	setAttr ".pt[1429]" -type "float3" 0 -4.741394 0 ;
	setAttr ".pt[1430]" -type "float3" 0 -4.7414551 0 ;
	setAttr ".pt[1453]" -type "float3" 0 -4.7419434 0 ;
	setAttr ".pt[1454]" -type "float3" 0 -4.7419434 0 ;
	setAttr ".pt[1805]" -type "float3" 0 -4.7423096 0 ;
	setAttr ".pt[1806]" -type "float3" 0 -4.7423096 0 ;
	setAttr ".pt[1807]" -type "float3" 0 -4.741394 0 ;
	setAttr ".pt[1808]" -type "float3" 0 -4.7414551 0 ;
	setAttr ".pt[1831]" -type "float3" 0 -4.7419434 0 ;
	setAttr ".pt[1832]" -type "float3" 0 -4.7419434 0 ;
	setAttr ".pt[1920]" -type "float3" 0 3.0517578e-05 0 ;
	setAttr ".pt[1921]" -type "float3" 0 4.5776367e-05 0 ;
	setAttr ".pt[1922]" -type "float3" 0 -6.1035156e-05 0 ;
	setAttr ".pt[1923]" -type "float3" 0 -1.5258789e-05 0 ;
	setAttr ".pt[1948]" -type "float3" 0 -4.7423096 0 ;
	setAttr ".pt[1949]" -type "float3" 0 -4.7423096 0 ;
	setAttr ".pt[1950]" -type "float3" 0 -4.741394 0 ;
	setAttr ".pt[1951]" -type "float3" 0 -4.7414551 0 ;
	setAttr ".pt[1974]" -type "float3" 0 -4.7419434 0 ;
	setAttr ".pt[1975]" -type "float3" 0 -4.7419434 0 ;
	setAttr -s 2160 ".vt";
	setAttr ".vt[0:165]"  -66.20383453 213.94551086 174.83947754 -60.6602478 218.47596741 171.67591858
		 -66.20383453 213.94551086 175.87086487 -61.57357025 218.47596741 172.35531616 -196.078140259 324.44866943 93.16668701
		 -140.264328 379.075073242 88.91371155 -136.21873474 379.075073242 82.26028442 -62.061153412 217.071334839 171.86302185
		 -62.81764603 218.24119568 172.82099915 -145.40162659 372.76498413 89.92636108 -139.6386261 369.82601929 70.43719482
		 -132.21508789 376.1361084 71.66960144 -62.98869705 218.47596741 163.82017517 -63.51489258 217.73449707 163.11087036
		 -132.56442261 379.075073242 72.89628601 -141.35601807 372.76498413 72.89627075 -62.11779022 217.18829346 166.098510742
		 -60.6602478 218.47596741 166.28646851 -65.75708771 213.68966675 163.66227722 -185.60575867 310.9914856 72.76443481
		 -66.12251282 213.7237854 161.89834595 -137.20227051 295.1187439 118.79464722 -229.13200378 135.14744568 156.61180115
		 -222.97512817 132.62115479 138.99290466 -118.55157471 322.52557373 138.036972046
		 -137.36981201 299.3671875 142.41304016 -115.59375763 322.18322754 122.66381073 -137.3210907 299.27838135 114.49752045
		 -118.77826691 322.36083984 117.96881104 -115.14015198 326.8604126 119.031143188 -111.65284729 326.8604126 122.72489929
		 -111.65284729 326.8604126 130.79667664 -114.68006134 326.8604126 135.5078125 -252.19277954 144.60977173 141.35958862
		 -240.029937744 139.61911011 118.68582153 -198.3052063 319.35821533 87.71714783 -193.75773621 313.14315796 68.36837769
		 -230.079055786 133.10865784 154.48695374 -224.61207581 130.86543274 138.84230042
		 -250.55584717 141.51071167 140.94378662 -239.75584412 137.079269409 120.81066132
		 -200.7558136 184.64726257 150.094009399 -196.45106506 182.87129211 132.74687195 -225.72088623 193.27903748 103.1258316
		 -235.52880859 198.64831543 124.77140045 -212.23158264 -3.0517576e-05 129.76766968
		 -210.71298218 -4.5776367e-05 124.2051239 -217.91958618 6.1035156e-05 124.95231628
		 -214.91958618 1.5258789e-05 117.79388428 -249.96548462 138.95085144 140.6545105 -229.75621033 130.70079041 154.039794922
		 -224.36062622 128.49813843 138.57751465 -239.30656433 134.5995636 120.75608826 -249.075073242 135.090118408 140.2182312
		 -229.26931763 127.069282532 153.36538696 -223.98143005 124.92783356 138.17817688
		 -238.62896729 130.85972595 120.67378998 -138.3605957 293.49029541 135.7623291 -138.12837219 293.36422729 119.01272583
		 -194.25733948 311.26956177 68.91166687 -198.88703918 317.47140503 88.29634094 -140.23605347 290.21871948 136.19309998
		 -139.88142395 290.043060303 119.42554474 -195.20306396 307.72302246 69.94006348 -199.98841858 313.89984131 89.3927002
		 -142.83950806 285.67724609 136.79109192 -142.31494141 285.43270874 119.99861145 -196.51586914 302.79983521 71.36766052
		 -201.51728821 308.94192505 90.91462708 -144.88092041 372.76498413 82.26028442 -144.88092041 372.76498413 82.26028442
		 -144.88092041 372.76498413 82.26028442 -144.88092041 372.76498413 82.26028442 -198.3052063 319.35821533 87.71714783
		 -198.3052063 319.35821533 87.71714783 -198.3052063 319.35821533 87.71714783 -198.3052063 319.35821533 87.71714783
		 -137.36981201 295.21868896 135.53475952 -137.36981201 295.21868896 135.53475952 -137.36981201 295.21868896 135.53475952
		 -137.36981201 295.21868896 135.53475952 4.7449837e-15 284.054199219 196.70944214
		 9.2830046e-16 284.054199219 216.38137817 9.7864899e-15 238.30622864 209.55447388
		 -3.3047386e-15 238.30622864 229.22642517 -12.64054585 284.054199219 199.10290527
		 -12.64054585 238.30622864 211.94793701 -12.64054489 238.30622864 230.95793152 -12.64054489 284.054199219 218.11289978
		 -46.048278809 137.46801758 208.53340149 -21.54543686 93.42834473 232.64767456 -6.35440874 182.20231628 271.12948608
		 -6.6263051 182.20231628 271.69061279 -23.427351 78.025428772 236.94293213 -46.048278809 137.46801758 202.50022888
		 -22.63380814 74.73738098 233.21083069 -21.54543686 93.42834473 228.32710266 -21.87483406 99.86598969 234.75108337
		 -23.32977867 80.82679749 239.34953308 -23.32121849 96.62001038 226.89260864 -22.49785805 96.25157928 221.95562744
		 -24.75579071 392.68600464 189.050216675 -23.72449684 392.81381226 189.46055603 -23.74187088 393.48471069 188.57463074
		 -24.84839249 393.29541016 187.9074707 -11.81293869 393.48471069 187.02331543 -11.75815392 392.80615234 187.91938782
		 -24.80599022 393.31021118 174.22557068 -23.72005463 393.48471069 174.24195862 -23.68737602 392.58706665 173.5035553
		 -24.7717495 392.33425903 173.25 -11.75265026 393.48471069 171.5644989 -11.75989246 392.59216309 170.87434387
		 -25.5529995 284.053771973 219.65492249 -26.61330414 284.054199219 219.28364563 -26.62514305 284.054199219 201.48429871
		 -25.53502274 284.018188477 201.75614929 -81.66649628 373.46939087 121.64632416 -81.48719788 372.61810303 120.58210754
		 -82.42218018 372.5725708 121.19561768 -92.081100464 284.054199219 150.48335266 -91.080932617 284.054199219 149.94296265
		 -82.42215729 372.57278442 137.89862061 -81.97070313 372.81561279 138.9564209 -81.72540283 373.44885254 138.055389404
		 -91.56851196 284.054199219 170.45181274 -92.081100464 284.054199219 169.40756226
		 -26.62693977 238.30622864 214.3296051 -25.53746033 238.30622864 214.59156799 -25.55562019 238.30622864 231.80397034
		 -26.59104729 238.30622864 231.36761475 -83.54479218 235.47029114 181.99206543 -83.7257843 238.30622864 181.99781799
		 -84.19351196 238.30622864 180.96429443 -84.19351196 238.30622864 169.7598877 -83.45578766 238.30622864 169.085327148
		 -83.025405884 234.431427 169.51570129 -26.70343208 140.96192932 206.41281128 -25.58292961 141.12217712 206.4133606
		 -25.59021378 140.28883362 207.197052 -26.70030975 140.14715576 207.18577576 -12.64054585 142.87962341 206.34609985
		 -12.64054585 142.046813965 207.13150024 -26.69704628 140.14753723 210.25619507 -25.58609581 140.28938293 210.18888855
		 -25.58966827 141.00022888184 211.062423706 -26.70461464 140.8677063 211.12532043
		 -12.74943542 142.032028198 209.76435852 -12.64054489 142.73822021 210.62809753 -42.63565063 138.24151611 210.40530396
		 -42.39640427 139.11280823 211.23027039 -43.25671387 137.73989868 210.87916565 -43.0049858093 137.8968811 205.44006348
		 -42.29089355 138.95709229 205.68089294 -42.63565063 138.24151611 206.49041748 -82.62613678 229.72953796 169.76445007
		 -83.85172272 232.82086182 170.10305786 -83.29219818 231.4095459 181.99238586 -83.85172272 232.82086182 180.97679138
		 -80.015632629 187.82965088 171.059753418 -81.038726807 187.67507935 171.4992981 -74.13484192 131.10194397 176.60498047
		 -73.17971802 131.53378296 176.12498474 -81.038726807 187.67507935 180.97679138 -80.57054138 187.72967529 181.99238586
		 -74.13484192 131.10194397 184.24224854;
	setAttr ".vt[166:331]" -73.67945862 131.28892517 185.25769043 -17.68785286 95.73194122 226.88362122
		 -18.21536636 95.78748322 225.63304138 -19.80285072 96.034133911 230.11737061 -18.47016716 95.82456207 230.061294556
		 -18.020517349 71.36715698 233.98857117 -18.97998238 70.57267761 233.90681458 -18.48612213 71.1129837 232.94606018
		 -19.09040451 72.76982117 236.27153015 -18.038545609 73.12468719 236.10368347 -60.67986679 102.84085083 192.65162659
		 -61.35996628 102.69626617 191.6999054 -61.51746368 100.48016357 188.44908142 -62.50537491 101.57823181 188.98335266
		 -58.67699814 91.716362 192.18777466 -59.39925766 92.43241119 191.39009094 -58.57276917 92.47351837 190.71510315
		 -59.21485519 95.3819046 201.09727478 -58.67968369 94.75270844 202.075485229 -22.63348007 72.5550766 230.24263
		 -22.50788879 73.075828552 228.75254822 -15.73435116 92.40995026 228.4549408 -16.15398407 91.8989563 227.51612854
		 -16.64064217 93.098922729 226.91604614 -60.45872116 98.57476807 189.48945618 -59.54965973 97.42326355 190.2696991
		 -61.7191124 99.1519165 189.50587463 -20.70862961 92.48226929 223.62091064 -21.0098972321 93.64744568 223.18484497
		 -17.45139122 92.65503693 236.41731262 -17.092918396 91.7654953 237.47496033 -17.89486694 99.32821655 238.93539429
		 -17.41726875 98.50097656 239.69805908 -58.074207306 98.051292419 206.37232971 -58.56335068 98.56131744 205.40638733
		 -57.19873428 100.84989929 207.18536377 -57.099277496 100.31945801 209.0022277832
		 -1.2811612e-15 393.48471069 185.28060913 -1.9132192e-15 392.80499268 186.18821716
		 -4.7462394e-15 392.6008606 168.47862244 -1.0516845e-15 393.48471069 169.17956543
		 -7.3114931e-16 143.76281738 205.1999054 2.7873296e-15 144.59092712 204.41308594 -2.8294676e-15 144.46144104 207.86843872
		 1.1485609e-15 143.76281738 206.99382019 -59.98613739 102.36788177 196.83007813 -58.97567368 102.72947693 196.47984314
		 -58.53110123 104.40898132 200.47268677 -57.48664856 104.9728241 200.24099731 -19.093935013 79.034561157 240.48857117
		 -20.12638283 78.38451385 240.62623596 -18.48361969 85.17419434 243.17829895 -19.95696259 82.042793274 241.87173462
		 -60.49650192 99.70892334 192.68768311 -59.59619141 100.61559296 193.29150391 -17.76697922 92.71464539 231.80615234
		 -16.90658569 91.81704712 232.80015564 -16.58000946 92.51007843 231.60467529 -6.95281601 182.20231628 271.38763428
		 -6.9965868 182.20231628 271.28204346 -6.97243214 182.20231628 271.043395996 -6.28144312 182.20231628 271.24398804
		 -6.28869629 182.20231628 271.40435791 -6.34791231 182.20231628 271.57662964 -6.50956345 182.20231628 271.72210693
		 -83.95038605 234.40434265 170.0039978027 -84.21594238 238.43630981 169.70507813 -42.49968338 138.0028533936 210.51589966
		 -42.20326614 138.29322815 210.45861816 -6.53328657 182.1920929 271.43649292 -6.64883184 182.24307251 271.55096436
		 12.64054585 284.054199219 199.10290527 12.64054585 238.30622864 211.94793701 12.64054489 238.30622864 230.95793152
		 12.64054489 284.054199219 218.11289978 46.048278809 137.46801758 208.53340149 21.54543686 93.42834473 232.64767456
		 6.35440874 182.20231628 271.12948608 6.6263051 182.20231628 271.69061279 23.427351 78.025428772 236.94293213
		 46.048278809 137.46801758 202.50022888 22.63380814 74.73738098 233.21083069 21.54543686 93.42834473 228.32710266
		 21.87483406 99.86598969 234.75108337 23.32977867 80.82679749 239.34953308 23.32121849 96.62001038 226.89260864
		 22.49785805 96.25157928 221.95562744 24.75579071 392.68600464 189.050216675 23.72449684 392.81381226 189.46055603
		 23.74187088 393.48471069 188.57463074 24.84839249 393.29541016 187.9074707 11.81293869 393.48471069 187.02331543
		 11.75815392 392.80615234 187.91938782 24.80599022 393.31021118 174.22557068 23.72005463 393.48471069 174.24195862
		 23.68737602 392.58706665 173.5035553 24.7717495 392.33425903 173.25 11.75265026 393.48471069 171.5644989
		 11.75989246 392.59216309 170.87434387 25.5529995 284.053771973 219.65492249 26.61330414 284.054199219 219.28364563
		 26.62514305 284.054199219 201.48429871 25.53502274 284.018188477 201.75614929 81.66649628 373.46939087 121.64632416
		 81.48719788 372.61810303 120.58210754 82.42218018 372.5725708 121.19561768 92.081100464 284.054199219 150.48335266
		 91.080932617 284.054199219 149.94296265 82.42215729 372.57278442 137.89862061 81.97070313 372.81561279 138.9564209
		 81.72540283 373.44885254 138.055389404 91.56851196 284.054199219 170.45181274 92.081100464 284.054199219 169.40756226
		 26.62693977 238.30622864 214.3296051 25.53746033 238.30622864 214.59156799 25.55562019 238.30622864 231.80397034
		 26.59104729 238.30622864 231.36761475 83.54479218 235.47029114 181.99206543 83.7257843 238.30622864 181.99781799
		 84.19351196 238.30622864 180.96429443 84.19351196 238.30622864 169.7598877 83.45578766 238.30622864 169.085327148
		 83.025405884 234.431427 169.51570129 26.70343208 140.96192932 206.41281128 25.58292961 141.12217712 206.4133606
		 25.59021378 140.28883362 207.197052 26.70030975 140.14715576 207.18577576 12.64054585 142.87962341 206.34609985
		 12.64054585 142.046813965 207.13150024 26.69704628 140.14753723 210.25619507 25.58609581 140.28938293 210.18888855
		 25.58966827 141.00022888184 211.062423706 26.70461464 140.8677063 211.12532043 12.74943542 142.032028198 209.76435852
		 12.64054489 142.73822021 210.62809753 42.63565063 138.24151611 210.40530396 42.39640427 139.11280823 211.23027039
		 43.25671387 137.73989868 210.87916565 43.0049858093 137.8968811 205.44006348 42.29089355 138.95709229 205.68089294
		 42.63565063 138.24151611 206.49041748 82.62613678 229.72953796 169.76445007 83.85172272 232.82086182 170.10305786
		 83.29219818 231.4095459 181.99238586 83.85172272 232.82086182 180.97679138 80.015632629 187.82965088 171.059753418
		 81.038726807 187.67507935 171.4992981 74.13484192 131.10194397 176.60498047 73.17971802 131.53378296 176.12498474
		 81.038726807 187.67507935 180.97679138 80.57054138 187.72967529 181.99238586 74.13484192 131.10194397 184.24224854
		 73.67945862 131.28892517 185.25769043 17.68785286 95.73194122 226.88362122 18.21536636 95.78748322 225.63304138
		 19.80285072 96.034133911 230.11737061 18.47016716 95.82456207 230.061294556 18.020517349 71.36715698 233.98857117
		 18.97998238 70.57267761 233.90681458 18.48612213 71.1129837 232.94606018 19.09040451 72.76982117 236.27153015
		 18.038545609 73.12468719 236.10368347 60.67986679 102.84085083 192.65162659 61.35996628 102.69626617 191.6999054
		 61.51746368 100.48016357 188.44908142 62.50537491 101.57823181 188.98335266;
	setAttr ".vt[332:497]" 58.67699814 91.716362 192.18777466 59.39925766 92.43241119 191.39009094
		 58.57276917 92.47351837 190.71510315 59.21485519 95.3819046 201.09727478 58.67968369 94.75270844 202.075485229
		 22.63348007 72.5550766 230.24263 22.50788879 73.075828552 228.75254822 15.73435116 92.40995026 228.4549408
		 16.15398407 91.8989563 227.51612854 16.64064217 93.098922729 226.91604614 60.45872116 98.57476807 189.48945618
		 59.54965973 97.42326355 190.2696991 61.7191124 99.1519165 189.50587463 20.70862961 92.48226929 223.62091064
		 21.0098972321 93.64744568 223.18484497 17.45139122 92.65503693 236.41731262 17.092918396 91.7654953 237.47496033
		 17.89486694 99.32821655 238.93539429 17.41726875 98.50097656 239.69805908 58.074207306 98.051292419 206.37232971
		 58.56335068 98.56131744 205.40638733 57.19873428 100.84989929 207.18536377 57.099277496 100.31945801 209.0022277832
		 59.98613739 102.36788177 196.83007813 58.97567368 102.72947693 196.47984314 58.53110123 104.40898132 200.47268677
		 57.48664856 104.9728241 200.24099731 19.093935013 79.034561157 240.48857117 20.12638283 78.38451385 240.62623596
		 18.48361969 85.17419434 243.17829895 19.95696259 82.042793274 241.87173462 60.49650192 99.70892334 192.68768311
		 59.59619141 100.61559296 193.29150391 17.76697922 92.71464539 231.80615234 16.90658569 91.81704712 232.80015564
		 16.58000946 92.51007843 231.60467529 6.95281601 182.20231628 271.38763428 6.9965868 182.20231628 271.28204346
		 6.97243214 182.20231628 271.043395996 6.28144312 182.20231628 271.24398804 6.28869629 182.20231628 271.40435791
		 6.34791231 182.20231628 271.57662964 6.50956345 182.20231628 271.72210693 83.95038605 234.40434265 170.0039978027
		 84.21594238 238.43630981 169.70507813 42.49968338 138.0028533936 210.51589966 42.20326614 138.29322815 210.45861816
		 6.53328657 182.1920929 271.43649292 6.64883184 182.24307251 271.55096436 0 182.98774719 -33.91843414
		 0 272.75369263 -33.91843414 -51.97459412 182.98774719 -33.91843414 -51.97454834 265.22332764 -33.91843414
		 -51.97451782 182.98774719 -98.019218445 -51.97441483 218.81036377 -77.24138641 0 182.98774719 -102.28508759
		 0 226.81079102 -79.26420593 -94.52534485 226.2713623 -30.77399445 -76.26583862 210.14526367 -66.19248199
		 -83.63441467 182.98762512 -83.41730499 0 131.68927002 -50.77106476 0 130.3475647 -52.62408447
		 -51.97459412 130.3475647 -52.62408447 -51.97460175 131.68927002 -50.77106476 0 130.3475647 -98.58711243
		 0 131.93269348 -100.24227142 -51.97452164 131.93357849 -95.9764328 -51.63805389 130.3475647 -94.34713745
		 -86.016662598 132.020095825 -83.835289 -84.95320129 130.3475647 -82.48120117 -115.77868652 131.96005249 -52.58672333
		 -113.93434906 130.3475647 -52.70962524 -114.56237793 131.65289307 -50.78301239 -115.65370941 184.026977539 -33.91843414
		 -115.32400513 182.98774719 -35.92757034 -114.056518555 182.98774719 -33.91843414
		 0 249.79473877 -56.57899475 -51.97447968 242.02947998 -55.56813049 -93.222229 218.62086487 -46.75136566
		 -103.68737793 182.98768616 -58.24885941 -109.51460266 131.99282837 -66.043380737
		 -108.096481323 130.3475647 -65.36012268 -51.79091263 130.3475647 -75.39704895 0 130.3475647 -77.71128845
		 51.97459412 182.98774719 -33.91843414 51.97454834 265.22332764 -33.91843414 51.97451782 182.98774719 -98.019218445
		 51.97441483 218.81036377 -77.24138641 94.52534485 226.2713623 -30.77399445 76.26583862 210.14526367 -66.19248199
		 83.63441467 182.98762512 -83.41730499 51.97459412 130.3475647 -52.62408447 51.97460175 131.68927002 -50.77106476
		 51.97452164 131.93357849 -95.9764328 51.63805389 130.3475647 -94.34713745 86.016662598 132.020095825 -83.835289
		 84.95320129 130.3475647 -82.48120117 115.77868652 131.96005249 -52.58672333 113.93434906 130.3475647 -52.70962524
		 114.56237793 131.65289307 -50.78301239 115.65370941 184.026977539 -33.91843414 115.32400513 182.98774719 -35.92757034
		 114.056518555 182.98774719 -33.91843414 51.97447968 242.02947998 -55.56813049 93.222229 218.62086487 -46.75136566
		 103.68737793 182.98768616 -58.24885941 109.51460266 131.99282837 -66.043380737 108.096481323 130.3475647 -65.36012268
		 51.79091263 130.3475647 -75.39704895 294.35614014 277.52966309 -1.0046825409 299.43051147 260.45800781 -24.17853928
		 289.75015259 271.23300171 -28.99024582 340.47265625 155.92553711 -44.45227051 339.35266113 156.94117737 -64.51320648
		 350.65368652 128.95796204 -56.35206223 349.72918701 131.25521851 -73.29551697 345.62710571 141.60076904 -70.68029785
		 346.57330322 139.76609802 -51.58283234 227.5801239 350.83517456 33.021709442 286.27658081 309.72293091 -8.096956253
		 286.27658081 305.59616089 -27.97368813 227.5801239 342.68899536 3.70432186 217.47189331 329.74734497 4.0044269562
		 210.29589844 320.55987549 7.5733366 91.4533844 174.80685425 80.85705566 91.4533844 183.53509521 79.22933197
		 210.29589844 328.72225952 37.53925705 217.47189331 337.90301514 35.039104462 227.029220581 398.88256836 28.40247917
		 228.29115295 398.94781494 27.87781334 227.5801239 398.77233887 29.52712822 228.27749634 396.82696533 19.058479309
		 227.026992798 396.64910889 19.29258347 227.51858521 396.10583496 18.19335747 215.67286682 382.00021362305 19.63247871
		 215.83306885 381.07611084 18.52052498 227.5801239 302.21340942 1.40127754 227.5801239 300.515625 2.61014628
		 228.33876038 299.78393555 1.13700485 218.77302551 289.55709839 8.88450718 218.72470093 290.50817871 7.34352016
		 215.97254944 384.5635376 28.046392441 215.84205627 383.57858276 29.17003632 69.91584778 192.83564758 61.64749146
		 69.67051697 190.69416809 63.26334381 69.94058228 193.12858582 61.62758636 69.9637146 193.58001709 62.92211533
		 227.5801239 307.38464355 34.14234543 235.48448181 313.89230347 37.49953079 218.84927368 301.16204834 37.70438004
		 218.73820496 302.4151001 38.59294128 281.31225586 349.74755859 -15.055530548 281.2897644 348.30792236 -16.15821838
		 336.65921021 286.95877075 -49.4751358 337.52468872 287.56011963 -48.66734314 346.54077148 261.7277832 -54.030227661
		 345.50888062 262.47894287 -54.92071533 352.65374756 241.98828125 -59.32987976 353.11721802 240.92588806 -56.85617828
		 353.34640503 242.22857666 -58.36587524 353.33377075 242.26481628 -52.99034882 353.14456177 240.96311951 -52.68693542
		 349.97894287 241.93951416 -46.058994293 282.12493896 350.33987427 -6.59432173 282.37069702 350.86376953 -7.52122688
		 345.89941406 262.23858643 -48.3219223;
	setAttr ".vt[498:663]" 346.54077148 261.7277832 -49.68170929 251.48193359 292.12789917 26.66130447
		 252.96359253 292.14520264 26.91519356 254.46263123 290.044067383 26.10503769 350.30111694 237.69364929 -43.37025452
		 350.92520142 236.90002441 -44.2358284 350.39825439 236.32766724 -43.050041199 299.9418335 265.91082764 -3.93281364
		 300.96566772 264.19842529 -4.093067169 350.55465698 237.28465271 -51.12820435 349.42840576 237.8309021 -51.70339203
		 250.61221313 282.55130005 2.69690132 249.76396179 283.30892944 4.32066154 322.99530029 162.39396667 -28.62092018
		 321.71508789 162.88388062 -29.21367073 356.70471191 101.70953369 -64.21434021 356.93862915 101.5296936 -65.75617981
		 355.70501709 101.35676575 -64.74557495 359.89855957 104.5463562 -68.11964417 359.66186523 105.09702301 -66.8809967
		 359.30886841 150.019226074 -70.32868958 358.29937744 150.54652405 -71.12950134 363.72290039 109.2926712 -71.31761169
		 363.29067993 108.062080383 -71.16627502 363.29309082 108.80709839 -70.17120361 362.5864563 109.82577515 -78.29962158
		 362.74835205 108.81674194 -77.51460266 363.43130493 109.92849731 -77.28742981 354.46551514 106.55271912 -79.07623291
		 355.73028564 106.16009521 -79.17410278 355.28881836 107.23575592 -79.78361511 359.15158081 107.40872955 -78.38967896
		 358.76239014 108.47346497 -79.054473877 359.62280273 148.93710327 -62.58798218 359.10516357 149.029571533 -61.32998657
		 320.70593262 163.82875061 -57.39200592 321.72845459 163.43945313 -59.050117493 207.44648743 373.48587036 26.28844643
		 207.51083374 372.76507568 27.61185265 207.49583435 370.2411499 17.37793922 207.44648743 371.33309937 18.34849167
		 212.52076721 281.66836548 13.10027122 212.43615723 282.58529663 11.54854202 212.52076721 293.17593384 40.56154251
		 212.4619751 294.46807861 41.32354736 337.036193848 287.1472168 -43.85322571 337.52468872 287.56011963 -45.013835907
		 107.99891663 166.75891113 91.72514343 108.97602081 167.65240479 92.21479797 108.97602081 174.43881226 92.69507599
		 108.41195679 175.6081543 92.098121643 360.62414551 137.23384094 -72.51982117 359.62521362 137.63397217 -73.33934021
		 360.4095459 136.35116577 -64.12290192 360.92880249 136.31178284 -65.37180328 332.48788452 143.34541321 -40.2826004
		 334.11712646 142.84039307 -40.29354858 331.71417236 145.42207336 -65.39115143 330.82492065 145.6295166 -64.032318115
		 360.51699829 128.96923828 -74.83604431 361.50646973 128.65548706 -74.0012969971 361.80249023 127.86593628 -67.22792053
		 361.2869873 127.83785248 -65.99532318 341.2144165 129.95227051 -47.79165649 339.6809082 130.30682373 -47.89826965
		 338.3614502 133.52624512 -70.59915161 339.34268188 133.45613098 -71.81230164 294.35614014 277.52966309 -56.62201691
		 299.43051147 260.45800781 -79.79586792 289.75015259 271.23300171 -84.60757446 340.47265625 155.92553711 -100.069602966
		 339.35266113 156.94117737 -120.13053894 350.65368652 128.95796204 -111.96939087 349.72918701 131.25521851 -128.9128418
		 345.62710571 141.60076904 -126.29763031 346.57330322 139.76609802 -107.20017242 227.5801239 350.83517456 -22.59562302
		 286.27658081 309.72293091 -63.71429062 286.27658081 305.59616089 -83.59101868 227.5801239 342.68899536 -51.91300964
		 217.47189331 329.74734497 -51.61290741 210.29589844 320.55987549 -48.043994904 91.4533844 174.49569702 79.042457581
		 91.4533844 183.14651489 81.32750702 210.29589844 328.72225952 -18.078075409 217.47189331 337.90301514 -20.578228
		 227.029220581 398.88256836 -27.21485138 228.29115295 398.94781494 -27.73951912 227.5801239 398.77233887 -26.090204239
		 228.27749634 396.82696533 -36.55885315 227.026992798 396.64910889 -36.32474899 227.51858521 396.10583496 -37.42397308
		 215.67286682 382.00021362305 -35.98485565 215.83306885 381.07611084 -37.096809387
		 227.5801239 302.21340942 -54.21605682 227.5801239 300.515625 -53.0071868896 228.33876038 299.78393555 -54.48032761
		 218.77302551 289.55709839 -46.73282623 218.72470093 290.50817871 -48.27381134 215.97254944 384.5635376 -27.57093811
		 215.84205627 383.57858276 -26.44729614 69.91584778 198.7023468 67.15715027 69.67051697 196.093353271 67.8711853
		 69.94058228 198.97880554 67.27024078 69.9637146 198.87484741 68.83306885 227.5801239 312.28414917 -18.81658554
		 235.48448181 313.89230347 -18.11780167 218.84927368 301.16204834 -17.91295242 218.73820496 302.4151001 -17.024391174
		 281.31225586 349.74755859 -70.67286682 281.2897644 348.30792236 -71.77555084 336.65921021 286.95877075 -105.092468262
		 337.52468872 287.56011963 -104.28468323 346.54077148 261.7277832 -109.64756012 345.50888062 262.47894287 -110.53805542
		 352.65374756 241.98828125 -114.94721222 353.11721802 240.92588806 -112.47351074 353.34640503 242.22857666 -113.98320007
		 353.33377075 242.26481628 -108.6076889 353.14456177 240.96311951 -108.30426025 349.97894287 241.93951416 -101.67633057
		 282.12493896 350.33987427 -62.21165848 282.37069702 350.86376953 -63.13855743 345.89941406 262.23858643 -103.93926239
		 346.54077148 261.7277832 -105.29904175 251.48193359 292.12789917 -28.95602989 252.96359253 292.14520264 -28.70214081
		 254.46263123 290.044067383 -29.51229477 350.30111694 237.69364929 -98.98758698 350.92520142 236.90002441 -99.85316467
		 350.39825439 236.32766724 -98.66737366 299.9418335 265.91082764 -59.55014801 300.96566772 264.19842529 -59.71039963
		 350.55465698 237.28465271 -106.74554443 349.42840576 237.8309021 -107.32072449 250.61221313 282.55130005 -52.92042923
		 249.76396179 283.30892944 -51.29666901 322.99530029 162.39396667 -84.23825073 321.71508789 162.88388062 -84.83100128
		 356.70471191 101.70953369 -119.83167267 356.93862915 101.5296936 -121.37351227 355.70501709 101.35676575 -120.36289978
		 359.89855957 104.5463562 -123.73697662 359.66186523 105.09702301 -122.49833679 359.30886841 150.019226074 -125.94602203
		 358.29937744 150.54652405 -126.7468338 363.72290039 109.2926712 -126.93494415 363.29067993 108.062080383 -126.78360748
		 363.29309082 108.80709839 -125.78853607 362.5864563 109.82577515 -133.91696167 362.74835205 108.81674194 -133.13192749
		 363.43130493 109.92849731 -132.90475464 354.46551514 106.55271912 -134.693573 355.73028564 106.16009521 -134.79144287
		 355.28881836 107.23575592 -135.40093994 359.15158081 107.40872955 -134.007019043
		 358.76239014 108.47346497 -134.67181396 359.62280273 148.93710327 -118.20530701 359.10516357 149.029571533 -116.94731903
		 320.70593262 163.82875061 -113.0093307495 321.72845459 163.43945313 -114.66744995
		 207.44648743 373.48587036 -29.32888603 207.51083374 372.76507568 -28.00548172 207.49583435 370.2411499 -38.23939514
		 207.44648743 371.33309937 -37.26884079 212.52076721 281.66836548 -42.51705933;
	setAttr ".vt[664:829]" 212.43615723 282.58529663 -44.068790436 212.52076721 293.17593384 -15.055790901
		 212.4619751 294.46807861 -14.2937851 337.036193848 287.1472168 -99.47055817 337.52468872 287.56011963 -100.63116455
		 107.99891663 162.77294922 86.75074005 108.97602081 163.39605713 87.67230988 108.97602081 169.42404175 91.2783432
		 108.41195679 170.73452759 91.18744659 360.62414551 137.23384094 -128.137146 359.62521362 137.63397217 -128.95666504
		 360.4095459 136.35116577 -119.74023438 360.92880249 136.31178284 -120.98913574 332.48788452 143.34541321 -95.89993286
		 334.11712646 142.84039307 -95.91088104 331.71417236 145.42207336 -121.0084762573
		 330.82492065 145.6295166 -119.64965057 360.51699829 128.96923828 -130.45336914 361.50646973 128.65548706 -129.61862183
		 361.80249023 127.86593628 -122.84525299 361.2869873 127.83785248 -121.61265564 341.2144165 129.95227051 -103.40898895
		 339.6809082 130.30682373 -103.51560211 338.3614502 133.52624512 -126.21648407 339.34268188 133.45613098 -127.42962646
		 -294.35614014 277.52966309 -1.0046825409 -299.43051147 260.45800781 -24.17853928
		 -289.75015259 271.23300171 -28.99024582 -340.47265625 155.92553711 -44.45227051 -339.35266113 156.94117737 -64.51320648
		 -350.65368652 128.95796204 -56.35206223 -349.72918701 131.25521851 -73.29551697 -345.62710571 141.60076904 -70.68029785
		 -346.57330322 139.76609802 -51.58283234 -227.5801239 350.83517456 33.021709442 -286.27658081 309.72293091 -8.096956253
		 -286.27658081 305.59616089 -27.97368813 -227.5801239 342.68899536 3.70432186 -217.47189331 329.74734497 4.0044269562
		 -210.29589844 320.55987549 7.5733366 -91.4533844 174.80685425 80.85705566 -91.4533844 183.53509521 79.22933197
		 -210.29589844 328.72225952 37.53925705 -217.47189331 337.90301514 35.039104462 -227.029220581 398.88256836 28.40247917
		 -228.29115295 398.94781494 27.87781334 -227.5801239 398.77233887 29.52712822 -228.27749634 396.82696533 19.058479309
		 -227.026992798 396.64910889 19.29258347 -227.51858521 396.10583496 18.19335747 -215.67286682 382.00021362305 19.63247871
		 -215.83306885 381.07611084 18.52052498 -227.5801239 302.21340942 1.40127754 -227.5801239 300.515625 2.61014628
		 -228.33876038 299.78393555 1.13700485 -218.77302551 289.55709839 8.88450718 -218.72470093 290.50817871 7.34352016
		 -215.97254944 384.5635376 28.046392441 -215.84205627 383.57858276 29.17003632 -69.91584778 192.83564758 61.64749146
		 -69.67051697 190.69416809 63.26334381 -69.94058228 193.12858582 61.62758636 -69.9637146 193.58001709 62.92211533
		 -227.5801239 307.38464355 34.14234543 -235.48448181 313.89230347 37.49953079 -218.84927368 301.16204834 37.70438004
		 -218.73820496 302.4151001 38.59294128 -281.31225586 349.74755859 -15.055530548 -281.2897644 348.30792236 -16.15821838
		 -336.65921021 286.95877075 -49.4751358 -337.52468872 287.56011963 -48.66734314 -346.54077148 261.7277832 -54.030227661
		 -345.50888062 262.47894287 -54.92071533 -352.65374756 241.98828125 -59.32987976 -353.11721802 240.92588806 -56.85617828
		 -353.34640503 242.22857666 -58.36587524 -353.33377075 242.26481628 -52.99034882 -353.14456177 240.96311951 -52.68693542
		 -349.97894287 241.93951416 -46.058994293 -282.12493896 350.33987427 -6.59432173 -282.37069702 350.86376953 -7.52122688
		 -345.89941406 262.23858643 -48.3219223 -346.54077148 261.7277832 -49.68170929 -251.48193359 292.12789917 26.66130447
		 -252.96359253 292.14520264 26.91519356 -254.46263123 290.044067383 26.10503769 -350.30111694 237.69364929 -43.37025452
		 -350.92520142 236.90002441 -44.2358284 -350.39825439 236.32766724 -43.050041199 -299.9418335 265.91082764 -3.93281364
		 -300.96566772 264.19842529 -4.093067169 -350.55465698 237.28465271 -51.12820435 -349.42840576 237.8309021 -51.70339203
		 -250.61221313 282.55130005 2.69690132 -249.76396179 283.30892944 4.32066154 -322.99530029 162.39396667 -28.62092018
		 -321.71508789 162.88388062 -29.21367073 -356.70471191 101.70953369 -64.21434021 -356.93862915 101.5296936 -65.75617981
		 -355.70501709 101.35676575 -64.74557495 -359.89855957 104.5463562 -68.11964417 -359.66186523 105.09702301 -66.8809967
		 -359.30886841 150.019226074 -70.32868958 -358.29937744 150.54652405 -71.12950134
		 -363.72290039 109.2926712 -71.31761169 -363.29067993 108.062080383 -71.16627502 -363.29309082 108.80709839 -70.17120361
		 -362.5864563 109.82577515 -78.29962158 -362.74835205 108.81674194 -77.51460266 -363.43130493 109.92849731 -77.28742981
		 -354.46551514 106.55271912 -79.07623291 -355.73028564 106.16009521 -79.17410278 -355.28881836 107.23575592 -79.78361511
		 -359.15158081 107.40872955 -78.38967896 -358.76239014 108.47346497 -79.054473877
		 -359.62280273 148.93710327 -62.58798218 -359.10516357 149.029571533 -61.32998657
		 -320.70593262 163.82875061 -57.39200592 -321.72845459 163.43945313 -59.050117493
		 -207.44648743 373.48587036 26.28844643 -207.51083374 372.76507568 27.61185265 -207.49583435 370.2411499 17.37793922
		 -207.44648743 371.33309937 18.34849167 -212.52076721 281.66836548 13.10027122 -212.43615723 282.58529663 11.54854202
		 -212.52076721 293.17593384 40.56154251 -212.4619751 294.46807861 41.32354736 -337.036193848 287.1472168 -43.85322571
		 -337.52468872 287.56011963 -45.013835907 -107.99891663 166.75891113 91.72514343 -108.97602081 167.65240479 92.21479797
		 -108.97602081 174.43881226 92.69507599 -108.41195679 175.6081543 92.098121643 -360.62414551 137.23384094 -72.51982117
		 -359.62521362 137.63397217 -73.33934021 -360.4095459 136.35116577 -64.12290192 -360.92880249 136.31178284 -65.37180328
		 -332.48788452 143.34541321 -40.2826004 -334.11712646 142.84039307 -40.29354858 -331.71417236 145.42207336 -65.39115143
		 -330.82492065 145.6295166 -64.032318115 -360.51699829 128.96923828 -74.83604431 -361.50646973 128.65548706 -74.0012969971
		 -361.80249023 127.86593628 -67.22792053 -361.2869873 127.83785248 -65.99532318 -341.2144165 129.95227051 -47.79165649
		 -339.6809082 130.30682373 -47.89826965 -338.3614502 133.52624512 -70.59915161 -339.34268188 133.45613098 -71.81230164
		 0 302.19024658 46.11483765 -70.69927979 278.098114014 57.67723846 -70.98765564 255.048339844 -17.33740807
		 0 272.23745728 -15.35357666 -112.0027923584 252.091186523 68.19792938 -106.23648071 235.67094421 -8.027172089
		 0 239.72497559 2.81392765 0 195.58123779 89.23348999 0 286.65328979 8.87332439 -70.90977478 266.17953491 6.48760796
		 -109.97947693 243.21051025 16.88830376 0 132.82765198 35.20053482 -33.48019409 295.73205566 51.67594528
		 -33.48020172 281.9354248 2.098978519 -33.48021317 269.099365234 -23.4407711 -33.48038101 237.77511597 -8.027172089
		 -33.48036957 132.82765198 37.85425949;
	setAttr ".vt[830:995]" -33.48052597 194.62713623 91.63084412 0 185.14233398 27.55333138
		 -107.17272949 132.82765198 75.36815643 -110.13436127 132.91622925 77.73413086 -33.48039246 132.82765198 75.38873291
		 -33.48039627 133.68606567 77.5831604 -102.56517029 132.82765198 37.85425949 -105.075180054 132.93833923 38.028400421
		 0 134.13973999 77.33560181 0 132.82766724 75.18777466 -98.93208313 132.82765198 8.61769104
		 -101.033638 133.31173706 6.68236113 -33.48035812 133.53884888 6.72631025 -33.48035431 132.82765198 8.66347313
		 0 132.82765198 8.64760208 0 133.54728699 6.7035923 70.69927979 278.098114014 57.67723846
		 70.98765564 255.048339844 -17.33740807 112.0027923584 252.091186523 68.19792938 106.23648071 235.67094421 -8.027172089
		 70.90977478 266.17953491 6.48760796 109.97947693 243.21051025 16.88830376 33.48019409 295.73205566 51.67594528
		 33.48020172 281.9354248 2.098978519 33.48021317 269.099365234 -23.4407711 33.48038101 237.77511597 -8.027172089
		 33.48036957 132.82765198 37.85425949 33.48052597 194.62713623 91.63084412 107.17272949 132.82765198 75.36815643
		 110.13436127 132.91622925 77.73413086 33.48039246 132.82765198 75.38873291 33.48039627 133.68606567 77.5831604
		 102.56517029 132.82765198 37.85425949 105.075180054 132.93833923 38.028400421 98.93208313 132.82765198 8.61769104
		 101.033638 133.31173706 6.68236113 33.48035812 133.53884888 6.72631025 33.48035431 132.82765198 8.66347313
		 -135.79701233 186.93704224 95.53665161 -135.58752441 183.4262085 95.67988586 -134.63127136 185.31019592 96.20726013
		 -123.28192902 186.84384155 42.41003418 -123.04473114 183.35037231 43.0035858154 -110.96950531 186.81129456 15.89502144
		 -110.77574158 183.31777954 16.35913277 -33.48040771 183.32539368 16.3606205 -33.48040771 186.81715393 15.92498016
		 -31.80655479 185.14231873 17.25421715 134.63127136 185.31019592 96.20726013 135.58752441 183.4262085 95.67988586
		 135.79701233 186.93704224 95.53665161 123.28192902 186.84384155 42.41003418 123.04473114 183.35037231 43.0035858154
		 110.96950531 186.81129456 15.89502144 110.77574158 183.31777954 16.35913277 33.48040771 183.32539368 16.3606205
		 31.80655479 185.14231873 17.25421715 33.48040771 186.81715393 15.92498016 352.34725952 188.38691711 -54.25816345
		 351.057647705 188.38690186 -57.98701477 311.89355469 188.38725281 -24.50101852 312.6897583 188.38723755 -38.99279022
		 323.50900269 4.74230957 -63.75824356 323.24395752 4.74230957 -71.43293762 331.43707275 4.74139404 -67.74008942
		 331.21264648 4.74145508 -70.93434906 347.59429932 72.54882813 -69.98349762 327.069091797 72.54928589 -56.0018348694
		 326.14135742 72.54925537 -68.38144684 346.80877686 72.54885864 -74.053886414 325.25161743 109.32617188 -48.6804657
		 323.96960449 108.436409 -64.82274628 355.13491821 115.72307587 -65.77925873 353.375 115.7230835 -71.42556
		 315.0051879883 179.30000305 -45.20702744 352.89538574 179.29957581 -61.056255341
		 355.36373901 179.29959106 -57.31328583 316.84619141 179.30001831 -29.3312645 318.063964844 158.4256897 -51.14432144
		 353.036682129 160.57182312 -63.81522369 355.29632568 160.57182312 -58.91295242 319.74029541 158.68778992 -35.1900444
		 321.20495605 136.99014282 -57.2412262 353.1817627 141.34057617 -66.66986847 355.22711182 141.34054565 -61.63597107
		 322.71221924 137.52139282 -41.2063446 338.13574219 111.90271759 -55.81137085 337.2890625 72.54910278 -59.75992203
		 326.70227051 4.74194336 -65.36206055 326.45361328 4.74194336 -71.2321167 336.41860962 72.54907227 -70.66619873
		 336.66125488 111.37133789 -69.38005829 334.084625244 138.74241638 -62.23784256 332.15032959 159.2901001 -56.87611008
		 330.2666626 179.29983521 -51.6547699 333.58242798 188.38697815 -51.96156311 332.97528076 188.38697815 -37.52200699
		 332.36035156 179.29983521 -40.016994476 334.06161499 159.44664001 -44.66954803 335.80862427 139.059677124 -49.44719696
		 319.4770813 148.78201294 -53.88726425 333.020568848 150.04586792 -59.28831863 353.10192871 151.91984558 -65.025604248
		 355.26519775 151.91983032 -60.30308533 334.8475647 150.27471924 -46.81896973 321.077331543 149.16520691 -37.89672852
		 346.93493652 75.71917725 -74.14807892 347.79199219 75.71914673 -69.66043091 337.35125732 75.43890381 -59.46996689
		 327.039886475 75.24984741 -55.50387573 326.086120605 75.18447876 -68.15978241 336.43643188 75.39984131 -70.57176208
		 345.32354736 67.62289429 -73.82726288 346.068328857 67.62286377 -69.82052612 336.5199585 67.62316895 -60.16689682
		 326.81048584 67.62335205 -56.56531525 325.93087769 67.62332153 -68.60312653 335.69470215 67.62313843 -70.70731354
		 -294.35614014 277.52966309 -120.2723465 -299.43051147 260.45800781 -143.44621277
		 -289.75015259 271.23300171 -148.25791931 -340.47265625 155.92553711 -171.98622131
		 -339.35266113 156.94117737 -192.047149658 -350.65368652 128.95796204 -183.88600159
		 -349.72918701 131.25521851 -200.82945251 -345.62710571 141.60076904 -198.2142334
		 -346.57330322 139.76609802 -179.11677551 -227.5801239 350.83517456 -86.24595642 -286.27658081 309.72293091 -127.36462402
		 -286.27658081 305.59616089 -147.24136353 -227.5801239 342.68899536 -115.56334686
		 -217.47189331 329.74734497 -115.26324463 -210.29589844 320.55987549 -111.69433594
		 -91.4533844 174.51368713 -49.77768707 -91.4533844 183.32403564 -48.67797089 -210.29589844 328.72225952 -81.72840881
		 -217.47189331 337.90301514 -84.2285614 -227.029220581 398.88256836 -90.8651886 -228.29115295 398.94781494 -91.38985443
		 -227.5801239 398.77233887 -89.74053955 -228.27749634 396.82696533 -100.20919037 -227.026992798 396.64910889 -99.9750824
		 -227.51858521 396.10583496 -101.074310303 -215.67286682 382.00021362305 -99.63519287
		 -215.83306885 381.07611084 -100.74714661 -227.5801239 302.21340942 -117.86639404
		 -227.5801239 300.515625 -116.65751648 -228.33876038 299.78393555 -118.13066101 -218.77302551 289.55709839 -110.38316345
		 -218.72470093 290.50817871 -111.92414856 -215.97254944 384.5635376 -91.22127533 -215.84205627 383.57858276 -90.097633362
		 -69.91584778 197.52458191 -62.60512924 -69.67051697 194.99353027 -61.71590805 -69.94058228 197.80973816 -62.53514481
		 -69.9637146 197.84674072 -61.16464615 -227.5801239 312.28414917 -82.46691895 -235.48448181 313.89230347 -81.7681427
		 -218.84927368 301.16204834 -81.56329346 -218.73820496 302.4151001 -80.67472839 -281.31225586 349.74755859 -134.32319641
		 -281.2897644 348.30792236 -135.42588806 -336.65921021 286.95877075 -168.74279785
		 -337.52468872 287.56011963 -167.93501282 -346.54077148 261.7277832 -173.29789734
		 -345.50888062 262.47894287 -174.18838501;
	setAttr ".vt[996:1161]" -352.65374756 241.98828125 -178.59754944 -353.11721802 240.92588806 -176.12384033
		 -353.34640503 242.22857666 -177.63354492 -353.33377075 242.26481628 -172.25802612
		 -353.14456177 240.96311951 -171.9546051 -349.97894287 241.93951416 -165.32666016
		 -282.12493896 350.33987427 -125.86199188 -282.37069702 350.86376953 -126.78888702
		 -345.89941406 262.23858643 -167.58959961 -346.54077148 261.7277832 -168.94937134
		 -251.48193359 292.12789917 -92.60636902 -252.96359253 292.14520264 -92.35247803 -254.46263123 290.044067383 -93.16262817
		 -350.30111694 237.69364929 -162.63792419 -350.92520142 236.90002441 -163.50349426
		 -350.39825439 236.32766724 -162.31771851 -299.9418335 265.91082764 -123.20048523
		 -300.96566772 264.19842529 -123.3607254 -350.55465698 237.28465271 -170.39587402
		 -349.42840576 237.8309021 -170.97106934 -250.61221313 282.55130005 -116.57077026
		 -249.76396179 283.30892944 -114.94700623 -322.99530029 162.39396667 -156.15486145
		 -321.71508789 162.88388062 -156.74761963 -356.70471191 101.70953369 -191.74829102
		 -356.93862915 101.5296936 -193.29013062 -355.70501709 101.35676575 -192.2795105 -359.89855957 104.5463562 -195.65359497
		 -359.66186523 105.09702301 -194.41494751 -359.30886841 150.019226074 -197.86264038
		 -358.29937744 150.54652405 -198.66345215 -363.72290039 109.2926712 -198.8515625 -363.29067993 108.062080383 -198.70022583
		 -363.29309082 108.80709839 -197.70513916 -362.5864563 109.82577515 -205.83355713
		 -362.74835205 108.81674194 -205.048568726 -363.43130493 109.92849731 -204.82136536
		 -354.46551514 106.55271912 -206.61018372 -355.73028564 106.16009521 -206.70805359
		 -355.28881836 107.23575592 -207.31756592 -359.15158081 107.40872955 -205.92359924
		 -358.76239014 108.47346497 -206.58840942 -359.62280273 148.93710327 -190.12191772
		 -359.10516357 149.029571533 -188.86392212 -320.70593262 163.82875061 -184.9259491
		 -321.72845459 163.43945313 -186.58406067 -207.44648743 373.48587036 -92.97922516
		 -207.51083374 372.76507568 -91.65582275 -207.49583435 370.2411499 -101.88973236 -207.44648743 371.33309937 -100.91917419
		 -212.52076721 281.66836548 -106.16739655 -212.43615723 282.58529663 -107.7191391
		 -212.52076721 293.17593384 -78.70613098 -212.4619751 294.46807861 -77.94412231 -337.036193848 287.1472168 -163.12089539
		 -337.52468872 287.56011963 -164.2815094 -107.99891663 163.54542542 -41.86682129 -108.97602081 164.24803162 -41.12895203
		 -108.97602081 170.56808472 -38.61048126 -108.41195679 171.86347961 -38.82413483 -360.62414551 137.23384094 -200.053756714
		 -359.62521362 137.63397217 -200.87327576 -360.4095459 136.35116577 -191.65684509
		 -360.92880249 136.31178284 -192.90574646 -332.48788452 143.34541321 -167.81654358
		 -334.11712646 142.84039307 -167.82749939 -331.71417236 145.42207336 -192.9250946
		 -330.82492065 145.6295166 -191.56625366 -360.51699829 128.96923828 -202.36999512
		 -361.50646973 128.65548706 -201.5352478 -361.80249023 127.86593628 -194.76187134
		 -361.2869873 127.83785248 -193.52926636 -341.2144165 129.95227051 -175.3256073 -339.6809082 130.30682373 -175.43222046
		 -338.3614502 133.52624512 -198.13308716 -339.34268188 133.45613098 -199.34625244
		 -352.34725952 188.38691711 -109.87550354 -351.057647705 188.38690186 -113.6043396
		 -311.89355469 188.38725281 -80.11834717 -312.6897583 188.38723755 -94.61012268 -323.50900269 4.74230957 -119.3755722
		 -323.24395752 4.74230957 -127.050270081 -331.43707275 4.74139404 -123.3574295 -331.21264648 4.74145508 -126.55167389
		 -347.59429932 72.54882813 -125.60083008 -327.069091797 72.54928589 -111.61917114
		 -326.14135742 72.54925537 -123.99878693 -346.80877686 72.54885864 -129.67121887 -325.25161743 109.32617188 -104.29779053
		 -323.96960449 108.436409 -120.44007874 -355.13491821 115.72307587 -121.39659119 -353.375 115.7230835 -127.042892456
		 -315.0051879883 179.30000305 -100.82435608 -352.89538574 179.29957581 -116.67359161
		 -355.36373901 179.29959106 -112.93061829 -316.84619141 179.30001831 -84.94859314
		 -318.063964844 158.4256897 -106.76165009 -353.036682129 160.57182312 -119.43255615
		 -355.29632568 160.57182312 -114.53027344 -319.74029541 158.68778992 -90.80737305
		 -321.20495605 136.99014282 -112.85855865 -353.1817627 141.34057617 -122.28720093
		 -355.22711182 141.34054565 -117.25330353 -322.71221924 137.52139282 -96.82367706
		 -338.13574219 111.90271759 -111.42870331 -337.2890625 72.54910278 -115.37725067 -326.70227051 4.74194336 -120.97939301
		 -326.45361328 4.74194336 -126.84944916 -336.41860962 72.54907227 -126.28352356 -336.66125488 111.37133789 -124.99739075
		 -334.084625244 138.74241638 -117.85516357 -332.15032959 159.2901001 -112.49344635
		 -330.2666626 179.29983521 -107.27210236 -333.58242798 188.38697815 -107.57889557
		 -332.97528076 188.38697815 -93.13934326 -332.36035156 179.29983521 -95.63432312 -334.06161499 159.44664001 -100.28688049
		 -335.80862427 139.059677124 -105.064537048 -319.4770813 148.78201294 -109.50460052
		 -333.020568848 150.04586792 -114.90563965 -353.10192871 151.91984558 -120.64293671
		 -355.26519775 151.91983032 -115.92041016 -334.8475647 150.27471924 -102.43630219
		 -321.077331543 149.16520691 -93.51406097 -346.93493652 75.71917725 -129.76541138
		 -347.79199219 75.71914673 -125.27775574 -337.35125732 75.43890381 -115.087303162
		 -327.039886475 75.24984741 -111.12121582 -326.086120605 75.18447876 -123.77711487
		 -336.43643188 75.39984131 -126.18908691 -345.32354736 67.62289429 -129.44459534 -346.068328857 67.62286377 -125.43785858
		 -336.5199585 67.62316895 -115.78422546 -326.81048584 67.62335205 -112.18265533 -325.93087769 67.62332153 -124.22045135
		 -335.69470215 67.62313843 -126.32463837 0 184.98635864 -42.5938797 0 224.090667725 -60.60525894
		 0 289.18878174 -45.7901535 -90.42414856 273.11322021 -36.71964645 -126.51045227 237.32727051 -21.38577271
		 0 130.9225769 -10.16241074 -43.37402344 285.8782959 -43.31001282 -43.37403488 224.090606689 -60.60522079
		 -43.37403488 185.040527344 -42.5938797 -43.37403488 130.9225769 -10.16241074 -43.37395477 250.20777893 20.51925659
		 0 250.20777893 20.51925659 -141.68533325 249.4960022 18.2035675 -139.98284912 250.20780945 20.51925659
		 0 312.20822144 -10.98007202 0 311.46661377 -8.21661758 -43.37403488 308.88092041 -7.90621567
		 -43.37402344 308.067565918 -5.16085434 0 132.86909485 28.50370026 0 130.9225769 26.45521545
		 -43.37403488 130.9225769 26.45521545 -43.37403488 132.86909485 28.50370026 -97.5562439 296.3949585 -1.53899765
		 -96.69332886 295.78656006 1.12474442 -106.95197296 223.65213013 -60.43835449 -108.95264435 224.53417969 -59.29061127
		 -81.73805237 241.86535645 -67.37017059 -82.63741302 243.90306091 -66.84203339 -43.37403488 256.2723999 -73.23337555
		 -43.091899872 254.047531128 -73.66657257;
	setAttr ".vt[1162:1327]" -43.37403488 132.57998657 -46.30085373 -43.37403488 130.9225769 -44.75643158
		 0 257.23486328 -73.73049164 0 259.48150635 -73.39712524 0 130.9225769 -44.75637436
		 0 132.58003235 -46.30073929 -43.37403488 203.96826172 32.13544464 -43.37402344 207.5488739 31.76407433
		 0 207.5488739 31.76407433 0 203.96826172 32.13544464 -163.46325684 203.2620697 29.97814178
		 -163.47616577 206.89547729 29.58761406 -161.65829468 207.61039734 31.74787712 -161.68188477 204.0080108643 32.13748169
		 -149.015563965 191.80465698 -5.8132019 -148.8085022 195.3815918 -6.28637648 -127.41616058 185.093795776 -42.5938797
		 -128.82409668 183.23425293 -42.72522736 -128.25881958 186.75268555 -43.3611145 -130.40997314 186.99351501 -42.024681091
		 -130.90823364 183.47354126 -41.41739655 -126.18949127 134.13647461 28.56843567 -124.14480591 132.86909485 28.50370026
		 -125.32369995 130.9225769 26.44186211 -127.37412262 132.18109131 26.5031662 -125.25167847 130.9225769 -10.012226105
		 -127.24185181 132.30714417 -10.063503265 -118.46598053 134.06930542 -46.19584656
		 -116.55335236 132.60064697 -46.29951859 -118.062484741 130.9225769 -44.85348511 -119.96273041 132.43730164 -44.75643158
		 90.42414856 273.11322021 -36.71964645 126.51045227 237.32727051 -21.38577271 43.37402344 285.8782959 -43.31001282
		 43.37403488 224.090606689 -60.60522079 43.37403488 185.040527344 -42.5938797 43.37403488 130.9225769 -10.16241074
		 43.37395477 250.20777893 20.51925659 141.68533325 249.4960022 18.2035675 139.98284912 250.20780945 20.51925659
		 43.37403488 308.88092041 -7.90621567 43.37402344 308.067565918 -5.16085434 43.37403488 130.9225769 26.45521545
		 43.37403488 132.86909485 28.50370026 97.5562439 296.3949585 -1.53899765 96.69332886 295.78656006 1.12474442
		 106.95197296 223.65213013 -60.43835449 108.95264435 224.53417969 -59.29061127 81.73805237 241.86535645 -67.37017059
		 82.63741302 243.90306091 -66.84203339 43.37403488 256.2723999 -73.23337555 43.091899872 254.047531128 -73.66657257
		 43.37403488 132.57998657 -46.30085373 43.37403488 130.9225769 -44.75643158 43.37403488 203.96826172 32.13544464
		 43.37402344 207.5488739 31.76407433 163.46325684 203.2620697 29.97814178 163.47616577 206.89547729 29.58761406
		 161.65829468 207.61039734 31.74787712 161.68188477 204.0080108643 32.13748169 149.015563965 191.80465698 -5.8132019
		 148.8085022 195.3815918 -6.28637648 127.41616058 185.093795776 -42.5938797 128.82409668 183.23425293 -42.72522736
		 128.25881958 186.75268555 -43.3611145 130.40997314 186.99351501 -42.024681091 130.90823364 183.47354126 -41.41739655
		 126.18949127 134.13647461 28.56843567 124.14480591 132.86909485 28.50370026 125.32369995 130.9225769 26.44186211
		 127.37412262 132.18109131 26.5031662 125.25167847 130.9225769 -10.012226105 127.24185181 132.30714417 -10.063503265
		 118.46598053 134.06930542 -46.19584656 116.55335236 132.60064697 -46.29951859 118.062484741 130.9225769 -44.85348511
		 119.96273041 132.43730164 -44.75643158 -352.34725952 188.38691711 -181.79211426 -351.057647705 188.38690186 -185.52096558
		 -311.89355469 188.38725281 -152.034973145 -312.6897583 188.38723755 -166.5267334
		 -323.50900269 4.74230957 -202.86497498 -323.24395752 4.74230957 -210.53967285 -331.43707275 4.74139404 -206.84683228
		 -331.21264648 4.74145508 -210.04107666 -347.88851929 72.56217957 -198.015533447 -326.013061523 72.54928589 -185.89823914
		 -326.4486084 72.53600311 -199.28483582 -347.91271973 72.54885864 -205.60302734 -325.61773682 109.32617188 -176.2144165
		 -324.1078186 108.436409 -192.35668945 -357.90518188 115.72307587 -193.3132019 -355.83236694 115.7230835 -198.95950317
		 -315.0051879883 179.30000305 -172.7409668 -352.89538574 179.29957581 -188.59020996
		 -355.36373901 179.29959106 -184.847229 -316.84619141 179.30001831 -156.86520386 -318.063964844 158.4256897 -178.67826843
		 -353.036682129 160.57182312 -191.34916687 -355.29632568 160.57182312 -186.44689941
		 -319.74029541 158.68778992 -162.72399902 -321.20495605 136.99014282 -184.775177 -353.1817627 141.34057617 -194.20381165
		 -355.22711182 141.34054565 -189.16992188 -322.71221924 137.52139282 -168.74029541
		 -337.88391113 111.90271759 -183.3453064 -336.54299927 72.54910278 -188.23974609 -326.70227051 4.74194336 -204.46879578
		 -326.45361328 4.74194336 -210.33885193 -337.24987793 72.54907227 -203.61793518 -336.14730835 111.37133789 -196.91400146
		 -334.084625244 138.74241638 -189.77178955 -332.15032959 159.2901001 -184.4100647
		 -330.2666626 179.29983521 -179.1887207 -333.58242798 188.38697815 -179.49551392 -332.97528076 188.38697815 -165.055953979
		 -332.36035156 179.29983521 -167.55093384 -334.06161499 159.44664001 -172.20349121
		 -335.80862427 139.059677124 -176.98114014 -319.4770813 148.78201294 -181.42121887
		 -333.020568848 150.04586792 -186.82226563 -353.10192871 151.91984558 -192.55953979
		 -355.26519775 151.91983032 -187.83703613 -334.8475647 150.27471924 -174.35292053
		 -321.077331543 149.16520691 -165.43067932 -347.91131592 75.71917725 -204.72409058
		 -348.014556885 75.66660309 -197.65380859 -336.57641602 75.43890381 -187.96832275
		 -325.9352417 75.24984741 -185.44659424 -326.33306885 75.10713196 -199.042236328 -337.2583313 75.39984131 -203.84632874
		 -346.41375732 67.62289429 -205.87110901 -346.41619873 67.65489197 -198.91363525 -335.81814575 67.62316895 -189.64315796
		 -325.81115723 67.62335205 -187.39009094 -326.33401489 67.70066833 -200.50617981 -336.53411865 67.62313843 -204.04927063
		 294.35614014 277.52966309 -120.2723465 299.43051147 260.45800781 -143.44621277 289.75015259 271.23300171 -148.25791931
		 340.47265625 155.92553711 -171.98622131 339.35266113 156.94117737 -192.047149658
		 350.65368652 128.95796204 -183.88600159 349.72918701 131.25521851 -200.82945251 345.62710571 141.60076904 -198.2142334
		 346.57330322 139.76609802 -179.11677551 227.5801239 350.83517456 -86.24595642 286.27658081 309.72293091 -127.36462402
		 286.27658081 305.59616089 -147.24136353 227.5801239 342.68899536 -115.56334686 217.47189331 329.74734497 -115.26324463
		 210.29589844 320.55987549 -111.69433594 91.4533844 174.51368713 -49.77768707 91.4533844 183.32403564 -48.67797089
		 210.29589844 328.72225952 -81.72840881 217.47189331 337.90301514 -84.2285614 227.029220581 398.88256836 -90.8651886
		 228.29115295 398.94781494 -91.38985443 227.5801239 398.77233887 -89.74053955 228.27749634 396.82696533 -100.20919037
		 227.026992798 396.64910889 -99.9750824 227.51858521 396.10583496 -101.074310303 215.67286682 382.00021362305 -99.63519287
		 215.83306885 381.07611084 -100.74714661 227.5801239 302.21340942 -117.86639404 227.5801239 300.515625 -116.65751648;
	setAttr ".vt[1328:1493]" 228.33876038 299.78393555 -118.13066101 218.77302551 289.55709839 -110.38316345
		 218.72470093 290.50817871 -111.92414856 215.97254944 384.5635376 -91.22127533 215.84205627 383.57858276 -90.097633362
		 69.91584778 197.52458191 -62.60512924 69.67051697 194.99353027 -61.71590805 69.94058228 197.80973816 -62.53514481
		 69.9637146 197.84674072 -61.16464615 227.5801239 312.28414917 -82.46691895 235.48448181 313.89230347 -81.7681427
		 218.84927368 301.16204834 -81.56329346 218.73820496 302.4151001 -80.67472839 281.31225586 349.74755859 -134.32319641
		 281.2897644 348.30792236 -135.42588806 336.65921021 286.95877075 -168.74279785 337.52468872 287.56011963 -167.93501282
		 346.54077148 261.7277832 -173.29789734 345.50888062 262.47894287 -174.18838501 352.65374756 241.98828125 -178.59754944
		 353.11721802 240.92588806 -176.12384033 353.34640503 242.22857666 -177.63354492 353.33377075 242.26481628 -172.25802612
		 353.14456177 240.96311951 -171.9546051 349.97894287 241.93951416 -165.32666016 282.12493896 350.33987427 -125.86199188
		 282.37069702 350.86376953 -126.78888702 345.89941406 262.23858643 -167.58959961 346.54077148 261.7277832 -168.94937134
		 251.48193359 292.12789917 -92.60636902 252.96359253 292.14520264 -92.35247803 254.46263123 290.044067383 -93.16262817
		 350.30111694 237.69364929 -162.63792419 350.92520142 236.90002441 -163.50349426 350.39825439 236.32766724 -162.31771851
		 299.9418335 265.91082764 -123.20048523 300.96566772 264.19842529 -123.3607254 350.55465698 237.28465271 -170.39587402
		 349.42840576 237.8309021 -170.97106934 250.61221313 282.55130005 -116.57077026 249.76396179 283.30892944 -114.94700623
		 322.99530029 162.39396667 -156.15486145 321.71508789 162.88388062 -156.74761963 356.70471191 101.70953369 -191.74829102
		 356.93862915 101.5296936 -193.29013062 355.70501709 101.35676575 -192.2795105 359.89855957 104.5463562 -195.65359497
		 359.66186523 105.09702301 -194.41494751 359.30886841 150.019226074 -197.86264038
		 358.29937744 150.54652405 -198.66345215 363.72290039 109.2926712 -198.8515625 363.29067993 108.062080383 -198.70022583
		 363.29309082 108.80709839 -197.70513916 362.5864563 109.82577515 -205.83355713 362.74835205 108.81674194 -205.048568726
		 363.43130493 109.92849731 -204.82136536 354.46551514 106.55271912 -206.61018372 355.73028564 106.16009521 -206.70805359
		 355.28881836 107.23575592 -207.31756592 359.15158081 107.40872955 -205.92359924 358.76239014 108.47346497 -206.58840942
		 359.62280273 148.93710327 -190.12191772 359.10516357 149.029571533 -188.86392212
		 320.70593262 163.82875061 -184.9259491 321.72845459 163.43945313 -186.58406067 207.44648743 373.48587036 -92.97922516
		 207.51083374 372.76507568 -91.65582275 207.49583435 370.2411499 -101.88973236 207.44648743 371.33309937 -100.91917419
		 212.52076721 281.66836548 -106.16739655 212.43615723 282.58529663 -107.7191391 212.52076721 293.17593384 -78.70613098
		 212.4619751 294.46807861 -77.94412231 337.036193848 287.1472168 -163.12089539 337.52468872 287.56011963 -164.2815094
		 107.99891663 163.54542542 -41.86682129 108.97602081 164.24803162 -41.12895203 108.97602081 170.56808472 -38.61048126
		 108.41195679 171.86347961 -38.82413483 360.62414551 137.23384094 -200.053756714 359.62521362 137.63397217 -200.87327576
		 360.4095459 136.35116577 -191.65684509 360.92880249 136.31178284 -192.90574646 332.48788452 143.34541321 -167.81654358
		 334.11712646 142.84039307 -167.82749939 331.71417236 145.42207336 -192.9250946 330.82492065 145.6295166 -191.56625366
		 360.51699829 128.96923828 -202.36999512 361.50646973 128.65548706 -201.5352478 361.80249023 127.86593628 -194.76187134
		 361.2869873 127.83785248 -193.52926636 341.2144165 129.95227051 -175.3256073 339.6809082 130.30682373 -175.43222046
		 338.3614502 133.52624512 -198.13308716 339.34268188 133.45613098 -199.34625244 352.34725952 188.38691711 -109.87550354
		 351.057647705 188.38690186 -113.6043396 311.89355469 188.38725281 -80.11834717 312.6897583 188.38723755 -94.61012268
		 323.50900269 4.74230957 -119.3755722 323.24395752 4.74230957 -127.050270081 331.43707275 4.74139404 -123.3574295
		 331.21264648 4.74145508 -126.55167389 347.59429932 72.54882813 -125.60083008 327.069091797 72.54928589 -111.61917114
		 326.14135742 72.54925537 -123.99878693 346.80877686 72.54885864 -129.67121887 325.25161743 109.32617188 -104.29779053
		 323.96960449 108.436409 -120.44007874 355.13491821 115.72307587 -121.39659119 353.375 115.7230835 -127.042892456
		 315.0051879883 179.30000305 -100.82435608 352.89538574 179.29957581 -116.67359161
		 355.36373901 179.29959106 -112.93061829 316.84619141 179.30001831 -84.94859314 318.063964844 158.4256897 -106.76165009
		 353.036682129 160.57182312 -119.43255615 355.29632568 160.57182312 -114.53027344
		 319.74029541 158.68778992 -90.80737305 321.20495605 136.99014282 -112.85855865 353.1817627 141.34057617 -122.28720093
		 355.22711182 141.34054565 -117.25330353 322.71221924 137.52139282 -96.82367706 338.13574219 111.90271759 -111.42870331
		 337.2890625 72.54910278 -115.37725067 326.70227051 4.74194336 -120.97939301 326.45361328 4.74194336 -126.84944916
		 336.41860962 72.54907227 -126.28352356 336.66125488 111.37133789 -124.99739075 334.084625244 138.74241638 -117.85516357
		 332.15032959 159.2901001 -112.49344635 330.2666626 179.29983521 -107.27210236 333.58242798 188.38697815 -107.57889557
		 332.97528076 188.38697815 -93.13934326 332.36035156 179.29983521 -95.63432312 334.06161499 159.44664001 -100.28688049
		 335.80862427 139.059677124 -105.064537048 319.4770813 148.78201294 -109.50460052
		 333.020568848 150.04586792 -114.90563965 353.10192871 151.91984558 -120.64293671
		 355.26519775 151.91983032 -115.92041016 334.8475647 150.27471924 -102.43630219 321.077331543 149.16520691 -93.51406097
		 346.93493652 75.71917725 -129.76541138 347.79199219 75.71914673 -125.27775574 337.35125732 75.43890381 -115.087303162
		 327.039886475 75.24984741 -111.12121582 326.086120605 75.18447876 -123.77711487 336.43643188 75.39984131 -126.18908691
		 345.32354736 67.62289429 -129.44459534 346.068328857 67.62286377 -125.43785858 336.5199585 67.62316895 -115.78422546
		 326.81048584 67.62335205 -112.18265533 325.93087769 67.62332153 -124.22045135 335.69470215 67.62313843 -126.32463837
		 0 257.7180481 132.59062195 0 257.71795654 56.50122833 -55.14080048 257.71795654 56.50122833
		 -55.14080048 257.7180481 132.59062195 0 355.22021484 63.082431793 -55.14055634 346.57440186 68.98065948
		 -98.34767151 325.83294678 78.015563965 -148.52807617 257.71792603 103.47144318 -55.14083481 131.95083618 123.1697464
		 0 131.95083618 123.1697464 0 345.48165894 37.34379196;
	setAttr ".vt[1494:1659]" -55.14051437 336.54400635 43.44112396 -98.34766388 315.10247803 53.98570251
		 -148.70713806 257.71789551 79.26724243 -55.14083481 131.95083618 98.40953064 0 131.95083618 98.40953064
		 -98.34773254 257.71792603 56.50122833 -98.3477478 131.95083618 98.40953064 -98.34776306 131.95083618 123.1697464
		 -98.34773254 257.7180481 132.59062195 0 290.78189087 41.5989151 -55.14063644 290.78186035 41.59894562
		 -98.34768677 290.78179932 41.59900665 -127.38659668 290.78179932 66.50859833 -129.33540344 290.78182983 90.63970947
		 -98.34770203 290.78189087 117.63555145 -55.14070511 290.78189087 117.63555145 0 290.78189087 117.63555145
		 0 202.94741821 80.36209106 -55.14083481 202.94741821 80.36209106 -98.34776306 202.94741821 80.36209106
		 -156.059020996 202.94737244 102.21046448 -155.63989258 202.94741821 126.8555069 -98.34776306 202.94744873 157.90196228
		 -55.14083481 202.94744873 157.90196228 0 202.94744873 157.90196228 -151.89556885 202.63435364 155.30656433
		 -148.89427185 202.94741821 157.90196228 0 359.46987915 85.55509949 0 357.57870483 89.054336548
		 -55.14060974 350.81881714 91.42497253 -54.31563187 349.027099609 94.8298645 -149.84069824 134.5433197 148.74667358
		 0 134.5433197 148.74667358 0 131.95083618 145.80279541 -55.14083481 134.5433197 148.74667358
		 -55.14083481 131.95083618 145.80279541 -141.8152771 257.055206299 132.89692688 -144.7389679 257.71798706 130.060470581
		 -127.57388306 290.78186035 115.1594162 -125.23138428 289.66403198 118.14122009 -98.34776306 131.95083618 145.80279541
		 -98.34776306 134.5433197 148.74667358 -96.53529358 328.65740967 101.96234131 -98.34765625 330.031280518 98.61553955
		 -149.94628906 202.77429199 80.42861938 -151.75569153 203.55789185 81.76776886 -98.34765625 304.32681274 35.20051193
		 -98.34765625 301.81994629 34.58150864 -54.56970215 322.75149536 23.22261047 -55.1404953 324.99090576 23.87041855
		 -144.081863403 133.73353577 80.4897995 -98.34773254 133.72259521 80.48863983 -98.34773254 131.95083618 82.082695007
		 -144.71899414 257.71786499 58.29262161 -142.72605896 257.71786499 56.50122833 -120.66371155 290.093963623 40.30857849
		 -122.97206116 290.78179932 41.89267731 0 331.31951904 17.40147781 0 333.65649414 17.95791626
		 0 131.95083618 82.082695007 0 133.72259521 80.48863983 -55.14083481 133.72259521 80.48863983
		 -55.14083481 131.95083618 82.082695007 55.14080048 257.71795654 56.50122833 55.14080048 257.7180481 132.59062195
		 55.14055634 346.57440186 68.98065948 98.34767151 325.83294678 78.015563965 148.52807617 257.71792603 103.47144318
		 55.14083481 131.95083618 123.1697464 55.14051437 336.54400635 43.44112396 98.34766388 315.10247803 53.98570251
		 148.70713806 257.71789551 79.26724243 55.14083481 131.95083618 98.40953064 98.34773254 257.71792603 56.50122833
		 98.3477478 131.95083618 98.40953064 98.34776306 131.95083618 123.1697464 98.34773254 257.7180481 132.59062195
		 55.14063644 290.78186035 41.59894562 98.34768677 290.78179932 41.59900665 127.38659668 290.78179932 66.50859833
		 129.33540344 290.78182983 90.63970947 98.34770203 290.78189087 117.63555145 55.14070511 290.78189087 117.63555145
		 55.14083481 202.94741821 80.36209106 98.34776306 202.94741821 80.36209106 156.059020996 202.94737244 102.21046448
		 155.63989258 202.94741821 126.8555069 98.34776306 202.94744873 157.90196228 55.14083481 202.94744873 157.90196228
		 151.89556885 202.63435364 155.30656433 148.89427185 202.94741821 157.90196228 55.14060974 350.81881714 91.42497253
		 54.31563187 349.027099609 94.8298645 149.84069824 134.5433197 148.74667358 55.14083481 134.5433197 148.74667358
		 55.14083481 131.95083618 145.80279541 141.8152771 257.055206299 132.89692688 144.7389679 257.71798706 130.060470581
		 127.57388306 290.78186035 115.1594162 125.23138428 289.66403198 118.14122009 98.34776306 131.95083618 145.80279541
		 98.34776306 134.5433197 148.74667358 96.53529358 328.65740967 101.96234131 98.34765625 330.031280518 98.61553955
		 149.94628906 202.77429199 80.42861938 151.75569153 203.55789185 81.76776886 98.34765625 304.32681274 35.20051193
		 98.34765625 301.81994629 34.58150864 54.56970215 322.75149536 23.22261047 55.1404953 324.99090576 23.87041855
		 144.081863403 133.73353577 80.4897995 98.34773254 133.72259521 80.48863983 98.34773254 131.95083618 82.082695007
		 144.71899414 257.71786499 58.29262161 142.72605896 257.71786499 56.50122833 120.66371155 290.093963623 40.30857849
		 122.97206116 290.78179932 41.89267731 55.14083481 133.72259521 80.48863983 55.14083481 131.95083618 82.082695007
		 -151.16546631 133.97683716 123.539505 -148.86227417 131.95083618 123.35544586 -145.87037659 131.95083618 98.40953064
		 -148.26898193 133.92414856 98.76942444 -150.10702515 131.95083618 145.6819458 -151.46102905 134.37393188 147.86238098
		 -152.30923462 134.08430481 145.95697021 -145.96705627 133.96472168 82.20683289 -144.8143158 132.91339111 81.18357849
		 -143.62483215 131.95083618 82.0015106201 148.86227417 131.95083618 123.35544586 151.16546631 133.97683716 123.539505
		 148.26855469 133.92182922 98.76899719 145.87037659 131.95083618 98.40953064 152.30923462 134.08430481 145.95697021
		 151.46102905 133.4825592 147.86238098 150.10702515 131.059463501 145.6819458 143.62483215 131.95083618 82.0015106201
		 144.8143158 132.91339111 81.18357849 145.96705627 133.96472168 82.20683289 0 188.77494812 155.68859863
		 0 186.68899536 155.39285278 -55.14084625 188.77494812 155.68859863 -55.14084625 186.68899536 155.39285278
		 0 186.65658569 86.094337463 0 188.74543762 85.81977844 -55.14084625 188.74543762 85.81977844
		 -55.14084625 186.65658569 86.094337463 -98.34776306 186.68899536 155.39285278 -98.34776306 188.77494812 155.68859863
		 -157.48316956 188.75172424 132.91625977 -157.48469543 186.645401 133.15206909 -157.95811462 188.7988739 108.13722229
		 -157.91073608 186.69250488 108.39332581 -98.34776306 188.74543762 85.81977844 -98.34776306 186.65658569 86.094337463
		 -153.90657043 186.67774963 152.85966492 -153.7956543 188.7769165 153.15986633 -150.74209595 188.63276672 155.6701355
		 -150.8556366 186.54336548 155.37428284 -151.73962402 186.6594696 86.094642639 -151.76333618 188.7509613 85.81765747
		 -153.66145325 188.75305176 87.39942932 -153.6353302 186.6532135 87.67488098 157.48313904 188.75195313 132.91616821
		 157.48466492 186.64515686 133.15202332 157.95823669 188.79794312 108.13763428;
	setAttr ".vt[1660:1825]" 157.91090393 186.69342041 108.39349365 55.14084625 188.74543762 85.81977844
		 55.14084625 186.65658569 86.094337463 98.34776306 188.74543762 85.81977844 98.34776306 186.65658569 86.094337463
		 55.14084625 188.77494812 155.68859863 55.14084625 186.68899536 155.39285278 98.34776306 188.77494812 155.68859863
		 98.34776306 186.68899536 155.39285278 153.7956543 188.7769165 153.15986633 153.90657043 186.67774963 152.85966492
		 150.8556366 186.54336548 155.37428284 150.74209595 188.63276672 155.6701355 151.76333618 188.7509613 85.81765747
		 151.73962402 186.6594696 86.094642639 153.66145325 188.75305176 87.39942932 153.6353302 186.6532135 87.67488098
		 -294.35614014 277.52966309 -56.62201691 -299.43051147 260.45800781 -79.79586792 -289.75015259 271.23300171 -84.60757446
		 -340.47265625 155.92553711 -100.069602966 -339.35266113 156.94117737 -120.13053894
		 -350.65368652 128.95796204 -111.96939087 -349.72918701 131.25521851 -128.9128418
		 -345.62710571 141.60076904 -126.29763031 -346.57330322 139.76609802 -107.20017242
		 -227.5801239 350.83517456 -22.59562302 -286.27658081 309.72293091 -63.71429062 -286.27658081 305.59616089 -83.59101868
		 -227.5801239 342.68899536 -51.91300964 -217.47189331 329.74734497 -51.61290741 -210.29589844 320.55987549 -48.043994904
		 -91.4533844 174.49569702 79.042457581 -91.4533844 183.14651489 81.32750702 -210.29589844 328.72225952 -18.078075409
		 -217.47189331 337.90301514 -20.578228 -227.029220581 398.88256836 -27.21485138 -228.29115295 398.94781494 -27.73951912
		 -227.5801239 398.77233887 -26.090204239 -228.27749634 396.82696533 -36.55885315 -227.026992798 396.64910889 -36.32474899
		 -227.51858521 396.10583496 -37.42397308 -215.67286682 382.00021362305 -35.98485565
		 -215.83306885 381.07611084 -37.096809387 -227.5801239 302.21340942 -54.21605682 -227.5801239 300.515625 -53.0071868896
		 -228.33876038 299.78393555 -54.48032761 -218.77302551 289.55709839 -46.73282623 -218.72470093 290.50817871 -48.27381134
		 -215.97254944 384.5635376 -27.57093811 -215.84205627 383.57858276 -26.44729614 -69.91584778 198.7023468 67.15715027
		 -69.67051697 196.093353271 67.8711853 -69.94058228 198.97880554 67.27024078 -69.9637146 198.87484741 68.83306885
		 -227.5801239 312.28414917 -18.81658554 -235.48448181 313.89230347 -18.11780167 -218.84927368 301.16204834 -17.91295242
		 -218.73820496 302.4151001 -17.024391174 -281.31225586 349.74755859 -70.67286682 -281.2897644 348.30792236 -71.77555084
		 -336.65921021 286.95877075 -105.092468262 -337.52468872 287.56011963 -104.28468323
		 -346.54077148 261.7277832 -109.64756012 -345.50888062 262.47894287 -110.53805542
		 -352.65374756 241.98828125 -114.94721222 -353.11721802 240.92588806 -112.47351074
		 -353.34640503 242.22857666 -113.98320007 -353.33377075 242.26481628 -108.6076889
		 -353.14456177 240.96311951 -108.30426025 -349.97894287 241.93951416 -101.67633057
		 -282.12493896 350.33987427 -62.21165848 -282.37069702 350.86376953 -63.13855743 -345.89941406 262.23858643 -103.93926239
		 -346.54077148 261.7277832 -105.29904175 -251.48193359 292.12789917 -28.95602989 -252.96359253 292.14520264 -28.70214081
		 -254.46263123 290.044067383 -29.51229477 -350.30111694 237.69364929 -98.98758698
		 -350.92520142 236.90002441 -99.85316467 -350.39825439 236.32766724 -98.66737366 -299.9418335 265.91082764 -59.55014801
		 -300.96566772 264.19842529 -59.71039963 -350.55465698 237.28465271 -106.74554443
		 -349.42840576 237.8309021 -107.32072449 -250.61221313 282.55130005 -52.92042923 -249.76396179 283.30892944 -51.29666901
		 -322.99530029 162.39396667 -84.23825073 -321.71508789 162.88388062 -84.83100128 -356.70471191 101.70953369 -119.83167267
		 -356.93862915 101.5296936 -121.37351227 -355.70501709 101.35676575 -120.36289978
		 -359.89855957 104.5463562 -123.73697662 -359.66186523 105.09702301 -122.49833679
		 -359.30886841 150.019226074 -125.94602203 -358.29937744 150.54652405 -126.7468338
		 -363.72290039 109.2926712 -126.93494415 -363.29067993 108.062080383 -126.78360748
		 -363.29309082 108.80709839 -125.78853607 -362.5864563 109.82577515 -133.91696167
		 -362.74835205 108.81674194 -133.13192749 -363.43130493 109.92849731 -132.90475464
		 -354.46551514 106.55271912 -134.693573 -355.73028564 106.16009521 -134.79144287 -355.28881836 107.23575592 -135.40093994
		 -359.15158081 107.40872955 -134.007019043 -358.76239014 108.47346497 -134.67181396
		 -359.62280273 148.93710327 -118.20530701 -359.10516357 149.029571533 -116.94731903
		 -320.70593262 163.82875061 -113.0093307495 -321.72845459 163.43945313 -114.66744995
		 -207.44648743 373.48587036 -29.32888603 -207.51083374 372.76507568 -28.00548172 -207.49583435 370.2411499 -38.23939514
		 -207.44648743 371.33309937 -37.26884079 -212.52076721 281.66836548 -42.51705933 -212.43615723 282.58529663 -44.068790436
		 -212.52076721 293.17593384 -15.055790901 -212.4619751 294.46807861 -14.2937851 -337.036193848 287.1472168 -99.47055817
		 -337.52468872 287.56011963 -100.63116455 -107.99891663 162.77294922 86.75074005 -108.97602081 163.39605713 87.67230988
		 -108.97602081 169.42404175 91.2783432 -108.41195679 170.73452759 91.18744659 -360.62414551 137.23384094 -128.137146
		 -359.62521362 137.63397217 -128.95666504 -360.4095459 136.35116577 -119.74023438
		 -360.92880249 136.31178284 -120.98913574 -332.48788452 143.34541321 -95.89993286
		 -334.11712646 142.84039307 -95.91088104 -331.71417236 145.42207336 -121.0084762573
		 -330.82492065 145.6295166 -119.64965057 -360.51699829 128.96923828 -130.45336914
		 -361.50646973 128.65548706 -129.61862183 -361.80249023 127.86593628 -122.84525299
		 -361.2869873 127.83785248 -121.61265564 -341.2144165 129.95227051 -103.40898895 -339.6809082 130.30682373 -103.51560211
		 -338.3614502 133.52624512 -126.21648407 -339.34268188 133.45613098 -127.42962646
		 352.34725952 188.38691711 -181.79211426 351.057647705 188.38690186 -185.52096558
		 311.89355469 188.38725281 -152.034973145 312.6897583 188.38723755 -166.5267334 323.50900269 4.74230957 -202.86497498
		 323.24395752 4.74230957 -210.53967285 331.43707275 4.74139404 -206.84683228 331.21264648 4.74145508 -210.04107666
		 347.88851929 72.56217957 -198.015533447 326.013061523 72.54928589 -185.89823914 326.4486084 72.53600311 -199.28483582
		 347.91271973 72.54885864 -205.60302734 325.61773682 109.32617188 -176.2144165 324.1078186 108.436409 -192.35668945
		 357.90518188 115.72307587 -193.3132019 355.83236694 115.7230835 -198.95950317 315.0051879883 179.30000305 -172.7409668
		 352.89538574 179.29957581 -188.59020996 355.36373901 179.29959106 -184.847229 316.84619141 179.30001831 -156.86520386
		 318.063964844 158.4256897 -178.67826843 353.036682129 160.57182312 -191.34916687
		 355.29632568 160.57182312 -186.44689941 319.74029541 158.68778992 -162.72399902 321.20495605 136.99014282 -184.775177;
	setAttr ".vt[1826:1991]" 353.1817627 141.34057617 -194.20381165 355.22711182 141.34054565 -189.16992188
		 322.71221924 137.52139282 -168.74029541 337.88391113 111.90271759 -183.3453064 336.54299927 72.54910278 -188.23974609
		 326.70227051 4.74194336 -204.46879578 326.45361328 4.74194336 -210.33885193 337.24987793 72.54907227 -203.61793518
		 336.14730835 111.37133789 -196.91400146 334.084625244 138.74241638 -189.77178955
		 332.15032959 159.2901001 -184.4100647 330.2666626 179.29983521 -179.1887207 333.58242798 188.38697815 -179.49551392
		 332.97528076 188.38697815 -165.055953979 332.36035156 179.29983521 -167.55093384
		 334.06161499 159.44664001 -172.20349121 335.80862427 139.059677124 -176.98114014
		 319.4770813 148.78201294 -181.42121887 333.020568848 150.04586792 -186.82226563 353.10192871 151.91984558 -192.55953979
		 355.26519775 151.91983032 -187.83703613 334.8475647 150.27471924 -174.35292053 321.077331543 149.16520691 -165.43067932
		 347.91131592 75.71917725 -204.72409058 348.014556885 75.66660309 -197.65380859 336.57641602 75.43890381 -187.96832275
		 325.9352417 75.24984741 -185.44659424 326.33306885 75.10713196 -199.042236328 337.2583313 75.39984131 -203.84632874
		 346.41375732 67.62289429 -205.87110901 346.41619873 67.65489197 -198.91363525 335.81814575 67.62316895 -189.64315796
		 325.81115723 67.62335205 -187.39009094 326.33401489 67.70066833 -200.50617981 336.53411865 67.62313843 -204.04927063
		 6.6272467e-16 169.16227722 192.98262024 9.8223836e-16 288.68185425 198.56277466 -40.12332153 169.16227722 192.98262024
		 -17.8535347 288.68185425 198.56277466 -40.12332153 169.16227722 146.52856445 -17.8535347 288.68185425 152.10871887
		 1.2679838e-15 169.16227722 146.52856445 1.3457425e-15 288.68185425 152.10871887 40.12332153 169.16227722 192.98262024
		 17.8535347 288.68185425 198.56277466 40.12332153 169.16227722 146.52856445 17.8535347 288.68185425 152.10871887
		 66.20383453 213.94551086 174.8394928 60.6602478 218.47596741 171.67593384 66.20383453 213.94551086 175.87088013
		 61.57357025 218.47596741 172.35533142 196.078140259 324.44866943 93.16670227 140.264328 379.075073242 88.91372681
		 136.21873474 379.075073242 82.26029968 144.88092041 372.76498413 82.26031494 62.061153412 217.071334839 171.86303711
		 62.81764603 218.24119568 172.8210144 145.40162659 372.76498413 89.92637634 139.6386261 369.82601929 70.43721008
		 132.21508789 376.1361084 71.6696167 62.98869705 218.47596741 163.82019043 63.51489258 217.73449707 163.11088562
		 132.56442261 379.075073242 72.89630127 141.35601807 372.76498413 72.89628601 62.11779022 217.18829346 166.098526001
		 60.6602478 218.47596741 166.28648376 65.75708771 213.68966675 163.66229248 185.60575867 310.9914856 72.76445007
		 66.12251282 213.7237854 161.89836121 137.20227051 295.1187439 118.7946701 229.13200378 135.14744568 156.61181641
		 222.97512817 132.62115479 138.99291992 118.55157471 322.52557373 138.036987305 137.36981201 299.3671875 142.41305542
		 115.59375763 322.18322754 122.66381836 137.3210907 299.27838135 114.49752808 118.77826691 322.36083984 117.96881866
		 115.14015198 326.8604126 119.031158447 111.65284729 326.8604126 122.72491455 111.65284729 326.8604126 130.79669189
		 114.68006134 326.8604126 135.50782776 252.19277954 144.60977173 141.35960388 240.029937744 139.61911011 118.68584442
		 198.3052063 319.35821533 87.71717834 193.75773621 313.14315796 68.36839294 137.36981201 295.21865845 135.53479004
		 230.079055786 133.10865784 154.48696899 224.61207581 130.86543274 138.84231567 250.55584717 141.51071167 140.94380188
		 239.75584412 137.079269409 120.8106842 200.7558136 184.64726257 150.094024658 196.45106506 182.87129211 132.74688721
		 225.72088623 193.27903748 103.12585449 235.52880859 198.64831543 124.77143097 212.23158264 -3.0517576e-05 129.76768494
		 210.71298218 -4.5776367e-05 124.20513916 217.91958618 6.1035156e-05 124.95233154
		 214.91958618 1.5258789e-05 117.79389191 249.96548462 138.95085144 140.65452576 229.75621033 130.70079041 154.039810181
		 224.36062622 128.49813843 138.57752991 239.30656433 134.5995636 120.75610352 249.075073242 135.090118408 140.21824646
		 229.26931763 127.069282532 153.36540222 223.98143005 124.92783356 138.17819214 238.62896729 130.85972595 120.67379761
		 138.3605957 293.49029541 135.76234436 138.12837219 293.36422729 119.012733459 194.25733948 311.26956177 68.91168213
		 198.88703918 317.47140503 88.2963562 140.23605347 290.21871948 136.19311523 139.88142395 290.043060303 119.42556763
		 195.20306396 307.72302246 69.94007874 199.98841858 313.89984131 89.39271545 142.83950806 285.67724609 136.79110718
		 142.31494141 285.43270874 119.99861908 196.51586914 302.79983521 71.36767578 201.51728821 308.94192505 90.91464233
		 -352.34725952 188.38691711 -54.25816345 -351.057647705 188.38690186 -57.98701477
		 -311.89355469 188.38725281 -24.50101852 -312.6897583 188.38723755 -38.99279022 -323.50900269 4.74230957 -63.75824356
		 -323.24395752 4.74230957 -71.43293762 -331.43707275 4.74139404 -67.74008942 -331.21264648 4.74145508 -70.93434906
		 -347.59429932 72.54882813 -69.98349762 -327.069091797 72.54928589 -56.0018348694
		 -326.14135742 72.54925537 -68.38144684 -346.80877686 72.54885864 -74.053886414 -325.25161743 109.32617188 -48.6804657
		 -323.96960449 108.436409 -64.82274628 -355.13491821 115.72307587 -65.77925873 -353.375 115.7230835 -71.42556
		 -315.0051879883 179.30000305 -45.20702744 -352.89538574 179.29957581 -61.056255341
		 -355.36373901 179.29959106 -57.31328583 -316.84619141 179.30001831 -29.3312645 -318.063964844 158.4256897 -51.14432144
		 -353.036682129 160.57182312 -63.81522369 -355.29632568 160.57182312 -58.91295242
		 -319.74029541 158.68778992 -35.1900444 -321.20495605 136.99014282 -57.2412262 -353.1817627 141.34057617 -66.66986847
		 -355.22711182 141.34054565 -61.63597107 -322.71221924 137.52139282 -41.2063446 -338.13574219 111.90271759 -55.81137085
		 -337.2890625 72.54910278 -59.75992203 -326.70227051 4.74194336 -65.36206055 -326.45361328 4.74194336 -71.2321167
		 -336.41860962 72.54907227 -70.66619873 -336.66125488 111.37133789 -69.38005829 -334.084625244 138.74241638 -62.23784256
		 -332.15032959 159.2901001 -56.87611008 -330.2666626 179.29983521 -51.6547699 -333.58242798 188.38697815 -51.96156311
		 -332.97528076 188.38697815 -37.52200699 -332.36035156 179.29983521 -40.016994476
		 -334.06161499 159.44664001 -44.66954803 -335.80862427 139.059677124 -49.44719696
		 -319.4770813 148.78201294 -53.88726425 -333.020568848 150.04586792 -59.28831863 -353.10192871 151.91984558 -65.025604248
		 -355.26519775 151.91983032 -60.30308533 -334.8475647 150.27471924 -46.81896973 -321.077331543 149.16520691 -37.89672852;
	setAttr ".vt[1992:2157]" -346.93493652 75.71917725 -74.14807892 -347.79199219 75.71914673 -69.66043091
		 -337.35125732 75.43890381 -59.46996689 -327.039886475 75.24984741 -55.50387573 -326.086120605 75.18447876 -68.15978241
		 -336.43643188 75.39984131 -70.57176208 -345.32354736 67.62289429 -73.82726288 -346.068328857 67.62286377 -69.82052612
		 -336.5199585 67.62316895 -60.16689682 -326.81048584 67.62335205 -56.56531525 -325.93087769 67.62332153 -68.60312653
		 -335.69470215 67.62313843 -70.70731354 -190.64360046 308.98822021 57.57476044 -131.69880676 324.73709106 130.6446991
		 -201.31118774 316.77746582 76.6894455 -142.3664093 332.52636719 149.75941467 -129.61108398 393.93127441 80.54781342
		 -123.21560669 394.54885864 83.86535645 -123.49690247 390.84124756 69.33629608 -117.1014328 391.45883179 72.65383911
		 -209.43844604 266.41479492 118.65350342 -202.9677887 267.039672852 122.010040283
		 -212.92524719 274.31039429 139.85227966 -219.39590454 273.68554688 136.49572754 -186.11517334 341.53948975 131.88056946
		 -126.86335754 394.19662476 81.97315216 -120.74917603 391.10656738 70.76163483 -166.64054871 327.31948853 96.98501587
		 -206.65841675 266.68328857 120.095596313 -216.61587524 273.95401001 137.93782043
		 190.64360046 308.98822021 57.57476044 131.69880676 324.73709106 130.6446991 201.31118774 316.77746582 76.6894455
		 142.3664093 332.52636719 149.75941467 129.61108398 393.93127441 80.54781342 123.21560669 394.54885864 83.86535645
		 123.49690247 390.84124756 69.33629608 117.1014328 391.45883179 72.65383911 209.43844604 266.41479492 118.65350342
		 202.9677887 267.039672852 122.010040283 212.92524719 274.31039429 139.85227966 219.39590454 273.68554688 136.49572754
		 186.11517334 341.53948975 131.88056946 126.86335754 394.19662476 81.97315216 120.74917603 391.10656738 70.76163483
		 166.64054871 327.31948853 96.98501587 206.65841675 266.68328857 120.095596313 216.61587524 273.95401001 137.93782043
		 -61.55409241 255.85212708 216.60954285 -61.55409241 291.4352417 216.60961914 -61.55409241 255.85212708 205.92010498
		 -61.55409241 291.4352417 205.92010498 1.2545622e-14 255.85212708 257.96487427 1.9073486e-06 291.4352417 257.96487427
		 1.5258789e-05 291.4352417 270.79919434 -1.207852e-16 255.85212708 270.79919434 -94.059883118 257.57479858 185.89117432
		 -94.059883118 293.067810059 185.89118958 -93.1375885 258.59674072 173.80264282 -93.1375885 293.13632202 173.80264282
		 -105.30954742 258.2074585 164.58976746 -101.87076569 260.16345215 173.57240295 -101.80964661 291.38009644 173.29219055
		 -105.30955505 293.34030151 164.5897522 -105.30953217 260.17739868 164.58978271 -105.30953217 291.0675354 164.58978271
		 -102.79646301 260.21173096 149.72297668 -101.13750458 289.46035767 139.92669678 -94.31887054 292.73773193 144.34320068
		 -96.1738205 260.033599854 155.29684448 -102.90225983 258.34646606 150.34770203 -95.32829285 253.8972168 158.34437561
		 -93.25733948 301.0086364746 142.065490723 -101.015457153 291.61233521 139.2059021
		 -69.49278259 260.10623169 155.047790527 -67.83383179 289.35482788 145.25151062 -70.42274475 293.26248169 149.95669556
		 -72.27767944 260.55838013 160.91033936 -69.56866455 258.76800537 155.49598694 -73.12503052 254.53541565 164.0098266602
		 -70.20142365 301.58972168 147.70477295 -67.71176147 291.50683594 144.5307312 -61.55409241 318.82977295 189.32658386
		 -61.55409241 320.46386719 190.4004364 -96.71335602 301.71069336 172.019638062 -97.775177 300.865448 172.63017273
		 -96.29003906 301.74707031 175.13085938 -96.36854553 300.54559326 173.60432434 -61.55409241 320.46386719 198.1000061
		 -61.55409241 319.68359375 199.4858551 -93.8392868 300.83435059 181.99656677 -94.18445587 301.74707031 180.57872009
		 6.3686798e-15 357.037322998 223.20303345 1.4164351e-14 356.32070923 224.62602234
		 -3.7212067e-15 355.34460449 215.84176636 -2.6961126e-15 357.037322998 216.83859253
		 -61.55409241 237.9360199 212.60087585 -61.070114136 236.7815094 211.59088135 -94.12314606 251.86538696 184.59474182
		 -93.93036652 253.039596558 185.78370667 -62.35280609 237.37077332 199.48072815 -61.55409241 238.52856445 198.71740723
		 -96.087730408 252.063842773 172.55496216 -95.69457245 252.92062378 174.047714233
		 -95.86943054 251.86538696 175.6350708 -97.14019012 252.53865051 173.084396362 -4.8129666e-15 208.73124695 241.96430969
		 2.9798621e-15 210.25128174 240.64868164 -1.5628135e-15 209.58886719 252.58470154
		 -5.1906907e-15 208.73124695 251.18960571 -102.031692505 258.54354858 173.49440002
		 -102.58808136 257.36456299 172.23426819 -101.23377228 295.5319519 170.97337341 -100.91753387 294.56365967 172.42292786
		 61.55409241 255.85212708 216.60954285 61.55409241 291.4352417 216.60961914 61.55409241 255.85212708 205.92010498
		 61.55409241 291.4352417 205.92010498 94.059883118 257.57479858 185.89117432 94.059883118 293.067810059 185.89118958
		 93.1375885 258.59674072 173.80264282 93.1375885 293.13632202 173.80264282 105.30954742 258.2074585 164.58976746
		 101.87076569 260.16345215 173.57240295 101.80964661 291.38009644 173.29219055 105.30955505 293.34030151 164.5897522
		 105.30953217 260.17739868 164.58978271 105.30953217 291.0675354 164.58978271 102.79646301 260.21173096 149.72297668
		 101.13750458 289.46035767 139.92669678 94.31887054 292.73773193 144.34320068 96.1738205 260.033599854 155.29684448
		 102.90225983 258.34646606 150.34770203 95.32829285 253.8972168 158.34437561 93.25733948 301.0086364746 142.065490723
		 101.015457153 291.61233521 139.2059021 69.49278259 260.10623169 155.047790527 67.83383179 289.35482788 145.25151062
		 70.42274475 293.26248169 149.95669556 72.27767944 260.55838013 160.91033936 69.56866455 258.76800537 155.49598694
		 73.12503052 254.53541565 164.0098266602 70.20142365 301.58972168 147.70477295 67.71176147 291.50683594 144.5307312
		 61.55409241 318.82977295 189.32658386 61.55409241 320.46386719 190.4004364 96.71335602 301.71069336 172.019638062
		 97.775177 300.865448 172.63017273 96.29003906 301.74707031 175.13085938 96.36854553 300.54559326 173.60432434
		 61.55409241 320.46386719 198.1000061 61.55409241 319.68359375 199.4858551 93.8392868 300.83435059 181.99656677
		 94.18445587 301.74707031 180.57872009 61.55409241 237.9360199 212.60087585 61.070114136 236.7815094 211.59088135
		 94.12314606 251.86538696 184.59474182 93.93036652 253.039596558 185.78370667 62.35280609 237.37077332 199.48072815
		 61.55409241 238.52856445 198.71740723 96.087730408 252.063842773 172.55496216 95.69457245 252.92062378 174.047714233
		 95.86943054 251.86538696 175.6350708 97.14019012 252.53865051 173.084396362 102.031692505 258.54354858 173.49440002
		 102.58808136 257.36456299 172.23426819;
	setAttr ".vt[2158:2159]" 101.23377228 295.5319519 170.97337341 100.91753387 294.56365967 172.42292786;
	setAttr -s 4215 ".ed";
	setAttr ".ed[0:165]"  0 7 0 2 8 1 4 9 1 0 2 0 1 3 1 2 25 0 3 32 1 5 6 0 6 31 0
		 7 1 0 8 3 1 7 8 1 9 5 1 8 24 1 71 15 0 6 14 0 10 11 1 1 17 0 11 29 1 7 16 0 13 12 1
		 10 28 1 14 11 0 16 13 1 17 12 1 16 17 0 17 30 0 15 36 0 16 18 1 10 19 1 13 20 1 19 27 1
		 18 20 0 36 21 1 22 23 0 24 9 1 25 4 0 24 25 1 26 16 0 21 18 0 27 20 0 28 13 1 27 28 1
		 29 12 1 28 29 1 30 14 0 29 30 1 31 1 0 30 31 0 32 5 1 31 32 1 32 24 1 33 34 0 22 33 0
		 23 34 0 26 21 0 4 74 0 9 72 0 72 6 0 14 15 0 15 10 1 36 19 1 79 21 0 21 27 0 21 58 0
		 80 57 0 35 60 0 36 59 0 22 37 0 23 38 0 33 39 0 34 40 0 37 38 0 37 39 0 39 40 0 38 40 0
		 41 22 0 42 23 0 41 42 0 43 34 0 42 43 1 44 33 0 43 44 0 44 41 1 37 50 0 38 51 0 45 46 0
		 39 49 0 45 47 0 40 52 0 47 48 0 46 48 0 49 53 0 50 54 0 49 50 1 51 55 0 50 51 0 52 56 0
		 51 52 1 52 49 0 53 47 0 54 45 0 53 54 1 55 46 0 54 55 0 56 48 0 55 56 1 56 53 0 57 61 0
		 58 62 0 57 58 0 59 63 0 58 59 1 60 64 0 59 60 0 60 57 1 61 65 0 62 66 0 61 62 0 63 67 0
		 62 63 1 64 68 0 63 64 0 64 61 1 65 41 0 66 42 0 65 66 0 67 43 0 66 67 1 68 44 0 67 68 0
		 68 65 1 35 36 0 25 78 0 73 69 0 74 70 0 71 6 0 9 70 0 69 15 0 73 36 0 75 60 0 4 76 0
		 76 78 0 75 80 0 77 0 0 25 77 0 79 57 0 82 204 1 81 83 1 82 84 1 83 208 1 84 209 1
		 85 81 1 86 83 1 85 86 1 87 84 1 88 82 1 87 88 1 89 99 1 91 227 0 90 97 1 92 224 0
		 92 98 1 96 221 0 93 95 1 90 96 1;
	setAttr ".ed[166:331]" 97 91 1 98 93 1 99 96 1 100 94 1 203 206 1 205 81 1
		 207 210 1 223 222 0 225 224 0 226 225 0 226 91 0 228 229 0 228 227 0 230 92 0 230 229 0
		 101 104 1 104 124 1 124 123 1 123 101 1 102 101 1 101 114 1 114 113 1 113 102 1 103 102 1
		 102 106 0 106 105 1 105 103 0 104 103 1 103 108 1 108 107 1 107 104 1 106 204 0 204 203 1
		 203 105 0 107 110 1 110 118 1 118 117 1 117 107 1 109 108 1 108 111 0 111 112 1 112 109 0
		 110 109 1 109 116 1 116 115 1 115 110 1 111 206 0 206 205 1 205 112 0 114 130 1 130 129 1
		 129 113 1 116 128 1 128 127 1 127 115 1 117 119 1 119 122 1 122 124 1 124 117 1 119 118 1
		 118 121 1 121 120 1 120 119 1 121 135 1 134 232 1 123 122 1 122 126 1 126 125 1 125 123 1
		 126 133 1 133 132 1 132 125 1 128 138 1 138 137 1 137 127 1 130 146 1 146 145 1 145 129 1
		 131 133 1 133 158 1 158 157 1 157 131 1 132 131 0 131 151 1 151 150 1 150 132 1 136 155 0
		 155 156 1 156 231 0 136 135 0 135 153 1 153 152 1 152 136 1 137 140 1 140 154 1 154 153 1
		 153 137 1 139 138 1 138 141 0 141 142 1 142 139 0 140 139 1 139 144 1 144 143 1 143 140 1
		 141 208 0 208 207 1 207 142 0 143 146 1 146 150 1 149 234 1 145 144 1 144 147 0 147 148 1
		 148 145 0 147 210 0 210 209 1 209 148 0 151 169 0 169 170 1 170 233 0 152 154 1 154 167 0
		 167 168 1 168 152 1 155 159 0 159 160 1 160 156 0 158 163 1 163 164 1 164 157 1 159 162 0
		 162 161 1 161 160 0 162 178 0 178 179 1 179 161 0 163 165 1 165 166 1 166 164 1 165 177 1
		 177 176 1 176 166 1 167 187 0 187 189 1 189 168 0 169 221 0 221 223 1 223 170 0 171 173 0
		 173 188 1 188 187 1 187 171 0 172 171 0 171 175 0 175 174 1 174 172 0 173 172 0 172 185 0
		 185 186 1 186 173 0 175 215 0 215 216 1 216 174 0 177 219 1 219 220 0;
	setAttr ".ed[332:497]" 220 176 1 178 190 0 190 192 1 192 179 0 180 182 1 182 186 0
		 185 180 0 181 180 0 180 184 1 184 183 1 183 181 1 182 181 0 181 192 0 192 191 0 191 182 0
		 184 199 1 199 200 0 200 183 1 189 188 1 188 193 1 193 194 1 194 189 1 191 190 0 190 194 1
		 193 191 1 195 196 1 196 222 0 222 221 0 221 195 0 195 197 1 197 198 1 198 196 1 197 227 0
		 228 198 1 199 202 1 202 201 1 201 200 1 202 224 0 225 201 1 211 212 1 212 220 0 219 211 0
		 211 213 0 213 214 0 214 212 0 213 226 0 226 214 0 215 217 0 217 218 1 218 216 0 217 229 0
		 230 218 0 142 147 1 113 88 1 88 106 1 105 111 1 112 85 1 85 116 1 120 126 1 115 121 1
		 149 154 1 125 114 1 86 128 1 129 87 1 132 130 1 134 133 1 127 135 1 86 141 1 148 87 1
		 163 160 1 161 165 1 156 158 1 152 94 1 94 155 1 174 95 1 95 185 1 157 89 1 89 151 1
		 170 167 1 99 169 1 179 177 1 168 100 1 187 223 0 222 175 1 186 193 1 219 192 1 183 219 1
		 195 90 0 97 197 1 211 200 1 201 213 1 93 216 0 218 98 1 215 196 1 198 217 1 166 89 1
		 176 99 1 90 212 0 214 97 1 98 202 1 199 93 0 95 184 1 162 94 1 100 178 1 96 220 0
		 194 100 1 231 134 1 231 136 1 232 120 1 135 232 1 232 231 0 233 149 1 233 151 1 234 143 1
		 150 234 1 234 233 1 91 235 0 235 228 0 226 235 0 92 236 0 236 225 0 230 235 0 235 236 0
		 237 238 1 237 81 1 238 83 1 240 82 1 239 240 1 239 84 1 253 256 1 256 276 1 276 275 1
		 275 253 1 254 253 1 253 266 1 266 265 1 265 254 1 255 254 1 254 258 0 258 257 1 257 255 0
		 256 255 1 255 260 1 260 259 1 259 256 1 258 204 0 203 257 0 259 262 1 262 270 1 270 269 1
		 269 259 1 261 260 1 260 263 0 263 264 1 264 261 0 262 261 1 261 268 1 268 267 1 267 262 1
		 263 206 0 205 264 0 266 282 1 282 281 1 281 265 1 268 280 1 280 279 1;
	setAttr ".ed[498:663]" 279 267 1 269 271 1 271 274 1 274 276 1 276 269 1 271 270 1
		 270 273 1 273 272 1 272 271 1 275 274 1 274 278 1 278 277 1 277 275 1 278 285 1 285 284 1
		 284 277 1 280 290 1 290 289 1 289 279 1 282 298 1 298 297 1 297 281 1 283 285 1 285 310 1
		 310 309 1 309 283 1 284 283 0 283 303 1 303 302 1 302 284 1 288 287 0 287 305 1 305 304 1
		 304 288 1 289 292 1 292 306 1 306 305 1 305 289 1 291 290 1 290 293 0 293 294 1 294 291 0
		 292 291 1 291 296 1 296 295 1 295 292 1 293 208 0 207 294 0 297 296 1 296 299 0 299 300 1
		 300 297 0 299 210 0 209 300 0 304 306 1 306 319 0 319 320 1 320 304 1 307 308 1 307 311 0
		 311 312 1 312 308 0 310 315 1 315 316 1 316 309 1 311 314 0 314 313 1 313 312 0 314 330 0
		 330 331 1 331 313 0 315 317 1 317 318 1 318 316 1 317 329 1 329 328 1 328 318 1 319 339 0
		 339 341 1 341 320 0 321 322 1 321 365 0 365 367 1 367 322 0 323 325 0 325 340 1 340 339 1
		 339 323 0 324 323 0 323 327 0 327 326 1 326 324 0 325 324 0 324 337 0 337 338 1 338 325 0
		 327 359 0 359 360 1 360 326 0 329 363 1 363 364 0 364 328 1 330 342 0 342 344 1 344 331 0
		 332 334 1 334 338 0 337 332 0 333 332 0 332 336 1 336 335 1 335 333 1 334 333 0 333 344 0
		 344 343 0 343 334 0 336 351 1 351 352 0 352 335 1 341 340 1 340 345 1 345 346 1 346 341 1
		 343 342 0 342 346 1 345 343 1 347 348 1 348 366 0 366 365 0 365 347 0 347 349 1 349 350 1
		 350 348 1 349 371 0 372 371 0 372 350 1 351 354 1 354 353 1 353 352 1 354 368 0 369 368 0
		 369 353 1 355 356 1 356 364 0 363 355 0 355 357 0 357 358 0 358 356 0 357 370 0 370 358 0
		 359 361 0 361 362 1 362 360 0 361 373 0 374 373 0 374 362 0 294 299 1 265 240 1 240 258 1
		 257 263 1 264 237 1 237 268 1 272 278 1 267 273 1 378 295 1 301 378 1;
	setAttr ".ed[664:829]" 301 306 1 277 266 1 238 280 1 281 239 1 284 282 1 376 272 1
		 286 376 1 286 285 1 279 287 1 273 287 1 238 293 1 300 239 1 298 302 1 315 312 1 313 317 1
		 375 286 1 308 375 0 308 310 1 304 246 1 246 307 1 288 307 0 326 247 1 247 337 1 309 241 1
		 241 303 1 377 301 1 322 377 0 322 319 1 241 251 1 251 321 1 303 321 0 331 329 1 320 252 1
		 252 246 1 339 367 0 367 366 0 366 327 1 338 345 1 363 344 1 335 363 1 347 242 0 242 249 1
		 249 349 1 355 352 1 353 357 1 250 245 1 245 360 0 362 250 1 359 348 1 350 361 1 318 241 1
		 328 251 1 242 356 0 358 249 1 250 354 1 351 245 0 247 336 1 314 246 1 252 330 1 245 247 1
		 242 248 1 248 364 0 248 365 0 370 369 0 370 243 0 249 243 1 243 371 0 372 373 0 244 250 1
		 374 244 0 244 368 0 251 248 1 346 252 1 295 298 1 375 288 1 287 376 1 376 375 0 377 303 1
		 302 378 1 378 377 1 243 379 0 379 372 0 370 379 0 244 380 0 380 369 0 374 379 0 379 380 0
		 385 386 1 387 388 1 381 383 0 382 384 0 384 409 1 385 387 1 386 388 1 388 408 1 387 397 1
		 381 392 1 383 407 0 384 389 0 386 390 1 389 410 1 385 391 1 391 390 1 396 415 1 405 389 0
		 406 411 1 405 406 1 393 392 0 392 395 0 395 394 0 394 393 0 395 404 0 404 403 0 403 394 0
		 397 396 0 396 399 0 399 398 0 398 397 0 399 401 0 401 400 0 400 398 0 401 413 0 403 402 0
		 402 412 0 402 404 0 404 407 1 407 406 1 406 402 1 394 414 1 383 395 1 391 400 1 398 385 1
		 407 405 0 408 382 1 409 386 1 408 409 1 410 390 1 409 410 1 411 391 1 412 400 0 411 412 1
		 413 403 0 412 413 0 414 399 1 413 414 1 415 393 1 414 415 1 410 411 1 418 419 1 419 388 1
		 418 387 1 408 435 1 417 435 1 382 417 0 435 436 1 420 436 1 417 420 0 418 422 1 422 421 1
		 419 421 1 432 433 1 432 420 0 436 437 1 433 437 1 392 424 0 424 423 0;
	setAttr ".ed[830:995]" 423 393 0 424 431 0 431 430 0 430 423 0 396 426 0 426 425 0
		 425 397 0 426 428 0 428 427 0 427 425 0 438 439 0 439 430 0 430 429 0 429 438 0 429 431 0
		 431 434 1 434 433 1 433 429 1 440 415 1 423 440 1 381 416 0 416 424 1 437 438 1 425 418 1
		 422 427 1 439 440 1 416 434 0 434 432 0 435 419 1 436 421 1 437 422 1 438 427 0 428 439 0
		 440 426 1 470 468 0 470 443 0 443 452 1 452 453 1 453 468 1 460 462 0 462 474 0 474 473 1
		 473 460 0 461 460 1 460 464 0 464 463 1 463 461 0 462 461 0 461 496 0 496 495 1 495 462 0
		 463 465 1 465 484 0 484 483 1 483 463 0 465 464 0 464 466 1 466 467 1 467 465 1 466 538 1
		 538 537 1 537 467 1 469 468 0 468 472 0 472 471 1 471 469 0 470 469 0 469 510 0 510 509 0
		 509 470 0 472 540 0 540 539 1 539 471 0 474 536 0 536 535 1 535 473 0 475 476 0 476 537 1
		 538 475 0 475 477 0 477 478 0 478 476 0 477 535 1 536 478 0 479 480 0 480 500 1 500 499 0
		 499 479 0 479 481 0 481 482 1 482 480 0 481 541 1 541 542 1 542 482 0 484 485 0 485 486 1
		 486 483 0 485 488 0 488 487 1 487 486 0 488 489 0 489 491 0 491 487 0 490 489 0 489 508 0
		 508 507 0 507 490 0 491 490 0 490 493 0 493 492 1 492 491 1 492 494 1 494 497 0 497 498 1
		 498 492 1 494 493 0 493 503 0 503 502 0 502 494 0 496 544 0 544 543 1 543 495 1 497 543 0
		 544 498 1 499 501 1 501 511 0 511 512 1 512 499 0 501 500 0 500 505 1 505 506 1 506 501 1
		 502 504 1 504 506 1 505 502 0 504 503 1 503 531 1 531 532 1 532 504 1 508 519 0 519 518 1
		 518 507 0 510 533 0 533 534 1 534 509 0 511 554 0 554 553 1 553 512 0 513 515 0 515 562 0
		 562 561 1 561 513 0 514 513 0 513 517 0 517 516 1 516 514 0 515 514 0 514 527 0 527 526 0
		 526 515 0 517 522 0 522 521 1 521 516 0 519 550 0 550 549 1 549 518 0;
	setAttr ".ed[996:1161]" 520 522 1 522 560 1 560 559 1 559 520 1 521 520 1 520 525 0
		 525 524 1 524 521 0 523 525 0 525 558 0 558 557 1 557 523 0 524 523 1 523 530 0 530 529 1
		 529 524 0 526 528 0 528 564 0 564 563 1 563 526 0 528 527 0 527 529 0 530 528 0 531 552 1
		 552 551 1 551 532 1 533 556 0 556 555 1 555 534 0 540 545 0 545 546 0 546 539 0 541 547 0
		 548 547 0 548 542 0 550 557 0 558 549 0 552 559 1 560 551 1 554 561 0 562 553 0 556 563 0
		 564 555 0 498 487 1 453 454 1 454 472 1 473 466 1 459 450 1 450 480 0 482 459 1 479 469 0
		 471 481 1 516 529 1 450 451 1 451 441 1 441 480 1 483 496 1 441 505 1 507 503 0 509 442 0
		 442 443 0 499 510 0 506 444 1 444 511 1 518 531 1 534 445 1 445 442 1 512 533 1 535 538 1
		 454 455 1 455 540 1 539 541 1 542 458 1 458 459 1 451 497 1 494 441 0 532 444 1 508 442 0
		 445 519 1 489 443 0 488 452 1 486 544 1 455 456 1 456 545 0 546 547 0 548 457 0 457 458 1
		 552 549 1 558 559 1 449 446 1 449 551 1 560 446 1 554 449 1 446 561 1 562 563 1 556 553 1
		 448 555 1 564 447 1 447 448 1 550 448 1 447 557 1 517 446 1 530 447 1 448 445 1 444 449 1
		 495 451 1 450 462 0 484 452 1 465 453 1 467 454 1 537 455 1 476 456 0 536 458 1 478 457 0
		 474 459 1 594 592 0 594 567 0 567 576 1 576 577 1 577 592 1 584 586 0 586 598 0 598 597 1
		 597 584 0 585 584 1 584 588 0 588 587 1 587 585 0 586 585 0 585 620 0 620 619 1 619 586 0
		 587 589 1 589 608 0 608 607 1 607 587 0 589 588 0 588 590 1 590 591 1 591 589 1 590 662 1
		 662 661 1 661 591 1 593 592 0 592 596 0 596 595 1 595 593 0 594 593 0 593 634 0 634 633 0
		 633 594 0 596 664 0 664 663 1 663 595 0 598 660 0 660 659 1 659 597 0 599 600 0 600 661 1
		 662 599 0 599 601 0 601 602 0 602 600 0 601 659 1 660 602 0 603 604 0;
	setAttr ".ed[1162:1327]" 604 624 0 624 623 0 623 603 0 603 605 0 605 606 1 606 604 0
		 605 665 1 665 666 1 666 606 0 608 609 0 609 610 1 610 607 0 609 612 0 612 611 1 611 610 0
		 612 613 0 613 615 0 615 611 0 614 613 0 613 632 0 632 631 0 631 614 0 615 614 0 614 617 0
		 617 616 1 616 615 1 616 618 1 618 621 0 621 622 1 622 616 1 618 617 0 617 627 0 627 626 0
		 626 618 0 620 668 0 668 667 1 667 619 1 621 667 0 668 622 1 623 625 1 625 635 0 635 636 1
		 636 623 0 625 624 0 624 629 0 629 630 1 630 625 1 626 628 1 628 630 1 629 626 0 628 627 1
		 627 655 1 655 656 1 656 628 1 632 643 0 643 642 1 642 631 0 634 657 0 657 658 1 658 633 0
		 635 678 0 678 677 1 677 636 0 637 639 0 639 686 0 686 685 1 685 637 0 638 637 0 637 641 0
		 641 640 1 640 638 0 639 638 0 638 651 0 651 650 0 650 639 0 641 646 0 646 645 1 645 640 0
		 643 674 0 674 673 1 673 642 0 644 646 1 646 684 1 684 683 1 683 644 1 645 644 1 644 649 0
		 649 648 1 648 645 0 647 649 0 649 682 0 682 681 1 681 647 0 648 647 1 647 654 0 654 653 1
		 653 648 0 650 652 0 652 688 0 688 687 1 687 650 0 652 651 0 651 653 0 654 652 0 655 676 1
		 676 675 1 675 656 1 657 680 0 680 679 1 679 658 0 664 669 0 669 670 0 670 663 0 665 671 0
		 672 671 0 672 666 0 674 681 0 682 673 0 676 683 1 684 675 1 678 685 0 686 677 0 680 687 0
		 688 679 0 622 611 1 577 578 1 578 596 1 597 590 1 583 574 1 574 604 0 606 583 1 603 593 0
		 595 605 1 640 653 1 574 575 1 575 565 1 565 604 0 607 620 1 565 629 0 631 627 0 633 566 0
		 566 567 0 623 634 0 630 568 1 568 635 1 642 655 1 658 569 1 569 566 1 636 657 1 659 662 1
		 578 579 1 579 664 1 663 665 1 666 582 1 582 583 1 575 621 1 618 565 0 656 568 1 632 566 0
		 569 643 1 613 567 0 612 576 1 610 668 1 579 580 1 580 669 0 670 671 0;
	setAttr ".ed[1328:1493]" 672 581 0 581 582 1 676 673 1 682 683 1 573 570 1 573 675 1
		 684 570 1 678 573 1 570 685 1 686 687 1 680 677 1 572 679 1 688 571 1 571 572 1 674 572 1
		 571 681 1 641 570 1 654 571 1 572 569 1 568 573 1 619 575 1 574 586 0 608 576 1 589 577 1
		 591 578 1 661 579 1 600 580 0 660 582 1 602 581 0 598 583 1 690 691 0 691 700 1 692 697 1
		 693 690 1 695 696 1 696 693 1 697 694 1 699 689 1 698 699 1 701 716 1 700 701 1 701 702 1
		 702 703 1 704 793 0 703 704 1 705 706 1 706 707 1 707 698 1 718 691 0 718 716 0 794 795 0
		 793 794 0 796 705 0 796 795 0 708 710 0 710 722 0 722 721 1 721 708 0 709 708 1 708 712 0
		 712 711 1 711 709 0 710 709 0 709 744 0 744 743 1 743 710 0 711 713 1 713 732 0 732 731 1
		 731 711 0 713 712 0 712 714 1 714 715 1 715 713 1 714 786 1 786 785 1 785 715 1 717 716 0
		 716 720 0 720 719 1 719 717 0 718 717 0 717 758 0 758 757 0 757 718 0 720 788 0 788 787 1
		 787 719 0 722 784 0 784 783 1 783 721 0 723 724 0 724 785 1 786 723 0 723 725 0 725 726 0
		 726 724 0 725 783 1 784 726 0 727 728 0 728 748 1 748 747 0 747 727 0 727 729 0 729 730 1
		 730 728 0 729 789 1 789 790 1 790 730 0 732 733 0 733 734 1 734 731 0 733 736 0 736 735 1
		 735 734 0 736 737 0 737 739 0 739 735 0 738 737 0 737 756 0 756 755 0 755 738 0 739 738 0
		 738 741 0 741 740 1 740 739 1 740 742 1 742 745 0 745 746 1 746 740 1 742 741 0 741 751 0
		 751 750 0 750 742 0 744 792 0 792 791 1 791 743 1 745 791 0 792 746 1 747 749 1 749 759 0
		 759 760 1 760 747 0 749 748 0 748 753 1 753 754 1 754 749 1 750 752 1 752 754 1 753 750 0
		 752 751 1 751 779 1 779 780 1 780 752 1 756 767 0 767 766 1 766 755 0 758 781 0 781 782 1
		 782 757 0 759 802 0 802 801 1 801 760 0 761 763 0 763 810 0 810 809 1;
	setAttr ".ed[1494:1659]" 809 761 0 762 761 0 761 765 0 765 764 1 764 762 0 763 762 0
		 762 775 0 775 774 0 774 763 0 765 770 0 770 769 1 769 764 0 767 798 0 798 797 1 797 766 0
		 768 770 1 770 808 1 808 807 1 807 768 1 769 768 1 768 773 0 773 772 1 772 769 0 771 773 0
		 773 806 0 806 805 1 805 771 0 772 771 1 771 778 0 778 777 1 777 772 0 774 776 0 776 812 0
		 812 811 1 811 774 0 776 775 0 775 777 0 778 776 0 779 800 1 800 799 1 799 780 1 781 804 0
		 804 803 1 803 782 0 788 793 0 794 787 0 789 795 0 796 790 0 798 805 0 806 797 0 800 807 1
		 808 799 1 802 809 0 810 801 0 804 811 0 812 803 0 746 735 1 702 720 1 721 714 1 698 728 0
		 730 707 1 727 717 0 719 729 1 764 777 1 689 728 1 731 744 1 689 753 1 755 751 0 757 690 0
		 747 758 0 754 692 1 692 759 1 766 779 1 782 693 1 760 781 1 783 786 1 703 788 1 787 789 1
		 790 706 1 699 745 1 742 689 0 780 692 1 756 690 0 693 767 1 737 691 0 736 700 1 734 792 1
		 800 797 1 806 807 1 697 799 1 808 694 1 802 697 1 694 809 1 810 811 1 804 801 1 696 803 1
		 812 695 1 798 696 1 695 805 1 765 694 1 778 695 1 743 699 1 698 710 0 732 700 1 713 701 1
		 715 702 1 785 703 1 724 704 0 726 705 0 784 706 1 722 707 1 813 825 0 814 822 1 815 827 1
		 816 821 1 817 814 0 818 815 1 817 823 0 819 816 0 818 828 1 820 838 1 821 813 1 822 815 1
		 821 826 1 823 818 0 822 823 1 824 839 1 825 814 0 826 822 1 825 826 1 827 816 1 826 827 1
		 828 819 1 827 828 1 829 824 1 830 820 0 831 845 0 831 819 0 831 877 0 828 876 1 830 870 0
		 844 824 1 832 833 0 833 837 0 837 836 0 836 832 0 832 834 1 834 835 1 835 833 0 834 839 1
		 839 838 1 838 835 0 837 841 0 841 840 0 840 836 0 841 842 0 842 843 1 843 840 1 842 845 0
		 845 844 1 844 843 1 829 834 1 836 829 1 833 869 0 835 830 1 843 829 1;
	setAttr ".ed[1660:1825]" 852 853 1 853 850 1 846 850 1 852 846 0 848 851 0 848 846 0
		 850 851 1 849 855 1 849 847 1 847 854 1 854 855 1 853 854 1 850 847 1 851 849 0 821 853 1
		 813 852 0 854 816 1 855 819 1 855 887 1 831 886 0 858 859 0 859 863 0 863 862 0 862 858 0
		 858 860 1 860 861 1 861 859 0 860 839 1 838 861 0 863 865 0 865 864 0 864 862 0 865 866 0
		 866 867 1 867 864 1 866 845 0 844 867 1 856 860 1 862 856 1 859 879 0 861 857 1 857 878 0
		 867 856 1 856 824 1 857 820 0 868 817 0 869 870 0 875 842 1 875 877 0 876 877 1 880 848 0
		 878 879 0 885 866 1 886 885 0 886 887 1 869 868 0 868 871 1 871 872 1 872 869 1 871 873 1
		 873 874 0 874 872 1 873 876 1 876 875 0 875 874 1 880 879 0 879 882 1 882 881 1 881 880 1
		 882 884 1 884 883 0 883 881 1 884 885 1 885 887 0 887 883 1 823 871 1 873 818 0 872 837 1
		 841 874 0 881 851 1 849 883 0 863 882 1 884 865 0 870 868 0 880 878 0 892 893 0 892 918 0
		 918 919 0 893 919 0 890 891 0 890 907 0 907 904 0 891 904 0 900 916 1 916 938 1 938 939 1
		 900 939 0 902 903 0 903 936 0 936 937 0 902 937 0 891 925 0 904 924 1 924 925 1 917 897 1
		 917 944 1 944 945 1 897 945 0 897 898 0 945 946 0 898 946 0 898 920 1 946 947 1 947 920 1
		 899 896 0 899 942 0 942 943 0 896 943 0 900 901 0 939 940 0 901 940 0 889 888 0 889 905 0
		 905 906 0 888 906 0 890 926 0 926 927 1 927 907 1 901 921 1 940 941 1 941 921 1 904 908 0
		 908 923 1 923 924 1 905 909 0 909 910 0 906 910 0 927 928 1 928 911 1 907 911 0 911 908 0
		 908 930 0 930 931 1 931 923 1 909 932 0 932 933 0 910 933 0 928 934 1 934 935 1 911 935 0
		 935 930 0 912 922 1 912 901 0 921 922 1 913 914 0 913 903 0 914 902 0 929 915 1 929 916 1
		 915 900 0 915 912 0 916 902 1 937 938 1 896 917 1 943 944 1 918 894 0;
	setAttr ".ed[1826:1991]" 895 894 0 919 895 0 920 899 1 947 942 1 921 903 1 941 936 1
		 922 913 1 923 909 1 931 932 1 924 905 1 925 889 0 926 888 0 906 927 1 910 928 1 933 934 1
		 914 929 1 930 912 0 922 931 1 932 913 0 933 914 0 934 929 1 935 915 0 936 899 0 937 896 0
		 938 917 1 939 897 0 940 898 0 920 941 1 942 895 0 943 894 0 944 918 1 945 892 0 946 893 0
		 919 947 1 949 950 0 950 959 1 951 956 1 952 949 1 954 955 1 955 952 1 956 953 1 958 948 1
		 957 958 1 960 975 1 959 960 1 960 961 1 961 962 1 963 1052 0 962 963 1 964 965 1
		 965 966 1 966 957 1 977 950 0 977 975 0 1053 1054 0 1052 1053 0 1055 964 0 1055 1054 0
		 967 969 0 969 981 0 981 980 1 980 967 0 968 967 1 967 971 0 971 970 1 970 968 0 969 968 0
		 968 1003 0 1003 1002 1 1002 969 0 970 972 1 972 991 0 991 990 1 990 970 0 972 971 0
		 971 973 1 973 974 1 974 972 1 973 1045 1 1045 1044 1 1044 974 1 976 975 0 975 979 0
		 979 978 1 978 976 0 977 976 0 976 1017 0 1017 1016 0 1016 977 0 979 1047 0 1047 1046 1
		 1046 978 0 981 1043 0 1043 1042 1 1042 980 0 982 983 0 983 1044 1 1045 982 0 982 984 0
		 984 985 0 985 983 0 984 1042 1 1043 985 0 986 987 0 987 1007 0 1007 1006 0 1006 986 0
		 986 988 0 988 989 1 989 987 0 988 1048 1 1048 1049 1 1049 989 0 991 992 0 992 993 1
		 993 990 0 992 995 0 995 994 1 994 993 0 995 996 0 996 998 0 998 994 0 997 996 0 996 1015 0
		 1015 1014 0 1014 997 0 998 997 0 997 1000 0 1000 999 1 999 998 1 999 1001 1 1001 1004 0
		 1004 1005 1 1005 999 1 1001 1000 0 1000 1010 0 1010 1009 0 1009 1001 0 1003 1051 0
		 1051 1050 1 1050 1002 1 1004 1050 0 1051 1005 1 1006 1008 1 1008 1018 0 1018 1019 1
		 1019 1006 0 1008 1007 0 1007 1012 0 1012 1013 1 1013 1008 1 1009 1011 1 1011 1013 1
		 1012 1009 0 1011 1010 1 1010 1038 1 1038 1039 1 1039 1011 1 1015 1026 0 1026 1025 1
		 1025 1014 0 1017 1040 0 1040 1041 1 1041 1016 0 1018 1061 0 1061 1060 1;
	setAttr ".ed[1992:2157]" 1060 1019 0 1020 1022 0 1022 1069 0 1069 1068 1 1068 1020 0
		 1021 1020 0 1020 1024 0 1024 1023 1 1023 1021 0 1022 1021 0 1021 1034 0 1034 1033 0
		 1033 1022 0 1024 1029 0 1029 1028 1 1028 1023 0 1026 1057 0 1057 1056 1 1056 1025 0
		 1027 1029 1 1029 1067 1 1067 1066 1 1066 1027 1 1028 1027 1 1027 1032 0 1032 1031 1
		 1031 1028 0 1030 1032 0 1032 1065 0 1065 1064 1 1064 1030 0 1031 1030 1 1030 1037 0
		 1037 1036 1 1036 1031 0 1033 1035 0 1035 1071 0 1071 1070 1 1070 1033 0 1035 1034 0
		 1034 1036 0 1037 1035 0 1038 1059 1 1059 1058 1 1058 1039 1 1040 1063 0 1063 1062 1
		 1062 1041 0 1047 1052 0 1053 1046 0 1048 1054 0 1055 1049 0 1057 1064 0 1065 1056 0
		 1059 1066 1 1067 1058 1 1061 1068 0 1069 1060 0 1063 1070 0 1071 1062 0 1005 994 1
		 961 979 1 980 973 1 957 987 0 989 966 1 986 976 0 978 988 1 1023 1036 1 948 987 0
		 990 1003 1 948 1012 0 1014 1010 0 1016 949 0 1006 1017 0 1013 951 1 951 1018 1 1025 1038 1
		 1041 952 1 1019 1040 1 1042 1045 1 962 1047 1 1046 1048 1 1049 965 1 958 1004 1 1001 948 0
		 1039 951 1 1015 949 0 952 1026 1 996 950 0 995 959 1 993 1051 1 1059 1056 1 1065 1066 1
		 956 1058 1 1067 953 1 1061 956 1 953 1068 1 1069 1070 1 1063 1060 1 955 1062 1 1071 954 1
		 1057 955 1 954 1064 1 1024 953 1 1037 954 1 1002 958 1 957 969 0 991 959 1 972 960 1
		 974 961 1 1044 962 1 983 963 0 985 964 0 1043 965 1 981 966 1 1073 1072 0 1074 1110 0
		 1075 1109 0 1074 1075 0 1074 1091 0 1075 1088 0 1076 1077 0 1072 1090 0 1076 1102 0
		 1073 1089 0 1079 1078 0 1077 1103 0 1080 1127 0 1081 1129 0 1080 1101 1 1082 1130 0
		 1081 1082 0 1083 1126 0 1082 1104 1 1083 1080 0 1084 1123 0 1085 1124 0 1084 1085 0
		 1086 1121 0 1087 1120 0 1086 1087 0 1084 1100 1 1085 1105 1 1088 1092 0 1089 1093 0
		 1088 1108 1 1090 1094 0 1089 1090 0 1091 1095 0 1090 1111 1 1091 1088 0 1092 1114 0
		 1093 1116 0 1092 1107 1 1094 1117 0 1093 1094 0 1095 1119 0 1094 1112 1 1095 1092 0
		 1096 1085 0 1097 1087 0 1096 1106 1 1098 1086 0 1097 1098 0 1099 1084 0 1098 1113 1;
	setAttr ".ed[2158:2323]" 1099 1096 0 1100 1086 1 1101 1081 1 1100 1122 1 1102 1078 0
		 1101 1128 1 1103 1079 0 1102 1103 0 1104 1083 1 1103 1131 1 1105 1087 1 1104 1125 1
		 1106 1097 1 1105 1106 1 1107 1093 1 1106 1115 1 1108 1089 1 1107 1108 1 1109 1073 0
		 1108 1109 1 1110 1072 0 1111 1091 1 1110 1111 1 1112 1095 1 1111 1112 1 1113 1099 1
		 1112 1118 1 1113 1100 1 1114 1096 0 1115 1107 1 1114 1115 1 1116 1097 0 1115 1116 1
		 1117 1098 0 1116 1117 0 1118 1113 1 1117 1118 1 1119 1099 0 1118 1119 1 1119 1114 0
		 1120 1083 0 1121 1080 0 1120 1121 0 1122 1101 1 1121 1122 1 1123 1081 0 1122 1123 1
		 1124 1082 0 1123 1124 0 1125 1105 1 1124 1125 1 1125 1120 1 1126 1079 0 1127 1078 0
		 1126 1127 0 1128 1102 1 1127 1128 1 1129 1076 0 1128 1129 1 1130 1077 0 1129 1130 0
		 1131 1104 1 1130 1131 1 1131 1126 1 1132 1133 1 1132 1167 1 1133 1164 1 1134 1146 1
		 1134 1138 1 1135 1136 1 1137 1151 1 1138 1135 1 1139 1133 1 1140 1132 1 1139 1140 1
		 1141 1137 1 1142 1143 1 1143 1147 1 1145 1144 1 1145 1155 1 1155 1154 1 1154 1144 1
		 1147 1146 1 1146 1148 1 1148 1149 1 1149 1147 1 1148 1154 1 1155 1149 1 1152 1153 0
		 1153 1184 0 1151 1150 0 1150 1153 0 1152 1151 0 1144 1136 1 1148 1138 1 1135 1154 1
		 1141 1152 1 1142 1145 1 1142 1149 1 1165 1134 1 1166 1137 1 1157 1156 1 1156 1180 1
		 1157 1159 1 1159 1158 1 1158 1156 1 1159 1160 1 1160 1161 1 1161 1158 1 1160 1165 1
		 1165 1164 1 1164 1161 1 1162 1163 0 1162 1167 0 1167 1166 0 1166 1163 0 1156 1139 1
		 1140 1178 1 1140 1162 1 1161 1139 1 1138 1160 1 1159 1135 1 1157 1136 1 1163 1141 1
		 1170 1143 1 1171 1150 1 1179 1189 1 1180 1178 0 1178 1179 0 1168 1169 0 1169 1174 0
		 1174 1175 0 1175 1168 0 1168 1171 0 1171 1170 0 1170 1169 0 1172 1173 0 1173 1177 0
		 1177 1176 0 1176 1172 0 1172 1175 0 1174 1173 0 1177 1181 0 1181 1182 0 1182 1176 0
		 1180 1179 0 1179 1182 0 1181 1180 0 1142 1169 1 1174 1145 1 1144 1173 1 1136 1177 1
		 1153 1168 1 1181 1157 1 1183 1175 1 1183 1184 0 1190 1162 0 1190 1189 0 1183 1186 0
		 1186 1185 0 1185 1184 0 1186 1188 0 1188 1187 0 1187 1185 0 1188 1192 0 1192 1191 0;
	setAttr ".ed[2324:2489]" 1191 1187 0 1190 1191 0 1192 1189 0 1185 1152 0 1187 1141 1
		 1163 1191 0 1172 1186 1 1176 1188 1 1192 1182 1 1196 1197 1 1196 1133 1 1197 1132 1
		 1201 1200 1 1201 1207 1 1207 1206 1 1206 1200 1 1146 1202 1 1202 1203 1 1203 1147 1
		 1202 1206 1 1207 1203 1 1150 1205 0 1204 1205 0 1204 1151 0 1202 1195 1 1195 1193 1
		 1193 1206 1 1200 1194 1 1193 1194 1 1134 1195 1 1198 1204 1 1198 1137 1 1199 1201 1
		 1199 1203 1 1199 1143 1 1209 1208 1 1209 1211 1 1211 1210 1 1210 1208 1 1211 1212 1
		 1212 1213 1 1213 1210 1 1212 1165 1 1164 1213 1 1214 1215 0 1214 1167 0 1166 1215 0
		 1208 1196 1 1213 1196 1 1195 1212 1 1211 1193 1 1209 1194 1 1197 1214 1 1215 1198 1
		 1226 1224 0 1208 1226 1 1197 1224 1 1224 1225 0 1236 1214 0 1236 1235 0 1225 1235 1
		 1216 1217 0 1217 1220 0 1220 1221 0 1221 1216 0 1216 1171 0 1170 1217 0 1218 1219 0
		 1219 1223 0 1223 1222 0 1222 1218 0 1218 1221 0 1220 1219 0 1223 1227 0 1227 1228 0
		 1228 1222 0 1226 1225 0 1225 1228 0 1227 1226 0 1199 1217 1 1220 1201 1 1200 1219 1
		 1194 1223 1 1229 1221 1 1229 1230 0 1205 1230 0 1205 1216 1 1227 1209 1 1229 1232 0
		 1232 1231 0 1231 1230 0 1232 1234 0 1234 1233 0 1233 1231 0 1234 1238 0 1238 1237 0
		 1237 1233 0 1236 1237 0 1238 1235 0 1231 1204 0 1233 1198 1 1215 1237 0 1218 1232 1
		 1222 1234 1 1238 1228 1 1240 1239 0 1241 1277 0 1242 1276 0 1241 1242 0 1241 1258 0
		 1242 1255 0 1243 1244 0 1239 1257 0 1243 1269 0 1240 1256 0 1246 1245 0 1244 1270 0
		 1247 1294 0 1248 1296 0 1247 1268 1 1249 1297 0 1248 1249 0 1250 1293 0 1249 1271 1
		 1250 1247 0 1251 1290 0 1252 1291 0 1251 1252 0 1253 1288 0 1254 1287 0 1253 1254 0
		 1251 1267 1 1252 1272 1 1255 1259 0 1256 1260 0 1255 1275 1 1257 1261 0 1256 1257 0
		 1258 1262 0 1257 1278 1 1258 1255 0 1259 1281 0 1260 1283 0 1259 1274 1 1261 1284 0
		 1260 1261 0 1262 1286 0 1261 1279 1 1262 1259 0 1263 1252 0 1264 1254 0 1263 1273 1
		 1265 1253 0 1264 1265 0 1266 1251 0 1265 1280 1 1266 1263 0 1267 1253 1 1268 1248 1
		 1267 1289 1 1269 1245 0 1268 1295 1 1270 1246 0 1269 1270 0 1271 1250 1 1270 1298 1;
	setAttr ".ed[2490:2655]" 1272 1254 1 1271 1292 1 1273 1264 1 1272 1273 1 1274 1260 1
		 1273 1282 1 1275 1256 1 1274 1275 1 1276 1240 0 1275 1276 1 1277 1239 0 1278 1258 1
		 1277 1278 1 1279 1262 1 1278 1279 1 1280 1266 1 1279 1285 1 1280 1267 1 1281 1263 0
		 1282 1274 1 1281 1282 1 1283 1264 0 1282 1283 1 1284 1265 0 1283 1284 0 1285 1280 1
		 1284 1285 1 1286 1266 0 1285 1286 1 1286 1281 0 1287 1250 0 1288 1247 0 1287 1288 0
		 1289 1268 1 1288 1289 1 1290 1248 0 1289 1290 1 1291 1249 0 1290 1291 0 1292 1272 1
		 1291 1292 1 1292 1287 1 1293 1246 0 1294 1245 0 1293 1294 0 1295 1269 1 1294 1295 1
		 1296 1243 0 1295 1296 1 1297 1244 0 1296 1297 0 1298 1271 1 1297 1298 1 1298 1293 1
		 1328 1326 0 1328 1301 0 1301 1310 1 1310 1311 1 1311 1326 1 1318 1320 0 1320 1332 0
		 1332 1331 1 1331 1318 0 1319 1318 1 1318 1322 0 1322 1321 1 1321 1319 0 1320 1319 0
		 1319 1354 0 1354 1353 1 1353 1320 0 1321 1323 1 1323 1342 0 1342 1341 1 1341 1321 0
		 1323 1322 0 1322 1324 1 1324 1325 1 1325 1323 1 1324 1396 1 1396 1395 1 1395 1325 1
		 1327 1326 0 1326 1330 0 1330 1329 1 1329 1327 0 1328 1327 0 1327 1368 0 1368 1367 0
		 1367 1328 0 1330 1398 0 1398 1397 1 1397 1329 0 1332 1394 0 1394 1393 1 1393 1331 0
		 1333 1334 0 1334 1395 1 1396 1333 0 1333 1335 0 1335 1336 0 1336 1334 0 1335 1393 1
		 1394 1336 0 1337 1338 0 1338 1358 0 1358 1357 0 1357 1337 0 1337 1339 0 1339 1340 1
		 1340 1338 0 1339 1399 1 1399 1400 1 1400 1340 0 1342 1343 0 1343 1344 1 1344 1341 0
		 1343 1346 0 1346 1345 1 1345 1344 0 1346 1347 0 1347 1349 0 1349 1345 0 1348 1347 0
		 1347 1366 0 1366 1365 0 1365 1348 0 1349 1348 0 1348 1351 0 1351 1350 1 1350 1349 1
		 1350 1352 1 1352 1355 0 1355 1356 1 1356 1350 1 1352 1351 0 1351 1361 0 1361 1360 0
		 1360 1352 0 1354 1402 0 1402 1401 1 1401 1353 1 1355 1401 0 1402 1356 1 1357 1359 1
		 1359 1369 0 1369 1370 1 1370 1357 0 1359 1358 0 1358 1363 0 1363 1364 1 1364 1359 1
		 1360 1362 1 1362 1364 1 1363 1360 0 1362 1361 1 1361 1389 1 1389 1390 1 1390 1362 1
		 1366 1377 0 1377 1376 1 1376 1365 0 1368 1391 0 1391 1392 1 1392 1367 0 1369 1412 0;
	setAttr ".ed[2656:2821]" 1412 1411 1 1411 1370 0 1371 1373 0 1373 1420 0 1420 1419 1
		 1419 1371 0 1372 1371 0 1371 1375 0 1375 1374 1 1374 1372 0 1373 1372 0 1372 1385 0
		 1385 1384 0 1384 1373 0 1375 1380 0 1380 1379 1 1379 1374 0 1377 1408 0 1408 1407 1
		 1407 1376 0 1378 1380 1 1380 1418 1 1418 1417 1 1417 1378 1 1379 1378 1 1378 1383 0
		 1383 1382 1 1382 1379 0 1381 1383 0 1383 1416 0 1416 1415 1 1415 1381 0 1382 1381 1
		 1381 1388 0 1388 1387 1 1387 1382 0 1384 1386 0 1386 1422 0 1422 1421 1 1421 1384 0
		 1386 1385 0 1385 1387 0 1388 1386 0 1389 1410 1 1410 1409 1 1409 1390 1 1391 1414 0
		 1414 1413 1 1413 1392 0 1398 1403 0 1403 1404 0 1404 1397 0 1399 1405 0 1406 1405 0
		 1406 1400 0 1408 1415 0 1416 1407 0 1410 1417 1 1418 1409 1 1412 1419 0 1420 1411 0
		 1414 1421 0 1422 1413 0 1356 1345 1 1311 1312 1 1312 1330 1 1331 1324 1 1317 1308 1
		 1308 1338 0 1340 1317 1 1337 1327 0 1329 1339 1 1374 1387 1 1308 1309 1 1309 1299 1
		 1299 1338 0 1341 1354 1 1299 1363 0 1365 1361 0 1367 1300 0 1300 1301 0 1357 1368 0
		 1364 1302 1 1302 1369 1 1376 1389 1 1392 1303 1 1303 1300 1 1370 1391 1 1393 1396 1
		 1312 1313 1 1313 1398 1 1397 1399 1 1400 1316 1 1316 1317 1 1309 1355 1 1352 1299 0
		 1390 1302 1 1366 1300 0 1303 1377 1 1347 1301 0 1346 1310 1 1344 1402 1 1313 1314 1
		 1314 1403 0 1404 1405 0 1406 1315 0 1315 1316 1 1410 1407 1 1416 1417 1 1307 1304 1
		 1307 1409 1 1418 1304 1 1412 1307 1 1304 1419 1 1420 1421 1 1414 1411 1 1306 1413 1
		 1422 1305 1 1305 1306 1 1408 1306 1 1305 1415 1 1375 1304 1 1388 1305 1 1306 1303 1
		 1302 1307 1 1353 1309 1 1308 1320 0 1342 1310 1 1323 1311 1 1325 1312 1 1395 1313 1
		 1334 1314 0 1394 1316 1 1336 1315 0 1332 1317 1 1427 1428 0 1427 1453 0 1453 1454 0
		 1428 1454 0 1425 1426 0 1425 1442 0 1442 1439 0 1426 1439 0 1435 1451 1 1451 1473 1
		 1473 1474 1 1435 1474 0 1437 1438 0 1438 1471 0 1471 1472 0 1437 1472 0 1426 1460 0
		 1439 1459 1 1459 1460 1 1452 1432 1 1452 1479 1 1479 1480 1 1432 1480 0 1432 1433 0
		 1480 1481 0 1433 1481 0 1433 1455 1 1481 1482 1 1482 1455 1 1434 1431 0 1434 1477 0;
	setAttr ".ed[2822:2987]" 1477 1478 0 1431 1478 0 1435 1436 0 1474 1475 0 1436 1475 0
		 1424 1423 0 1424 1440 0 1440 1441 0 1423 1441 0 1425 1461 0 1461 1462 1 1462 1442 1
		 1436 1456 1 1475 1476 1 1476 1456 1 1439 1443 0 1443 1458 1 1458 1459 1 1440 1444 0
		 1444 1445 0 1441 1445 0 1462 1463 1 1463 1446 1 1442 1446 0 1446 1443 0 1443 1465 0
		 1465 1466 1 1466 1458 1 1444 1467 0 1467 1468 0 1445 1468 0 1463 1469 1 1469 1470 1
		 1446 1470 0 1470 1465 0 1447 1457 1 1447 1436 0 1456 1457 1 1448 1449 0 1448 1438 0
		 1449 1437 0 1464 1450 1 1464 1451 1 1450 1435 0 1450 1447 0 1451 1437 1 1472 1473 1
		 1431 1452 1 1478 1479 1 1453 1429 0 1430 1429 0 1454 1430 0 1455 1434 1 1482 1477 1
		 1456 1438 1 1476 1471 1 1457 1448 1 1458 1444 1 1466 1467 1 1459 1440 1 1460 1424 0
		 1461 1423 0 1441 1462 1 1445 1463 1 1468 1469 1 1449 1464 1 1465 1447 0 1457 1466 1
		 1467 1448 0 1468 1449 0 1469 1464 1 1470 1450 0 1471 1434 0 1472 1431 0 1473 1452 1
		 1474 1432 0 1475 1433 0 1455 1476 1 1477 1430 0 1478 1429 0 1479 1453 1 1480 1427 0
		 1481 1428 0 1454 1482 1 1483 1510 1 1483 1486 1 1484 1503 1 1485 1484 1 1485 1512 1
		 1486 1502 1 1486 1509 1 1487 1521 1 1488 1494 1 1487 1488 1 1489 1495 1 1488 1489 1
		 1490 1496 1 1490 1515 1 1492 1527 1 1491 1492 1 1493 1487 1 1493 1494 1 1494 1495 1
		 1496 1514 1 1497 1491 1 1498 1492 1 1497 1498 1 1499 1485 1 1500 1497 1 1501 1491 1
		 1499 1513 1 1500 1501 1 1495 1506 1 1489 1507 1 1503 1551 1 1504 1485 1 1503 1504 1
		 1505 1499 1 1504 1505 1 1506 1496 1 1507 1490 1 1506 1507 1 1508 1502 1 1508 1509 1
		 1510 1522 1 1509 1510 1 1511 1484 1 1511 1512 1 1512 1513 1 1514 1515 1 1516 1502 1
		 1517 1486 1 1516 1517 0 1518 1483 1 1517 1518 0 1520 1519 1 1520 1530 1 1530 1531 1
		 1531 1519 1 1522 1521 1 1521 1523 1 1523 1524 1 1524 1522 1 1523 1537 1 1537 1536 1
		 1536 1524 1 1534 1535 0 1535 1525 0 1527 1526 0 1526 1528 0 1528 1529 0 1529 1527 0
		 1528 1535 0 1534 1529 0 1530 1533 1 1533 1532 1 1532 1531 1 1533 1536 1 1537 1532 1
		 1502 1530 1 1520 1516 0 1531 1490 1 1515 1519 1 1523 1488 1 1489 1537 1 1501 1534 1;
	setAttr ".ed[2988:3153]" 1509 1524 1 1536 1508 1 1507 1532 1 1529 1491 1 1533 1508 1
		 1552 1493 1 1553 1498 1 1539 1538 1 1544 1621 0 1539 1547 1 1547 1548 1 1548 1538 1
		 1540 1541 1 1541 1549 1 1549 1550 1 1550 1540 1 1540 1543 1 1543 1542 1 1542 1541 1
		 1543 1552 1 1552 1551 1 1551 1542 1 1544 1545 0 1545 1546 0 1546 1622 0 1545 1555 0
		 1555 1556 0 1556 1546 0 1547 1550 1 1549 1548 1 1554 1553 0 1553 1556 0 1555 1554 0
		 1548 1499 1 1513 1538 1 1541 1505 1 1505 1549 1 1504 1542 1 1543 1494 1 1540 1495 1
		 1550 1506 1 1496 1547 1 1539 1514 1 1546 1500 1 1497 1556 1 1557 1577 1 1557 1484 1
		 1511 1577 1 1483 1558 1 1582 1558 1 1582 1518 0 1493 1563 1 1559 1563 1 1487 1559 1
		 1559 1560 1 1563 1564 1 1560 1564 1 1564 1573 1 1573 1574 1 1560 1574 1 1561 1580 1
		 1561 1565 1 1565 1579 1 1579 1580 1 1568 1569 1 1562 1492 1 1566 1562 1 1566 1498 1
		 1567 1578 1 1567 1557 1 1577 1578 1 1569 1562 1 1568 1566 1 1558 1570 1 1581 1570 1
		 1581 1582 0 1571 1557 1 1503 1571 1 1572 1567 1 1571 1572 1 1574 1561 1 1573 1565 1
		 1558 1576 1 1575 1576 1 1575 1570 1 1576 1510 1 1584 1583 1 1584 1590 1 1590 1591 1
		 1591 1583 1 1521 1585 1 1585 1586 1 1586 1522 1 1585 1597 1 1597 1596 1 1596 1586 1
		 1594 1595 0 1595 1587 0 1526 1588 0 1588 1589 0 1589 1527 0 1588 1595 0 1594 1589 0
		 1590 1593 1 1593 1592 1 1592 1591 1 1593 1596 1 1597 1592 1 1570 1590 1 1584 1581 0
		 1591 1561 1 1580 1583 1 1585 1559 1 1560 1597 1 1569 1594 1 1576 1586 1 1596 1575 1
		 1574 1592 1 1589 1562 1 1593 1575 1 1599 1598 1 1604 1631 0 1599 1607 1 1607 1608 1
		 1608 1598 1 1600 1601 1 1601 1609 1 1609 1610 1 1610 1600 1 1600 1603 1 1603 1602 1
		 1602 1601 1 1603 1552 1 1551 1602 1 1604 1605 0 1605 1606 0 1606 1630 0 1605 1611 0
		 1611 1612 0 1612 1606 0 1607 1610 1 1609 1608 1 1553 1612 0 1611 1554 0 1608 1567 1
		 1578 1598 1 1601 1572 1 1572 1609 1 1571 1602 1 1603 1563 1 1600 1564 1 1610 1573 1
		 1565 1607 1 1599 1579 1 1606 1568 1 1566 1612 1 1617 1534 0 1618 1525 0 1618 1617 0
		 1619 1618 0 1621 1620 0 1621 1622 0 1628 1587 0 1629 1594 0 1628 1627 0 1629 1628 0;
	setAttr ".ed[3154:3319]" 1630 1631 0 1632 1631 0 1613 1614 0 1614 1617 0 1617 1619 0
		 1619 1613 0 1613 1616 0 1616 1615 0 1615 1614 0 1616 1620 0 1620 1622 0 1622 1615 0
		 1623 1624 0 1624 1627 0 1627 1629 0 1629 1623 0 1623 1626 0 1626 1625 0 1625 1624 0
		 1626 1630 0 1630 1632 0 1632 1625 0 1501 1614 1 1615 1500 1 1568 1626 1 1623 1569 1
		 1633 1634 1 1634 1666 1 1666 1665 1 1665 1633 1 1633 1635 1 1635 1636 1 1636 1634 1
		 1635 1642 1 1642 1641 1 1641 1636 1 1637 1638 1 1638 1661 1 1661 1662 1 1662 1637 1
		 1637 1640 1 1640 1639 1 1639 1638 1 1640 1648 1 1648 1647 1 1647 1639 1 1642 1651 1
		 1651 1652 0 1652 1641 1 1643 1644 1 1644 1649 1 1649 1650 0 1650 1643 1 1643 1645 1
		 1645 1646 1 1646 1644 1 1645 1655 1 1655 1656 0 1656 1646 1 1648 1653 1 1653 1654 0
		 1654 1647 1 1649 1652 1 1651 1650 1 1653 1656 1 1655 1654 1 1657 1658 1 1658 1660 1
		 1660 1659 1 1659 1657 1 1657 1669 1 1669 1670 0 1670 1658 1 1660 1676 1 1676 1675 0
		 1675 1659 1 1661 1663 1 1663 1664 1 1664 1662 1 1663 1673 1 1673 1674 0 1674 1664 1
		 1666 1668 1 1668 1667 1 1667 1665 1 1668 1671 1 1671 1672 0 1672 1667 1 1669 1672 1
		 1671 1670 1 1673 1675 1 1676 1674 1 1639 1512 1 1511 1638 1 1647 1513 1 1643 1515 1
		 1514 1645 1 1635 1517 1 1516 1642 1 1633 1518 1 1651 1520 0 1519 1650 0 1649 1619 0
		 1525 1652 0 1535 1641 1 1636 1528 1 1526 1634 1 1655 1539 0 1538 1654 0 1653 1544 0
		 1620 1656 0 1648 1545 1 1555 1640 1 1637 1554 1 1577 1661 1 1578 1663 1 1659 1579 1
		 1580 1657 1 1667 1581 1 1582 1665 1 1669 1583 0 1584 1672 0 1671 1587 0 1627 1670 0
		 1668 1595 1 1588 1666 1 1673 1598 0 1599 1675 0 1676 1632 0 1604 1674 0 1605 1664 1
		 1662 1611 1 1613 1644 1 1646 1616 1 1625 1660 1 1658 1624 1 1678 1679 0 1679 1688 1
		 1680 1685 1 1681 1678 1 1683 1684 1 1684 1681 1 1685 1682 1 1687 1677 1 1686 1687 1
		 1689 1704 1 1688 1689 1 1689 1690 1 1690 1691 1 1692 1781 0 1691 1692 1 1693 1694 1
		 1694 1695 1 1695 1686 1 1706 1679 0 1706 1704 0 1782 1783 0 1781 1782 0 1784 1693 0
		 1784 1783 0 1696 1698 0 1698 1710 0 1710 1709 1 1709 1696 0 1697 1696 1 1696 1700 0;
	setAttr ".ed[3320:3485]" 1700 1699 1 1699 1697 0 1698 1697 0 1697 1732 0 1732 1731 1
		 1731 1698 0 1699 1701 1 1701 1720 0 1720 1719 1 1719 1699 0 1701 1700 0 1700 1702 1
		 1702 1703 1 1703 1701 1 1702 1774 1 1774 1773 1 1773 1703 1 1705 1704 0 1704 1708 0
		 1708 1707 1 1707 1705 0 1706 1705 0 1705 1746 0 1746 1745 0 1745 1706 0 1708 1776 0
		 1776 1775 1 1775 1707 0 1710 1772 0 1772 1771 1 1771 1709 0 1711 1712 0 1712 1773 1
		 1774 1711 0 1711 1713 0 1713 1714 0 1714 1712 0 1713 1771 1 1772 1714 0 1715 1716 0
		 1716 1736 0 1736 1735 0 1735 1715 0 1715 1717 0 1717 1718 1 1718 1716 0 1717 1777 1
		 1777 1778 1 1778 1718 0 1720 1721 0 1721 1722 1 1722 1719 0 1721 1724 0 1724 1723 1
		 1723 1722 0 1724 1725 0 1725 1727 0 1727 1723 0 1726 1725 0 1725 1744 0 1744 1743 0
		 1743 1726 0 1727 1726 0 1726 1729 0 1729 1728 1 1728 1727 1 1728 1730 1 1730 1733 0
		 1733 1734 1 1734 1728 1 1730 1729 0 1729 1739 0 1739 1738 0 1738 1730 0 1732 1780 0
		 1780 1779 1 1779 1731 1 1733 1779 0 1780 1734 1 1735 1737 1 1737 1747 0 1747 1748 1
		 1748 1735 0 1737 1736 0 1736 1741 0 1741 1742 1 1742 1737 1 1738 1740 1 1740 1742 1
		 1741 1738 0 1740 1739 1 1739 1767 1 1767 1768 1 1768 1740 1 1744 1755 0 1755 1754 1
		 1754 1743 0 1746 1769 0 1769 1770 1 1770 1745 0 1747 1790 0 1790 1789 1 1789 1748 0
		 1749 1751 0 1751 1798 0 1798 1797 1 1797 1749 0 1750 1749 0 1749 1753 0 1753 1752 1
		 1752 1750 0 1751 1750 0 1750 1763 0 1763 1762 0 1762 1751 0 1753 1758 0 1758 1757 1
		 1757 1752 0 1755 1786 0 1786 1785 1 1785 1754 0 1756 1758 1 1758 1796 1 1796 1795 1
		 1795 1756 1 1757 1756 1 1756 1761 0 1761 1760 1 1760 1757 0 1759 1761 0 1761 1794 0
		 1794 1793 1 1793 1759 0 1760 1759 1 1759 1766 0 1766 1765 1 1765 1760 0 1762 1764 0
		 1764 1800 0 1800 1799 1 1799 1762 0 1764 1763 0 1763 1765 0 1766 1764 0 1767 1788 1
		 1788 1787 1 1787 1768 1 1769 1792 0 1792 1791 1 1791 1770 0 1776 1781 0 1782 1775 0
		 1777 1783 0 1784 1778 0 1786 1793 0 1794 1785 0 1788 1795 1 1796 1787 1 1790 1797 0
		 1798 1789 0 1792 1799 0 1800 1791 0 1734 1723 1 1690 1708 1 1709 1702 1 1686 1716 0;
	setAttr ".ed[3486:3651]" 1718 1695 1 1715 1705 0 1707 1717 1 1752 1765 1 1677 1716 0
		 1719 1732 1 1677 1741 0 1743 1739 0 1745 1678 0 1735 1746 0 1742 1680 1 1680 1747 1
		 1754 1767 1 1770 1681 1 1748 1769 1 1771 1774 1 1691 1776 1 1775 1777 1 1778 1694 1
		 1687 1733 1 1730 1677 0 1768 1680 1 1744 1678 0 1681 1755 1 1725 1679 0 1724 1688 1
		 1722 1780 1 1788 1785 1 1794 1795 1 1685 1787 1 1796 1682 1 1790 1685 1 1682 1797 1
		 1798 1799 1 1792 1789 1 1684 1791 1 1800 1683 1 1786 1684 1 1683 1793 1 1753 1682 1
		 1766 1683 1 1731 1687 1 1686 1698 0 1720 1688 1 1701 1689 1 1703 1690 1 1773 1691 1
		 1712 1692 0 1714 1693 0 1772 1694 1 1710 1695 1 1805 1806 0 1805 1831 0 1831 1832 0
		 1806 1832 0 1803 1804 0 1803 1820 0 1820 1817 0 1804 1817 0 1813 1829 1 1829 1851 1
		 1851 1852 1 1813 1852 0 1815 1816 0 1816 1849 0 1849 1850 0 1815 1850 0 1804 1838 0
		 1817 1837 1 1837 1838 1 1830 1810 1 1830 1857 1 1857 1858 1 1810 1858 0 1810 1811 0
		 1858 1859 0 1811 1859 0 1811 1833 1 1859 1860 1 1860 1833 1 1812 1809 0 1812 1855 0
		 1855 1856 0 1809 1856 0 1813 1814 0 1852 1853 0 1814 1853 0 1802 1801 0 1802 1818 0
		 1818 1819 0 1801 1819 0 1803 1839 0 1839 1840 1 1840 1820 1 1814 1834 1 1853 1854 1
		 1854 1834 1 1817 1821 0 1821 1836 1 1836 1837 1 1818 1822 0 1822 1823 0 1819 1823 0
		 1840 1841 1 1841 1824 1 1820 1824 0 1824 1821 0 1821 1843 0 1843 1844 1 1844 1836 1
		 1822 1845 0 1845 1846 0 1823 1846 0 1841 1847 1 1847 1848 1 1824 1848 0 1848 1843 0
		 1825 1835 1 1825 1814 0 1834 1835 1 1826 1827 0 1826 1816 0 1827 1815 0 1842 1828 1
		 1842 1829 1 1828 1813 0 1828 1825 0 1829 1815 1 1850 1851 1 1809 1830 1 1856 1857 1
		 1831 1807 0 1808 1807 0 1832 1808 0 1833 1812 1 1860 1855 1 1834 1816 1 1854 1849 1
		 1835 1826 1 1836 1822 1 1844 1845 1 1837 1818 1 1838 1802 0 1839 1801 0 1819 1840 1
		 1823 1841 1 1846 1847 1 1827 1842 1 1843 1825 0 1835 1844 1 1845 1826 0 1846 1827 0
		 1847 1842 1 1848 1828 0 1849 1812 0 1850 1809 0 1851 1830 1 1852 1810 0 1853 1811 0
		 1833 1854 1 1855 1808 0 1856 1807 0 1857 1831 1 1858 1805 0 1859 1806 0 1832 1860 1;
	setAttr ".ed[3652:3817]" 1861 1862 1 1863 1864 0 1865 1866 0 1867 1868 1 1861 1863 0
		 1862 1864 0 1863 1865 0 1864 1866 0 1865 1867 0 1866 1868 0 1867 1861 1 1868 1862 1
		 1862 1870 0 1869 1870 0 1861 1869 0 1870 1872 0 1871 1872 0 1869 1871 0 1872 1868 0
		 1871 1867 0 1873 1881 0 1881 1882 1 1875 1882 1 1873 1875 0 1882 1898 1 1898 1899 1
		 1875 1899 0 1877 1883 1 1877 1909 0 1905 1874 0 1905 1906 1 1876 1906 1 1874 1876 1
		 1911 1873 0 1899 1911 0 1902 1903 1 1903 1886 1 1887 1886 1 1902 1887 1 1881 1874 0
		 1882 1876 1 1906 1898 1 1883 1880 0 1883 1878 1 1878 1879 0 1880 1879 0 1879 1888 0
		 1888 1889 0 1880 1889 0 1874 1891 0 1891 1904 0 1904 1905 0 1881 1890 0 1890 1891 0
		 1888 1885 0 1884 1885 1 1889 1884 1 1895 1892 0 1895 1901 0 1901 1894 0 1892 1894 0
		 1890 1887 1 1891 1886 1 1903 1904 1 1900 1890 0 1900 1895 0 1890 1892 1 1884 1893 1
		 1910 1893 1 1889 1910 0 1887 1894 1 1901 1902 1 1909 1880 0 1898 1883 1 1899 1877 0
		 1910 1895 1 1893 1901 1 1884 1902 1 1885 1903 1 1904 1888 0 1879 1905 0 1906 1878 1
		 1911 1895 0 1911 1932 0 1932 1933 0 1895 1933 0 1909 1911 0 1909 1935 0 1935 1932 1
		 1909 1910 0 1910 1934 0 1934 1935 0 1933 1934 1 1896 1897 0 1896 1912 0 1912 1913 0
		 1897 1913 0 1907 1908 0 1908 1915 0 1914 1915 0 1907 1914 0 1896 1907 0 1912 1914 0
		 1897 1908 0 1913 1915 0 1916 1917 0 1916 1896 0 1917 1897 0 1917 1918 1 1918 1908 0
		 1918 1919 0 1919 1907 0 1919 1916 1 1920 1921 0 1920 1922 0 1922 1923 0 1921 1923 0
		 1912 1925 0 1925 1926 0 1913 1926 0 1914 1924 0 1924 1925 1 1915 1927 0 1927 1924 0
		 1926 1927 1 1924 1928 0 1928 1929 1 1925 1929 0 1929 1930 0 1926 1930 0 1930 1931 1
		 1927 1931 0 1931 1928 0 1928 1922 0 1929 1920 0 1930 1921 0 1931 1923 0 1932 1936 0
		 1936 1937 0 1933 1937 0 1937 1938 1 1934 1938 0 1938 1939 0 1935 1939 0 1939 1936 1
		 1936 1940 0 1940 1941 0 1937 1941 0 1941 1942 1 1938 1942 0 1942 1943 0 1939 1943 0
		 1943 1940 1 1940 1916 0 1941 1917 0 1942 1918 0 1943 1919 0 1945 1944 0 1946 1982 0
		 1947 1981 0 1946 1947 0 1946 1963 0 1947 1960 0 1948 1949 0 1944 1962 0 1948 1974 0;
	setAttr ".ed[3818:3983]" 1945 1961 0 1951 1950 0 1949 1975 0 1952 1999 0 1953 2001 0
		 1952 1973 1 1954 2002 0 1953 1954 0 1955 1998 0 1954 1976 1 1955 1952 0 1956 1995 0
		 1957 1996 0 1956 1957 0 1958 1993 0 1959 1992 0 1958 1959 0 1956 1972 1 1957 1977 1
		 1960 1964 0 1961 1965 0 1960 1980 1 1962 1966 0 1961 1962 0 1963 1967 0 1962 1983 1
		 1963 1960 0 1964 1986 0 1965 1988 0 1964 1979 1 1966 1989 0 1965 1966 0 1967 1991 0
		 1966 1984 1 1967 1964 0 1968 1957 0 1969 1959 0 1968 1978 1 1970 1958 0 1969 1970 0
		 1971 1956 0 1970 1985 1 1971 1968 0 1972 1958 1 1973 1953 1 1972 1994 1 1974 1950 0
		 1973 2000 1 1975 1951 0 1974 1975 0 1976 1955 1 1975 2003 1 1977 1959 1 1976 1997 1
		 1978 1969 1 1977 1978 1 1979 1965 1 1978 1987 1 1980 1961 1 1979 1980 1 1981 1945 0
		 1980 1981 1 1982 1944 0 1983 1963 1 1982 1983 1 1984 1967 1 1983 1984 1 1985 1971 1
		 1984 1990 1 1985 1972 1 1986 1968 0 1987 1979 1 1986 1987 1 1988 1969 0 1987 1988 1
		 1989 1970 0 1988 1989 0 1990 1985 1 1989 1990 1 1991 1971 0 1990 1991 1 1991 1986 0
		 1992 1955 0 1993 1952 0 1992 1993 0 1994 1973 1 1993 1994 1 1995 1953 0 1994 1995 1
		 1996 1954 0 1995 1996 0 1997 1977 1 1996 1997 1 1997 1992 1 1998 1951 0 1999 1950 0
		 1998 1999 0 2000 1974 1 1999 2000 1 2001 1948 0 2000 2001 1 2002 1949 0 2001 2002 0
		 2003 1976 1 2002 2003 1 2003 1998 1 2012 2015 0 2015 2021 0 2020 2021 1 2012 2020 0
		 2006 2008 0 2008 2017 0 2016 2017 1 2006 2016 0 2008 2010 0 2010 2018 0 2017 2018 1
		 2010 2004 0 2004 2019 0 2018 2019 1 2005 2007 0 2007 2009 0 2009 2011 0 2011 2005 0
		 2004 2006 0 2004 2012 0 2019 2020 1 2005 2013 0 2013 2014 0 2007 2014 0 2006 2015 0
		 2021 2016 1 2017 2009 0 2016 2007 0 2018 2011 0 2019 2005 0 2020 2013 0 2021 2014 0
		 2030 2038 0 2038 2039 1 2033 2039 0 2030 2033 0 2024 2034 0 2034 2035 1 2026 2035 0
		 2024 2026 0 2035 2036 1 2028 2036 0 2026 2028 0 2036 2037 1 2022 2037 0 2028 2022 0
		 2029 2023 0 2027 2029 0 2025 2027 0 2023 2025 0 2022 2024 0 2037 2038 1 2022 2030 0
		 2025 2032 0 2031 2032 0 2023 2031 0 2039 2034 1 2024 2033 0 2034 2025 0 2035 2027 0;
	setAttr ".ed[3984:4149]" 2036 2029 0 2037 2023 0 2038 2031 0 2039 2032 0 2040 2041 1
		 2042 2043 0 2040 2048 1 2041 2049 1 2042 2044 0 2043 2045 0 2041 2046 1 2040 2047 1
		 2047 2046 0 2048 2053 1 2049 2054 1 2048 2049 1 2050 2042 1 2051 2043 1 2050 2051 0
		 2052 2097 1 2052 2103 0 2053 2054 1 2054 2105 1 2055 2077 0 2056 2057 0 2052 2056 0
		 2055 2057 0 2057 2054 0 2056 2053 0 2056 2058 0 2057 2059 0 2058 2059 0 2051 2060 0
		 2050 2061 0 2061 2060 0 2052 2062 0 2062 2058 0 2063 2061 0 2062 2063 0 2064 2060 0
		 2055 2065 0 2065 2059 0 2065 2064 0 2058 2066 0 2059 2067 0 2066 2067 0 2060 2068 0
		 2067 2068 0 2061 2069 0 2069 2068 0 2066 2069 0 2062 2070 0 2070 2066 0 2063 2071 0
		 2071 2069 0 2070 2071 0 2064 2072 0 2072 2068 0 2065 2073 0 2073 2067 0 2073 2072 0
		 2076 2064 0 2079 2051 0 2077 2076 0 2079 2076 0 2078 2077 0 2094 2063 0 2095 2050 0
		 2095 2094 0 2097 2094 0 2097 2096 0 2102 2053 1 2103 2102 1 2104 2055 1 2105 2104 1
		 2074 2075 1 2075 2087 0 2087 2086 1 2086 2074 0 2074 2079 0 2079 2078 0 2078 2075 0
		 2080 2081 1 2081 2085 1 2085 2084 0 2084 2080 1 2080 2083 1 2083 2082 1 2082 2081 1
		 2083 2104 1 2105 2082 1 2088 2089 1 2089 2101 0 2101 2100 0 2100 2088 1 2088 2091 1
		 2091 2090 1 2090 2089 0 2091 2102 1 2103 2090 0 2092 2093 1 2093 2099 0 2099 2098 1
		 2098 2092 0 2092 2096 0 2096 2095 0 2095 2093 0 2080 2075 1 2078 2083 0 2092 2089 1
		 2090 2096 1 2084 2087 0 2098 2101 0 2082 2049 1 2041 2081 1 2046 2085 0 2043 2074 1
		 2086 2045 0 2042 2093 1 2044 2099 0 2040 2088 1 2100 2047 0 2048 2091 1 2112 2113 0
		 2113 2109 1 2108 2109 0 2112 2108 1 2106 2107 1 2106 2047 1 2107 2046 1 2107 2111 1
		 2110 2111 1 2106 2110 1 2128 2129 0 2129 2130 0 2131 2130 0 2128 2131 0 2132 2128 0
		 2133 2131 0 2132 2133 0 2111 2116 1 2115 2116 1 2110 2115 1 2134 2130 0 2135 2129 0
		 2135 2134 0 2117 2119 0 2119 2116 0 2116 2159 1 2159 2158 1 2158 2117 1 2114 2118 0
		 2114 2157 0 2157 2156 1 2156 2115 1 2118 2115 0 2118 2119 0 2119 2121 0 2120 2121 0
		 2118 2120 0 2112 2123 0 2123 2122 0 2113 2122 0 2124 2120 0 2114 2124 0 2153 2112 0;
	setAttr ".ed[4150:4214]" 2153 2152 0 2152 2125 0 2125 2123 0 2117 2127 0 2127 2121 0
		 2117 2139 0 2139 2138 0 2138 2126 0 2127 2126 0 2121 2129 0 2120 2128 0 2123 2131 0
		 2122 2130 0 2124 2132 0 2125 2133 0 2124 2125 0 2126 2122 0 2126 2134 0 2127 2135 0
		 2141 2138 0 2141 2113 0 2155 2152 0 2114 2155 1 2136 2137 1 2137 2087 0 2086 2136 0
		 2136 2141 0 2141 2140 0 2140 2137 0 2142 2143 1 2143 2085 1 2084 2142 1 2142 2145 1
		 2145 2144 1 2144 2143 1 2145 2158 1 2159 2144 1 2146 2147 1 2147 2101 0 2100 2146 1
		 2146 2149 1 2149 2148 1 2148 2147 0 2149 2156 1 2157 2148 0 2150 2151 1 2151 2099 0
		 2098 2150 0 2150 2154 0 2154 2153 0 2153 2151 0 2142 2137 1 2140 2145 0 2150 2147 1
		 2148 2154 1 2144 2111 1 2107 2143 1 2109 2045 0 2109 2136 1 2108 2151 1 2108 2044 0
		 2106 2146 1 2110 2149 1 2155 2154 0 2140 2139 0;
	setAttr -s 2084 -ch 8282 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 11 -2 -4
		mu 0 4 0 1 2 3
		f 4 1 13 37 -6
		mu 0 4 3 2 4 5
		f 4 2 137 -136 -57
		mu 0 4 6 7 81 86
		f 4 -48 50 -7 -5
		mu 0 4 8 9 10 11
		f 4 144 3 5 145
		mu 0 4 89 0 3 5
		f 4 44 43 -21 -42
		mu 0 4 12 13 14 15
		f 4 -12 9 4 -11
		mu 0 4 2 1 8 11
		f 4 51 -14 10 6
		mu 0 4 10 4 2 11
		f 4 -58 12 7 -59
		mu 0 4 82 7 16 17
		f 4 136 15 59 -15
		mu 0 4 84 17 18 19
		f 4 47 17 26 48
		mu 0 4 9 8 20 21
		f 4 -10 19 25 -18
		mu 0 4 8 1 22 20
		f 4 -60 22 -17 -61
		mu 0 4 19 18 23 24
		f 4 -40 63 40 -33
		mu 0 4 25 26 27 28
		f 4 -26 23 20 -25
		mu 0 4 20 22 15 14
		f 4 -27 24 -44 46
		mu 0 4 21 20 14 13
		f 4 -39 55 39 -29
		mu 0 4 22 29 30 25
		f 4 60 29 -62 -28
		mu 0 4 19 24 31 32
		f 4 41 30 -41 42
		mu 0 4 12 15 28 27
		f 4 -24 28 32 -31
		mu 0 4 15 22 25 28
		f 4 -140 134 138 27
		mu 0 4 32 85 83 19
		f 4 -38 35 -3 -37
		mu 0 4 5 4 7 6
		f 4 142 -134 36 141
		mu 0 4 87 91 5 6
		f 4 -64 -34 61 31
		mu 0 4 27 26 32 31
		f 4 21 -43 -32 -30
		mu 0 4 24 12 27 31
		f 4 16 18 -45 -22
		mu 0 4 24 23 13 12
		f 4 -46 -47 -19 -23
		mu 0 4 18 21 13 23
		f 4 8 -49 45 -16
		mu 0 4 17 9 21 18
		f 4 -51 -9 -8 -50
		mu 0 4 10 9 17 16
		f 4 -36 -52 49 -13
		mu 0 4 7 4 10 16
		f 4 -63 146 110 -65
		mu 0 4 33 90 34 35
		f 4 -144 140 115 -66
		mu 0 4 92 88 36 34
		f 4 132 67 114 -67
		mu 0 4 37 32 38 36
		f 4 33 64 112 -68
		mu 0 4 32 26 39 38
		f 4 -35 68 72 -70
		mu 0 4 40 41 42 43
		f 4 52 71 -75 -71
		mu 0 4 44 45 46 47
		f 4 53 70 -74 -69
		mu 0 4 41 44 47 42
		f 4 -55 69 75 -72
		mu 0 4 45 48 49 46
		f 4 -79 76 34 -78
		mu 0 4 50 51 41 40
		f 4 -81 77 54 -80
		mu 0 4 52 53 48 45
		f 4 -83 79 -53 -82
		mu 0 4 54 52 45 44
		f 4 -84 81 -54 -77
		mu 0 4 51 54 44 41
		f 4 -87 88 90 -92
		mu 0 4 55 56 57 58
		f 4 -73 84 96 -86
		mu 0 4 43 42 59 60
		f 4 73 87 94 -85
		mu 0 4 42 47 61 59
		f 4 74 89 99 -88
		mu 0 4 47 46 62 61
		f 4 -76 85 98 -90
		mu 0 4 46 49 63 62
		f 4 -95 92 102 -94
		mu 0 4 59 61 64 65
		f 4 -97 93 104 -96
		mu 0 4 60 59 65 66
		f 4 -99 95 106 -98
		mu 0 4 62 63 67 68
		f 4 -100 97 107 -93
		mu 0 4 61 62 68 64
		f 4 -103 100 -89 -102
		mu 0 4 65 64 57 69
		f 4 -105 101 86 -104
		mu 0 4 66 65 69 70
		f 4 -107 103 91 -106
		mu 0 4 68 67 55 58
		f 4 -108 105 -91 -101
		mu 0 4 64 68 58 57
		f 4 -111 108 118 -110
		mu 0 4 35 34 71 72
		f 4 -113 109 120 -112
		mu 0 4 38 39 73 74
		f 4 -115 111 122 -114
		mu 0 4 36 38 74 75
		f 4 -116 113 123 -109
		mu 0 4 34 36 75 71
		f 4 -119 116 126 -118
		mu 0 4 72 71 76 77
		f 4 -121 117 128 -120
		mu 0 4 74 73 78 79
		f 4 -123 119 130 -122
		mu 0 4 75 74 79 80
		f 4 -124 121 131 -117
		mu 0 4 71 75 80 76
		f 4 -127 124 78 -126
		mu 0 4 77 76 51 50
		f 4 -129 125 80 -128
		mu 0 4 79 78 53 52
		f 4 -131 127 82 -130
		mu 0 4 80 79 52 54
		f 4 -132 129 83 -125
		mu 0 4 76 80 54 51
		f 4 -155 152 148 -154
		mu 0 4 93 94 95 96
		f 4 -157 -158 155 -150
		mu 0 4 97 98 99 100
		f 4 181 182 183 184
		mu 0 4 101 102 103 104
		f 4 185 186 187 188
		mu 0 4 105 101 106 107
		f 4 189 190 191 192
		mu 0 4 108 105 109 110
		f 4 193 194 195 196
		mu 0 4 102 108 111 112
		f 4 -192 197 198 199
		mu 0 4 110 109 113 114
		f 4 200 201 202 203
		mu 0 4 112 115 116 117
		f 4 204 205 206 207
		mu 0 4 118 111 119 120
		f 4 208 209 210 211
		mu 0 4 121 122 123 124
		f 4 -207 212 213 214
		mu 0 4 120 119 125 126
		f 4 -188 215 216 217
		mu 0 4 127 106 128 129
		f 4 -211 218 219 220
		mu 0 4 124 123 130 131
		f 4 221 222 223 224
		mu 0 4 117 132 133 103
		f 4 225 226 227 228
		mu 0 4 132 134 135 136
		f 4 231 232 233 234
		mu 0 4 104 133 137 138
		f 4 -234 235 236 237
		mu 0 4 139 140 141 142
		f 4 -220 238 239 240
		mu 0 4 131 130 143 144
		f 4 -217 241 242 243
		mu 0 4 129 128 145 146
		f 4 244 245 246 247
		mu 0 4 147 141 148 149
		f 4 248 249 250 251
		mu 0 4 142 147 150 151
		f 4 255 256 257 258
		mu 0 4 152 153 154 155
		f 4 259 260 261 262
		mu 0 4 144 156 157 154
		f 4 263 264 265 266
		mu 0 4 158 143 159 160
		f 4 267 268 269 270
		mu 0 4 156 158 161 162
		f 4 -266 271 272 273
		mu 0 4 160 159 163 164
		f 4 277 278 279 280
		mu 0 4 146 165 166 167
		f 4 -280 281 282 283
		mu 0 4 167 166 168 169
		f 4 287 288 289 290
		mu 0 4 170 171 172 173
		f 4 -254 291 292 293
		mu 0 4 174 175 176 177
		f 4 -247 294 295 296
		mu 0 4 149 148 178 179
		f 4 -293 297 298 299
		mu 0 4 177 176 180 181
		f 4 -299 300 301 302
		mu 0 4 181 180 182 183
		f 4 -296 303 304 305
		mu 0 4 179 178 184 185
		f 4 -305 306 307 308
		mu 0 4 185 184 186 187
		f 4 -290 309 310 311
		mu 0 4 173 172 188 189
		f 4 -286 312 313 314
		mu 0 4 190 191 192 193
		f 4 315 316 317 318
		mu 0 4 194 195 196 188
		f 4 319 320 321 322
		mu 0 4 197 198 199 200
		f 4 323 324 325 326
		mu 0 4 201 197 202 203
		f 4 -322 327 328 329
		mu 0 4 200 199 204 205
		f 4 -308 330 331 332
		mu 0 4 187 186 206 207
		f 4 -302 333 334 335
		mu 0 4 183 182 208 209
		f 4 336 337 -326 338
		mu 0 4 210 211 203 202
		f 4 339 340 341 342
		mu 0 4 212 210 213 214
		f 4 343 344 345 346
		mu 0 4 211 212 209 215
		f 4 -342 347 348 349
		mu 0 4 214 213 216 217
		f 4 350 351 352 353
		mu 0 4 218 219 220 221
		f 4 354 355 -353 356
		mu 0 4 222 223 221 220
		f 4 357 358 359 360
		mu 0 4 224 225 226 192
		f 4 -358 361 362 363
		mu 0 4 225 224 227 228
		f 4 -363 364 -179 365
		mu 0 4 228 227 229 230
		f 4 -349 366 367 368
		mu 0 4 217 216 231 232
		f 4 -368 369 -175 370
		mu 0 4 232 231 233 234
		f 4 371 372 -332 373
		mu 0 4 235 236 237 206
		f 4 -372 374 375 376
		mu 0 4 236 235 238 239
		f 3 -376 377 378
		mu 0 3 239 238 240
		f 4 -329 379 380 381
		mu 0 4 205 204 241 242
		f 4 -381 382 -181 383
		mu 0 4 242 241 243 244
		f 4 -267 384 -279 -269
		mu 0 4 158 160 245 161
		f 4 385 386 -191 -189
		mu 0 4 107 246 109 105
		f 4 -193 387 -206 -195
		mu 0 4 108 110 119 111
		f 4 -208 388 389 -210
		mu 0 4 122 247 94 123
		f 4 -229 390 -233 -223
		mu 0 4 132 136 137 133
		f 4 -212 391 -227 -202
		mu 0 4 121 124 135 134
		f 5 -271 -446 -277 392 -261
		mu 0 5 156 162 248 249 157
		f 4 -187 -185 -235 393
		mu 0 4 106 101 104 138
		f 4 -197 -204 -225 -183
		mu 0 4 102 112 117 103
		f 4 -390 154 394 -219
		mu 0 4 123 94 93 130
		f 4 -386 -218 395 157
		mu 0 4 98 127 129 99
		f 4 -394 -238 396 -216
		mu 0 4 106 138 250 128
		f 5 -391 -441 -231 397 -236
		mu 0 5 140 251 252 253 141
		f 4 -392 -221 398 -230
		mu 0 4 135 124 131 153
		f 4 -395 399 -265 -239
		mu 0 4 130 93 159 143
		f 4 -396 -244 -281 400
		mu 0 4 99 129 146 167
		f 4 -397 -252 -276 -242
		mu 0 4 128 250 254 145
		f 4 401 -300 402 -304
		mu 0 4 178 177 181 184
		f 4 -399 -241 -263 -257
		mu 0 4 153 131 144 154
		f 5 -398 -439 -255 403 -246
		mu 0 5 141 253 255 174 148
		f 4 -259 404 405 -253
		mu 0 4 152 155 256 175
		f 4 -323 406 407 -325
		mu 0 4 197 200 257 202
		f 4 -250 -248 408 409
		mu 0 4 150 147 149 258
		f 5 -393 -444 -287 410 -289
		mu 0 5 171 259 260 190 172
		f 4 -410 158 411 -285
		mu 0 4 150 258 261 191
		f 4 -403 -303 412 -307
		mu 0 4 184 181 183 186
		f 4 -405 -291 413 169
		mu 0 4 256 155 262 263
		f 5 414 173 415 -321 -319
		mu 0 5 188 193 226 264 194
		f 4 -352 -317 -327 416
		mu 0 4 220 219 265 266
		f 4 417 -345 -343 418
		mu 0 4 206 209 212 214
		f 4 -362 419 160 420
		mu 0 4 227 224 267 268
		f 4 421 -369 422 -375
		mu 0 4 235 217 232 238
		f 4 167 423 -382 424
		mu 0 4 269 270 205 271
		f 4 425 -364 426 -380
		mu 0 4 272 225 228 273
		f 4 -200 170 -213 -388
		mu 0 4 110 114 125 119
		f 4 -389 -215 171 -153
		mu 0 4 94 247 274 95
		f 4 -400 153 150 -272
		mu 0 4 159 93 96 163
		f 4 -385 -274 172 -282
		mu 0 4 245 160 164 275
		f 4 -156 -401 -284 -152
		mu 0 4 100 99 167 169
		f 4 -387 156 147 -198
		mu 0 4 109 246 276 113
		f 4 -409 -297 -306 427
		mu 0 4 258 149 179 185
		f 4 -159 -428 -309 428
		mu 0 4 261 258 185 187
		f 4 429 -377 430 -161
		mu 0 4 267 236 239 268
		f 4 431 -367 432 -168
		mu 0 4 269 231 216 270
		f 4 -408 433 -341 -339
		mu 0 4 202 257 213 210
		f 4 -357 -417 -338 -347
		mu 0 4 222 220 266 277
		f 4 434 -170 435 -301
		mu 0 4 278 256 263 279
		f 4 -406 -435 -298 -292
		mu 0 4 175 256 278 176
		f 4 -404 -294 -402 -295
		mu 0 4 148 174 177 178
		f 4 -433 -348 -434 -165
		mu 0 4 270 216 213 257
		f 4 -422 -374 -419 -350
		mu 0 4 217 235 206 214
		f 4 -430 165 436 -373
		mu 0 4 236 267 280 237
		f 4 -420 -361 -164 -166
		mu 0 4 267 224 192 280
		f 4 -426 -328 -416 -359
		mu 0 4 225 272 264 226
		f 4 -424 164 -407 -330
		mu 0 4 205 270 257 200
		f 4 -423 -371 -176 -378
		mu 0 4 238 232 234 240
		f 4 -431 -379 176 -167
		mu 0 4 268 239 240 281
		f 4 -365 -421 166 159
		mu 0 4 229 227 268 281
		f 4 -427 -366 177 -383
		mu 0 4 273 228 230 243
		f 4 162 -425 -384 179
		mu 0 4 282 269 271 283
		f 4 -370 -432 -163 161
		mu 0 4 233 231 269 282
		f 4 -169 -429 -333 -437
		mu 0 4 284 261 187 207
		f 4 -412 168 163 -313
		mu 0 4 191 261 284 192
		f 4 -411 -315 -415 -310
		mu 0 4 172 190 193 188
		f 4 -414 -312 -354 437
		mu 0 4 263 262 218 221
		f 4 -436 -438 -356 -334
		mu 0 4 279 263 221 223
		f 4 -413 -336 -418 -331
		mu 0 4 186 183 209 206
		f 4 -186 -190 -194 -182
		mu 0 4 101 105 108 102
		f 4 -196 -205 -209 -201
		mu 0 4 112 111 118 115
		f 3 -203 -226 -222
		mu 0 3 117 116 132
		f 3 -232 -184 -224
		mu 0 3 133 104 103
		f 3 -249 -237 -245
		mu 0 3 147 142 141
		f 4 -240 -264 -268 -260
		mu 0 4 144 143 158 156
		f 4 -270 -278 -243 -275
		mu 0 4 285 165 146 145
		f 3 -258 -262 -288
		mu 0 3 155 154 157
		f 3 -320 -324 -316
		mu 0 3 198 197 201
		f 3 -340 -344 -337
		mu 0 3 210 212 211
		f 3 -318 -351 -311
		mu 0 3 188 196 189
		f 3 -355 -346 -335
		mu 0 3 208 215 209
		f 3 -360 -174 -314
		mu 0 3 192 226 193
		f 4 252 253 254 439
		mu 0 4 286 175 174 255
		f 4 -228 229 441 440
		mu 0 4 251 287 288 252
		f 3 230 442 438
		mu 0 3 253 252 255
		f 4 -443 -442 -256 -440
		mu 0 4 255 252 288 286
		f 4 284 285 286 444
		mu 0 4 289 191 190 260
		f 4 274 275 446 445
		mu 0 4 285 145 254 290
		f 3 276 447 443
		mu 0 3 259 291 260
		f 4 -448 -447 -251 -445
		mu 0 4 292 293 151 150
		f 4 -160 448 449 178
		mu 0 4 229 281 294 230
		f 3 -177 450 -449
		mu 0 3 281 240 294
		f 4 -162 451 452 174
		mu 0 4 233 282 295 234
		f 4 -180 453 454 -452
		mu 0 4 282 283 294 295
		f 4 180 -178 -450 -454
		mu 0 4 244 243 230 294
		f 4 -453 -455 -451 175
		mu 0 4 234 295 294 240
		f 4 457 -149 -457 455
		mu 0 4 296 297 298 299
		f 4 149 -461 459 458
		mu 0 4 97 100 300 301
		f 4 -465 -464 -463 -462
		mu 0 4 302 303 304 305
		f 4 -469 -468 -467 -466
		mu 0 4 306 307 308 302
		f 4 -473 -472 -471 -470
		mu 0 4 309 310 311 306
		f 4 -477 -476 -475 -474
		mu 0 4 305 312 313 309
		f 4 -479 -199 -478 471
		mu 0 4 310 314 113 311
		f 4 -483 -482 -481 -480
		mu 0 4 312 315 316 317
		f 4 -487 -486 -485 -484
		mu 0 4 318 319 320 313
		f 4 -491 -490 -489 -488
		mu 0 4 321 322 323 324
		f 4 -493 -214 -492 485
		mu 0 4 319 325 326 320
		f 4 -496 -495 -494 467
		mu 0 4 327 328 329 308
		f 4 -499 -498 -497 489
		mu 0 4 322 330 331 323
		f 4 -503 -502 -501 -500
		mu 0 4 315 304 332 333
		f 4 -507 -506 -505 -504
		mu 0 4 333 334 335 336
		f 4 -511 -510 -509 -508
		mu 0 4 303 337 338 332
		f 4 -514 -513 -512 509
		mu 0 4 339 340 341 342
		f 4 -517 -516 -515 497
		mu 0 4 330 343 344 331
		f 4 -520 -519 -518 494
		mu 0 4 328 345 346 329
		f 4 -524 -523 -522 -521
		mu 0 4 347 348 349 341
		f 4 -528 -527 -526 -525
		mu 0 4 340 350 351 347
		f 4 -532 -531 -530 -529
		mu 0 4 352 353 354 355
		f 4 -536 -535 -534 -533
		mu 0 4 343 354 356 357
		f 4 -540 -539 -538 -537
		mu 0 4 358 359 360 344
		f 4 -544 -543 -542 -541
		mu 0 4 357 361 362 358
		f 4 -546 -273 -545 538
		mu 0 4 359 363 364 360
		f 4 -550 -549 -548 -547
		mu 0 4 345 365 366 367
		f 4 -552 -283 -551 548
		mu 0 4 365 169 168 366
		f 4 -556 -555 -554 -553
		mu 0 4 368 369 370 371
		f 4 -560 -559 -558 556
		mu 0 4 372 373 374 375
		f 4 -563 -562 -561 522
		mu 0 4 348 376 377 349
		f 4 -566 -565 -564 558
		mu 0 4 373 378 379 374
		f 4 -569 -568 -567 564
		mu 0 4 378 380 381 379
		f 4 -572 -571 -570 561
		mu 0 4 376 382 383 377
		f 4 -575 -574 -573 570
		mu 0 4 382 384 385 383
		f 4 -578 -577 -576 554
		mu 0 4 369 386 387 370
		f 4 -582 -581 -580 578
		mu 0 4 388 389 390 391
		f 4 -586 -585 -584 -583
		mu 0 4 392 387 393 394
		f 4 -590 -589 -588 -587
		mu 0 4 395 396 397 398
		f 4 -594 -593 -592 -591
		mu 0 4 399 400 401 395
		f 4 -597 -596 -595 588
		mu 0 4 396 402 403 397
		f 4 -600 -599 -598 573
		mu 0 4 384 404 405 385
		f 4 -603 -602 -601 567
		mu 0 4 380 406 407 381
		f 4 -606 592 -605 -604
		mu 0 4 408 401 400 409
		f 4 -610 -609 -608 -607
		mu 0 4 410 411 412 408
		f 4 -614 -613 -612 -611
		mu 0 4 409 413 406 410
		f 4 -617 -616 -615 608
		mu 0 4 411 414 415 412
		f 4 -621 -620 -619 -618
		mu 0 4 416 417 418 419
		f 4 -624 619 -623 -622
		mu 0 4 420 418 417 421
		f 4 -628 -627 -626 -625
		mu 0 4 422 390 423 424
		f 4 -631 -630 -629 624
		mu 0 4 424 425 426 422
		f 4 -634 632 -632 629
		mu 0 4 425 427 428 426
		f 4 -637 -636 -635 615
		mu 0 4 414 429 430 415
		f 4 -640 638 -638 635
		mu 0 4 429 431 432 430
		f 4 -643 598 -642 -641
		mu 0 4 433 405 434 435
		f 4 -646 -645 -644 640
		mu 0 4 435 436 437 433
		f 3 -648 -647 644
		mu 0 3 436 438 437
		f 4 -651 -650 -649 595
		mu 0 4 402 439 440 403
		f 4 -654 652 -652 649
		mu 0 4 439 441 442 440
		f 4 541 547 -655 539
		mu 0 4 358 362 443 359
		f 4 468 470 -657 -656
		mu 0 4 307 306 311 444
		f 4 474 484 -658 472
		mu 0 4 309 313 320 310
		f 4 488 -660 -659 486
		mu 0 4 324 323 299 445
		f 4 500 508 -661 506
		mu 0 4 333 332 338 334
		f 4 480 504 -662 490
		mu 0 4 321 336 335 322
		f 5 533 -665 663 662 543
		mu 0 5 357 356 446 447 361
		f 4 -666 510 464 466
		mu 0 4 308 337 303 302
		f 4 462 502 482 476
		mu 0 4 305 304 315 312
		f 4 496 -667 -456 659
		mu 0 4 323 331 296 299
		f 4 -460 -668 495 655
		mu 0 4 301 300 328 327
		f 4 493 -669 513 665
		mu 0 4 308 329 448 337
		f 5 511 -672 670 669 660
		mu 0 5 342 341 449 450 451
		f 4 673 -673 498 661
		mu 0 4 335 355 330 322
		f 4 514 537 -675 666
		mu 0 4 331 344 360 296
		f 4 -676 549 519 667
		mu 0 4 300 365 345 328
		f 4 517 676 527 668
		mu 0 4 329 346 452 448
		f 4 569 -679 565 -678
		mu 0 4 377 383 378 373
		f 4 529 535 516 672
		mu 0 4 355 354 343 330
		f 5 521 -682 680 679 671
		mu 0 5 341 349 372 453 449
		f 4 684 -684 -683 531
		mu 0 4 352 375 454 353
		f 4 591 -687 -686 589
		mu 0 4 395 401 455 396
		f 4 -689 -688 523 525
		mu 0 4 351 456 348 347
		f 5 553 -692 690 689 664
		mu 0 5 371 370 388 457 458
		f 4 694 -694 -693 688
		mu 0 4 351 391 459 456
		f 4 572 -696 568 678
		mu 0 4 383 385 380 378
		f 4 -698 -697 555 682
		mu 0 4 454 460 461 353
		f 5 585 587 -701 -700 -699
		mu 0 5 387 392 462 423 389
		f 4 -702 593 583 618
		mu 0 4 418 463 464 419
		f 4 -704 609 611 -703
		mu 0 4 405 411 410 406
		f 4 -707 -706 -705 628
		mu 0 4 426 465 466 422
		f 4 643 -709 636 -708
		mu 0 4 433 437 429 414
		f 4 -712 650 -711 -710
		mu 0 4 467 468 402 469
		f 4 648 -714 630 -713
		mu 0 4 470 471 425 424
		f 4 657 491 -171 478
		mu 0 4 310 320 326 314
		f 4 456 -172 492 658
		mu 0 4 299 298 472 445
		f 4 544 -151 -458 674
		mu 0 4 360 364 297 296
		f 4 550 -173 545 654
		mu 0 4 443 473 363 359
		f 4 151 551 675 460
		mu 0 4 100 169 365 300
		f 4 477 -148 -459 656
		mu 0 4 311 113 276 444
		f 4 -715 571 562 687
		mu 0 4 456 382 376 348
		f 4 -716 574 714 692
		mu 0 4 459 384 382 456
		f 4 705 -718 645 -717
		mu 0 4 466 465 436 435
		f 4 709 -720 634 -719
		mu 0 4 467 469 415 430
		f 4 605 607 -721 686
		mu 0 4 401 408 412 455
		f 4 613 604 701 623
		mu 0 4 420 474 463 418
		f 4 566 -723 697 -722
		mu 0 4 475 476 460 454
		f 4 557 563 721 683
		mu 0 4 375 374 475 454
		f 4 560 677 559 681
		mu 0 4 349 377 373 372
		f 4 723 720 614 719
		mu 0 4 469 455 412 415
		f 4 616 703 642 707
		mu 0 4 414 411 405 433
		f 4 641 -726 -725 716
		mu 0 4 435 434 477 466
		f 4 724 726 627 704
		mu 0 4 466 477 390 422
		f 4 625 700 594 712
		mu 0 4 424 423 462 470
		f 4 596 685 -724 710
		mu 0 4 402 396 455 469
		f 4 646 727 639 708
		mu 0 4 437 438 431 429
		f 4 729 -729 647 717
		mu 0 4 465 478 438 436
		f 4 -731 -730 706 631
		mu 0 4 428 478 465 426
		f 4 651 -732 633 713
		mu 0 4 471 442 427 425
		f 4 -734 653 711 -733
		mu 0 4 479 480 468 467
		f 4 -735 732 718 637
		mu 0 4 432 479 467 430
		f 4 725 599 715 735
		mu 0 4 481 404 384 459
		f 4 579 -727 -736 693
		mu 0 4 391 390 481 459
		f 4 575 698 581 691
		mu 0 4 370 387 389 388
		f 4 -737 620 577 696
		mu 0 4 460 417 416 461
		f 4 600 622 736 722
		mu 0 4 476 421 417 460
		f 4 597 702 602 695
		mu 0 4 385 405 406 380
		f 4 461 473 469 465
		mu 0 4 302 305 309 306
		f 4 479 487 483 475
		mu 0 4 312 317 318 313
		f 3 499 503 481
		mu 0 3 315 333 316
		f 3 501 463 507
		mu 0 3 332 304 303
		f 3 520 512 524
		mu 0 3 347 341 340
		f 4 532 540 536 515
		mu 0 4 343 357 358 344
		f 4 737 518 546 542
		mu 0 4 482 346 345 367
		f 3 552 534 530
		mu 0 3 353 356 354
		f 3 582 590 586
		mu 0 3 398 399 395
		f 3 603 610 606
		mu 0 3 408 409 410
		f 3 576 617 584
		mu 0 3 387 386 393
		f 3 601 612 621
		mu 0 3 407 406 413
		f 3 580 699 626
		mu 0 3 390 389 423
		f 4 -739 -681 -557 -685
		mu 0 4 483 453 372 375
		f 4 -670 -740 -674 505
		mu 0 4 451 450 484 485
		f 3 -680 -741 -671
		mu 0 3 449 453 450
		f 4 738 528 739 740
		mu 0 4 453 483 484 450
		f 4 -742 -691 -579 -695
		mu 0 4 486 457 388 391
		f 4 -663 -743 -677 -738
		mu 0 4 482 487 452 346
		f 3 -690 -744 -664
		mu 0 3 458 457 488
		f 4 741 526 742 743
		mu 0 4 489 351 350 490
		f 4 -633 -746 -745 730
		mu 0 4 428 427 491 478
		f 3 744 -747 728
		mu 0 3 478 491 438
		f 4 -639 -749 -748 734
		mu 0 4 432 431 492 479
		f 4 747 -751 -750 733
		mu 0 4 479 492 491 480
		f 4 749 745 731 -653
		mu 0 4 441 491 427 442
		f 4 -728 746 750 748
		mu 0 4 431 438 491 492
		f 4 751 757 -753 -757
		mu 0 4 493 494 495 496
		f 4 -798 799 -756 -755
		mu 0 4 497 498 499 500
		f 4 755 801 -765 -763
		mu 0 4 500 499 501 502
		f 4 -752 765 766 -764
		mu 0 4 494 493 503 504
		f 5 -771 768 764 811 -770
		mu 0 5 505 506 502 501 507
		f 4 771 772 773 774
		mu 0 4 508 509 510 511
		f 4 -774 775 776 777
		mu 0 4 511 510 512 513
		f 4 778 779 780 781
		mu 0 4 514 515 516 517
		f 4 -781 782 783 784
		mu 0 4 517 516 518 519
		f 4 806 805 786 787
		mu 0 4 520 521 513 522
		f 4 788 789 790 791
		mu 0 4 522 512 523 505
		f 4 810 809 -775 792
		mu 0 4 524 525 526 511
		f 4 753 793 -773 -761
		mu 0 4 527 528 510 509
		f 4 -792 769 804 -788
		mu 0 4 522 505 507 520
		f 4 756 759 -782 795
		mu 0 4 493 496 514 517
		f 4 -796 -785 -795 -766
		mu 0 4 493 517 519 503
		f 4 -793 -778 -806 808
		mu 0 4 524 511 513 529
		f 4 -794 761 -790 -776
		mu 0 4 510 528 523 512
		f 3 -787 -777 -789
		mu 0 3 522 513 512
		f 3 770 -791 796
		mu 0 3 506 505 523
		f 4 -759 -758 -799 -800
		mu 0 4 498 495 494 499
		f 4 -802 798 763 -801
		mu 0 4 501 499 494 504
		f 4 -805 802 794 -804
		mu 0 4 520 507 503 519
		f 4 -784 785 -807 803
		mu 0 4 519 518 521 520
		f 4 -808 -809 -786 -783
		mu 0 4 530 524 529 531
		f 4 -780 767 -811 807
		mu 0 4 530 532 525 524
		f 4 -812 800 -767 -803
		mu 0 4 507 501 504 503
		f 4 814 752 -814 -813
		mu 0 4 533 496 495 534
		f 4 817 816 -816 797
		mu 0 4 497 535 536 498
		f 4 820 819 -819 -817
		mu 0 4 535 537 538 536
		f 4 823 -823 -822 812
		mu 0 4 534 539 540 533
		f 5 827 -827 -820 -826 824
		mu 0 5 541 542 538 537 543
		f 4 -831 -830 -829 -772
		mu 0 4 508 544 545 509
		f 4 -834 -833 -832 829
		mu 0 4 544 546 547 545
		f 4 -837 -836 -835 -779
		mu 0 4 514 548 549 550
		f 4 -840 -839 -838 835
		mu 0 4 548 551 552 549
		f 4 -844 -843 -842 -841
		mu 0 4 553 554 546 555
		f 4 -848 -847 -846 -845
		mu 0 4 554 541 556 547
		f 4 -850 830 -810 -849
		mu 0 4 557 544 558 559
		f 4 760 828 -852 -851
		mu 0 4 560 509 545 561
		f 4 843 -853 -828 847
		mu 0 4 554 553 542 541
		f 4 -854 836 -760 -815
		mu 0 4 533 548 514 496
		f 4 821 854 839 853
		mu 0 4 533 540 551 548
		f 4 -856 841 833 849
		mu 0 4 557 562 546 544
		f 4 831 845 -857 851
		mu 0 4 545 547 556 561
		f 3 844 832 842
		mu 0 3 554 547 546
		f 3 -858 846 -825
		mu 0 3 543 556 541
		f 4 815 858 813 758
		mu 0 4 498 536 534 495
		f 4 859 -824 -859 818
		mu 0 4 538 539 534 536
		f 4 861 -855 -861 852
		mu 0 4 553 551 540 542
		f 4 -862 840 -863 838
		mu 0 4 551 553 555 552
		f 4 837 862 855 863
		mu 0 4 563 564 562 557
		f 4 -864 848 -768 834
		mu 0 4 563 557 559 565
		f 4 860 822 -860 826
		mu 0 4 542 540 539 538
		f 5 -869 -868 -867 -866 864
		mu 0 5 566 567 568 569 570
		f 4 -873 -872 -871 -870
		mu 0 4 571 572 573 574
		f 4 -877 -876 -875 -874
		mu 0 4 575 576 577 571
		f 4 -881 -880 -879 -878
		mu 0 4 574 578 579 575
		f 4 -885 -884 -883 -882
		mu 0 4 576 580 581 582
		f 4 -889 -888 -887 -886
		mu 0 4 582 583 584 577
		f 4 -892 -891 -890 887
		mu 0 4 583 585 586 584
		f 4 -896 -895 -894 -893
		mu 0 4 587 588 589 590
		f 4 -900 -899 -898 -897
		mu 0 4 570 591 592 593
		f 4 -903 -902 -901 894
		mu 0 4 588 594 595 589
		f 4 -906 -905 -904 871
		mu 0 4 572 596 597 573
		f 4 -909 890 -908 -907
		mu 0 4 598 586 585 599
		f 4 -912 -911 -910 906
		mu 0 4 599 600 601 598
		f 4 -914 904 -913 910
		mu 0 4 600 597 596 601
		f 4 -918 -917 -916 -915
		mu 0 4 602 603 604 605
		f 4 -921 -920 -919 914
		mu 0 4 605 606 607 602
		f 4 -924 -923 -922 919
		mu 0 4 606 608 609 607
		f 4 -927 -926 -925 883
		mu 0 4 580 610 611 581
		f 4 -930 -929 -928 925
		mu 0 4 610 612 613 611
		f 4 -933 -932 -931 928
		mu 0 4 612 614 615 613
		f 4 -937 -936 -935 -934
		mu 0 4 616 617 618 615
		f 4 -941 -940 -939 -938
		mu 0 4 614 619 620 616
		f 4 -945 -944 -943 -942
		mu 0 4 619 621 622 623
		f 4 -949 -948 -947 -946
		mu 0 4 623 624 625 620
		f 4 -952 -951 -950 879
		mu 0 4 578 626 627 579
		f 4 -954 950 -953 943
		mu 0 4 621 627 626 622
		f 4 -958 -957 -956 -955
		mu 0 4 603 628 629 630
		f 4 -962 -961 -960 -959
		mu 0 4 630 631 632 604
		f 4 -965 960 -964 -963
		mu 0 4 624 632 631 633
		f 4 -969 -968 -967 -966
		mu 0 4 633 634 635 625
		f 4 -972 -971 -970 935
		mu 0 4 617 636 637 618
		f 4 -975 -974 -973 898
		mu 0 4 638 639 640 641
		f 4 -978 -977 -976 956
		mu 0 4 628 642 643 629
		f 4 -982 -981 -980 -979
		mu 0 4 644 645 646 647
		f 4 -986 -985 -984 -983
		mu 0 4 648 649 650 644
		f 4 -990 -989 -988 -987
		mu 0 4 647 651 652 648
		f 4 -993 -992 -991 984
		mu 0 4 649 653 654 650
		f 4 -996 -995 -994 970
		mu 0 4 636 655 656 637
		f 4 -1000 -999 -998 -997
		mu 0 4 657 658 659 654
		f 4 -1004 -1003 -1002 -1001
		mu 0 4 653 660 661 657
		f 4 -1008 -1007 -1006 -1005
		mu 0 4 662 663 664 661
		f 4 -1012 -1011 -1010 -1009
		mu 0 4 660 665 666 662
		f 4 -1016 -1015 -1014 -1013
		mu 0 4 667 668 669 670
		f 4 -1019 1010 -1018 -1017
		mu 0 4 670 666 665 671
		f 4 -1022 -1021 -1020 967
		mu 0 4 634 672 673 635
		f 4 -1025 -1024 -1023 973
		mu 0 4 639 674 675 640
		f 4 -1028 -1027 -1026 901
		mu 0 4 594 676 677 595
		f 4 -1031 1029 -1029 922
		mu 0 4 608 678 679 609
		f 4 -1033 1006 -1032 994
		mu 0 4 655 664 663 656
		f 4 -1035 998 -1034 1020
		mu 0 4 672 659 658 673
		f 4 -1037 980 -1036 976
		mu 0 4 642 646 645 643
		f 4 -1039 1014 -1038 1023
		mu 0 4 674 669 668 675
		f 4 -1040 944 940 932
		mu 0 4 612 621 619 614
		f 4 -1042 -1041 868 893
		mu 0 4 589 680 681 590
		f 4 886 -1043 872 874
		mu 0 4 577 584 572 571
		f 4 -1046 920 -1045 -1044
		mu 0 4 682 606 605 683
		f 4 918 -1048 895 -1047
		mu 0 4 602 607 684 685
		f 4 987 1017 -1049 985
		mu 0 4 686 671 665 687
		f 4 1044 -1052 -1051 -1050
		mu 0 4 683 605 688 689
		f 4 876 878 -1053 884
		mu 0 4 576 575 579 580
		f 4 915 959 -1054 1051
		mu 0 4 605 604 632 688
		f 4 946 -1055 936 938
		mu 0 4 620 625 617 616
		f 4 -1057 -1056 899 865
		mu 0 4 569 690 591 570
		f 4 -1058 917 1046 897
		mu 0 4 691 603 602 692
		f 4 -1060 -1059 961 955
		mu 0 4 629 693 631 630
		f 4 966 -1061 971 1054
		mu 0 4 625 635 636 617
		f 4 -1063 -1062 974 1055
		mu 0 4 694 695 639 638
		f 4 972 -1064 957 1057
		mu 0 4 691 696 628 603
		f 4 889 -1065 905 1042
		mu 0 4 584 586 596 572
		f 4 900 -1067 -1066 1041
		mu 0 4 589 595 697 680
		f 4 921 -1068 902 1047
		mu 0 4 607 609 698 684
		f 4 -1070 -1069 923 1045
		mu 0 4 682 699 608 606
		f 4 1050 -1072 942 -1071
		mu 0 4 689 688 623 622;
	setAttr ".fc[500:999]"
		f 4 964 948 1071 1053
		mu 0 4 632 624 623 688
		f 4 1058 -1073 968 963
		mu 0 4 631 693 634 633
		f 4 1011 1003 992 1048
		mu 0 4 665 660 653 687
		f 4 -1075 1062 -1074 969
		mu 0 4 637 695 694 618
		f 4 934 1073 1056 -1076
		mu 0 4 615 618 690 569
		f 4 -1077 930 1075 866
		mu 0 4 568 613 615 569
		f 4 949 -1078 926 1052
		mu 0 4 579 627 610 580
		f 4 1025 -1080 -1079 1066
		mu 0 4 595 677 700 697
		f 4 1028 -1081 1027 1067
		mu 0 4 609 679 701 698
		f 4 -1083 -1082 1030 1068
		mu 0 4 699 702 678 608
		f 4 908 909 912 1064
		mu 0 4 586 598 601 596
		f 4 1033 -1085 1032 -1084
		mu 0 4 673 658 664 655
		f 4 -1088 1034 -1087 1085
		mu 0 4 703 659 672 704
		f 4 1035 -1090 -1086 -1089
		mu 0 4 643 645 703 704
		f 4 1036 -1092 1037 -1091
		mu 0 4 646 642 705 706
		f 4 -1095 -1094 1038 -1093
		mu 0 4 707 708 669 674
		f 4 1031 -1097 1094 -1096
		mu 0 4 656 663 708 707
		f 4 999 1001 1005 1084
		mu 0 4 658 657 661 664
		f 4 990 997 1087 -1098
		mu 0 4 650 654 659 703
		f 4 981 983 1097 1089
		mu 0 4 645 644 650 703
		f 4 979 1090 1015 989
		mu 0 4 647 646 706 651
		f 4 -1099 1018 1013 1093
		mu 0 4 708 666 670 669
		f 4 1007 1009 1098 1096
		mu 0 4 663 662 666 708
		f 4 -1100 1092 1024 1061
		mu 0 4 695 707 674 639
		f 4 977 1063 1022 1091
		mu 0 4 642 628 696 705
		f 4 975 1088 -1101 1059
		mu 0 4 629 643 704 693
		f 4 1021 1072 1100 1086
		mu 0 4 672 634 693 704
		f 4 1019 1083 995 1060
		mu 0 4 635 673 655 636
		f 4 993 1095 1099 1074
		mu 0 4 637 656 707 695
		f 4 -1103 1049 -1102 880
		mu 0 4 574 683 689 578
		f 4 1101 1070 952 951
		mu 0 4 578 689 622 626
		f 4 1077 953 1039 929
		mu 0 4 610 627 621 612
		f 4 924 927 1076 -1104
		mu 0 4 581 611 613 568
		f 4 -1105 882 1103 867
		mu 0 4 567 582 581 568
		f 4 -1106 888 1104 1040
		mu 0 4 680 583 582 681
		f 4 -1107 891 1105 1065
		mu 0 4 697 585 583 680
		f 4 -1108 907 1106 1078
		mu 0 4 700 599 585 697
		f 4 913 1109 1082 -1109
		mu 0 4 597 600 702 699
		f 4 903 1108 1069 -1111
		mu 0 4 573 597 699 682
		f 4 870 1110 1043 1102
		mu 0 4 574 573 682 683
		f 3 869 877 873
		mu 0 3 571 574 575
		f 3 881 885 875
		mu 0 3 576 582 577
		f 3 -865 896 892
		mu 0 3 566 570 593
		f 3 931 937 933
		mu 0 3 615 614 616
		f 3 941 945 939
		mu 0 3 619 623 620
		f 3 954 958 916
		mu 0 3 603 630 604
		f 3 962 965 947
		mu 0 3 624 633 625
		f 3 978 986 982
		mu 0 3 644 647 648
		f 3 996 991 1000
		mu 0 3 657 654 653
		f 3 1004 1002 1008
		mu 0 3 662 661 660
		f 3 1012 1016 988
		mu 0 3 667 670 671
		f 5 -1116 -1115 -1114 -1113 1111
		mu 0 5 709 710 711 712 713
		f 4 -1120 -1119 -1118 -1117
		mu 0 4 714 715 716 717
		f 4 -1124 -1123 -1122 -1121
		mu 0 4 718 719 720 714
		f 4 -1128 -1127 -1126 -1125
		mu 0 4 717 721 722 718
		f 4 -1132 -1131 -1130 -1129
		mu 0 4 719 723 724 725
		f 4 -1136 -1135 -1134 -1133
		mu 0 4 725 726 727 720
		f 4 -1139 -1138 -1137 1134
		mu 0 4 726 728 729 727
		f 4 -1143 -1142 -1141 -1140
		mu 0 4 730 731 732 733
		f 4 -1147 -1146 -1145 -1144
		mu 0 4 713 734 735 736
		f 4 -1150 -1149 -1148 1141
		mu 0 4 731 737 738 732
		f 4 -1153 -1152 -1151 1118
		mu 0 4 715 739 740 716
		f 4 -1156 1137 -1155 -1154
		mu 0 4 741 729 728 742
		f 4 -1159 -1158 -1157 1153
		mu 0 4 742 743 744 741
		f 4 -1161 1151 -1160 1157
		mu 0 4 743 740 739 744
		f 4 -1165 -1164 -1163 -1162
		mu 0 4 745 746 747 748
		f 4 -1168 -1167 -1166 1161
		mu 0 4 748 749 750 745
		f 4 -1171 -1170 -1169 1166
		mu 0 4 749 751 752 750
		f 4 -1174 -1173 -1172 1130
		mu 0 4 723 753 754 724
		f 4 -1177 -1176 -1175 1172
		mu 0 4 753 755 756 754
		f 4 -1180 -1179 -1178 1175
		mu 0 4 755 757 758 756
		f 4 -1184 -1183 -1182 -1181
		mu 0 4 759 760 761 758
		f 4 -1188 -1187 -1186 -1185
		mu 0 4 757 762 763 759
		f 4 -1192 -1191 -1190 -1189
		mu 0 4 762 764 765 766
		f 4 -1196 -1195 -1194 -1193
		mu 0 4 766 767 768 763
		f 4 -1199 -1198 -1197 1126
		mu 0 4 721 769 770 722
		f 4 -1201 1197 -1200 1190
		mu 0 4 764 770 769 765
		f 4 -1205 -1204 -1203 -1202
		mu 0 4 746 771 772 773
		f 4 -1209 -1208 -1207 -1206
		mu 0 4 773 774 775 747
		f 4 -1212 1207 -1211 -1210
		mu 0 4 767 775 774 776
		f 4 -1216 -1215 -1214 -1213
		mu 0 4 776 777 778 768
		f 4 -1219 -1218 -1217 1182
		mu 0 4 760 779 780 761
		f 4 -1222 -1221 -1220 1145
		mu 0 4 734 781 782 735
		f 4 -1225 -1224 -1223 1203
		mu 0 4 771 783 784 772
		f 4 -1229 -1228 -1227 -1226
		mu 0 4 785 786 787 788
		f 4 -1233 -1232 -1231 -1230
		mu 0 4 789 790 791 785
		f 4 -1237 -1236 -1235 -1234
		mu 0 4 788 792 793 789
		f 4 -1240 -1239 -1238 1231
		mu 0 4 790 794 795 791
		f 4 -1243 -1242 -1241 1217
		mu 0 4 779 796 797 780
		f 4 -1247 -1246 -1245 -1244
		mu 0 4 798 799 800 795
		f 4 -1251 -1250 -1249 -1248
		mu 0 4 794 801 802 798
		f 4 -1255 -1254 -1253 -1252
		mu 0 4 803 804 805 802
		f 4 -1259 -1258 -1257 -1256
		mu 0 4 801 806 807 803
		f 4 -1263 -1262 -1261 -1260
		mu 0 4 808 809 810 811
		f 4 -1266 1257 -1265 -1264
		mu 0 4 811 807 806 812
		f 4 -1269 -1268 -1267 1214
		mu 0 4 777 813 814 778
		f 4 -1272 -1271 -1270 1220
		mu 0 4 781 815 816 782
		f 4 -1275 -1274 -1273 1148
		mu 0 4 737 817 818 738
		f 4 -1278 1276 -1276 1169
		mu 0 4 751 819 820 752
		f 4 -1280 1253 -1279 1241
		mu 0 4 796 805 804 797
		f 4 -1282 1245 -1281 1267
		mu 0 4 813 800 799 814
		f 4 -1284 1227 -1283 1223
		mu 0 4 783 787 786 784
		f 4 -1286 1261 -1285 1270
		mu 0 4 815 810 809 816
		f 4 -1287 1191 1187 1179
		mu 0 4 755 764 762 757
		f 4 -1289 -1288 1115 1140
		mu 0 4 732 821 822 733
		f 4 1133 -1290 1119 1121
		mu 0 4 720 727 715 714
		f 4 -1293 1167 -1292 -1291
		mu 0 4 823 749 748 824
		f 4 1165 -1295 1142 -1294
		mu 0 4 745 750 825 826
		f 4 1234 1264 -1296 1232
		mu 0 4 827 812 806 828
		f 4 1291 -1299 -1298 -1297
		mu 0 4 824 748 829 830
		f 4 1123 1125 -1300 1131
		mu 0 4 719 718 722 723
		f 4 1162 1206 -1301 1298
		mu 0 4 748 747 775 829
		f 4 1193 -1302 1183 1185
		mu 0 4 763 768 760 759
		f 4 -1304 -1303 1146 1112
		mu 0 4 712 831 734 713
		f 4 -1305 1164 1293 1144
		mu 0 4 832 746 745 833
		f 4 -1307 -1306 1208 1202
		mu 0 4 772 834 774 773
		f 4 1213 -1308 1218 1301
		mu 0 4 768 778 779 760
		f 4 -1310 -1309 1221 1302
		mu 0 4 831 835 781 734
		f 4 1219 -1311 1204 1304
		mu 0 4 832 836 771 746
		f 4 1136 -1312 1152 1289
		mu 0 4 727 729 739 715
		f 4 1147 -1314 -1313 1288
		mu 0 4 732 738 837 821
		f 4 1168 -1315 1149 1294
		mu 0 4 750 752 838 825
		f 4 -1317 -1316 1170 1292
		mu 0 4 823 839 751 749
		f 4 1297 -1319 1189 -1318
		mu 0 4 830 829 766 765
		f 4 1211 1195 1318 1300
		mu 0 4 775 767 766 829
		f 4 1305 -1320 1215 1210
		mu 0 4 774 834 777 776
		f 4 1258 1250 1239 1295
		mu 0 4 806 801 794 828
		f 4 -1322 1309 -1321 1216
		mu 0 4 780 835 831 761
		f 4 1181 1320 1303 -1323
		mu 0 4 758 761 831 712
		f 4 -1324 1177 1322 1113
		mu 0 4 711 756 758 712
		f 4 1196 -1325 1173 1299
		mu 0 4 722 770 753 723
		f 4 1272 -1327 -1326 1313
		mu 0 4 738 818 840 837
		f 4 1275 -1328 1274 1314
		mu 0 4 752 820 841 838
		f 4 -1330 -1329 1277 1315
		mu 0 4 839 842 819 751
		f 4 1155 1156 1159 1311
		mu 0 4 729 741 744 739
		f 4 1280 -1332 1279 -1331
		mu 0 4 814 799 805 796
		f 4 -1335 1281 -1334 1332
		mu 0 4 843 800 813 844
		f 4 1282 -1337 -1333 -1336
		mu 0 4 784 786 843 844
		f 4 1283 -1339 1284 -1338
		mu 0 4 787 783 845 846
		f 4 -1342 -1341 1285 -1340
		mu 0 4 847 848 810 815
		f 4 1278 -1344 1341 -1343
		mu 0 4 797 804 848 847
		f 4 1246 1248 1252 1331
		mu 0 4 799 798 802 805
		f 4 1237 1244 1334 -1345
		mu 0 4 791 795 800 843
		f 4 1228 1230 1344 1336
		mu 0 4 786 785 791 843
		f 4 1226 1337 1262 1236
		mu 0 4 788 787 846 792
		f 4 -1346 1265 1260 1340
		mu 0 4 848 807 811 810
		f 4 1254 1256 1345 1343
		mu 0 4 804 803 807 848
		f 4 -1347 1339 1271 1308
		mu 0 4 835 847 815 781
		f 4 1224 1310 1269 1338
		mu 0 4 783 771 836 845
		f 4 1222 1335 -1348 1306
		mu 0 4 772 784 844 834
		f 4 1268 1319 1347 1333
		mu 0 4 813 777 834 844
		f 4 1266 1330 1242 1307
		mu 0 4 778 814 796 779
		f 4 1240 1342 1346 1321
		mu 0 4 780 797 847 835
		f 4 -1350 1296 -1349 1127
		mu 0 4 717 824 830 721
		f 4 1348 1317 1199 1198
		mu 0 4 721 830 765 769
		f 4 1324 1200 1286 1176
		mu 0 4 753 770 764 755
		f 4 1171 1174 1323 -1351
		mu 0 4 724 754 756 711
		f 4 -1352 1129 1350 1114
		mu 0 4 710 725 724 711
		f 4 -1353 1135 1351 1287
		mu 0 4 821 726 725 822
		f 4 -1354 1138 1352 1312
		mu 0 4 837 728 726 821
		f 4 -1355 1154 1353 1325
		mu 0 4 840 742 728 837
		f 4 1160 1356 1329 -1356
		mu 0 4 740 743 842 839
		f 4 1150 1355 1316 -1358
		mu 0 4 716 740 839 823
		f 4 1117 1357 1290 1349
		mu 0 4 717 716 823 824
		f 3 1116 1124 1120
		mu 0 3 714 717 718
		f 3 1128 1132 1122
		mu 0 3 719 725 720
		f 3 -1112 1143 1139
		mu 0 3 709 713 736
		f 3 1178 1184 1180
		mu 0 3 758 757 759
		f 3 1188 1192 1186
		mu 0 3 762 766 763
		f 3 1201 1205 1163
		mu 0 3 746 773 747
		f 3 1209 1212 1194
		mu 0 3 767 776 768
		f 3 1225 1233 1229
		mu 0 3 785 788 789
		f 3 1243 1238 1247
		mu 0 3 798 795 794
		f 3 1251 1249 1255
		mu 0 3 803 802 801
		f 3 1259 1263 1235
		mu 0 3 808 811 812
		f 5 -1378 1376 1359 1368 1367
		mu 0 5 849 850 851 852 853
		f 4 1382 1383 1384 1385
		mu 0 4 854 855 856 857
		f 4 1386 1387 1388 1389
		mu 0 4 858 854 859 860
		f 4 1390 1391 1392 1393
		mu 0 4 855 858 861 862
		f 4 1394 1395 1396 1397
		mu 0 4 860 863 864 865
		f 4 1398 1399 1400 1401
		mu 0 4 863 859 866 867
		f 4 -1401 1402 1403 1404
		mu 0 4 867 866 868 869
		f 4 1405 1406 1407 1408
		mu 0 4 870 871 872 873
		f 4 1409 1410 1411 1412
		mu 0 4 850 874 875 876
		f 4 -1408 1413 1414 1415
		mu 0 4 873 872 877 878
		f 4 -1385 1416 1417 1418
		mu 0 4 857 856 879 880
		f 4 1419 1420 -1404 1421
		mu 0 4 881 882 869 868
		f 4 -1420 1422 1423 1424
		mu 0 4 882 881 883 884
		f 4 -1424 1425 -1418 1426
		mu 0 4 884 883 880 879
		f 4 1427 1428 1429 1430
		mu 0 4 885 886 887 888
		f 4 -1428 1431 1432 1433
		mu 0 4 886 885 889 890
		f 4 -1433 1434 1435 1436
		mu 0 4 890 889 891 892
		f 4 -1397 1437 1438 1439
		mu 0 4 865 864 893 894
		f 4 -1439 1440 1441 1442
		mu 0 4 894 893 895 896
		f 4 -1442 1443 1444 1445
		mu 0 4 896 895 897 898
		f 4 1446 1447 1448 1449
		mu 0 4 899 897 900 901
		f 4 1450 1451 1452 1453
		mu 0 4 898 899 902 903
		f 4 1454 1455 1456 1457
		mu 0 4 903 904 905 906
		f 4 1458 1459 1460 1461
		mu 0 4 904 902 907 908
		f 4 -1393 1462 1463 1464
		mu 0 4 862 861 909 910
		f 4 -1457 1465 -1464 1466
		mu 0 4 906 905 910 909
		f 4 1467 1468 1469 1470
		mu 0 4 888 911 912 913
		f 4 1471 1472 1473 1474
		mu 0 4 911 887 914 915
		f 4 1475 1476 -1474 1477
		mu 0 4 908 916 915 914
		f 4 1478 1479 1480 1481
		mu 0 4 916 907 917 918
		f 4 -1449 1482 1483 1484
		mu 0 4 901 900 919 920
		f 4 -1412 1485 1486 1487
		mu 0 4 921 922 923 924
		f 4 -1470 1488 1489 1490
		mu 0 4 913 912 925 926
		f 4 1491 1492 1493 1494
		mu 0 4 927 928 929 930
		f 4 1495 1496 1497 1498
		mu 0 4 931 927 932 933
		f 4 1499 1500 1501 1502
		mu 0 4 928 931 934 935
		f 4 -1498 1503 1504 1505
		mu 0 4 933 932 936 937
		f 4 -1484 1506 1507 1508
		mu 0 4 920 919 938 939
		f 4 1509 1510 1511 1512
		mu 0 4 940 936 941 942
		f 4 1513 1514 1515 1516
		mu 0 4 937 940 943 944
		f 4 1517 1518 1519 1520
		mu 0 4 945 943 946 947
		f 4 1521 1522 1523 1524
		mu 0 4 944 945 948 949
		f 4 1525 1526 1527 1528
		mu 0 4 950 951 952 953
		f 4 1529 1530 -1524 1531
		mu 0 4 951 954 949 948
		f 4 -1481 1532 1533 1534
		mu 0 4 918 917 955 956
		f 4 -1487 1535 1536 1537
		mu 0 4 924 923 957 958
		f 4 -1415 1538 1379 1539
		mu 0 4 878 877 959 960
		f 4 -1436 1540 -1382 1541
		mu 0 4 892 891 961 962
		f 4 -1508 1542 -1520 1543
		mu 0 4 939 938 947 946
		f 4 -1534 1544 -1512 1545
		mu 0 4 956 955 942 941
		f 4 -1490 1546 -1494 1547
		mu 0 4 926 925 930 929
		f 4 -1537 1548 -1528 1549
		mu 0 4 958 957 953 952
		f 4 -1446 -1454 -1458 1550
		mu 0 4 896 898 903 906
		f 4 -1407 -1368 1369 1551
		mu 0 4 872 871 963 964
		f 4 -1388 -1386 1552 -1400
		mu 0 4 859 854 857 866
		f 4 1375 1553 -1434 1554
		mu 0 4 965 966 886 890
		f 4 1555 -1409 1556 -1432
		mu 0 4 885 967 968 889
		f 4 -1499 1557 -1531 -1501
		mu 0 4 969 970 949 954
		f 4 1366 1365 1558 -1554
		mu 0 4 966 971 972 886
		f 4 -1398 1559 -1392 -1390
		mu 0 4 860 865 861 858
		f 4 -1559 1560 -1473 -1429
		mu 0 4 886 972 914 887
		f 4 -1452 -1450 1561 -1460
		mu 0 4 902 899 901 907
		f 4 -1377 -1413 1562 1358
		mu 0 4 851 850 876 973
		f 4 -1411 -1556 -1431 1563
		mu 0 4 974 975 885 888
		f 4 -1469 -1475 1564 1565
		mu 0 4 912 911 915 976
		f 4 -1562 -1485 1566 -1480
		mu 0 4 907 901 920 917
		f 4 -1563 -1488 1567 1361
		mu 0 4 977 921 924 978
		f 4 -1564 -1471 1568 -1486
		mu 0 4 974 888 913 979
		f 4 -1553 -1419 1569 -1403
		mu 0 4 866 857 880 868
		f 4 -1552 1370 1570 -1414
		mu 0 4 872 964 980 877
		f 4 -1557 -1416 1571 -1435
		mu 0 4 889 968 981 891
		f 4 -1555 -1437 1572 1374
		mu 0 4 965 890 892 982
		f 4 1573 -1456 1574 -1366
		mu 0 4 971 905 904 972
		f 4 -1561 -1575 -1462 -1478
		mu 0 4 914 972 904 908
		f 4 -1477 -1482 1575 -1565
		mu 0 4 915 916 918 976
		f 4 -1558 -1506 -1517 -1525
		mu 0 4 949 970 937 944
		f 4 -1483 1576 -1362 1577
		mu 0 4 919 900 977 978
		f 4 1578 -1359 -1577 -1448
		mu 0 4 897 851 973 900
		f 4 -1360 -1579 -1444 1579
		mu 0 4 852 851 897 895
		f 4 -1560 -1440 1580 -1463
		mu 0 4 861 865 894 909
		f 4 -1571 1372 1371 -1539
		mu 0 4 877 980 983 959
		f 4 -1572 -1540 1378 -1541
		mu 0 4 891 981 984 961
		f 4 -1573 -1542 1380 1373
		mu 0 4 982 892 962 985
		f 4 -1570 -1426 -1423 -1422
		mu 0 4 868 880 883 881
		f 4 1581 -1544 1582 -1545
		mu 0 4 955 939 946 942
		f 4 -1365 1583 -1546 1584
		mu 0 4 986 987 956 941
		f 4 1585 1364 1586 -1547
		mu 0 4 925 987 986 930
		f 4 1587 -1549 1588 -1548
		mu 0 4 929 988 989 926
		f 4 1589 -1550 1590 1362
		mu 0 4 990 958 952 991
		f 4 1591 -1363 1592 -1543
		mu 0 4 938 990 991 947
		f 4 -1583 -1519 -1515 -1513
		mu 0 4 942 946 943 940
		f 4 1593 -1585 -1511 -1504
		mu 0 4 932 986 941 936
		f 4 -1587 -1594 -1497 -1495
		mu 0 4 930 986 932 927
		f 4 -1503 -1529 -1588 -1493
		mu 0 4 928 935 988 929
		f 4 -1591 -1527 -1532 1594
		mu 0 4 991 952 951 948
		f 4 -1593 -1595 -1523 -1521
		mu 0 4 947 991 948 945
		f 4 -1568 -1538 -1590 1363
		mu 0 4 978 924 958 990
		f 4 -1589 -1536 -1569 -1491
		mu 0 4 926 989 979 913
		f 4 -1566 1360 -1586 -1489
		mu 0 4 912 976 987 925
		f 4 -1584 -1361 -1576 -1535
		mu 0 4 956 987 976 918
		f 4 -1567 -1509 -1582 -1533
		mu 0 4 917 920 939 955
		f 4 -1578 -1364 -1592 -1507
		mu 0 4 919 978 990 938
		f 4 -1394 1595 -1367 1596
		mu 0 4 855 862 971 966
		f 4 -1465 -1466 -1574 -1596
		mu 0 4 862 910 905 971
		f 4 -1443 -1551 -1467 -1581
		mu 0 4 894 896 906 909
		f 4 1597 -1580 -1441 -1438
		mu 0 4 864 852 895 893
		f 4 -1369 -1598 -1396 1598
		mu 0 4 853 852 864 863
		f 4 -1370 -1599 -1402 1599
		mu 0 4 964 963 863 867
		f 4 -1371 -1600 -1405 1600
		mu 0 4 980 964 867 869
		f 4 -1373 -1601 -1421 1601
		mu 0 4 983 980 869 882
		f 4 1603 -1374 -1603 -1427
		mu 0 4 879 982 985 884
		f 4 1604 -1375 -1604 -1417
		mu 0 4 856 965 982 879
		f 4 -1597 -1376 -1605 -1384
		mu 0 4 855 966 965 856
		f 3 -1387 -1391 -1383
		mu 0 3 854 858 855
		f 3 -1389 -1399 -1395
		mu 0 3 860 859 863
		f 3 -1406 -1410 1377
		mu 0 3 849 874 850
		f 3 -1447 -1451 -1445
		mu 0 3 897 899 898
		f 3 -1453 -1459 -1455
		mu 0 3 903 902 904
		f 3 -1430 -1472 -1468
		mu 0 3 888 887 911
		f 3 -1461 -1479 -1476
		mu 0 3 908 907 916
		f 3 -1496 -1500 -1492
		mu 0 3 927 931 928
		f 3 -1514 -1505 -1510
		mu 0 3 940 937 936
		f 3 -1522 -1516 -1518
		mu 0 3 945 944 943
		f 3 -1502 -1530 -1526
		mu 0 3 950 954 951
		f 4 1623 1622 -1607 -1622
		mu 0 4 992 993 994 995
		f 4 -1612 1609 1606 1619
		mu 0 4 996 997 995 994
		f 4 -1614 1610 1607 1627
		mu 0 4 998 999 1000 1001
		f 4 1625 -1608 -1617 -1623
		mu 0 4 993 1002 1003 994
		f 4 -1619 -1620 1616 -1611
		mu 0 4 1004 996 994 1003
		f 4 -1616 1617 -1624 -1606
		mu 0 4 1005 1006 993 992
		f 4 -1609 -1625 -1626 -1618
		mu 0 4 1006 1007 1002 993
		f 4 -1627 -1628 1624 -1613
		mu 0 4 1008 998 1001 1009
		f 4 1636 1637 1638 1639
		mu 0 4 1010 1011 1012 1013
		f 4 -1637 1640 1641 1642
		mu 0 4 1014 1015 1016 1017
		f 4 -1642 1643 1644 1645
		mu 0 4 1017 1016 1018 1019
		f 4 -1639 1646 1647 1648
		mu 0 4 1013 1012 1020 1021
		f 4 -1648 1649 1650 1651
		mu 0 4 1022 1023 1024 1025
		f 4 -1651 1652 1653 1654
		mu 0 4 1025 1024 1026 1027
		f 4 1655 -1641 -1640 1656
		mu 0 4 1028 1016 1029 1030
		f 4 1659 -1657 -1649 -1652
		mu 0 4 1025 1028 1030 1022
		f 5 -1708 1708 -1633 1630 -1653
		mu 0 5 1024 1031 1032 1033 1026
		f 4 -1655 1635 -1629 -1660
		mu 0 4 1025 1027 1034 1028
		f 4 1620 -1644 -1656 1628
		mu 0 4 1034 1018 1016 1028
		f 4 -1659 -1646 -1615 -1630
		mu 0 4 1035 1017 1019 1036
		f 4 1663 1662 -1662 -1661
		mu 0 4 1037 1038 1039 1040
		f 4 -1667 -1663 -1666 1664
		mu 0 4 1041 1039 1038 1042
		f 4 -1671 -1670 -1669 1667
		mu 0 4 1043 1044 1045 1046
		f 4 1661 1672 1669 -1672
		mu 0 4 1040 1039 1047 1048
		f 4 1668 -1673 1666 1673
		mu 0 4 1049 1047 1039 1041
		f 4 1675 1660 -1675 1615
		mu 0 4 1005 1037 1040 1006
		f 4 1674 1671 1676 1608
		mu 0 4 1006 1040 1048 1007
		f 4 1612 -1677 1670 1677
		mu 0 4 1050 1051 1044 1043
		f 4 -1684 -1683 -1682 -1681
		mu 0 4 1052 1053 1054 1055
		f 4 -1687 -1686 -1685 1680
		mu 0 4 1056 1057 1058 1059
		f 4 -1689 -1645 -1688 1685
		mu 0 4 1057 1060 1018 1058
		f 4 -1692 -1691 -1690 1682
		mu 0 4 1053 1061 1062 1054
		f 4 -1695 -1694 -1693 1690
		mu 0 4 1063 1064 1065 1066
		f 4 -1697 -1654 -1696 1693
		mu 0 4 1064 1027 1067 1065
		f 4 -1699 1683 1684 -1698
		mu 0 4 1068 1069 1070 1058
		f 4 1694 1691 1698 -1703
		mu 0 4 1064 1063 1069 1068
		f 5 1695 -1631 1679 1713 1712
		mu 0 5 1065 1067 1071 1072 1073
		f 4 1702 1703 -1636 1696
		mu 0 4 1064 1068 1034 1027
		f 4 -1704 1697 1687 -1621
		mu 0 4 1034 1068 1058 1018
		f 4 1704 1614 1688 1700
		mu 0 4 1074 1075 1060 1057
		f 5 -1707 -1658 -1643 1658 1634
		mu 0 5 1076 1077 1014 1017 1035
		f 5 -1710 -1634 1626 -1632 1632
		mu 0 5 1032 1078 998 1008 1033
		f 5 -1712 -1702 -1701 1686 1699
		mu 0 5 1079 1080 1074 1057 1056
		f 5 -1715 -1680 1631 -1678 1678
		mu 0 5 1081 1072 1071 1050 1043
		f 4 1715 1716 1717 1718
		mu 0 4 1077 1082 1083 1084
		f 4 -1718 1719 1720 1721
		mu 0 4 1084 1083 1085 1086
		f 4 -1721 1722 1723 1724
		mu 0 4 1087 1088 1078 1031
		f 4 1725 1726 1727 1728
		mu 0 4 1089 1079 1090 1091
		f 4 -1728 1729 1730 1731
		mu 0 4 1091 1090 1092 1093
		f 4 -1731 1732 1733 1734
		mu 0 4 1094 1095 1073 1081
		f 4 -1717 1705 1611 1735
		mu 0 4 1083 1082 997 996
		f 4 1736 1613 1633 -1723
		mu 0 4 1088 999 998 1078
		f 4 -1736 1618 -1737 -1720
		mu 0 4 1083 996 1004 1085
		f 4 -1719 1737 -1638 1657
		mu 0 4 1077 1084 1012 1011
		f 4 -1725 1707 -1650 1738
		mu 0 4 1087 1031 1024 1096
		f 4 -1738 -1722 -1739 -1647
		mu 0 4 1012 1084 1086 1020
		f 4 -1729 1739 -1665 -1711
		mu 0 4 1089 1091 1041 1042
		f 4 -1735 -1679 -1668 1740
		mu 0 4 1094 1081 1043 1046
		f 4 -1732 -1741 -1674 -1740
		mu 0 4 1091 1093 1049 1041
		f 4 -1727 -1700 1681 1741
		mu 0 4 1090 1079 1055 1054
		f 4 1742 1692 -1713 -1733
		mu 0 4 1095 1097 1065 1073
		f 4 1689 -1743 -1730 -1742
		mu 0 4 1054 1062 1092 1090
		f 3 -1716 1706 1743
		mu 0 3 1082 1077 1076
		f 3 -1724 1709 -1709
		mu 0 3 1031 1078 1032
		f 3 1711 -1726 1744
		mu 0 3 1080 1079 1089
		f 3 -1714 1714 -1734
		mu 0 3 1073 1072 1081
		f 4 1748 -1748 -1747 1745
		mu 0 4 1098 1099 1100 1101
		f 4 1752 -1752 -1751 1749
		mu 0 4 1102 1103 1104 1105
		f 4 1756 -1756 -1755 -1754
		mu 0 4 1106 1107 1108 1109
		f 4 1760 -1760 -1759 -1758
		mu 0 4 1110 1111 1112 1113
		f 4 -1764 -1763 -1753 1761
		mu 0 4 1114 1115 1116 1117
		f 4 1767 -1767 -1766 1764
		mu 0 4 1118 1119 1120 1121
		f 4 1770 -1770 -1768 1768
		mu 0 4 1122 1123 1119 1118
		f 4 -1774 -1773 -1771 1771
		mu 0 4 1124 1125 1126 1127
		f 4 1777 -1777 -1776 1774
		mu 0 4 1128 1129 1130 1131
		f 4 1780 -1780 -1757 1778
		mu 0 4 1132 1133 1107 1106
		f 4 1784 -1784 -1783 1781
		mu 0 4 1134 1135 1136 1137
		f 4 1750 -1788 -1787 -1786
		mu 0 4 1105 1104 1138 1139
		f 4 -1791 -1790 -1781 1788
		mu 0 4 1140 1141 1142 1143
		f 4 -1794 -1793 -1792 1762
		mu 0 4 1115 1144 1145 1116
		f 4 1796 -1796 -1795 1783
		mu 0 4 1135 1146 1147 1136
		f 4 1799 -1799 -1798 1787
		mu 0 4 1104 1148 1149 1138
		f 4 1791 -1801 -1800 1751
		mu 0 4 1103 1150 1148 1104
		f 4 -1804 -1803 -1802 1792
		mu 0 4 1144 1151 1152 1145
		f 4 1806 -1806 -1805 1795
		mu 0 4 1146 1153 1154 1147
		f 4 1809 -1809 -1808 1798
		mu 0 4 1148 1155 1156 1149
		f 4 1801 -1811 -1810 1800
		mu 0 4 1150 1157 1155 1148
		f 4 -1814 -1789 -1813 1811
		mu 0 4 1158 1140 1143 1159
		f 4 1816 1757 -1816 1814
		mu 0 4 1160 1110 1113 1161
		f 4 1819 1753 -1819 1817
		mu 0 4 1162 1106 1109 1163
		f 4 1812 -1779 -1820 1820
		mu 0 4 1164 1132 1106 1162
		f 4 1754 -1823 -1761 -1822
		mu 0 4 1109 1108 1111 1110
		f 4 -1825 -1778 1823 1765
		mu 0 4 1120 1129 1128 1121
		f 4 1827 1826 -1826 1747
		mu 0 4 1099 1165 1166 1100
		f 4 1775 -1830 1773 1828
		mu 0 4 1131 1130 1125 1124
		f 4 1758 -1832 1790 1830
		mu 0 4 1113 1112 1141 1140
		f 4 1815 -1831 1813 1832
		mu 0 4 1161 1113 1140 1158
		f 4 1804 -1835 1803 1833
		mu 0 4 1147 1154 1151 1144
		f 4 1794 -1834 1793 1835
		mu 0 4 1136 1147 1144 1115
		f 4 1782 -1836 1763 1836
		mu 0 4 1137 1136 1115 1114
		f 4 -1839 -1785 -1838 1786
		mu 0 4 1138 1135 1134 1139
		f 4 -1840 -1797 1838 1797
		mu 0 4 1149 1146 1135 1138
		f 4 -1841 -1807 1839 1807
		mu 0 4 1156 1153 1146 1149
		f 4 1821 -1817 1841 1818
		mu 0 4 1109 1110 1160 1163
		f 4 -1844 -1812 -1843 1802
		mu 0 4 1151 1158 1159 1152
		f 4 1844 -1833 1843 1834
		mu 0 4 1154 1161 1158 1151
		f 4 1845 -1815 -1845 1805
		mu 0 4 1153 1160 1161 1154
		f 4 -1842 -1846 1840 1846
		mu 0 4 1163 1160 1153 1156
		f 4 1847 -1818 -1847 1808
		mu 0 4 1155 1162 1163 1156
		f 4 1842 -1821 -1848 1810
		mu 0 4 1157 1164 1162 1155
		f 4 1849 -1775 -1849 1759
		mu 0 4 1111 1128 1131 1112
		f 4 1850 -1824 -1850 1822
		mu 0 4 1108 1121 1128 1111
		f 4 1851 -1765 -1851 1755
		mu 0 4 1107 1118 1121 1108
		f 4 1852 -1769 -1852 1779
		mu 0 4 1133 1122 1118 1107
		f 4 -1854 -1772 -1853 1789
		mu 0 4 1141 1124 1127 1142
		f 4 1848 -1829 1853 1831
		mu 0 4 1112 1131 1124 1141
		f 4 1855 -1827 -1855 1776
		mu 0 4 1129 1166 1165 1130
		f 4 1825 -1856 1824 1856
		mu 0 4 1100 1166 1129 1120
		f 4 1857 1746 -1857 1766
		mu 0 4 1119 1101 1100 1120
		f 4 1858 -1746 -1858 1769
		mu 0 4 1123 1167 1101 1119
		f 4 -1860 -1749 -1859 1772
		mu 0 4 1125 1099 1098 1126
		f 4 1854 -1828 1859 1829
		mu 0 4 1130 1165 1099 1125
		f 5 -1880 1878 1861 1870 1869
		mu 0 5 1168 1169 1170 1171 1172
		f 4 1884 1885 1886 1887
		mu 0 4 1173 1174 1175 1176
		f 4 1888 1889 1890 1891
		mu 0 4 1177 1173 1178 1179
		f 4 1892 1893 1894 1895
		mu 0 4 1174 1177 1180 1181
		f 4 1896 1897 1898 1899
		mu 0 4 1179 1182 1183 1184
		f 4 1900 1901 1902 1903
		mu 0 4 1182 1178 1185 1186
		f 4 -1903 1904 1905 1906
		mu 0 4 1186 1185 1187 1188
		f 4 1907 1908 1909 1910
		mu 0 4 1189 1190 1191 1192
		f 4 1911 1912 1913 1914
		mu 0 4 1169 1193 1194 1195
		f 4 -1910 1915 1916 1917
		mu 0 4 1192 1191 1196 1197
		f 4 -1887 1918 1919 1920
		mu 0 4 1176 1175 1198 1199
		f 4 1921 1922 -1906 1923
		mu 0 4 1200 1201 1188 1187
		f 4 -1922 1924 1925 1926
		mu 0 4 1201 1200 1202 1203
		f 4 -1926 1927 -1920 1928
		mu 0 4 1203 1202 1199 1198
		f 4 1929 1930 1931 1932
		mu 0 4 1204 1205 1206 1207
		f 4 -1930 1933 1934 1935
		mu 0 4 1205 1204 1208 1209
		f 4 -1935 1936 1937 1938
		mu 0 4 1209 1208 1210 1211
		f 4 -1899 1939 1940 1941
		mu 0 4 1184 1183 1212 1213
		f 4 -1941 1942 1943 1944
		mu 0 4 1213 1212 1214 1215
		f 4 -1944 1945 1946 1947
		mu 0 4 1215 1214 1216 1217
		f 4 1948 1949 1950 1951
		mu 0 4 1218 1216 1219 1220
		f 4 1952 1953 1954 1955
		mu 0 4 1217 1218 1221 1222
		f 4 1956 1957 1958 1959
		mu 0 4 1222 1223 1224 1225
		f 4 1960 1961 1962 1963
		mu 0 4 1223 1221 1226 1227
		f 4 -1895 1964 1965 1966
		mu 0 4 1181 1180 1228 1229
		f 4 -1959 1967 -1966 1968
		mu 0 4 1225 1224 1229 1228
		f 4 1969 1970 1971 1972
		mu 0 4 1207 1230 1231 1232
		f 4 1973 1974 1975 1976
		mu 0 4 1230 1206 1233 1234
		f 4 1977 1978 -1976 1979
		mu 0 4 1227 1235 1234 1233
		f 4 1980 1981 1982 1983
		mu 0 4 1235 1226 1236 1237
		f 4 -1951 1984 1985 1986
		mu 0 4 1220 1219 1238 1239
		f 4 -1914 1987 1988 1989
		mu 0 4 1195 1194 1240 1241
		f 4 -1972 1990 1991 1992
		mu 0 4 1232 1231 1242 1243
		f 4 1993 1994 1995 1996
		mu 0 4 1244 1245 1246 1247
		f 4 1997 1998 1999 2000
		mu 0 4 1248 1244 1249 1250
		f 4 2001 2002 2003 2004
		mu 0 4 1245 1248 1251 1252
		f 4 -2000 2005 2006 2007
		mu 0 4 1250 1249 1253 1254
		f 4 -1986 2008 2009 2010
		mu 0 4 1239 1238 1255 1256
		f 4 2011 2012 2013 2014
		mu 0 4 1257 1253 1258 1259
		f 4 2015 2016 2017 2018
		mu 0 4 1254 1257 1260 1261
		f 4 2019 2020 2021 2022
		mu 0 4 1262 1260 1263 1264
		f 4 2023 2024 2025 2026
		mu 0 4 1261 1262 1265 1266
		f 4 2027 2028 2029 2030
		mu 0 4 1267 1268 1269 1270
		f 4 2031 2032 -2026 2033
		mu 0 4 1268 1271 1266 1265
		f 4 -1983 2034 2035 2036
		mu 0 4 1237 1236 1272 1273
		f 4 -1989 2037 2038 2039
		mu 0 4 1241 1240 1274 1275
		f 4 -1917 2040 1881 2041
		mu 0 4 1197 1196 1276 1277
		f 4 -1938 2042 -1884 2043
		mu 0 4 1211 1210 1278 1279
		f 4 -2010 2044 -2022 2045
		mu 0 4 1256 1255 1264 1263
		f 4 -2036 2046 -2014 2047
		mu 0 4 1273 1272 1259 1258
		f 4 -1992 2048 -1996 2049
		mu 0 4 1243 1242 1247 1246
		f 4 -2039 2050 -2030 2051
		mu 0 4 1275 1274 1270 1269
		f 4 -1948 -1956 -1960 2052
		mu 0 4 1215 1217 1222 1225
		f 4 -1909 -1870 1871 2053
		mu 0 4 1191 1190 1280 1281
		f 4 -1890 -1888 2054 -1902
		mu 0 4 1178 1173 1176 1185
		f 4 1877 2055 -1936 2056
		mu 0 4 1282 1283 1205 1209
		f 4 2057 -1911 2058 -1934
		mu 0 4 1204 1284 1285 1208
		f 4 -2001 2059 -2033 -2003
		mu 0 4 1248 1250 1266 1271
		f 4 1868 1867 2060 -2056
		mu 0 4 1283 1286 1287 1205
		f 4 -1900 2061 -1894 -1892
		mu 0 4 1179 1184 1180 1177
		f 4 -2061 2062 -1975 -1931
		mu 0 4 1205 1287 1233 1206
		f 4 -1954 -1952 2063 -1962
		mu 0 4 1221 1218 1220 1226
		f 4 -1879 -1915 2064 1860
		mu 0 4 1170 1169 1195 1288
		f 4 -1913 -2058 -1933 2065
		mu 0 4 1289 1290 1204 1207
		f 4 -1971 -1977 2066 2067
		mu 0 4 1231 1230 1234 1291
		f 4 -2064 -1987 2068 -1982
		mu 0 4 1226 1220 1239 1236
		f 4 -2065 -1990 2069 1863
		mu 0 4 1288 1195 1241 1292
		f 4 -2066 -1973 2070 -1988
		mu 0 4 1289 1207 1232 1293
		f 4 -2055 -1921 2071 -1905
		mu 0 4 1185 1176 1199 1187
		f 4 -2054 1872 2072 -1916
		mu 0 4 1191 1281 1294 1196
		f 4 -2059 -1918 2073 -1937
		mu 0 4 1208 1285 1295 1210
		f 4 -2057 -1939 2074 1876
		mu 0 4 1282 1209 1211 1296
		f 4 2075 -1958 2076 -1868
		mu 0 4 1286 1224 1223 1287
		f 4 -2063 -2077 -1964 -1980
		mu 0 4 1233 1287 1223 1227
		f 4 -1979 -1984 2077 -2067
		mu 0 4 1234 1235 1237 1291
		f 4 -2060 -2008 -2019 -2027
		mu 0 4 1266 1250 1254 1261
		f 4 -1985 2078 -1864 2079
		mu 0 4 1238 1219 1288 1292
		f 4 2080 -1861 -2079 -1950
		mu 0 4 1216 1170 1288 1219
		f 4 -1862 -2081 -1946 2081
		mu 0 4 1171 1170 1216 1214;
	setAttr ".fc[1000:1499]"
		f 4 -2062 -1942 2082 -1965
		mu 0 4 1180 1184 1213 1228
		f 4 -2073 1874 1873 -2041
		mu 0 4 1196 1294 1297 1276
		f 4 -2074 -2042 1880 -2043
		mu 0 4 1210 1295 1298 1278
		f 4 -2075 -2044 1882 1875
		mu 0 4 1296 1211 1279 1299
		f 4 -2072 -1928 -1925 -1924
		mu 0 4 1187 1199 1202 1200
		f 4 2083 -2046 2084 -2047
		mu 0 4 1272 1256 1263 1259
		f 4 -1867 2085 -2048 2086
		mu 0 4 1300 1301 1273 1258
		f 4 2087 1866 2088 -2049
		mu 0 4 1242 1301 1300 1247
		f 4 2089 -2051 2090 -2050
		mu 0 4 1246 1302 1303 1243
		f 4 2091 -2052 2092 1864
		mu 0 4 1304 1275 1269 1305
		f 4 2093 -1865 2094 -2045
		mu 0 4 1255 1304 1305 1264
		f 4 -2085 -2021 -2017 -2015
		mu 0 4 1259 1263 1260 1257
		f 4 2095 -2087 -2013 -2006
		mu 0 4 1249 1300 1258 1253
		f 4 -2089 -2096 -1999 -1997
		mu 0 4 1247 1300 1249 1244
		f 4 -2005 -2031 -2090 -1995
		mu 0 4 1245 1252 1302 1246
		f 4 -2093 -2029 -2034 2096
		mu 0 4 1305 1269 1268 1265
		f 4 -2095 -2097 -2025 -2023
		mu 0 4 1264 1305 1265 1262
		f 4 -2070 -2040 -2092 1865
		mu 0 4 1292 1241 1275 1304
		f 4 -2091 -2038 -2071 -1993
		mu 0 4 1243 1303 1293 1232
		f 4 -2068 1862 -2088 -1991
		mu 0 4 1231 1291 1301 1242
		f 4 -2086 -1863 -2078 -2037
		mu 0 4 1273 1301 1291 1237
		f 4 -2069 -2011 -2084 -2035
		mu 0 4 1236 1239 1256 1272
		f 4 -2080 -1866 -2094 -2009
		mu 0 4 1238 1292 1304 1255
		f 4 -1896 2097 -1869 2098
		mu 0 4 1174 1181 1286 1283
		f 4 -1967 -1968 -2076 -2098
		mu 0 4 1181 1229 1224 1286
		f 4 -1945 -2053 -1969 -2083
		mu 0 4 1213 1215 1225 1228
		f 4 2099 -2082 -1943 -1940
		mu 0 4 1183 1171 1214 1212
		f 4 -1871 -2100 -1898 2100
		mu 0 4 1172 1171 1183 1182
		f 4 -1872 -2101 -1904 2101
		mu 0 4 1281 1280 1182 1186
		f 4 -1873 -2102 -1907 2102
		mu 0 4 1294 1281 1186 1188
		f 4 -1875 -2103 -1923 2103
		mu 0 4 1297 1294 1188 1201
		f 4 2105 -1876 -2105 -1929
		mu 0 4 1198 1296 1299 1203
		f 4 2106 -1877 -2106 -1919
		mu 0 4 1175 1282 1296 1198
		f 4 -2099 -1878 -2107 -1886
		mu 0 4 1174 1283 1282 1175
		f 3 -1889 -1893 -1885
		mu 0 3 1173 1177 1174
		f 3 -1891 -1901 -1897
		mu 0 3 1179 1178 1182
		f 3 -1908 -1912 1879
		mu 0 3 1168 1193 1169
		f 3 -1949 -1953 -1947
		mu 0 3 1216 1218 1217
		f 3 -1955 -1961 -1957
		mu 0 3 1222 1221 1223
		f 3 -1932 -1974 -1970
		mu 0 3 1207 1206 1230
		f 3 -1963 -1981 -1978
		mu 0 3 1227 1226 1235
		f 3 -1998 -2002 -1994
		mu 0 3 1244 1248 1245
		f 3 -2016 -2007 -2012
		mu 0 3 1257 1254 1253
		f 3 -2024 -2018 -2020
		mu 0 3 1262 1261 1260
		f 3 -2004 -2032 -2028
		mu 0 3 1267 1271 1268
		f 4 -2114 2115 2165 -2119
		mu 0 4 1306 1307 1308 1309
		f 4 -2111 2111 2142 -2113
		mu 0 4 1310 1311 1312 1313
		f 4 2133 2161 2204 -2128
		mu 0 4 1314 1315 1316 1317
		f 4 2132 2131 2200 -2131
		mu 0 4 1318 1319 1320 1321
		f 4 -2110 2112 2137 2177
		mu 0 4 1322 1323 1324 1325
		f 4 -2161 2163 2216 -2121
		mu 0 4 1326 1327 1328 1329
		f 4 -2124 2120 2218 -2123
		mu 0 4 1330 1326 1329 1331
		f 4 -2126 2122 2220 2219
		mu 0 4 1332 1333 1334 1335
		f 4 -2127 2124 2212 -2120
		mu 0 4 1336 1337 1338 1339
		f 4 -2130 2127 2206 -2129
		mu 0 4 1340 1314 1317 1341
		f 4 -2108 2116 2139 -2115
		mu 0 4 1342 1343 1344 1345
		f 4 2108 2180 2179 -2112
		mu 0 4 1311 1346 1347 1312
		f 4 -2135 2128 2208 2207
		mu 0 4 1348 1349 1350 1351
		f 4 -2138 2135 2145 2175
		mu 0 4 1325 1324 1352 1353
		f 4 -2140 2136 2147 -2139
		mu 0 4 1345 1344 1354 1355
		f 4 -2180 2182 2181 -2141
		mu 0 4 1312 1347 1356 1357
		f 4 -2143 2140 2150 -2136
		mu 0 4 1313 1312 1357 1358
		f 4 -2146 2143 2188 2187
		mu 0 4 1353 1352 1359 1360
		f 4 -2148 2144 2192 -2147
		mu 0 4 1355 1354 1361 1362
		f 4 -2182 2184 2196 -2149
		mu 0 4 1357 1356 1363 1364
		f 4 -2151 2148 2197 -2144
		mu 0 4 1358 1357 1364 1365
		f 4 -2154 2151 2134 2171
		mu 0 4 1366 1367 1349 1348
		f 4 -2156 2152 -2133 -2155
		mu 0 4 1368 1369 1319 1318
		f 4 -2184 2185 -2134 -2157
		mu 0 4 1370 1371 1315 1314
		f 4 -2159 2156 2129 -2152
		mu 0 4 1372 1370 1314 1340
		f 4 2159 2130 2202 -2162
		mu 0 4 1315 1318 1321 1316
		f 4 -2164 -2122 2119 2214
		mu 0 4 1328 1327 1336 1339
		f 4 -2166 2162 -2118 -2165
		mu 0 4 1309 1308 1373 1374
		f 4 -2167 -2220 2221 -2125
		mu 0 4 1337 1332 1335 1338
		f 4 -2169 -2208 2209 -2132
		mu 0 4 1319 1348 1351 1320
		f 4 -2171 -2172 2168 -2153
		mu 0 4 1369 1366 1348 1319
		f 4 -2173 -2188 2190 -2145
		mu 0 4 1354 1353 1360 1361
		f 4 -2175 -2176 2172 -2137
		mu 0 4 1344 1325 1353 1354
		f 4 -2177 -2178 2174 -2117
		mu 0 4 1343 1322 1325 1344
		f 4 -2181 2178 2114 2141
		mu 0 4 1347 1346 1342 1345
		f 4 -2183 -2142 2138 2149
		mu 0 4 1356 1347 1345 1355
		f 4 -2185 -2150 2146 2194
		mu 0 4 1363 1356 1355 1362
		f 4 -2186 -2158 2154 -2160
		mu 0 4 1315 1371 1368 1318
		f 4 -2189 2186 2153 2173
		mu 0 4 1360 1359 1367 1366
		f 4 -2191 -2174 2170 -2190
		mu 0 4 1361 1360 1366 1369
		f 4 -2193 2189 2155 -2192
		mu 0 4 1362 1361 1369 1368
		f 4 -2194 -2195 2191 2157
		mu 0 4 1371 1363 1362 1368
		f 4 -2197 2193 2183 -2196
		mu 0 4 1364 1363 1371 1370
		f 4 -2198 2195 2158 -2187
		mu 0 4 1365 1364 1370 1372
		f 4 -2201 2198 2126 -2200
		mu 0 4 1321 1320 1337 1336
		f 4 -2203 2199 2121 -2202
		mu 0 4 1316 1321 1336 1327
		f 4 -2205 2201 2160 -2204
		mu 0 4 1317 1316 1327 1326
		f 4 -2207 2203 2123 -2206
		mu 0 4 1341 1317 1326 1330
		f 4 -2209 2205 2125 2169
		mu 0 4 1351 1350 1333 1332
		f 4 -2210 -2170 2166 -2199
		mu 0 4 1320 1351 1332 1337
		f 4 -2213 2210 2117 -2212
		mu 0 4 1339 1338 1374 1373
		f 4 -2214 -2215 2211 -2163
		mu 0 4 1308 1328 1339 1373
		f 4 -2217 2213 -2116 -2216
		mu 0 4 1329 1328 1308 1307
		f 4 -2219 2215 2113 -2218
		mu 0 4 1331 1329 1307 1375
		f 4 -2221 2217 2118 2167
		mu 0 4 1335 1334 1306 1309
		f 4 -2222 -2168 2164 -2211
		mu 0 4 1338 1335 1309 1374
		f 4 -2233 2230 -2223 -2232
		mu 0 4 1376 1377 1378 1379
		f 4 -2237 2237 2238 2239
		mu 0 4 1380 1381 1382 1383
		f 4 2240 2241 2242 2243
		mu 0 4 1384 1385 1386 1387
		f 4 -2243 2244 -2239 2245
		mu 0 4 1387 1386 1383 1382
		f 4 2248 2249 -2247 2250
		mu 0 4 1388 1389 1390 1391
		f 4 2252 2229 2253 -2245
		mu 0 4 1386 1392 1393 1383
		f 4 -2252 -2240 -2254 2227
		mu 0 4 1394 1380 1383 1393
		f 4 -2242 -2226 2226 -2253
		mu 0 4 1386 1385 1395 1392
		f 4 2228 -2251 -2255 2233
		mu 0 4 1396 1388 1391 1397
		f 4 -2238 -2256 2256 -2246
		mu 0 4 1382 1398 1399 1387
		f 4 -2257 2234 2235 -2244
		mu 0 4 1387 1399 1400 1384
		f 4 -2260 2261 2262 2263
		mu 0 4 1401 1402 1403 1404
		f 4 -2263 2264 2265 2266
		mu 0 4 1404 1403 1405 1406
		f 4 -2266 2267 2268 2269
		mu 0 4 1406 1405 1407 1408
		f 4 -2271 2271 2272 2273
		mu 0 4 1409 1410 1411 1412
		f 4 -2275 -2264 -2267 2277
		mu 0 4 1377 1401 1404 1406
		f 4 2278 -2265 2279 -2230
		mu 0 4 1392 1405 1403 1393
		f 4 2280 -2228 -2280 -2262
		mu 0 4 1402 1394 1393 1403
		f 4 -2258 -2268 -2279 -2227
		mu 0 4 1395 1407 1405 1392
		f 4 -2231 -2278 -2270 -2225
		mu 0 4 1378 1377 1406 1408
		f 4 -2277 2231 2223 -2272
		mu 0 4 1410 1376 1379 1411
		f 4 -2274 2258 -2234 -2282
		mu 0 4 1409 1412 1396 1397
		f 5 -2286 -2261 2274 2232 2275
		mu 0 5 1413 1414 1401 1377 1376
		f 6 -2287 -2276 2276 -2315 2315 -2285
		mu 0 6 1415 1413 1376 1410 1416 1417
		f 4 2287 2288 2289 2290
		mu 0 4 1418 1419 1420 1421
		f 4 -2288 2291 2292 2293
		mu 0 4 1419 1418 1422 1423
		f 4 2294 2295 2296 2297
		mu 0 4 1424 1425 1426 1427
		f 4 -2295 2298 -2290 2299
		mu 0 4 1425 1424 1421 1428
		f 4 -2297 2300 2301 2302
		mu 0 4 1427 1426 1429 1430
		f 4 2303 2304 -2302 2305
		mu 0 4 1414 1415 1430 1429
		f 4 2306 -2294 2282 -2235
		mu 0 4 1399 1431 1432 1400
		f 4 -2300 2307 2236 2308
		mu 0 4 1425 1428 1381 1380
		f 4 -2309 2251 2309 -2296
		mu 0 4 1425 1380 1394 1426
		f 5 -2313 2313 -2248 2310 -2291
		mu 0 5 1421 1433 1434 1435 1418
		f 4 -2311 -2250 -2284 -2292
		mu 0 4 1418 1435 1436 1422
		f 4 -2308 -2289 -2307 2255
		mu 0 4 1398 1437 1431 1399
		f 4 -2306 2311 2259 2260
		mu 0 4 1414 1429 1402 1401
		f 4 -2310 -2281 -2312 -2301
		mu 0 4 1426 1394 1402 1429
		f 3 2286 -2304 2285
		mu 0 3 1413 1415 1414
		f 4 -2314 2316 2317 2318
		mu 0 4 1438 1433 1439 1440
		f 4 -2318 2319 2320 2321
		mu 0 4 1440 1439 1441 1442
		f 4 -2321 2322 2323 2324
		mu 0 4 1442 1441 1443 1444
		f 4 -2316 2325 -2324 2326
		mu 0 4 1417 1416 1444 1443
		f 4 -2319 2327 2246 2247
		mu 0 4 1438 1440 1391 1390
		f 4 2254 -2328 -2322 2328
		mu 0 4 1397 1391 1440 1442
		f 4 -2326 2314 2270 2329
		mu 0 4 1444 1416 1410 1409
		f 4 2281 -2329 -2325 -2330
		mu 0 4 1409 1397 1442 1444
		f 4 -2299 2330 -2317 2312
		mu 0 4 1421 1424 1439 1433
		f 4 -2298 2331 -2320 -2331
		mu 0 4 1424 1427 1441 1439
		f 4 -2305 2284 -2327 2332
		mu 0 4 1430 1415 1417 1443
		f 4 -2332 -2303 -2333 -2323
		mu 0 4 1441 1427 1430 1443
		f 4 2335 2222 -2335 2333
		mu 0 4 1445 1379 1378 1446
		f 4 -2340 -2339 -2338 2336
		mu 0 4 1447 1448 1449 1450
		f 4 -2343 -2342 -2341 -2241
		mu 0 4 1384 1451 1452 1385
		f 4 -2345 2338 -2344 2341
		mu 0 4 1451 1449 1448 1452
		f 4 -2348 2346 -2346 -2249
		mu 0 4 1453 1454 1455 1456
		f 4 2343 -2351 -2350 -2349
		mu 0 4 1452 1448 1457 1458
		f 4 -2353 2350 2339 2351
		mu 0 4 1459 1457 1448 1447
		f 4 2348 -2354 2225 2340
		mu 0 4 1452 1458 1395 1385
		f 4 -2356 2354 2347 -2229
		mu 0 4 1460 1461 1454 1453
		f 4 2344 -2358 2356 2337
		mu 0 4 1449 1451 1462 1463
		f 4 2342 -2236 -2359 2357
		mu 0 4 1451 1384 1464 1462
		f 4 -2363 -2362 -2361 2359
		mu 0 4 1465 1466 1467 1468
		f 4 -2366 -2365 -2364 2361
		mu 0 4 1466 1469 1470 1467
		f 4 -2368 -2269 -2367 2364
		mu 0 4 1469 1408 1407 1470
		f 4 -2371 -2273 -2370 2368
		mu 0 4 1471 1472 1411 1473
		f 4 -2373 2365 2362 2371
		mu 0 4 1446 1469 1466 1465
		f 4 2349 -2375 2363 -2374
		mu 0 4 1458 1457 1467 1470
		f 4 2360 2374 2352 -2376
		mu 0 4 1468 1467 1457 1459
		f 4 2353 2373 2366 2257
		mu 0 4 1395 1458 1470 1407
		f 4 2224 2367 2372 2334
		mu 0 4 1378 1408 1469 1446
		f 4 2369 -2224 -2336 2376
		mu 0 4 1473 1411 1379 1445
		f 4 2377 2355 -2259 2370
		mu 0 4 1471 1461 1460 1472
		f 5 -2381 -2334 -2372 2379 2378
		mu 0 5 1474 1445 1446 1465 1475
		f 6 2384 -2384 2382 -2377 2380 2381
		mu 0 6 1476 1477 1478 1473 1445 1474
		f 4 -2389 -2388 -2387 -2386
		mu 0 4 1479 1480 1481 1482
		f 4 -2391 -2293 -2390 2385
		mu 0 4 1482 1483 1484 1479
		f 4 -2395 -2394 -2393 -2392
		mu 0 4 1485 1486 1487 1488
		f 4 -2397 2387 -2396 2391
		mu 0 4 1488 1489 1480 1485
		f 4 -2400 -2399 -2398 2393
		mu 0 4 1486 1490 1491 1487
		f 4 -2403 2398 -2402 -2401
		mu 0 4 1475 1491 1490 1476
		f 4 2358 -2283 2390 -2404
		mu 0 4 1462 1464 1492 1493
		f 4 -2406 -2337 -2405 2396
		mu 0 4 1488 1447 1450 1489
		f 4 2392 -2407 -2352 2405
		mu 0 4 1488 1487 1459 1447
		f 5 2388 -2411 2409 -2409 2407
		mu 0 5 1480 1479 1494 1495 1496
		f 4 2389 2283 2345 2410
		mu 0 4 1479 1484 1497 1494
		f 4 -2357 2403 2386 2404
		mu 0 4 1463 1462 1493 1498
		f 4 -2380 -2360 -2412 2402
		mu 0 4 1475 1465 1468 1491
		f 4 2397 2411 2375 2406
		mu 0 4 1487 1491 1468 1459
		f 3 -2379 2400 -2382
		mu 0 3 1474 1475 1476
		f 4 -2415 -2414 -2413 2408
		mu 0 4 1499 1500 1501 1496
		f 4 -2418 -2417 -2416 2413
		mu 0 4 1500 1502 1503 1501
		f 4 -2421 -2420 -2419 2416
		mu 0 4 1502 1504 1505 1503
		f 4 -2423 2419 -2422 2383
		mu 0 4 1477 1505 1504 1478
		f 4 -2410 -2347 -2424 2414
		mu 0 4 1499 1455 1454 1500
		f 4 -2425 2417 2423 -2355
		mu 0 4 1461 1502 1500 1454
		f 4 -2426 -2369 -2383 2421
		mu 0 4 1504 1471 1473 1478
		f 4 2425 2420 2424 -2378
		mu 0 4 1471 1504 1502 1461
		f 4 -2408 2412 -2427 2395
		mu 0 4 1480 1496 1501 1485
		f 4 2426 2415 -2428 2394
		mu 0 4 1485 1501 1503 1486
		f 4 -2429 2422 -2385 2401
		mu 0 4 1490 1505 1477 1476
		f 4 2418 2428 2399 2427
		mu 0 4 1503 1505 1490 1486
		f 4 -2436 2437 2487 -2441
		mu 0 4 1506 1507 1508 1509
		f 4 -2433 2433 2464 -2435
		mu 0 4 1510 1511 1512 1513
		f 4 2455 2483 2526 -2450
		mu 0 4 1514 1515 1516 1517
		f 4 2454 2453 2522 -2453
		mu 0 4 1518 1519 1520 1521
		f 4 -2432 2434 2459 2499
		mu 0 4 1522 1523 1524 1525
		f 4 -2483 2485 2538 -2443
		mu 0 4 1526 1527 1528 1529
		f 4 -2446 2442 2540 -2445
		mu 0 4 1530 1526 1529 1531
		f 4 -2448 2444 2542 2541
		mu 0 4 1532 1533 1534 1535
		f 4 -2449 2446 2534 -2442
		mu 0 4 1536 1537 1538 1539
		f 4 -2452 2449 2528 -2451
		mu 0 4 1540 1514 1517 1541
		f 4 -2430 2438 2461 -2437
		mu 0 4 1542 1543 1544 1545
		f 4 2430 2502 2501 -2434
		mu 0 4 1511 1546 1547 1512
		f 4 -2457 2450 2530 2529
		mu 0 4 1548 1549 1550 1551
		f 4 -2460 2457 2467 2497
		mu 0 4 1525 1524 1552 1553
		f 4 -2462 2458 2469 -2461
		mu 0 4 1545 1544 1554 1555
		f 4 -2502 2504 2503 -2463
		mu 0 4 1512 1547 1556 1557
		f 4 -2465 2462 2472 -2458
		mu 0 4 1513 1512 1557 1558
		f 4 -2468 2465 2510 2509
		mu 0 4 1553 1552 1559 1560
		f 4 -2470 2466 2514 -2469
		mu 0 4 1555 1554 1561 1562
		f 4 -2504 2506 2518 -2471
		mu 0 4 1557 1556 1563 1564
		f 4 -2473 2470 2519 -2466
		mu 0 4 1558 1557 1564 1565
		f 4 -2476 2473 2456 2493
		mu 0 4 1566 1567 1549 1548
		f 4 -2478 2474 -2455 -2477
		mu 0 4 1568 1569 1519 1518
		f 4 -2506 2507 -2456 -2479
		mu 0 4 1570 1571 1515 1514
		f 4 -2481 2478 2451 -2474
		mu 0 4 1572 1570 1514 1540
		f 4 2481 2452 2524 -2484
		mu 0 4 1515 1518 1521 1516
		f 4 -2486 -2444 2441 2536
		mu 0 4 1528 1527 1536 1539
		f 4 -2488 2484 -2440 -2487
		mu 0 4 1509 1508 1573 1574
		f 4 -2489 -2542 2543 -2447
		mu 0 4 1537 1532 1535 1538
		f 4 -2491 -2530 2531 -2454
		mu 0 4 1519 1548 1551 1520
		f 4 -2493 -2494 2490 -2475
		mu 0 4 1569 1566 1548 1519
		f 4 -2495 -2510 2512 -2467
		mu 0 4 1554 1553 1560 1561
		f 4 -2497 -2498 2494 -2459
		mu 0 4 1544 1525 1553 1554
		f 4 -2499 -2500 2496 -2439
		mu 0 4 1543 1522 1525 1544
		f 4 -2503 2500 2436 2463
		mu 0 4 1547 1546 1542 1545
		f 4 -2505 -2464 2460 2471
		mu 0 4 1556 1547 1545 1555
		f 4 -2507 -2472 2468 2516
		mu 0 4 1563 1556 1555 1562
		f 4 -2508 -2480 2476 -2482
		mu 0 4 1515 1571 1568 1518
		f 4 -2511 2508 2475 2495
		mu 0 4 1560 1559 1567 1566
		f 4 -2513 -2496 2492 -2512
		mu 0 4 1561 1560 1566 1569
		f 4 -2515 2511 2477 -2514
		mu 0 4 1562 1561 1569 1568
		f 4 -2516 -2517 2513 2479
		mu 0 4 1571 1563 1562 1568
		f 4 -2519 2515 2505 -2518
		mu 0 4 1564 1563 1571 1570
		f 4 -2520 2517 2480 -2509
		mu 0 4 1565 1564 1570 1572
		f 4 -2523 2520 2448 -2522
		mu 0 4 1521 1520 1537 1536
		f 4 -2525 2521 2443 -2524
		mu 0 4 1516 1521 1536 1527
		f 4 -2527 2523 2482 -2526
		mu 0 4 1517 1516 1527 1526
		f 4 -2529 2525 2445 -2528
		mu 0 4 1541 1517 1526 1530
		f 4 -2531 2527 2447 2491
		mu 0 4 1551 1550 1533 1532
		f 4 -2532 -2492 2488 -2521
		mu 0 4 1520 1551 1532 1537
		f 4 -2535 2532 2439 -2534
		mu 0 4 1539 1538 1574 1573
		f 4 -2536 -2537 2533 -2485
		mu 0 4 1508 1528 1539 1573
		f 4 -2539 2535 -2438 -2538
		mu 0 4 1529 1528 1508 1507
		f 4 -2541 2537 2435 -2540
		mu 0 4 1531 1529 1507 1575
		f 4 -2543 2539 2440 2489
		mu 0 4 1535 1534 1506 1509
		f 4 -2544 -2490 2486 -2533
		mu 0 4 1538 1535 1509 1574
		f 5 -2549 -2548 -2547 -2546 2544
		mu 0 5 1576 1577 1578 1579 1580
		f 4 -2553 -2552 -2551 -2550
		mu 0 4 1581 1582 1583 1584
		f 4 -2557 -2556 -2555 -2554
		mu 0 4 1585 1586 1587 1581
		f 4 -2561 -2560 -2559 -2558
		mu 0 4 1584 1588 1589 1585
		f 4 -2565 -2564 -2563 -2562
		mu 0 4 1586 1590 1591 1592
		f 4 -2569 -2568 -2567 -2566
		mu 0 4 1592 1593 1594 1587
		f 4 -2572 -2571 -2570 2567
		mu 0 4 1593 1595 1596 1594
		f 4 -2576 -2575 -2574 -2573
		mu 0 4 1597 1598 1599 1600
		f 4 -2580 -2579 -2578 -2577
		mu 0 4 1580 1601 1602 1603
		f 4 -2583 -2582 -2581 2574
		mu 0 4 1598 1604 1605 1599
		f 4 -2586 -2585 -2584 2551
		mu 0 4 1582 1606 1607 1583
		f 4 -2589 2570 -2588 -2587
		mu 0 4 1608 1596 1595 1609
		f 4 -2592 -2591 -2590 2586
		mu 0 4 1609 1610 1611 1608
		f 4 -2594 2584 -2593 2590
		mu 0 4 1610 1607 1606 1611
		f 4 -2598 -2597 -2596 -2595
		mu 0 4 1612 1613 1614 1615
		f 4 -2601 -2600 -2599 2594
		mu 0 4 1615 1616 1617 1612
		f 4 -2604 -2603 -2602 2599
		mu 0 4 1616 1618 1619 1617
		f 4 -2607 -2606 -2605 2563
		mu 0 4 1590 1620 1621 1591
		f 4 -2610 -2609 -2608 2605
		mu 0 4 1620 1622 1623 1621
		f 4 -2613 -2612 -2611 2608
		mu 0 4 1622 1624 1625 1623
		f 4 -2617 -2616 -2615 -2614
		mu 0 4 1626 1627 1628 1625
		f 4 -2621 -2620 -2619 -2618
		mu 0 4 1624 1629 1630 1626
		f 4 -2625 -2624 -2623 -2622
		mu 0 4 1629 1631 1632 1633
		f 4 -2629 -2628 -2627 -2626
		mu 0 4 1633 1634 1635 1630
		f 4 -2632 -2631 -2630 2559
		mu 0 4 1588 1636 1637 1589
		f 4 -2634 2630 -2633 2623
		mu 0 4 1631 1637 1636 1632
		f 4 -2638 -2637 -2636 -2635
		mu 0 4 1613 1638 1639 1640
		f 4 -2642 -2641 -2640 -2639
		mu 0 4 1640 1641 1642 1614
		f 4 -2645 2640 -2644 -2643
		mu 0 4 1634 1642 1641 1643
		f 4 -2649 -2648 -2647 -2646
		mu 0 4 1643 1644 1645 1635
		f 4 -2652 -2651 -2650 2615
		mu 0 4 1627 1646 1647 1628
		f 4 -2655 -2654 -2653 2578
		mu 0 4 1601 1648 1649 1602
		f 4 -2658 -2657 -2656 2636
		mu 0 4 1638 1650 1651 1639
		f 4 -2662 -2661 -2660 -2659
		mu 0 4 1652 1653 1654 1655
		f 4 -2666 -2665 -2664 -2663
		mu 0 4 1656 1657 1658 1652
		f 4 -2670 -2669 -2668 -2667
		mu 0 4 1655 1659 1660 1656
		f 4 -2673 -2672 -2671 2664
		mu 0 4 1657 1661 1662 1658
		f 4 -2676 -2675 -2674 2650
		mu 0 4 1646 1663 1664 1647
		f 4 -2680 -2679 -2678 -2677
		mu 0 4 1665 1666 1667 1662
		f 4 -2684 -2683 -2682 -2681
		mu 0 4 1661 1668 1669 1665
		f 4 -2688 -2687 -2686 -2685
		mu 0 4 1670 1671 1672 1669
		f 4 -2692 -2691 -2690 -2689
		mu 0 4 1668 1673 1674 1670
		f 4 -2696 -2695 -2694 -2693
		mu 0 4 1675 1676 1677 1678
		f 4 -2699 2690 -2698 -2697
		mu 0 4 1678 1674 1673 1679
		f 4 -2702 -2701 -2700 2647
		mu 0 4 1644 1680 1681 1645
		f 4 -2705 -2704 -2703 2653
		mu 0 4 1648 1682 1683 1649
		f 4 -2708 -2707 -2706 2581
		mu 0 4 1604 1684 1685 1605
		f 4 -2711 2709 -2709 2602
		mu 0 4 1618 1686 1687 1619
		f 4 -2713 2686 -2712 2674
		mu 0 4 1663 1672 1671 1664
		f 4 -2715 2678 -2714 2700
		mu 0 4 1680 1667 1666 1681
		f 4 -2717 2660 -2716 2656
		mu 0 4 1650 1654 1653 1651
		f 4 -2719 2694 -2718 2703
		mu 0 4 1682 1677 1676 1683
		f 4 -2720 2624 2620 2612
		mu 0 4 1622 1631 1629 1624
		f 4 -2722 -2721 2548 2573
		mu 0 4 1599 1688 1689 1600
		f 4 2566 -2723 2552 2554
		mu 0 4 1587 1594 1582 1581
		f 4 -2726 2600 -2725 -2724
		mu 0 4 1690 1616 1615 1691
		f 4 2598 -2728 2575 -2727
		mu 0 4 1612 1617 1692 1693
		f 4 2667 2697 -2729 2665
		mu 0 4 1656 1679 1673 1657
		f 4 2724 -2732 -2731 -2730
		mu 0 4 1691 1615 1694 1695
		f 4 2556 2558 -2733 2564
		mu 0 4 1586 1585 1589 1590
		f 4 2595 2639 -2734 2731
		mu 0 4 1615 1614 1642 1694
		f 4 2626 -2735 2616 2618
		mu 0 4 1630 1635 1627 1626
		f 4 -2737 -2736 2579 2545
		mu 0 4 1579 1696 1601 1580
		f 4 -2738 2597 2726 2577
		mu 0 4 1697 1613 1612 1698
		f 4 -2740 -2739 2641 2635
		mu 0 4 1639 1699 1641 1640
		f 4 2646 -2741 2651 2734
		mu 0 4 1635 1645 1646 1627
		f 4 -2743 -2742 2654 2735
		mu 0 4 1696 1700 1648 1601
		f 4 2652 -2744 2637 2737
		mu 0 4 1697 1701 1638 1613
		f 4 2569 -2745 2585 2722
		mu 0 4 1594 1596 1606 1582
		f 4 2580 -2747 -2746 2721
		mu 0 4 1599 1605 1702 1688
		f 4 2601 -2748 2582 2727
		mu 0 4 1617 1619 1703 1692
		f 4 -2750 -2749 2603 2725
		mu 0 4 1690 1704 1618 1616
		f 4 2730 -2752 2622 -2751
		mu 0 4 1695 1694 1633 1632
		f 4 2644 2628 2751 2733
		mu 0 4 1642 1634 1633 1694
		f 4 2738 -2753 2648 2643
		mu 0 4 1641 1699 1644 1643
		f 4 2691 2683 2672 2728
		mu 0 4 1673 1668 1661 1657
		f 4 -2755 2742 -2754 2649
		mu 0 4 1647 1700 1696 1628
		f 4 2614 2753 2736 -2756
		mu 0 4 1625 1628 1696 1579
		f 4 -2757 2610 2755 2546
		mu 0 4 1578 1623 1625 1579
		f 4 2629 -2758 2606 2732
		mu 0 4 1589 1637 1620 1590
		f 4 2705 -2760 -2759 2746
		mu 0 4 1605 1685 1705 1702
		f 4 2708 -2761 2707 2747
		mu 0 4 1619 1687 1706 1703
		f 4 -2763 -2762 2710 2748
		mu 0 4 1704 1707 1686 1618
		f 4 2588 2589 2592 2744
		mu 0 4 1596 1608 1611 1606
		f 4 2713 -2765 2712 -2764
		mu 0 4 1681 1666 1672 1663
		f 4 -2768 2714 -2767 2765
		mu 0 4 1708 1667 1680 1709
		f 4 2715 -2770 -2766 -2769
		mu 0 4 1651 1653 1708 1709
		f 4 2716 -2772 2717 -2771
		mu 0 4 1654 1650 1710 1711
		f 4 -2775 -2774 2718 -2773
		mu 0 4 1712 1713 1677 1682
		f 4 2711 -2777 2774 -2776
		mu 0 4 1664 1671 1713 1712
		f 4 2679 2681 2685 2764
		mu 0 4 1666 1665 1669 1672
		f 4 2670 2677 2767 -2778
		mu 0 4 1658 1662 1667 1708
		f 4 2661 2663 2777 2769
		mu 0 4 1653 1652 1658 1708
		f 4 2659 2770 2695 2669
		mu 0 4 1655 1654 1711 1659
		f 4 -2779 2698 2693 2773
		mu 0 4 1713 1674 1678 1677
		f 4 2687 2689 2778 2776
		mu 0 4 1671 1670 1674 1713
		f 4 -2780 2772 2704 2741
		mu 0 4 1700 1712 1682 1648
		f 4 2657 2743 2702 2771
		mu 0 4 1650 1638 1701 1710
		f 4 2655 2768 -2781 2739
		mu 0 4 1639 1651 1709 1699
		f 4 2701 2752 2780 2766
		mu 0 4 1680 1644 1699 1709
		f 4 2699 2763 2675 2740
		mu 0 4 1645 1681 1663 1646
		f 4 2673 2775 2779 2754
		mu 0 4 1647 1664 1712 1700
		f 4 -2783 2729 -2782 2560
		mu 0 4 1584 1691 1695 1588
		f 4 2781 2750 2632 2631
		mu 0 4 1588 1695 1632 1636
		f 4 2757 2633 2719 2609
		mu 0 4 1620 1637 1631 1622
		f 4 2604 2607 2756 -2784
		mu 0 4 1591 1621 1623 1578
		f 4 -2785 2562 2783 2547
		mu 0 4 1577 1592 1591 1578
		f 4 -2786 2568 2784 2720
		mu 0 4 1688 1593 1592 1689
		f 4 -2787 2571 2785 2745
		mu 0 4 1702 1595 1593 1688
		f 4 -2788 2587 2786 2758
		mu 0 4 1705 1609 1595 1702
		f 4 2593 2789 2762 -2789
		mu 0 4 1607 1610 1707 1704
		f 4 2583 2788 2749 -2791
		mu 0 4 1583 1607 1704 1690
		f 4 2550 2790 2723 2782
		mu 0 4 1584 1583 1690 1691
		f 3 2549 2557 2553
		mu 0 3 1581 1584 1585
		f 3 2561 2565 2555
		mu 0 3 1586 1592 1587
		f 3 -2545 2576 2572
		mu 0 3 1576 1580 1603
		f 3 2611 2617 2613
		mu 0 3 1625 1624 1626
		f 3 2621 2625 2619
		mu 0 3 1629 1633 1630
		f 3 2634 2638 2596
		mu 0 3 1613 1640 1614
		f 3 2642 2645 2627
		mu 0 3 1634 1643 1635
		f 3 2658 2666 2662
		mu 0 3 1652 1655 1656
		f 3 2676 2671 2680
		mu 0 3 1665 1662 1661
		f 3 2684 2682 2688
		mu 0 3 1670 1669 1668
		f 3 2692 2696 2668
		mu 0 3 1675 1678 1679
		f 4 2794 -2794 -2793 2791
		mu 0 4 1714 1715 1716 1717
		f 4 2798 -2798 -2797 2795
		mu 0 4 1718 1719 1720 1721
		f 4 2802 -2802 -2801 -2800
		mu 0 4 1722 1723 1724 1725
		f 4 2806 -2806 -2805 -2804
		mu 0 4 1726 1727 1728 1729
		f 4 -2810 -2809 -2799 2807
		mu 0 4 1730 1731 1732 1733
		f 4 2813 -2813 -2812 2810
		mu 0 4 1734 1735 1736 1737
		f 4 2816 -2816 -2814 2814
		mu 0 4 1738 1739 1735 1734
		f 4 -2820 -2819 -2817 2817
		mu 0 4 1740 1741 1742 1743
		f 4 2823 -2823 -2822 2820
		mu 0 4 1744 1745 1746 1747
		f 4 2826 -2826 -2803 2824
		mu 0 4 1748 1749 1723 1722
		f 4 2830 -2830 -2829 2827
		mu 0 4 1750 1751 1752 1753
		f 4 2796 -2834 -2833 -2832
		mu 0 4 1721 1720 1754 1755
		f 4 -2837 -2836 -2827 2834
		mu 0 4 1756 1757 1758 1759
		f 4 -2840 -2839 -2838 2808
		mu 0 4 1731 1760 1761 1732
		f 4 2842 -2842 -2841 2829
		mu 0 4 1751 1762 1763 1752
		f 4 2845 -2845 -2844 2833
		mu 0 4 1720 1764 1765 1754
		f 4 2837 -2847 -2846 2797
		mu 0 4 1719 1766 1764 1720
		f 4 -2850 -2849 -2848 2838
		mu 0 4 1760 1767 1768 1761
		f 4 2852 -2852 -2851 2841
		mu 0 4 1762 1769 1770 1763
		f 4 2855 -2855 -2854 2844
		mu 0 4 1764 1771 1772 1765
		f 4 2847 -2857 -2856 2846
		mu 0 4 1766 1773 1771 1764
		f 4 -2860 -2835 -2859 2857
		mu 0 4 1774 1756 1759 1775
		f 4 2862 2803 -2862 2860
		mu 0 4 1776 1726 1729 1777
		f 4 2865 2799 -2865 2863
		mu 0 4 1778 1722 1725 1779
		f 4 2858 -2825 -2866 2866
		mu 0 4 1780 1748 1722 1778
		f 4 2800 -2869 -2807 -2868
		mu 0 4 1725 1724 1727 1726
		f 4 -2871 -2824 2869 2811
		mu 0 4 1736 1745 1744 1737
		f 4 2873 2872 -2872 2793
		mu 0 4 1715 1781 1782 1716
		f 4 2821 -2876 2819 2874
		mu 0 4 1747 1746 1741 1740
		f 4 2804 -2878 2836 2876
		mu 0 4 1729 1728 1757 1756
		f 4 2861 -2877 2859 2878
		mu 0 4 1777 1729 1756 1774
		f 4 2850 -2881 2849 2879
		mu 0 4 1763 1770 1767 1760
		f 4 2840 -2880 2839 2881
		mu 0 4 1752 1763 1760 1731
		f 4 2828 -2882 2809 2882
		mu 0 4 1753 1752 1731 1730
		f 4 -2885 -2831 -2884 2832
		mu 0 4 1754 1751 1750 1755
		f 4 -2886 -2843 2884 2843
		mu 0 4 1765 1762 1751 1754
		f 4 -2887 -2853 2885 2853
		mu 0 4 1772 1769 1762 1765
		f 4 2867 -2863 2887 2864
		mu 0 4 1725 1726 1776 1779
		f 4 -2890 -2858 -2889 2848
		mu 0 4 1767 1774 1775 1768
		f 4 2890 -2879 2889 2880
		mu 0 4 1770 1777 1774 1767
		f 4 2891 -2861 -2891 2851
		mu 0 4 1769 1776 1777 1770
		f 4 -2888 -2892 2886 2892
		mu 0 4 1779 1776 1769 1772
		f 4 2893 -2864 -2893 2854
		mu 0 4 1771 1778 1779 1772
		f 4 2888 -2867 -2894 2856
		mu 0 4 1773 1780 1778 1771
		f 4 2895 -2821 -2895 2805
		mu 0 4 1727 1744 1747 1728
		f 4 2896 -2870 -2896 2868
		mu 0 4 1724 1737 1744 1727
		f 4 2897 -2811 -2897 2801
		mu 0 4 1723 1734 1737 1724
		f 4 2898 -2815 -2898 2825
		mu 0 4 1749 1738 1734 1723
		f 4 -2900 -2818 -2899 2835
		mu 0 4 1757 1740 1743 1758
		f 4 2894 -2875 2899 2877
		mu 0 4 1728 1747 1740 1757
		f 4 2901 -2873 -2901 2822
		mu 0 4 1745 1782 1781 1746
		f 4 2871 -2902 2870 2902
		mu 0 4 1716 1782 1745 1736
		f 4 2903 2792 -2903 2812
		mu 0 4 1735 1717 1716 1736
		f 4 2904 -2792 -2904 2815
		mu 0 4 1739 1783 1717 1735
		f 4 -2906 -2795 -2905 2818
		mu 0 4 1741 1715 1714 1742
		f 4 2900 -2874 2905 2875
		mu 0 4 1746 1781 1715 1741
		f 4 -2911 2909 -2949 2949
		mu 0 4 1784 1785 1786 1787
		f 4 2955 2907 -2954 2956
		mu 0 4 1788 1789 1790 1791
		f 4 -2923 2923 -2915 -2916
		mu 0 4 1792 1793 1794 1795
		f 4 -2918 2914 2924 -2917
		mu 0 4 1796 1795 1794 1797
		f 4 2916 2934 2943 -2936
		mu 0 4 1796 1797 1798 1799
		f 4 -2920 2918 2925 2951
		mu 0 4 1800 1801 1802 1803
		f 4 2927 -2922 -2927 2928
		mu 0 4 1804 1805 1806 1807
		f 4 -2933 2929 2910 2950
		mu 0 4 1808 1809 1785 1784
		f 4 2926 -2932 -2934 2930
		mu 0 4 1807 1806 1810 1811
		f 4 2953 2911 -2953 2954
		mu 0 4 1791 1790 1812 1813
		f 4 -2910 -2938 -2939 -2909
		mu 0 4 1786 1785 1814 1815
		f 4 -2930 -2940 -2941 2937
		mu 0 4 1785 1809 1816 1814
		f 4 -2919 -2943 -2944 2941
		mu 0 4 1802 1801 1799 1798
		f 4 2912 -2946 2944 -2912
		mu 0 4 1790 1817 1818 1812
		f 4 2906 -2948 -2913 -2908
		mu 0 4 1789 1819 1817 1790
		f 4 -2958 2958 2959 2960
		mu 0 4 1820 1821 1822 1823
		f 4 2961 2962 2963 2964
		mu 0 4 1824 1825 1826 1827
		f 4 -2964 2965 2966 2967
		mu 0 4 1827 1826 1828 1829
		f 5 -3146 3146 3144 2968 2969
		mu 0 5 1830 1831 1832 1833 1834
		f 4 2970 2971 2972 2973
		mu 0 4 1835 1836 1837 1838
		f 4 -2973 2974 -2969 2975
		mu 0 4 1838 1837 1834 1833
		f 4 -2960 2976 2977 2978
		mu 0 4 1823 1822 1839 1840
		f 4 -2978 2979 -2967 2980
		mu 0 4 1840 1839 1829 1828
		f 4 2952 2981 -2959 2982
		mu 0 4 1813 1812 1822 1821
		f 4 -2961 2983 2919 2984
		mu 0 4 1820 1823 1801 1800
		f 4 2985 2917 2986 -2966
		mu 0 4 1826 1795 1796 1828
		f 4 2988 -2968 2989 2945
		mu 0 4 1817 1827 1829 1818
		f 4 -2987 2935 2990 -2981
		mu 0 4 1828 1796 1799 1840
		f 4 2920 -2974 2991 2921
		mu 0 4 1805 1835 1838 1806
		f 4 2946 -2965 -2989 2947
		mu 0 4 1819 1824 1827 1817
		f 4 -2963 -2914 2915 -2986
		mu 0 4 1826 1825 1792 1795
		f 4 -2992 -2976 -2988 2931
		mu 0 4 1806 1838 1833 1810
		f 3 -2990 -2980 2992
		mu 0 3 1818 1829 1839
		f 4 -2984 -2979 -2991 2942
		mu 0 4 1801 1823 1840 1799
		f 4 -2945 -2993 -2977 -2982
		mu 0 4 1812 1818 1839 1822
		f 4 -2996 2997 2998 2999
		mu 0 4 1841 1842 1843 1844
		f 4 3000 3001 3002 3003
		mu 0 4 1845 1846 1847 1848
		f 4 -3001 3004 3005 3006
		mu 0 4 1846 1845 1849 1850
		f 4 -3006 3007 3008 3009
		mu 0 4 1850 1849 1851 1852
		f 4 -3012 3013 3014 3015
		mu 0 4 1853 1854 1855 1856
		f 4 -2999 3016 -3003 3017
		mu 0 4 1844 1843 1848 1847
		f 4 3018 3019 -3015 3020
		mu 0 4 1857 1858 1856 1855
		f 4 -3000 3021 2932 3022
		mu 0 4 1841 1844 1809 1808
		f 3 3023 3024 -3002
		mu 0 3 1846 1816 1847
		f 4 2938 3025 -3010 -2937
		mu 0 4 1815 1814 1850 1852
		f 4 -2994 -3008 3026 -2924
		mu 0 4 1793 1851 1849 1794
		f 4 -2925 -3027 -3005 3027
		mu 0 4 1797 1794 1849 1845
		f 4 -3028 -3004 3028 -2935
		mu 0 4 1797 1845 1848 1798
		f 4 -2926 3029 -2998 3030
		mu 0 4 1803 1802 1843 1842
		f 4 -3020 2994 -2929 3032
		mu 0 4 1856 1858 1804 1807
		f 4 -3033 -2931 -3032 -3016
		mu 0 4 1856 1807 1811 1853
		f 4 2940 -3024 -3007 -3026
		mu 0 4 1814 1816 1846 1850
		f 4 -3025 2939 -3022 -3018
		mu 0 4 1847 1816 1809 1844
		f 4 -3030 -2942 -3029 -3017
		mu 0 4 1843 1802 1798 1848
		f 4 -3036 2948 -3035 3033
		mu 0 4 1859 1860 1861 1862
		f 4 -3039 3037 -3037 -2956
		mu 0 4 1788 1863 1864 1789
		f 4 3041 3040 -3040 2922
		mu 0 4 1792 1865 1866 1793
		f 4 3044 -3044 -3041 3042
		mu 0 4 1867 1868 1866 1865
		f 4 3047 -3047 -3046 -3045
		mu 0 4 1867 1869 1870 1868
		f 4 -3052 -3051 -3050 3048
		mu 0 4 1871 1872 1873 1874
		f 4 -3056 3054 3053 -2928
		mu 0 4 1804 1875 1876 1805;
	setAttr ".fc[1500:1999]"
		f 4 -3059 -3034 -3058 3056
		mu 0 4 1877 1859 1862 1878
		f 4 -3061 3052 3059 -3055
		mu 0 4 1875 1879 1880 1876
		f 4 -3064 3062 -3062 -3038
		mu 0 4 1863 1881 1882 1864
		f 4 2908 3065 3064 3034
		mu 0 4 1861 1883 1884 1862
		f 4 -3065 3067 3066 3057
		mu 0 4 1862 1884 1885 1878
		f 4 -3070 3046 3068 3049
		mu 0 4 1873 1870 1869 1874
		f 4 3061 -3073 3071 -3071
		mu 0 4 1864 1882 1886 1887
		f 4 3036 3070 3073 -2907
		mu 0 4 1789 1864 1887 1819
		f 4 -3078 -3077 -3076 3074
		mu 0 4 1888 1889 1890 1891
		f 4 -3081 -3080 -3079 -2962
		mu 0 4 1824 1892 1893 1825
		f 4 -3084 -3083 -3082 3079
		mu 0 4 1892 1894 1895 1893
		f 5 -3086 -3085 -3152 3153 3150
		mu 0 5 1896 1897 1898 1899 1900
		f 4 -3089 -3088 -3087 -2971
		mu 0 4 1835 1901 1902 1836
		f 4 -3091 3084 -3090 3087
		mu 0 4 1901 1898 1897 1902
		f 4 -3094 -3093 -3092 3076
		mu 0 4 1889 1903 1904 1890
		f 4 -3096 3082 -3095 3092
		mu 0 4 1903 1895 1894 1904
		f 4 -3098 3075 -3097 -3063
		mu 0 4 1881 1891 1890 1882
		f 4 -3100 -3049 -3099 3077
		mu 0 4 1888 1871 1874 1889
		f 4 3081 -3102 -3043 -3101
		mu 0 4 1893 1895 1867 1865
		f 4 -3072 -3105 3083 -3104
		mu 0 4 1887 1886 1894 1892
		f 4 3095 -3106 -3048 3101
		mu 0 4 1895 1903 1869 1867
		f 4 -3054 -3107 3088 -2921
		mu 0 4 1805 1876 1901 1835
		f 4 -3074 3103 3080 -2947
		mu 0 4 1819 1887 1892 1824
		f 4 3100 -3042 2913 3078
		mu 0 4 1893 1865 1792 1825
		f 4 -3060 3102 3090 3106
		mu 0 4 1876 1880 1898 1901
		f 3 -3108 3094 3104
		mu 0 3 1886 1904 1894
		f 4 -3069 3105 3093 3098
		mu 0 4 1874 1869 1903 1889
		f 4 3096 3091 3107 3072
		mu 0 4 1882 1890 1904 1886
		f 4 -3113 -3112 -3111 3108
		mu 0 4 1905 1906 1907 1908
		f 4 -3117 -3116 -3115 -3114
		mu 0 4 1909 1910 1911 1912
		f 4 -3120 -3119 -3118 3113
		mu 0 4 1912 1913 1914 1909
		f 4 -3122 -3009 -3121 3118
		mu 0 4 1913 1852 1851 1914
		f 4 -3128 -3127 -3126 3123
		mu 0 4 1915 1916 1917 1918
		f 4 -3130 3115 -3129 3111
		mu 0 4 1906 1911 1910 1907
		f 4 -3132 3126 -3131 -3019
		mu 0 4 1857 1917 1916 1858
		f 4 -3134 -3057 -3133 3112
		mu 0 4 1905 1877 1878 1906
		f 3 3114 -3136 -3135
		mu 0 3 1912 1911 1885
		f 4 2936 3121 -3137 -3066
		mu 0 4 1883 1852 1913 1884
		f 4 3039 -3138 3120 2993
		mu 0 4 1793 1866 1914 1851
		f 4 -3139 3117 3137 3043
		mu 0 4 1868 1909 1914 1866
		f 4 3045 -3140 3116 3138
		mu 0 4 1868 1870 1910 1909
		f 4 -3142 3110 -3141 3050
		mu 0 4 1872 1908 1907 1873
		f 4 -3144 3055 -2995 3130
		mu 0 4 1916 1875 1804 1858
		f 4 3127 3142 3060 3143
		mu 0 4 1916 1915 1879 1875
		f 4 3136 3119 3134 -3068
		mu 0 4 1884 1913 1912 1885
		f 4 3129 3132 -3067 3135
		mu 0 4 1911 1906 1878 1885
		f 4 3128 3139 3069 3140
		mu 0 4 1907 1910 1870 1873
		f 5 -3150 -2997 3010 3011 3012
		mu 0 5 1919 1920 1921 1854 1853
		f 5 -3155 -3125 -3124 -3123 3109
		mu 0 5 1922 1923 1915 1918 1924
		f 4 3156 3157 3158 3159
		mu 0 4 1925 1926 1832 1927
		f 4 -3157 3160 3161 3162
		mu 0 4 1926 1925 1928 1929
		f 4 -3162 3163 3164 3165
		mu 0 4 1929 1928 1930 1919
		f 4 3166 3167 3168 3169
		mu 0 4 1931 1932 1933 1934
		f 4 -3167 3170 3171 3172
		mu 0 4 1932 1931 1935 1936
		f 4 -3172 3173 3174 3175
		mu 0 4 1936 1935 1937 1938
		f 4 2933 3176 -3163 3177
		mu 0 4 1811 1810 1926 1929
		f 4 2987 -3145 -3158 -3177
		mu 0 4 1810 1833 1832 1926
		f 4 3031 -3178 -3166 -3013
		mu 0 4 1853 1811 1929 1919
		f 4 3178 -3171 3179 -3053
		mu 0 4 1879 1939 1940 1880
		f 4 -3180 -3170 3151 -3103
		mu 0 4 1880 1940 1899 1898
		f 4 3124 -3174 -3179 -3143
		mu 0 4 1915 1923 1939 1879
		f 3 -3147 -3148 -3159
		mu 0 3 1832 1831 1927
		f 3 -3149 3149 -3165
		mu 0 3 1930 1920 1919
		f 3 -3153 -3154 -3169
		mu 0 3 1933 1900 1934
		f 3 3154 -3156 -3175
		mu 0 3 1937 1941 1938
		f 4 3180 3181 3182 3183
		mu 0 4 1942 1943 1944 1945
		f 4 -3181 3184 3185 3186
		mu 0 4 1943 1942 1946 1947
		f 4 -3186 3187 3188 3189
		mu 0 4 1947 1946 1948 1949
		f 4 3190 3191 3192 3193
		mu 0 4 1950 1951 1952 1953
		f 4 -3191 3194 3195 3196
		mu 0 4 1954 1955 1956 1957
		f 4 -3196 3197 3198 3199
		mu 0 4 1957 1956 1958 1959
		f 4 -3189 3200 3201 3202
		mu 0 4 1949 1948 1960 1961
		f 4 3203 3204 3205 3206
		mu 0 4 1962 1963 1964 1965
		f 4 -3204 3207 3208 3209
		mu 0 4 1963 1962 1966 1967
		f 4 -3209 3210 3211 3212
		mu 0 4 1967 1966 1968 1969
		f 4 -3199 3213 3214 3215
		mu 0 4 1959 1958 1970 1971
		f 4 -3206 3216 -3202 3217
		mu 0 4 1965 1964 1961 1960
		f 4 -3215 3218 -3212 3219
		mu 0 4 1971 1970 1969 1968
		f 4 3220 3221 3222 3223
		mu 0 4 1972 1973 1974 1975
		f 4 -3221 3224 3225 3226
		mu 0 4 1973 1972 1976 1977
		f 4 -3223 3227 3228 3229
		mu 0 4 1975 1974 1978 1979
		f 4 -3193 3230 3231 3232
		mu 0 4 1953 1952 1980 1981
		f 4 -3232 3233 3234 3235
		mu 0 4 1981 1980 1982 1983
		f 4 -3183 3236 3237 3238
		mu 0 4 1945 1944 1984 1985
		f 4 -3238 3239 3240 3241
		mu 0 4 1985 1984 1986 1987
		f 4 -3226 3242 -3241 3243
		mu 0 4 1977 1976 1987 1986
		f 4 -3235 3244 -3229 3245
		mu 0 4 1983 1982 1979 1978
		f 4 3246 -2950 3247 -3197
		mu 0 4 1988 1784 1787 1989
		f 4 3248 -2951 -3247 -3200
		mu 0 4 1990 1808 1784 1988
		f 4 3249 -2952 3250 -3208
		mu 0 4 1962 1800 1803 1966
		f 4 3251 -2955 3252 -3188
		mu 0 4 1946 1791 1813 1948
		f 4 3253 -2957 -3252 -3185
		mu 0 4 1942 1788 1791 1946
		f 4 -3218 3254 2957 3255
		mu 0 4 1965 1960 1821 1820
		f 5 -3217 3256 3147 3145 3257
		mu 0 5 1961 1964 1927 1831 1830
		f 4 3258 -3203 -3258 -2970
		mu 0 4 1834 1949 1961 1830
		f 4 -3187 3259 -2972 3260
		mu 0 4 1943 1947 1837 1836
		f 4 -3190 -3259 -2975 -3260
		mu 0 4 1947 1949 1834 1837
		f 4 -3256 -2985 -3250 -3207
		mu 0 4 1965 1820 1800 1962
		f 4 -3253 -2983 -3255 -3201
		mu 0 4 1948 1813 1821 1960
		f 4 -3220 3261 2995 3262
		mu 0 4 1991 1968 1842 1841
		f 5 -3219 3263 2996 3148 3264
		mu 0 5 1969 1970 1921 1920 1930
		f 4 -3214 3265 -3011 -3264
		mu 0 4 1970 1958 1992 1921
		f 4 3266 -3195 3267 -3021
		mu 0 4 1993 1956 1955 1994
		f 4 -3266 -3198 -3267 -3014
		mu 0 4 1992 1958 1956 1993
		f 4 -3263 -3023 -3249 -3216
		mu 0 4 1991 1841 1808 1990
		f 4 -3251 -3031 -3262 -3211
		mu 0 4 1966 1803 1842 1968
		f 4 -3192 -3248 3035 3268
		mu 0 4 1995 1996 1860 1859
		f 4 -3231 -3269 3058 3269
		mu 0 4 1997 1995 1859 1877
		f 4 -3224 3270 3051 3271
		mu 0 4 1972 1975 1872 1871
		f 4 -3239 3272 3063 3273
		mu 0 4 1945 1985 1881 1863
		f 4 -3184 -3274 3038 -3254
		mu 0 4 1942 1945 1863 1788
		f 4 3274 -3075 3275 -3243
		mu 0 4 1976 1888 1891 1987
		f 5 3276 -3151 3152 3277 -3244
		mu 0 5 1986 1896 1900 1933 1977
		f 4 3085 -3277 -3240 3278
		mu 0 4 1897 1896 1986 1984
		f 4 -3261 3086 3279 -3182
		mu 0 4 1943 1836 1902 1944
		f 4 -3280 3089 -3279 -3237
		mu 0 4 1944 1902 1897 1984
		f 4 -3225 -3272 3099 -3275
		mu 0 4 1976 1972 1871 1888
		f 4 -3242 -3276 3097 -3273
		mu 0 4 1985 1987 1891 1881
		f 4 3280 -3109 3281 -3245
		mu 0 4 1982 1905 1908 1979
		f 5 3282 3155 -3110 3283 -3246
		mu 0 5 1978 1938 1941 1998 1983
		f 4 -3284 3122 3284 -3236
		mu 0 4 1983 1998 1999 1981
		f 4 3131 -3268 -3194 3285
		mu 0 4 2000 2001 1950 1953
		f 4 3125 -3286 -3233 -3285
		mu 0 4 1999 2000 1953 1981
		f 4 -3234 -3270 3133 -3281
		mu 0 4 1982 1997 1877 1905
		f 4 -3230 -3282 3141 -3271
		mu 0 4 1975 1979 1908 1872
		f 4 3286 -3210 3287 -3161
		mu 0 4 1925 1963 1967 1928
		f 4 -3205 -3287 -3160 -3257
		mu 0 4 1964 1963 1925 1927
		f 4 -3288 -3213 -3265 -3164
		mu 0 4 1928 1967 1969 1930
		f 4 -3173 3288 -3222 3289
		mu 0 4 1932 1936 1974 1973
		f 4 -3278 -3168 -3290 -3227
		mu 0 4 1977 1933 1932 1973
		f 4 -3176 -3283 -3228 -3289
		mu 0 4 1936 1938 1978 1974
		f 5 -3310 3308 3291 3300 3299
		mu 0 5 2002 2003 2004 2005 2006
		f 4 3314 3315 3316 3317
		mu 0 4 2007 2008 2009 2010
		f 4 3318 3319 3320 3321
		mu 0 4 2011 2007 2012 2013
		f 4 3322 3323 3324 3325
		mu 0 4 2008 2011 2014 2015
		f 4 3326 3327 3328 3329
		mu 0 4 2013 2016 2017 2018
		f 4 3330 3331 3332 3333
		mu 0 4 2016 2012 2019 2020
		f 4 -3333 3334 3335 3336
		mu 0 4 2020 2019 2021 2022
		f 4 3337 3338 3339 3340
		mu 0 4 2023 2024 2025 2026
		f 4 3341 3342 3343 3344
		mu 0 4 2003 2027 2028 2029
		f 4 -3340 3345 3346 3347
		mu 0 4 2026 2025 2030 2031
		f 4 -3317 3348 3349 3350
		mu 0 4 2010 2009 2032 2033
		f 4 3351 3352 -3336 3353
		mu 0 4 2034 2035 2022 2021
		f 4 -3352 3354 3355 3356
		mu 0 4 2035 2034 2036 2037
		f 4 -3356 3357 -3350 3358
		mu 0 4 2037 2036 2033 2032
		f 4 3359 3360 3361 3362
		mu 0 4 2038 2039 2040 2041
		f 4 -3360 3363 3364 3365
		mu 0 4 2039 2038 2042 2043
		f 4 -3365 3366 3367 3368
		mu 0 4 2043 2042 2044 2045
		f 4 -3329 3369 3370 3371
		mu 0 4 2018 2017 2046 2047
		f 4 -3371 3372 3373 3374
		mu 0 4 2047 2046 2048 2049
		f 4 -3374 3375 3376 3377
		mu 0 4 2049 2048 2050 2051
		f 4 3378 3379 3380 3381
		mu 0 4 2052 2050 2053 2054
		f 4 3382 3383 3384 3385
		mu 0 4 2051 2052 2055 2056
		f 4 3386 3387 3388 3389
		mu 0 4 2056 2057 2058 2059
		f 4 3390 3391 3392 3393
		mu 0 4 2057 2055 2060 2061
		f 4 -3325 3394 3395 3396
		mu 0 4 2015 2014 2062 2063
		f 4 -3389 3397 -3396 3398
		mu 0 4 2059 2058 2063 2062
		f 4 3399 3400 3401 3402
		mu 0 4 2041 2064 2065 2066
		f 4 3403 3404 3405 3406
		mu 0 4 2064 2040 2067 2068
		f 4 3407 3408 -3406 3409
		mu 0 4 2061 2069 2068 2067
		f 4 3410 3411 3412 3413
		mu 0 4 2069 2060 2070 2071
		f 4 -3381 3414 3415 3416
		mu 0 4 2054 2053 2072 2073
		f 4 -3344 3417 3418 3419
		mu 0 4 2029 2028 2074 2075
		f 4 -3402 3420 3421 3422
		mu 0 4 2066 2065 2076 2077
		f 4 3423 3424 3425 3426
		mu 0 4 2078 2079 2080 2081
		f 4 3427 3428 3429 3430
		mu 0 4 2082 2078 2083 2084
		f 4 3431 3432 3433 3434
		mu 0 4 2079 2082 2085 2086
		f 4 -3430 3435 3436 3437
		mu 0 4 2084 2083 2087 2088
		f 4 -3416 3438 3439 3440
		mu 0 4 2073 2072 2089 2090
		f 4 3441 3442 3443 3444
		mu 0 4 2091 2087 2092 2093
		f 4 3445 3446 3447 3448
		mu 0 4 2088 2091 2094 2095
		f 4 3449 3450 3451 3452
		mu 0 4 2096 2094 2097 2098
		f 4 3453 3454 3455 3456
		mu 0 4 2095 2096 2099 2100
		f 4 3457 3458 3459 3460
		mu 0 4 2101 2102 2103 2104
		f 4 3461 3462 -3456 3463
		mu 0 4 2102 2105 2100 2099
		f 4 -3413 3464 3465 3466
		mu 0 4 2071 2070 2106 2107
		f 4 -3419 3467 3468 3469
		mu 0 4 2075 2074 2108 2109
		f 4 -3347 3470 3311 3471
		mu 0 4 2031 2030 2110 2111
		f 4 -3368 3472 -3314 3473
		mu 0 4 2045 2044 2112 2113
		f 4 -3440 3474 -3452 3475
		mu 0 4 2090 2089 2098 2097
		f 4 -3466 3476 -3444 3477
		mu 0 4 2107 2106 2093 2092
		f 4 -3422 3478 -3426 3479
		mu 0 4 2077 2076 2081 2080
		f 4 -3469 3480 -3460 3481
		mu 0 4 2109 2108 2104 2103
		f 4 -3378 -3386 -3390 3482
		mu 0 4 2049 2051 2056 2059
		f 4 -3339 -3300 3301 3483
		mu 0 4 2025 2024 2114 2115
		f 4 -3320 -3318 3484 -3332
		mu 0 4 2012 2007 2010 2019
		f 4 3307 3485 -3366 3486
		mu 0 4 2116 2117 2039 2043
		f 4 3487 -3341 3488 -3364
		mu 0 4 2038 2118 2119 2042
		f 4 -3431 3489 -3463 -3433
		mu 0 4 2120 2121 2100 2105
		f 4 3298 3297 3490 -3486
		mu 0 4 2117 2122 2123 2039
		f 4 -3330 3491 -3324 -3322
		mu 0 4 2013 2018 2014 2011
		f 4 -3491 3492 -3405 -3361
		mu 0 4 2039 2123 2067 2040
		f 4 -3384 -3382 3493 -3392
		mu 0 4 2055 2052 2054 2060
		f 4 -3309 -3345 3494 3290
		mu 0 4 2004 2003 2029 2124
		f 4 -3343 -3488 -3363 3495
		mu 0 4 2125 2126 2038 2041
		f 4 -3401 -3407 3496 3497
		mu 0 4 2065 2064 2068 2127
		f 4 -3494 -3417 3498 -3412
		mu 0 4 2060 2054 2073 2070
		f 4 -3495 -3420 3499 3293
		mu 0 4 2124 2029 2075 2128
		f 4 -3496 -3403 3500 -3418
		mu 0 4 2125 2041 2066 2129
		f 4 -3485 -3351 3501 -3335
		mu 0 4 2019 2010 2033 2021
		f 4 -3484 3302 3502 -3346
		mu 0 4 2025 2115 2130 2030
		f 4 -3489 -3348 3503 -3367
		mu 0 4 2042 2119 2131 2044
		f 4 -3487 -3369 3504 3306
		mu 0 4 2116 2043 2045 2132
		f 4 3505 -3388 3506 -3298
		mu 0 4 2122 2058 2057 2123
		f 4 -3493 -3507 -3394 -3410
		mu 0 4 2067 2123 2057 2061
		f 4 -3409 -3414 3507 -3497
		mu 0 4 2068 2069 2071 2127
		f 4 -3490 -3438 -3449 -3457
		mu 0 4 2100 2121 2088 2095
		f 4 -3415 3508 -3294 3509
		mu 0 4 2072 2053 2124 2128
		f 4 3510 -3291 -3509 -3380
		mu 0 4 2050 2004 2124 2053
		f 4 -3292 -3511 -3376 3511
		mu 0 4 2005 2004 2050 2048
		f 4 -3492 -3372 3512 -3395
		mu 0 4 2014 2018 2047 2062
		f 4 -3503 3304 3303 -3471
		mu 0 4 2030 2130 2133 2110
		f 4 -3504 -3472 3310 -3473
		mu 0 4 2044 2131 2134 2112
		f 4 -3505 -3474 3312 3305
		mu 0 4 2132 2045 2113 2135
		f 4 -3502 -3358 -3355 -3354
		mu 0 4 2021 2033 2036 2034
		f 4 3513 -3476 3514 -3477
		mu 0 4 2106 2090 2097 2093
		f 4 -3297 3515 -3478 3516
		mu 0 4 2136 2137 2107 2092
		f 4 3517 3296 3518 -3479
		mu 0 4 2076 2137 2136 2081
		f 4 3519 -3481 3520 -3480
		mu 0 4 2080 2138 2139 2077
		f 4 3521 -3482 3522 3294
		mu 0 4 2140 2109 2103 2141
		f 4 3523 -3295 3524 -3475
		mu 0 4 2089 2140 2141 2098
		f 4 -3515 -3451 -3447 -3445
		mu 0 4 2093 2097 2094 2091
		f 4 3525 -3517 -3443 -3436
		mu 0 4 2083 2136 2092 2087
		f 4 -3519 -3526 -3429 -3427
		mu 0 4 2081 2136 2083 2078
		f 4 -3435 -3461 -3520 -3425
		mu 0 4 2079 2086 2138 2080
		f 4 -3523 -3459 -3464 3526
		mu 0 4 2141 2103 2102 2099
		f 4 -3525 -3527 -3455 -3453
		mu 0 4 2098 2141 2099 2096
		f 4 -3500 -3470 -3522 3295
		mu 0 4 2128 2075 2109 2140
		f 4 -3521 -3468 -3501 -3423
		mu 0 4 2077 2139 2129 2066
		f 4 -3498 3292 -3518 -3421
		mu 0 4 2065 2127 2137 2076
		f 4 -3516 -3293 -3508 -3467
		mu 0 4 2107 2137 2127 2071
		f 4 -3499 -3441 -3514 -3465
		mu 0 4 2070 2073 2090 2106
		f 4 -3510 -3296 -3524 -3439
		mu 0 4 2072 2128 2140 2089
		f 4 -3326 3527 -3299 3528
		mu 0 4 2008 2015 2122 2117
		f 4 -3397 -3398 -3506 -3528
		mu 0 4 2015 2063 2058 2122
		f 4 -3375 -3483 -3399 -3513
		mu 0 4 2047 2049 2059 2062
		f 4 3529 -3512 -3373 -3370
		mu 0 4 2017 2005 2048 2046
		f 4 -3301 -3530 -3328 3530
		mu 0 4 2006 2005 2017 2016
		f 4 -3302 -3531 -3334 3531
		mu 0 4 2115 2114 2016 2020
		f 4 -3303 -3532 -3337 3532
		mu 0 4 2130 2115 2020 2022
		f 4 -3305 -3533 -3353 3533
		mu 0 4 2133 2130 2022 2035
		f 4 3535 -3306 -3535 -3359
		mu 0 4 2032 2132 2135 2037
		f 4 3536 -3307 -3536 -3349
		mu 0 4 2009 2116 2132 2032
		f 4 -3529 -3308 -3537 -3316
		mu 0 4 2008 2117 2116 2009
		f 3 -3319 -3323 -3315
		mu 0 3 2007 2011 2008
		f 3 -3321 -3331 -3327
		mu 0 3 2013 2012 2016
		f 3 -3338 -3342 3309
		mu 0 3 2002 2027 2003
		f 3 -3379 -3383 -3377
		mu 0 3 2050 2052 2051
		f 3 -3385 -3391 -3387
		mu 0 3 2056 2055 2057
		f 3 -3362 -3404 -3400
		mu 0 3 2041 2040 2064
		f 3 -3393 -3411 -3408
		mu 0 3 2061 2060 2069
		f 3 -3428 -3432 -3424
		mu 0 3 2078 2082 2079
		f 3 -3446 -3437 -3442
		mu 0 3 2091 2088 2087
		f 3 -3454 -3448 -3450
		mu 0 3 2096 2095 2094
		f 3 -3434 -3462 -3458
		mu 0 3 2101 2105 2102
		f 4 3540 -3540 -3539 3537
		mu 0 4 2142 2143 2144 2145
		f 4 3544 -3544 -3543 3541
		mu 0 4 2146 2147 2148 2149
		f 4 3548 -3548 -3547 -3546
		mu 0 4 2150 2151 2152 2153
		f 4 3552 -3552 -3551 -3550
		mu 0 4 2154 2155 2156 2157
		f 4 -3556 -3555 -3545 3553
		mu 0 4 2158 2159 2160 2161
		f 4 3559 -3559 -3558 3556
		mu 0 4 2162 2163 2164 2165
		f 4 3562 -3562 -3560 3560
		mu 0 4 2166 2167 2163 2162
		f 4 -3566 -3565 -3563 3563
		mu 0 4 2168 2169 2170 2171
		f 4 3569 -3569 -3568 3566
		mu 0 4 2172 2173 2174 2175
		f 4 3572 -3572 -3549 3570
		mu 0 4 2176 2177 2151 2150
		f 4 3576 -3576 -3575 3573
		mu 0 4 2178 2179 2180 2181
		f 4 3542 -3580 -3579 -3578
		mu 0 4 2149 2148 2182 2183
		f 4 -3583 -3582 -3573 3580
		mu 0 4 2184 2185 2186 2187
		f 4 -3586 -3585 -3584 3554
		mu 0 4 2159 2188 2189 2160
		f 4 3588 -3588 -3587 3575
		mu 0 4 2179 2190 2191 2180
		f 4 3591 -3591 -3590 3579
		mu 0 4 2148 2192 2193 2182
		f 4 3583 -3593 -3592 3543
		mu 0 4 2147 2194 2192 2148
		f 4 -3596 -3595 -3594 3584
		mu 0 4 2188 2195 2196 2189
		f 4 3598 -3598 -3597 3587
		mu 0 4 2190 2197 2198 2191
		f 4 3601 -3601 -3600 3590
		mu 0 4 2192 2199 2200 2193
		f 4 3593 -3603 -3602 3592
		mu 0 4 2194 2201 2199 2192
		f 4 -3606 -3581 -3605 3603
		mu 0 4 2202 2184 2187 2203
		f 4 3608 3549 -3608 3606
		mu 0 4 2204 2154 2157 2205
		f 4 3611 3545 -3611 3609
		mu 0 4 2206 2150 2153 2207
		f 4 3604 -3571 -3612 3612
		mu 0 4 2208 2176 2150 2206
		f 4 3546 -3615 -3553 -3614
		mu 0 4 2153 2152 2155 2154
		f 4 -3617 -3570 3615 3557
		mu 0 4 2164 2173 2172 2165
		f 4 3619 3618 -3618 3539
		mu 0 4 2143 2209 2210 2144
		f 4 3567 -3622 3565 3620
		mu 0 4 2175 2174 2169 2168
		f 4 3550 -3624 3582 3622
		mu 0 4 2157 2156 2185 2184
		f 4 3607 -3623 3605 3624
		mu 0 4 2205 2157 2184 2202
		f 4 3596 -3627 3595 3625
		mu 0 4 2191 2198 2195 2188
		f 4 3586 -3626 3585 3627
		mu 0 4 2180 2191 2188 2159
		f 4 3574 -3628 3555 3628
		mu 0 4 2181 2180 2159 2158
		f 4 -3631 -3577 -3630 3578
		mu 0 4 2182 2179 2178 2183
		f 4 -3632 -3589 3630 3589
		mu 0 4 2193 2190 2179 2182
		f 4 -3633 -3599 3631 3599
		mu 0 4 2200 2197 2190 2193
		f 4 3613 -3609 3633 3610
		mu 0 4 2153 2154 2204 2207
		f 4 -3636 -3604 -3635 3594
		mu 0 4 2195 2202 2203 2196
		f 4 3636 -3625 3635 3626
		mu 0 4 2198 2205 2202 2195
		f 4 3637 -3607 -3637 3597
		mu 0 4 2197 2204 2205 2198
		f 4 -3634 -3638 3632 3638
		mu 0 4 2207 2204 2197 2200
		f 4 3639 -3610 -3639 3600
		mu 0 4 2199 2206 2207 2200
		f 4 3634 -3613 -3640 3602
		mu 0 4 2201 2208 2206 2199
		f 4 3641 -3567 -3641 3551
		mu 0 4 2155 2172 2175 2156
		f 4 3642 -3616 -3642 3614
		mu 0 4 2152 2165 2172 2155
		f 4 3643 -3557 -3643 3547
		mu 0 4 2151 2162 2165 2152
		f 4 3644 -3561 -3644 3571
		mu 0 4 2177 2166 2162 2151
		f 4 -3646 -3564 -3645 3581
		mu 0 4 2185 2168 2171 2186
		f 4 3640 -3621 3645 3623
		mu 0 4 2156 2175 2168 2185
		f 4 3647 -3619 -3647 3568
		mu 0 4 2173 2210 2209 2174
		f 4 3617 -3648 3616 3648
		mu 0 4 2144 2210 2173 2164
		f 4 3649 3538 -3649 3558
		mu 0 4 2163 2145 2144 2164
		f 4 3650 -3538 -3650 3561
		mu 0 4 2167 2211 2145 2163
		f 4 -3652 -3541 -3651 3564
		mu 0 4 2169 2143 2142 2170
		f 4 3646 -3620 3651 3621
		mu 0 4 2174 2209 2143 2169
		f 4 3652 3657 -3654 -3657
		mu 0 4 2212 2213 2214 2215
		f 4 3653 3659 -3655 -3659
		mu 0 4 2215 2214 2216 2217
		f 4 3654 3661 -3656 -3661
		mu 0 4 2217 2216 2218 2219
		f 4 -3664 -3662 -3660 -3658
		mu 0 4 2220 2221 2216 2214
		f 4 3662 3656 3658 3660
		mu 0 4 2222 2223 2215 2217
		f 4 3666 3665 -3665 -3653
		mu 0 4 2224 2225 2226 2227
		f 4 3669 3668 -3668 -3666
		mu 0 4 2225 2228 2229 2226
		f 4 3671 3655 -3671 -3669
		mu 0 4 2228 2230 2231 2229
		f 4 3664 3667 3670 3663
		mu 0 4 2220 2226 2229 2221
		f 4 -3672 -3670 -3667 -3663
		mu 0 4 2232 2228 2225 2233
		f 4 3675 3674 -3674 -3673
		mu 0 4 2234 2235 2236 2237
		f 4 3678 -3678 -3677 -3675
		mu 0 4 2235 2238 2239 2236
		f 4 3680 3724 -3695 -3680
		mu 0 4 2240 2241 2242 2243
		f 4 3684 3683 -3683 3681
		mu 0 4 2244 2245 2246 2247
		f 4 -3687 -3679 -3676 -3686
		mu 0 4 2248 2238 2235 2234
		f 4 3690 3689 -3689 -3688
		mu 0 4 2249 2250 2251 2252
		f 4 3692 -3685 -3692 3673
		mu 0 4 2236 2245 2244 2237
		f 4 -3684 -3693 3676 -3694
		mu 0 4 2246 2245 2236 2239
		f 4 3697 -3697 -3696 3694
		mu 0 4 2253 2254 2255 2243
		f 4 3700 -3700 -3699 -3698
		mu 0 4 2256 2257 2258 2254
		f 4 -3704 -3703 -3702 -3682
		mu 0 4 2247 2259 2260 2244
		f 4 3701 -3706 -3705 3691
		mu 0 4 2244 2260 2261 2237
		f 4 3708 3707 -3707 3699
		mu 0 4 2257 2262 2263 2258
		f 4 3712 -3712 -3711 3709
		mu 0 4 2264 2265 2266 2267
		f 4 3714 -3690 -3714 3705
		mu 0 4 2260 2251 2250 2261
		f 4 -3716 3688 -3715 3702
		mu 0 4 2259 2252 2251 2260
		f 4 3718 -3710 -3718 3716
		mu 0 4 2261 2264 2268 2269
		f 4 3721 3720 -3720 -3709
		mu 0 4 2257 2270 2271 2262
		f 4 -3724 3711 -3723 -3691
		mu 0 4 2249 2266 2265 2250
		f 4 3722 -3713 -3719 3713
		mu 0 4 2250 2265 2264 2261
		f 4 -3722 -3701 -3725 3741
		mu 0 4 2270 2257 2272 2273
		f 4 3726 3679 -3726 3677
		mu 0 4 2238 2240 2243 2239
		f 4 -3681 -3727 3686 -3739
		mu 0 4 2274 2240 2238 2275
		f 4 -3729 -3721 3727 3710
		mu 0 4 2266 2271 2270 2267
		f 4 3719 3728 3723 -3730
		mu 0 4 2262 2271 2266 2249
		f 4 3729 3687 -3731 -3708
		mu 0 4 2262 2249 2252 2263
		f 4 3706 3730 3715 3731
		mu 0 4 2258 2263 2252 2259
		f 4 3698 -3732 3703 -3733
		mu 0 4 2254 2258 2259 2247
		f 4 3733 3696 3732 3682
		mu 0 4 2246 2255 2254 2247
		f 4 3695 -3734 3693 3725
		mu 0 4 2243 2255 2246 2239
		f 4 3737 -3737 -3736 3734
		mu 0 4 2276 2277 2278 2279
		f 4 3735 -3741 -3740 3738
		mu 0 4 2280 2278 2281 2282
		f 4 3739 -3744 -3743 -3742
		mu 0 4 2283 2281 2284 2270
		f 4 3742 -3745 -3738 -3728
		mu 0 4 2270 2284 2285 2267
		f 4 3748 -3748 -3747 3745
		mu 0 4 2286 2287 2288 2289
		f 4 3752 3751 -3751 -3750
		mu 0 4 2290 2291 2292 2293
		f 4 3746 3754 -3753 -3754
		mu 0 4 2289 2288 2291 2290
		f 4 3750 -3757 -3749 3755
		mu 0 4 2293 2292 2294 2295
		f 4 3759 -3746 -3759 3757
		mu 0 4 2296 2286 2289 2297
		f 4 3761 -3756 -3760 3760
		mu 0 4 2298 2293 2295 2299
		f 4 3763 3749 -3762 3762
		mu 0 4 2300 2290 2293 2298
		f 4 3758 3753 -3764 3764
		mu 0 4 2297 2289 2290 2300
		f 4 3768 -3768 -3767 3765
		mu 0 4 2301 2302 2303 2304
		f 4 3771 -3771 -3770 3747
		mu 0 4 2287 2305 2306 2288
		f 4 3769 -3774 -3773 -3755
		mu 0 4 2288 2306 2307 2291
		f 4 3772 -3776 -3775 -3752
		mu 0 4 2291 2307 2308 2292
		f 4 3774 -3777 -3772 3756
		mu 0 4 2292 2308 2309 2294
		f 4 3779 -3779 -3778 3773
		mu 0 4 2306 2310 2311 2307
		f 4 3781 -3781 -3780 3770
		mu 0 4 2305 2312 2310 2306
		f 4 3783 -3783 -3782 3776
		mu 0 4 2308 2313 2314 2309
		f 4 3777 -3785 -3784 3775
		mu 0 4 2307 2311 2313 2308
		f 4 3786 3766 -3786 3778
		mu 0 4 2310 2315 2303 2311
		f 4 3787 -3766 -3787 3780
		mu 0 4 2312 2316 2315 2310
		f 4 3788 -3769 -3788 3782
		mu 0 4 2313 2302 2301 2314
		f 4 3785 3767 -3789 3784
		mu 0 4 2311 2303 2302 2313
		f 4 3791 -3791 -3790 3736
		mu 0 4 2277 2317 2318 2278
		f 4 3793 -3793 -3792 3744
		mu 0 4 2284 2319 2320 2285
		f 4 3795 -3795 -3794 3743
		mu 0 4 2281 2321 2319 2284
		f 4 3789 -3797 -3796 3740
		mu 0 4 2278 2318 2321 2281
		f 4 3799 -3799 -3798 3790
		mu 0 4 2317 2322 2323 2318
		f 4 3801 -3801 -3800 3792
		mu 0 4 2319 2324 2325 2320
		f 4 3803 -3803 -3802 3794
		mu 0 4 2321 2326 2324 2319
		f 4 3797 -3805 -3804 3796
		mu 0 4 2318 2323 2326 2321
		f 4 3806 -3758 -3806 3798
		mu 0 4 2322 2296 2297 2323
		f 4 3807 -3761 -3807 3800
		mu 0 4 2324 2298 2299 2325
		f 4 3808 -3763 -3808 3802
		mu 0 4 2326 2300 2298 2324
		f 4 3805 -3765 -3809 3804
		mu 0 4 2323 2297 2300 2326
		f 4 -3816 3817 3867 -3821
		mu 0 4 2327 2328 2329 2330
		f 4 -3813 3813 3844 -3815
		mu 0 4 2331 2332 2333 2334
		f 4 3835 3863 3906 -3830
		mu 0 4 2335 2336 2337 2338
		f 4 3834 3833 3902 -3833
		mu 0 4 2339 2340 2341 2342
		f 4 -3812 3814 3839 3879
		mu 0 4 2343 2344 2345 2346
		f 4 -3863 3865 3918 -3823
		mu 0 4 2347 2348 2349 2350
		f 4 -3826 3822 3920 -3825
		mu 0 4 2351 2347 2350 2352
		f 4 -3828 3824 3922 3921
		mu 0 4 2353 2354 2355 2356
		f 4 -3829 3826 3914 -3822
		mu 0 4 2357 2358 2359 2360
		f 4 -3832 3829 3908 -3831
		mu 0 4 2361 2335 2338 2362
		f 4 -3810 3818 3841 -3817
		mu 0 4 2363 2364 2365 2366
		f 4 3810 3882 3881 -3814
		mu 0 4 2332 2367 2368 2333
		f 4 -3837 3830 3910 3909
		mu 0 4 2369 2370 2371 2372
		f 4 -3840 3837 3847 3877
		mu 0 4 2346 2345 2373 2374
		f 4 -3842 3838 3849 -3841
		mu 0 4 2366 2365 2375 2376
		f 4 -3882 3884 3883 -3843
		mu 0 4 2333 2368 2377 2378
		f 4 -3845 3842 3852 -3838
		mu 0 4 2334 2333 2378 2379
		f 4 -3848 3845 3890 3889
		mu 0 4 2374 2373 2380 2381
		f 4 -3850 3846 3894 -3849
		mu 0 4 2376 2375 2382 2383
		f 4 -3884 3886 3898 -3851
		mu 0 4 2378 2377 2384 2385
		f 4 -3853 3850 3899 -3846
		mu 0 4 2379 2378 2385 2386
		f 4 -3856 3853 3836 3873
		mu 0 4 2387 2388 2370 2369
		f 4 -3858 3854 -3835 -3857
		mu 0 4 2389 2390 2340 2339
		f 4 -3886 3887 -3836 -3859
		mu 0 4 2391 2392 2336 2335
		f 4 -3861 3858 3831 -3854
		mu 0 4 2393 2391 2335 2361
		f 4 3861 3832 3904 -3864
		mu 0 4 2336 2339 2342 2337
		f 4 -3866 -3824 3821 3916
		mu 0 4 2349 2348 2357 2360
		f 4 -3868 3864 -3820 -3867
		mu 0 4 2330 2329 2394 2395
		f 4 -3869 -3922 3923 -3827
		mu 0 4 2358 2353 2356 2359
		f 4 -3871 -3910 3911 -3834
		mu 0 4 2340 2369 2372 2341
		f 4 -3873 -3874 3870 -3855
		mu 0 4 2390 2387 2369 2340
		f 4 -3875 -3890 3892 -3847
		mu 0 4 2375 2374 2381 2382
		f 4 -3877 -3878 3874 -3839
		mu 0 4 2365 2346 2374 2375
		f 4 -3879 -3880 3876 -3819
		mu 0 4 2364 2343 2346 2365
		f 4 -3883 3880 3816 3843
		mu 0 4 2368 2367 2363 2366
		f 4 -3885 -3844 3840 3851
		mu 0 4 2377 2368 2366 2376
		f 4 -3887 -3852 3848 3896
		mu 0 4 2384 2377 2376 2383
		f 4 -3888 -3860 3856 -3862
		mu 0 4 2336 2392 2389 2339
		f 4 -3891 3888 3855 3875
		mu 0 4 2381 2380 2388 2387
		f 4 -3893 -3876 3872 -3892
		mu 0 4 2382 2381 2387 2390
		f 4 -3895 3891 3857 -3894
		mu 0 4 2383 2382 2390 2389
		f 4 -3896 -3897 3893 3859
		mu 0 4 2392 2384 2383 2389
		f 4 -3899 3895 3885 -3898
		mu 0 4 2385 2384 2392 2391
		f 4 -3900 3897 3860 -3889
		mu 0 4 2386 2385 2391 2393
		f 4 -3903 3900 3828 -3902
		mu 0 4 2342 2341 2358 2357
		f 4 -3905 3901 3823 -3904
		mu 0 4 2337 2342 2357 2348
		f 4 -3907 3903 3862 -3906
		mu 0 4 2338 2337 2348 2347
		f 4 -3909 3905 3825 -3908
		mu 0 4 2362 2338 2347 2351
		f 4 -3911 3907 3827 3871
		mu 0 4 2372 2371 2354 2353
		f 4 -3912 -3872 3868 -3901
		mu 0 4 2341 2372 2353 2358
		f 4 -3915 3912 3819 -3914
		mu 0 4 2360 2359 2395 2394
		f 4 -3916 -3917 3913 -3865
		mu 0 4 2329 2349 2360 2394
		f 4 -3919 3915 -3818 -3918
		mu 0 4 2350 2349 2329 2328
		f 4 -3921 3917 3815 -3920
		mu 0 4 2352 2350 2328 2396
		f 4 -3923 3919 3820 3869
		mu 0 4 2356 2355 2327 2330
		f 4 -3924 -3870 3866 -3913
		mu 0 4 2359 2356 2330 2395
		f 4 3927 3926 -3926 -3925
		mu 0 4 2397 2398 2399 2400
		f 4 3931 3930 -3930 -3929
		mu 0 4 2401 2402 2403 2404
		f 4 3929 3934 -3934 -3933
		mu 0 4 2404 2403 2405 2406
		f 4 3933 3937 -3937 -3936
		mu 0 4 2406 2405 2407 2408
		f 4 -3942 -3941 -3940 -3939
		mu 0 4 2409 2410 2411 2412
		f 4 3935 3942 3928 3932
		mu 0 4 2406 2408 2401 2404
		f 4 3936 3944 -3928 -3944
		mu 0 4 2408 2413 2398 2397
		f 4 3938 3947 -3947 -3946
		mu 0 4 2409 2412 2414 2415
		f 4 3949 -3932 3948 3925
		mu 0 4 2399 2402 2401 2400
		f 4 -3943 3943 3924 -3949
		mu 0 4 2401 2408 2397 2400
		f 4 3951 3939 -3951 -3931
		mu 0 4 2402 2412 2411 2403
		f 4 -3935 3950 3940 -3953
		mu 0 4 2416 2403 2411 2410
		f 4 -3938 3952 3941 -3954
		mu 0 4 2417 2416 2410 2409
		f 4 -3945 3953 3945 -3955
		mu 0 4 2418 2419 2409 2415
		f 4 -3927 3954 3946 -3956
		mu 0 4 2399 2418 2415 2414
		f 4 -3952 -3950 3955 -3948
		mu 0 4 2412 2402 2399 2414
		f 4 3959 3958 -3958 -3957
		mu 0 4 2420 2421 2422 2423
		f 4 3963 3962 -3962 -3961
		mu 0 4 2424 2425 2426 2427
		f 4 3966 3965 -3965 -3963
		mu 0 4 2425 2428 2429 2426
		f 4 3969 3968 -3968 -3966
		mu 0 4 2428 2430 2431 2429
		f 4 3973 3972 3971 3970
		mu 0 4 2432 2433 2434 2435
		f 4 -3967 -3964 -3975 -3970
		mu 0 4 2428 2425 2424 2430
		f 4 3976 3956 -3976 -3969
		mu 0 4 2430 2420 2423 2436
		f 4 3979 3978 -3978 -3974
		mu 0 4 2432 2437 2438 2433
		f 4 -3959 -3982 3960 -3981
		mu 0 4 2422 2421 2424 2427
		f 4 3981 -3960 -3977 3974
		mu 0 4 2424 2421 2420 2430
		f 4 3961 3983 -3973 -3983
		mu 0 4 2427 2426 2434 2433
		f 4 3984 -3972 -3984 3964
		mu 0 4 2439 2435 2434 2426
		f 4 3985 -3971 -3985 3967
		mu 0 4 2440 2432 2435 2439
		f 4 3986 -3980 -3986 3975
		mu 0 4 2441 2437 2432 2442
		f 4 3987 -3979 -3987 3957
		mu 0 4 2422 2438 2437 2441
		f 4 3977 -3988 3980 3982
		mu 0 4 2433 2438 2422 2427
		f 4 4002 4001 -3990 -4001
		mu 0 4 2443 2444 2445 2446
		f 4 -3989 3995 3996 -3995
		mu 0 4 2447 2448 2449 2450
		f 4 3988 3991 -4000 -3991
		mu 0 4 2448 2447 2451 2452
		f 4 4029 4031 -4034 -4035
		mu 0 4 2453 2454 2455 2456
		f 4 4036 4034 -4039 -4040
		mu 0 4 2457 2453 2456 2458
		f 4 3999 3998 -4006 -3998
		mu 0 4 2452 2451 2459 2460
		f 4 4041 -4032 -4044 4044
		mu 0 4 2461 2455 2454 2462
		f 5 4010 4011 4006 4058 4057
		mu 0 5 2463 2464 2459 2465 2466
		f 5 -4010 4004 4056 4055 -4013
		mu 0 5 2467 2468 2469 2470 2460
		f 4 -4012 -4009 4012 4005
		mu 0 4 2459 2464 2467 2460
		f 4 4008 4014 -4016 -4014
		mu 0 4 2467 2464 2471 2472
		f 4 -4003 4017 4018 -4017
		mu 0 4 2444 2443 2473 2474
		f 4 4009 4013 -4021 -4020
		mu 0 4 2468 2467 2472 2475
		f 5 -4052 4052 4050 4021 -4018
		mu 0 5 2443 2476 2477 2478 2473
		f 4 -4011 4024 4025 -4015
		mu 0 4 2464 2463 2479 2471
		f 5 4007 4047 4045 -4027 -4025
		mu 0 5 2463 2480 2481 2482 2479
		f 4 4015 4028 -4030 -4028
		mu 0 4 2472 2471 2483 2484
		f 4 -4019 4032 4033 -4031
		mu 0 4 2474 2473 2456 2455
		f 4 4020 4027 -4037 -4036
		mu 0 4 2475 2472 2484 2457
		f 4 -4022 4037 4038 -4033
		mu 0 4 2473 2478 2458 2456
		f 4 -4023 4035 4039 -4038
		mu 0 4 2485 2475 2457 2458
		f 4 4023 4030 -4042 -4041
		mu 0 4 2486 2474 2455 2461
		f 4 -4026 4042 4043 -4029
		mu 0 4 2471 2479 2487 2483
		f 4 4026 4040 -4045 -4043
		mu 0 4 2479 2482 2488 2487;
	setAttr ".fc[2000:2083]"
		f 5 -4049 4046 4016 -4024 -4046
		mu 0 5 2489 2490 2444 2474 2491
		f 5 -4054 -4004 4019 4022 -4051
		mu 0 5 2492 2493 2468 2475 2485
		f 4 4059 4060 4061 4062
		mu 0 4 2494 2495 2496 2497
		f 4 -4060 4063 4064 4065
		mu 0 4 2495 2498 2499 2500
		f 4 4066 4067 4068 4069
		mu 0 4 2501 2502 2503 2504
		f 4 -4067 4070 4071 4072
		mu 0 4 2502 2501 2505 2506
		f 4 -4072 4073 -4059 4074
		mu 0 4 2506 2505 2466 2465
		f 4 4075 4076 4077 4078
		mu 0 4 2507 2508 2509 2510
		f 4 -4076 4079 4080 4081
		mu 0 4 2508 2507 2511 2512
		f 4 -4081 4082 -4057 4083
		mu 0 4 2512 2511 2470 2469
		f 4 4084 4085 4086 4087
		mu 0 4 2513 2514 2515 2516
		f 4 -4085 4088 4089 4090
		mu 0 4 2517 2513 2518 2519
		f 4 4091 -4066 4092 -4071
		mu 0 4 2501 2495 2500 2505
		f 4 4093 -4082 4094 -4089
		mu 0 4 2513 2508 2512 2518
		f 4 -4092 -4070 4095 -4061
		mu 0 4 2495 2501 2504 2496
		f 4 -4094 -4088 4096 -4077
		mu 0 4 2508 2513 2516 2509
		f 4 4097 -3992 4098 -4073
		mu 0 4 2506 2451 2447 2502
		f 4 3994 4099 -4068 -4099
		mu 0 4 2447 2450 2503 2502
		f 4 -3994 4100 -4063 4101
		mu 0 4 2520 2445 2521 2522
		f 4 -4091 4051 4000 4102
		mu 0 4 2523 2476 2443 2446
		f 4 3992 4103 -4086 -4103
		mu 0 4 2446 2524 2525 2523
		f 4 -3996 4104 -4079 4105
		mu 0 4 2449 2448 2507 2510
		f 4 3990 4106 -4080 -4105
		mu 0 4 2448 2452 2511 2507
		f 4 -4002 -4047 -4064 -4101
		mu 0 4 2445 2444 2490 2521
		f 5 -4084 -4005 4003 4054 -4095
		mu 0 5 2512 2469 2468 2493 2518
		f 4 -4107 3997 -4056 -4083
		mu 0 4 2511 2452 2460 2470
		f 4 -4075 -4007 -3999 -4098
		mu 0 4 2506 2465 2459 2451
		f 5 -4058 -4074 -4093 4049 -4008
		mu 0 5 2463 2466 2505 2500 2480
		f 4 -4048 -4050 -4065 4048
		mu 0 4 2481 2480 2500 2499
		f 4 -4053 -4090 -4055 4053
		mu 0 4 2492 2519 2518 2493
		f 4 4110 4109 -4109 -4108
		mu 0 4 2526 2527 2528 2529
		f 4 4113 -3997 -4113 4111
		mu 0 4 2530 2450 2449 2531
		f 4 4116 4115 -4115 -4112
		mu 0 4 2531 2532 2533 2530
		f 4 4120 4119 -4119 -4118
		mu 0 4 2534 2535 2536 2537
		f 4 4123 4122 -4121 -4122
		mu 0 4 2538 2539 2535 2534
		f 4 4126 4125 -4125 -4116
		mu 0 4 2532 2540 2541 2533
		f 4 -4130 4128 4118 -4128
		mu 0 4 2542 2543 2537 2536
		f 5 -4135 -4134 -4133 -4132 -4131
		mu 0 5 2544 2545 2546 2541 2547
		f 5 4139 -4139 -4138 -4137 4135
		mu 0 5 2548 2540 2549 2550 2551
		f 4 -4126 -4140 4140 4131
		mu 0 4 2541 2540 2548 2547
		f 4 4143 4142 -4142 -4141
		mu 0 4 2548 2552 2553 2547
		f 4 4146 -4146 -4145 4107
		mu 0 4 2529 2554 2555 2526
		f 4 4148 4147 -4144 -4136
		mu 0 4 2551 2556 2552 2548
		f 5 4144 -4153 -4152 -4151 4149
		mu 0 5 2526 2555 2557 2558 2559
		f 4 4141 -4155 -4154 4130
		mu 0 4 2547 2553 2560 2544
		f 5 4153 4158 -4158 -4157 -4156
		mu 0 5 2544 2560 2561 2562 2563
		f 4 4160 4117 -4160 -4143
		mu 0 4 2552 2564 2565 2553
		f 4 4162 -4120 -4162 4145
		mu 0 4 2554 2536 2535 2555
		f 4 4163 4121 -4161 -4148
		mu 0 4 2556 2538 2564 2552
		f 4 4161 -4123 -4165 4152
		mu 0 4 2555 2535 2539 2557
		f 4 4164 -4124 -4164 4165
		mu 0 4 2566 2539 2538 2556
		f 4 4167 4127 -4163 -4167
		mu 0 4 2567 2542 2536 2554
		f 4 4159 -4129 -4169 4154
		mu 0 4 2553 2565 2568 2560
		f 4 4168 4129 -4168 -4159
		mu 0 4 2560 2568 2569 2561
		f 5 4157 4166 -4147 -4171 4169
		mu 0 5 2570 2571 2554 2529 2572
		f 5 4151 -4166 -4149 4172 4171
		mu 0 5 2573 2566 2556 2551 2574
		f 4 -4176 -4062 -4175 -4174
		mu 0 4 2575 2576 2496 2577
		f 4 -4179 -4178 -4177 4173
		mu 0 4 2577 2578 2579 2580
		f 4 -4182 -4069 -4181 -4180
		mu 0 4 2581 2504 2503 2582
		f 4 -4185 -4184 -4183 4179
		mu 0 4 2582 2583 2584 2581
		f 4 -4187 4133 -4186 4183
		mu 0 4 2583 2546 2545 2584
		f 4 -4190 -4078 -4189 -4188
		mu 0 4 2585 2510 2586 2587
		f 4 -4193 -4192 -4191 4187
		mu 0 4 2587 2588 2589 2585
		f 4 -4195 4137 -4194 4191
		mu 0 4 2588 2550 2549 2589
		f 4 -4198 -4087 -4197 -4196
		mu 0 4 2590 2591 2592 2593
		f 4 -4201 -4200 -4199 4195
		mu 0 4 2594 2595 2596 2590
		f 4 4182 -4203 4178 -4202
		mu 0 4 2581 2584 2578 2577
		f 4 4198 -4205 4192 -4204
		mu 0 4 2590 2596 2588 2587
		f 4 4174 -4096 4181 4201
		mu 0 4 2577 2496 2504 2581
		f 4 4188 -4097 4197 4203
		mu 0 4 2587 2586 2591 2590
		f 4 4184 -4207 4114 -4206
		mu 0 4 2583 2582 2530 2533
		f 4 4206 4180 -4100 -4114
		mu 0 4 2530 2582 2503 2450
		f 4 -4102 4175 -4209 4207
		mu 0 4 2597 2598 2599 2528
		f 4 -4210 -4111 -4150 4200
		mu 0 4 2600 2527 2526 2559
		f 4 4209 4196 -4104 -4211
		mu 0 4 2527 2600 2601 2602
		f 4 -4106 4189 -4212 4112
		mu 0 4 2449 2510 2585 2531
		f 4 4211 4190 -4213 -4117
		mu 0 4 2531 2585 2589 2532
		f 4 4208 4176 4170 4108
		mu 0 4 2528 2599 2572 2529
		f 5 4204 -4214 -4173 4136 4194
		mu 0 5 2588 2596 2574 2551 2550
		f 4 4193 4138 -4127 4212
		mu 0 4 2589 2549 2540 2532
		f 4 4205 4124 4132 4186
		mu 0 4 2583 2533 2541 2546
		f 5 4155 -4215 4202 4185 4134
		mu 0 5 2544 2563 2578 2584 2545
		f 4 -4170 4177 4214 4156
		mu 0 4 2562 2579 2578 2563
		f 4 -4172 4213 4199 4150
		mu 0 4 2573 2574 2596 2595;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "SpiderGuard_GEOShapeDeformed" -p "Spider_Guard_MOD_MASTER:SpiderGuard_GEO";
	rename -uid "86E9D6A5-45ED-7004-B735-448A411BDC35";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.03843243420124054 0.55774837732315063 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "92A144D9-4C8D-BD70-6046-A28B5E9457E9";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "487FC823-4295-9561-6BF4-DFAD91D8355C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "207296E6-4430-7620-86BA-82B99470E2F8";
createNode displayLayerManager -n "layerManager";
	rename -uid "A77F574D-4643-419F-DE64-AF95784DE4E3";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "6B46363A-4E44-7809-CD54-549E896DAA24";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C4336685-4F63-CA65-18E8-47BA73714CF5";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3922A1A2-48D4-BCB3-356A-508B66B634F7";
	setAttr ".g" yes;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "BD960D80-4C09-2FF3-453C-AE824FABABE2";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F4BE2450-41A0-0559-1506-F18E4A5FE84C";
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
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1468\n            -height 734\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1468\\n    -height 734\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1468\\n    -height 734\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "274571B1-4835-F2CB-100B-4EA11C356B7F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Geometry";
	rename -uid "140B39CE-4BC4-40A7-B6B8-2C8674AF1207";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "0AA12ABD-4DBD-3AFE-14C6-3D83A8BAEBB7";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 30;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "F8F54411-4633-D294-B495-98976978F7DF";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "6AB840EA-407E-6C83-43AB-7E9589B4F047";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "7863E823-4AA6-A184-AC7C-36A6ED978407";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "BCB07EC6-465D-9E33-D5DD-289D7C16E519";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "A052E6FA-4121-7063-D307-A4BD5D5A2EC2";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle34";
	rename -uid "A2561B3E-454B-BDBA-7BE3-98AF64E27E8B";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 5;
createNode tweak -n "tweak1";
	rename -uid "AF5A784C-41F1-DB19-658D-BCB033E6E4F7";
createNode makeNurbCircle -n "makeNurbCircle35";
	rename -uid "23874A51-474B-68F6-C7EA-6883B633D01B";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 30;
	setAttr ".tol" 0;
createNode skinCluster -n "skinCluster1";
	rename -uid "8488E575-4BEA-D2A7-C947-E4816DFD14CC";
	setAttr -s 2160 ".wl";
	setAttr ".wl[0:253].w"
		2 34 0.99934903621677784 35 0.00065096378322221078
		2 34 0.99964646145899139 35 0.00035353854100851509
		2 34 0.99967459614105081 35 0.00032540385894919545
		2 34 0.99964110091289293 35 0.00035889908710716922
		1 35 1
		1 35 1
		1 35 1
		1 34 1
		2 34 0.99962730470815764 35 0.00037269529184241756
		2 34 0.070816694716930126 35 0.9291833052830698
		2 34 0.051119765475428243 35 0.94888023452457182
		1 35 1
		2 34 0.99960179956272377 35 0.00039820043727621651
		2 34 0.99966402405379495 35 0.00033597594620506641
		1 35 1
		1 35 1
		2 34 0.99974602073336882 35 0.00025397926663117687
		2 34 0.99962210732688628 35 0.00037789267311370752
		2 34 0.99946731690393664 35 0.00053268309606344371
		1 35 1
		2 34 0.99968730354900859 35 0.00031269645099140129
		2 34 0.65871488131374445 35 0.34128511868625555
		2 35 0.93666060401894979 36 0.063339395981050206
		2 35 0.9389934165354199 36 0.061006583464580003
		2 34 0.79797682656555613 35 0.20202317343444384
		2 34 0.77800225921719424 35 0.22199774078280576
		2 34 0.85139668444937 35 0.14860331555063
		2 34 0.74528493580537125 35 0.25471506419462875
		2 34 0.80008094608904345 35 0.19991905391095655
		2 34 0.80466417513205968 35 0.19533582486794043
		2 34 0.80463343142384425 35 0.1953665685761557
		3 13 0.021074015388976283 18 0.97881496534273804 19 0.00011101926828563404
		2 34 0.80058958683959514 35 0.19941041316040492
		2 35 0.94923935501314416 36 0.050760644986855841
		2 35 0.95128789989149343 36 0.048712100108506594
		1 35 1
		1 35 1
		2 35 0.93554803317653867 36 0.064451966823461326
		2 35 0.93738485976761476 36 0.062615140232385208
		2 35 0.94671729164614016 36 0.053282708353859842
		2 35 0.94750919928248434 36 0.052490800717515572
		2 35 0.9852100418962132 36 0.014789958103786799
		2 35 0.98783547744619937 36 0.012164522553800444
		3 34 0.00026645056269813955 35 0.98953694770690181 36 0.010196601730400004
		2 35 0.9896942126479531 36 0.010305787352046833
		1 36 1
		1 36 1
		1 36 1
		1 36 1
		2 35 0.94457352832119379 36 0.055426471678806211
		2 35 0.93358101490273349 36 0.066418985097266514
		2 35 0.93514202887323872 36 0.064857971126761269
		2 35 0.94510747745625734 36 0.054892522543742585
		2 35 0.9413403818662458 36 0.058659618133754199
		2 35 0.931500643491745 36 0.068499356508255005
		2 35 0.93175293329285147 36 0.068247066707148418
		2 35 0.94147846230237753 36 0.058521537697622479
		3 34 0.001549456950365277 35 0.99772856583482949 36 0.00072197721480533178
		3 34 0.0033689465625436959 35 0.99624344958134858 36 0.00038760385610768679
		1 35 1
		1 35 1
		3 34 0.0014890246688706392 35 0.99738407671423523 36 0.0011268986168939412
		3 34 0.0033346667691970481 35 0.99573670874008446 36 0.00092862449071845076
		1 35 1
		1 35 1
		3 34 0.0013905272017683279 35 0.99701080984454904 36 0.0015986629536826594
		3 34 0.0032211357755638995 35 0.99537970576046397 36 0.0013991584639721291
		1 35 1
		1 35 1
		2 34 0.1046175277971631 35 0.89538247220283695
		2 34 0.1046175277971631 35 0.89538247220283695
		2 34 0.1046175277971631 35 0.89538247220283695
		2 34 0.1046175277971631 35 0.89538247220283695
		1 35 1
		1 35 1
		1 35 1
		1 35 1
		3 34 0.001561796559146528 35 0.99803299435957427 36 0.00040520908127916706
		3 34 0.001561796559146528 35 0.99803299435957427 36 0.00040520908127916706
		3 34 0.001561796559146528 35 0.99803299435957427 36 0.00040520908127916706
		3 34 0.001561796559146528 35 0.99803299435957427 36 0.00040520908127916706
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		3 13 0.53619199991226196 18 0.46380632929253807 19 1.6707951999705983e-06
		3 13 0.53619199991226196 18 0.46379184443321719 19 1.6155654520844109e-05
		3 13 0.53619199991226196 18 0.46367381879827008 19 0.0001341812894679606
		3 13 0.53619199991226196 18 0.46376752268042765 19 4.0477407310390845e-05
		2 13 5.3346157073974609e-05 18 0.99994665384292603
		2 18 0.43268001079559326 19 0.56731998920440674
		1 19 1
		1 19 1
		2 18 0.46749043464660645 19 0.53250956535339355
		2 13 9.7751617431640625e-05 18 0.99990224838256836
		2 18 0.47469788789749146 19 0.52530211210250854
		2 18 0.63428887724876404 19 0.36571112275123596
		2 18 0.26237630844116211 19 0.73762369155883789
		2 18 0.5014616847038269 19 0.4985383152961731
		2 18 0.80116870999336243 19 0.19883129000663757
		2 18 0.97267183475196362 19 0.027328165248036385
		3 13 0.060800015926361084 18 0.93902187360799871 19 0.00017811046564020216
		3 13 0.21439999341964722 18 0.78555441465505282 19 4.5591925299959257e-05
		3 13 0.21439999341964722 18 0.78559377511373896 19 6.2314666138263419e-06
		3 13 0.060800015926361084 18 0.93916913700741134 19 3.0847066227579489e-05
		3 13 0.53619199991226196 18 0.46380730082847776 19 6.9925926027281093e-07
		3 13 0.53619199991226196 18 0.46380085895179946 19 7.1411359385820106e-06
		3 13 0.060800015926361084 18 0.93919554559442986 19 4.4384792090568226e-06
		3 13 0.21439999341964722 18 0.7855995064322201 19 5.0014813268717262e-07
		3 13 0.21439999341964722 18 0.78559874601728552 19 1.2605630672624102e-06
		3 13 0.060800015926361084 18 0.93919068311879528 19 9.3009548436384648e-06
		2 13 0.53619199991226196 18 0.46380800008773804
		2 13 0.53619199991226196 18 0.46380800008773804
		3 13 0.21439999341964722 18 0.78537689472432248 19 0.00022311185603030026
		3 13 0.060778677463531494 18 0.93836311955237761 19 0.00085820298409089446
		3 13 0.060778677463531494 18 0.93914257579308469 19 7.8746743383817375e-05
		3 13 0.21439999341964722 18 0.78558389687168528 19 1.6109708667499945e-05
		3 13 0.011520028114318848 18 0.98845719269957044 19 2.2779186110710725e-05
		3 13 0.011509358882904053 18 0.98845538553359802 19 3.5255583497928455e-05
		3 13 0.0024960041046142578 18 0.99740475376165705 19 9.9242133728694171e-05
		3 13 0.0013867020606994629 18 0.99819044396281242 19 0.0004228539764881134
		3 13 0.011255145072937012 18 0.98851698471116833 19 0.00022787021589465439
		3 13 0.0024960041046142578 18 0.99714011340984143 19 0.00036388248554430902
		3 13 0.011509358882904053 18 0.98807606066111475 19 0.00041458045598119497
		3 13 0.011520028114318848 18 0.98837662897858536 19 0.00010334290709579363
		2 13 0.011255145072937012 18 0.98874485492706299
		2 13 0.0013778209686279297 18 0.99862217903137207
		3 13 0.060599148273468018 18 0.93893898211535998 19 0.00046186961117200553
		3 13 0.2143893837928772 18 0.7855018097689026 19 0.0001088064382201992
		3 13 0.2143893837928772 18 0.78488900710362941 19 0.00072160910349339247
		3 13 0.060599148273468018 18 0.93644728697836399 19 0.0029535647481679916
		2 13 0.0010488629341125488 18 0.99895113706588745
		2 13 0.0093896389007568359 18 0.99061036109924316
		2 13 0.00088298320770263672 18 0.99911701679229736
		2 13 0.00012218952178955078 18 0.99987781047821045
		2 13 0.0093881487846374512 18 0.99061185121536255
		2 13 0.0010488629341125488 18 0.99895113706588745
		2 13 0.060757339000701904 18 0.9392426609992981
		2 13 0.21439999341964722 18 0.78560000658035278
		2 13 0.2143893837928772 18 0.7856106162071228
		2 13 0.060545802116394043 18 0.93945419788360596
		2 13 0.53619199991226196 18 0.46380800008773804
		2 13 0.53619199991226196 18 0.46380800008773804
		2 13 0.06072533130645752 18 0.93927466869354248
		2 13 0.21439999341964722 18 0.78560000658035278
		2 13 0.21439999341964722 18 0.78560000658035278
		2 13 0.060778677463531494 18 0.93922132253646851
		2 13 0.53619199991226196 18 0.46380800008773804
		2 13 0.53619199991226196 18 0.46380800008773804
		2 13 0.002598881721496582 18 0.99740111827850342
		2 13 0.011180460453033447 18 0.98881953954696655
		2 13 0.0010399818420410156 18 0.99896001815795898
		2 13 0.0017185211181640625 18 0.99828147888183594
		2 13 0.011034667491912842 18 0.98896533250808716
		2 13 0.0086051821708679199 18 0.99139481782913208
		2 13 5.3346157073974609e-05 18 0.99994665384292603
		1 18 1
		2 13 5.3346157073974609e-05 18 0.99994665384292603
		2 13 4.4465065002441406e-05 18 0.99995553493499756
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		1 18 1
		3 13 0.00089776515960693359 18 0.93336554616689682 19 0.065736688673496246
		3 13 0.00015109777450561523 18 0.9662577323615551 19 0.033591169863939285
		3 13 5.3346157073974609e-05 18 0.82517032325267792 19 0.17477633059024811
		3 13 0.00011736154556274414 18 0.87669677287340164 19 0.12318586558103561
		2 18 0.41890686750411987 19 0.58109313249588013
		2 18 0.43379539251327515 19 0.56620460748672485
		2 18 0.41585224866867065 19 0.58414775133132935
		2 18 0.47018700838088989 19 0.52981299161911011
		2 18 0.46805793046951294 19 0.53194206953048706
		2 18 0.80474373698234558 19 0.19525626301765442
		2 18 0.80604259669780731 19 0.19395740330219269
		2 18 0.8646201491355896 19 0.1353798508644104
		2 18 0.8482884019613266 19 0.1517115980386734
		2 18 0.83745492994785309 19 0.16254507005214691
		2 18 0.85362081229686737 19 0.14637918770313263
		2 18 0.83376102149486542 19 0.16623897850513458
		2 18 0.63025161623954773 19 0.36974838376045227
		2 18 0.62281695008277893 19 0.37718304991722107
		2 18 0.41504472494125366 19 0.58495527505874634
		2 18 0.36566621065139771 19 0.63433378934860229
		3 13 4.4465065002441406e-05 18 0.90281788259744644 19 0.097137652337551117
		2 18 0.94704361259937286 19 0.052956387400627136
		2 18 0.9371381551027298 19 0.062861844897270203
		2 18 0.82594849169254303 19 0.17405150830745697
		2 18 0.80663608014583588 19 0.19336391985416412
		2 18 0.8230641782283783 19 0.1769358217716217
		2 18 0.93202932178974152 19 0.067970678210258484
		2 18 0.94959426298737526 19 0.050405737012624741
		2 18 0.4327085018157959 19 0.5672914981842041
		2 18 0.45362889766693115 19 0.54637110233306885
		2 18 0.26267766952514648 19 0.73732233047485352
		2 18 0.25626713037490845 19 0.74373286962509155
		2 18 0.44347721338272095 19 0.55652278661727905
		2 18 0.46550744771957397 19 0.53449255228042603
		2 18 0.27873456478118896 19 0.72126543521881104
		2 18 0.27949613332748413 19 0.72050386667251587
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		1 13 1
		2 18 0.55288150906562805 19 0.44711849093437195
		2 18 0.55544093251228333 19 0.44455906748771667
		2 18 0.44901108741760254 19 0.55098891258239746
		2 18 0.44803190231323242 19 0.55196809768676758
		2 18 0.45185452699661255 19 0.54814547300338745
		2 18 0.45972806215286255 19 0.54027193784713745
		2 18 0.43019008636474609 19 0.56980991363525391
		2 18 0.47525376081466675 19 0.52474623918533325
		2 18 0.70908579230308533 19 0.29091420769691467
		2 18 0.71526330709457397 19 0.28473669290542603
		2 18 0.67057749629020691 19 0.32942250370979309
		2 18 0.65768584609031677 19 0.34231415390968323
		2 18 0.76389089226722717 19 0.23610910773277283
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		1 19 1
		2 13 0.00010669231414794923 18 0.99989330768585205
		2 13 0.0010151267051696777 18 0.99898487329483032
		2 13 0.001287996768951416 18 0.99871200323104858
		2 13 0.010440051555633545 18 0.98955994844436646
		1 19 1
		1 19 1
		3 13 0.53619199991226196 15 0.46380632929253807 16 1.6707951999705983e-06
		3 13 0.53619199991226196 15 0.46379184443321719 16 1.6155654520844109e-05
		3 13 0.53619199991226196 15 0.46367381879827008 16 0.0001341812894679606
		3 13 0.53619199991226196 15 0.46376752268042765 16 4.0477407310390845e-05
		2 13 5.3346157073974609e-05 15 0.99994665384292603
		2 15 0.43268001079559326 16 0.56731998920440674
		1 16 1
		1 16 1
		2 15 0.46749043464660645 16 0.53250956535339355
		2 13 9.7751617431640625e-05 15 0.99990224838256836
		2 15 0.47469788789749146 16 0.52530211210250854
		2 15 0.63428887724876404 16 0.36571112275123596
		2 15 0.26237630844116211 16 0.73762369155883789
		2 15 0.5014616847038269 16 0.4985383152961731
		2 15 0.80116870999336243 16 0.19883129000663757
		2 15 0.97267183475196362 16 0.027328165248036385
		1 13 0.060800015926361084;
	setAttr ".wl[253:579].w"
		2 15 0.93902187360799871 16 0.00017811046564020216
		3 13 0.21439999341964722 15 0.78555441465505282 16 4.5591925299959257e-05
		3 13 0.21439999341964722 15 0.78559377511373896 16 6.2314666138263419e-06
		3 13 0.060800015926361084 15 0.93916913700741134 16 3.0847066227579489e-05
		3 13 0.53619199991226196 15 0.46380730082847776 16 6.9925926027281093e-07
		3 13 0.53619199991226196 15 0.46380085895179946 16 7.1411359385820106e-06
		3 13 0.060800015926361084 15 0.93919554559442986 16 4.4384792090568226e-06
		3 13 0.21439999341964722 15 0.7855995064322201 16 5.0014813268717262e-07
		3 13 0.21439999341964722 15 0.78559874601728552 16 1.2605630672624102e-06
		3 13 0.060800015926361084 15 0.93919068311879528 16 9.3009548436384648e-06
		2 13 0.53619199991226196 15 0.46380800008773804
		2 13 0.53619199991226196 15 0.46380800008773804
		3 13 0.21439999341964722 15 0.78537689472432248 16 0.00022311185603030026
		3 13 0.060778677463531494 15 0.93836311955237761 16 0.00085820298409089446
		3 13 0.060778677463531494 15 0.93914257579308469 16 7.8746743383817375e-05
		3 13 0.21439999341964722 15 0.78558389687168528 16 1.6109708667499945e-05
		3 13 0.011520028114318848 15 0.98845719269957044 16 2.2779186110710725e-05
		3 13 0.011509358882904053 15 0.98845538553359802 16 3.5255583497928455e-05
		3 13 0.0024960041046142578 15 0.99740475376165705 16 9.9242133728694171e-05
		3 13 0.0013867020606994629 15 0.99819044396281242 16 0.0004228539764881134
		3 13 0.011255145072937012 15 0.98851698471116833 16 0.00022787021589465439
		3 13 0.0024960041046142578 15 0.99714011340984143 16 0.00036388248554430902
		3 13 0.011509358882904053 15 0.98807606066111475 16 0.00041458045598119497
		3 13 0.011520028114318848 15 0.98837662897858536 16 0.00010334290709579363
		2 13 0.011255145072937012 15 0.98874485492706299
		2 13 0.0013778209686279297 15 0.99862217903137207
		3 13 0.060599148273468018 15 0.93893898211535998 16 0.00046186961117200553
		3 13 0.2143893837928772 15 0.7855018097689026 16 0.0001088064382201992
		3 13 0.2143893837928772 15 0.78488900710362941 16 0.00072160910349339247
		3 13 0.060599148273468018 15 0.93644728697836399 16 0.0029535647481679916
		2 13 0.0010488629341125488 15 0.99895113706588745
		2 13 0.0093896389007568359 15 0.99061036109924316
		2 13 0.00088298320770263672 15 0.99911701679229736
		2 13 0.00012218952178955078 15 0.99987781047821045
		2 13 0.0093881487846374512 15 0.99061185121536255
		2 13 0.0010488629341125488 15 0.99895113706588745
		2 13 0.060757339000701904 15 0.9392426609992981
		2 13 0.21439999341964722 15 0.78560000658035278
		2 13 0.2143893837928772 15 0.7856106162071228
		2 13 0.060545802116394043 15 0.93945419788360596
		2 13 0.53619199991226196 15 0.46380800008773804
		2 13 0.53619199991226196 15 0.46380800008773804
		2 13 0.06072533130645752 15 0.93927466869354248
		2 13 0.21439999341964722 15 0.78560000658035278
		2 13 0.21439999341964722 15 0.78560000658035278
		2 13 0.060778677463531494 15 0.93922132253646851
		2 13 0.53619199991226196 15 0.46380800008773804
		2 13 0.53619199991226196 15 0.46380800008773804
		2 13 0.002598881721496582 15 0.99740111827850342
		2 13 0.011180460453033447 15 0.98881953954696655
		2 13 0.0010399818420410156 15 0.99896001815795898
		2 13 0.0017185211181640625 15 0.99828147888183594
		2 13 0.011034667491912842 15 0.98896533250808716
		2 13 0.0086051821708679199 15 0.99139481782913208
		2 13 5.3346157073974609e-05 15 0.99994665384292603
		1 15 1
		2 13 5.3346157073974609e-05 15 0.99994665384292603
		2 13 4.4465065002441406e-05 15 0.99995553493499756
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		3 13 0.00089776515960693359 15 0.93336554616689682 16 0.065736688673496246
		3 13 0.00015109777450561523 15 0.9662577323615551 16 0.033591169863939285
		3 13 5.3346157073974609e-05 15 0.82517032325267792 16 0.17477633059024811
		3 13 0.00011736154556274414 15 0.87669677287340164 16 0.12318586558103561
		2 15 0.41890686750411987 16 0.58109313249588013
		2 15 0.43379539251327515 16 0.56620460748672485
		2 15 0.41585224866867065 16 0.58414775133132935
		2 15 0.47018700838088989 16 0.52981299161911011
		2 15 0.46805793046951294 16 0.53194206953048706
		2 15 0.80474373698234558 16 0.19525626301765442
		2 15 0.80604259669780731 16 0.19395740330219269
		2 15 0.8646201491355896 16 0.1353798508644104
		2 15 0.8482884019613266 16 0.1517115980386734
		2 15 0.83745492994785309 16 0.16254507005214691
		2 15 0.85362081229686737 16 0.14637918770313263
		2 15 0.83376102149486542 16 0.16623897850513458
		2 15 0.63025161623954773 16 0.36974838376045227
		2 15 0.62281695008277893 16 0.37718304991722107
		2 15 0.41504472494125366 16 0.58495527505874634
		2 15 0.36566621065139771 16 0.63433378934860229
		3 13 4.4465065002441406e-05 15 0.90281788259744644 16 0.097137652337551117
		2 15 0.94704361259937286 16 0.052956387400627136
		2 15 0.9371381551027298 16 0.062861844897270203
		2 15 0.82594849169254303 16 0.17405150830745697
		2 15 0.80663608014583588 16 0.19336391985416412
		2 15 0.8230641782283783 16 0.1769358217716217
		2 15 0.93202932178974152 16 0.067970678210258484
		2 15 0.94959426298737526 16 0.050405737012624741
		2 15 0.4327085018157959 16 0.5672914981842041
		2 15 0.45362889766693115 16 0.54637110233306885
		2 15 0.26267766952514648 16 0.73732233047485352
		2 15 0.25626713037490845 16 0.74373286962509155
		2 15 0.44347721338272095 16 0.55652278661727905
		2 15 0.46550744771957397 16 0.53449255228042603
		2 15 0.27873456478118896 16 0.72126543521881104
		2 15 0.27949613332748413 16 0.72050386667251587
		2 15 0.55288150906562805 16 0.44711849093437195
		2 15 0.55544093251228333 16 0.44455906748771667
		2 15 0.44901108741760254 16 0.55098891258239746
		2 15 0.44803190231323242 16 0.55196809768676758
		2 15 0.45185452699661255 16 0.54814547300338745
		2 15 0.45972806215286255 16 0.54027193784713745
		2 15 0.43019008636474609 16 0.56980991363525391
		2 15 0.47525376081466675 16 0.52474623918533325
		2 15 0.70908579230308533 16 0.29091420769691467
		2 15 0.71526330709457397 16 0.28473669290542603
		2 15 0.67057749629020691 16 0.32942250370979309
		2 15 0.65768584609031677 16 0.34231415390968323
		2 15 0.76389089226722717 16 0.23610910773277283
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		1 16 1
		2 13 0.00010669231414794923 15 0.99989330768585205
		2 13 0.0010151267051696777 15 0.99898487329483032
		2 13 0.001287996768951416 15 0.99871200323104858
		2 13 0.010440051555633545 15 0.98955994844436646
		1 16 1
		1 16 1
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
		1 12 1
		1 12 1
		2 25 0.066666662693023682 26 0.93333333730697632
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		2 25 0.3399999737739563 26 0.6600000262260437
		2 25 0.040000021457672119 26 0.95999997854232788
		2 25 0.040000021457672119 26 0.95999997854232788
		2 25 0.31333333253860474 26 0.68666666746139526
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		2 25 0.32630813121795654 26 0.67369186878204346
		2 25 0.42166054248809814 26 0.57833945751190186
		2 25 0.3558204174041748 26 0.6441795825958252
		2 25 0.42166054248809814 26 0.57833945751190186
		2 25 0.33053839206695557 26 0.66946160793304443
		2 25 0.33509927988052368 26 0.66490072011947632
		2 25 0.71663892269134521 26 0.28336107730865479
		2 25 0.74236693978309631 26 0.25763306021690369
		2 25 0.34666663408279419 26 0.65333336591720581
		2 25 0.42222219705581665 26 0.57777780294418335
		2 25 0.1066666841506958 26 0.8933333158493042
		1 25 1
		1 25 1
		2 25 0.72393777966499329 26 0.27606222033500671
		2 25 0.7668977826833725 26 0.2331022173166275
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		2 25 0.42222219705581665 26 0.57777780294418335
		1 25 1
		1 25 1
		1 26 1
		2 25 0.033333361148834229 26 0.96666663885116577
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		2 25 0.033333361148834229 26 0.96666663885116577
		1 26 1
		1 26 1
		1 26 1
		2 25 0.19444441795349121 26 0.80555558204650879
		2 25 0.10000002384185791 26 0.89999997615814209
		2 25 0.033333361148834229 26 0.96666663885116577
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		2 25 0.10000002384185791 26 0.89999997615814209
		1 26 1
		2 25 0.033333361148834229 26 0.96666663885116577
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 25 1
		1 25 1
		2 25 0.95904000103473663 26 0.040959998965263367
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 26 1
		1 26 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		1 26 1
		2 28 0.1057778000831604 29 0.8942221999168396
		1 29 1
		2 28 0.029333353042602539 29 0.97066664695739746
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		2 28 0.4126666784286499 29 0.5873333215713501
		2 28 0.096000015735626221 29 0.90399998426437378
		2 28 0.077333331108093262 29 0.92266666889190674
		2 28 0.39222222566604614 29 0.60777777433395386
		1 28 1
		1 28 1;
	setAttr ".wl[580:976].w"
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 28 0.35414236783981323 29 0.64585763216018677
		2 28 0.36049646139144897 29 0.63950353860855103
		2 28 0.33685183525085449 29 0.66314816474914551
		2 28 0.39885169267654419 29 0.60114830732345581
		2 28 0.39222222566604614 29 0.60777777433395386
		2 28 0.33240741491317749 29 0.66759258508682251
		1 28 1
		1 28 1
		2 28 0.43777775764465332 29 0.56222224235534668
		2 28 0.4959259033203125 29 0.5040740966796875
		2 28 0.17511111497879028 29 0.82488888502120972
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 28 0.48814815282821655 29 0.51185184717178345
		1 28 1
		1 28 1
		2 28 0.02133333683013916 29 0.97866666316986084
		2 28 0.066888928413391113 29 0.93311107158660889
		2 28 0.0083333253860473633 29 0.99166667461395264
		1 29 1
		1 29 1
		2 28 0.0080000162124633789 29 0.99199998378753662
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		2 28 0.011111140251159668 29 0.98888885974884033
		2 28 0.066888928413391113 29 0.93311107158660889
		2 28 0.02133333683013916 29 0.97866666316986084
		2 28 0.0080000162124633789 29 0.99199998378753662
		1 29 1
		2 28 0.24351853132247925 29 0.75648146867752075
		2 28 0.14999997615814209 29 0.85000002384185791
		2 28 0.065555572509765625 29 0.93444442749023438
		1 29 1
		1 29 1
		1 29 1
		2 28 0.033333361148834229 29 0.96666663885116577
		2 28 0.0066666603088378906 29 0.99333333969116211
		1 29 1
		1 29 1
		2 28 0.041333317756652832 29 0.95866668224334717
		2 28 0.1433333158493042 29 0.8566666841506958
		2 28 0.013333320617675781 29 0.98666667938232422
		2 28 0.045555531978607178 29 0.95444446802139282
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		2 28 0.026666700839996338 29 0.97333329916000366
		1 29 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		2 28 0.0083333253860473633 29 0.99166667461395264
		1 29 1
		1 28 1
		1 28 1
		1 28 1
		1 28 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		2 28 0.0066666603088378906 29 0.99333333969116211
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		1 29 1
		2 38 0.065818538696107515 39 0.93418146130389246
		1 39 1
		2 38 0.0019155564251130334 39 0.99808444357488701
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		2 38 0.34440637775835825 39 0.65559362224164186
		2 38 0.043371817691991082 39 0.95662818230800895
		2 38 0.04175328561445605 39 0.9582467143855441
		2 38 0.32295613631696724 39 0.67704386368303282
		2 38 0.99867430134222324 39 0.0013256986577768583
		2 38 0.99995028194769053 39 4.9718052309358953e-05
		1 38 1
		1 38 1
		2 38 0.99999953452704393 39 4.6547295614778859e-07
		2 38 0.99906408731354546 39 0.00093591268645456735
		2 38 0.34772046756795705 39 0.65227953243204295
		2 38 0.42089183312759565 39 0.57910816687240441
		2 38 0.36411600716085735 39 0.63588399283914265
		2 38 0.42077161599831214 39 0.57922838400168786
		2 38 0.3484154818175933 39 0.6515845181824067
		2 38 0.34268560131187314 39 0.65731439868812691
		2 38 0.7140836615035363 39 0.28591633849646364
		2 38 0.73972445557198796 39 0.26027554442801204
		2 38 0.37330443734500895 39 0.62669556265499105
		2 38 0.43110981018545708 39 0.56889018981454287
		2 38 0.19307417708341745 39 0.80692582291658255
		2 38 0.99800672875313567 39 0.0019932712468643393
		2 38 0.99961112891247084 39 0.00038887108752917732
		2 38 0.72043801267929386 39 0.27956198732070597
		2 38 0.76315509004006388 39 0.23684490995993621
		1 38 1
		1 38 1
		1 38 1
		1 38 1
		2 38 0.99725003760333664 39 0.0027499623966633635
		2 38 0.42966545133939077 39 0.57033454866060929
		2 38 0.99995259212582366 39 4.7407874176305794e-05
		2 38 0.99967875074127266 39 0.00032124925872737548
		2 38 0.013063016673454995 39 0.986936983326545
		2 38 0.035195128142954141 39 0.96480487185704578
		2 38 0.0013480595364767727 39 0.99865194046352312
		2 38 0.00065691771116936756 39 0.99934308228883051
		2 38 0.0010885098711100102 39 0.99891149012888991
		2 38 0.0013144351373412389 39 0.99868556486265869
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		2 38 0.0004596899516682042 39 0.99954031004833188
		2 38 0.034495091556937765 39 0.96550490844306225
		2 38 0.013705317021209444 39 0.98629468297879064
		2 38 0.0007963981943626445 39 0.99920360180563739
		1 39 1
		2 38 0.20844598160535099 39 0.79155401839464901
		2 38 0.13290227752965189 39 0.867097722470348
		2 38 0.083770998058752835 39 0.91622900194124723
		1 39 1
		1 39 1
		1 39 1
		2 38 0.0013466356507253979 39 0.99865336434927454
		2 38 0.0012548171994881242 39 0.99874518280051194
		1 39 1
		1 39 1
		2 38 0.055517935655475831 39 0.94448206434452409
		2 38 0.1055996934157422 39 0.89440030658425784
		2 38 0.024211057362229838 39 0.97578894263777016
		2 38 0.033707435137436903 39 0.9662925648625631
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 0.99999999999999989
		1 39 1
		1 39 1
		1 39 1
		1 39 0.99999999999999989
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		2 38 0.0013824687366504073 39 0.99861753126334951
		1 39 1
		2 38 0.99864126489438587 39 0.0013587351056141977
		2 38 0.9989628793519697 39 0.0010371206480303263
		2 38 0.95877692694618533 39 0.041223073053814646
		2 38 0.99858496937644503 39 0.0014150306235549692
		1 38 1
		1 38 1
		1 38 1
		1 38 1
		2 38 0.0011745730412998491 39 0.99882542695870014
		1 39 0.99999999999999989
		1 38 1
		1 38 1
		1 38 1
		1 38 1
		1 39 1.0000000000000002
		1 39 1
		1 39 1
		1 39 1
		2 38 0.00067980544868717629 39 0.99932019455131282
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 0.99999999999999989
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 1
		1 39 1
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
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		1 10 1
		2 44 0.062458591302396997 45 0.93754140869760305
		1 45 1
		2 44 0.0038117761967740586 45 0.99618822380322591
		1 45 1
		1 45 1
		1 45 1
		1 45 0.99999999999999989
		1 45 1
		1 45 1
		2 44 0.34059683670507396 45 0.65940316329492599
		2 44 0.046882584151731119 45 0.95311741584826892
		2 44 0.043318485003180043 45 0.95668151499681997
		2 44 0.32638669212058991 45 0.67361330787941009
		2 44 0.99922468530934283 45 0.00077531469065717298
		2 44 0.99999954582647399 45 4.5417352597844796e-07
		1 44 1
		1 44 1
		1 44 1
		2 44 0.99974562821179269 45 0.00025437178820730821
		2 44 0.28788956445367514 45 0.7121104355463248
		2 44 0.2960978114414104 45 0.70390218855858955
		2 44 0.27603748464461503 45 0.72396251535538503
		2 44 0.26970302884194552 45 0.73029697115805448
		2 44 0.26838249195322561 45 0.73161750804677439
		2 44 0.26168483305775603 45 0.73831516694224397
		2 44 0.75681170355306493 45 0.24318829644693504
		2 44 0.78737428098681539 45 0.21262571901318444
		2 44 0.39882989208739944 45 0.6011701079126005
		1 44 0.4421971106346701;
	setAttr ".wl[976:1415].w"
		1 45 0.55780288936532996
		2 44 0.27625329109694974 45 0.72374670890305026
		2 44 0.99886976453233367 45 0.0011302354676663417
		2 44 0.99978532245243323 45 0.00021467754756678004
		2 44 0.76251167946913445 45 0.23748832053086558
		2 44 0.79709692812370103 45 0.202903071876299
		1 44 1
		1 44 1
		1 44 1
		1 44 1
		2 44 0.99935497175162169 45 0.00064502824837830985
		2 44 0.43612901392812953 45 0.56387098607187036
		1 44 1
		2 44 0.99998443486738231 45 1.5565132617663098e-05
		2 44 0.035586387688813323 45 0.96441361231118661
		2 44 0.035834371991494161 45 0.9641656280085058
		2 44 0.0029762569506174871 45 0.99702374304938257
		2 44 0.002284166383866435 45 0.99771583361613347
		2 44 0.0020353496288869804 45 0.99796465037111293
		2 44 0.0022536966574180236 45 0.99774630334258196
		1 45 1
		1 45 1
		1 45 1
		1 45 0.99999999999999989
		1 45 1
		2 44 0.00033725857146834904 45 0.99966274142853162
		2 44 0.034451066514784932 45 0.96554893348521509
		2 44 0.026331987904954005 45 0.97366801209504594
		2 44 0.0018906075719003228 45 0.99810939242809971
		2 44 0.00093217188328862104 45 0.99906782811671135
		2 44 0.21789252007293669 45 0.78210747992706331
		2 44 0.16692403697188224 45 0.83307596302811782
		2 44 0.12595302017532695 45 0.87404697982467305
		1 45 1
		1 45 1
		1 45 1
		2 44 0.0028667017856172897 45 0.99713329821438279
		2 44 0.0027925076438173112 45 0.99720749235618267
		1 45 1
		1 45 1
		2 44 0.099387407156797281 45 0.90061259284320272
		2 44 0.11179229202602449 45 0.88820770797397552
		2 44 0.033458017267488316 45 0.96654198273251168
		2 44 0.034189369654868074 45 0.96581063034513193
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 0.99999999999999989
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1.0000000000000002
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 0.99999999999999989
		1 45 0.99999999999999989
		1 45 1
		1 45 1
		2 44 0.99895745646712963 45 0.0010425435328703602
		2 44 0.99935501609734123 45 0.00064498390265873716
		2 44 0.99929739588091349 45 0.00070260411908658826
		2 44 0.99900616068039838 45 0.00099383931960161931
		1 44 1.0000000000000002
		1 44 1
		1 44 1
		1 44 1
		2 44 0.0025530836878882158 45 0.9974469163121118
		2 44 0.0015719632908228192 45 0.99842803670917712
		1 44 1
		1 44 1
		1 44 1
		1 44 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 1
		1 45 0.99999999999999989
		1 45 1
		1 45 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
		1 2 1
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
		2 31 0.066666662693023682 32 0.93333333730697632
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		2 31 0.3399999737739563 32 0.6600000262260437
		2 31 0.040000021457672119 32 0.95999997854232788
		2 31 0.040000021457672119 32 0.95999997854232788
		2 31 0.31333333253860474 32 0.68666666746139526
		1 31 1
		1 31 1
		1 31 1
		1 31 1
		1 31 1
		1 31 1
		2 31 0.26655042171478271 32 0.73344957828521729
		2 31 0.29853010177612305 32 0.70146989822387695
		2 31 0.26111114025115967 32 0.73888885974884033
		2 31 0.27199602127075195 32 0.72800397872924805
		2 31 0.26655042171478271 32 0.73344957828521729
		2 31 0.26111114025115967 32 0.73888885974884033
		2 31 0.76206716895103455 32 0.23793283104896545
		2 31 0.79485198855400085 32 0.20514801144599915
		2 31 0.34666663408279419 32 0.65333336591720581
		2 31 0.42222219705581665 32 0.57777780294418335
		2 31 0.1066666841506958 32 0.8933333158493042
		1 31 1
		1 31 1
		2 31 0.77144889533519745 32 0.22855110466480255
		2 31 0.80482710897922516 32 0.19517289102077484
		1 31 1
		1 31 1
		1 31 1
		1 31 1
		1 31 1
		2 31 0.42222219705581665 32 0.57777780294418335
		1 31 1
		1 31 1
		1 32 1
		2 31 0.033333361148834229 32 0.96666663885116577
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		2 31 0.033333361148834229 32 0.96666663885116577
		1 32 1
		1 32 1
		1 32 1
		2 31 0.19444441795349121 32 0.80555558204650879
		2 31 0.10000002384185791 32 0.89999997615814209
		2 31 0.033333361148834229 32 0.96666663885116577
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		2 31 0.10000002384185791 32 0.89999997615814209
		1 32 1
		2 31 0.033333361148834229 32 0.96666663885116577
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 31 1
		1 31 1
		1 31 1
		1 31 1
		1 31 1
		1 31 1
		1 31 1
		1 31 1
		1 32 1
		1 32 1
		1 31 1
		1 31 1
		1 31 1
		1 31 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1;
	setAttr ".wl[1416:1857].w"
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
		1 32 1
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
		2 41 0.10605461966468648 42 0.89394538033531357
		2 41 7.5908157462986625e-05 42 0.99992409184253706
		2 41 0.029448491728959834 42 0.9705515082710402
		2 41 0.00014493982134438767 42 0.99985506017865566
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		2 41 0.41254460892923106 42 0.58745539107076894
		2 41 0.096168628706761405 42 0.90383137129323854
		2 41 0.077546327802181195 42 0.92245367219781882
		2 41 0.39213373681266284 42 0.60786626318733716
		2 41 0.99920228220081897 42 0.00079771779918106495
		1 41 0.99999999999999989
		1 41 1
		1 41 1
		1 41 1
		2 41 0.99957913630056794 42 0.00042086369943206137
		2 41 0.35429846436224466 42 0.64570153563775534
		2 41 0.36049646139144897 42 0.63950353860855103
		2 41 0.33729879284044983 42 0.66270120715955017
		2 41 0.39884597044325432 42 0.60115402955674568
		2 41 0.39238135855904255 42 0.60761864144095745
		2 41 0.33443436503559099 42 0.66556563496440901
		2 41 0.99809511754576996 42 0.0019048824542299975
		2 41 0.99823313857969531 42 0.0017668614203045863
		2 41 0.43878500081402788 42 0.56121499918597217
		2 41 0.49474874974476274 42 0.50525125025523721
		2 41 0.18549250783950999 42 0.81450749216049001
		2 41 0.99811064031746355 42 0.0018893596825364511
		2 41 0.9997011800717347 42 0.00029881992826530368
		2 41 0.99789980596422367 42 0.002100194035776326
		2 41 0.99843442384308412 42 0.0015655761569159899
		1 41 1
		1 41 1
		1 41 1
		1 41 1
		2 41 0.99881784705077337 42 0.0011821529492266336
		2 41 0.48800099351727155 42 0.51199900648272845
		1 41 1
		2 41 0.9997675852998309 42 0.00023241470016909134
		2 41 0.021387948814012958 42 0.97861205118598704
		2 41 0.066634341908991868 42 0.93336565809100813
		2 41 0.0084551935229167981 42 0.99154480647708321
		1 42 1
		1 42 0.99999999999999989
		2 41 0.0080962526121313352 42 0.99190374738786868
		1 42 1
		1 42 1
		1 42 1
		2 41 0.00010990246771946932 42 0.99989009753228053
		1 42 1
		2 41 0.011021662185682728 42 0.98897833781431732
		2 41 0.066418359380021053 42 0.93358164061997895
		2 41 0.021397633211437683 42 0.97860236678856227
		2 41 0.0081320401040318891 42 0.9918679598959681
		2 41 0.00049379586192633477 42 0.99950620413807367
		2 41 0.24368568524681286 42 0.75631431475318711
		2 41 0.15098507536441114 42 0.84901492463558892
		2 41 0.068068703655889351 42 0.93193129634411065
		2 41 4.9152560382141481e-05 42 0.99995084743961782
		1 42 1
		2 41 1.4383756526803848e-05 42 0.99998561624347315
		2 41 0.032961719591224375 42 0.9670382804087756
		2 41 0.0067720369181647477 42 0.99322796308183525
		1 42 1
		1 42 1
		2 41 0.044050356996653182 42 0.95594964300334695
		2 41 0.14427517008627988 42 0.85572482991372023
		2 41 0.014403679490964549 42 0.98559632050903545
		2 41 0.045658282148735907 42 0.95434171785126409
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		1 42 1
		2 41 0.026758748663132242 42 0.97324125133686779
		2 41 0.0026355112549971489 42 0.99736448874500283
		1 41 1
		1 41 1
		1 41 1
		1 41 1
		1 41 1
		1 41 1
		1 41 1
		1 41 1
		2 41 0.0084444672757831522 42 0.99155553272421693
		2 41 0.00040801088920439099 42 0.99959198911079561
		1 41 1
		1 41 1
		1 38 1
		1 41 1
		1 42 1
		1 42 0.99999999999999989
		1 42 1
		1 42 1
		2 41 0.0068088762660281077 42 0.99319112373397189
		2 41 0.00058024390833111283 42 0.99941975609166889
		1 42 0.99999999999999989
		2 41 8.6420001149368052e-05 42 0.99991357999885055
		1 42 0.99999999999999989
		1 42 1
		1 42 0.99999999999999989
		1 42 1
		1 42 1
		2 41 3.6826495971808981e-05 42 0.99996317350402819
		2 41 1.0938441461999887e-07 42 0.99999989061558536
		1 42 1
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
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1
		1 6 1;
	setAttr ".wl[1858:2159].w"
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
		1 12 1
		1 12 1
		1 12 1
		1 21 1
		1 21 1
		1 21 1
		1 21 1
		1 22 1
		1 22 1
		2 21 0.19999998807907104 22 0.80000001192092896
		1 22 1
		1 21 1
		1 21 1
		1 22 1
		1 22 1
		1 22 1
		1 21 1
		1 21 1
		1 22 1
		1 22 1
		1 21 1
		1 21 1
		1 21 1
		2 21 0.25 22 0.75
		1 21 1
		2 21 0.71428570151329041 22 0.28571429848670959
		2 22 0.931500643491745 23 0.068499356508255005
		2 22 0.931500643491745 23 0.068499356508255005
		2 21 0.79999999701976776 22 0.20000000298023224
		2 21 0.79999999701976776 22 0.20000000298023224
		2 21 0.85716462135314941 22 0.14283537864685059
		2 21 0.79999999701976776 22 0.20000000298023224
		2 21 0.79999999701976776 22 0.20000000298023224
		2 21 0.80549019575119019 22 0.19450980424880981
		2 21 0.79999999701976776 22 0.20000000298023224
		2 21 0.79999999701976776 22 0.20000000298023224
		2 21 0.79999999701976776 22 0.20000000298023224
		2 22 0.931500643491745 23 0.068499356508255005
		2 22 0.931500643491745 23 0.068499356508255005
		1 22 1
		1 22 1
		2 21 0.6666666567325592 22 0.3333333432674408
		2 22 0.7745961993932724 23 0.2254038006067276
		2 22 0.7745961993932724 23 0.2254038006067276
		2 22 0.7745961993932724 23 0.2254038006067276
		2 22 0.7745961993932724 23 0.2254038006067276
		2 22 0.98820159956812859 23 0.011798400431871414
		3 21 0.001818239688873291 22 0.98638335987925529 23 0.011798400431871414
		2 22 0.98820159956812859 23 0.011798400431871414
		2 22 0.98820159956812859 23 0.011798400431871414
		1 23 1
		1 23 1
		1 23 1
		1 23 1
		2 22 0.52201494574546814 23 0.47798505425453186
		2 22 0.52201494574546814 23 0.47798505425453186
		2 22 0.52201494574546814 23 0.47798505425453186
		2 22 0.52201494574546814 23 0.47798505425453186
		2 22 0.27862071990966797 23 0.72137928009033203
		2 22 0.27862071990966797 23 0.72137928009033203
		2 22 0.27862071990966797 23 0.72137928009033203
		2 22 0.27862071990966797 23 0.72137928009033203
		2 21 0.19999998807907104 22 0.80000001192092896
		2 21 0.20181822776794434 22 0.79818177223205566
		1 22 1
		1 22 1
		2 21 0.001818239688873291 22 0.99818176031112671
		2 21 0.003636479377746582 22 0.99636352062225342
		2 21 0.001818239688873291 22 0.99818176031112671
		1 22 1
		3 21 0.0018182396888732908 22 0.997313920292072 23 0.00086784001905471087
		3 21 0.003636479377746582 22 0.99549568060319871 23 0.00086784001905471087
		3 21 0.0018182396888732912 22 0.997313920292072 23 0.00086784001905471087
		2 22 0.99913215998094529 23 0.00086784001905471087
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 4 1
		1 35 1
		1 35 1
		1 35 1
		1 35 1
		1 35 1
		1 35 1
		1 35 1
		1 35 1
		1 35 0.99999999999999989
		1 35 1
		1 35 1
		1 35 1
		1 35 1
		1 35 0.99999999999999989
		1 35 1
		1 35 1
		1 35 1.0000000000000002
		1 35 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
		1 22 1
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
		1 14 1;
	setAttr -s 47 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.049017765827038505 0.81512273430054316 -0.57721069520559998 0
		 -0.98571646007965841 -0.053745725275378006 -0.15960719702648382 0 -0.161122062304803 0.57678967140633697 0.80084540080943034 0
		 160.10597320665184 385.5183106498975 -24.241102103958344 1;
	setAttr ".pm[1]" -type "matrix" -0.63147966538426503 0.35321160030224602 0.6902716839173566 0
		 -0.59485418651180655 -0.79171199237209389 -0.13907055016640579 0 0.49737503857306065 -0.49843122549268137 0.71005942318816551 0
		 -104.43377605946996 13.1118279339229 372.05632261986972 1;
	setAttr ".pm[2]" -type "matrix" 0.10584317227519088 0.80909866644880823 -0.57806277412880047 0
		 -0.99220592823541565 0.047487629105728298 -0.11520556000651203 0 -0.065761834351100223 0.58575103331763489 0.80781873468625487 0
		 192.30791087175805 335.23872419583103 -88.714095191754097 1;
	setAttr ".pm[3]" -type "matrix" -0.18491616040567177 0.10785915272012275 0.9768174941079425 0
		 -0.59490094869915644 -0.80344355588530136 -0.023902170261836577 0 0.78223965308444143 -0.58552955150092911 0.21273520973607793 0
		 36.035781926251019 -36.914106728829339 343.93028864927874 1;
	setAttr ".pm[4]" -type "matrix" 0.13182137614180925 0.84466724311648855 -0.5188066819134759 0
		 -0.98880735477354875 0.075150904436580665 -0.12888893167414156 0 -0.069879467211887453 0.52999017912443891 0.84511967797101251 0
		 215.22498707202524 312.00647174210854 -112.63559576300722 1;
	setAttr ".pm[5]" -type "matrix" 0.087382062281002634 0.032581435707662192 0.99564191617204711 0
		 -0.64764911329951214 -0.75755331914902435 0.081630843978559062 0 0.75691148837487887 -0.65195967566523849 -0.045095233368967889 0
		 79.658876499974866 -33.343272087286159 322.57040362766531 1;
	setAttr ".pm[6]" -type "matrix" -0.049018642562832331 -0.80550955164549742 -0.59055189009025044 0
		 -0.98571695455176389 -0.05636340699010544 0.1586986195959624 0 -0.16111877044743578 0.589896201513739 -0.7912415644094849 0
		 160.10687094869806 385.06664244544419 30.584500586668959 1;
	setAttr ".pm[7]" -type "matrix" -0.64103196699394271 0.35915795493131714 0.67829461202447316 0
		 0.59356518841459183 0.79225658694868151 0.14145623895317078 0 -0.48657824077349265 0.49329004028662515 -0.72104545748502769 0
		 109.78201456870437 -16.116197122033327 -370.39454196755321 1;
	setAttr ".pm[8]" -type "matrix" -0.10584390897871615 -0.81924328290206083 -0.56359339097611783 0
		 -0.99220598185766073 0.049529137909205039 0.11434226717992985 0 -0.065759839552577651 0.57130316638175993 -0.81810044345678856 0
		 192.30821954450215 336.76214873516744 82.742565628054194 1;
	setAttr ".pm[9]" -type "matrix" -0.17037575276745909 0.098464242162721316 0.98044729378189532 0
		 0.59363193250621815 0.80442568278728521 0.022370730456162363 0 -0.78649426671645484 0.58583625176966481 -0.19550614960817747 0
		 -41.289205673552502 40.008145880708462 -342.99231859502981 1;
	setAttr ".pm[10]" -type "matrix" -0.13181759830816886 -0.83878509571440518 -0.52826478586371983 0
		 -0.98880787498365874 0.073694937691174758 0.12972294526796199 0 -0.069879232584273449 0.53945214742928738 -0.8391115977552468 0
		 215.22419171452839 310.72150691454686 116.13435688416232 1;
	setAttr ".pm[11]" -type "matrix" 0.74542663887204652 -0.35605266398947216 -0.56352961459529693 0
		 0.47325670380671186 0.87803864734602222 0.071247639040001726 0 0.46943286885552671 -0.31980405599799422 0.82301770783215977 0
		 -212.10322640722489 94.860635705990475 239.83909873821273 1;
	setAttr ".pm[12]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.23496162861195566 -191.38482658506703 -101.8704987339374 1;
	setAttr ".pm[13]" -type "matrix" 2.375877272697835e-14 0 1 0 0 1 0 0 -1 0 2.375877272697835e-14 0
		 197.57919304781669 -280.00000000000006 -4.7529699412055281e-12 1;
	setAttr ".pm[14]" -type "matrix" 2.375877272697835e-14 0 1 0 0 1 0 0 -1 0 2.375877272697835e-14 0
		 156.67810242806226 -280.00000000000006 -3.7297076841331004e-12 1;
	setAttr ".pm[15]" -type "matrix" -0.18012612103249787 -0.73409532260714072 -0.65472027450515391 0
		 -0.97119094369716819 0.23830264555938957 1.0214051826551442e-14 0 0.15602157351594045 0.63585840125433113 -0.75587126030290119 0
		 174.21913940805277 -129.24719956795551 188.62765012898981 1;
	setAttr ".pm[16]" -type "matrix" -0.26416143922743229 0.40765857814536627 -0.87408993684276559 0
		 0.83921096599541845 0.54380598980981865 1.2212453270876722e-14 0 0.47533534328758686 -0.73354586026468815 -0.48576412209035191 0
		 -163.05412922165311 97.283801885851773 138.66350926730601 1;
	setAttr ".pm[17]" -type "matrix" 1 7.6512944210520436e-15 2.1482815526496719e-14 0
		 -7.634399891211428e-15 1 -7.6858268690034149e-15 0 -2.1205259770340547e-14 7.6141700154735954e-15 1 0
		 -9.0575712165048774 -177.38338200675236 -269.15610163238631 1;
	setAttr ".pm[18]" -type "matrix" -0.18012612103249773 -0.73409532260714039 -0.65472027450515413 0
		 0.97119094369716819 -0.23830264555938946 -1.0491607582707731e-14 0 -0.15602157351594009 -0.63585840125433135 0.75587126030290086 0
		 -174.21916952767756 129.247076816879 -188.62750420969397 1;
	setAttr ".pm[19]" -type "matrix" -0.2641614392274324 0.40765857814536716 -0.87408993684276515 0
		 -0.83921096599541845 -0.54380598980981842 -1.2795320358804929e-14 0 -0.47533534328758681 0.73354586026468782 0.48576412209035258 0
		 163.05399449085692 -97.283592342525338 -138.66338425712448 1;
	setAttr ".pm[20]" -type "matrix" 1.0000000000000002 7.1487327041368047e-15 2.1316282072802952e-14 0
		 7.2604068815501509e-15 -1 8.029957275992681e-15 0 2.1260770921571811e-14 -8.0505160912155759e-15 -1 0
		 9.0575699999929764 177.38300000000226 269.15599999999876 1;
	setAttr ".pm[21]" -type "matrix" 0.50159067094648435 -0.57635659392686955 0.64515104855876448 0
		 0.7543382526744149 0.65648594847858455 1.5111909235920873e-06 0 -0.42353346900990746 0.4866613566816157 0.76405505334448443 0
		 -173.93976290971699 -193.09618499832146 -176.64186116959871 1;
	setAttr ".pm[22]" -type "matrix" 0.39845340102751614 0.84924883355585457 -0.34642647981011193 0
		 -0.90530785783835388 0.42475602707138238 1.6326799366639388e-06 0 0.14714812178799927 0.31362196378850071 0.93807712587169978 0
		 238.71016864183548 -306.45104908022853 -47.657893436696085 1;
	setAttr ".pm[23]" -type "matrix" -0.16415862348274413 -0.82241310749905849 0.54469131345193378 0
		 -0.98007023972626339 0.19860055560307757 0.0044882643697894539 0 -0.11186720493136008 -0.53309895885087888 -0.83862460525133309 0
		 192.4395192301568 243.054200216628 -14.244641308940645 1;
	setAttr ".pm[24]" -type "matrix" 0.023909343474726195 -0.94540591735334645 0.32501691452582143 0
		 0.94921177112045685 0.12349356961288681 0.28938961942445585 0 -0.31372815758387368 0.30159076527232148 0.90034307541152514 0
		 33.470943086292024 166.81277120861847 -180.97165284102303 1;
	setAttr ".pm[25]" -type "matrix" 0.57058861031369412 -0.72704588875553267 0.38188075812217209 0
		 0.78666604771782456 0.61737875681628163 -8.6042284408449632e-16 0 -0.23576506770152511 0.30041262669145619 0.92421160270580627 0
		 -192.76088421517269 -63.895372547499719 -108.67386172344162 1;
	setAttr ".pm[26]" -type "matrix" 0.51486971958031502 0.66510966739262034 0.54086810055702617 0
		 -0.79075472269217784 0.61213312975203094 -8.4626750052052545e-14 0 -0.33108328317706504 -0.42769400486897263 0.84110742346018719 0
		 175.83315971920669 -363.63139284682484 -143.12212995406503 1;
	setAttr ".pm[27]" -type "matrix" -0.13181759830816794 -0.87364021964281924 0.46837686471335532 0
		 -0.98880787498365885 0.14919445824259239 1.1241008124329704e-15 0 -0.069879232584274004 -0.46313473228872182 -0.88352878425170001 0
		 215.2241917145283 254.45913581762986 -212.8041162832379 1;
	setAttr ".pm[28]" -type "matrix" 0.5685466012471162 -0.58843901246469565 0.57488632860760069 0
		 0.71915800845642619 0.69484657218193602 -1.8644257027133904e-08 0 -0.39945778385624131 0.41343411777039774 0.81823328530442541 0
		 -171.40270892357046 -97.604942597814187 -105.97288453097784 1;
	setAttr ".pm[29]" -type "matrix" 0.45929488236889382 0.67446893543763908 0.57804832510730619 0
		 -0.82649132951817517 0.56294942819450389 -0.00015338435518738594 0 -0.32551542707070474 -0.47768148009431888 0.81600251857079309 0
		 178.34456311993776 -377.48754677302946 -106.73728005362489 1;
	setAttr ".pm[30]" -type "matrix" -0.10584393114738892 -0.84279095405118132 0.527731437389101 0
		 -0.99220597735530403 0.12460858116681323 7.3016686447102719e-09 0 -0.065759871803959091 -0.52361828584293502 -0.84941128435595536 0
		 192.30822281162025 209.78102454386604 -276.12858866936722 1;
	setAttr ".pm[31]" -type "matrix" 0.61158620299937805 -0.70718286677215658 0.35476007278824068 0
		 0.75637979507590014 0.65413271252929994 1.1102230246251568e-16 0 -0.23206016871006385 0.26833335115668078 0.93495737376378962 0
		 -197.80563168758823 -39.474688133298791 10.744244160006213 1;
	setAttr ".pm[32]" -type "matrix" 0.46926848094865647 0.64852810446164066 0.59933161981621785 0
		 -0.81015292507307146 0.58621859233185902 -1.0824674490095276e-15 0 -0.3513393385086368 -0.48555026488289033 0.80050084914912389 0
		 141.64735034725416 -406.37213346325507 -59.614809667159385 1;
	setAttr ".pm[33]" -type "matrix" -0.049018642562833045 -0.11346853684876371 0.9923316299638435 0
		 -0.98571695455176389 0.16576418510750179 -0.029737525869548694 0 -0.16111877044743558 -0.97961580534464987 -0.11997339591951171 0
		 160.1068709486984 -164.36124926941037 -349.56703296927532 1;
	setAttr ".pm[34]" -type "matrix" 0.50159169330016984 -0.57635736362326351 0.64514956607713059 0
		 -0.75433916296368886 -0.65648490250648295 5.4313991065813038e-07 0 0.42353063694555787 -0.48666185609547719 -0.76405630511775491 0
		 173.70523332533477 193.36687710946723 176.33805766292554 1;
	setAttr ".pm[35]" -type "matrix" 0.39845287479375818 0.84924833798384314 -0.34642829994137186 0
		 0.90530832638911019 -0.4247550284225059 5.8680648709619188e-07 0 -0.147146664043524 -0.31362465824847996 -0.93807645370693893 0
		 -238.89737255786551 306.05235254274623 47.819636040448053 1;
	setAttr ".pm[36]" -type "matrix" -0.16415866703271495 -0.82241202032763239 0.54469294181094674 0
		 0.98006992040963592 -0.19860208794810186 -0.0044901860656540995 0 0.11186993852814965 0.53310006516907882 0.83862353733390527 0
		 -192.36235512776614 -242.66800963253755 13.989467348038964 1;
	setAttr ".pm[37]" -type "matrix" 0.023909344999683575 -0.94540591833148147 0.32501691156845075 0
		 -0.9492117724782646 -0.12349356874196192 -0.2893896153424419 0 0.31372815335949417 -0.3015907625627523 -0.90034307779116085 0
		 -33.470900230133672 -166.81247910317489 180.97139010514957 1;
	setAttr ".pm[38]" -type "matrix" 0.57058875500671913 -0.72704578600305514 0.38188073755438662 0
		 -0.78666602585479339 -0.61737878467411111 3.7847829401083127e-07 0 0.23576479047073168 -0.30041281811786519 -0.92421161120426032 0
		 192.49281873095779 64.236869375137161 108.49436309127866 1;
	setAttr ".pm[39]" -type "matrix" 0.51486958677737815 0.66510978541880506 0.54086808183867052 0
		 0.79075470262551906 -0.61213315567406057 3.7871534280808927e-07 0 0.33108353762656184 0.42769378422496074 -0.84110743549680622 0
		 -176.07526926920528 363.3191571381231 142.86793480924766 1;
	setAttr ".pm[40]" -type "matrix" -0.13181777203139025 -0.87364018288946621 0.46837688437575614 0
		 0.98880782811896295 -0.14919476884466709 -2.140792390650792e-07 0 0.069879568024851832 0.4631347015612699 0.88352877382822892 0
		 -215.16184722978937 -254.04888292485197 212.58421466162443 1;
	setAttr ".pm[41]" -type "matrix" 0.56854702554301018 -0.58843865786980742 0.5748862719447867 0
		 -0.7191580084562168 -0.69484657218146484 9.7800790699320593e-07 0 0.39945717995735636 -0.41343462246411833 -0.81823332511482838 0
		 171.13537663221055 97.881646777062087 105.70235971122835 1;
	setAttr ".pm[42]" -type "matrix" 0.45929444908029576 0.67446927899806119 0.57804826851385227 0
		 0.82649132730615293 -0.56294943117986385 0.00015434371209013809 0 0.32551604404658963 0.47768099148082371 -0.81600255848015324 0
		 -178.56038394782104 377.17033139992157 106.46532156097808 1;
	setAttr ".pm[43]" -type "matrix" -0.10584447381973387 -0.84279084906571933 0.52773149621081628 0
		 0.99220586735887839 -0.12460945701859649 -3.8301838958115775e-07 0 0.06576065799883514 0.52361824639007226 0.84941124781047372 0
		 -192.2587325620002 -209.3849717220036 275.88032664289631 1;
	setAttr ".pm[44]" -type "matrix" 0.61158663169765426 -0.70718249757133744 0.35476006970554552 0
		 -0.75637969495141222 -0.6541328283030815 1.1913884717662524e-06 0 0.2320593652364118 -0.26833404194208482 -0.93495737493272757 0
		 197.5182947522035 39.807143659430501 -10.911130204479546 1;
	setAttr ".pm[45]" -type "matrix" 0.46926802375077042 0.658922223412993 0.58788521445731601 0
		 0.81015281829023644 -0.58612886378921847 0.010264796614960407 0 0.35134019539675965 0.47145992250204871 -0.80887922990575567 0
		 -141.86803167411657 407.04386720591867 52.214243056913794 1;
	setAttr ".pm[46]" -type "matrix" -0.049019199715801973 -0.11346843983528369 0.99233161353479493 0
		 0.98571675609712206 -0.16576528730145745 0.029737960172684215 0 0.16111981507123571 0.97961563007498609 0.11997342415801503 0
		 -160.08386590078854 164.41436001230088 349.10069698298219 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 47 ".ma";
	setAttr -s 47 ".dpf[0:46]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 47 ".lw";
	setAttr -s 47 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 47 ".ifcl";
	setAttr -s 47 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "1CC38F7E-477B-9C48-7FEA-C59A932934A8";
	setAttr -s 47 ".wm";
	setAttr -s 47 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 -2.7755575615628914e-17 -1.9259299443872363e-34
		 -1.3877787807814457e-17 0 -336.08499999999998 174.67000000004109 -177.15300000000033 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.27473536826052541 -0.15523458706756788 -0.67185812495231645 0.67009653061351737 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 177.20105839695182 1.1368683772161603e-13
		 -6.0396132539608516e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.55674983279614831 -0.30630618819652411 -0.41054067366657665 0.65395909506586858 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -342.87800000000004 164.66900000000004
		 -112.05500000000018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.25026826031441135 -0.18291099074705899 -0.6431344986286569 0.70020524420829178 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 165.96252382089156 -5.6843418860808015e-14
		 -9.9475983006414026e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.7421534162302077 -0.379785000463845 -0.31006135388376288 0.45698316930525729 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -4.4408920985006262e-16 -1.6653345369377358e-16
		 -3.3306690738754691e-16 0 -350.34900000000022 174.85100000000008 -55.129999999999988 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.2299732559093644 -0.15669225437442569 -0.63995066165147119 0.71625623183142406 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 176.83019766781871 1.1368683772161603e-13
		 -1.4210854715202004e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.79673503906438814 -0.38445052694215143 -0.22953118084356397 0.40586513385794704 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 1.1102230246251546e-16 -3.8857805861880484e-16
		 9.9920072216264089e-16 0 336.08481461767821 174.67000709669267 -177.15339942989723 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.67055691944024376 -0.66781299777374281 -0.28024118413584981 0.16076099187736534 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 177.20097670037566 0 4.2632564145606011e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.30630857688787744 -0.55675319081843688 0.65395704527806209 0.41053760262562933 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 -1.1102230246251565e-16 0 0 342.87794511265696
		 164.66885433895118 -112.05539459497444 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.6447339367073962 -0.70240185975421321 -0.24403602583057407 0.1771897185742588 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 165.96236845330276 1.1368683772161603e-13
		 1.1368683772161603e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.37978724242865008 0.74215743889722352 -0.45697749057093906 -0.31005734871059432 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 1.6653345369377323e-16 -4.4408920985006271e-16
		 1.1102230246251565e-15 0 350.3485961383015 174.85148274112888 -55.129997047587231 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.63906162882696671 -0.7149517700087521 -0.23399308903349439 0.16028548096112666 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 176.83059284293995 5.6843418860808015e-14
		 4.2632564145606011e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.38529365393915377 -0.73714516871055635 -0.50609184639883242 -0.22811585541018831 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.23496162861195566 191.38482658506703
		 101.8704987339374 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.23496162861189693
		 88.615173414933025 95.708694313879292 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.70710678118653914 0 0.7071067811865559 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 40.901090619754427 0
		 -1.0232622570724285e-12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 -1.110223024625157e-16 -2.7755575615628914e-16
		 3.3306690738754696e-16 0 1.6484591469634324e-12 -80.000000000000512 59.999999999998998 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.5613368096405752 0.71572419506058793 -0.25641697167474276 0.32694066645886721 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 2.7755575615628904e-16 -5.551115123125771e-17
		 -7.6674777638174864e-16 0 119.50966144876369 2.8421709430404007e-14 -5.6843418860808015e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.028950208715213713 0.17155790314706662 0.90399804152990204 0.39053464915834091 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 111.35469706268688 -9.9475983006414026e-14
		 1.4210854715202004e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.41164204506254742 0.75725351618986159 -0.24217314432408807 0.44549983964419021 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.00019304781528717285
		 -80.000000000000028 -60.000000000000043 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.71572419506058016 -0.56133680964056931 0.3269406664588842 0.25641697167475597 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 1.7208456881689926e-15 -7.6327832942978871e-17
		 -7.4419637119405034e-16 0 -119.50964514683668 6.2730860292958823e-05 -5.6885608415768729e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.028950208715213747 0.17155790314706601 0.90399804152990226 0.39053464915834091 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 -111.35446322111892 0.00034322478980186588
		 7.4577473100134739e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.41164204506254792 0.75725351618986148 -0.24217314432408779 0.44549983964418999 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 8.4585065802506249e-08 2.0769460183576413e-06
		 -1.0200036325229939e-06 0 89.680023220578519 66.589789334647577 53.396748102283468 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.14234664536742953 0.31258510116607435 0.38922338448179311 0.85471231654526469 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 117.05436267333295 2.8421709430404007e-14
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.069607751604157303 -0.49853001919625356 -0.723983989205366 0.47166700568418135 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 4.6516991645842789e-11 -6.9164587253027197e-11
		 4.7423398539859821e-11 0 227.40962346460014 1.7053025658242404e-13 8.5265128291212022e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.94367007692339888 0.31173997032192757 -0.010993258836198918 0.11038172440775945 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 143.25250192676606 0.00016402595156250754
		 0.00023923158100025432 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.095304093855326399 -0.8827659283217657 0.41265716550028203 0.20336054005115939 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 -1.3903870326924127e-16 2.0034913091357185e-16
		 2.2778411750133879e-17 0 104.79779220041151 -0.29873797523549683 -27.684161035058722 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.08514436386456567 0.17505609372197045 0.42902337802730234 0.88206844545020735 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 7.6033837069242312e-33 -5.024497048728257e-17
		 8.2978183621499165e-16 0 216.79546984160513 -1.2801940239736202e-14 2.1762886025727491e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00029828582042642354 0.089697998535172005 -0.78553540979099445 0.61228122627502479 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 236.20502784507033 3.4940672295227198e-14
		 -2.1976833858052479e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.7935117679907977 0.33947802744266686 -0.12715715653377291 0.48879934583221374 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 2.0931017385973614e-08 -2.5925119293801627e-08
		 -6.1036452244516409e-11 0 100.70327246047273 -0.29873797523546841 -43.274890191577079 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.11775688855938399 0.27751878805334174 0.37243795336383856 0.87772809478127822 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 -5.4815414206116103e-32 2.8628406536656357e-19
		 -1.5167338075871389e-16 0 234.72473541018667 8.5265128291212022e-14 9.9475983006414026e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -8.8106239356088565e-05 0.001934361153434453 -0.77563205180901995 0.63118235929939315 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 236.20502784507062 5.6843418860808015e-14
		 -8.5265128291212022e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.77927444112313826 0.29455913215620333 -0.12966865677164235 0.53772883735823829 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 9.6369085855363462e-09 -1.1205758858954524e-08
		 -1.8988329149933706e-09 0 89.012781627792052 -15.946958599467251 -147.22634194540328 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.074993527564531759 0.16400391440917844 0.40903497962738827 0.89452170030867162 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 -1.3656732883747657e-32 -2.0576050389632779e-17
		 2.0621005638183613e-16 0 234.72473541018681 8.0378938184310076e-14 -3.0798243873279384e-14 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0060441371490422002 0.13941634790404467 -0.77633094511993928 0.61468432060074851 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 220.09290177113968 -1.8326415532716167e-14
		 1.2217610355144112e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.45668637721798588 0.20515626709267037 -0.20449435178540926 0.84114833354407692 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 -3.0404385811168943e-08 -7.4648110435243128e-07
		 3.6660423665849593e-07 0 -89.680061628611995 66.590173414932991 53.396501266062572 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.85471231654526458 0.38922338448179317 -0.31258510116607424 0.14234664536742941 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 1.1102230246251583e-16 -5.6898930012039273e-16
		 -6.3837823915946501e-16 0 -117.05399878977252 0.0005899558096302826 -0.00043114562802770706 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.069607751604157109 -0.49853001919625334 -0.72398398920536633 0.47166700568418113 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 -6.4718294962417154e-11 9.6226023674846952e-11
		 -6.5975669375278495e-11 0 -227.4098377135067 2.0214662356465851e-05 -0.00034080751564857792 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.94367007692339899 0.31173997032192763 -0.010993258836198411 0.11038172440775891 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 -143.17506904974093 0.38554546741013951
		 -0.25583450583915202 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.095304467058817316 -0.88276530938571229 0.41265778822703342 0.20336178824783041 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 2.1615770396965905e-07 -3.1147539786546916e-07
		 -3.5412609244496046e-08 0 -104.79796162861196 -0.29882658506701887 -27.684198733937393 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.88206844545020746 0.42902337802730262 -0.17505609372197001 0.08514436386456499 1
		 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 -2.6796969231408211e-22 -2.5122158823480078e-17
		 4.148889775286964e-16 0 -216.79574221091289 -0.00024346948636377874 1.1146310768594958e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00029828582042640966 0.089697998535171033 -0.78553540979099457 0.61228122627502457 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -236.20571034186543 0.00035779848980155293
		 -0.00012965868936021252 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.79351176799079814 0.33947802744266675 -0.12715715653377302 0.48879934583221318 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 6.1680895550619139e-07 -7.6397719717205451e-07
		 -1.7972337881452765e-09 0 -100.70296162861196 -0.29882658506701887 -43.274898733937398 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.87772809478127822 0.37243795336383889 -0.27751878805334163 0.11775688855938352 1
		 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 -234.72462989370658 0.00014013169779047985
		 -5.3026695681523961e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -8.8106239105081776e-05 0.0019343611531268184 -0.77563205180902095 0.63118235929939315 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 -236.20467719491896 -0.00020920537411939222
		 -0.00044764919483952781 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.77927444112335198 0.2945591321561517 -0.12966865677175926 0.53772883735792898 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 7.7683261803807219e-07 -9.0329864709656595e-07
		 -1.5306400031725585e-07 0 -89.012761628611955 -15.946826585067043 -147.2262987339374 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.89452170030867162 0.40903497962738811 -0.16400391440917811 0.074993527564531134 1
		 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 1.7157579675702247e-21 1.2422461929108155e-16
		 -7.2362274700454123e-16 0 -234.72458030787146 -0.00010708447127427689 0.00011019506808374047 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00066270464654469285 0.13261468305906687 -0.777521704038455 0.61471367839737556 1
		 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 -220.09299632959795 1.6906098835534067e-05
		 -0.00051895294878789855 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.46403263727868699 0.20335817720695568 -0.20628253828814083 0.83711807870852517 1
		 1 1 yes;
	setAttr -s 47 ".m";
	setAttr -s 47 ".p";
	setAttr ".bp" yes;
createNode objectSet -n "Export";
	rename -uid "C9480F39-428C-B8FF-FE72-FDAA52575DD1";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
createNode shapeEditorManager -n "Spider_Guard_MOD_MASTER:shapeEditorManager";
	rename -uid "C3EB5BD3-4C26-0AF8-3B8C-AC8EFBD9BE87";
createNode poseInterpolatorManager -n "Spider_Guard_MOD_MASTER:poseInterpolatorManager";
	rename -uid "EC83C0AF-4781-8D56-773A-F19976C71EA7";
createNode renderLayerManager -n "Spider_Guard_MOD_MASTER:renderLayerManager";
	rename -uid "2E679601-47BF-96D3-8256-2FBA14A6BD91";
createNode renderLayer -n "Spider_Guard_MOD_MASTER:defaultRenderLayer";
	rename -uid "DE76EB31-4568-644D-B9C3-DB85C23117EF";
	setAttr ".g" yes;
createNode checker -n "Spider_Guard_MOD_MASTER:checker1";
	rename -uid "976A16C3-48D2-7913-C0C5-85831A846D9C";
createNode place2dTexture -n "Spider_Guard_MOD_MASTER:place2dTexture1";
	rename -uid "A23D97D3-4FB3-1BB2-48CC-5498B9814354";
	setAttr ".re" -type "float2" 4 4 ;
createNode blinn -n "Spider_Guard_MOD_MASTER:blinn1";
	rename -uid "E7E04EE4-43EA-970B-85BA-959CC51F6009";
createNode shadingEngine -n "Spider_Guard_MOD_MASTER:blinn1SG";
	rename -uid "5F765641-4ABB-2C9B-C740-688DA153BA32";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "Spider_Guard_MOD_MASTER:materialInfo1";
	rename -uid "1B1E4A75-4EF5-C5E7-5245-0B90689D6D17";
createNode checker -n "Spider_Guard_MOD_MASTER:checker2";
	rename -uid "977C4D84-4427-4087-C021-1A9CB3656CAE";
createNode place2dTexture -n "Spider_Guard_MOD_MASTER:place2dTexture2";
	rename -uid "2904EC4A-43DA-DCFF-B861-D7B4011AEC31";
	setAttr ".re" -type "float2" 60 60 ;
createNode objectSet -n "Spider_Guard_MOD_MASTER:textureEditorIsolateSelectSet";
	rename -uid "AE9ED7B3-4740-505E-A4FE-FBA626EAAB94";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".fo" yes;
createNode groupId -n "Spider_Guard_MOD_MASTER:groupId1";
	rename -uid "0335A950-4540-CDCE-2567-9F84EDD9139F";
	setAttr ".ihi" 0;
createNode groupId -n "Spider_Guard_MOD_MASTER:groupId4";
	rename -uid "3E37944C-4902-CF23-4F85-19A279504F92";
	setAttr ".ihi" 0;
createNode groupId -n "Spider_Guard_MOD_MASTER:groupId5";
	rename -uid "82832F87-4C0B-2A29-333A-4A9900AF086F";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "625FE87F-432A-0286-9897-7481941B925E";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -383.24026508942791 -2120.8401209982885 ;
	setAttr ".tgi[0].vh" -type "double2" 1089.1382973745356 -928.63666655521786 ;
	setAttr -s 12 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 244.28572082519531;
	setAttr ".tgi[0].ni[0].y" 5250;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 241.42857360839844;
	setAttr ".tgi[0].ni[1].y" 7708.5712890625;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 241.42857360839844;
	setAttr ".tgi[0].ni[2].y" 8447.142578125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 241.42857360839844;
	setAttr ".tgi[0].ni[3].y" 9185.7138671875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 548.5714111328125;
	setAttr ".tgi[0].ni[4].y" 8447.142578125;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 551.4285888671875;
	setAttr ".tgi[0].ni[5].y" 5250;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 242.85714721679688;
	setAttr ".tgi[0].ni[6].y" 7084.28564453125;
	setAttr ".tgi[0].ni[6].nvs" 18306;
	setAttr ".tgi[0].ni[7].x" 550;
	setAttr ".tgi[0].ni[7].y" 7040;
	setAttr ".tgi[0].ni[7].nvs" 18306;
	setAttr ".tgi[0].ni[8].x" 548.5714111328125;
	setAttr ".tgi[0].ni[8].y" 9185.7138671875;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 548.5714111328125;
	setAttr ".tgi[0].ni[9].y" 7708.5712890625;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 244.28572082519531;
	setAttr ".tgi[0].ni[10].y" 5988.5712890625;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 551.4285888671875;
	setAttr ".tgi[0].ni[11].y" 5988.5712890625;
	setAttr ".tgi[0].ni[11].nvs" 18304;
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
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
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
connectAttr "Base_JNT_parentConstraint1.ctx" "Base_JNT.tx";
connectAttr "Base_JNT_parentConstraint1.cty" "Base_JNT.ty";
connectAttr "Base_JNT_parentConstraint1.ctz" "Base_JNT.tz";
connectAttr "Base_JNT_parentConstraint1.crx" "Base_JNT.rx";
connectAttr "Base_JNT_parentConstraint1.cry" "Base_JNT.ry";
connectAttr "Base_JNT_parentConstraint1.crz" "Base_JNT.rz";
connectAttr "Base_JNT.s" "Head_JNT.is";
connectAttr "Head_JNT_parentConstraint1.ctx" "Head_JNT.tx";
connectAttr "Head_JNT_parentConstraint1.cty" "Head_JNT.ty";
connectAttr "Head_JNT_parentConstraint1.ctz" "Head_JNT.tz";
connectAttr "Head_JNT_parentConstraint1.crx" "Head_JNT.rx";
connectAttr "Head_JNT_parentConstraint1.cry" "Head_JNT.ry";
connectAttr "Head_JNT_parentConstraint1.crz" "Head_JNT.rz";
connectAttr "Head_JNT.s" "Eyes_JNT.is";
connectAttr "Eyes_JNT_parentConstraint1.ctx" "Eyes_JNT.tx";
connectAttr "Eyes_JNT_parentConstraint1.cty" "Eyes_JNT.ty";
connectAttr "Eyes_JNT_parentConstraint1.ctz" "Eyes_JNT.tz";
connectAttr "Eyes_JNT_parentConstraint1.crx" "Eyes_JNT.rx";
connectAttr "Eyes_JNT_parentConstraint1.cry" "Eyes_JNT.ry";
connectAttr "Eyes_JNT_parentConstraint1.crz" "Eyes_JNT.rz";
connectAttr "Eyes_JNT.ro" "Eyes_JNT_parentConstraint1.cro";
connectAttr "Eyes_JNT.pim" "Eyes_JNT_parentConstraint1.cpim";
connectAttr "Eyes_JNT.rp" "Eyes_JNT_parentConstraint1.crp";
connectAttr "Eyes_JNT.rpt" "Eyes_JNT_parentConstraint1.crt";
connectAttr "Eyes_JNT.jo" "Eyes_JNT_parentConstraint1.cjo";
connectAttr "Eyes_CTL.t" "Eyes_JNT_parentConstraint1.tg[0].tt";
connectAttr "Eyes_CTL.rp" "Eyes_JNT_parentConstraint1.tg[0].trp";
connectAttr "Eyes_CTL.rpt" "Eyes_JNT_parentConstraint1.tg[0].trt";
connectAttr "Eyes_CTL.r" "Eyes_JNT_parentConstraint1.tg[0].tr";
connectAttr "Eyes_CTL.ro" "Eyes_JNT_parentConstraint1.tg[0].tro";
connectAttr "Eyes_CTL.s" "Eyes_JNT_parentConstraint1.tg[0].ts";
connectAttr "Eyes_CTL.pm" "Eyes_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Eyes_JNT_parentConstraint1.w0" "Eyes_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Head_JNT.s" "L_Face_JNT.is";
connectAttr "L_Face_JNT_parentConstraint1.ctx" "L_Face_JNT.tx";
connectAttr "L_Face_JNT_parentConstraint1.cty" "L_Face_JNT.ty";
connectAttr "L_Face_JNT_parentConstraint1.ctz" "L_Face_JNT.tz";
connectAttr "L_Face_JNT_parentConstraint1.crx" "L_Face_JNT.rx";
connectAttr "L_Face_JNT_parentConstraint1.cry" "L_Face_JNT.ry";
connectAttr "L_Face_JNT_parentConstraint1.crz" "L_Face_JNT.rz";
connectAttr "L_Face_JNT.s" "L_Mandible_JNT.is";
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
connectAttr "L_Face_JNT.ro" "L_Face_JNT_parentConstraint1.cro";
connectAttr "L_Face_JNT.pim" "L_Face_JNT_parentConstraint1.cpim";
connectAttr "L_Face_JNT.rp" "L_Face_JNT_parentConstraint1.crp";
connectAttr "L_Face_JNT.rpt" "L_Face_JNT_parentConstraint1.crt";
connectAttr "L_Face_JNT.jo" "L_Face_JNT_parentConstraint1.cjo";
connectAttr "L_Face_CTL.t" "L_Face_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Face_CTL.rp" "L_Face_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Face_CTL.rpt" "L_Face_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Face_CTL.r" "L_Face_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Face_CTL.ro" "L_Face_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Face_CTL.s" "L_Face_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Face_CTL.pm" "L_Face_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Face_JNT_parentConstraint1.w0" "L_Face_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Head_JNT.s" "R_Face_JNT.is";
connectAttr "R_Face_JNT_parentConstraint1.ctx" "R_Face_JNT.tx";
connectAttr "R_Face_JNT_parentConstraint1.cty" "R_Face_JNT.ty";
connectAttr "R_Face_JNT_parentConstraint1.ctz" "R_Face_JNT.tz";
connectAttr "R_Face_JNT_parentConstraint1.crx" "R_Face_JNT.rx";
connectAttr "R_Face_JNT_parentConstraint1.cry" "R_Face_JNT.ry";
connectAttr "R_Face_JNT_parentConstraint1.crz" "R_Face_JNT.rz";
connectAttr "R_Face_JNT.s" "R_Mandible_JNT.is";
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
connectAttr "R_Mandible_CTR.t" "R_Mandible_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Mandible_CTR.rp" "R_Mandible_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Mandible_CTR.rpt" "R_Mandible_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Mandible_CTR.r" "R_Mandible_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Mandible_CTR.ro" "R_Mandible_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Mandible_CTR.s" "R_Mandible_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Mandible_CTR.pm" "R_Mandible_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Mandible_JNT_parentConstraint1.w0" "R_Mandible_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Face_JNT.ro" "R_Face_JNT_parentConstraint1.cro";
connectAttr "R_Face_JNT.pim" "R_Face_JNT_parentConstraint1.cpim";
connectAttr "R_Face_JNT.rp" "R_Face_JNT_parentConstraint1.crp";
connectAttr "R_Face_JNT.rpt" "R_Face_JNT_parentConstraint1.crt";
connectAttr "R_Face_JNT.jo" "R_Face_JNT_parentConstraint1.cjo";
connectAttr "R_Face_CTR.t" "R_Face_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Face_CTR.rp" "R_Face_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Face_CTR.rpt" "R_Face_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Face_CTR.r" "R_Face_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Face_CTR.ro" "R_Face_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Face_CTR.s" "R_Face_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Face_CTR.pm" "R_Face_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Face_JNT_parentConstraint1.w0" "R_Face_JNT_parentConstraint1.tg[0].tw"
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
connectAttr "Base_JNT.s" "L_Leg0101_JNT.is";
connectAttr "L_Leg0101_JNT_parentConstraint1.ctx" "L_Leg0101_JNT.tx";
connectAttr "L_Leg0101_JNT_parentConstraint1.cty" "L_Leg0101_JNT.ty";
connectAttr "L_Leg0101_JNT_parentConstraint1.ctz" "L_Leg0101_JNT.tz";
connectAttr "L_Leg0101_JNT_parentConstraint1.crx" "L_Leg0101_JNT.rx";
connectAttr "L_Leg0101_JNT_parentConstraint1.cry" "L_Leg0101_JNT.ry";
connectAttr "L_Leg0101_JNT_parentConstraint1.crz" "L_Leg0101_JNT.rz";
connectAttr "L_Leg0101_JNT.s" "L_Leg0102_JNT.is";
connectAttr "L_Leg0102_JNT_parentConstraint1.ctx" "L_Leg0102_JNT.tx";
connectAttr "L_Leg0102_JNT_parentConstraint1.cty" "L_Leg0102_JNT.ty";
connectAttr "L_Leg0102_JNT_parentConstraint1.ctz" "L_Leg0102_JNT.tz";
connectAttr "L_Leg0102_JNT_parentConstraint1.crx" "L_Leg0102_JNT.rx";
connectAttr "L_Leg0102_JNT_parentConstraint1.cry" "L_Leg0102_JNT.ry";
connectAttr "L_Leg0102_JNT_parentConstraint1.crz" "L_Leg0102_JNT.rz";
connectAttr "L_Leg0102_JNT.s" "L_Leg0103_JNT.is";
connectAttr "L_Leg0103_JNT_parentConstraint1.ctx" "L_Leg0103_JNT.tx";
connectAttr "L_Leg0103_JNT_parentConstraint1.cty" "L_Leg0103_JNT.ty";
connectAttr "L_Leg0103_JNT_parentConstraint1.ctz" "L_Leg0103_JNT.tz";
connectAttr "L_Leg0103_JNT_parentConstraint1.crx" "L_Leg0103_JNT.rx";
connectAttr "L_Leg0103_JNT_parentConstraint1.cry" "L_Leg0103_JNT.ry";
connectAttr "L_Leg0103_JNT_parentConstraint1.crz" "L_Leg0103_JNT.rz";
connectAttr "L_Leg0103_JNT.s" "L_LegEnd_JNT.is";
connectAttr "L_Leg0103_JNT.ro" "L_Leg0103_JNT_parentConstraint1.cro";
connectAttr "L_Leg0103_JNT.pim" "L_Leg0103_JNT_parentConstraint1.cpim";
connectAttr "L_Leg0103_JNT.rp" "L_Leg0103_JNT_parentConstraint1.crp";
connectAttr "L_Leg0103_JNT.rpt" "L_Leg0103_JNT_parentConstraint1.crt";
connectAttr "L_Leg0103_JNT.jo" "L_Leg0103_JNT_parentConstraint1.cjo";
connectAttr "L_Leg0102_CTL.t" "L_Leg0103_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Leg0102_CTL.rp" "L_Leg0103_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Leg0102_CTL.rpt" "L_Leg0103_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Leg0102_CTL.r" "L_Leg0103_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Leg0102_CTL.ro" "L_Leg0103_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Leg0102_CTL.s" "L_Leg0103_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Leg0102_CTL.pm" "L_Leg0103_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Leg0103_JNT_parentConstraint1.w0" "L_Leg0103_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg0102_JNT.ro" "L_Leg0102_JNT_parentConstraint1.cro";
connectAttr "L_Leg0102_JNT.pim" "L_Leg0102_JNT_parentConstraint1.cpim";
connectAttr "L_Leg0102_JNT.rp" "L_Leg0102_JNT_parentConstraint1.crp";
connectAttr "L_Leg0102_JNT.rpt" "L_Leg0102_JNT_parentConstraint1.crt";
connectAttr "L_Leg0102_JNT.jo" "L_Leg0102_JNT_parentConstraint1.cjo";
connectAttr "L_LegIK02_JNT.t" "L_Leg0102_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_LegIK02_JNT.rp" "L_Leg0102_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_LegIK02_JNT.rpt" "L_Leg0102_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_LegIK02_JNT.r" "L_Leg0102_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_LegIK02_JNT.ro" "L_Leg0102_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_LegIK02_JNT.s" "L_Leg0102_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_LegIK02_JNT.pm" "L_Leg0102_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_LegIK02_JNT.jo" "L_Leg0102_JNT_parentConstraint1.tg[0].tjo";
connectAttr "L_LegIK02_JNT.ssc" "L_Leg0102_JNT_parentConstraint1.tg[0].tsc";
connectAttr "L_LegIK02_JNT.is" "L_Leg0102_JNT_parentConstraint1.tg[0].tis";
connectAttr "L_Leg0102_JNT_parentConstraint1.w0" "L_Leg0102_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Leg0101_JNT.ro" "L_Leg0101_JNT_parentConstraint1.cro";
connectAttr "L_Leg0101_JNT.pim" "L_Leg0101_JNT_parentConstraint1.cpim";
connectAttr "L_Leg0101_JNT.rp" "L_Leg0101_JNT_parentConstraint1.crp";
connectAttr "L_Leg0101_JNT.rpt" "L_Leg0101_JNT_parentConstraint1.crt";
connectAttr "L_Leg0101_JNT.jo" "L_Leg0101_JNT_parentConstraint1.cjo";
connectAttr "L_LegIK01_JNT.t" "L_Leg0101_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_LegIK01_JNT.rp" "L_Leg0101_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_LegIK01_JNT.rpt" "L_Leg0101_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_LegIK01_JNT.r" "L_Leg0101_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_LegIK01_JNT.ro" "L_Leg0101_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_LegIK01_JNT.s" "L_Leg0101_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_LegIK01_JNT.pm" "L_Leg0101_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_LegIK01_JNT.jo" "L_Leg0101_JNT_parentConstraint1.tg[0].tjo";
connectAttr "L_LegIK01_JNT.ssc" "L_Leg0101_JNT_parentConstraint1.tg[0].tsc";
connectAttr "L_LegIK01_JNT.is" "L_Leg0101_JNT_parentConstraint1.tg[0].tis";
connectAttr "L_Leg0101_JNT_parentConstraint1.w0" "L_Leg0101_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "L_Leg0201_JNT.is";
connectAttr "L_Leg0201_JNT.s" "L_Leg0202_JNT.is";
connectAttr "L_Leg0202_JNT.s" "L_Leg0203_JNT.is";
connectAttr "L_Leg0203_JNT.tx" "effector2.tx";
connectAttr "L_Leg0203_JNT.ty" "effector2.ty";
connectAttr "L_Leg0203_JNT.tz" "effector2.tz";
connectAttr "L_Leg0203_JNT.opm" "effector2.opm";
connectAttr "Base_JNT.s" "L_Leg0301_JNT.is";
connectAttr "L_Leg0301_JNT.s" "L_Leg0302_JNT.is";
connectAttr "L_Leg0302_JNT.s" "L_Leg0303_JNT.is";
connectAttr "L_Leg0303_JNT.tx" "effector3.tx";
connectAttr "L_Leg0303_JNT.ty" "effector3.ty";
connectAttr "L_Leg0303_JNT.tz" "effector3.tz";
connectAttr "L_Leg0303_JNT.opm" "effector3.opm";
connectAttr "Base_JNT.s" "L_Leg0401_JNT.is";
connectAttr "L_Leg0401_JNT.s" "L_Leg0402_JNT.is";
connectAttr "L_Leg0402_JNT.s" "L_Leg0403_JNT.is";
connectAttr "L_Leg0403_JNT.tx" "effector4.tx";
connectAttr "L_Leg0403_JNT.ty" "effector4.ty";
connectAttr "L_Leg0403_JNT.tz" "effector4.tz";
connectAttr "L_Leg0403_JNT.opm" "effector4.opm";
connectAttr "Base_JNT.s" "R_Leg0101_JNT.is";
connectAttr "R_Leg0101_JNT_parentConstraint1.ctx" "R_Leg0101_JNT.tx";
connectAttr "R_Leg0101_JNT_parentConstraint1.cty" "R_Leg0101_JNT.ty";
connectAttr "R_Leg0101_JNT_parentConstraint1.ctz" "R_Leg0101_JNT.tz";
connectAttr "R_Leg0101_JNT_parentConstraint1.crx" "R_Leg0101_JNT.rx";
connectAttr "R_Leg0101_JNT_parentConstraint1.cry" "R_Leg0101_JNT.ry";
connectAttr "R_Leg0101_JNT_parentConstraint1.crz" "R_Leg0101_JNT.rz";
connectAttr "R_Leg0101_JNT.s" "R_Leg0102_JNT.is";
connectAttr "R_Leg0102_JNT_parentConstraint1.ctx" "R_Leg0102_JNT.tx";
connectAttr "R_Leg0102_JNT_parentConstraint1.cty" "R_Leg0102_JNT.ty";
connectAttr "R_Leg0102_JNT_parentConstraint1.ctz" "R_Leg0102_JNT.tz";
connectAttr "R_Leg0102_JNT_parentConstraint1.crx" "R_Leg0102_JNT.rx";
connectAttr "R_Leg0102_JNT_parentConstraint1.cry" "R_Leg0102_JNT.ry";
connectAttr "R_Leg0102_JNT_parentConstraint1.crz" "R_Leg0102_JNT.rz";
connectAttr "R_Leg0102_JNT.s" "R_Leg0103_JNT.is";
connectAttr "R_Leg0103_JNT_parentConstraint1.ctx" "R_Leg0103_JNT.tx";
connectAttr "R_Leg0103_JNT_parentConstraint1.cty" "R_Leg0103_JNT.ty";
connectAttr "R_Leg0103_JNT_parentConstraint1.ctz" "R_Leg0103_JNT.tz";
connectAttr "R_Leg0103_JNT_parentConstraint1.crx" "R_Leg0103_JNT.rx";
connectAttr "R_Leg0103_JNT_parentConstraint1.cry" "R_Leg0103_JNT.ry";
connectAttr "R_Leg0103_JNT_parentConstraint1.crz" "R_Leg0103_JNT.rz";
connectAttr "R_Leg0103_JNT.s" "R_LegEnd_JNT.is";
connectAttr "R_Leg0103_JNT.ro" "R_Leg0103_JNT_parentConstraint1.cro";
connectAttr "R_Leg0103_JNT.pim" "R_Leg0103_JNT_parentConstraint1.cpim";
connectAttr "R_Leg0103_JNT.rp" "R_Leg0103_JNT_parentConstraint1.crp";
connectAttr "R_Leg0103_JNT.rpt" "R_Leg0103_JNT_parentConstraint1.crt";
connectAttr "R_Leg0103_JNT.jo" "R_Leg0103_JNT_parentConstraint1.cjo";
connectAttr "R_Reg0102_CTL.t" "R_Leg0103_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Reg0102_CTL.rp" "R_Leg0103_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Reg0102_CTL.rpt" "R_Leg0103_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Reg0102_CTL.r" "R_Leg0103_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Reg0102_CTL.ro" "R_Leg0103_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Reg0102_CTL.s" "R_Leg0103_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Reg0102_CTL.pm" "R_Leg0103_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Leg0103_JNT_parentConstraint1.w0" "R_Leg0103_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg0102_JNT.ro" "R_Leg0102_JNT_parentConstraint1.cro";
connectAttr "R_Leg0102_JNT.pim" "R_Leg0102_JNT_parentConstraint1.cpim";
connectAttr "R_Leg0102_JNT.rp" "R_Leg0102_JNT_parentConstraint1.crp";
connectAttr "R_Leg0102_JNT.rpt" "R_Leg0102_JNT_parentConstraint1.crt";
connectAttr "R_Leg0102_JNT.jo" "R_Leg0102_JNT_parentConstraint1.cjo";
connectAttr "R_LegIK02_JNT.t" "R_Leg0102_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_LegIK02_JNT.rp" "R_Leg0102_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_LegIK02_JNT.rpt" "R_Leg0102_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_LegIK02_JNT.r" "R_Leg0102_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_LegIK02_JNT.ro" "R_Leg0102_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_LegIK02_JNT.s" "R_Leg0102_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_LegIK02_JNT.pm" "R_Leg0102_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_LegIK02_JNT.jo" "R_Leg0102_JNT_parentConstraint1.tg[0].tjo";
connectAttr "R_LegIK02_JNT.ssc" "R_Leg0102_JNT_parentConstraint1.tg[0].tsc";
connectAttr "R_LegIK02_JNT.is" "R_Leg0102_JNT_parentConstraint1.tg[0].tis";
connectAttr "R_Leg0102_JNT_parentConstraint1.w0" "R_Leg0102_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Leg0101_JNT.ro" "R_Leg0101_JNT_parentConstraint1.cro";
connectAttr "R_Leg0101_JNT.pim" "R_Leg0101_JNT_parentConstraint1.cpim";
connectAttr "R_Leg0101_JNT.rp" "R_Leg0101_JNT_parentConstraint1.crp";
connectAttr "R_Leg0101_JNT.rpt" "R_Leg0101_JNT_parentConstraint1.crt";
connectAttr "R_Leg0101_JNT.jo" "R_Leg0101_JNT_parentConstraint1.cjo";
connectAttr "R_LegIK01_JNT.t" "R_Leg0101_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_LegIK01_JNT.rp" "R_Leg0101_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_LegIK01_JNT.rpt" "R_Leg0101_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_LegIK01_JNT.r" "R_Leg0101_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_LegIK01_JNT.ro" "R_Leg0101_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_LegIK01_JNT.s" "R_Leg0101_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_LegIK01_JNT.pm" "R_Leg0101_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_LegIK01_JNT.jo" "R_Leg0101_JNT_parentConstraint1.tg[0].tjo";
connectAttr "R_LegIK01_JNT.ssc" "R_Leg0101_JNT_parentConstraint1.tg[0].tsc";
connectAttr "R_LegIK01_JNT.is" "R_Leg0101_JNT_parentConstraint1.tg[0].tis";
connectAttr "R_Leg0101_JNT_parentConstraint1.w0" "R_Leg0101_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_JNT.s" "R_Leg0201_JNT.is";
connectAttr "R_Leg0201_JNT.s" "R_Leg0202_JNT.is";
connectAttr "R_Leg0202_JNT.s" "R_Leg0203_JNT.is";
connectAttr "R_Leg0203_JNT.tx" "effector6.tx";
connectAttr "R_Leg0203_JNT.ty" "effector6.ty";
connectAttr "R_Leg0203_JNT.tz" "effector6.tz";
connectAttr "R_Leg0203_JNT.opm" "effector6.opm";
connectAttr "Base_JNT.s" "R_Leg0301_JNT.is";
connectAttr "R_Leg0301_JNT.s" "R_Leg0302_JNT.is";
connectAttr "R_Leg0302_JNT.s" "R_Leg0303_JNT.is";
connectAttr "R_Leg0303_JNT.tx" "effector7.tx";
connectAttr "R_Leg0303_JNT.ty" "effector7.ty";
connectAttr "R_Leg0303_JNT.tz" "effector7.tz";
connectAttr "R_Leg0303_JNT.opm" "effector7.opm";
connectAttr "Base_JNT.s" "R_Leg0401_JNT.is";
connectAttr "R_Leg0401_JNT.s" "R_Leg0402_JNT.is";
connectAttr "R_Leg0402_JNT.s" "R_Leg0403_JNT.is";
connectAttr "R_Leg0403_JNT.tx" "effector8.tx";
connectAttr "R_Leg0403_JNT.ty" "effector8.ty";
connectAttr "R_Leg0403_JNT.tz" "effector8.tz";
connectAttr "R_Leg0403_JNT.opm" "effector8.opm";
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
connectAttr "L_Digit02_JNT_parentConstraint1.ctx" "L_Digit02_JNT.tx";
connectAttr "L_Digit02_JNT_parentConstraint1.cty" "L_Digit02_JNT.ty";
connectAttr "L_Digit02_JNT_parentConstraint1.ctz" "L_Digit02_JNT.tz";
connectAttr "L_Digit02_JNT_parentConstraint1.crx" "L_Digit02_JNT.rx";
connectAttr "L_Digit02_JNT_parentConstraint1.cry" "L_Digit02_JNT.ry";
connectAttr "L_Digit02_JNT_parentConstraint1.crz" "L_Digit02_JNT.rz";
connectAttr "L_Digit02_JNT.s" "|L_Digit02_JNT|L_DigitEnd_JNT.is";
connectAttr "L_Digit02_JNT.ro" "L_Digit02_JNT_parentConstraint1.cro";
connectAttr "L_Digit02_JNT.pim" "L_Digit02_JNT_parentConstraint1.cpim";
connectAttr "L_Digit02_JNT.rp" "L_Digit02_JNT_parentConstraint1.crp";
connectAttr "L_Digit02_JNT.rpt" "L_Digit02_JNT_parentConstraint1.crt";
connectAttr "L_Digit02_JNT.jo" "L_Digit02_JNT_parentConstraint1.cjo";
connectAttr "L_Digit01_CTL.t" "L_Digit02_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Digit01_CTL.rp" "L_Digit02_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Digit01_CTL.rpt" "L_Digit02_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Digit01_CTL.r" "L_Digit02_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Digit01_CTL.ro" "L_Digit02_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Digit01_CTL.s" "L_Digit02_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Digit01_CTL.pm" "L_Digit02_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Digit02_JNT_parentConstraint1.w0" "L_Digit02_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Digit03_JNT_parentConstraint1.ctx" "L_Digit03_JNT.tx";
connectAttr "L_Digit03_JNT_parentConstraint1.cty" "L_Digit03_JNT.ty";
connectAttr "L_Digit03_JNT_parentConstraint1.ctz" "L_Digit03_JNT.tz";
connectAttr "L_Digit03_JNT_parentConstraint1.crx" "L_Digit03_JNT.rx";
connectAttr "L_Digit03_JNT_parentConstraint1.cry" "L_Digit03_JNT.ry";
connectAttr "L_Digit03_JNT_parentConstraint1.crz" "L_Digit03_JNT.rz";
connectAttr "L_Digit03_JNT.s" "|L_Digit03_JNT|L_DigitEnd_JNT.is";
connectAttr "L_Digit03_JNT.ro" "L_Digit03_JNT_parentConstraint1.cro";
connectAttr "L_Digit03_JNT.pim" "L_Digit03_JNT_parentConstraint1.cpim";
connectAttr "L_Digit03_JNT.rp" "L_Digit03_JNT_parentConstraint1.crp";
connectAttr "L_Digit03_JNT.rpt" "L_Digit03_JNT_parentConstraint1.crt";
connectAttr "L_Digit03_JNT.jo" "L_Digit03_JNT_parentConstraint1.cjo";
connectAttr "L_Digit02_CTL.t" "L_Digit03_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Digit02_CTL.rp" "L_Digit03_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Digit02_CTL.rpt" "L_Digit03_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Digit02_CTL.r" "L_Digit03_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Digit02_CTL.ro" "L_Digit03_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Digit02_CTL.s" "L_Digit03_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Digit02_CTL.pm" "L_Digit03_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Digit03_JNT_parentConstraint1.w0" "L_Digit03_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Digit04_JNT_parentConstraint1.ctx" "L_Digit04_JNT.tx";
connectAttr "L_Digit04_JNT_parentConstraint1.cty" "L_Digit04_JNT.ty";
connectAttr "L_Digit04_JNT_parentConstraint1.ctz" "L_Digit04_JNT.tz";
connectAttr "L_Digit04_JNT_parentConstraint1.crx" "L_Digit04_JNT.rx";
connectAttr "L_Digit04_JNT_parentConstraint1.cry" "L_Digit04_JNT.ry";
connectAttr "L_Digit04_JNT_parentConstraint1.crz" "L_Digit04_JNT.rz";
connectAttr "L_Digit04_JNT.s" "|L_Digit04_JNT|L_DigitEnd_JNT.is";
connectAttr "L_Digit04_JNT.ro" "L_Digit04_JNT_parentConstraint1.cro";
connectAttr "L_Digit04_JNT.pim" "L_Digit04_JNT_parentConstraint1.cpim";
connectAttr "L_Digit04_JNT.rp" "L_Digit04_JNT_parentConstraint1.crp";
connectAttr "L_Digit04_JNT.rpt" "L_Digit04_JNT_parentConstraint1.crt";
connectAttr "L_Digit04_JNT.jo" "L_Digit04_JNT_parentConstraint1.cjo";
connectAttr "L_Digit03_CTL.t" "L_Digit04_JNT_parentConstraint1.tg[0].tt";
connectAttr "L_Digit03_CTL.rp" "L_Digit04_JNT_parentConstraint1.tg[0].trp";
connectAttr "L_Digit03_CTL.rpt" "L_Digit04_JNT_parentConstraint1.tg[0].trt";
connectAttr "L_Digit03_CTL.r" "L_Digit04_JNT_parentConstraint1.tg[0].tr";
connectAttr "L_Digit03_CTL.ro" "L_Digit04_JNT_parentConstraint1.tg[0].tro";
connectAttr "L_Digit03_CTL.s" "L_Digit04_JNT_parentConstraint1.tg[0].ts";
connectAttr "L_Digit03_CTL.pm" "L_Digit04_JNT_parentConstraint1.tg[0].tpm";
connectAttr "L_Digit04_JNT_parentConstraint1.w0" "L_Digit04_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Digit02_JNT_parentConstraint1.ctx" "R_Digit02_JNT.tx";
connectAttr "R_Digit02_JNT_parentConstraint1.cty" "R_Digit02_JNT.ty";
connectAttr "R_Digit02_JNT_parentConstraint1.ctz" "R_Digit02_JNT.tz";
connectAttr "R_Digit02_JNT_parentConstraint1.crx" "R_Digit02_JNT.rx";
connectAttr "R_Digit02_JNT_parentConstraint1.cry" "R_Digit02_JNT.ry";
connectAttr "R_Digit02_JNT_parentConstraint1.crz" "R_Digit02_JNT.rz";
connectAttr "R_Digit02_JNT.s" "|R_Digit02_JNT|R_DigitEnd_JNT.is";
connectAttr "R_Digit02_JNT.ro" "R_Digit02_JNT_parentConstraint1.cro";
connectAttr "R_Digit02_JNT.pim" "R_Digit02_JNT_parentConstraint1.cpim";
connectAttr "R_Digit02_JNT.rp" "R_Digit02_JNT_parentConstraint1.crp";
connectAttr "R_Digit02_JNT.rpt" "R_Digit02_JNT_parentConstraint1.crt";
connectAttr "R_Digit02_JNT.jo" "R_Digit02_JNT_parentConstraint1.cjo";
connectAttr "R_Digit01_CTR.t" "R_Digit02_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Digit01_CTR.rp" "R_Digit02_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Digit01_CTR.rpt" "R_Digit02_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Digit01_CTR.r" "R_Digit02_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Digit01_CTR.ro" "R_Digit02_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Digit01_CTR.s" "R_Digit02_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Digit01_CTR.pm" "R_Digit02_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Digit02_JNT_parentConstraint1.w0" "R_Digit02_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Digit03_JNT_parentConstraint1.ctx" "R_Digit03_JNT.tx";
connectAttr "R_Digit03_JNT_parentConstraint1.cty" "R_Digit03_JNT.ty";
connectAttr "R_Digit03_JNT_parentConstraint1.ctz" "R_Digit03_JNT.tz";
connectAttr "R_Digit03_JNT_parentConstraint1.crx" "R_Digit03_JNT.rx";
connectAttr "R_Digit03_JNT_parentConstraint1.cry" "R_Digit03_JNT.ry";
connectAttr "R_Digit03_JNT_parentConstraint1.crz" "R_Digit03_JNT.rz";
connectAttr "R_Digit03_JNT.s" "|R_Digit03_JNT|R_DigitEnd_JNT.is";
connectAttr "R_Digit03_JNT.ro" "R_Digit03_JNT_parentConstraint1.cro";
connectAttr "R_Digit03_JNT.pim" "R_Digit03_JNT_parentConstraint1.cpim";
connectAttr "R_Digit03_JNT.rp" "R_Digit03_JNT_parentConstraint1.crp";
connectAttr "R_Digit03_JNT.rpt" "R_Digit03_JNT_parentConstraint1.crt";
connectAttr "R_Digit03_JNT.jo" "R_Digit03_JNT_parentConstraint1.cjo";
connectAttr "R_Digit02_CTR.t" "R_Digit03_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Digit02_CTR.rp" "R_Digit03_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Digit02_CTR.rpt" "R_Digit03_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Digit02_CTR.r" "R_Digit03_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Digit02_CTR.ro" "R_Digit03_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Digit02_CTR.s" "R_Digit03_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Digit02_CTR.pm" "R_Digit03_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Digit03_JNT_parentConstraint1.w0" "R_Digit03_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Digit04_JNT_parentConstraint1.ctx" "R_Digit04_JNT.tx";
connectAttr "R_Digit04_JNT_parentConstraint1.cty" "R_Digit04_JNT.ty";
connectAttr "R_Digit04_JNT_parentConstraint1.ctz" "R_Digit04_JNT.tz";
connectAttr "R_Digit04_JNT_parentConstraint1.crx" "R_Digit04_JNT.rx";
connectAttr "R_Digit04_JNT_parentConstraint1.cry" "R_Digit04_JNT.ry";
connectAttr "R_Digit04_JNT_parentConstraint1.crz" "R_Digit04_JNT.rz";
connectAttr "R_Digit04_JNT.s" "|R_Digit04_JNT|R_DigitEnd_JNT.is";
connectAttr "R_Digit04_JNT.ro" "R_Digit04_JNT_parentConstraint1.cro";
connectAttr "R_Digit04_JNT.pim" "R_Digit04_JNT_parentConstraint1.cpim";
connectAttr "R_Digit04_JNT.rp" "R_Digit04_JNT_parentConstraint1.crp";
connectAttr "R_Digit04_JNT.rpt" "R_Digit04_JNT_parentConstraint1.crt";
connectAttr "R_Digit04_JNT.jo" "R_Digit04_JNT_parentConstraint1.cjo";
connectAttr "R_Digit03_CTR.t" "R_Digit04_JNT_parentConstraint1.tg[0].tt";
connectAttr "R_Digit03_CTR.rp" "R_Digit04_JNT_parentConstraint1.tg[0].trp";
connectAttr "R_Digit03_CTR.rpt" "R_Digit04_JNT_parentConstraint1.tg[0].trt";
connectAttr "R_Digit03_CTR.r" "R_Digit04_JNT_parentConstraint1.tg[0].tr";
connectAttr "R_Digit03_CTR.ro" "R_Digit04_JNT_parentConstraint1.tg[0].tro";
connectAttr "R_Digit03_CTR.s" "R_Digit04_JNT_parentConstraint1.tg[0].ts";
connectAttr "R_Digit03_CTR.pm" "R_Digit04_JNT_parentConstraint1.tg[0].tpm";
connectAttr "R_Digit04_JNT_parentConstraint1.w0" "R_Digit04_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle1.oc" "Master_CTLShape.cr";
connectAttr "makeNurbCircle34.oc" "Base_CTLShape.cr";
connectAttr "makeNurbCircle9.oc" "Head_CTLShape.cr";
connectAttr "makeNurbCircle2.oc" "Eyes_CTLShape.cr";
connectAttr "makeNurbCircle5.oc" "L_Face_CTLShape.cr";
connectAttr "makeNurbCircle4.oc" "L_Mandible_CTLShape.cr";
connectAttr "R_LegIK01_JNT.s" "R_LegIK02_JNT.is";
connectAttr "R_LegIK02_JNT.s" "R_LegIK03_JNT.is";
connectAttr "R_LegIK03_JNT.tx" "effector5.tx";
connectAttr "R_LegIK03_JNT.ty" "effector5.ty";
connectAttr "R_LegIK03_JNT.tz" "effector5.tz";
connectAttr "R_LegIK03_JNT.opm" "effector5.opm";
connectAttr "L_LegIK01_JNT.s" "L_LegIK02_JNT.is";
connectAttr "L_LegIK02_JNT.s" "L_LegIK03_JNT.is";
connectAttr "L_LegIK03_JNT.tx" "effector1.tx";
connectAttr "L_LegIK03_JNT.ty" "effector1.ty";
connectAttr "L_LegIK03_JNT.tz" "effector1.tz";
connectAttr "L_LegIK03_JNT.opm" "effector1.opm";
connectAttr "makeNurbCircle10.oc" "L_Leg0102_CTLShape.cr";
connectAttr "L_LegIK01_JNT.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "ikHandle1.pvz";
connectAttr "ikHandle1.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "L_LegIK01_JNT.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "L_LegIK01_JNT.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "L_Leg01_POL.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "L_Leg01_POL.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "L_Leg01_POL.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "L_Leg01_POL.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "makeNurbCircle35.oc" "L_Leg02_CTLShape.cr";
connectAttr "L_Leg0201_JNT.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikRPsolver.msg" "ikHandle2.hsv";
connectAttr "ikHandle2_poleVectorConstraint1.ctx" "ikHandle2.pvx";
connectAttr "ikHandle2_poleVectorConstraint1.cty" "ikHandle2.pvy";
connectAttr "ikHandle2_poleVectorConstraint1.ctz" "ikHandle2.pvz";
connectAttr "ikHandle2.pim" "ikHandle2_poleVectorConstraint1.cpim";
connectAttr "L_Leg0201_JNT.pm" "ikHandle2_poleVectorConstraint1.ps";
connectAttr "L_Leg0201_JNT.t" "ikHandle2_poleVectorConstraint1.crp";
connectAttr "L_Leg02_POL.t" "ikHandle2_poleVectorConstraint1.tg[0].tt";
connectAttr "L_Leg02_POL.rp" "ikHandle2_poleVectorConstraint1.tg[0].trp";
connectAttr "L_Leg02_POL.rpt" "ikHandle2_poleVectorConstraint1.tg[0].trt";
connectAttr "L_Leg02_POL.pm" "ikHandle2_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle2_poleVectorConstraint1.w0" "ikHandle2_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_Leg0301_JNT.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikRPsolver.msg" "ikHandle3.hsv";
connectAttr "ikHandle3_poleVectorConstraint1.ctx" "ikHandle3.pvx";
connectAttr "ikHandle3_poleVectorConstraint1.cty" "ikHandle3.pvy";
connectAttr "ikHandle3_poleVectorConstraint1.ctz" "ikHandle3.pvz";
connectAttr "ikHandle3.pim" "ikHandle3_poleVectorConstraint1.cpim";
connectAttr "L_Leg0301_JNT.pm" "ikHandle3_poleVectorConstraint1.ps";
connectAttr "L_Leg0301_JNT.t" "ikHandle3_poleVectorConstraint1.crp";
connectAttr "L_Leg03_POL.t" "ikHandle3_poleVectorConstraint1.tg[0].tt";
connectAttr "L_Leg03_POL.rp" "ikHandle3_poleVectorConstraint1.tg[0].trp";
connectAttr "L_Leg03_POL.rpt" "ikHandle3_poleVectorConstraint1.tg[0].trt";
connectAttr "L_Leg03_POL.pm" "ikHandle3_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle3_poleVectorConstraint1.w0" "ikHandle3_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_Leg0401_JNT.msg" "ikHandle4.hsj";
connectAttr "effector4.hp" "ikHandle4.hee";
connectAttr "ikRPsolver.msg" "ikHandle4.hsv";
connectAttr "ikHandle4_poleVectorConstraint1.ctx" "ikHandle4.pvx";
connectAttr "ikHandle4_poleVectorConstraint1.cty" "ikHandle4.pvy";
connectAttr "ikHandle4_poleVectorConstraint1.ctz" "ikHandle4.pvz";
connectAttr "ikHandle4.pim" "ikHandle4_poleVectorConstraint1.cpim";
connectAttr "L_Leg0401_JNT.pm" "ikHandle4_poleVectorConstraint1.ps";
connectAttr "L_Leg0401_JNT.t" "ikHandle4_poleVectorConstraint1.crp";
connectAttr "L_Leg04_POL.t" "ikHandle4_poleVectorConstraint1.tg[0].tt";
connectAttr "L_Leg04_POL.rp" "ikHandle4_poleVectorConstraint1.tg[0].trp";
connectAttr "L_Leg04_POL.rpt" "ikHandle4_poleVectorConstraint1.tg[0].trt";
connectAttr "L_Leg04_POL.pm" "ikHandle4_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle4_poleVectorConstraint1.w0" "ikHandle4_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_Digit01_GRP_parentConstraint1.ctx" "L_Digit01_GRP.tx";
connectAttr "L_Digit01_GRP_parentConstraint1.cty" "L_Digit01_GRP.ty";
connectAttr "L_Digit01_GRP_parentConstraint1.ctz" "L_Digit01_GRP.tz";
connectAttr "L_Digit01_GRP_parentConstraint1.crx" "L_Digit01_GRP.rx";
connectAttr "L_Digit01_GRP_parentConstraint1.cry" "L_Digit01_GRP.ry";
connectAttr "L_Digit01_GRP_parentConstraint1.crz" "L_Digit01_GRP.rz";
connectAttr "L_Digit01_GRP.ro" "L_Digit01_GRP_parentConstraint1.cro";
connectAttr "L_Digit01_GRP.pim" "L_Digit01_GRP_parentConstraint1.cpim";
connectAttr "L_Digit01_GRP.rp" "L_Digit01_GRP_parentConstraint1.crp";
connectAttr "L_Digit01_GRP.rpt" "L_Digit01_GRP_parentConstraint1.crt";
connectAttr "L_Leg02_CTL.t" "L_Digit01_GRP_parentConstraint1.tg[0].tt";
connectAttr "L_Leg02_CTL.rp" "L_Digit01_GRP_parentConstraint1.tg[0].trp";
connectAttr "L_Leg02_CTL.rpt" "L_Digit01_GRP_parentConstraint1.tg[0].trt";
connectAttr "L_Leg02_CTL.r" "L_Digit01_GRP_parentConstraint1.tg[0].tr";
connectAttr "L_Leg02_CTL.ro" "L_Digit01_GRP_parentConstraint1.tg[0].tro";
connectAttr "L_Leg02_CTL.s" "L_Digit01_GRP_parentConstraint1.tg[0].ts";
connectAttr "L_Leg02_CTL.pm" "L_Digit01_GRP_parentConstraint1.tg[0].tpm";
connectAttr "L_Digit01_GRP_parentConstraint1.w0" "L_Digit01_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Digit01_CTL.Attachment" "L_Digit01_GRP_parentConstraint1.w0";
connectAttr "L_Digit02_GRP_parentConstraint1.ctx" "L_Digit02_GRP.tx";
connectAttr "L_Digit02_GRP_parentConstraint1.cty" "L_Digit02_GRP.ty";
connectAttr "L_Digit02_GRP_parentConstraint1.ctz" "L_Digit02_GRP.tz";
connectAttr "L_Digit02_GRP_parentConstraint1.crx" "L_Digit02_GRP.rx";
connectAttr "L_Digit02_GRP_parentConstraint1.cry" "L_Digit02_GRP.ry";
connectAttr "L_Digit02_GRP_parentConstraint1.crz" "L_Digit02_GRP.rz";
connectAttr "L_Digit02_GRP.ro" "L_Digit02_GRP_parentConstraint1.cro";
connectAttr "L_Digit02_GRP.pim" "L_Digit02_GRP_parentConstraint1.cpim";
connectAttr "L_Digit02_GRP.rp" "L_Digit02_GRP_parentConstraint1.crp";
connectAttr "L_Digit02_GRP.rpt" "L_Digit02_GRP_parentConstraint1.crt";
connectAttr "L_Leg03_CTL.t" "L_Digit02_GRP_parentConstraint1.tg[0].tt";
connectAttr "L_Leg03_CTL.rp" "L_Digit02_GRP_parentConstraint1.tg[0].trp";
connectAttr "L_Leg03_CTL.rpt" "L_Digit02_GRP_parentConstraint1.tg[0].trt";
connectAttr "L_Leg03_CTL.r" "L_Digit02_GRP_parentConstraint1.tg[0].tr";
connectAttr "L_Leg03_CTL.ro" "L_Digit02_GRP_parentConstraint1.tg[0].tro";
connectAttr "L_Leg03_CTL.s" "L_Digit02_GRP_parentConstraint1.tg[0].ts";
connectAttr "L_Leg03_CTL.pm" "L_Digit02_GRP_parentConstraint1.tg[0].tpm";
connectAttr "L_Digit02_GRP_parentConstraint1.w0" "L_Digit02_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Digit02_CTL.Attachment" "L_Digit02_GRP_parentConstraint1.w0";
connectAttr "L_Digit03_GRP_parentConstraint1.ctx" "L_Digit03_GRP.tx";
connectAttr "L_Digit03_GRP_parentConstraint1.cty" "L_Digit03_GRP.ty";
connectAttr "L_Digit03_GRP_parentConstraint1.ctz" "L_Digit03_GRP.tz";
connectAttr "L_Digit03_GRP_parentConstraint1.crx" "L_Digit03_GRP.rx";
connectAttr "L_Digit03_GRP_parentConstraint1.cry" "L_Digit03_GRP.ry";
connectAttr "L_Digit03_GRP_parentConstraint1.crz" "L_Digit03_GRP.rz";
connectAttr "L_Digit03_GRP.ro" "L_Digit03_GRP_parentConstraint1.cro";
connectAttr "L_Digit03_GRP.pim" "L_Digit03_GRP_parentConstraint1.cpim";
connectAttr "L_Digit03_GRP.rp" "L_Digit03_GRP_parentConstraint1.crp";
connectAttr "L_Digit03_GRP.rpt" "L_Digit03_GRP_parentConstraint1.crt";
connectAttr "L_Leg04_CTL.t" "L_Digit03_GRP_parentConstraint1.tg[0].tt";
connectAttr "L_Leg04_CTL.rp" "L_Digit03_GRP_parentConstraint1.tg[0].trp";
connectAttr "L_Leg04_CTL.rpt" "L_Digit03_GRP_parentConstraint1.tg[0].trt";
connectAttr "L_Leg04_CTL.r" "L_Digit03_GRP_parentConstraint1.tg[0].tr";
connectAttr "L_Leg04_CTL.ro" "L_Digit03_GRP_parentConstraint1.tg[0].tro";
connectAttr "L_Leg04_CTL.s" "L_Digit03_GRP_parentConstraint1.tg[0].ts";
connectAttr "L_Leg04_CTL.pm" "L_Digit03_GRP_parentConstraint1.tg[0].tpm";
connectAttr "L_Digit03_GRP_parentConstraint1.w0" "L_Digit03_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "L_Digit03_CTL.Attachment" "L_Digit03_GRP_parentConstraint1.w0";
connectAttr "R_LegIK01_JNT.msg" "ikHandle5.hsj";
connectAttr "effector5.hp" "ikHandle5.hee";
connectAttr "ikRPsolver.msg" "ikHandle5.hsv";
connectAttr "ikHandle5_poleVectorConstraint1.ctx" "ikHandle5.pvx";
connectAttr "ikHandle5_poleVectorConstraint1.cty" "ikHandle5.pvy";
connectAttr "ikHandle5_poleVectorConstraint1.ctz" "ikHandle5.pvz";
connectAttr "ikHandle5.pim" "ikHandle5_poleVectorConstraint1.cpim";
connectAttr "R_LegIK01_JNT.pm" "ikHandle5_poleVectorConstraint1.ps";
connectAttr "R_LegIK01_JNT.t" "ikHandle5_poleVectorConstraint1.crp";
connectAttr "R_Leg01_POL.t" "ikHandle5_poleVectorConstraint1.tg[0].tt";
connectAttr "R_Leg01_POL.rp" "ikHandle5_poleVectorConstraint1.tg[0].trp";
connectAttr "R_Leg01_POL.rpt" "ikHandle5_poleVectorConstraint1.tg[0].trt";
connectAttr "R_Leg01_POL.pm" "ikHandle5_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle5_poleVectorConstraint1.w0" "ikHandle5_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_Leg0201_JNT.msg" "ikHandle6.hsj";
connectAttr "effector6.hp" "ikHandle6.hee";
connectAttr "ikRPsolver.msg" "ikHandle6.hsv";
connectAttr "ikHandle6_poleVectorConstraint1.ctx" "ikHandle6.pvx";
connectAttr "ikHandle6_poleVectorConstraint1.cty" "ikHandle6.pvy";
connectAttr "ikHandle6_poleVectorConstraint1.ctz" "ikHandle6.pvz";
connectAttr "ikHandle6.pim" "ikHandle6_poleVectorConstraint1.cpim";
connectAttr "R_Leg0201_JNT.pm" "ikHandle6_poleVectorConstraint1.ps";
connectAttr "R_Leg0201_JNT.t" "ikHandle6_poleVectorConstraint1.crp";
connectAttr "R_Leg02_POL.t" "ikHandle6_poleVectorConstraint1.tg[0].tt";
connectAttr "R_Leg02_POL.rp" "ikHandle6_poleVectorConstraint1.tg[0].trp";
connectAttr "R_Leg02_POL.rpt" "ikHandle6_poleVectorConstraint1.tg[0].trt";
connectAttr "R_Leg02_POL.pm" "ikHandle6_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle6_poleVectorConstraint1.w0" "ikHandle6_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_Leg0301_JNT.msg" "ikHandle7.hsj";
connectAttr "effector7.hp" "ikHandle7.hee";
connectAttr "ikRPsolver.msg" "ikHandle7.hsv";
connectAttr "ikHandle7_poleVectorConstraint1.ctx" "ikHandle7.pvx";
connectAttr "ikHandle7_poleVectorConstraint1.cty" "ikHandle7.pvy";
connectAttr "ikHandle7_poleVectorConstraint1.ctz" "ikHandle7.pvz";
connectAttr "ikHandle7.pim" "ikHandle7_poleVectorConstraint1.cpim";
connectAttr "R_Leg0301_JNT.pm" "ikHandle7_poleVectorConstraint1.ps";
connectAttr "R_Leg0301_JNT.t" "ikHandle7_poleVectorConstraint1.crp";
connectAttr "R_Leg03_POL.t" "ikHandle7_poleVectorConstraint1.tg[0].tt";
connectAttr "R_Leg03_POL.rp" "ikHandle7_poleVectorConstraint1.tg[0].trp";
connectAttr "R_Leg03_POL.rpt" "ikHandle7_poleVectorConstraint1.tg[0].trt";
connectAttr "R_Leg03_POL.pm" "ikHandle7_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle7_poleVectorConstraint1.w0" "ikHandle7_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_Leg0401_JNT.msg" "ikHandle8.hsj";
connectAttr "effector8.hp" "ikHandle8.hee";
connectAttr "ikRPsolver.msg" "ikHandle8.hsv";
connectAttr "ikHandle8_poleVectorConstraint1.ctx" "ikHandle8.pvx";
connectAttr "ikHandle8_poleVectorConstraint1.cty" "ikHandle8.pvy";
connectAttr "ikHandle8_poleVectorConstraint1.ctz" "ikHandle8.pvz";
connectAttr "ikHandle8.pim" "ikHandle8_poleVectorConstraint1.cpim";
connectAttr "R_Leg0401_JNT.pm" "ikHandle8_poleVectorConstraint1.ps";
connectAttr "R_Leg0401_JNT.t" "ikHandle8_poleVectorConstraint1.crp";
connectAttr "R_Leg04_POL.t" "ikHandle8_poleVectorConstraint1.tg[0].tt";
connectAttr "R_Leg04_POL.rp" "ikHandle8_poleVectorConstraint1.tg[0].trp";
connectAttr "R_Leg04_POL.rpt" "ikHandle8_poleVectorConstraint1.tg[0].trt";
connectAttr "R_Leg04_POL.pm" "ikHandle8_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle8_poleVectorConstraint1.w0" "ikHandle8_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_Digit01_GRP_parentConstraint1.ctx" "R_Digit01_GRP.tx";
connectAttr "R_Digit01_GRP_parentConstraint1.cty" "R_Digit01_GRP.ty";
connectAttr "R_Digit01_GRP_parentConstraint1.ctz" "R_Digit01_GRP.tz";
connectAttr "R_Digit01_GRP_parentConstraint1.crx" "R_Digit01_GRP.rx";
connectAttr "R_Digit01_GRP_parentConstraint1.cry" "R_Digit01_GRP.ry";
connectAttr "R_Digit01_GRP_parentConstraint1.crz" "R_Digit01_GRP.rz";
connectAttr "R_Digit01_GRP.ro" "R_Digit01_GRP_parentConstraint1.cro";
connectAttr "R_Digit01_GRP.pim" "R_Digit01_GRP_parentConstraint1.cpim";
connectAttr "R_Digit01_GRP.rp" "R_Digit01_GRP_parentConstraint1.crp";
connectAttr "R_Digit01_GRP.rpt" "R_Digit01_GRP_parentConstraint1.crt";
connectAttr "R_Leg02_CTR.t" "R_Digit01_GRP_parentConstraint1.tg[0].tt";
connectAttr "R_Leg02_CTR.rp" "R_Digit01_GRP_parentConstraint1.tg[0].trp";
connectAttr "R_Leg02_CTR.rpt" "R_Digit01_GRP_parentConstraint1.tg[0].trt";
connectAttr "R_Leg02_CTR.r" "R_Digit01_GRP_parentConstraint1.tg[0].tr";
connectAttr "R_Leg02_CTR.ro" "R_Digit01_GRP_parentConstraint1.tg[0].tro";
connectAttr "R_Leg02_CTR.s" "R_Digit01_GRP_parentConstraint1.tg[0].ts";
connectAttr "R_Leg02_CTR.pm" "R_Digit01_GRP_parentConstraint1.tg[0].tpm";
connectAttr "R_Digit01_GRP_parentConstraint1.w0" "R_Digit01_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Digit01_CTR.Attachment" "R_Digit01_GRP_parentConstraint1.w0";
connectAttr "R_Digit02_GRP_parentConstraint1.ctx" "R_Digit02_GRP.tx";
connectAttr "R_Digit02_GRP_parentConstraint1.cty" "R_Digit02_GRP.ty";
connectAttr "R_Digit02_GRP_parentConstraint1.ctz" "R_Digit02_GRP.tz";
connectAttr "R_Digit02_GRP_parentConstraint1.crx" "R_Digit02_GRP.rx";
connectAttr "R_Digit02_GRP_parentConstraint1.cry" "R_Digit02_GRP.ry";
connectAttr "R_Digit02_GRP_parentConstraint1.crz" "R_Digit02_GRP.rz";
connectAttr "R_Digit02_GRP.ro" "R_Digit02_GRP_parentConstraint1.cro";
connectAttr "R_Digit02_GRP.pim" "R_Digit02_GRP_parentConstraint1.cpim";
connectAttr "R_Digit02_GRP.rp" "R_Digit02_GRP_parentConstraint1.crp";
connectAttr "R_Digit02_GRP.rpt" "R_Digit02_GRP_parentConstraint1.crt";
connectAttr "R_Leg03_CTR.t" "R_Digit02_GRP_parentConstraint1.tg[0].tt";
connectAttr "R_Leg03_CTR.rp" "R_Digit02_GRP_parentConstraint1.tg[0].trp";
connectAttr "R_Leg03_CTR.rpt" "R_Digit02_GRP_parentConstraint1.tg[0].trt";
connectAttr "R_Leg03_CTR.r" "R_Digit02_GRP_parentConstraint1.tg[0].tr";
connectAttr "R_Leg03_CTR.ro" "R_Digit02_GRP_parentConstraint1.tg[0].tro";
connectAttr "R_Leg03_CTR.s" "R_Digit02_GRP_parentConstraint1.tg[0].ts";
connectAttr "R_Leg03_CTR.pm" "R_Digit02_GRP_parentConstraint1.tg[0].tpm";
connectAttr "R_Digit02_GRP_parentConstraint1.w0" "R_Digit02_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Digit02_CTR.Attachment" "R_Digit02_GRP_parentConstraint1.w0";
connectAttr "R_Digit03_GRP_parentConstraint1.ctx" "R_Digit03_GRP.tx";
connectAttr "R_Digit03_GRP_parentConstraint1.cty" "R_Digit03_GRP.ty";
connectAttr "R_Digit03_GRP_parentConstraint1.ctz" "R_Digit03_GRP.tz";
connectAttr "R_Digit03_GRP_parentConstraint1.crx" "R_Digit03_GRP.rx";
connectAttr "R_Digit03_GRP_parentConstraint1.cry" "R_Digit03_GRP.ry";
connectAttr "R_Digit03_GRP_parentConstraint1.crz" "R_Digit03_GRP.rz";
connectAttr "R_Digit03_GRP.ro" "R_Digit03_GRP_parentConstraint1.cro";
connectAttr "R_Digit03_GRP.pim" "R_Digit03_GRP_parentConstraint1.cpim";
connectAttr "R_Digit03_GRP.rp" "R_Digit03_GRP_parentConstraint1.crp";
connectAttr "R_Digit03_GRP.rpt" "R_Digit03_GRP_parentConstraint1.crt";
connectAttr "R_Leg04_CTR.t" "R_Digit03_GRP_parentConstraint1.tg[0].tt";
connectAttr "R_Leg04_CTR.rp" "R_Digit03_GRP_parentConstraint1.tg[0].trp";
connectAttr "R_Leg04_CTR.rpt" "R_Digit03_GRP_parentConstraint1.tg[0].trt";
connectAttr "R_Leg04_CTR.r" "R_Digit03_GRP_parentConstraint1.tg[0].tr";
connectAttr "R_Leg04_CTR.ro" "R_Digit03_GRP_parentConstraint1.tg[0].tro";
connectAttr "R_Leg04_CTR.s" "R_Digit03_GRP_parentConstraint1.tg[0].ts";
connectAttr "R_Leg04_CTR.pm" "R_Digit03_GRP_parentConstraint1.tg[0].tpm";
connectAttr "R_Digit03_GRP_parentConstraint1.w0" "R_Digit03_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "R_Digit03_CTR.Attachment" "R_Digit03_GRP_parentConstraint1.w0";
connectAttr "Geometry.di" "Spider_Guard_MOD_MASTER:SpiderGuard_GEO.do";
connectAttr "Spider_Guard_MOD_MASTER:groupId1.id" "Spider_Guard_MOD_MASTER:SpiderGuard_GEOShape.iog.og[0].gid"
		;
connectAttr "Spider_Guard_MOD_MASTER:groupId4.id" "Spider_Guard_MOD_MASTER:SpiderGuard_GEOShape.iog.og[3].gid"
		;
connectAttr "Spider_Guard_MOD_MASTER:textureEditorIsolateSelectSet.mwc" "Spider_Guard_MOD_MASTER:SpiderGuard_GEOShape.iog.og[3].gco"
		;
connectAttr "Spider_Guard_MOD_MASTER:groupId5.id" "Spider_Guard_MOD_MASTER:SpiderGuard_GEOShape.iog.og[4].gid"
		;
connectAttr "Spider_Guard_MOD_MASTER:blinn1SG.mwc" "Spider_Guard_MOD_MASTER:SpiderGuard_GEOShape.iog.og[4].gco"
		;
connectAttr "Spider_Guard_MOD_MASTER:textureEditorIsolateSelectSet.mwc" "SpiderGuard_GEOShapeDeformed.iog.og[1].gco"
		;
connectAttr "Spider_Guard_MOD_MASTER:groupId4.id" "SpiderGuard_GEOShapeDeformed.iog.og[1].gid"
		;
connectAttr "Spider_Guard_MOD_MASTER:blinn1SG.mwc" "SpiderGuard_GEOShapeDeformed.iog.og[2].gco"
		;
connectAttr "Spider_Guard_MOD_MASTER:groupId5.id" "SpiderGuard_GEOShapeDeformed.iog.og[2].gid"
		;
connectAttr "skinCluster1.og[0]" "SpiderGuard_GEOShapeDeformed.i";
connectAttr "tweak1.vl[0].vt[0]" "SpiderGuard_GEOShapeDeformed.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Spider_Guard_MOD_MASTER:blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Spider_Guard_MOD_MASTER:blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "Geometry.id";
connectAttr "Spider_Guard_MOD_MASTER:SpiderGuard_GEOShape.w" "tweak1.ip[0].ig";
connectAttr "Spider_Guard_MOD_MASTER:SpiderGuard_GEOShape.o" "skinCluster1.orggeom[0]"
		;
connectAttr "tweak1.og[0]" "skinCluster1.ip[0].ig";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "R_Digit04_JNT.wm" "skinCluster1.ma[0]";
connectAttr "|R_Digit04_JNT|R_DigitEnd_JNT.wm" "skinCluster1.ma[1]";
connectAttr "R_Digit03_JNT.wm" "skinCluster1.ma[2]";
connectAttr "|R_Digit03_JNT|R_DigitEnd_JNT.wm" "skinCluster1.ma[3]";
connectAttr "R_Digit02_JNT.wm" "skinCluster1.ma[4]";
connectAttr "|R_Digit02_JNT|R_DigitEnd_JNT.wm" "skinCluster1.ma[5]";
connectAttr "L_Digit04_JNT.wm" "skinCluster1.ma[6]";
connectAttr "|L_Digit04_JNT|L_DigitEnd_JNT.wm" "skinCluster1.ma[7]";
connectAttr "L_Digit03_JNT.wm" "skinCluster1.ma[8]";
connectAttr "|L_Digit03_JNT|L_DigitEnd_JNT.wm" "skinCluster1.ma[9]";
connectAttr "L_Digit02_JNT.wm" "skinCluster1.ma[10]";
connectAttr "|L_Digit02_JNT|L_DigitEnd_JNT.wm" "skinCluster1.ma[11]";
connectAttr "Base_JNT.wm" "skinCluster1.ma[12]";
connectAttr "Head_JNT.wm" "skinCluster1.ma[13]";
connectAttr "Eyes_JNT.wm" "skinCluster1.ma[14]";
connectAttr "L_Face_JNT.wm" "skinCluster1.ma[15]";
connectAttr "L_Mandible_JNT.wm" "skinCluster1.ma[16]";
connectAttr "L_MandibleEnd_JNT.wm" "skinCluster1.ma[17]";
connectAttr "R_Face_JNT.wm" "skinCluster1.ma[18]";
connectAttr "R_Mandible_JNT.wm" "skinCluster1.ma[19]";
connectAttr "R_MandibleEnd_JNT.wm" "skinCluster1.ma[20]";
connectAttr "L_Leg0101_JNT.wm" "skinCluster1.ma[21]";
connectAttr "L_Leg0102_JNT.wm" "skinCluster1.ma[22]";
connectAttr "L_Leg0103_JNT.wm" "skinCluster1.ma[23]";
connectAttr "L_LegEnd_JNT.wm" "skinCluster1.ma[24]";
connectAttr "L_Leg0201_JNT.wm" "skinCluster1.ma[25]";
connectAttr "L_Leg0202_JNT.wm" "skinCluster1.ma[26]";
connectAttr "L_Leg0203_JNT.wm" "skinCluster1.ma[27]";
connectAttr "L_Leg0301_JNT.wm" "skinCluster1.ma[28]";
connectAttr "L_Leg0302_JNT.wm" "skinCluster1.ma[29]";
connectAttr "L_Leg0303_JNT.wm" "skinCluster1.ma[30]";
connectAttr "L_Leg0401_JNT.wm" "skinCluster1.ma[31]";
connectAttr "L_Leg0402_JNT.wm" "skinCluster1.ma[32]";
connectAttr "L_Leg0403_JNT.wm" "skinCluster1.ma[33]";
connectAttr "R_Leg0101_JNT.wm" "skinCluster1.ma[34]";
connectAttr "R_Leg0102_JNT.wm" "skinCluster1.ma[35]";
connectAttr "R_Leg0103_JNT.wm" "skinCluster1.ma[36]";
connectAttr "R_LegEnd_JNT.wm" "skinCluster1.ma[37]";
connectAttr "R_Leg0201_JNT.wm" "skinCluster1.ma[38]";
connectAttr "R_Leg0202_JNT.wm" "skinCluster1.ma[39]";
connectAttr "R_Leg0203_JNT.wm" "skinCluster1.ma[40]";
connectAttr "R_Leg0301_JNT.wm" "skinCluster1.ma[41]";
connectAttr "R_Leg0302_JNT.wm" "skinCluster1.ma[42]";
connectAttr "R_Leg0303_JNT.wm" "skinCluster1.ma[43]";
connectAttr "R_Leg0401_JNT.wm" "skinCluster1.ma[44]";
connectAttr "R_Leg0402_JNT.wm" "skinCluster1.ma[45]";
connectAttr "R_Leg0403_JNT.wm" "skinCluster1.ma[46]";
connectAttr "R_Digit04_JNT.liw" "skinCluster1.lw[0]";
connectAttr "|R_Digit04_JNT|R_DigitEnd_JNT.liw" "skinCluster1.lw[1]";
connectAttr "R_Digit03_JNT.liw" "skinCluster1.lw[2]";
connectAttr "|R_Digit03_JNT|R_DigitEnd_JNT.liw" "skinCluster1.lw[3]";
connectAttr "R_Digit02_JNT.liw" "skinCluster1.lw[4]";
connectAttr "|R_Digit02_JNT|R_DigitEnd_JNT.liw" "skinCluster1.lw[5]";
connectAttr "L_Digit04_JNT.liw" "skinCluster1.lw[6]";
connectAttr "|L_Digit04_JNT|L_DigitEnd_JNT.liw" "skinCluster1.lw[7]";
connectAttr "L_Digit03_JNT.liw" "skinCluster1.lw[8]";
connectAttr "|L_Digit03_JNT|L_DigitEnd_JNT.liw" "skinCluster1.lw[9]";
connectAttr "L_Digit02_JNT.liw" "skinCluster1.lw[10]";
connectAttr "|L_Digit02_JNT|L_DigitEnd_JNT.liw" "skinCluster1.lw[11]";
connectAttr "Base_JNT.liw" "skinCluster1.lw[12]";
connectAttr "Head_JNT.liw" "skinCluster1.lw[13]";
connectAttr "Eyes_JNT.liw" "skinCluster1.lw[14]";
connectAttr "L_Face_JNT.liw" "skinCluster1.lw[15]";
connectAttr "L_Mandible_JNT.liw" "skinCluster1.lw[16]";
connectAttr "L_MandibleEnd_JNT.liw" "skinCluster1.lw[17]";
connectAttr "R_Face_JNT.liw" "skinCluster1.lw[18]";
connectAttr "R_Mandible_JNT.liw" "skinCluster1.lw[19]";
connectAttr "R_MandibleEnd_JNT.liw" "skinCluster1.lw[20]";
connectAttr "L_Leg0101_JNT.liw" "skinCluster1.lw[21]";
connectAttr "L_Leg0102_JNT.liw" "skinCluster1.lw[22]";
connectAttr "L_Leg0103_JNT.liw" "skinCluster1.lw[23]";
connectAttr "L_LegEnd_JNT.liw" "skinCluster1.lw[24]";
connectAttr "L_Leg0201_JNT.liw" "skinCluster1.lw[25]";
connectAttr "L_Leg0202_JNT.liw" "skinCluster1.lw[26]";
connectAttr "L_Leg0203_JNT.liw" "skinCluster1.lw[27]";
connectAttr "L_Leg0301_JNT.liw" "skinCluster1.lw[28]";
connectAttr "L_Leg0302_JNT.liw" "skinCluster1.lw[29]";
connectAttr "L_Leg0303_JNT.liw" "skinCluster1.lw[30]";
connectAttr "L_Leg0401_JNT.liw" "skinCluster1.lw[31]";
connectAttr "L_Leg0402_JNT.liw" "skinCluster1.lw[32]";
connectAttr "L_Leg0403_JNT.liw" "skinCluster1.lw[33]";
connectAttr "R_Leg0101_JNT.liw" "skinCluster1.lw[34]";
connectAttr "R_Leg0102_JNT.liw" "skinCluster1.lw[35]";
connectAttr "R_Leg0103_JNT.liw" "skinCluster1.lw[36]";
connectAttr "R_LegEnd_JNT.liw" "skinCluster1.lw[37]";
connectAttr "R_Leg0201_JNT.liw" "skinCluster1.lw[38]";
connectAttr "R_Leg0202_JNT.liw" "skinCluster1.lw[39]";
connectAttr "R_Leg0203_JNT.liw" "skinCluster1.lw[40]";
connectAttr "R_Leg0301_JNT.liw" "skinCluster1.lw[41]";
connectAttr "R_Leg0302_JNT.liw" "skinCluster1.lw[42]";
connectAttr "R_Leg0303_JNT.liw" "skinCluster1.lw[43]";
connectAttr "R_Leg0401_JNT.liw" "skinCluster1.lw[44]";
connectAttr "R_Leg0402_JNT.liw" "skinCluster1.lw[45]";
connectAttr "R_Leg0403_JNT.liw" "skinCluster1.lw[46]";
connectAttr "R_Digit04_JNT.obcc" "skinCluster1.ifcl[0]";
connectAttr "|R_Digit04_JNT|R_DigitEnd_JNT.obcc" "skinCluster1.ifcl[1]";
connectAttr "R_Digit03_JNT.obcc" "skinCluster1.ifcl[2]";
connectAttr "|R_Digit03_JNT|R_DigitEnd_JNT.obcc" "skinCluster1.ifcl[3]";
connectAttr "R_Digit02_JNT.obcc" "skinCluster1.ifcl[4]";
connectAttr "|R_Digit02_JNT|R_DigitEnd_JNT.obcc" "skinCluster1.ifcl[5]";
connectAttr "L_Digit04_JNT.obcc" "skinCluster1.ifcl[6]";
connectAttr "|L_Digit04_JNT|L_DigitEnd_JNT.obcc" "skinCluster1.ifcl[7]";
connectAttr "L_Digit03_JNT.obcc" "skinCluster1.ifcl[8]";
connectAttr "|L_Digit03_JNT|L_DigitEnd_JNT.obcc" "skinCluster1.ifcl[9]";
connectAttr "L_Digit02_JNT.obcc" "skinCluster1.ifcl[10]";
connectAttr "|L_Digit02_JNT|L_DigitEnd_JNT.obcc" "skinCluster1.ifcl[11]";
connectAttr "Base_JNT.obcc" "skinCluster1.ifcl[12]";
connectAttr "Head_JNT.obcc" "skinCluster1.ifcl[13]";
connectAttr "Eyes_JNT.obcc" "skinCluster1.ifcl[14]";
connectAttr "L_Face_JNT.obcc" "skinCluster1.ifcl[15]";
connectAttr "L_Mandible_JNT.obcc" "skinCluster1.ifcl[16]";
connectAttr "L_MandibleEnd_JNT.obcc" "skinCluster1.ifcl[17]";
connectAttr "R_Face_JNT.obcc" "skinCluster1.ifcl[18]";
connectAttr "R_Mandible_JNT.obcc" "skinCluster1.ifcl[19]";
connectAttr "R_MandibleEnd_JNT.obcc" "skinCluster1.ifcl[20]";
connectAttr "L_Leg0101_JNT.obcc" "skinCluster1.ifcl[21]";
connectAttr "L_Leg0102_JNT.obcc" "skinCluster1.ifcl[22]";
connectAttr "L_Leg0103_JNT.obcc" "skinCluster1.ifcl[23]";
connectAttr "L_LegEnd_JNT.obcc" "skinCluster1.ifcl[24]";
connectAttr "L_Leg0201_JNT.obcc" "skinCluster1.ifcl[25]";
connectAttr "L_Leg0202_JNT.obcc" "skinCluster1.ifcl[26]";
connectAttr "L_Leg0203_JNT.obcc" "skinCluster1.ifcl[27]";
connectAttr "L_Leg0301_JNT.obcc" "skinCluster1.ifcl[28]";
connectAttr "L_Leg0302_JNT.obcc" "skinCluster1.ifcl[29]";
connectAttr "L_Leg0303_JNT.obcc" "skinCluster1.ifcl[30]";
connectAttr "L_Leg0401_JNT.obcc" "skinCluster1.ifcl[31]";
connectAttr "L_Leg0402_JNT.obcc" "skinCluster1.ifcl[32]";
connectAttr "L_Leg0403_JNT.obcc" "skinCluster1.ifcl[33]";
connectAttr "R_Leg0101_JNT.obcc" "skinCluster1.ifcl[34]";
connectAttr "R_Leg0102_JNT.obcc" "skinCluster1.ifcl[35]";
connectAttr "R_Leg0103_JNT.obcc" "skinCluster1.ifcl[36]";
connectAttr "R_LegEnd_JNT.obcc" "skinCluster1.ifcl[37]";
connectAttr "R_Leg0201_JNT.obcc" "skinCluster1.ifcl[38]";
connectAttr "R_Leg0202_JNT.obcc" "skinCluster1.ifcl[39]";
connectAttr "R_Leg0203_JNT.obcc" "skinCluster1.ifcl[40]";
connectAttr "R_Leg0301_JNT.obcc" "skinCluster1.ifcl[41]";
connectAttr "R_Leg0302_JNT.obcc" "skinCluster1.ifcl[42]";
connectAttr "R_Leg0303_JNT.obcc" "skinCluster1.ifcl[43]";
connectAttr "R_Leg0401_JNT.obcc" "skinCluster1.ifcl[44]";
connectAttr "R_Leg0402_JNT.obcc" "skinCluster1.ifcl[45]";
connectAttr "R_Leg0403_JNT.obcc" "skinCluster1.ifcl[46]";
connectAttr "R_Leg0103_JNT.msg" "skinCluster1.ptt";
connectAttr "R_Digit04_JNT.msg" "bindPose1.m[0]";
connectAttr "|R_Digit04_JNT|R_DigitEnd_JNT.msg" "bindPose1.m[1]";
connectAttr "R_Digit03_JNT.msg" "bindPose1.m[2]";
connectAttr "|R_Digit03_JNT|R_DigitEnd_JNT.msg" "bindPose1.m[3]";
connectAttr "R_Digit02_JNT.msg" "bindPose1.m[4]";
connectAttr "|R_Digit02_JNT|R_DigitEnd_JNT.msg" "bindPose1.m[5]";
connectAttr "L_Digit04_JNT.msg" "bindPose1.m[6]";
connectAttr "|L_Digit04_JNT|L_DigitEnd_JNT.msg" "bindPose1.m[7]";
connectAttr "L_Digit03_JNT.msg" "bindPose1.m[8]";
connectAttr "|L_Digit03_JNT|L_DigitEnd_JNT.msg" "bindPose1.m[9]";
connectAttr "L_Digit02_JNT.msg" "bindPose1.m[10]";
connectAttr "|L_Digit02_JNT|L_DigitEnd_JNT.msg" "bindPose1.m[11]";
connectAttr "Base_JNT.msg" "bindPose1.m[12]";
connectAttr "Head_JNT.msg" "bindPose1.m[13]";
connectAttr "Eyes_JNT.msg" "bindPose1.m[14]";
connectAttr "L_Face_JNT.msg" "bindPose1.m[15]";
connectAttr "L_Mandible_JNT.msg" "bindPose1.m[16]";
connectAttr "L_MandibleEnd_JNT.msg" "bindPose1.m[17]";
connectAttr "R_Face_JNT.msg" "bindPose1.m[18]";
connectAttr "R_Mandible_JNT.msg" "bindPose1.m[19]";
connectAttr "R_MandibleEnd_JNT.msg" "bindPose1.m[20]";
connectAttr "L_Leg0101_JNT.msg" "bindPose1.m[21]";
connectAttr "L_Leg0102_JNT.msg" "bindPose1.m[22]";
connectAttr "L_Leg0103_JNT.msg" "bindPose1.m[23]";
connectAttr "L_LegEnd_JNT.msg" "bindPose1.m[24]";
connectAttr "L_Leg0201_JNT.msg" "bindPose1.m[25]";
connectAttr "L_Leg0202_JNT.msg" "bindPose1.m[26]";
connectAttr "L_Leg0203_JNT.msg" "bindPose1.m[27]";
connectAttr "L_Leg0301_JNT.msg" "bindPose1.m[28]";
connectAttr "L_Leg0302_JNT.msg" "bindPose1.m[29]";
connectAttr "L_Leg0303_JNT.msg" "bindPose1.m[30]";
connectAttr "L_Leg0401_JNT.msg" "bindPose1.m[31]";
connectAttr "L_Leg0402_JNT.msg" "bindPose1.m[32]";
connectAttr "L_Leg0403_JNT.msg" "bindPose1.m[33]";
connectAttr "R_Leg0101_JNT.msg" "bindPose1.m[34]";
connectAttr "R_Leg0102_JNT.msg" "bindPose1.m[35]";
connectAttr "R_Leg0103_JNT.msg" "bindPose1.m[36]";
connectAttr "R_LegEnd_JNT.msg" "bindPose1.m[37]";
connectAttr "R_Leg0201_JNT.msg" "bindPose1.m[38]";
connectAttr "R_Leg0202_JNT.msg" "bindPose1.m[39]";
connectAttr "R_Leg0203_JNT.msg" "bindPose1.m[40]";
connectAttr "R_Leg0301_JNT.msg" "bindPose1.m[41]";
connectAttr "R_Leg0302_JNT.msg" "bindPose1.m[42]";
connectAttr "R_Leg0303_JNT.msg" "bindPose1.m[43]";
connectAttr "R_Leg0401_JNT.msg" "bindPose1.m[44]";
connectAttr "R_Leg0402_JNT.msg" "bindPose1.m[45]";
connectAttr "R_Leg0403_JNT.msg" "bindPose1.m[46]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.w" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.w" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.w" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.w" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.w" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.w" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[13]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[13]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[12]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[12]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[12]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[12]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[12]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "bindPose1.m[36]" "bindPose1.p[37]";
connectAttr "bindPose1.m[12]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[39]" "bindPose1.p[40]";
connectAttr "bindPose1.m[12]" "bindPose1.p[41]";
connectAttr "bindPose1.m[41]" "bindPose1.p[42]";
connectAttr "bindPose1.m[42]" "bindPose1.p[43]";
connectAttr "bindPose1.m[12]" "bindPose1.p[44]";
connectAttr "bindPose1.m[44]" "bindPose1.p[45]";
connectAttr "bindPose1.m[45]" "bindPose1.p[46]";
connectAttr "R_Digit04_JNT.bps" "bindPose1.wm[0]";
connectAttr "|R_Digit04_JNT|R_DigitEnd_JNT.bps" "bindPose1.wm[1]";
connectAttr "R_Digit03_JNT.bps" "bindPose1.wm[2]";
connectAttr "|R_Digit03_JNT|R_DigitEnd_JNT.bps" "bindPose1.wm[3]";
connectAttr "R_Digit02_JNT.bps" "bindPose1.wm[4]";
connectAttr "|R_Digit02_JNT|R_DigitEnd_JNT.bps" "bindPose1.wm[5]";
connectAttr "L_Digit04_JNT.bps" "bindPose1.wm[6]";
connectAttr "|L_Digit04_JNT|L_DigitEnd_JNT.bps" "bindPose1.wm[7]";
connectAttr "L_Digit03_JNT.bps" "bindPose1.wm[8]";
connectAttr "|L_Digit03_JNT|L_DigitEnd_JNT.bps" "bindPose1.wm[9]";
connectAttr "L_Digit02_JNT.bps" "bindPose1.wm[10]";
connectAttr "|L_Digit02_JNT|L_DigitEnd_JNT.bps" "bindPose1.wm[11]";
connectAttr "Base_JNT.bps" "bindPose1.wm[12]";
connectAttr "Head_JNT.bps" "bindPose1.wm[13]";
connectAttr "Eyes_JNT.bps" "bindPose1.wm[14]";
connectAttr "L_Face_JNT.bps" "bindPose1.wm[15]";
connectAttr "L_Mandible_JNT.bps" "bindPose1.wm[16]";
connectAttr "L_MandibleEnd_JNT.bps" "bindPose1.wm[17]";
connectAttr "R_Face_JNT.bps" "bindPose1.wm[18]";
connectAttr "R_Mandible_JNT.bps" "bindPose1.wm[19]";
connectAttr "R_MandibleEnd_JNT.bps" "bindPose1.wm[20]";
connectAttr "L_Leg0101_JNT.bps" "bindPose1.wm[21]";
connectAttr "L_Leg0102_JNT.bps" "bindPose1.wm[22]";
connectAttr "L_Leg0103_JNT.bps" "bindPose1.wm[23]";
connectAttr "L_LegEnd_JNT.bps" "bindPose1.wm[24]";
connectAttr "L_Leg0201_JNT.bps" "bindPose1.wm[25]";
connectAttr "L_Leg0202_JNT.bps" "bindPose1.wm[26]";
connectAttr "L_Leg0203_JNT.bps" "bindPose1.wm[27]";
connectAttr "L_Leg0301_JNT.bps" "bindPose1.wm[28]";
connectAttr "L_Leg0302_JNT.bps" "bindPose1.wm[29]";
connectAttr "L_Leg0303_JNT.bps" "bindPose1.wm[30]";
connectAttr "L_Leg0401_JNT.bps" "bindPose1.wm[31]";
connectAttr "L_Leg0402_JNT.bps" "bindPose1.wm[32]";
connectAttr "L_Leg0403_JNT.bps" "bindPose1.wm[33]";
connectAttr "R_Leg0101_JNT.bps" "bindPose1.wm[34]";
connectAttr "R_Leg0102_JNT.bps" "bindPose1.wm[35]";
connectAttr "R_Leg0103_JNT.bps" "bindPose1.wm[36]";
connectAttr "R_LegEnd_JNT.bps" "bindPose1.wm[37]";
connectAttr "R_Leg0201_JNT.bps" "bindPose1.wm[38]";
connectAttr "R_Leg0202_JNT.bps" "bindPose1.wm[39]";
connectAttr "R_Leg0203_JNT.bps" "bindPose1.wm[40]";
connectAttr "R_Leg0301_JNT.bps" "bindPose1.wm[41]";
connectAttr "R_Leg0302_JNT.bps" "bindPose1.wm[42]";
connectAttr "R_Leg0303_JNT.bps" "bindPose1.wm[43]";
connectAttr "R_Leg0401_JNT.bps" "bindPose1.wm[44]";
connectAttr "R_Leg0402_JNT.bps" "bindPose1.wm[45]";
connectAttr "R_Leg0403_JNT.bps" "bindPose1.wm[46]";
connectAttr "Spider_Guard_MOD_MASTER:SpiderGuard_GEO.iog" "Export.dsm" -na;
connectAttr "R_Digit04_JNT.iog" "Export.dsm" -na;
connectAttr "R_Digit03_JNT.iog" "Export.dsm" -na;
connectAttr "R_Digit02_JNT.iog" "Export.dsm" -na;
connectAttr "L_Digit04_JNT.iog" "Export.dsm" -na;
connectAttr "L_Digit03_JNT.iog" "Export.dsm" -na;
connectAttr "L_Digit02_JNT.iog" "Export.dsm" -na;
connectAttr "Base_JNT.iog" "Export.dsm" -na;
connectAttr "Spider_Guard_MOD_MASTER:renderLayerManager.rlmi[0]" "Spider_Guard_MOD_MASTER:defaultRenderLayer.rlid"
		;
connectAttr "Spider_Guard_MOD_MASTER:place2dTexture1.o" "Spider_Guard_MOD_MASTER:checker1.uv"
		;
connectAttr "Spider_Guard_MOD_MASTER:place2dTexture1.ofs" "Spider_Guard_MOD_MASTER:checker1.fs"
		;
connectAttr "Spider_Guard_MOD_MASTER:checker2.oc" "Spider_Guard_MOD_MASTER:blinn1.c"
		;
connectAttr "Spider_Guard_MOD_MASTER:blinn1.oc" "Spider_Guard_MOD_MASTER:blinn1SG.ss"
		;
connectAttr "Spider_Guard_MOD_MASTER:SpiderGuard_GEOShape.iog.og[4]" "Spider_Guard_MOD_MASTER:blinn1SG.dsm"
		 -na;
connectAttr "SpiderGuard_GEOShapeDeformed.iog.og[2]" "Spider_Guard_MOD_MASTER:blinn1SG.dsm"
		 -na;
connectAttr "Spider_Guard_MOD_MASTER:groupId5.msg" "Spider_Guard_MOD_MASTER:blinn1SG.gn"
		 -na;
connectAttr "Spider_Guard_MOD_MASTER:blinn1SG.msg" "Spider_Guard_MOD_MASTER:materialInfo1.sg"
		;
connectAttr "Spider_Guard_MOD_MASTER:blinn1.msg" "Spider_Guard_MOD_MASTER:materialInfo1.m"
		;
connectAttr "Spider_Guard_MOD_MASTER:checker2.msg" "Spider_Guard_MOD_MASTER:materialInfo1.t"
		 -na;
connectAttr "Spider_Guard_MOD_MASTER:place2dTexture2.o" "Spider_Guard_MOD_MASTER:checker2.uv"
		;
connectAttr "Spider_Guard_MOD_MASTER:place2dTexture2.ofs" "Spider_Guard_MOD_MASTER:checker2.fs"
		;
connectAttr "Spider_Guard_MOD_MASTER:groupId4.msg" "Spider_Guard_MOD_MASTER:textureEditorIsolateSelectSet.gn"
		 -na;
connectAttr "Spider_Guard_MOD_MASTER:SpiderGuard_GEOShape.iog.og[3]" "Spider_Guard_MOD_MASTER:textureEditorIsolateSelectSet.dsm"
		 -na;
connectAttr "SpiderGuard_GEOShapeDeformed.iog.og[1]" "Spider_Guard_MOD_MASTER:textureEditorIsolateSelectSet.dsm"
		 -na;
connectAttr "L_Digit01_CTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "R_Digit01_CTR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "R_Digit02_CTR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "R_Digit03_CTR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "R_Digit02_GRP_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "L_Digit01_GRP_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "L_Digit02_CTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "L_Digit02_GRP_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "R_Digit03_GRP_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "R_Digit01_GRP_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "L_Digit03_CTL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "L_Digit03_GRP_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Spider_Guard_MOD_MASTER:blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "Spider_Guard_MOD_MASTER:blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "Spider_Guard_MOD_MASTER:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Spider_Guard_MOD_MASTER:place2dTexture2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Spider_Guard_MOD_MASTER:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "Spider_Guard_MOD_MASTER:checker1.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "Spider_Guard_MOD_MASTER:checker2.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "Spider_Guard_MOD_MASTER:checker1.oc" ":lambert1.c";
connectAttr "R_Leg02_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "R_Leg03_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "R_Leg04_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_Leg01_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_Leg02_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_Leg03_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "L_Leg04_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "R_Leg01_POLShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Spider_Guard_MOD_MASTER:checker1.msg" ":initialMaterialInfo.t" -na;
connectAttr "Spider_Guard_MOD_MASTER:groupId1.msg" ":defaultLastHiddenSet.gn" -na
		;
connectAttr "Spider_Guard_MOD_MASTER:SpiderGuard_GEOShape.iog.og[0]" ":defaultLastHiddenSet.dsm"
		 -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Spider-Guard_RIG_MASTER.ma
