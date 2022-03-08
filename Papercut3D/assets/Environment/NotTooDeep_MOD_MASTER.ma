//Maya ASCII 2022 scene
//Name: NotTooDeep_MOD_MASTER.ma
//Last modified: Tue, Jan 18, 2022 07:38:33 PM
//Codeset: 1252
requires maya "2022";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.0.0.1";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Education v2004 (Build: 19041)";
fileInfo "UUID" "2ADCF53D-470E-8088-AE70-CA80DD530553";
createNode transform -s -n "persp";
	rename -uid "F4D40E82-4F07-1563-656D-A09EA616A95A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -506.50405633238256 1031.2235537828583 3956.1471556926376 ;
	setAttr ".r" -type "double3" -10.199999999999259 717.99999999999841 -1.2431614728268343e-16 ;
	setAttr ".rpt" -type "double3" -6.7716238527746868e-15 8.3356210997749397e-15 1.384759612525698e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "ED90FA03-413E-90F4-1F1B-22BFD073218C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 4237.5316270854182;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -7.8800467737983126 549.28317260742188 -354.45893282704003 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A15A1FE9-4AAE-0E69-6272-B8BEC80078EC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.8800467737983126 1122.8152484831753 -354.45893282704003 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "75F4B3C9-4AD2-F477-894A-B8A75E5F1172";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 573.53207587575332;
	setAttr ".ow" 4916.9899627803652;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -7.8800467737983126 549.28317260742188 -354.45893282704003 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "01AC0106-4F30-1A10-601F-FB863D25772E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.8800467737983126 549.28317260742188 1169.4003994736786 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "413AD20F-425F-B8EA-FC61-C88C2CEB0DE7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1523.8593323007185;
	setAttr ".ow" 4916.9899627803652;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -7.8800467737983126 549.28317260742188 -354.45893282704003 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "A33AE427-46A0-F48B-EA0D-4AB4EC964403";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "FFAF0AEA-4FE3-FACA-6428-34998BE5E2C3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Camera01";
	rename -uid "E60A574A-4D89-4E96-F859-6EA849FD2BAB";
	setAttr ".t" -type "double3" 0 300 2000 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "CameraShape1" -p "Camera01";
	rename -uid "982F0CDF-444E-D184-2A41-FA9E877E1C5C";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 3;
	setAttr ".ovr" 1.3;
	setAttr ".ncp" 10;
	setAttr -l on ".coi" 6.6380394678836012;
	setAttr -l on ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".tp" -type "double3" -7.8800467737983126 549.28317260742188 -354.45893282704003 ;
	setAttr ".dr" yes;
createNode transform -n "MainCharacter";
	rename -uid "A038A448-445A-8FEA-A664-C092F01161A1";
createNode transform -n "Main_GEO" -p "MainCharacter";
	rename -uid "12AEFB70-4C0C-618A-A99B-3F9CD5F25FC3";
createNode mesh -n "Main_GEOShape" -p "Main_GEO";
	rename -uid "81E8238F-42E3-3C2A-A73E-71AD99CDE90D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 85 0 0 85 0 0 85 0 0 85 
		0 0 85 0 0 85 0 0 85 0 0 85 0;
	setAttr -s 8 ".vt[0:7]"  -25 -85 15 25 -85 15 -25 85 15 25 85 15 -25 85 -15
		 25 85 -15 -25 -85 -15 25 -85 -15;
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
createNode transform -n "locator1" -p "MainCharacter";
	rename -uid "9CB9DF6E-401B-9FD3-698F-39A256A3B540";
	setAttr ".t" -type "double3" -25 170 15 ;
createNode locator -n "locatorShape1" -p "locator1";
	rename -uid "BF16ECE2-45A6-28DD-9D98-66940B08CF6E";
	setAttr -k off ".v";
createNode transform -n "locator2" -p "MainCharacter";
	rename -uid "F64D59BE-496F-D2CB-A7AC-019CBE62DE3A";
	setAttr ".t" -type "double3" -25 0 15 ;
createNode locator -n "locatorShape2" -p "locator2";
	rename -uid "56C86EB6-4EED-5938-0284-C2AA03F6FC4E";
	setAttr -k off ".v";
createNode transform -n "distanceDimension1" -p "MainCharacter";
	rename -uid "CCF1365E-43C1-05D3-33EC-938DA3CDBCF5";
createNode distanceDimShape -n "distanceDimensionShape1" -p "distanceDimension1";
	rename -uid "23BB996A-4CD1-0B48-091E-ADAC255B5976";
	setAttr -k off ".v";
createNode transform -n "Tree01";
	rename -uid "D39CF4B7-472B-976B-AD13-D5A0CE5480F7";
	setAttr ".t" -type "double3" 1700 0 -1420 ;
createNode mesh -n "TreeShape1" -p "Tree01";
	rename -uid "666442D0-4800-AE02-9267-B28CF4010B4E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[8:15]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:7]" "vtx[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[8:15]" "vtx[17]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:7]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[16:23]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[8:15]";
	setAttr ".pv" -type "double2" 0.5 0.38768798112869263 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.5 0.68843997 0.5 0.15000001 0.625 0.38768798 0.375 0.38768798 0.40625003 0.38768798
		 0.4375 0.38768798 0.46875 0.38768798 0.5 0.38768798 0.53125 0.38768798 0.5625 0.38768798
		 0.59375 0.38768798 0.375 0.38768798 0.40625003 0.38768798 0.4375 0.38768798 0.46875
		 0.38768798 0.5 0.38768798 0.5 0.68843985 0.53125 0.38768798 0.5625 0.38768798 0.59375
		 0.38768798 0.625 0.38768798;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 27 ".pt[0:26]" -type "float3"  0 350 0 0 350 0 0 350 0 0 
		350 0 0 350 0 0 350 0 0 350 0 0 350 0 0 710 0 0 350 0 0 690 0 0 690 0 0 690 0 0 690 
		0 0 690 0 0 690 0 0 690 0 0 690 0 0 690 0 0 690 0 0 690 0 0 690 0 0 690 0 0 710 0 
		0 690 0 0 690 0 0 690 0;
	setAttr -s 27 ".vt[0:26]"  7.07106781 -350 -7.071066856 0 -350 -9.99999905
		 -7.07106781 -350 -7.071066856 -10 -350 0 -7.07106781 -350 7.071066856 0 -350 9.99999905
		 7.07106781 -350 7.07106781 10 -350 0 1.5195561e-05 350 1.4275859e-05 0 -350 0 7.07106781 -210 -7.071066856
		 0 -210 -9.99999905 -7.07106781 -210 -7.071066856 -10 -210 0 -7.07106781 -210 7.071066856
		 0 -210 9.99999905 7.07106781 -210 7.07106781 10 -210 0 67.40690613 -210 -67.40686035
		 2.4412475e-05 -210 -95.32778931 -67.40686035 -210 -67.40698242 -95.32779694 -210 -3.8272054e-05
		 -67.40690613 -210 67.40694427 1.5258789e-05 350 1.8119812e-05 2.4412475e-05 -210 95.32778931
		 67.40697479 -210 67.40697479 95.32778931 -210 1.6274989e-05;
	setAttr -s 57 ".ed[0:56]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0 7 17 0 9 0 1 9 1 1 9 2 1 9 3 1
		 9 4 1 9 5 1 9 6 1 9 7 1 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 10 0
		 10 18 0 11 19 0 18 19 0 19 8 0 18 8 0 12 20 0 19 20 0 20 8 0 13 21 0 20 21 0 21 8 0
		 14 22 0 21 22 0 8 23 0 22 23 0 15 24 0 22 24 0 24 8 0 16 25 0 24 25 0 25 8 0 17 26 0
		 25 26 0 26 8 0 26 18 0;
	setAttr -s 32 -ch 114 ".fc[0:31]" -type "polyFaces" 
		f 3 34 35 -37
		mu 0 3 28 29 17
		f 3 38 39 -36
		mu 0 3 29 30 17
		f 3 41 42 -40
		mu 0 3 30 31 17
		f 4 44 46 -46 -43
		mu 0 4 31 32 33 17
		f 4 48 49 45 -47
		mu 0 4 32 34 17 33
		f 3 51 52 -50
		mu 0 3 34 35 17
		f 3 54 55 -53
		mu 0 3 35 36 17
		f 3 56 36 -56
		mu 0 3 36 37 17
		f 3 -1 -17 17
		mu 0 3 1 0 18
		f 3 -2 -18 18
		mu 0 3 2 1 18
		f 3 -3 -19 19
		mu 0 3 3 2 18
		f 3 -4 -20 20
		mu 0 3 4 3 18
		f 3 -5 -21 21
		mu 0 3 5 4 18
		f 3 -6 -22 22
		mu 0 3 6 5 18
		f 3 -7 -23 23
		mu 0 3 7 6 18
		f 3 -8 -24 16
		mu 0 3 0 7 18
		f 4 0 9 -25 -9
		mu 0 4 8 9 21 20
		f 4 1 10 -26 -10
		mu 0 4 9 10 22 21
		f 4 2 11 -27 -11
		mu 0 4 10 11 23 22
		f 4 3 12 -28 -12
		mu 0 4 11 12 24 23
		f 4 4 13 -29 -13
		mu 0 4 12 13 25 24
		f 4 5 14 -30 -14
		mu 0 4 13 14 26 25
		f 4 6 15 -31 -15
		mu 0 4 14 15 27 26
		f 4 7 8 -32 -16
		mu 0 4 15 16 19 27
		f 4 24 33 -35 -33
		mu 0 4 20 21 29 28
		f 4 25 37 -39 -34
		mu 0 4 21 22 30 29
		f 4 26 40 -42 -38
		mu 0 4 22 23 31 30
		f 4 27 43 -45 -41
		mu 0 4 23 24 32 31
		f 4 28 47 -49 -44
		mu 0 4 24 25 34 32
		f 4 29 50 -52 -48
		mu 0 4 25 26 35 34
		f 4 30 53 -55 -51
		mu 0 4 26 27 36 35
		f 4 31 32 -57 -54
		mu 0 4 27 19 37 36;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Moon";
	rename -uid "00BA36A8-49B3-E9B2-B079-0395DF9455A3";
	setAttr ".t" -type "double3" 258.39599817331282 1041.8706554444675 0 ;
createNode mesh -n "MoonShape" -p "Moon";
	rename -uid "3356FABE-433A-2345-45D0-909935AA3E22";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:31]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.25 0.125 0.375
		 0.125 0.375 0.25 0.25 0.25 0.5 0.125 0.5 0.25 0.375 0.375 0.25 0.375 0.5 0.375 0.375
		 0.5 0.25 0.5 0.5 0.5 0.375 0.625 0.25 0.625 0.5 0.625 0.375 0.75 0.25 0.75 0.5 0.75
		 0.375 0.875 0.25 0.875 0.5 0.875 0.3125 0 0.4375 0 0.3125 1 0.4375 1 0.25 0.125 0.375
		 0.125 0.375 0.25 0.25 0.25 0.5 0.125 0.5 0.25 0.375 0.375 0.25 0.375 0.5 0.375 0.375
		 0.5 0.25 0.5 0.5 0.5 0.375 0.625 0.25 0.625 0.5 0.625 0.375 0.75 0.25 0.75 0.5 0.75
		 0.375 0.875 0.25 0.875 0.5 0.875 0.3125 0 0.4375 0 0.3125 1 0.4375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt[0:29]" -type "float3"  -19.860916 -46.193909 2.8497996e-15 
		-37.002594 -35.355286 3.9076827e-15 -50.339478 -19.134094 4.5013326e-15 -55.409149 
		0 8.8817842e-15 -50.339478 19.134155 4.2476818e-15 -37.002594 35.355347 0 -19.860916 
		46.19397 0 -26.197083 -34.848999 -24.791542 -13.81012 -45.516174 -13.414353 -13.81012 
		-45.516174 13.414352 -26.197083 -34.848999 24.791542 -36.199097 -18.866455 -32.397949 
		-36.199097 -18.866455 32.397949 -40.075577 0 -35.069977 -40.075577 0 35.069977 -36.199097 
		18.866577 -32.397949 -36.199097 18.866577 32.397949 -26.197083 34.849121 -24.791542 
		-26.197083 34.849121 24.791542 -13.81012 45.516235 -13.414354 -13.81012 45.516235 
		13.414354 -0.033935547 -49.258789 -6.9476664e-07 -0.033935547 49.258911 0 -8.2226105 
		-44.819641 -8.3786188e-07 -15.320084 -34.318359 -1.9036342e-07 -22.97612 -18.577942 
		4.9233954e-08 -26.458313 0 -8.3105583e-08 -22.97612 18.578003 -1.8052454e-07 -15.320084 
		34.318481 8.2711615e-15 -8.2226105 44.819702 1.8999211e-09;
	setAttr -s 30 ".vt[0:29]"  -39.72184372 -92.38793945 5.6995992e-15 -74.0052032471 -70.71069336 7.8153655e-15
		 -100.67895508 -38.26831055 9.0026651e-15 -110.81830597 0 1.7763568e-14 -100.67895508 38.26831055 8.4953635e-15
		 -74.0052032471 70.71069336 0 -39.72184372 92.38793945 0 -52.39416504 -69.6980896 -49.58308411
		 -27.62024307 -91.032409668 -26.82870674 -27.62024307 -91.032409668 26.82870483 -52.39416504 -69.6980896 49.58308411
		 -72.39819336 -37.73303223 -64.79589844 -72.39819336 -37.73303223 64.79589844 -80.15115356 0 -70.13995361
		 -80.15115356 0 70.13995361 -72.39819336 37.73303223 -64.79589844 -72.39819336 37.73303223 64.79589844
		 -52.39416504 69.6980896 -49.58308411 -52.39416504 69.6980896 49.58308411 -27.62024117 91.032409668 -26.82870865
		 -27.62024117 91.032409668 26.82870865 -0.067870617 -98.51763916 -1.3895333e-06 -0.067870617 98.51763916 0
		 -16.44522858 -89.63934326 -1.6757238e-06 -30.64017868 -68.63677979 -3.8072685e-07
		 -45.95224762 -37.15594482 9.8467908e-08 -52.91663361 0 -1.6621117e-07 -45.95224762 37.15594482 -3.6104908e-07
		 -30.64017868 68.63677979 1.6542323e-14 -16.44522858 89.63934326 3.7998422e-09;
	setAttr -s 60 ".ed[0:59]"  8 0 0 0 9 0 7 1 0 1 10 0 11 2 0 2 12 0 13 3 0
		 3 14 0 15 4 0 4 16 0 17 5 0 5 18 0 19 6 0 6 20 0 0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0
		 21 0 0 6 22 0 8 7 0 9 10 0 7 11 0 10 12 0 11 13 0 12 14 0 13 15 0 14 16 0 15 17 0
		 16 18 0 17 19 0 18 20 0 21 8 0 21 9 0 19 22 0 20 22 0 8 23 0 23 24 0 7 24 0 23 9 0
		 24 10 0 24 25 0 11 25 0 25 12 0 25 26 0 13 26 0 26 14 0 26 27 0 15 27 0 27 16 0 27 28 0
		 17 28 0 28 18 0 28 29 0 19 29 0 29 20 0 21 23 0 29 22 0;
	setAttr -s 32 -ch 120 ".fc[0:31]" -type "polyFaces" 
		f 4 22 40 -40 -39
		mu 0 4 0 3 2 1
		f 4 39 42 -24 -42
		mu 0 4 1 2 5 4
		f 4 24 44 -44 -41
		mu 0 4 3 7 6 2
		f 4 43 45 -26 -43
		mu 0 4 2 6 8 5
		f 4 26 47 -47 -45
		mu 0 4 7 10 9 6
		f 4 46 48 -28 -46
		mu 0 4 6 9 11 8
		f 4 28 50 -50 -48
		mu 0 4 10 13 12 9
		f 4 49 51 -30 -49
		mu 0 4 9 12 14 11
		f 4 30 53 -53 -51
		mu 0 4 13 16 15 12
		f 4 52 54 -32 -52
		mu 0 4 12 15 17 14
		f 4 32 56 -56 -54
		mu 0 4 16 19 18 15
		f 4 55 57 -34 -55
		mu 0 4 15 18 20 17
		f 3 -59 34 38
		mu 0 3 1 21 0
		f 3 -36 58 41
		mu 0 3 4 22 1
		f 3 36 -60 -57
		mu 0 3 19 23 18
		f 3 59 -38 -58
		mu 0 3 18 24 20
		f 4 0 14 -3 -23
		mu 0 4 25 26 27 28
		f 4 1 23 -4 -15
		mu 0 4 26 29 30 27
		f 4 2 15 -5 -25
		mu 0 4 28 27 31 32
		f 4 3 25 -6 -16
		mu 0 4 27 30 33 31
		f 4 4 16 -7 -27
		mu 0 4 32 31 34 35
		f 4 5 27 -8 -17
		mu 0 4 31 33 36 34
		f 4 6 17 -9 -29
		mu 0 4 35 34 37 38
		f 4 7 29 -10 -18
		mu 0 4 34 36 39 37
		f 4 8 18 -11 -31
		mu 0 4 38 37 40 41
		f 4 9 31 -12 -19
		mu 0 4 37 39 42 40
		f 4 10 19 -13 -33
		mu 0 4 41 40 43 44
		f 4 11 33 -14 -20
		mu 0 4 40 42 45 43
		f 3 -1 -35 20
		mu 0 3 26 25 46
		f 3 -2 -21 35
		mu 0 3 29 26 47
		f 3 12 21 -37
		mu 0 3 44 43 48
		f 3 13 37 -22
		mu 0 3 43 45 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Landform";
	rename -uid "43CF5087-4226-4EAB-1614-67B11499F549";
	setAttr ".t" -type "double3" -20 0 -340 ;
createNode mesh -n "LandformShape" -p "Landform";
	rename -uid "337BF94C-457A-4963-A701-88AB49B6589A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 50 0 0 50 0 43.8321 50 
		-45.252419 -43.8321 50 -45.252419 43.8321 50 45.252419 -43.8321 50 45.252419 0 50 
		0 0 50 0;
	setAttr -s 8 ".vt[0:7]"  -100 -50 100 100 -50 100 -100 50 100 100 50 100
		 -100 50 -100 100 50 -100 -100 -50 -100 100 -50 -100;
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
createNode transform -n "Stairs01";
	rename -uid "C133F47B-46BA-DFBE-3A8E-77BA0EA1602B";
	setAttr ".t" -type "double3" -140 0 0 ;
createNode mesh -n "StairsShape1" -p "Stairs01";
	rename -uid "518139C2-4053-E94E-B9A7-30A99EF35698";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  15 15 0 15 15 0 15 15 0 15 
		15 0 15 15 0 15 15 0 15 15 0 15 15 0;
	setAttr -s 8 ".vt[0:7]"  -15 -15 100 15 -15 100 -15 15 100 15 15 100
		 -15 15 -100 15 15 -100 -15 -15 -100 15 -15 -100;
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
createNode transform -n "fx01";
	rename -uid "93A42C9B-4550-D61D-56DB-04B81F319588";
	setAttr ".t" -type "double3" -80 0 0 ;
createNode mesh -n "fxShape1" -p "fx01";
	rename -uid "A9DC6CE6-4881-73D4-3650-42A25C2427B8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  50 -50 0 50 -50 0 50 -50 
		0 50 -50 0 50 -50 0 50 -50 0 50 -50 0 50 -50 0;
	setAttr -s 8 ".vt[0:7]"  -50 -50 150 50 -50 150 -50 50 150 50 50 150
		 -50 50 -150 50 50 -150 -50 -50 -150 50 -50 -150;
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
createNode transform -n "fx03";
	rename -uid "6BF9BDC7-4F3F-0EE4-404D-C8822CC6F100";
	setAttr ".t" -type "double3" 40 0 0 ;
createNode mesh -n "fxShape3" -p "fx03";
	rename -uid "83AA2B91-4EA8-E644-1759-038475BA3D2A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  150 -150 0 150 -150 0 150 
		-150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0;
	setAttr -s 8 ".vt[0:7]"  -150 -150 150 150 -150 150 -150 150 150 150 150 150
		 -150 150 -150 150 150 -150 -150 -150 -150 150 -150 -150;
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
createNode transform -n "fxCorner";
	rename -uid "466B8BCC-443C-825B-3938-C6972D6A0F7F";
	setAttr ".t" -type "double3" -920 0 0 ;
createNode mesh -n "fxCornerShape" -p "fxCorner";
	rename -uid "D309BE2A-4542-D3FE-87E7-CA9377D3A505";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  50 -50 0 50 -50 0 50 -50 
		0 50 -50 0 50 -50 0 50 -50 0;
createNode mesh -n "polySurfaceShape1" -p "fxCorner";
	rename -uid "83B1B01C-4AD9-5BF4-DEAD-78B8BC429B7B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -50 -50 150 50 -50 150 -50 50 150 50 50 150
		 -50 50 -150 50 50 -150 -50 -50 -150 50 -50 -150;
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
createNode transform -n "fx05";
	rename -uid "81982ED1-494D-D577-88D6-E89154C3610C";
	setAttr ".t" -type "double3" -600 0 0 ;
createNode mesh -n "fxShape5" -p "fx05";
	rename -uid "5CF12D18-437E-7BE0-6703-88B6E5147CC7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  250 -50 0 250 -50 0 250 -50 
		0 250 -50 0 250 -50 0 250 -50 0 250 -50 0 250 -50 0;
	setAttr -s 8 ".vt[0:7]"  -250 -50 150 250 -50 150 -250 50 150 250 50 150
		 -250 50 -150 250 50 -150 -250 -50 -150 250 -50 -150;
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
createNode transform -n "px01";
	rename -uid "F4E1700D-4AB6-8272-DCF0-0696C79E62A7";
	setAttr ".t" -type "double3" 360 0 0 ;
createNode mesh -n "pxShape1" -p "px01";
	rename -uid "F4E83455-4238-ACBF-C141-C2887D2CB745";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  49.999985 -25 0 49.999985 
		-25 0 49.999985 -25 0 49.999985 -25 0 49.999985 -25 0 49.999985 -25 0 49.999985 -25 
		0 49.999985 -25 0;
	setAttr -s 8 ".vt[0:7]"  -50 -25 150 50 -25 150 -50 25 150 50 25 150
		 -50 25 -150 50 25 -150 -50 -25 -150 50 -25 -150;
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
createNode transform -n "px03";
	rename -uid "B1C7BB1B-4FEE-AF89-919C-91BF51EC83D3";
	setAttr ".t" -type "double3" 480 0 0 ;
createNode mesh -n "pxShape3" -p "px03";
	rename -uid "5839C40A-42A2-45B9-1326-4CADE8B62FEC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  49.999985 -25 0 250 -25 0 
		49.999985 -25 0 250 -25 0 49.999985 -25 0 250 -25 0 49.999985 -25 0 250 -25 0;
	setAttr -s 8 ".vt[0:7]"  -50 -25 150 50 -25 150 -50 25 150 50 25 150
		 -50 25 -150 50 25 -150 -50 -25 -150 50 -25 -150;
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
createNode transform -n "px05";
	rename -uid "2CCB5BBE-4F5D-4656-2C12-42B7FEEB335F";
	setAttr ".t" -type "double3" 800 0 0 ;
createNode mesh -n "pxShape5" -p "px05";
	rename -uid "CDA14952-4979-F03D-2C09-F3A7C3C6A2F0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  49.999985 -25 0 450 -25 0 
		49.999985 -25 0 450 -25 0 49.999985 -25 0 450 -25 0 49.999985 -25 0 450 -25 0;
	setAttr -s 8 ".vt[0:7]"  -50 -25 150 50 -25 150 -50 25 150 50 25 150
		 -50 25 -150 50 25 -150 -50 -25 -150 50 -25 -150;
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
createNode transform -n "Plant";
	rename -uid "A21FC33D-4745-C467-C77B-8ABA72A02058";
	setAttr ".t" -type "double3" -240 0 163.97281676587716 ;
createNode mesh -n "PlantShape" -p "Plant";
	rename -uid "A18C1F95-4104-CD65-9C87-33A5CA73F034";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.125 0.625 0.125 0.625 0.625 0.875 0.125 0.125
		 0.125 0.375 0.625 0.125 0.1875 0.375 0.5625 0.625 0.5625 0.875 0.1875 0.625 0.1875
		 0.375 0.1875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  0 24.999998 0 0 24.999998 
		0 5.3029871 25 -5.3029871 -5.3029871 25 -5.3029871 5.3029871 25 5.3029871 -5.3029871 
		25 5.3029871 0 24.999998 0 0 24.999998 0 0 10.607571 0 0 10.607571 0 0 10.607571 
		0 0 10.607571 0 0 10.607571 0 0 10.607571 0 0 10.607571 0 0 10.607571 0;
	setAttr -s 16 ".vt[0:15]"  -25.77848053 -25 25.77848053 25.77848053 -25 25.77848053
		 -35.20377731 25 35.20377731 35.20377731 25 35.20377731 -35.20377731 25 -35.20377731
		 35.20377731 25 -35.20377731 -25.77848053 -25 -25.77848053 25.77848053 -25 -25.77848053
		 -29.24151611 0 29.24151611 29.24151611 0 29.24151611 29.24151611 0 -29.24151611 -29.24151611 0 -29.24151611
		 -40.88479233 12.5 -40.88479233 40.88479233 12.5 -40.88479233 40.88479233 12.5 40.88479233
		 -40.88479233 12.5 40.88479233;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 8 0 1 9 0 2 4 0
		 3 5 0 4 12 0 5 13 0 6 0 0 7 1 0 8 15 0 9 14 0 10 7 0 11 6 0 8 9 0 9 10 0 10 11 0
		 11 8 0 12 11 0 13 10 0 14 3 0 15 2 0 12 13 0 13 14 0 14 15 0 15 12 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 16 13 26 -13
		mu 0 4 14 15 24 25
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 24 21 18 -21
		mu 0 4 21 22 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -22 25 -14
		mu 0 4 15 17 23 24
		f 4 19 12 27 20
		mu 0 4 18 14 25 20
		f 4 0 5 -17 -5
		mu 0 4 0 1 15 14
		f 4 -12 -15 -18 -6
		mu 0 4 1 10 17 15
		f 4 -19 14 -4 -16
		mu 0 4 19 16 7 6
		f 4 10 4 -20 15
		mu 0 4 12 0 14 18
		f 4 2 9 -25 -9
		mu 0 4 4 5 22 21
		f 4 -26 -10 -8 -23
		mu 0 4 24 23 11 3
		f 4 -27 22 -2 -24
		mu 0 4 25 24 3 2
		f 4 -28 23 6 8
		mu 0 4 20 25 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Folliage";
	rename -uid "47A141D4-4258-3B38-1623-9E8606112B4D";
	setAttr ".t" -type "double3" -180 0 -164.06736696574569 ;
createNode mesh -n "FolliageShape" -p "Folliage";
	rename -uid "1B939C90-47B4-2220-9603-E78130DEE810";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.125 0.625 0.125 0.625 0.625 0.875 0.125 0.125
		 0.125 0.375 0.625 0.125 0.1875 0.375 0.5625 0.625 0.5625 0.875 0.1875 0.625 0.1875
		 0.375 0.1875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  8.9144793 24.999998 -8.9144793 
		-8.9144793 24.999998 -8.9144793 17.730694 55.445435 -17.730694 -17.730694 55.445435 
		-17.730694 17.730694 55.445435 17.730694 -17.730694 55.445435 17.730694 8.9144793 
		24.999998 8.9144793 -8.9144793 24.999998 8.9144793 13.336368 10.607571 -13.336368 
		-13.336368 10.607571 -13.336368 -13.336368 10.607571 13.336368 13.336368 10.607571 
		13.336368 6.3958225 51.057587 6.3958235 -6.3958225 51.057587 6.3958235 -6.3958225 
		51.057587 -6.3958235 6.3958225 51.057587 -6.3958235;
	setAttr -s 16 ".vt[0:15]"  -25.77848053 -25 25.77848053 25.77848053 -25 25.77848053
		 -35.20377731 25 35.20377731 35.20377731 25 35.20377731 -35.20377731 25 -35.20377731
		 35.20377731 25 -35.20377731 -25.77848053 -25 -25.77848053 25.77848053 -25 -25.77848053
		 -29.24151611 0 29.24151611 29.24151611 0 29.24151611 29.24151611 0 -29.24151611 -29.24151611 0 -29.24151611
		 -40.88479233 12.5 -40.88479233 40.88479233 12.5 -40.88479233 40.88479233 12.5 40.88479233
		 -40.88479233 12.5 40.88479233;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 8 0 1 9 0 2 4 0
		 3 5 0 4 12 0 5 13 0 6 0 0 7 1 0 8 15 0 9 14 0 10 7 0 11 6 0 8 9 0 9 10 0 10 11 0
		 11 8 0 12 11 0 13 10 0 14 3 0 15 2 0 12 13 0 13 14 0 14 15 0 15 12 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 16 13 26 -13
		mu 0 4 14 15 24 25
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 24 21 18 -21
		mu 0 4 21 22 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -22 25 -14
		mu 0 4 15 17 23 24
		f 4 19 12 27 20
		mu 0 4 18 14 25 20
		f 4 0 5 -17 -5
		mu 0 4 0 1 15 14
		f 4 -12 -15 -18 -6
		mu 0 4 1 10 17 15
		f 4 -19 14 -4 -16
		mu 0 4 19 16 7 6
		f 4 10 4 -20 15
		mu 0 4 12 0 14 18
		f 4 2 9 -25 -9
		mu 0 4 4 5 22 21
		f 4 -26 -10 -8 -23
		mu 0 4 24 23 11 3
		f 4 -27 22 -2 -24
		mu 0 4 25 24 3 2
		f 4 -28 23 6 8
		mu 0 4 20 25 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "TheTree";
	rename -uid "8D240980-411A-51FB-5FD7-D79B9C0A90FD";
	setAttr ".t" -type "double3" 540 0 37.930797675998065 ;
createNode mesh -n "TheTreeShape" -p "TheTree";
	rename -uid "7A7B5B93-445D-5925-AC71-CDB754D5531A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:735]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[16:31]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:15]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:15]" "vtx[32]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:31]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[16:31]" "vtx[33]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[16:31]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[32:47]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[16:31]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 909 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64435619 0.096455812 0.61048549
		 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578 0.011893794
		 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381 0.21604425
		 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425 0.30060619
		 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125 0.390625
		 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875 0.3125
		 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125 0.5625
		 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.68843985
		 0.390625 0.68843985 0.40625 0.68843985 0.421875 0.68843985 0.4375 0.68843985 0.453125
		 0.68843985 0.46875 0.68843985 0.484375 0.68843985 0.5 0.68843985 0.515625 0.68843985
		 0.53125 0.68843985 0.546875 0.68843985 0.5625 0.68843985 0.578125 0.68843985 0.59375
		 0.68843985 0.609375 0.68843985 0.625 0.68843985 0.64435619 0.78395581 0.61048549
		 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578 0.69939381 0.38951463
		 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381 0.90354425 0.38951454
		 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619 0.61048543 0.95423543
		 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998 0.625 0.38768798
		 0.375 0.38768798 0.390625 0.38768798 0.40625003 0.38768798 0.421875 0.38768798 0.4375
		 0.38768798 0.453125 0.38768798 0.46875 0.38768798 0.48437503 0.38768798 0.5 0.38768798
		 0.515625 0.38768798 0.53125 0.38768798 0.546875 0.38768798 0.5625 0.38768798 0.578125
		 0.38768798 0.59375 0.38768798 0.609375 0.38768798 0.625 0.56813908 0.375 0.56813908
		 0.609375 0.56813908 0.59375 0.56813908 0.578125 0.56813908 0.5625 0.56813908 0.546875
		 0.56813908 0.53125 0.56813908 0.515625 0.56813908 0.5 0.56813908 0.484375 0.56813908
		 0.46875 0.56813908 0.453125 0.56813908 0.4375 0.56813908 0.421875 0.56813908 0.40625
		 0.56813908 0.390625 0.56813908 0.625 0.64031953 0.375 0.64031953 0.609375 0.64031953
		 0.59375 0.64031953 0.578125 0.64031953 0.5625 0.64031953 0.546875 0.64031953 0.53125
		 0.64031953 0.515625 0.64031953 0.5 0.64031953 0.484375 0.64031953 0.46875 0.64031953
		 0.453125 0.64031953 0.4375 0.64031953 0.421875 0.64031953 0.40625 0.64031953 0.390625
		 0.64031953 0 0.125 0.125 0.125 0.125 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125
		 0.375 0.25 0.5 0.125 0.5 0.25 0.625 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875 0.125
		 0.875 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625
		 0.375 0.75 0.375 0.875 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625
		 0.5 0.75 0.5 0.875 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625 0.375 0.625 0.5 0.625
		 0.625 0.625 0.75 0.625 0.875 0.625 1 0.625 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75
		 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.125 0.875 0 0.875 0.25 0.875 0.375
		 0.875 0.5 0.875 0.625 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125
		 0 0.4375 0 0.5625 0 0.6875 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375
		 1 0.5625 1 0.6875 1 0.8125 1 0.9375 1 0 0.125 0.125 0.125 0.125 0.25 0 0.25 0.25
		 0.125 0.25 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25 0.625 0.125 0.625 0.25
		 0.75 0.125 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375 0.25
		 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375 1 0.375 0.125 0.5
		 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0.125 0.625 0
		 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875 0.625 1 0.625
		 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75;
	setAttr ".uvst[0].uvsp[250:499]" 0.875 0.75 1 0.75 0.125 0.875 0 0.875 0.25
		 0.875 0.375 0.875 0.5 0.875 0.625 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875
		 0 0.3125 0 0.4375 0 0.5625 0 0.6875 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125
		 1 0.4375 1 0.5625 1 0.6875 1 0.8125 1 0.9375 1 0 0.125 0.125 0.125 0.125 0.25 0 0.25
		 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25 0.625 0.125 0.625
		 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375
		 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375 1 0.375 0.125
		 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0.125 0.625
		 0 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875 0.625 1 0.625
		 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1
		 0.75 0.125 0.875 0 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875 0.75 0.875
		 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875 0 0.8125
		 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125 1 0.9375
		 1 0 0.125 0.125 0.125 0.125 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25
		 0.5 0.125 0.5 0.25 0.625 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875
		 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375
		 0.75 0.375 0.875 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5
		 0.75 0.5 0.875 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625
		 0.625 0.75 0.625 0.875 0.625 1 0.625 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75 0.5 0.75
		 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.125 0.875 0 0.875 0.25 0.875 0.375 0.875
		 0.5 0.875 0.625 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375
		 0 0.5625 0 0.6875 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625
		 1 0.6875 1 0.8125 1 0.9375 1 0 0.125 0.125 0.125 0.125 0.25 0 0.25 0.25 0.125 0.25
		 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25 0.625 0.125 0.625 0.25 0.75 0.125
		 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375 0.25 0.375 0.375
		 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625
		 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875 0.625 1 0.625 0.125 0.75 0 0.75
		 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.125 0.875
		 0 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875 0.75 0.875 0.875 0.875 1 0.875
		 0.0625 0 0.1875 0;
	setAttr ".uvst[0].uvsp[500:749]" 0.3125 0 0.4375 0 0.5625 0 0.6875 0 0.8125
		 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125 1 0.9375
		 1 0 0.125 0.125 0.125 0.125 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25
		 0.5 0.125 0.5 0.25 0.625 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875
		 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375
		 0.75 0.375 0.875 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5
		 0.75 0.5 0.875 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625
		 0.625 0.75 0.625 0.875 0.625 1 0.625 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75 0.5 0.75
		 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.125 0.875 0 0.875 0.25 0.875 0.375 0.875
		 0.5 0.875 0.625 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375
		 0 0.5625 0 0.6875 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625
		 1 0.6875 1 0.8125 1 0.9375 1 0 0.125 0.125 0.125 0.125 0.25 0 0.25 0.25 0.125 0.25
		 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25 0.625 0.125 0.625 0.25 0.75 0.125
		 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375 0.25 0.375 0.375
		 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625
		 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875 0.625 1 0.625 0.125 0.75 0 0.75
		 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.125 0.875
		 0 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875 0.75 0.875 0.875 0.875 1 0.875
		 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875 0 0.8125 0 0.9375 0 0.0625 1
		 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125 1 0.9375 1 0 0.125 0.125 0.125
		 0.125 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25
		 0.625 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1 0.25
		 0.125 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875
		 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875
		 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625
		 0.875 0.625 1 0.625 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75
		 0.75 0.875 0.75 1 0.75 0.125 0.875 0 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625
		 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0
		 0.6875 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1
		 0.8125 1;
	setAttr ".uvst[0].uvsp[750:908]" 0.9375 1 0 0.125 0.125 0.125 0.125 0.25 0
		 0.25 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25 0.625 0.125 0.625
		 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375
		 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375 1 0.375 0.125
		 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0.125 0.625
		 0 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875 0.625 1 0.625
		 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1
		 0.75 0.125 0.875 0 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875 0.75 0.875
		 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875 0 0.8125
		 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125 1 0.9375
		 1 0 0.125 0.125 0.125 0.125 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25
		 0.5 0.125 0.5 0.25 0.625 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875
		 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375
		 0.75 0.375 0.875 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5
		 0.75 0.5 0.875 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625
		 0.625 0.75 0.625 0.875 0.625 1 0.625 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75 0.5 0.75
		 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.125 0.875 0 0.875 0.25 0.875 0.375 0.875
		 0.5 0.875 0.625 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375
		 0 0.5625 0 0.6875 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625
		 1 0.6875 1 0.8125 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 662 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -381.8136 0 -50.58194 -386.08069 0 
		-56.968147 -392.46692 0 -61.235283 -399.99994 0 -62.733704 -407.53302 0 -61.235291 
		-413.91922 0 -56.96817 -418.18634 0 -50.581959 -419.68475 0 -43.048908 -418.18634 
		0 -35.515858 -413.91922 0 -29.129646 -407.53302 0 -24.862518 -399.99997 0 -23.364101 
		-392.46692 0 -24.862518 -386.08069 0 -29.129642 -381.8136 0 -35.515854 -380.31519 
		0 -43.048904 -359.02734 134.93262 -44.65197 -359.93539 134.93262 -46.010986 -361.2944 
		134.93262 -46.919048 -362.89746 134.93262 -47.237923 -364.50055 134.93262 -46.919056 
		-365.85956 134.93262 -46.01099 -366.76764 134.93262 -44.651974 -367.08649 134.93262 
		-43.048901 -366.76764 134.93262 -41.445831 -365.85956 134.93262 -40.086815 -364.50055 
		134.93262 -39.178749 -362.89746 134.93262 -38.859879 -361.2944 134.93262 -39.178749 
		-359.93539 134.93262 -40.086811 -359.02734 134.93262 -41.445831 -358.70847 134.93262 
		-43.048901 -389.20535 0 -43.048901 -362.89746 134.93262 -43.048901 -382.81049 13.950936 
		-47.04493 -385.07404 13.950936 -50.432602 -388.46173 13.950936 -52.696178 -392.45776 
		13.950936 -53.491039 -396.4538 13.950936 -52.696182 -399.84149 13.950936 -50.432613 
		-402.10504 13.950936 -47.044937 -402.8999 13.950936 -43.048904 -402.10504 13.950936 
		-39.052872 -399.84149 13.950936 -35.665195 -396.4538 13.950936 -33.401623 -392.45776 
		13.950936 -32.606766 -388.46173 13.950936 -33.401623 -385.07407 13.950936 -35.665192 
		-382.81049 13.950936 -39.052868 -382.01562 13.950936 -43.048901 -377.3718 30.144253 
		-45.837193 -376.8172 30.144253 -43.048901 -377.37183 30.144253 -40.260597 -378.95123 
		30.144253 -37.896793 -381.31506 30.144253 -36.317348 -384.10336 30.144253 -35.762722 
		-386.89166 30.144253 -36.317348 -389.25546 30.144253 -37.896793 -390.8349 30.144253 
		-40.260601 -391.38953 30.144253 -43.048904 -390.8349 30.144253 -45.8372 -389.25546 
		30.144253 -48.201008 -386.89166 30.144253 -49.780453 -384.10333 30.144253 -50.335083 
		-381.31506 30.144253 -49.780449 -378.95123 30.144253 -48.201004 -385.36346 58.28841 
		-45.713314 -384.83347 58.28841 -43.048901 -385.36346 58.28841 -40.384483 -386.87274 
		58.28841 -38.125702 -389.1315 58.28841 -36.616436 -391.7959 58.28841 -36.086449 -394.46033 
		58.28841 -36.616436 -396.71912 58.28841 -38.125706 -398.22839 58.28841 -40.384487 
		-398.75836 58.28841 -43.048901 -398.22839 58.28841 -45.713318 -396.71912 58.28841 
		-47.972099 -394.46033 58.28841 -49.481369 -391.7959 58.28841 -50.011349 -389.1315 
		58.28841 -49.481361 -386.87274 58.28841 -47.972092 -328.24255 134.44481 -50.351402 
		-335.54504 134.44481 -53.37619 -342.84753 134.44481 -50.351402 -345.87234 134.44481 
		-43.048901 -342.84753 134.44481 -35.746399 -335.54504 134.44481 -32.721603 -328.24255 
		134.44481 -35.746399 -325.21777 134.44481 -43.048901 -322.05179 138.24149 -56.542164 
		-335.54504 138.24149 -62.131256 -349.03833 138.24149 -56.542164 -354.62738 138.24149 
		-43.048901 -349.03833 138.24149 -29.555643 -335.54504 138.24149 -23.966553 -322.05179 
		138.24149 -29.555641 -316.46271 138.24149 -43.048901 -317.91528 143.92363 -60.678696 
		-335.54504 143.92363 -67.981194 -353.17484 143.92363 -60.678696 -360.47736 143.92363 
		-43.048901 -353.17484 143.92363 -25.419109 -335.54504 143.92363 -18.116611 -317.91528 
		143.92363 -25.419109 -310.61276 143.92363 -43.048901 -316.46271 150.62617 -62.131256 
		-335.54504 150.62617 -70.0354 -354.62738 150.62617 -62.131256 -362.53156 150.62617 
		-43.048901 -354.62738 150.62617 -23.966553 -335.54504 150.62617 -16.062382 -316.46271 
		150.62617 -23.966549 -308.55853 150.62617 -43.048901 -317.91528 157.3287 -60.678696 
		-335.54504 157.3287 -67.981194 -353.17484 157.3287 -60.678696 -360.47736 157.3287 
		-43.048901 -353.17484 157.3287 -25.419109 -335.54504 157.3287 -18.116611 -317.91528 
		157.3287 -25.419109 -310.61276 157.3287 -43.048901 -322.05179 163.01085 -56.542164 
		-335.54504 163.01085 -62.131256 -349.03833 163.01085 -56.542164 -354.62738 163.01085 
		-43.048901 -349.03833 163.01085 -29.555643 -335.54504 163.01085 -23.966553 -322.05179 
		163.01085 -29.555641 -316.46271 163.01085 -43.048901 -328.24255 166.80753 -50.351402 
		-335.54504 166.80753 -53.37619 -342.84753 166.80753 -50.351402 -345.87234 166.80753 
		-43.048901 -342.84753 166.80753 -35.746399 -335.54504 166.80753 -32.721603 -328.24255 
		166.80753 -35.746399 -325.21777 166.80753 -43.048901 -335.54504 133.1116 -43.048901 
		-335.54504 168.14075 -43.048901 -371.33295 120.54688 -48.502251 -376.78632 120.54688 
		-50.761108 -382.23962 120.54688 -48.502251 -384.49847 120.54688 -43.048901 -382.23962 
		120.54688 -37.595547 -376.78632 120.54688 -35.336693 -371.33295 120.54688 -37.595547 
		-369.0741 120.54688 -43.048901 -366.70981 123.38216 -53.125381 -376.78632 123.38216 
		-57.299198 -386.86279 123.38216 -53.125381 -391.03659 123.38216 -43.048901 -386.86279 
		123.38216 -32.97242 -376.78632 123.38216 -28.798607 -366.70981 123.38216 -32.97242 
		-362.53601 123.38216 -43.048901 -363.62073 127.62545 -56.214458 -376.78632 127.62545 
		-61.667809 -389.95184 127.62545 -56.214458 -395.40521 127.62545 -43.048901 -389.95184 
		127.62545 -29.883347 -376.78632 127.62545 -24.429996 -363.62073 127.62545 -29.883347 
		-358.16736 127.62545 -43.048901 -362.53601 132.63077 -57.299198 -376.78632 132.63077 
		-63.201862;
	setAttr ".pt[166:331]" -391.03659 132.63077 -57.299198 -396.93927 132.63077 
		-43.048901 -391.03659 132.63077 -28.798607 -376.78632 132.63077 -22.895943 -362.53601 
		132.63077 -28.798607 -356.63333 132.63077 -43.048901 -363.62073 137.63608 -56.214458 
		-376.78632 137.63608 -61.667809 -389.95184 137.63608 -56.214458 -395.40521 137.63608 
		-43.048901 -389.95184 137.63608 -29.883347 -376.78632 137.63608 -24.429996 -363.62073 
		137.63608 -29.883347 -358.16736 137.63608 -43.048901 -366.70981 141.87936 -53.125381 
		-376.78632 141.87936 -57.299198 -386.86279 141.87936 -53.125381 -391.03659 141.87936 
		-43.048901 -386.86279 141.87936 -32.97242 -376.78632 141.87936 -28.798607 -366.70981 
		141.87936 -32.97242 -362.53601 141.87936 -43.048901 -371.33295 144.71465 -48.502251 
		-376.78632 144.71465 -50.761108 -382.23962 144.71465 -48.502251 -384.49847 144.71465 
		-43.048901 -382.23962 144.71465 -37.595547 -376.78632 144.71465 -35.336693 -371.33295 
		144.71465 -37.595547 -369.0741 144.71465 -43.048901 -376.78632 119.55125 -43.048901 
		-376.78632 145.71027 -43.048901 -316.69586 74.497574 -48.502251 -322.1492 74.497574 
		-50.761108 -327.60254 74.497574 -48.502251 -329.86139 74.497574 -43.048901 -327.60254 
		74.497574 -37.595547 -322.1492 74.497574 -35.336693 -316.69586 74.497574 -37.595547 
		-314.43701 74.497574 -43.048901 -312.07272 77.332855 -53.125381 -322.1492 77.332855 
		-57.299198 -332.22568 77.332855 -53.125381 -336.39951 77.332855 -43.048901 -332.22568 
		77.332855 -32.97242 -322.1492 77.332855 -28.798607 -312.07272 77.332855 -32.97242 
		-307.89893 77.332855 -43.048901 -308.98364 81.576149 -56.214458 -322.1492 81.576149 
		-61.667809 -335.31476 81.576149 -56.214458 -340.76813 81.576149 -43.048901 -335.31476 
		81.576149 -29.883347 -322.1492 81.576149 -24.429996 -308.98364 81.576149 -29.883347 
		-303.5303 81.576149 -43.048901 -307.89893 86.581467 -57.299198 -322.1492 86.581467 
		-63.201862 -336.39951 86.581467 -57.299198 -342.30215 86.581467 -43.048901 -336.39951 
		86.581467 -28.798607 -322.1492 86.581467 -22.895943 -307.89893 86.581467 -28.798607 
		-301.99625 86.581467 -43.048901 -308.98364 91.586777 -56.214458 -322.1492 91.586777 
		-61.667809 -335.31476 91.586777 -56.214458 -340.76813 91.586777 -43.048901 -335.31476 
		91.586777 -29.883347 -322.1492 91.586777 -24.429996 -308.98364 91.586777 -29.883347 
		-303.5303 91.586777 -43.048901 -312.07272 95.83007 -53.125381 -322.1492 95.83007 
		-57.299198 -332.22568 95.83007 -53.125381 -336.39951 95.83007 -43.048901 -332.22568 
		95.83007 -32.97242 -322.1492 95.83007 -28.798607 -312.07272 95.83007 -32.97242 -307.89893 
		95.83007 -43.048901 -316.69586 98.665352 -48.502251 -322.1492 98.665352 -50.761108 
		-327.60254 98.665352 -48.502251 -329.86139 98.665352 -43.048901 -327.60254 98.665352 
		-37.595547 -322.1492 98.665352 -35.336693 -316.69586 98.665352 -37.595547 -314.43701 
		98.665352 -43.048901 -322.1492 73.501953 -43.048901 -322.1492 99.66098 -43.048901 
		-344.09406 49.727505 -51.710201 -351.89777 49.727505 -55.297821 -359.70148 49.727505 
		-51.710201 -362.9339 49.727505 -43.048901 -359.70148 49.727505 -34.3876 -351.89777 
		49.727505 -30.799973 -344.09406 49.727505 -34.3876 -340.86163 49.727505 -43.048901 
		-337.47836 54.230648 -59.052895 -351.89777 54.230648 -65.681969 -366.31717 54.230648 
		-59.052895 -372.28986 54.230648 -43.048901 -366.31717 54.230648 -27.04491 -351.89777 
		54.230648 -20.415838 -337.47836 54.230648 -27.044909 -331.50565 54.230648 -43.048901 
		-333.05792 60.970078 -63.959129 -351.89777 60.970078 -72.620422 -370.73761 60.970078 
		-63.959129 -378.54135 60.970078 -43.048901 -370.73761 60.970078 -22.138678 -351.89777 
		60.970078 -13.477381 -333.05792 60.970078 -22.138678 -325.25418 60.970078 -43.048901 
		-331.50568 68.919777 -65.681969 -351.89777 68.919777 -75.05687 -372.28986 68.919777 
		-65.681969 -380.73657 68.919777 -43.048901 -372.28986 68.919777 -20.415838 -351.89777 
		68.919777 -11.040915 -331.50565 68.919777 -20.415834 -323.05896 68.919777 -43.048901 
		-333.05792 76.869469 -63.959129 -351.89777 76.869469 -72.620422 -370.73761 76.869469 
		-63.959129 -378.54135 76.869469 -43.048901 -370.73761 76.869469 -22.138678 -351.89777 
		76.869469 -13.477381 -333.05792 76.869469 -22.138678 -325.25418 76.869469 -43.048901 
		-337.47836 83.608902 -59.052895 -351.89777 83.608902 -65.681969 -366.31717 83.608902 
		-59.052895 -372.28986 83.608902 -43.048901 -366.31717 83.608902 -27.04491 -351.89777 
		83.608902 -20.415838 -337.47836 83.608902 -27.044909 -331.50565 83.608902 -43.048901 
		-344.09406 88.112053 -51.710201 -351.89777 88.112053 -55.297821 -359.70148 88.112053 
		-51.710201 -362.9339 88.112053 -43.048901 -359.70148 88.112053 -34.3876 -351.89777 
		88.112053 -30.799973 -344.09406 88.112053 -34.3876 -340.86163 88.112053 -43.048901 
		-351.89777 48.14621 -43.048901 -351.89777 89.693344 -43.048901 -416.89313 41.265167 
		-51.710201 -424.69684 41.265167 -55.297821 -432.50055 41.265167 -51.710201 -435.73297 
		41.265167 -43.048901 -432.50055 41.265167 -34.3876 -424.69684 41.265167 -30.799973 
		-416.89313 41.265167 -34.3876 -413.66071 41.265167 -43.048901 -410.27744 45.768307 
		-59.052895 -424.69684 45.768307 -65.681969 -439.11624 45.768307 -59.052895 -445.08896 
		45.768307 -43.048901 -439.11624 45.768307 -27.04491 -424.69684 45.768307 -20.415838 
		-410.27744 45.768307 -27.044909 -404.30472 45.768307 -43.048901 -405.85699 52.507736 
		-63.959129 -424.69684 52.507736 -72.620422;
	setAttr ".pt[332:497]" -443.53668 52.507736 -63.959129 -451.34042 52.507736 
		-43.048901 -443.53668 52.507736 -22.138678 -424.69684 52.507736 -13.477381 -405.85699 
		52.507736 -22.138678 -398.05325 52.507736 -43.048901 -404.30472 60.457436 -65.681969 
		-424.69684 60.457436 -75.05687 -445.08896 60.457436 -65.681969 -453.53564 60.457436 
		-43.048901 -445.08896 60.457436 -20.415838 -424.69684 60.457436 -11.040915 -404.30472 
		60.457436 -20.415834 -395.85803 60.457436 -43.048901 -405.85699 68.407135 -63.959129 
		-424.69684 68.407135 -72.620422 -443.53668 68.407135 -63.959129 -451.34042 68.407135 
		-43.048901 -443.53668 68.407135 -22.138678 -424.69684 68.407135 -13.477381 -405.85699 
		68.407135 -22.138678 -398.05325 68.407135 -43.048901 -410.27744 75.146561 -59.052895 
		-424.69684 75.146561 -65.681969 -439.11624 75.146561 -59.052895 -445.08896 75.146561 
		-43.048901 -439.11624 75.146561 -27.04491 -424.69684 75.146561 -20.415838 -410.27744 
		75.146561 -27.044909 -404.30472 75.146561 -43.048901 -416.89313 79.649704 -51.710201 
		-424.69684 79.649704 -55.297821 -432.50055 79.649704 -51.710201 -435.73297 79.649704 
		-43.048901 -432.50055 79.649704 -34.3876 -424.69684 79.649704 -30.799973 -416.89313 
		79.649704 -34.3876 -413.66071 79.649704 -43.048901 -424.69684 39.683872 -43.048901 
		-424.69684 81.230995 -43.048901 -443.90912 75.965248 -48.198101 -448.54849 75.965248 
		-50.330967 -453.18787 75.965248 -48.198101 -455.10956 75.965248 -43.048901 -453.18787 
		75.965248 -37.8997 -448.54849 75.965248 -35.766834 -443.90912 75.965248 -37.8997 
		-441.98743 75.965248 -43.048901 -439.97607 78.642395 -52.563377 -448.54849 78.642395 
		-56.504402 -457.12091 78.642395 -52.563377 -460.67172 78.642395 -43.048901 -457.12091 
		78.642395 -33.534424 -448.54849 78.642395 -29.593403 -439.97607 78.642395 -33.534424 
		-436.42523 78.642395 -43.048901 -437.34808 82.649025 -55.480156 -448.54849 82.649025 
		-60.62936 -459.7489 82.649025 -55.480156 -464.38828 82.649025 -43.048901 -459.7489 
		82.649025 -30.617638 -448.54849 82.649025 -25.468445 -437.34808 82.649025 -30.617638 
		-432.70871 82.649025 -43.048901 -436.42523 87.375175 -56.504402 -448.54849 87.375175 
		-62.07785 -460.67172 87.375175 -56.504402 -465.69336 87.375175 -43.048901 -460.67172 
		87.375175 -29.593403 -448.54849 87.375175 -24.019951 -436.42523 87.375175 -29.593401 
		-431.40363 87.375175 -43.048901 -437.34808 92.101326 -55.480156 -448.54849 92.101326 
		-60.62936 -459.7489 92.101326 -55.480156 -464.38828 92.101326 -43.048901 -459.7489 
		92.101326 -30.617638 -448.54849 92.101326 -25.468445 -437.34808 92.101326 -30.617638 
		-432.70871 92.101326 -43.048901 -439.97607 96.107948 -52.563377 -448.54849 96.107948 
		-56.504402 -457.12091 96.107948 -52.563377 -460.67172 96.107948 -43.048901 -457.12091 
		96.107948 -33.534424 -448.54849 96.107948 -29.593403 -439.97607 96.107948 -33.534424 
		-436.42523 96.107948 -43.048901 -443.90912 98.785103 -48.198101 -448.54849 98.785103 
		-50.330967 -453.18787 98.785103 -48.198101 -455.10956 98.785103 -43.048901 -453.18787 
		98.785103 -37.8997 -448.54849 98.785103 -35.766834 -443.90912 98.785103 -37.8997 
		-441.98743 98.785103 -43.048901 -448.54849 75.025162 -43.048901 -448.54849 99.725189 
		-43.048901 -381.99573 75.965248 29.255867 -386.63507 75.965248 27.123001 -391.27448 
		75.965248 29.255867 -393.19617 75.965248 34.405067 -391.27448 75.965248 39.554268 
		-386.63507 75.965248 41.687126 -381.99573 75.965248 39.554268 -380.07404 75.965248 
		34.405067 -378.06268 78.642395 24.890591 -386.63507 78.642395 20.949566 -395.20752 
		78.642395 24.890591 -398.75833 78.642395 34.405067 -395.20752 78.642395 43.919548 
		-386.63507 78.642395 47.860565 -378.06268 78.642395 43.919548 -374.51184 78.642395 
		34.405067 -375.43469 82.649025 21.973808 -386.63507 82.649025 16.824608 -397.83551 
		82.649025 21.973808 -402.47485 82.649025 34.405067 -397.83551 82.649025 46.836327 
		-386.63507 82.649025 51.985527 -375.43469 82.649025 46.836327 -370.79532 82.649025 
		34.405067 -374.51184 87.375175 20.949566 -386.63507 87.375175 15.376118 -398.75833 
		87.375175 20.949566 -403.77997 87.375175 34.405067 -398.75833 87.375175 47.860565 
		-386.63507 87.375175 53.434013 -374.51184 87.375175 47.860565 -369.49023 87.375175 
		34.405067 -375.43469 92.101326 21.973808 -386.63507 92.101326 16.824608 -397.83551 
		92.101326 21.973808 -402.47485 92.101326 34.405067 -397.83551 92.101326 46.836327 
		-386.63507 92.101326 51.985527 -375.43469 92.101326 46.836327 -370.79532 92.101326 
		34.405067 -378.06268 96.107948 24.890591 -386.63507 96.107948 20.949566 -395.20752 
		96.107948 24.890591 -398.75833 96.107948 34.405067 -395.20752 96.107948 43.919548 
		-386.63507 96.107948 47.860565 -378.06268 96.107948 43.919548 -374.51184 96.107948 
		34.405067 -381.99573 98.785103 29.255867 -386.63507 98.785103 27.123001 -391.27448 
		98.785103 29.255867 -393.19617 98.785103 34.405067 -391.27448 98.785103 39.554268 
		-386.63507 98.785103 41.687126 -381.99573 98.785103 39.554268 -380.07404 98.785103 
		34.405067 -386.63507 75.025162 34.405067 -386.63507 99.725189 34.405067 -340.27307 
		107.80096 -115.41584 -344.91241 107.80096 -117.54871 -349.55176 107.80096 -115.41584 
		-351.47345 107.80096 -110.26664 -349.55176 107.80096 -105.11745 -344.91241 107.80096 
		-102.98457 -340.27307 107.80096 -105.11745 -338.35138 107.80096 -110.26664 -336.33997 
		110.4781 -119.78112 -344.91241 110.4781 -123.72215;
	setAttr ".pt[498:661]" -353.48486 110.4781 -119.78112 -357.03564 110.4781 
		-110.26664 -353.48486 110.4781 -100.75217 -344.91241 110.4781 -96.811142 -336.33997 
		110.4781 -100.7522 -332.78918 110.4781 -110.26664 -333.71198 114.48473 -122.6979 
		-344.91241 114.48473 -127.8471 -356.11285 114.48473 -122.6979 -360.7522 114.48473 
		-110.26664 -356.11285 114.48473 -97.835388 -344.91241 114.48473 -92.686188 -333.71198 
		114.48473 -97.835388 -329.07263 114.48473 -110.26664 -332.78918 119.21088 -123.72215 
		-344.91241 119.21088 -129.29559 -357.03564 119.21088 -123.72215 -362.05725 119.21088 
		-110.26664 -357.03564 119.21088 -96.811142 -344.91241 119.21088 -91.237694 -332.78918 
		119.21088 -96.811142 -327.76758 119.21088 -110.26664 -333.71198 123.93703 -122.6979 
		-344.91241 123.93703 -127.8471 -356.11285 123.93703 -122.6979 -360.7522 123.93703 
		-110.26664 -356.11285 123.93703 -97.835388 -344.91241 123.93703 -92.686188 -333.71198 
		123.93703 -97.835388 -329.07263 123.93703 -110.26664 -336.33997 127.94366 -119.78112 
		-344.91241 127.94366 -123.72215 -353.48486 127.94366 -119.78112 -357.03564 127.94366 
		-110.26664 -353.48486 127.94366 -100.75217 -344.91241 127.94366 -96.811142 -336.33997 
		127.94366 -100.7522 -332.78918 127.94366 -110.26664 -340.27307 130.6208 -115.41584 
		-344.91241 130.6208 -117.54871 -349.55176 130.6208 -115.41584 -351.47345 130.6208 
		-110.26664 -349.55176 130.6208 -105.11745 -344.91241 130.6208 -102.98457 -340.27307 
		130.6208 -105.11745 -338.35138 130.6208 -110.26664 -344.91241 106.86086 -110.26664 
		-344.91241 131.5609 -110.26664 -369.55759 88.09671 -96.524422 -377.0322 88.09671 
		-99.960739 -384.50677 88.09671 -96.524422 -387.60287 88.09671 -88.228409 -384.50677 
		88.09671 -79.932404 -377.0322 88.09671 -76.496086 -369.55759 88.09671 -79.932404 
		-366.46152 88.09671 -88.228409 -363.22095 92.409927 -103.55743 -377.0322 92.409927 
		-109.90693 -390.84344 92.409927 -103.55743 -396.56427 92.409927 -88.228409 -390.84344 
		92.409927 -72.899391 -377.0322 92.409927 -66.549919 -363.22095 92.409927 -72.899384 
		-357.50012 92.409927 -88.228409 -358.98691 98.86512 -108.25674 -377.0322 98.86512 
		-116.55275 -395.07748 98.86512 -108.25674 -402.55206 98.86512 -88.228409 -395.07748 
		98.86512 -68.200096 -377.0322 98.86512 -59.904091 -358.98691 98.86512 -68.200096 
		-351.5123 98.86512 -88.228409 -357.50012 106.47954 -109.90693 -377.0322 106.47954 
		-118.88646 -396.56427 106.47954 -109.90693 -404.65472 106.47954 -88.228409 -396.56427 
		106.47954 -66.549919 -377.0322 106.47954 -57.570374 -357.50012 106.47954 -66.549911 
		-349.40967 106.47954 -88.228409 -358.98691 114.09396 -108.25674 -377.0322 114.09396 
		-116.55275 -395.07748 114.09396 -108.25674 -402.55206 114.09396 -88.228409 -395.07748 
		114.09396 -68.200096 -377.0322 114.09396 -59.904091 -358.98691 114.09396 -68.200096 
		-351.5123 114.09396 -88.228409 -363.22095 120.54914 -103.55743 -377.0322 120.54914 
		-109.90693 -390.84344 120.54914 -103.55743 -396.56427 120.54914 -88.228409 -390.84344 
		120.54914 -72.899391 -377.0322 120.54914 -66.549919 -363.22095 120.54914 -72.899384 
		-357.50012 120.54914 -88.228409 -369.55759 124.86237 -96.524422 -377.0322 124.86237 
		-99.960739 -384.50677 124.86237 -96.524422 -387.60287 124.86237 -88.228409 -384.50677 
		124.86237 -79.932404 -377.0322 124.86237 -76.496086 -369.55759 124.86237 -79.932404 
		-366.46152 124.86237 -88.228409 -377.0322 86.5821 -88.228409 -377.0322 126.37698 
		-88.228409 -394.83902 68.312874 -9.9203339 -401.62503 68.312874 -13.040089 -408.41104 
		68.312874 -9.9203339 -411.22189 68.312874 -2.3885727 -408.41104 68.312874 5.1431808 
		-401.62503 68.312874 8.2629318 -394.83902 68.312874 5.1431808 -392.02814 68.312874 
		-2.3885727 -389.08612 72.228745 -16.305443 -401.62503 72.228745 -22.069992 -414.16394 
		72.228745 -16.305443 -419.35773 72.228745 -2.3885727 -414.16394 72.228745 11.528286 
		-401.62503 72.228745 17.292839 -389.08612 72.228745 11.528286 -383.89233 72.228745 
		-2.3885727 -385.24213 78.089256 -20.571835 -401.62503 78.089256 -28.103582 -418.0079 
		78.089256 -20.571835 -424.79395 78.089256 -2.3885727 -418.0079 78.089256 15.794678 
		-401.62503 78.089256 23.326427 -385.24213 78.089256 15.794678 -378.45612 78.089256 
		-2.3885727 -383.89233 85.002213 -22.069992 -401.62503 85.002213 -30.222296 -419.35773 
		85.002213 -22.069992 -426.70288 85.002213 -2.3885727 -419.35773 85.002213 17.292839 
		-401.62503 85.002213 25.445145 -383.89233 85.002213 17.292839 -376.54718 85.002213 
		-2.3885727 -385.24213 91.915161 -20.571835 -401.62503 91.915161 -28.103582 -418.0079 
		91.915161 -20.571835 -424.79395 91.915161 -2.3885727 -418.0079 91.915161 15.794678 
		-401.62503 91.915161 23.326427 -385.24213 91.915161 15.794678 -378.45612 91.915161 
		-2.3885727 -389.08612 97.775673 -16.305443 -401.62503 97.775673 -22.069992 -414.16394 
		97.775673 -16.305443 -419.35773 97.775673 -2.3885727 -414.16394 97.775673 11.528286 
		-401.62503 97.775673 17.292839 -389.08612 97.775673 11.528286 -383.89233 97.775673 
		-2.3885727 -394.83902 101.69154 -9.9203339 -401.62503 101.69154 -13.040089 -408.41104 
		101.69154 -9.9203339 -411.22189 101.69154 -2.3885727 -408.41104 101.69154 5.1431808 
		-401.62503 101.69154 8.2629318 -394.83902 101.69154 5.1431808 -392.02814 101.69154 
		-2.3885727 -401.62503 66.937798 -2.3885727 -401.62503 103.06662 -2.3885727;
	setAttr -s 662 ".vt";
	setAttr ".vt[0:165]"  534.78125 0 -55.82814407 503.15716553 0 -103.15705109
		 455.82827759 0 -134.78121948 400.000061035156 0 -145.88616943 344.17184448 0 -134.78128052
		 296.84289551 0 -103.15718079 265.21875 0 -55.82828903 254.11383057 0 -5.5108776e-05
		 265.21871948 0 55.82817459 296.84283447 0 103.15710449 344.17175293 0 134.78125 399.99996948 0 145.88616943
		 455.82821655 0 134.78125 503.15713501 0 103.15713501 534.78125 0 55.82821655 545.88616943 0 -2.9358066e-06
		 703.65252686 1000 -11.88049889 696.92279053 1000 -21.95231819 686.85101318 1000 -28.68209457
		 674.97052002 1000 -31.045286179 663.08996582 1000 -28.68211174 653.018188477 1000 -21.95234299
		 646.28839111 1000 -11.8805294 643.9251709 1000 -1.0379596e-05 646.28839111 1000 11.88050938
		 653.018127441 1000 21.95232964 663.08996582 1000 28.68210411 674.97045898 1000 31.045288086
		 686.85101318 1000 28.68210793 696.92279053 1000 21.95233917 703.65252686 1000 11.88051796
		 706.01574707 1000 7.2306483e-07 480 0 0 674.97045898 1000 0 527.39306641 103.39187622 -29.6149826
		 510.61749268 103.39187622 -54.7213974 485.5111084 103.39187622 -71.49697876 455.89605713 103.39187622 -77.38777924
		 426.28103638 103.39187622 -71.49701691 401.17462158 103.39187622 -54.72145844 384.39904785 103.39187622 -29.61505127
		 378.50823975 103.39187622 -2.8720791e-05 384.39904785 103.39187622 29.61499977 401.17459106 103.39187622 54.72142029
		 426.28097534 103.39187622 71.49699402 455.89602661 103.39187622 77.38777924 485.51104736 103.39187622 71.49699402
		 510.61746216 103.39187622 54.72143555 527.39300537 103.39187622 29.61502457 533.28381348 103.39187622 -1.0447612e-06
		 567.69976807 223.40228271 -20.66435623 571.81011963 223.40228271 -1.5253624e-07 567.69970703 223.40228271 20.66438866
		 555.9942627 223.40228271 38.18281555 538.47589111 223.40228271 49.88824463 517.8114624 223.40228271 53.99864578
		 497.14709473 223.40228271 49.88824463 479.62866211 223.40228271 38.18280029 467.92321777 223.40228271 20.66437149
		 463.81283569 223.40228271 -1.9463956e-05 467.92324829 223.40228271 -20.66440773 479.62869263 223.40228271 -38.182827
		 497.14712524 223.40228271 -49.88825607 517.81152344 223.40228271 -53.99864197 538.47589111 223.40228271 -49.88822937
		 555.99432373 223.40228271 -38.18278503 508.4727478 431.98162842 -19.74622917 512.4005127 431.98162842 -6.1014497e-08
		 508.47271729 431.98162842 19.74625778 497.28738403 431.98162842 36.48633194 480.54730225 431.98162842 47.67168427
		 460.80105591 431.98162842 51.59945679 441.054779053 431.98162842 47.67168427 424.31472778 431.98162842 36.4863205
		 413.12936401 431.98162842 19.74624252 409.20159912 431.98162842 -1.8514418e-05 413.12936401 431.98162842 -19.74627686
		 424.31472778 431.98162842 -36.48634338 441.05480957 431.98162842 -47.67169189 460.80108643 431.98162842 -51.59945297
		 480.54733276 431.98162842 -47.67166901 497.28738403 431.98162842 -36.48630524 931.80187988 996.3848877 -54.11960602
		 877.68225098 996.3848877 -76.53668213 823.56262207 996.3848877 -54.11960602 801.14556885 996.3848877 0
		 823.56262207 996.3848877 54.11960602 877.68225098 996.3848877 76.53668213 931.80187988 996.3848877 54.11960983
		 954.21893311 996.3848877 0 977.68225098 1024.52246094 -99.99999237 877.68225098 1024.52246094 -141.42134094
		 777.68225098 1024.52246094 -99.99999237 736.26092529 1024.52246094 0 777.68225098 1024.52246094 99.99999237
		 877.68225098 1024.52246094 141.42134094 977.68225098 1024.52246094 100 1019.1036377 1024.52246094 0
		 1008.33850098 1066.63342285 -130.65628052 877.68225098 1066.63342285 -184.77587891
		 747.026000977 1066.63342285 -130.65628052 692.90637207 1066.63342285 0 747.026000977 1066.63342285 130.65628052
		 877.68225098 1066.63342285 184.77587891 1008.33850098 1066.63342285 130.65628052
		 1062.45812988 1066.63342285 0 1019.10357666 1116.30664063 -141.42134094 877.68225098 1116.30664063 -199.99996948
		 736.26092529 1116.30664063 -141.42134094 677.68225098 1116.30664063 0 736.26092529 1116.30664063 141.42134094
		 877.68225098 1116.30664063 199.99998474 1019.1036377 1116.30664063 141.4213562 1077.68225098 1116.30664063 0
		 1008.33850098 1165.9798584 -130.65628052 877.68225098 1165.9798584 -184.77587891
		 747.026000977 1165.9798584 -130.65628052 692.90637207 1165.9798584 0 747.026000977 1165.9798584 130.65628052
		 877.68225098 1165.9798584 184.77587891 1008.33850098 1165.9798584 130.65628052 1062.45812988 1165.9798584 0
		 977.68225098 1208.090820313 -99.99999237 877.68225098 1208.090820313 -141.42134094
		 777.68225098 1208.090820313 -99.99999237 736.26092529 1208.090820313 0 777.68225098 1208.090820313 99.99999237
		 877.68225098 1208.090820313 141.42134094 977.68225098 1208.090820313 100 1019.1036377 1208.090820313 0
		 931.80187988 1236.22839355 -54.11960602 877.68225098 1236.22839355 -76.53668213 823.56262207 1236.22839355 -54.11960602
		 801.14556885 1236.22839355 0 823.56262207 1236.22839355 54.11960602 877.68225098 1236.22839355 76.53668213
		 931.80187988 1236.22839355 54.11960983 954.21893311 1236.22839355 0 877.68225098 986.50427246 0
		 877.68225098 1246.10900879 0 612.4543457 893.38574219 -40.41537476 572.039001465 893.38574219 -57.15597153
		 531.62365723 893.38574219 -40.41537476 514.88305664 893.38574219 0 531.62365723 893.38574219 40.41537476
		 572.039001465 893.38574219 57.15597153 612.4543457 893.38574219 40.41537476 629.19494629 893.38574219 0
		 646.71685791 914.39831543 -74.6778717 572.039001465 914.39831543 -105.61045837 497.36114502 914.39831543 -74.6778717
		 466.42852783 914.39831543 0 497.36114502 914.39831543 74.6778717 572.039001465 914.39831543 105.61045837
		 646.71685791 914.39831543 74.67787933 677.6494751 914.39831543 0 669.61035156 945.8458252 -97.57133484
		 572.039001465 945.8458252 -137.98670959 474.46765137 945.8458252 -97.57133484 434.052307129 945.8458252 0
		 474.46765137 945.8458252 97.57133484 572.039001465 945.8458252 137.98670959 669.61035156 945.8458252 97.57133484
		 710.025756836 945.8458252 0 677.6494751 982.94073486 -105.61045837 572.039001465 982.94073486 -149.35572815;
	setAttr ".vt[166:331]" 466.42852783 982.94073486 -105.61045837 422.68328857 982.94073486 0
		 466.42852783 982.94073486 105.61045837 572.039001465 982.94073486 149.35574341 677.6494751 982.94073486 105.610466
		 721.39477539 982.94073486 0 669.61035156 1020.035644531 -97.57133484 572.039001465 1020.035644531 -137.98670959
		 474.46765137 1020.035644531 -97.57133484 434.052307129 1020.035644531 0 474.46765137 1020.035644531 97.57133484
		 572.039001465 1020.035644531 137.98670959 669.61035156 1020.035644531 97.57133484
		 710.025756836 1020.035644531 0 646.71685791 1051.4831543 -74.6778717 572.039001465 1051.4831543 -105.61045837
		 497.36114502 1051.4831543 -74.6778717 466.42852783 1051.4831543 0 497.36114502 1051.4831543 74.6778717
		 572.039001465 1051.4831543 105.61045837 646.71685791 1051.4831543 74.67787933 677.6494751 1051.4831543 0
		 612.4543457 1072.49572754 -40.41537476 572.039001465 1072.49572754 -57.15597153 531.62365723 1072.49572754 -40.41537476
		 514.88305664 1072.49572754 0 531.62365723 1072.49572754 40.41537476 572.039001465 1072.49572754 57.15597153
		 612.4543457 1072.49572754 40.41537476 629.19494629 1072.49572754 0 572.039001465 886.0070800781 0
		 572.039001465 1079.87438965 0 1017.37573242 552.10949707 -40.41537476 976.96032715 552.10949707 -57.15597153
		 936.54492188 552.10949707 -40.41537476 919.80438232 552.10949707 0 936.54492188 552.10949707 40.41537476
		 976.96032715 552.10949707 57.15597153 1017.37573242 552.10949707 40.41537476 1034.11633301 552.10949707 0
		 1051.63818359 573.12207031 -74.6778717 976.96032715 573.12207031 -105.61045837 902.2824707 573.12207031 -74.6778717
		 871.34985352 573.12207031 0 902.2824707 573.12207031 74.6778717 976.96032715 573.12207031 105.61045837
		 1051.63818359 573.12207031 74.67787933 1082.57080078 573.12207031 0 1074.53161621 604.56958008 -97.57133484
		 976.96032715 604.56958008 -137.98670959 879.38897705 604.56958008 -97.57133484 838.97363281 604.56958008 0
		 879.38897705 604.56958008 97.57133484 976.96032715 604.56958008 137.98670959 1074.53161621 604.56958008 97.57133484
		 1114.94702148 604.56958008 0 1082.57080078 641.66448975 -105.61045837 976.96032715 641.66448975 -149.35572815
		 871.34985352 641.66448975 -105.61045837 827.60461426 641.66448975 0 871.34985352 641.66448975 105.61045837
		 976.96032715 641.66448975 149.35574341 1082.57080078 641.66448975 105.610466 1126.31604004 641.66448975 0
		 1074.53161621 678.75939941 -97.57133484 976.96032715 678.75939941 -137.98670959 879.38897705 678.75939941 -97.57133484
		 838.97363281 678.75939941 0 879.38897705 678.75939941 97.57133484 976.96032715 678.75939941 137.98670959
		 1074.53161621 678.75939941 97.57133484 1114.94702148 678.75939941 0 1051.63818359 710.20690918 -74.6778717
		 976.96032715 710.20690918 -105.61045837 902.2824707 710.20690918 -74.6778717 871.34985352 710.20690918 0
		 902.2824707 710.20690918 74.6778717 976.96032715 710.20690918 105.61045837 1051.63818359 710.20690918 74.67787933
		 1082.57080078 710.20690918 0 1017.37573242 731.21948242 -40.41537476 976.96032715 731.21948242 -57.15597153
		 936.54492188 731.21948242 -40.41537476 919.80438232 731.21948242 0 936.54492188 731.21948242 40.41537476
		 976.96032715 731.21948242 57.15597153 1017.37573242 731.21948242 40.41537476 1034.11633301 731.21948242 0
		 976.96032715 544.73083496 0 976.96032715 738.59814453 0 814.32476807 368.53585815 -64.18981171
		 756.49053955 368.53585815 -90.77810669 698.65631104 368.53585815 -64.18981171 674.70056152 368.53585815 0
		 698.65631104 368.53585815 64.18981171 756.49053955 368.53585815 90.77810669 814.32476807 368.53585815 64.18981934
		 838.28051758 368.53585815 0 863.35424805 401.90911865 -118.60730743 756.49053955 401.90911865 -167.73605347
		 649.62683105 401.90911865 -118.60730743 605.36242676 401.90911865 0 649.62683105 401.90911865 118.60730743
		 756.49053955 401.90911865 167.73605347 863.35430908 401.90911865 118.60731506 907.61871338 401.90911865 0
		 896.11474609 451.85574341 -154.96791077 756.49053955 451.85574341 -219.15771484 616.86633301 451.85574341 -154.96791077
		 559.032104492 451.85574341 0 616.86633301 451.85574341 154.96791077 756.49053955 451.85574341 219.15771484
		 896.11474609 451.85574341 154.96791077 953.94897461 451.85574341 0 907.61865234 510.77182007 -167.73605347
		 756.49053955 510.77182007 -237.21459961 605.36242676 510.77182007 -167.73605347 542.76306152 510.77182007 0
		 605.36242676 510.77182007 167.73605347 756.49053955 510.77182007 237.21461487 907.61871338 510.77182007 167.73608398
		 970.21801758 510.77182007 0 896.11474609 569.68786621 -154.96791077 756.49053955 569.68786621 -219.15771484
		 616.86633301 569.68786621 -154.96791077 559.032104492 569.68786621 0 616.86633301 569.68786621 154.96791077
		 756.49053955 569.68786621 219.15771484 896.11474609 569.68786621 154.96791077 953.94897461 569.68786621 0
		 863.35424805 619.63452148 -118.60730743 756.49053955 619.63452148 -167.73605347 649.62683105 619.63452148 -118.60730743
		 605.36242676 619.63452148 0 649.62683105 619.63452148 118.60730743 756.49053955 619.63452148 167.73605347
		 863.35430908 619.63452148 118.60731506 907.61871338 619.63452148 0 814.32476807 653.0078125 -64.18981171
		 756.49053955 653.0078125 -90.77810669 698.65631104 653.0078125 -64.18981171 674.70056152 653.0078125 0
		 698.65631104 653.0078125 64.18981171 756.49053955 653.0078125 90.77810669 814.32476807 653.0078125 64.18981934
		 838.28051758 653.0078125 0 756.49053955 356.81671143 0 756.49053955 664.72692871 0
		 274.80307007 305.82055664 -64.18981171 216.96884155 305.82055664 -90.77810669 159.13459778 305.82055664 -64.18981171
		 135.17886353 305.82055664 0 159.13459778 305.82055664 64.18981171 216.96884155 305.82055664 90.77810669
		 274.80310059 305.82055664 64.18981934 298.75881958 305.82055664 0 323.83258057 339.19381714 -118.60730743
		 216.96884155 339.19381714 -167.73605347 110.10510254 339.19381714 -118.60730743 65.84069824 339.19381714 0
		 110.10510254 339.19381714 118.60730743 216.96884155 339.19381714 167.73605347 323.83258057 339.19381714 118.60731506
		 368.096984863 339.19381714 0 356.5930481 389.14044189 -154.96791077 216.96884155 389.14044189 -219.15771484;
	setAttr ".vt[332:497]" 77.34463501 389.14044189 -154.96791077 19.51040649 389.14044189 0
		 77.34463501 389.14044189 154.96791077 216.96884155 389.14044189 219.15771484 356.5930481 389.14044189 154.96791077
		 414.42730713 389.14044189 0 368.096984863 448.056518555 -167.73605347 216.96884155 448.056518555 -237.21459961
		 65.84069824 448.056518555 -167.73605347 3.24137878 448.056518555 0 65.84069824 448.056518555 167.73605347
		 216.96884155 448.056518555 237.21461487 368.096984863 448.056518555 167.73608398
		 430.6963501 448.056518555 0 356.5930481 506.97259521 -154.96791077 216.96884155 506.97259521 -219.15771484
		 77.34463501 506.97259521 -154.96791077 19.51040649 506.97259521 0 77.34463501 506.97259521 154.96791077
		 216.96884155 506.97259521 219.15771484 356.5930481 506.97259521 154.96791077 414.42730713 506.97259521 0
		 323.83258057 556.91918945 -118.60730743 216.96884155 556.91918945 -167.73605347 110.10510254 556.91918945 -118.60730743
		 65.84069824 556.91918945 0 110.10510254 556.91918945 118.60730743 216.96884155 556.91918945 167.73605347
		 323.83258057 556.91918945 118.60731506 368.096984863 556.91918945 0 274.80307007 590.29248047 -64.18981171
		 216.96884155 590.29248047 -90.77810669 159.13459778 590.29248047 -64.18981171 135.17886353 590.29248047 0
		 159.13459778 590.29248047 64.18981171 216.96884155 590.29248047 90.77810669 274.80310059 590.29248047 64.18981934
		 298.75881958 590.29248047 0 216.96884155 294.10140991 0 216.96884155 602.01159668 0
		 74.58453369 562.98657227 -38.16125107 40.20170593 562.98657227 -53.96815872 5.81888199 562.98657227 -38.16125107
		 -8.42295074 562.98657227 0 5.81888199 562.98657227 38.16125107 40.20170593 562.98657227 53.96815872
		 74.58453369 562.98657227 38.16125488 88.82637024 562.98657227 0 103.73287964 582.82720947 -70.51279449
		 40.20170593 582.82720947 -99.72014618 -23.32946777 582.82720947 -70.51279449 -49.64493561 582.82720947 0
		 -23.32946777 582.82720947 70.51279449 40.20170593 582.82720947 99.72014618 103.73287964 582.82720947 70.51280212
		 130.048370361 582.82720947 0 123.20918274 612.52075195 -92.12940216 40.20170593 612.52075195 -130.29064941
		 -42.80577087 612.52075195 -92.12940216 -77.18858337 612.52075195 0 -42.80577087 612.52075195 92.12940216
		 40.20170593 612.52075195 130.29064941 123.20918274 612.52075195 92.12940216 157.5920105 612.52075195 0
		 130.048339844 647.54675293 -99.72014618 40.20170593 647.54675293 -141.02557373 -49.64493561 647.54675293 -99.72014618
		 -86.86063385 647.54675293 0 -49.64493561 647.54675293 99.72014618 40.20170593 647.54675293 141.025588989
		 130.048370361 647.54675293 99.72016144 167.2640686 647.54675293 0 123.20918274 682.57275391 -92.12940216
		 40.20170593 682.57275391 -130.29064941 -42.80577087 682.57275391 -92.12940216 -77.18858337 682.57275391 0
		 -42.80577087 682.57275391 92.12940216 40.20170593 682.57275391 130.29064941 123.20918274 682.57275391 92.12940216
		 157.5920105 682.57275391 0 103.73287964 712.26629639 -70.51279449 40.20170593 712.26629639 -99.72014618
		 -23.32946777 712.26629639 -70.51279449 -49.64493561 712.26629639 0 -23.32946777 712.26629639 70.51279449
		 40.20170593 712.26629639 99.72014618 103.73287964 712.26629639 70.51280212 130.048370361 712.26629639 0
		 74.58453369 732.10693359 -38.16125107 40.20170593 732.10693359 -53.96815872 5.81888199 732.10693359 -38.16125107
		 -8.42295074 732.10693359 0 5.81888199 732.10693359 38.16125107 40.20170593 732.10693359 53.96815872
		 74.58453369 732.10693359 38.16125488 88.82637024 732.10693359 0 40.20170593 556.019470215 0
		 40.20170593 739.074035645 0 533.43133545 562.98657227 535.85827637 499.048492432 562.98657227 520.051391602
		 464.66567993 562.98657227 535.85827637 450.42382813 562.98657227 574.01953125 464.66567993 562.98657227 612.18078613
		 499.048492432 562.98657227 627.9876709 533.43133545 562.98657227 612.18078613 547.67315674 562.98657227 574.01953125
		 562.57965088 582.82720947 503.50674438 499.048492432 582.82720947 474.29937744 435.51733398 582.82720947 503.50674438
		 409.20184326 582.82720947 574.01953125 435.51733398 582.82720947 644.53234863 499.048492432 582.82720947 673.73968506
		 562.57965088 582.82720947 644.53234863 588.8951416 582.82720947 574.01953125 582.055969238 612.52075195 481.89013672
		 499.048492432 612.52075195 443.72888184 416.041015625 612.52075195 481.89013672 381.65820313 612.52075195 574.01953125
		 416.041015625 612.52075195 666.14892578 499.048492432 612.52075195 704.31018066 582.055969238 612.52075195 666.14892578
		 616.43878174 612.52075195 574.01953125 588.8951416 647.54675293 474.29937744 499.048492432 647.54675293 432.99395752
		 409.20184326 647.54675293 474.29937744 371.98614502 647.54675293 574.01953125 409.20184326 647.54675293 673.73968506
		 499.048492432 647.54675293 715.04510498 588.8951416 647.54675293 673.73968506 626.11083984 647.54675293 574.01953125
		 582.055969238 682.57275391 481.89013672 499.048492432 682.57275391 443.72888184 416.041015625 682.57275391 481.89013672
		 381.65820313 682.57275391 574.01953125 416.041015625 682.57275391 666.14892578 499.048492432 682.57275391 704.31018066
		 582.055969238 682.57275391 666.14892578 616.43878174 682.57275391 574.01953125 562.57965088 712.26629639 503.50674438
		 499.048492432 712.26629639 474.29937744 435.51733398 712.26629639 503.50674438 409.20184326 712.26629639 574.01953125
		 435.51733398 712.26629639 644.53234863 499.048492432 712.26629639 673.73968506 562.57965088 712.26629639 644.53234863
		 588.8951416 712.26629639 574.01953125 533.43133545 732.10693359 535.85827637 499.048492432 732.10693359 520.051391602
		 464.66567993 732.10693359 535.85827637 450.42382813 732.10693359 574.01953125 464.66567993 732.10693359 612.18078613
		 499.048492432 732.10693359 627.9876709 533.43133545 732.10693359 612.18078613 547.67315674 732.10693359 574.01953125
		 499.048492432 556.019470215 574.01953125 499.048492432 739.074035645 574.01953125
		 842.64251709 798.92437744 -536.31921387 808.25970459 798.92437744 -552.12609863 773.87689209 798.92437744 -536.31921387
		 759.6350708 798.92437744 -498.15795898 773.87689209 798.92437744 -459.9967041 808.25970459 798.92437744 -444.18978882
		 842.64251709 798.92437744 -459.9967041 856.88433838 798.92437744 -498.15795898 871.79089355 818.76501465 -568.67077637
		 808.25970459 818.76501465 -597.87811279;
	setAttr ".vt[498:661]" 744.72851563 818.76501465 -568.67077637 718.41308594 818.76501465 -498.15795898
		 744.72851563 818.76501465 -427.64517212 808.25970459 818.76501465 -398.43780518 871.79089355 818.76501465 -427.6451416
		 898.10638428 818.76501465 -498.15795898 891.26721191 848.45855713 -590.28735352 808.25970459 848.45855713 -628.4486084
		 725.25219727 848.45855713 -590.28735352 690.86938477 848.45855713 -498.15795898 725.25219727 848.45855713 -406.028564453
		 808.25970459 848.45855713 -367.86730957 891.26721191 848.45855713 -406.028564453
		 925.65002441 848.45855713 -498.15795898 898.10632324 883.48455811 -597.87811279 808.25970459 883.48455811 -639.18353271
		 718.41308594 883.48455811 -597.87811279 681.1973877 883.48455811 -498.15795898 718.41308594 883.48455811 -398.43780518
		 808.25970459 883.48455811 -357.13238525 898.10638428 883.48455811 -398.43780518 935.32208252 883.48455811 -498.15795898
		 891.26721191 918.51055908 -590.28735352 808.25970459 918.51055908 -628.4486084 725.25219727 918.51055908 -590.28735352
		 690.86938477 918.51055908 -498.15795898 725.25219727 918.51055908 -406.028564453
		 808.25970459 918.51055908 -367.86730957 891.26721191 918.51055908 -406.028564453
		 925.65002441 918.51055908 -498.15795898 871.79089355 948.20410156 -568.67077637 808.25970459 948.20410156 -597.87811279
		 744.72851563 948.20410156 -568.67077637 718.41308594 948.20410156 -498.15795898 744.72851563 948.20410156 -427.64517212
		 808.25970459 948.20410156 -398.43780518 871.79089355 948.20410156 -427.6451416 898.10638428 948.20410156 -498.15795898
		 842.64251709 968.04473877 -536.31921387 808.25970459 968.04473877 -552.12609863 773.87689209 968.04473877 -536.31921387
		 759.6350708 968.04473877 -498.15795898 773.87689209 968.04473877 -459.9967041 808.25970459 968.04473877 -444.18978882
		 842.64251709 968.04473877 -459.9967041 856.88433838 968.04473877 -498.15795898 808.25970459 791.95727539 -498.15795898
		 808.25970459 975.01184082 -498.15795898 625.61169434 652.894104 -396.31289673 570.21661377 652.894104 -421.77981567
		 514.8215332 652.894104 -396.31289673 491.87615967 652.894104 -334.83029175 514.8215332 652.894104 -273.34768677
		 570.21661377 652.894104 -247.88076782 625.61169434 652.894104 -273.34768677 648.55706787 652.894104 -334.83029175
		 672.57336426 684.85986328 -448.43530273 570.21661377 684.85986328 -495.49206543 467.85986328 684.85986328 -448.43530273
		 425.46231079 684.85986328 -334.83029175 467.85986328 684.85986328 -221.2252655 570.21661377 684.85986328 -174.16853333
		 672.57336426 684.85986328 -221.22525024 714.97094727 684.85986328 -334.83029175 703.95214844 732.69995117 -483.26239014
		 570.21661377 732.69995117 -544.74499512 436.4810791 732.69995117 -483.26239014 381.085998535 732.69995117 -334.83029175
		 436.4810791 732.69995117 -186.3981781 570.21661377 732.69995117 -124.91558838 703.95214844 732.69995117 -186.3981781
		 759.347229 732.69995117 -334.83029175 714.97094727 789.13122559 -495.49206543 570.21661377 789.13122559 -562.040344238
		 425.46231079 789.13122559 -495.49206543 365.50311279 789.13122559 -334.83029175 425.46231079 789.13122559 -174.16853333
		 570.21661377 789.13122559 -107.62023926 714.97094727 789.13122559 -174.16851807 774.93011475 789.13122559 -334.83029175
		 703.95214844 845.5625 -483.26239014 570.21661377 845.5625 -544.74499512 436.4810791 845.5625 -483.26239014
		 381.085998535 845.5625 -334.83029175 436.4810791 845.5625 -186.3981781 570.21661377 845.5625 -124.91558838
		 703.95214844 845.5625 -186.3981781 759.347229 845.5625 -334.83029175 672.57336426 893.40258789 -448.43530273
		 570.21661377 893.40258789 -495.49206543 467.85986328 893.40258789 -448.43530273 425.46231079 893.40258789 -334.83029175
		 467.85986328 893.40258789 -221.2252655 570.21661377 893.40258789 -174.16853333 672.57336426 893.40258789 -221.22525024
		 714.97094727 893.40258789 -334.83029175 625.61169434 925.36834717 -396.31289673 570.21661377 925.36834717 -421.77981567
		 514.8215332 925.36834717 -396.31289673 491.87615967 925.36834717 -334.83029175 514.8215332 925.36834717 -273.34768677
		 570.21661377 925.36834717 -247.88076782 625.61169434 925.36834717 -273.34768677 648.55706787 925.36834717 -334.83029175
		 570.21661377 641.66918945 -334.83029175 570.21661377 936.59326172 -334.83029175 438.24835205 506.27398682 245.5193634
		 387.95648193 506.27398682 222.39852905 337.66461182 506.27398682 245.5193634 316.83303833 506.27398682 301.33795166
		 337.66461182 506.27398682 357.15655518 387.95648193 506.27398682 380.27737427 438.24835205 506.27398682 357.15655518
		 459.079956055 506.27398682 301.33795166 480.88375854 535.29492188 198.19863892 387.95648193 535.29492188 155.47694397
		 295.029205322 535.29492188 198.19863892 256.53747559 535.29492188 301.33795166 295.029205322 535.29492188 404.4772644
		 387.95648193 535.29492188 447.19897461 480.88375854 535.29492188 404.4772644 519.37548828 535.29492188 301.33795166
		 509.37179565 578.72784424 166.57995605 387.95648193 578.72784424 110.7613678 266.54116821 578.72784424 166.57995605
		 216.24928284 578.72784424 301.33795166 266.54116821 578.72784424 436.095947266 387.95648193 578.72784424 491.91455078
		 509.37179565 578.72784424 436.095947266 559.66369629 578.72784424 301.33795166 519.37548828 629.96044922 155.47694397
		 387.95648193 629.96044922 95.059356689 256.53747559 629.96044922 155.47694397 202.10195923 629.96044922 301.33795166
		 256.53747559 629.96044922 447.19897461 387.95648193 629.96044922 507.61657715 519.37548828 629.96044922 447.19897461
		 573.81103516 629.96044922 301.33795166 509.37179565 681.1930542 166.57995605 387.95648193 681.1930542 110.7613678
		 266.54116821 681.1930542 166.57995605 216.24928284 681.1930542 301.33795166 266.54116821 681.1930542 436.095947266
		 387.95648193 681.1930542 491.91455078 509.37179565 681.1930542 436.095947266 559.66369629 681.1930542 301.33795166
		 480.88375854 724.62597656 198.19863892 387.95648193 724.62597656 155.47694397 295.029205322 724.62597656 198.19863892
		 256.53747559 724.62597656 301.33795166 295.029205322 724.62597656 404.4772644 387.95648193 724.62597656 447.19897461
		 480.88375854 724.62597656 404.4772644 519.37548828 724.62597656 301.33795166 438.24835205 753.64691162 245.5193634
		 387.95648193 753.64691162 222.39852905 337.66461182 753.64691162 245.5193634 316.83303833 753.64691162 301.33795166
		 337.66461182 753.64691162 357.15655518 387.95648193 753.64691162 380.27737427 438.24835205 753.64691162 357.15655518
		 459.079956055 753.64691162 301.33795166 387.95648193 496.083190918 301.33795166 387.95648193 763.83770752 301.33795166;
	setAttr -s 1376 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 16 0 0 34 1 1 35 1 2 36 1 3 37 1 4 38 1 5 39 1 6 40 1 7 41 1 8 42 1 9 43 1 10 44 1
		 11 45 1 12 46 1 13 47 1 14 48 1 15 49 1 32 0 1 32 1 1 32 2 1 32 3 1 32 4 1 32 5 1
		 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1 32 15 1 16 33 1
		 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1 26 33 1 27 33 1
		 28 33 1 29 33 1 30 33 1 31 33 1 34 50 1 35 65 1 36 64 1 37 63 1 38 62 1 39 61 1 40 60 1
		 41 59 1 42 58 1 43 57 1 44 56 1 45 55 1 46 54 1 47 53 1 48 52 1 49 51 1 34 35 1 35 36 1
		 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 42 1 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1
		 47 48 1 48 49 1 49 34 1 50 66 1 51 67 1 52 68 1 53 69 1 54 70 1 55 71 1 56 72 1 57 73 1
		 58 74 1 59 75 1 60 76 1 61 77 1 62 78 1 63 79 1 64 80 1 65 81 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 50 1 66 16 1 67 31 1 68 30 1 69 29 1 70 28 1 71 27 1 72 26 1 73 25 1 74 24 1
		 75 23 1 76 22 1 77 21 1 78 20 1 79 19 1 80 18 1 81 17 1 66 67 1 67 68 1 68 69 1 69 70 1
		 70 71 1 71 72 1;
	setAttr ".ed[166:331]" 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1 77 78 1 78 79 1
		 79 80 1 80 81 1 81 66 1 82 83 0 83 84 0 84 85 0 85 86 0 86 87 0 87 88 0 88 89 0 89 82 0
		 90 91 0 91 92 0 92 93 0 93 94 0 94 95 0 95 96 0 96 97 0 97 90 0 98 99 0 99 100 0
		 100 101 0 101 102 0 102 103 0 103 104 0 104 105 0 105 98 0 106 107 0 107 108 0 108 109 0
		 109 110 0 110 111 0 111 112 0 112 113 0 113 106 0 114 115 0 115 116 0 116 117 0 117 118 0
		 118 119 0 119 120 0 120 121 0 121 114 0 122 123 0 123 124 0 124 125 0 125 126 0 126 127 0
		 127 128 0 128 129 0 129 122 0 130 131 0 131 132 0 132 133 0 133 134 0 134 135 0 135 136 0
		 136 137 0 137 130 0 82 90 0 83 91 0 84 92 0 85 93 0 86 94 0 87 95 0 88 96 0 89 97 0
		 90 98 0 91 99 0 92 100 0 93 101 0 94 102 0 95 103 0 96 104 0 97 105 0 98 106 0 99 107 0
		 100 108 0 101 109 0 102 110 0 103 111 0 104 112 0 105 113 0 106 114 0 107 115 0 108 116 0
		 109 117 0 110 118 0 111 119 0 112 120 0 113 121 0 114 122 0 115 123 0 116 124 0 117 125 0
		 118 126 0 119 127 0 120 128 0 121 129 0 122 130 0 123 131 0 124 132 0 125 133 0 126 134 0
		 127 135 0 128 136 0 129 137 0 138 82 0 138 83 0 138 84 0 138 85 0 138 86 0 138 87 0
		 138 88 0 138 89 0 130 139 0 131 139 0 132 139 0 133 139 0 134 139 0 135 139 0 136 139 0
		 137 139 0 140 141 0 141 142 0 142 143 0 143 144 0 144 145 0 145 146 0 146 147 0 147 140 0
		 148 149 0 149 150 0 150 151 0 151 152 0 152 153 0 153 154 0 154 155 0 155 148 0 156 157 0
		 157 158 0 158 159 0 159 160 0 160 161 0 161 162 0 162 163 0 163 156 0 164 165 0 165 166 0
		 166 167 0 167 168 0 168 169 0 169 170 0 170 171 0 171 164 0 172 173 0 173 174 0 174 175 0
		 175 176 0;
	setAttr ".ed[332:497]" 176 177 0 177 178 0 178 179 0 179 172 0 180 181 0 181 182 0
		 182 183 0 183 184 0 184 185 0 185 186 0 186 187 0 187 180 0 188 189 0 189 190 0 190 191 0
		 191 192 0 192 193 0 193 194 0 194 195 0 195 188 0 140 148 0 141 149 0 142 150 0 143 151 0
		 144 152 0 145 153 0 146 154 0 147 155 0 148 156 0 149 157 0 150 158 0 151 159 0 152 160 0
		 153 161 0 154 162 0 155 163 0 156 164 0 157 165 0 158 166 0 159 167 0 160 168 0 161 169 0
		 162 170 0 163 171 0 164 172 0 165 173 0 166 174 0 167 175 0 168 176 0 169 177 0 170 178 0
		 171 179 0 172 180 0 173 181 0 174 182 0 175 183 0 176 184 0 177 185 0 178 186 0 179 187 0
		 180 188 0 181 189 0 182 190 0 183 191 0 184 192 0 185 193 0 186 194 0 187 195 0 196 140 0
		 196 141 0 196 142 0 196 143 0 196 144 0 196 145 0 196 146 0 196 147 0 188 197 0 189 197 0
		 190 197 0 191 197 0 192 197 0 193 197 0 194 197 0 195 197 0 198 199 0 199 200 0 200 201 0
		 201 202 0 202 203 0 203 204 0 204 205 0 205 198 0 206 207 0 207 208 0 208 209 0 209 210 0
		 210 211 0 211 212 0 212 213 0 213 206 0 214 215 0 215 216 0 216 217 0 217 218 0 218 219 0
		 219 220 0 220 221 0 221 214 0 222 223 0 223 224 0 224 225 0 225 226 0 226 227 0 227 228 0
		 228 229 0 229 222 0 230 231 0 231 232 0 232 233 0 233 234 0 234 235 0 235 236 0 236 237 0
		 237 230 0 238 239 0 239 240 0 240 241 0 241 242 0 242 243 0 243 244 0 244 245 0 245 238 0
		 246 247 0 247 248 0 248 249 0 249 250 0 250 251 0 251 252 0 252 253 0 253 246 0 198 206 0
		 199 207 0 200 208 0 201 209 0 202 210 0 203 211 0 204 212 0 205 213 0 206 214 0 207 215 0
		 208 216 0 209 217 0 210 218 0 211 219 0 212 220 0 213 221 0 214 222 0 215 223 0 216 224 0
		 217 225 0 218 226 0 219 227 0 220 228 0 221 229 0 222 230 0 223 231 0;
	setAttr ".ed[498:663]" 224 232 0 225 233 0 226 234 0 227 235 0 228 236 0 229 237 0
		 230 238 0 231 239 0 232 240 0 233 241 0 234 242 0 235 243 0 236 244 0 237 245 0 238 246 0
		 239 247 0 240 248 0 241 249 0 242 250 0 243 251 0 244 252 0 245 253 0 254 198 0 254 199 0
		 254 200 0 254 201 0 254 202 0 254 203 0 254 204 0 254 205 0 246 255 0 247 255 0 248 255 0
		 249 255 0 250 255 0 251 255 0 252 255 0 253 255 0 256 257 0 257 258 0 258 259 0 259 260 0
		 260 261 0 261 262 0 262 263 0 263 256 0 264 265 0 265 266 0 266 267 0 267 268 0 268 269 0
		 269 270 0 270 271 0 271 264 0 272 273 0 273 274 0 274 275 0 275 276 0 276 277 0 277 278 0
		 278 279 0 279 272 0 280 281 0 281 282 0 282 283 0 283 284 0 284 285 0 285 286 0 286 287 0
		 287 280 0 288 289 0 289 290 0 290 291 0 291 292 0 292 293 0 293 294 0 294 295 0 295 288 0
		 296 297 0 297 298 0 298 299 0 299 300 0 300 301 0 301 302 0 302 303 0 303 296 0 304 305 0
		 305 306 0 306 307 0 307 308 0 308 309 0 309 310 0 310 311 0 311 304 0 256 264 0 257 265 0
		 258 266 0 259 267 0 260 268 0 261 269 0 262 270 0 263 271 0 264 272 0 265 273 0 266 274 0
		 267 275 0 268 276 0 269 277 0 270 278 0 271 279 0 272 280 0 273 281 0 274 282 0 275 283 0
		 276 284 0 277 285 0 278 286 0 279 287 0 280 288 0 281 289 0 282 290 0 283 291 0 284 292 0
		 285 293 0 286 294 0 287 295 0 288 296 0 289 297 0 290 298 0 291 299 0 292 300 0 293 301 0
		 294 302 0 295 303 0 296 304 0 297 305 0 298 306 0 299 307 0 300 308 0 301 309 0 302 310 0
		 303 311 0 312 256 0 312 257 0 312 258 0 312 259 0 312 260 0 312 261 0 312 262 0 312 263 0
		 304 313 0 305 313 0 306 313 0 307 313 0 308 313 0 309 313 0 310 313 0 311 313 0 314 315 0
		 315 316 0 316 317 0 317 318 0 318 319 0 319 320 0 320 321 0 321 314 0;
	setAttr ".ed[664:829]" 322 323 0 323 324 0 324 325 0 325 326 0 326 327 0 327 328 0
		 328 329 0 329 322 0 330 331 0 331 332 0 332 333 0 333 334 0 334 335 0 335 336 0 336 337 0
		 337 330 0 338 339 0 339 340 0 340 341 0 341 342 0 342 343 0 343 344 0 344 345 0 345 338 0
		 346 347 0 347 348 0 348 349 0 349 350 0 350 351 0 351 352 0 352 353 0 353 346 0 354 355 0
		 355 356 0 356 357 0 357 358 0 358 359 0 359 360 0 360 361 0 361 354 0 362 363 0 363 364 0
		 364 365 0 365 366 0 366 367 0 367 368 0 368 369 0 369 362 0 314 322 0 315 323 0 316 324 0
		 317 325 0 318 326 0 319 327 0 320 328 0 321 329 0 322 330 0 323 331 0 324 332 0 325 333 0
		 326 334 0 327 335 0 328 336 0 329 337 0 330 338 0 331 339 0 332 340 0 333 341 0 334 342 0
		 335 343 0 336 344 0 337 345 0 338 346 0 339 347 0 340 348 0 341 349 0 342 350 0 343 351 0
		 344 352 0 345 353 0 346 354 0 347 355 0 348 356 0 349 357 0 350 358 0 351 359 0 352 360 0
		 353 361 0 354 362 0 355 363 0 356 364 0 357 365 0 358 366 0 359 367 0 360 368 0 361 369 0
		 370 314 0 370 315 0 370 316 0 370 317 0 370 318 0 370 319 0 370 320 0 370 321 0 362 371 0
		 363 371 0 364 371 0 365 371 0 366 371 0 367 371 0 368 371 0 369 371 0 372 373 0 373 374 0
		 374 375 0 375 376 0 376 377 0 377 378 0 378 379 0 379 372 0 380 381 0 381 382 0 382 383 0
		 383 384 0 384 385 0 385 386 0 386 387 0 387 380 0 388 389 0 389 390 0 390 391 0 391 392 0
		 392 393 0 393 394 0 394 395 0 395 388 0 396 397 0 397 398 0 398 399 0 399 400 0 400 401 0
		 401 402 0 402 403 0 403 396 0 404 405 0 405 406 0 406 407 0 407 408 0 408 409 0 409 410 0
		 410 411 0 411 404 0 412 413 0 413 414 0 414 415 0 415 416 0 416 417 0 417 418 0 418 419 0
		 419 412 0 420 421 0 421 422 0 422 423 0 423 424 0 424 425 0 425 426 0;
	setAttr ".ed[830:995]" 426 427 0 427 420 0 372 380 0 373 381 0 374 382 0 375 383 0
		 376 384 0 377 385 0 378 386 0 379 387 0 380 388 0 381 389 0 382 390 0 383 391 0 384 392 0
		 385 393 0 386 394 0 387 395 0 388 396 0 389 397 0 390 398 0 391 399 0 392 400 0 393 401 0
		 394 402 0 395 403 0 396 404 0 397 405 0 398 406 0 399 407 0 400 408 0 401 409 0 402 410 0
		 403 411 0 404 412 0 405 413 0 406 414 0 407 415 0 408 416 0 409 417 0 410 418 0 411 419 0
		 412 420 0 413 421 0 414 422 0 415 423 0 416 424 0 417 425 0 418 426 0 419 427 0 428 372 0
		 428 373 0 428 374 0 428 375 0 428 376 0 428 377 0 428 378 0 428 379 0 420 429 0 421 429 0
		 422 429 0 423 429 0 424 429 0 425 429 0 426 429 0 427 429 0 430 431 0 431 432 0 432 433 0
		 433 434 0 434 435 0 435 436 0 436 437 0 437 430 0 438 439 0 439 440 0 440 441 0 441 442 0
		 442 443 0 443 444 0 444 445 0 445 438 0 446 447 0 447 448 0 448 449 0 449 450 0 450 451 0
		 451 452 0 452 453 0 453 446 0 454 455 0 455 456 0 456 457 0 457 458 0 458 459 0 459 460 0
		 460 461 0 461 454 0 462 463 0 463 464 0 464 465 0 465 466 0 466 467 0 467 468 0 468 469 0
		 469 462 0 470 471 0 471 472 0 472 473 0 473 474 0 474 475 0 475 476 0 476 477 0 477 470 0
		 478 479 0 479 480 0 480 481 0 481 482 0 482 483 0 483 484 0 484 485 0 485 478 0 430 438 0
		 431 439 0 432 440 0 433 441 0 434 442 0 435 443 0 436 444 0 437 445 0 438 446 0 439 447 0
		 440 448 0 441 449 0 442 450 0 443 451 0 444 452 0 445 453 0 446 454 0 447 455 0 448 456 0
		 449 457 0 450 458 0 451 459 0 452 460 0 453 461 0 454 462 0 455 463 0 456 464 0 457 465 0
		 458 466 0 459 467 0 460 468 0 461 469 0 462 470 0 463 471 0 464 472 0 465 473 0 466 474 0
		 467 475 0 468 476 0 469 477 0 470 478 0 471 479 0 472 480 0 473 481 0;
	setAttr ".ed[996:1161]" 474 482 0 475 483 0 476 484 0 477 485 0 486 430 0 486 431 0
		 486 432 0 486 433 0 486 434 0 486 435 0 486 436 0 486 437 0 478 487 0 479 487 0 480 487 0
		 481 487 0 482 487 0 483 487 0 484 487 0 485 487 0 488 489 0 489 490 0 490 491 0 491 492 0
		 492 493 0 493 494 0 494 495 0 495 488 0 496 497 0 497 498 0 498 499 0 499 500 0 500 501 0
		 501 502 0 502 503 0 503 496 0 504 505 0 505 506 0 506 507 0 507 508 0 508 509 0 509 510 0
		 510 511 0 511 504 0 512 513 0 513 514 0 514 515 0 515 516 0 516 517 0 517 518 0 518 519 0
		 519 512 0 520 521 0 521 522 0 522 523 0 523 524 0 524 525 0 525 526 0 526 527 0 527 520 0
		 528 529 0 529 530 0 530 531 0 531 532 0 532 533 0 533 534 0 534 535 0 535 528 0 536 537 0
		 537 538 0 538 539 0 539 540 0 540 541 0 541 542 0 542 543 0 543 536 0 488 496 0 489 497 0
		 490 498 0 491 499 0 492 500 0 493 501 0 494 502 0 495 503 0 496 504 0 497 505 0 498 506 0
		 499 507 0 500 508 0 501 509 0 502 510 0 503 511 0 504 512 0 505 513 0 506 514 0 507 515 0
		 508 516 0 509 517 0 510 518 0 511 519 0 512 520 0 513 521 0 514 522 0 515 523 0 516 524 0
		 517 525 0 518 526 0 519 527 0 520 528 0 521 529 0 522 530 0 523 531 0 524 532 0 525 533 0
		 526 534 0 527 535 0 528 536 0 529 537 0 530 538 0 531 539 0 532 540 0 533 541 0 534 542 0
		 535 543 0 544 488 0 544 489 0 544 490 0 544 491 0 544 492 0 544 493 0 544 494 0 544 495 0
		 536 545 0 537 545 0 538 545 0 539 545 0 540 545 0 541 545 0 542 545 0 543 545 0 546 547 0
		 547 548 0 548 549 0 549 550 0 550 551 0 551 552 0 552 553 0 553 546 0 554 555 0 555 556 0
		 556 557 0 557 558 0 558 559 0 559 560 0 560 561 0 561 554 0 562 563 0 563 564 0 564 565 0
		 565 566 0 566 567 0 567 568 0 568 569 0 569 562 0 570 571 0 571 572 0;
	setAttr ".ed[1162:1327]" 572 573 0 573 574 0 574 575 0 575 576 0 576 577 0 577 570 0
		 578 579 0 579 580 0 580 581 0 581 582 0 582 583 0 583 584 0 584 585 0 585 578 0 586 587 0
		 587 588 0 588 589 0 589 590 0 590 591 0 591 592 0 592 593 0 593 586 0 594 595 0 595 596 0
		 596 597 0 597 598 0 598 599 0 599 600 0 600 601 0 601 594 0 546 554 0 547 555 0 548 556 0
		 549 557 0 550 558 0 551 559 0 552 560 0 553 561 0 554 562 0 555 563 0 556 564 0 557 565 0
		 558 566 0 559 567 0 560 568 0 561 569 0 562 570 0 563 571 0 564 572 0 565 573 0 566 574 0
		 567 575 0 568 576 0 569 577 0 570 578 0 571 579 0 572 580 0 573 581 0 574 582 0 575 583 0
		 576 584 0 577 585 0 578 586 0 579 587 0 580 588 0 581 589 0 582 590 0 583 591 0 584 592 0
		 585 593 0 586 594 0 587 595 0 588 596 0 589 597 0 590 598 0 591 599 0 592 600 0 593 601 0
		 602 546 0 602 547 0 602 548 0 602 549 0 602 550 0 602 551 0 602 552 0 602 553 0 594 603 0
		 595 603 0 596 603 0 597 603 0 598 603 0 599 603 0 600 603 0 601 603 0 604 605 0 605 606 0
		 606 607 0 607 608 0 608 609 0 609 610 0 610 611 0 611 604 0 612 613 0 613 614 0 614 615 0
		 615 616 0 616 617 0 617 618 0 618 619 0 619 612 0 620 621 0 621 622 0 622 623 0 623 624 0
		 624 625 0 625 626 0 626 627 0 627 620 0 628 629 0 629 630 0 630 631 0 631 632 0 632 633 0
		 633 634 0 634 635 0 635 628 0 636 637 0 637 638 0 638 639 0 639 640 0 640 641 0 641 642 0
		 642 643 0 643 636 0 644 645 0 645 646 0 646 647 0 647 648 0 648 649 0 649 650 0 650 651 0
		 651 644 0 652 653 0 653 654 0 654 655 0 655 656 0 656 657 0 657 658 0 658 659 0 659 652 0
		 604 612 0 605 613 0 606 614 0 607 615 0 608 616 0 609 617 0 610 618 0 611 619 0 612 620 0
		 613 621 0 614 622 0 615 623 0 616 624 0 617 625 0 618 626 0 619 627 0;
	setAttr ".ed[1328:1375]" 620 628 0 621 629 0 622 630 0 623 631 0 624 632 0 625 633 0
		 626 634 0 627 635 0 628 636 0 629 637 0 630 638 0 631 639 0 632 640 0 633 641 0 634 642 0
		 635 643 0 636 644 0 637 645 0 638 646 0 639 647 0 640 648 0 641 649 0 642 650 0 643 651 0
		 644 652 0 645 653 0 646 654 0 647 655 0 648 656 0 649 657 0 650 658 0 651 659 0 660 604 0
		 660 605 0 660 606 0 660 607 0 660 608 0 660 609 0 660 610 0 660 611 0 652 661 0 653 661 0
		 654 661 0 655 661 0 656 661 0 657 661 0 658 661 0 659 661 0;
	setAttr -s 736 -ch 2752 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 96 81 143 -81
		mu 0 4 69 70 101 86
		f 4 97 82 142 -82
		mu 0 4 70 71 100 101
		f 4 98 83 141 -83
		mu 0 4 71 72 99 100
		f 4 99 84 140 -84
		mu 0 4 72 73 98 99
		f 4 100 85 139 -85
		mu 0 4 73 74 97 98
		f 4 101 86 138 -86
		mu 0 4 74 75 96 97
		f 4 102 87 137 -87
		mu 0 4 75 76 95 96
		f 4 103 88 136 -88
		mu 0 4 76 77 94 95
		f 4 104 89 135 -89
		mu 0 4 77 78 93 94
		f 4 105 90 134 -90
		mu 0 4 78 79 92 93
		f 4 106 91 133 -91
		mu 0 4 79 80 91 92
		f 4 107 92 132 -92
		mu 0 4 80 81 90 91
		f 4 108 93 131 -93
		mu 0 4 81 82 89 90
		f 4 109 94 130 -94
		mu 0 4 82 83 88 89
		f 4 110 95 129 -95
		mu 0 4 83 84 87 88
		f 4 111 80 128 -96
		mu 0 4 84 68 85 87
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67
		f 4 0 33 -97 -33
		mu 0 4 16 17 70 69
		f 4 1 34 -98 -34
		mu 0 4 17 18 71 70
		f 4 2 35 -99 -35
		mu 0 4 18 19 72 71
		f 4 3 36 -100 -36
		mu 0 4 19 20 73 72
		f 4 4 37 -101 -37
		mu 0 4 20 21 74 73
		f 4 5 38 -102 -38
		mu 0 4 21 22 75 74
		f 4 6 39 -103 -39
		mu 0 4 22 23 76 75
		f 4 7 40 -104 -40
		mu 0 4 23 24 77 76
		f 4 8 41 -105 -41
		mu 0 4 24 25 78 77
		f 4 9 42 -106 -42
		mu 0 4 25 26 79 78
		f 4 10 43 -107 -43
		mu 0 4 26 27 80 79
		f 4 11 44 -108 -44
		mu 0 4 27 28 81 80
		f 4 12 45 -109 -45
		mu 0 4 28 29 82 81
		f 4 13 46 -110 -46
		mu 0 4 29 30 83 82
		f 4 14 47 -111 -47
		mu 0 4 30 31 84 83
		f 4 15 32 -112 -48
		mu 0 4 31 32 68 84
		f 4 -129 112 160 -114
		mu 0 4 87 85 102 104
		f 4 -130 113 161 -115
		mu 0 4 88 87 104 105
		f 4 -131 114 162 -116
		mu 0 4 89 88 105 106
		f 4 -132 115 163 -117
		mu 0 4 90 89 106 107
		f 4 -133 116 164 -118
		mu 0 4 91 90 107 108
		f 4 -134 117 165 -119
		mu 0 4 92 91 108 109
		f 4 -135 118 166 -120
		mu 0 4 93 92 109 110
		f 4 -136 119 167 -121
		mu 0 4 94 93 110 111
		f 4 -137 120 168 -122
		mu 0 4 95 94 111 112
		f 4 -138 121 169 -123
		mu 0 4 96 95 112 113
		f 4 -139 122 170 -124
		mu 0 4 97 96 113 114
		f 4 -140 123 171 -125
		mu 0 4 98 97 114 115
		f 4 -141 124 172 -126
		mu 0 4 99 98 115 116
		f 4 -142 125 173 -127
		mu 0 4 100 99 116 117
		f 4 -143 126 174 -128
		mu 0 4 101 100 117 118
		f 4 -144 127 175 -113
		mu 0 4 86 101 118 103
		f 4 -161 144 -32 -146
		mu 0 4 104 102 49 48
		f 4 -162 145 -31 -147
		mu 0 4 105 104 48 47
		f 4 -163 146 -30 -148
		mu 0 4 106 105 47 46
		f 4 -164 147 -29 -149
		mu 0 4 107 106 46 45
		f 4 -165 148 -28 -150
		mu 0 4 108 107 45 44
		f 4 -166 149 -27 -151
		mu 0 4 109 108 44 43
		f 4 -167 150 -26 -152
		mu 0 4 110 109 43 42
		f 4 -168 151 -25 -153
		mu 0 4 111 110 42 41
		f 4 -169 152 -24 -154
		mu 0 4 112 111 41 40
		f 4 -170 153 -23 -155
		mu 0 4 113 112 40 39
		f 4 -171 154 -22 -156
		mu 0 4 114 113 39 38
		f 4 -172 155 -21 -157
		mu 0 4 115 114 38 37
		f 4 -173 156 -20 -158
		mu 0 4 116 115 37 36
		f 4 -174 157 -19 -159
		mu 0 4 117 116 36 35
		f 4 -175 158 -18 -160
		mu 0 4 118 117 35 34
		f 4 -176 159 -17 -145
		mu 0 4 103 118 34 33
		f 4 176 233 -185 -233
		mu 0 4 119 120 121 122
		f 4 177 234 -186 -234
		mu 0 4 120 123 124 121
		f 4 178 235 -187 -235
		mu 0 4 123 125 126 124
		f 4 179 236 -188 -236
		mu 0 4 125 127 128 126
		f 4 180 237 -189 -237
		mu 0 4 127 129 130 128
		f 4 181 238 -190 -238
		mu 0 4 129 131 132 130
		f 4 182 239 -191 -239
		mu 0 4 131 133 134 132
		f 4 183 232 -192 -240
		mu 0 4 133 135 136 134
		f 4 184 241 -193 -241
		mu 0 4 122 121 137 138
		f 4 185 242 -194 -242
		mu 0 4 121 124 139 137
		f 4 186 243 -195 -243
		mu 0 4 124 126 140 139
		f 4 187 244 -196 -244
		mu 0 4 126 128 141 140
		f 4 188 245 -197 -245
		mu 0 4 128 130 142 141
		f 4 189 246 -198 -246
		mu 0 4 130 132 143 142
		f 4 190 247 -199 -247
		mu 0 4 132 134 144 143
		f 4 191 240 -200 -248
		mu 0 4 134 136 145 144
		f 4 192 249 -201 -249
		mu 0 4 138 137 146 147
		f 4 193 250 -202 -250
		mu 0 4 137 139 148 146
		f 4 194 251 -203 -251
		mu 0 4 139 140 149 148
		f 4 195 252 -204 -252
		mu 0 4 140 141 150 149
		f 4 196 253 -205 -253
		mu 0 4 141 142 151 150
		f 4 197 254 -206 -254
		mu 0 4 142 143 152 151
		f 4 198 255 -207 -255
		mu 0 4 143 144 153 152
		f 4 199 248 -208 -256
		mu 0 4 144 145 154 153
		f 4 200 257 -209 -257
		mu 0 4 147 146 155 156
		f 4 201 258 -210 -258
		mu 0 4 146 148 157 155
		f 4 202 259 -211 -259
		mu 0 4 148 149 158 157
		f 4 203 260 -212 -260
		mu 0 4 149 150 159 158
		f 4 204 261 -213 -261
		mu 0 4 150 151 160 159
		f 4 205 262 -214 -262
		mu 0 4 151 152 161 160
		f 4 206 263 -215 -263
		mu 0 4 152 153 162 161
		f 4 207 256 -216 -264
		mu 0 4 153 154 163 162
		f 4 208 265 -217 -265
		mu 0 4 156 155 164 165
		f 4 209 266 -218 -266
		mu 0 4 155 157 166 164
		f 4 210 267 -219 -267
		mu 0 4 157 158 167 166
		f 4 211 268 -220 -268
		mu 0 4 158 159 168 167
		f 4 212 269 -221 -269
		mu 0 4 159 160 169 168
		f 4 213 270 -222 -270
		mu 0 4 160 161 170 169
		f 4 214 271 -223 -271
		mu 0 4 161 162 171 170
		f 4 215 264 -224 -272
		mu 0 4 162 163 172 171
		f 4 216 273 -225 -273
		mu 0 4 165 164 173 174
		f 4 217 274 -226 -274
		mu 0 4 164 166 175 173
		f 4 218 275 -227 -275
		mu 0 4 166 167 176 175
		f 4 219 276 -228 -276
		mu 0 4 167 168 177 176
		f 4 220 277 -229 -277
		mu 0 4 168 169 178 177
		f 4 221 278 -230 -278
		mu 0 4 169 170 179 178
		f 4 222 279 -231 -279
		mu 0 4 170 171 180 179
		f 4 223 272 -232 -280
		mu 0 4 171 172 181 180
		f 3 -177 -281 281
		mu 0 3 120 119 182
		f 3 -178 -282 282
		mu 0 3 123 120 183
		f 3 -179 -283 283
		mu 0 3 125 123 184
		f 3 -180 -284 284
		mu 0 3 127 125 185
		f 3 -181 -285 285
		mu 0 3 129 127 186
		f 3 -182 -286 286
		mu 0 3 131 129 187
		f 3 -183 -287 287
		mu 0 3 133 131 188
		f 3 -184 -288 280
		mu 0 3 135 133 189
		f 3 224 289 -289
		mu 0 3 174 173 190
		f 3 225 290 -290
		mu 0 3 173 175 191
		f 3 226 291 -291
		mu 0 3 175 176 192
		f 3 227 292 -292
		mu 0 3 176 177 193
		f 3 228 293 -293
		mu 0 3 177 178 194
		f 3 229 294 -294
		mu 0 3 178 179 195
		f 3 230 295 -295
		mu 0 3 179 180 196
		f 3 231 288 -296
		mu 0 3 180 181 197
		f 4 296 353 -305 -353
		mu 0 4 198 199 200 201
		f 4 297 354 -306 -354
		mu 0 4 199 202 203 200
		f 4 298 355 -307 -355
		mu 0 4 202 204 205 203
		f 4 299 356 -308 -356
		mu 0 4 204 206 207 205
		f 4 300 357 -309 -357
		mu 0 4 206 208 209 207
		f 4 301 358 -310 -358
		mu 0 4 208 210 211 209
		f 4 302 359 -311 -359
		mu 0 4 210 212 213 211
		f 4 303 352 -312 -360
		mu 0 4 212 214 215 213
		f 4 304 361 -313 -361
		mu 0 4 201 200 216 217
		f 4 305 362 -314 -362
		mu 0 4 200 203 218 216
		f 4 306 363 -315 -363
		mu 0 4 203 205 219 218
		f 4 307 364 -316 -364
		mu 0 4 205 207 220 219
		f 4 308 365 -317 -365
		mu 0 4 207 209 221 220
		f 4 309 366 -318 -366
		mu 0 4 209 211 222 221
		f 4 310 367 -319 -367
		mu 0 4 211 213 223 222
		f 4 311 360 -320 -368
		mu 0 4 213 215 224 223
		f 4 312 369 -321 -369
		mu 0 4 217 216 225 226
		f 4 313 370 -322 -370
		mu 0 4 216 218 227 225
		f 4 314 371 -323 -371
		mu 0 4 218 219 228 227
		f 4 315 372 -324 -372
		mu 0 4 219 220 229 228
		f 4 316 373 -325 -373
		mu 0 4 220 221 230 229
		f 4 317 374 -326 -374
		mu 0 4 221 222 231 230
		f 4 318 375 -327 -375
		mu 0 4 222 223 232 231
		f 4 319 368 -328 -376
		mu 0 4 223 224 233 232
		f 4 320 377 -329 -377
		mu 0 4 226 225 234 235
		f 4 321 378 -330 -378
		mu 0 4 225 227 236 234
		f 4 322 379 -331 -379
		mu 0 4 227 228 237 236
		f 4 323 380 -332 -380
		mu 0 4 228 229 238 237
		f 4 324 381 -333 -381
		mu 0 4 229 230 239 238
		f 4 325 382 -334 -382
		mu 0 4 230 231 240 239
		f 4 326 383 -335 -383
		mu 0 4 231 232 241 240
		f 4 327 376 -336 -384
		mu 0 4 232 233 242 241
		f 4 328 385 -337 -385
		mu 0 4 235 234 243 244
		f 4 329 386 -338 -386
		mu 0 4 234 236 245 243
		f 4 330 387 -339 -387
		mu 0 4 236 237 246 245
		f 4 331 388 -340 -388
		mu 0 4 237 238 247 246
		f 4 332 389 -341 -389
		mu 0 4 238 239 248 247
		f 4 333 390 -342 -390
		mu 0 4 239 240 249 248
		f 4 334 391 -343 -391
		mu 0 4 240 241 250 249
		f 4 335 384 -344 -392
		mu 0 4 241 242 251 250
		f 4 336 393 -345 -393
		mu 0 4 244 243 252 253
		f 4 337 394 -346 -394
		mu 0 4 243 245 254 252
		f 4 338 395 -347 -395
		mu 0 4 245 246 255 254
		f 4 339 396 -348 -396
		mu 0 4 246 247 256 255
		f 4 340 397 -349 -397
		mu 0 4 247 248 257 256
		f 4 341 398 -350 -398
		mu 0 4 248 249 258 257
		f 4 342 399 -351 -399
		mu 0 4 249 250 259 258
		f 4 343 392 -352 -400
		mu 0 4 250 251 260 259
		f 3 -297 -401 401
		mu 0 3 199 198 261
		f 3 -298 -402 402
		mu 0 3 202 199 262
		f 3 -299 -403 403
		mu 0 3 204 202 263
		f 3 -300 -404 404
		mu 0 3 206 204 264
		f 3 -301 -405 405
		mu 0 3 208 206 265
		f 3 -302 -406 406
		mu 0 3 210 208 266
		f 3 -303 -407 407
		mu 0 3 212 210 267
		f 3 -304 -408 400
		mu 0 3 214 212 268
		f 3 344 409 -409
		mu 0 3 253 252 269
		f 3 345 410 -410
		mu 0 3 252 254 270
		f 3 346 411 -411
		mu 0 3 254 255 271
		f 3 347 412 -412
		mu 0 3 255 256 272
		f 3 348 413 -413
		mu 0 3 256 257 273
		f 3 349 414 -414
		mu 0 3 257 258 274
		f 3 350 415 -415
		mu 0 3 258 259 275
		f 3 351 408 -416
		mu 0 3 259 260 276
		f 4 416 473 -425 -473
		mu 0 4 277 278 279 280
		f 4 417 474 -426 -474
		mu 0 4 278 281 282 279
		f 4 418 475 -427 -475
		mu 0 4 281 283 284 282
		f 4 419 476 -428 -476
		mu 0 4 283 285 286 284
		f 4 420 477 -429 -477
		mu 0 4 285 287 288 286
		f 4 421 478 -430 -478
		mu 0 4 287 289 290 288
		f 4 422 479 -431 -479
		mu 0 4 289 291 292 290
		f 4 423 472 -432 -480
		mu 0 4 291 293 294 292
		f 4 424 481 -433 -481
		mu 0 4 280 279 295 296
		f 4 425 482 -434 -482
		mu 0 4 279 282 297 295
		f 4 426 483 -435 -483
		mu 0 4 282 284 298 297
		f 4 427 484 -436 -484
		mu 0 4 284 286 299 298
		f 4 428 485 -437 -485
		mu 0 4 286 288 300 299
		f 4 429 486 -438 -486
		mu 0 4 288 290 301 300
		f 4 430 487 -439 -487
		mu 0 4 290 292 302 301
		f 4 431 480 -440 -488
		mu 0 4 292 294 303 302
		f 4 432 489 -441 -489
		mu 0 4 296 295 304 305
		f 4 433 490 -442 -490
		mu 0 4 295 297 306 304
		f 4 434 491 -443 -491
		mu 0 4 297 298 307 306
		f 4 435 492 -444 -492
		mu 0 4 298 299 308 307
		f 4 436 493 -445 -493
		mu 0 4 299 300 309 308
		f 4 437 494 -446 -494
		mu 0 4 300 301 310 309
		f 4 438 495 -447 -495
		mu 0 4 301 302 311 310
		f 4 439 488 -448 -496
		mu 0 4 302 303 312 311
		f 4 440 497 -449 -497
		mu 0 4 305 304 313 314
		f 4 441 498 -450 -498
		mu 0 4 304 306 315 313
		f 4 442 499 -451 -499
		mu 0 4 306 307 316 315
		f 4 443 500 -452 -500
		mu 0 4 307 308 317 316
		f 4 444 501 -453 -501
		mu 0 4 308 309 318 317
		f 4 445 502 -454 -502
		mu 0 4 309 310 319 318
		f 4 446 503 -455 -503
		mu 0 4 310 311 320 319
		f 4 447 496 -456 -504
		mu 0 4 311 312 321 320
		f 4 448 505 -457 -505
		mu 0 4 314 313 322 323
		f 4 449 506 -458 -506
		mu 0 4 313 315 324 322
		f 4 450 507 -459 -507
		mu 0 4 315 316 325 324
		f 4 451 508 -460 -508
		mu 0 4 316 317 326 325
		f 4 452 509 -461 -509
		mu 0 4 317 318 327 326
		f 4 453 510 -462 -510
		mu 0 4 318 319 328 327
		f 4 454 511 -463 -511
		mu 0 4 319 320 329 328
		f 4 455 504 -464 -512
		mu 0 4 320 321 330 329
		f 4 456 513 -465 -513
		mu 0 4 323 322 331 332
		f 4 457 514 -466 -514
		mu 0 4 322 324 333 331
		f 4 458 515 -467 -515
		mu 0 4 324 325 334 333
		f 4 459 516 -468 -516
		mu 0 4 325 326 335 334
		f 4 460 517 -469 -517
		mu 0 4 326 327 336 335
		f 4 461 518 -470 -518
		mu 0 4 327 328 337 336
		f 4 462 519 -471 -519
		mu 0 4 328 329 338 337
		f 4 463 512 -472 -520
		mu 0 4 329 330 339 338
		f 3 -417 -521 521
		mu 0 3 278 277 340
		f 3 -418 -522 522
		mu 0 3 281 278 341
		f 3 -419 -523 523
		mu 0 3 283 281 342
		f 3 -420 -524 524
		mu 0 3 285 283 343
		f 3 -421 -525 525
		mu 0 3 287 285 344
		f 3 -422 -526 526
		mu 0 3 289 287 345
		f 3 -423 -527 527
		mu 0 3 291 289 346
		f 3 -424 -528 520
		mu 0 3 293 291 347
		f 3 464 529 -529
		mu 0 3 332 331 348
		f 3 465 530 -530
		mu 0 3 331 333 349
		f 3 466 531 -531
		mu 0 3 333 334 350
		f 3 467 532 -532
		mu 0 3 334 335 351
		f 3 468 533 -533
		mu 0 3 335 336 352
		f 3 469 534 -534
		mu 0 3 336 337 353
		f 3 470 535 -535
		mu 0 3 337 338 354
		f 3 471 528 -536
		mu 0 3 338 339 355
		f 4 536 593 -545 -593
		mu 0 4 356 357 358 359
		f 4 537 594 -546 -594
		mu 0 4 357 360 361 358
		f 4 538 595 -547 -595
		mu 0 4 360 362 363 361
		f 4 539 596 -548 -596
		mu 0 4 362 364 365 363
		f 4 540 597 -549 -597
		mu 0 4 364 366 367 365
		f 4 541 598 -550 -598
		mu 0 4 366 368 369 367
		f 4 542 599 -551 -599
		mu 0 4 368 370 371 369
		f 4 543 592 -552 -600
		mu 0 4 370 372 373 371
		f 4 544 601 -553 -601
		mu 0 4 359 358 374 375
		f 4 545 602 -554 -602
		mu 0 4 358 361 376 374
		f 4 546 603 -555 -603
		mu 0 4 361 363 377 376
		f 4 547 604 -556 -604
		mu 0 4 363 365 378 377
		f 4 548 605 -557 -605
		mu 0 4 365 367 379 378
		f 4 549 606 -558 -606
		mu 0 4 367 369 380 379
		f 4 550 607 -559 -607
		mu 0 4 369 371 381 380
		f 4 551 600 -560 -608
		mu 0 4 371 373 382 381
		f 4 552 609 -561 -609
		mu 0 4 375 374 383 384
		f 4 553 610 -562 -610
		mu 0 4 374 376 385 383
		f 4 554 611 -563 -611
		mu 0 4 376 377 386 385
		f 4 555 612 -564 -612
		mu 0 4 377 378 387 386
		f 4 556 613 -565 -613
		mu 0 4 378 379 388 387
		f 4 557 614 -566 -614
		mu 0 4 379 380 389 388
		f 4 558 615 -567 -615
		mu 0 4 380 381 390 389
		f 4 559 608 -568 -616
		mu 0 4 381 382 391 390
		f 4 560 617 -569 -617
		mu 0 4 384 383 392 393
		f 4 561 618 -570 -618
		mu 0 4 383 385 394 392
		f 4 562 619 -571 -619
		mu 0 4 385 386 395 394
		f 4 563 620 -572 -620
		mu 0 4 386 387 396 395
		f 4 564 621 -573 -621
		mu 0 4 387 388 397 396
		f 4 565 622 -574 -622
		mu 0 4 388 389 398 397
		f 4 566 623 -575 -623
		mu 0 4 389 390 399 398
		f 4 567 616 -576 -624
		mu 0 4 390 391 400 399
		f 4 568 625 -577 -625
		mu 0 4 393 392 401 402
		f 4 569 626 -578 -626
		mu 0 4 392 394 403 401
		f 4 570 627 -579 -627
		mu 0 4 394 395 404 403
		f 4 571 628 -580 -628
		mu 0 4 395 396 405 404
		f 4 572 629 -581 -629
		mu 0 4 396 397 406 405
		f 4 573 630 -582 -630
		mu 0 4 397 398 407 406
		f 4 574 631 -583 -631
		mu 0 4 398 399 408 407
		f 4 575 624 -584 -632
		mu 0 4 399 400 409 408
		f 4 576 633 -585 -633
		mu 0 4 402 401 410 411
		f 4 577 634 -586 -634
		mu 0 4 401 403 412 410
		f 4 578 635 -587 -635
		mu 0 4 403 404 413 412
		f 4 579 636 -588 -636
		mu 0 4 404 405 414 413
		f 4 580 637 -589 -637
		mu 0 4 405 406 415 414
		f 4 581 638 -590 -638
		mu 0 4 406 407 416 415
		f 4 582 639 -591 -639
		mu 0 4 407 408 417 416
		f 4 583 632 -592 -640
		mu 0 4 408 409 418 417
		f 3 -537 -641 641
		mu 0 3 357 356 419
		f 3 -538 -642 642
		mu 0 3 360 357 420
		f 3 -539 -643 643
		mu 0 3 362 360 421
		f 3 -540 -644 644
		mu 0 3 364 362 422
		f 3 -541 -645 645
		mu 0 3 366 364 423
		f 3 -542 -646 646
		mu 0 3 368 366 424
		f 3 -543 -647 647
		mu 0 3 370 368 425
		f 3 -544 -648 640
		mu 0 3 372 370 426
		f 3 584 649 -649
		mu 0 3 411 410 427
		f 3 585 650 -650
		mu 0 3 410 412 428
		f 3 586 651 -651
		mu 0 3 412 413 429
		f 3 587 652 -652
		mu 0 3 413 414 430
		f 3 588 653 -653
		mu 0 3 414 415 431
		f 3 589 654 -654
		mu 0 3 415 416 432
		f 3 590 655 -655
		mu 0 3 416 417 433
		f 3 591 648 -656
		mu 0 3 417 418 434
		f 4 656 713 -665 -713
		mu 0 4 435 436 437 438
		f 4 657 714 -666 -714
		mu 0 4 436 439 440 437
		f 4 658 715 -667 -715
		mu 0 4 439 441 442 440
		f 4 659 716 -668 -716
		mu 0 4 441 443 444 442
		f 4 660 717 -669 -717
		mu 0 4 443 445 446 444
		f 4 661 718 -670 -718
		mu 0 4 445 447 448 446
		f 4 662 719 -671 -719
		mu 0 4 447 449 450 448
		f 4 663 712 -672 -720
		mu 0 4 449 451 452 450
		f 4 664 721 -673 -721
		mu 0 4 438 437 453 454
		f 4 665 722 -674 -722
		mu 0 4 437 440 455 453
		f 4 666 723 -675 -723
		mu 0 4 440 442 456 455
		f 4 667 724 -676 -724
		mu 0 4 442 444 457 456
		f 4 668 725 -677 -725
		mu 0 4 444 446 458 457
		f 4 669 726 -678 -726
		mu 0 4 446 448 459 458
		f 4 670 727 -679 -727
		mu 0 4 448 450 460 459
		f 4 671 720 -680 -728
		mu 0 4 450 452 461 460
		f 4 672 729 -681 -729
		mu 0 4 454 453 462 463
		f 4 673 730 -682 -730
		mu 0 4 453 455 464 462
		f 4 674 731 -683 -731
		mu 0 4 455 456 465 464
		f 4 675 732 -684 -732
		mu 0 4 456 457 466 465
		f 4 676 733 -685 -733
		mu 0 4 457 458 467 466
		f 4 677 734 -686 -734
		mu 0 4 458 459 468 467
		f 4 678 735 -687 -735
		mu 0 4 459 460 469 468
		f 4 679 728 -688 -736
		mu 0 4 460 461 470 469
		f 4 680 737 -689 -737
		mu 0 4 463 462 471 472
		f 4 681 738 -690 -738
		mu 0 4 462 464 473 471
		f 4 682 739 -691 -739
		mu 0 4 464 465 474 473
		f 4 683 740 -692 -740
		mu 0 4 465 466 475 474
		f 4 684 741 -693 -741
		mu 0 4 466 467 476 475
		f 4 685 742 -694 -742
		mu 0 4 467 468 477 476
		f 4 686 743 -695 -743
		mu 0 4 468 469 478 477
		f 4 687 736 -696 -744
		mu 0 4 469 470 479 478
		f 4 688 745 -697 -745
		mu 0 4 472 471 480 481
		f 4 689 746 -698 -746
		mu 0 4 471 473 482 480
		f 4 690 747 -699 -747
		mu 0 4 473 474 483 482
		f 4 691 748 -700 -748
		mu 0 4 474 475 484 483
		f 4 692 749 -701 -749
		mu 0 4 475 476 485 484
		f 4 693 750 -702 -750
		mu 0 4 476 477 486 485
		f 4 694 751 -703 -751
		mu 0 4 477 478 487 486
		f 4 695 744 -704 -752
		mu 0 4 478 479 488 487
		f 4 696 753 -705 -753
		mu 0 4 481 480 489 490
		f 4 697 754 -706 -754
		mu 0 4 480 482 491 489
		f 4 698 755 -707 -755
		mu 0 4 482 483 492 491
		f 4 699 756 -708 -756
		mu 0 4 483 484 493 492
		f 4 700 757 -709 -757
		mu 0 4 484 485 494 493
		f 4 701 758 -710 -758
		mu 0 4 485 486 495 494
		f 4 702 759 -711 -759
		mu 0 4 486 487 496 495
		f 4 703 752 -712 -760
		mu 0 4 487 488 497 496
		f 3 -657 -761 761
		mu 0 3 436 435 498
		f 3 -658 -762 762
		mu 0 3 439 436 499
		f 3 -659 -763 763
		mu 0 3 441 439 500
		f 3 -660 -764 764
		mu 0 3 443 441 501
		f 3 -661 -765 765
		mu 0 3 445 443 502
		f 3 -662 -766 766
		mu 0 3 447 445 503
		f 3 -663 -767 767
		mu 0 3 449 447 504
		f 3 -664 -768 760
		mu 0 3 451 449 505
		f 3 704 769 -769
		mu 0 3 490 489 506
		f 3 705 770 -770
		mu 0 3 489 491 507
		f 3 706 771 -771
		mu 0 3 491 492 508
		f 3 707 772 -772
		mu 0 3 492 493 509
		f 3 708 773 -773
		mu 0 3 493 494 510
		f 3 709 774 -774
		mu 0 3 494 495 511
		f 3 710 775 -775
		mu 0 3 495 496 512
		f 3 711 768 -776
		mu 0 3 496 497 513
		f 4 776 833 -785 -833
		mu 0 4 514 515 516 517
		f 4 777 834 -786 -834
		mu 0 4 515 518 519 516
		f 4 778 835 -787 -835
		mu 0 4 518 520 521 519
		f 4 779 836 -788 -836
		mu 0 4 520 522 523 521
		f 4 780 837 -789 -837
		mu 0 4 522 524 525 523
		f 4 781 838 -790 -838
		mu 0 4 524 526 527 525
		f 4 782 839 -791 -839
		mu 0 4 526 528 529 527
		f 4 783 832 -792 -840
		mu 0 4 528 530 531 529
		f 4 784 841 -793 -841
		mu 0 4 517 516 532 533
		f 4 785 842 -794 -842
		mu 0 4 516 519 534 532
		f 4 786 843 -795 -843
		mu 0 4 519 521 535 534
		f 4 787 844 -796 -844
		mu 0 4 521 523 536 535
		f 4 788 845 -797 -845
		mu 0 4 523 525 537 536
		f 4 789 846 -798 -846
		mu 0 4 525 527 538 537
		f 4 790 847 -799 -847
		mu 0 4 527 529 539 538
		f 4 791 840 -800 -848
		mu 0 4 529 531 540 539
		f 4 792 849 -801 -849
		mu 0 4 533 532 541 542
		f 4 793 850 -802 -850
		mu 0 4 532 534 543 541
		f 4 794 851 -803 -851
		mu 0 4 534 535 544 543
		f 4 795 852 -804 -852
		mu 0 4 535 536 545 544
		f 4 796 853 -805 -853
		mu 0 4 536 537 546 545
		f 4 797 854 -806 -854
		mu 0 4 537 538 547 546
		f 4 798 855 -807 -855
		mu 0 4 538 539 548 547
		f 4 799 848 -808 -856
		mu 0 4 539 540 549 548
		f 4 800 857 -809 -857
		mu 0 4 542 541 550 551
		f 4 801 858 -810 -858
		mu 0 4 541 543 552 550
		f 4 802 859 -811 -859
		mu 0 4 543 544 553 552
		f 4 803 860 -812 -860
		mu 0 4 544 545 554 553
		f 4 804 861 -813 -861
		mu 0 4 545 546 555 554
		f 4 805 862 -814 -862
		mu 0 4 546 547 556 555
		f 4 806 863 -815 -863
		mu 0 4 547 548 557 556
		f 4 807 856 -816 -864
		mu 0 4 548 549 558 557
		f 4 808 865 -817 -865
		mu 0 4 551 550 559 560
		f 4 809 866 -818 -866
		mu 0 4 550 552 561 559
		f 4 810 867 -819 -867
		mu 0 4 552 553 562 561
		f 4 811 868 -820 -868
		mu 0 4 553 554 563 562
		f 4 812 869 -821 -869
		mu 0 4 554 555 564 563
		f 4 813 870 -822 -870
		mu 0 4 555 556 565 564
		f 4 814 871 -823 -871
		mu 0 4 556 557 566 565
		f 4 815 864 -824 -872
		mu 0 4 557 558 567 566
		f 4 816 873 -825 -873
		mu 0 4 560 559 568 569
		f 4 817 874 -826 -874
		mu 0 4 559 561 570 568
		f 4 818 875 -827 -875
		mu 0 4 561 562 571 570
		f 4 819 876 -828 -876
		mu 0 4 562 563 572 571
		f 4 820 877 -829 -877
		mu 0 4 563 564 573 572
		f 4 821 878 -830 -878
		mu 0 4 564 565 574 573
		f 4 822 879 -831 -879
		mu 0 4 565 566 575 574
		f 4 823 872 -832 -880
		mu 0 4 566 567 576 575
		f 3 -777 -881 881
		mu 0 3 515 514 577
		f 3 -778 -882 882
		mu 0 3 518 515 578
		f 3 -779 -883 883
		mu 0 3 520 518 579
		f 3 -780 -884 884
		mu 0 3 522 520 580
		f 3 -781 -885 885
		mu 0 3 524 522 581
		f 3 -782 -886 886
		mu 0 3 526 524 582
		f 3 -783 -887 887
		mu 0 3 528 526 583
		f 3 -784 -888 880
		mu 0 3 530 528 584
		f 3 824 889 -889
		mu 0 3 569 568 585
		f 3 825 890 -890
		mu 0 3 568 570 586
		f 3 826 891 -891
		mu 0 3 570 571 587
		f 3 827 892 -892
		mu 0 3 571 572 588
		f 3 828 893 -893
		mu 0 3 572 573 589
		f 3 829 894 -894
		mu 0 3 573 574 590
		f 3 830 895 -895
		mu 0 3 574 575 591
		f 3 831 888 -896
		mu 0 3 575 576 592
		f 4 896 953 -905 -953
		mu 0 4 593 594 595 596
		f 4 897 954 -906 -954
		mu 0 4 594 597 598 595
		f 4 898 955 -907 -955
		mu 0 4 597 599 600 598
		f 4 899 956 -908 -956
		mu 0 4 599 601 602 600
		f 4 900 957 -909 -957
		mu 0 4 601 603 604 602
		f 4 901 958 -910 -958
		mu 0 4 603 605 606 604
		f 4 902 959 -911 -959
		mu 0 4 605 607 608 606
		f 4 903 952 -912 -960
		mu 0 4 607 609 610 608
		f 4 904 961 -913 -961
		mu 0 4 596 595 611 612
		f 4 905 962 -914 -962
		mu 0 4 595 598 613 611
		f 4 906 963 -915 -963
		mu 0 4 598 600 614 613
		f 4 907 964 -916 -964
		mu 0 4 600 602 615 614
		f 4 908 965 -917 -965
		mu 0 4 602 604 616 615
		f 4 909 966 -918 -966
		mu 0 4 604 606 617 616
		f 4 910 967 -919 -967
		mu 0 4 606 608 618 617
		f 4 911 960 -920 -968
		mu 0 4 608 610 619 618
		f 4 912 969 -921 -969
		mu 0 4 612 611 620 621
		f 4 913 970 -922 -970
		mu 0 4 611 613 622 620
		f 4 914 971 -923 -971
		mu 0 4 613 614 623 622
		f 4 915 972 -924 -972
		mu 0 4 614 615 624 623;
	setAttr ".fc[500:735]"
		f 4 916 973 -925 -973
		mu 0 4 615 616 625 624
		f 4 917 974 -926 -974
		mu 0 4 616 617 626 625
		f 4 918 975 -927 -975
		mu 0 4 617 618 627 626
		f 4 919 968 -928 -976
		mu 0 4 618 619 628 627
		f 4 920 977 -929 -977
		mu 0 4 621 620 629 630
		f 4 921 978 -930 -978
		mu 0 4 620 622 631 629
		f 4 922 979 -931 -979
		mu 0 4 622 623 632 631
		f 4 923 980 -932 -980
		mu 0 4 623 624 633 632
		f 4 924 981 -933 -981
		mu 0 4 624 625 634 633
		f 4 925 982 -934 -982
		mu 0 4 625 626 635 634
		f 4 926 983 -935 -983
		mu 0 4 626 627 636 635
		f 4 927 976 -936 -984
		mu 0 4 627 628 637 636
		f 4 928 985 -937 -985
		mu 0 4 630 629 638 639
		f 4 929 986 -938 -986
		mu 0 4 629 631 640 638
		f 4 930 987 -939 -987
		mu 0 4 631 632 641 640
		f 4 931 988 -940 -988
		mu 0 4 632 633 642 641
		f 4 932 989 -941 -989
		mu 0 4 633 634 643 642
		f 4 933 990 -942 -990
		mu 0 4 634 635 644 643
		f 4 934 991 -943 -991
		mu 0 4 635 636 645 644
		f 4 935 984 -944 -992
		mu 0 4 636 637 646 645
		f 4 936 993 -945 -993
		mu 0 4 639 638 647 648
		f 4 937 994 -946 -994
		mu 0 4 638 640 649 647
		f 4 938 995 -947 -995
		mu 0 4 640 641 650 649
		f 4 939 996 -948 -996
		mu 0 4 641 642 651 650
		f 4 940 997 -949 -997
		mu 0 4 642 643 652 651
		f 4 941 998 -950 -998
		mu 0 4 643 644 653 652
		f 4 942 999 -951 -999
		mu 0 4 644 645 654 653
		f 4 943 992 -952 -1000
		mu 0 4 645 646 655 654
		f 3 -897 -1001 1001
		mu 0 3 594 593 656
		f 3 -898 -1002 1002
		mu 0 3 597 594 657
		f 3 -899 -1003 1003
		mu 0 3 599 597 658
		f 3 -900 -1004 1004
		mu 0 3 601 599 659
		f 3 -901 -1005 1005
		mu 0 3 603 601 660
		f 3 -902 -1006 1006
		mu 0 3 605 603 661
		f 3 -903 -1007 1007
		mu 0 3 607 605 662
		f 3 -904 -1008 1000
		mu 0 3 609 607 663
		f 3 944 1009 -1009
		mu 0 3 648 647 664
		f 3 945 1010 -1010
		mu 0 3 647 649 665
		f 3 946 1011 -1011
		mu 0 3 649 650 666
		f 3 947 1012 -1012
		mu 0 3 650 651 667
		f 3 948 1013 -1013
		mu 0 3 651 652 668
		f 3 949 1014 -1014
		mu 0 3 652 653 669
		f 3 950 1015 -1015
		mu 0 3 653 654 670
		f 3 951 1008 -1016
		mu 0 3 654 655 671
		f 4 1016 1073 -1025 -1073
		mu 0 4 672 673 674 675
		f 4 1017 1074 -1026 -1074
		mu 0 4 673 676 677 674
		f 4 1018 1075 -1027 -1075
		mu 0 4 676 678 679 677
		f 4 1019 1076 -1028 -1076
		mu 0 4 678 680 681 679
		f 4 1020 1077 -1029 -1077
		mu 0 4 680 682 683 681
		f 4 1021 1078 -1030 -1078
		mu 0 4 682 684 685 683
		f 4 1022 1079 -1031 -1079
		mu 0 4 684 686 687 685
		f 4 1023 1072 -1032 -1080
		mu 0 4 686 688 689 687
		f 4 1024 1081 -1033 -1081
		mu 0 4 675 674 690 691
		f 4 1025 1082 -1034 -1082
		mu 0 4 674 677 692 690
		f 4 1026 1083 -1035 -1083
		mu 0 4 677 679 693 692
		f 4 1027 1084 -1036 -1084
		mu 0 4 679 681 694 693
		f 4 1028 1085 -1037 -1085
		mu 0 4 681 683 695 694
		f 4 1029 1086 -1038 -1086
		mu 0 4 683 685 696 695
		f 4 1030 1087 -1039 -1087
		mu 0 4 685 687 697 696
		f 4 1031 1080 -1040 -1088
		mu 0 4 687 689 698 697
		f 4 1032 1089 -1041 -1089
		mu 0 4 691 690 699 700
		f 4 1033 1090 -1042 -1090
		mu 0 4 690 692 701 699
		f 4 1034 1091 -1043 -1091
		mu 0 4 692 693 702 701
		f 4 1035 1092 -1044 -1092
		mu 0 4 693 694 703 702
		f 4 1036 1093 -1045 -1093
		mu 0 4 694 695 704 703
		f 4 1037 1094 -1046 -1094
		mu 0 4 695 696 705 704
		f 4 1038 1095 -1047 -1095
		mu 0 4 696 697 706 705
		f 4 1039 1088 -1048 -1096
		mu 0 4 697 698 707 706
		f 4 1040 1097 -1049 -1097
		mu 0 4 700 699 708 709
		f 4 1041 1098 -1050 -1098
		mu 0 4 699 701 710 708
		f 4 1042 1099 -1051 -1099
		mu 0 4 701 702 711 710
		f 4 1043 1100 -1052 -1100
		mu 0 4 702 703 712 711
		f 4 1044 1101 -1053 -1101
		mu 0 4 703 704 713 712
		f 4 1045 1102 -1054 -1102
		mu 0 4 704 705 714 713
		f 4 1046 1103 -1055 -1103
		mu 0 4 705 706 715 714
		f 4 1047 1096 -1056 -1104
		mu 0 4 706 707 716 715
		f 4 1048 1105 -1057 -1105
		mu 0 4 709 708 717 718
		f 4 1049 1106 -1058 -1106
		mu 0 4 708 710 719 717
		f 4 1050 1107 -1059 -1107
		mu 0 4 710 711 720 719
		f 4 1051 1108 -1060 -1108
		mu 0 4 711 712 721 720
		f 4 1052 1109 -1061 -1109
		mu 0 4 712 713 722 721
		f 4 1053 1110 -1062 -1110
		mu 0 4 713 714 723 722
		f 4 1054 1111 -1063 -1111
		mu 0 4 714 715 724 723
		f 4 1055 1104 -1064 -1112
		mu 0 4 715 716 725 724
		f 4 1056 1113 -1065 -1113
		mu 0 4 718 717 726 727
		f 4 1057 1114 -1066 -1114
		mu 0 4 717 719 728 726
		f 4 1058 1115 -1067 -1115
		mu 0 4 719 720 729 728
		f 4 1059 1116 -1068 -1116
		mu 0 4 720 721 730 729
		f 4 1060 1117 -1069 -1117
		mu 0 4 721 722 731 730
		f 4 1061 1118 -1070 -1118
		mu 0 4 722 723 732 731
		f 4 1062 1119 -1071 -1119
		mu 0 4 723 724 733 732
		f 4 1063 1112 -1072 -1120
		mu 0 4 724 725 734 733
		f 3 -1017 -1121 1121
		mu 0 3 673 672 735
		f 3 -1018 -1122 1122
		mu 0 3 676 673 736
		f 3 -1019 -1123 1123
		mu 0 3 678 676 737
		f 3 -1020 -1124 1124
		mu 0 3 680 678 738
		f 3 -1021 -1125 1125
		mu 0 3 682 680 739
		f 3 -1022 -1126 1126
		mu 0 3 684 682 740
		f 3 -1023 -1127 1127
		mu 0 3 686 684 741
		f 3 -1024 -1128 1120
		mu 0 3 688 686 742
		f 3 1064 1129 -1129
		mu 0 3 727 726 743
		f 3 1065 1130 -1130
		mu 0 3 726 728 744
		f 3 1066 1131 -1131
		mu 0 3 728 729 745
		f 3 1067 1132 -1132
		mu 0 3 729 730 746
		f 3 1068 1133 -1133
		mu 0 3 730 731 747
		f 3 1069 1134 -1134
		mu 0 3 731 732 748
		f 3 1070 1135 -1135
		mu 0 3 732 733 749
		f 3 1071 1128 -1136
		mu 0 3 733 734 750
		f 4 1136 1193 -1145 -1193
		mu 0 4 751 752 753 754
		f 4 1137 1194 -1146 -1194
		mu 0 4 752 755 756 753
		f 4 1138 1195 -1147 -1195
		mu 0 4 755 757 758 756
		f 4 1139 1196 -1148 -1196
		mu 0 4 757 759 760 758
		f 4 1140 1197 -1149 -1197
		mu 0 4 759 761 762 760
		f 4 1141 1198 -1150 -1198
		mu 0 4 761 763 764 762
		f 4 1142 1199 -1151 -1199
		mu 0 4 763 765 766 764
		f 4 1143 1192 -1152 -1200
		mu 0 4 765 767 768 766
		f 4 1144 1201 -1153 -1201
		mu 0 4 754 753 769 770
		f 4 1145 1202 -1154 -1202
		mu 0 4 753 756 771 769
		f 4 1146 1203 -1155 -1203
		mu 0 4 756 758 772 771
		f 4 1147 1204 -1156 -1204
		mu 0 4 758 760 773 772
		f 4 1148 1205 -1157 -1205
		mu 0 4 760 762 774 773
		f 4 1149 1206 -1158 -1206
		mu 0 4 762 764 775 774
		f 4 1150 1207 -1159 -1207
		mu 0 4 764 766 776 775
		f 4 1151 1200 -1160 -1208
		mu 0 4 766 768 777 776
		f 4 1152 1209 -1161 -1209
		mu 0 4 770 769 778 779
		f 4 1153 1210 -1162 -1210
		mu 0 4 769 771 780 778
		f 4 1154 1211 -1163 -1211
		mu 0 4 771 772 781 780
		f 4 1155 1212 -1164 -1212
		mu 0 4 772 773 782 781
		f 4 1156 1213 -1165 -1213
		mu 0 4 773 774 783 782
		f 4 1157 1214 -1166 -1214
		mu 0 4 774 775 784 783
		f 4 1158 1215 -1167 -1215
		mu 0 4 775 776 785 784
		f 4 1159 1208 -1168 -1216
		mu 0 4 776 777 786 785
		f 4 1160 1217 -1169 -1217
		mu 0 4 779 778 787 788
		f 4 1161 1218 -1170 -1218
		mu 0 4 778 780 789 787
		f 4 1162 1219 -1171 -1219
		mu 0 4 780 781 790 789
		f 4 1163 1220 -1172 -1220
		mu 0 4 781 782 791 790
		f 4 1164 1221 -1173 -1221
		mu 0 4 782 783 792 791
		f 4 1165 1222 -1174 -1222
		mu 0 4 783 784 793 792
		f 4 1166 1223 -1175 -1223
		mu 0 4 784 785 794 793
		f 4 1167 1216 -1176 -1224
		mu 0 4 785 786 795 794
		f 4 1168 1225 -1177 -1225
		mu 0 4 788 787 796 797
		f 4 1169 1226 -1178 -1226
		mu 0 4 787 789 798 796
		f 4 1170 1227 -1179 -1227
		mu 0 4 789 790 799 798
		f 4 1171 1228 -1180 -1228
		mu 0 4 790 791 800 799
		f 4 1172 1229 -1181 -1229
		mu 0 4 791 792 801 800
		f 4 1173 1230 -1182 -1230
		mu 0 4 792 793 802 801
		f 4 1174 1231 -1183 -1231
		mu 0 4 793 794 803 802
		f 4 1175 1224 -1184 -1232
		mu 0 4 794 795 804 803
		f 4 1176 1233 -1185 -1233
		mu 0 4 797 796 805 806
		f 4 1177 1234 -1186 -1234
		mu 0 4 796 798 807 805
		f 4 1178 1235 -1187 -1235
		mu 0 4 798 799 808 807
		f 4 1179 1236 -1188 -1236
		mu 0 4 799 800 809 808
		f 4 1180 1237 -1189 -1237
		mu 0 4 800 801 810 809
		f 4 1181 1238 -1190 -1238
		mu 0 4 801 802 811 810
		f 4 1182 1239 -1191 -1239
		mu 0 4 802 803 812 811
		f 4 1183 1232 -1192 -1240
		mu 0 4 803 804 813 812
		f 3 -1137 -1241 1241
		mu 0 3 752 751 814
		f 3 -1138 -1242 1242
		mu 0 3 755 752 815
		f 3 -1139 -1243 1243
		mu 0 3 757 755 816
		f 3 -1140 -1244 1244
		mu 0 3 759 757 817
		f 3 -1141 -1245 1245
		mu 0 3 761 759 818
		f 3 -1142 -1246 1246
		mu 0 3 763 761 819
		f 3 -1143 -1247 1247
		mu 0 3 765 763 820
		f 3 -1144 -1248 1240
		mu 0 3 767 765 821
		f 3 1184 1249 -1249
		mu 0 3 806 805 822
		f 3 1185 1250 -1250
		mu 0 3 805 807 823
		f 3 1186 1251 -1251
		mu 0 3 807 808 824
		f 3 1187 1252 -1252
		mu 0 3 808 809 825
		f 3 1188 1253 -1253
		mu 0 3 809 810 826
		f 3 1189 1254 -1254
		mu 0 3 810 811 827
		f 3 1190 1255 -1255
		mu 0 3 811 812 828
		f 3 1191 1248 -1256
		mu 0 3 812 813 829
		f 4 1256 1313 -1265 -1313
		mu 0 4 830 831 832 833
		f 4 1257 1314 -1266 -1314
		mu 0 4 831 834 835 832
		f 4 1258 1315 -1267 -1315
		mu 0 4 834 836 837 835
		f 4 1259 1316 -1268 -1316
		mu 0 4 836 838 839 837
		f 4 1260 1317 -1269 -1317
		mu 0 4 838 840 841 839
		f 4 1261 1318 -1270 -1318
		mu 0 4 840 842 843 841
		f 4 1262 1319 -1271 -1319
		mu 0 4 842 844 845 843
		f 4 1263 1312 -1272 -1320
		mu 0 4 844 846 847 845
		f 4 1264 1321 -1273 -1321
		mu 0 4 833 832 848 849
		f 4 1265 1322 -1274 -1322
		mu 0 4 832 835 850 848
		f 4 1266 1323 -1275 -1323
		mu 0 4 835 837 851 850
		f 4 1267 1324 -1276 -1324
		mu 0 4 837 839 852 851
		f 4 1268 1325 -1277 -1325
		mu 0 4 839 841 853 852
		f 4 1269 1326 -1278 -1326
		mu 0 4 841 843 854 853
		f 4 1270 1327 -1279 -1327
		mu 0 4 843 845 855 854
		f 4 1271 1320 -1280 -1328
		mu 0 4 845 847 856 855
		f 4 1272 1329 -1281 -1329
		mu 0 4 849 848 857 858
		f 4 1273 1330 -1282 -1330
		mu 0 4 848 850 859 857
		f 4 1274 1331 -1283 -1331
		mu 0 4 850 851 860 859
		f 4 1275 1332 -1284 -1332
		mu 0 4 851 852 861 860
		f 4 1276 1333 -1285 -1333
		mu 0 4 852 853 862 861
		f 4 1277 1334 -1286 -1334
		mu 0 4 853 854 863 862
		f 4 1278 1335 -1287 -1335
		mu 0 4 854 855 864 863
		f 4 1279 1328 -1288 -1336
		mu 0 4 855 856 865 864
		f 4 1280 1337 -1289 -1337
		mu 0 4 858 857 866 867
		f 4 1281 1338 -1290 -1338
		mu 0 4 857 859 868 866
		f 4 1282 1339 -1291 -1339
		mu 0 4 859 860 869 868
		f 4 1283 1340 -1292 -1340
		mu 0 4 860 861 870 869
		f 4 1284 1341 -1293 -1341
		mu 0 4 861 862 871 870
		f 4 1285 1342 -1294 -1342
		mu 0 4 862 863 872 871
		f 4 1286 1343 -1295 -1343
		mu 0 4 863 864 873 872
		f 4 1287 1336 -1296 -1344
		mu 0 4 864 865 874 873
		f 4 1288 1345 -1297 -1345
		mu 0 4 867 866 875 876
		f 4 1289 1346 -1298 -1346
		mu 0 4 866 868 877 875
		f 4 1290 1347 -1299 -1347
		mu 0 4 868 869 878 877
		f 4 1291 1348 -1300 -1348
		mu 0 4 869 870 879 878
		f 4 1292 1349 -1301 -1349
		mu 0 4 870 871 880 879
		f 4 1293 1350 -1302 -1350
		mu 0 4 871 872 881 880
		f 4 1294 1351 -1303 -1351
		mu 0 4 872 873 882 881
		f 4 1295 1344 -1304 -1352
		mu 0 4 873 874 883 882
		f 4 1296 1353 -1305 -1353
		mu 0 4 876 875 884 885
		f 4 1297 1354 -1306 -1354
		mu 0 4 875 877 886 884
		f 4 1298 1355 -1307 -1355
		mu 0 4 877 878 887 886
		f 4 1299 1356 -1308 -1356
		mu 0 4 878 879 888 887
		f 4 1300 1357 -1309 -1357
		mu 0 4 879 880 889 888
		f 4 1301 1358 -1310 -1358
		mu 0 4 880 881 890 889
		f 4 1302 1359 -1311 -1359
		mu 0 4 881 882 891 890
		f 4 1303 1352 -1312 -1360
		mu 0 4 882 883 892 891
		f 3 -1257 -1361 1361
		mu 0 3 831 830 893
		f 3 -1258 -1362 1362
		mu 0 3 834 831 894
		f 3 -1259 -1363 1363
		mu 0 3 836 834 895
		f 3 -1260 -1364 1364
		mu 0 3 838 836 896
		f 3 -1261 -1365 1365
		mu 0 3 840 838 897
		f 3 -1262 -1366 1366
		mu 0 3 842 840 898
		f 3 -1263 -1367 1367
		mu 0 3 844 842 899
		f 3 -1264 -1368 1360
		mu 0 3 846 844 900
		f 3 1304 1369 -1369
		mu 0 3 885 884 901
		f 3 1305 1370 -1370
		mu 0 3 884 886 902
		f 3 1306 1371 -1371
		mu 0 3 886 887 903
		f 3 1307 1372 -1372
		mu 0 3 887 888 904
		f 3 1308 1373 -1373
		mu 0 3 888 889 905
		f 3 1309 1374 -1374
		mu 0 3 889 890 906
		f 3 1310 1375 -1375
		mu 0 3 890 891 907
		f 3 1311 1368 -1376
		mu 0 3 891 892 908;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Mushrooms";
	rename -uid "5277F744-4AFE-2AB8-51D7-DEAC3104C710";
	setAttr ".t" -type "double3" 60 -1.9073486328125e-06 140 ;
	setAttr ".s" -type "double3" 1.356918146438888 1.356918146438888 1.356918146438888 ;
createNode mesh -n "MushroomsShape" -p "Mushrooms";
	rename -uid "1E5FAE92-4CDC-9E51-9497-9B93688DC82B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:259]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "sides";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[1:16]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 328 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.73096991 0.15432927 0.67677677
		 0.073223412 0.595671 0.019030184 0.50000012 1.4901161e-08 0.40432924 0.019030079
		 0.32322338 0.073223233 0.26903015 0.15432906 0.25 0.24999991 0.26903009 0.34567079
		 0.32322326 0.42677665 0.40432909 0.48096985 0.49999997 0.5 0.59567082 0.48096991
		 0.67677665 0.42677671 0.73096991 0.34567088 0.75 0.25 0.25 0.5 0.28125 0.5 0.3125
		 0.5 0.34375 0.5 0.375 0.5 0.40625 0.5 0.4375 0.5 0.46875 0.5 0.5 0.5 0.53125 0.5
		 0.5625 0.5 0.59375 0.5 0.625 0.5 0.65625 0.5 0.6875 0.5 0.71875 0.5 0.75 0.5 0.5
		 1 0.73096991 0.15432927 0.75 0.25 0.73096991 0.34567088 0.67677665 0.42677671 0.59567082
		 0.48096991 0.49999997 0.5 0.40432909 0.48096985 0.32322326 0.42677665 0.26903009
		 0.34567079 0.25 0.24999991 0.26903015 0.15432906 0.32322338 0.073223233 0.40432924
		 0.019030079 0.50000012 1.4901161e-08 0.595671 0.019030184 0.67677677 0.073223412
		 0.73096991 0.15432927 0.75 0.25 0.73096991 0.34567088 0.67677665 0.42677671 0.59567082
		 0.48096991 0.49999997 0.5 0.40432909 0.48096985 0.32322326 0.42677665 0.26903009
		 0.34567079 0.25 0.24999991 0.26903015 0.15432906 0.32322338 0.073223233 0.40432924
		 0.019030079 0.50000012 1.4901161e-08 0.595671 0.019030184 0.67677677 0.073223412
		 0.75 0.25 0.73096991 0.34567088 0.67677665 0.42677671 0.59567082 0.48096991 0.49999994
		 0.5 0.40432909 0.48096985 0.32322326 0.42677665 0.26903009 0.34567079 0.25 0.24999991
		 0.26903015 0.15432906 0.32322338 0.073223233 0.40432924 0.019030079 0.50000012 1.4901161e-08
		 0.595671 0.019030184 0.67677677 0.073223412 0.73096991 0.15432927 0.73096991 0.15432927
		 0.75 0.25 0.73096991 0.34567088 0.67677665 0.42677671 0.59567082 0.48096991 0.49999997
		 0.5 0.40432909 0.48096985 0.32322326 0.42677665 0.26903009 0.34567079 0.25 0.24999991
		 0.26903015 0.15432906 0.32322338 0.073223233 0.40432924 0.019030079 0.50000012 1.4901161e-08
		 0.595671 0.019030184 0.67677677 0.073223412 0.25 0.5 0.28125 0.5 0.5 1 0.3125 0.5
		 0.34375 0.5 0.375 0.5 0.40625 0.5 0.4375 0.5 0.46875 0.5 0.5 0.5 0.53125 0.5 0.5625
		 0.5 0.59375 0.5 0.625 0.5 0.65625 0.5 0.6875 0.5 0.71875 0.5 0.75 0.5 0.73096991
		 0.15432927 0.75 0.25 0.75 0.25 0.73096991 0.15432927 0.73096991 0.34567088 0.73096991
		 0.34567088 0.67677665 0.42677671 0.67677665 0.42677671 0.59567082 0.48096991 0.59567082
		 0.48096991 0.49999997 0.5 0.49999997 0.5 0.40432909 0.48096985 0.40432909 0.48096985
		 0.32322326 0.42677665 0.32322326 0.42677665 0.26903009 0.34567079 0.26903009 0.34567079
		 0.25 0.24999991 0.25 0.24999991 0.26903015 0.15432906 0.26903015 0.15432906 0.32322338
		 0.073223233 0.32322338 0.073223233 0.40432924 0.019030079 0.40432924 0.019030079
		 0.50000012 1.4901161e-08 0.50000012 1.4901161e-08 0.595671 0.019030184 0.595671 0.019030184
		 0.67677677 0.073223412 0.67677677 0.073223412 0.73096991 0.15432927 0.75 0.25 0.73096991
		 0.34567088 0.67677665 0.42677671 0.59567082 0.48096991 0.49999994 0.5 0.40432909
		 0.48096985 0.32322326 0.42677665 0.26903009 0.34567079 0.25 0.24999991 0.26903015
		 0.15432906 0.32322338 0.073223233 0.40432924 0.019030079 0.50000012 1.4901161e-08
		 0.595671 0.019030184 0.67677677 0.073223412 0.73096991 0.15432927 0.75 0.25 0.73096991
		 0.34567088 0.67677665 0.42677671 0.59567082 0.48096991 0.49999997 0.5 0.40432909
		 0.48096985 0.32322326 0.42677665 0.26903009 0.34567079 0.25 0.24999991 0.26903015
		 0.15432906 0.32322338 0.073223233 0.40432924 0.019030079 0.50000012 1.4901161e-08
		 0.595671 0.019030184 0.67677677 0.073223412 0.25 0.5 0.28125 0.5 0.5 1 0.3125 0.5
		 0.34375 0.5 0.375 0.5 0.40625 0.5 0.4375 0.5 0.46875 0.5 0.5 0.5 0.53125 0.5 0.5625
		 0.5 0.59375 0.5 0.625 0.5 0.65625 0.5 0.6875 0.5 0.71875 0.5 0.75 0.5 0.73096991
		 0.15432927 0.75 0.25 0.75 0.25 0.73096991 0.15432927 0.73096991 0.34567088 0.73096991
		 0.34567088 0.67677665 0.42677671 0.67677665 0.42677671 0.59567082 0.48096991 0.59567082
		 0.48096991 0.49999997 0.5 0.49999997 0.5 0.40432909 0.48096985 0.40432909 0.48096985
		 0.32322326 0.42677665 0.32322326 0.42677665 0.26903009 0.34567079 0.26903009 0.34567079
		 0.25 0.24999991 0.25 0.24999991 0.26903015 0.15432906 0.26903015 0.15432906 0.32322338
		 0.073223233 0.32322338 0.073223233 0.40432924 0.019030079 0.40432924 0.019030079
		 0.50000012 1.4901161e-08 0.50000012 1.4901161e-08 0.595671 0.019030184 0.595671 0.019030184
		 0.67677677 0.073223412 0.67677677 0.073223412 0.73096991 0.15432927 0.75 0.25 0.73096991
		 0.34567088 0.67677665 0.42677671 0.59567082 0.48096991 0.49999994 0.5 0.40432909
		 0.48096985 0.32322326 0.42677665 0.26903009 0.34567079 0.25 0.24999991 0.26903015
		 0.15432906 0.32322338 0.073223233 0.40432924 0.019030079 0.50000012 1.4901161e-08
		 0.595671 0.019030184 0.67677677 0.073223412 0.73096991 0.15432927 0.75 0.25 0.73096991
		 0.34567088 0.67677665 0.42677671;
	setAttr ".uvst[0].uvsp[250:327]" 0.59567082 0.48096991 0.49999997 0.5 0.40432909
		 0.48096985 0.32322326 0.42677665 0.26903009 0.34567079 0.25 0.24999991 0.26903015
		 0.15432906 0.32322338 0.073223233 0.40432924 0.019030079 0.50000012 1.4901161e-08
		 0.595671 0.019030184 0.67677677 0.073223412 0.25 0.5 0.28125 0.5 0.5 1 0.3125 0.5
		 0.34375 0.5 0.375 0.5 0.40625 0.5 0.4375 0.5 0.46875 0.5 0.5 0.5 0.53125 0.5 0.5625
		 0.5 0.59375 0.5 0.625 0.5 0.65625 0.5 0.6875 0.5 0.71875 0.5 0.75 0.5 0.73096991
		 0.15432927 0.75 0.25 0.75 0.25 0.73096991 0.15432927 0.73096991 0.34567088 0.73096991
		 0.34567088 0.67677665 0.42677671 0.67677665 0.42677671 0.59567082 0.48096991 0.59567082
		 0.48096991 0.49999997 0.5 0.49999997 0.5 0.40432909 0.48096985 0.40432909 0.48096985
		 0.32322326 0.42677665 0.32322326 0.42677665 0.26903009 0.34567079 0.26903009 0.34567079
		 0.25 0.24999991 0.25 0.24999991 0.26903015 0.15432906 0.26903015 0.15432906 0.32322338
		 0.073223233 0.32322338 0.073223233 0.40432924 0.019030079 0.40432924 0.019030079
		 0.50000012 1.4901161e-08 0.50000012 1.4901161e-08 0.595671 0.019030184 0.595671 0.019030184
		 0.67677677 0.073223412 0.67677677 0.073223412 0.73096991 0.15432927 0.75 0.25 0.73096991
		 0.34567088 0.67677665 0.42677671 0.59567082 0.48096991 0.49999994 0.5 0.40432909
		 0.48096985 0.32322326 0.42677665 0.26903009 0.34567079 0.25 0.24999991 0.26903015
		 0.15432906 0.32322338 0.073223233 0.40432924 0.019030079 0.50000012 1.4901161e-08
		 0.595671 0.019030184 0.67677677 0.073223412;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 260 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552396 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391;
	setAttr ".pt[166:259]" -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 
		-52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 
		1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 -4.6552391 -52.566528 1.9073486e-06 
		-4.6552391 -52.566528 1.9073486e-06 -4.6552391;
	setAttr -s 260 ".vt";
	setAttr ".vt[0:165]"  62.51993942 13.57588959 -3.061463118 59.86433792 13.57588959 -4.73542976
		 58.19037247 13.57588959 -7.39103413 55.12890625 13.57588959 -6.69691277 52.067440033 13.57588959 -7.39103746
		 50.39347076 13.57588959 -4.73543453 47.73786926 13.57588959 -3.06147027 48.43198776 13.57588959 -2.3561674e-06
		 47.73786545 13.57588959 3.061465025 50.39346695 13.57588959 4.73543167 52.067432404 13.57588959 7.39103556
		 55.12890244 13.57588959 6.69691277 58.19036865 13.57588959 7.39103651 59.86433411 13.57588959 4.7354331
		 62.51993942 13.57588959 3.061467648 61.82581711 13.57588959 3.8835015e-08 55.12890244 28.57588959 0
		 55.91662979 14.70882034 2.1138868e-07 55.85666656 14.70882034 -0.30144864 55.85666656 14.70882034 0.301449
		 55.68590927 14.70882034 0.55700582 55.43035126 14.70882034 0.72776389 55.12890244 14.70882034 0.78772521
		 54.8274498 14.70882034 0.72776341 54.5718956 14.70882034 0.55700624 54.40113831 14.70882034 0.30144918
		 54.34117508 14.70882034 2.1986455e-07 54.40113831 14.70882034 -0.3014501 54.5718956 14.70882034 -0.55700672
		 54.82745361 14.70882034 -0.72776425 55.12890244 14.70882034 -0.78772569 55.43035126 14.70882034 -0.72776353
		 55.68590927 14.70882034 -0.5570057 54.64868164 0 2.1138868e-07 54.58871841 0 -0.30144864
		 54.58871841 0 0.301449 54.41796112 0 0.55700582 54.16240311 0 0.72776389 53.86095428 0 0.78772521
		 53.55950546 0 0.72776341 53.30394745 0 0.55700624 53.13319397 0 0.30144918 53.073230743 0 2.1986455e-07
		 53.13319397 0 -0.3014501 53.30394745 0 -0.55700672 53.55950546 0 -0.72776425 53.86095428 0 -0.78772569
		 54.16240311 0 -0.72776353 54.41796112 0 -0.5570057 57.13479996 6.0026988983 2.1138868e-07
		 57.074840546 6.0026988983 0.301449 56.90408325 6.0026988983 0.55700582 56.64852524 6.0026988983 0.72776389
		 56.34707642 6.0026988983 0.78772521 56.045623779 6.0026988983 0.72776341 55.79006958 6.0026988983 0.55700624
		 55.61931229 6.0026988983 0.30144918 55.55934906 6.0026988983 2.1986455e-07 55.61931229 6.0026988983 -0.3014501
		 55.79006958 6.0026988983 -0.55700672 56.045627594 6.0026988983 -0.72776425 56.34707642 6.0026988983 -0.78772569
		 56.64852524 6.0026988983 -0.72776353 56.90408325 6.0026988983 -0.5570057 57.074836731 6.0026988983 -0.30144864
		 49.87140656 10.98769379 14.56088829 51.47574234 10.98769379 14.92632103 52.76559448 10.98769379 15.9479475
		 54.15843201 10.98769379 15.071908951 55.79289246 10.98769379 14.88224697 56.1583252 10.98769379 13.27790833
		 57.17995071 10.98769379 11.98805714 56.30391312 10.98769379 10.59521961 56.11425018 10.98769379 8.96075726
		 54.5099144 10.98769379 8.59532547 53.22006226 10.98769379 7.57369804 51.82722473 10.98769379 8.4497385
		 50.19276047 10.98769379 8.63940048 49.82733154 10.98769379 10.24373913 48.80570221 10.98769379 11.53359127
		 49.68174362 10.98769379 12.92642784 52.99282837 17.27472115 11.76082325 52.60336304 11.58153248 11.89792728
		 52.6854744 11.58153248 12.036533356 52.5805397 11.58153248 11.7384491 52.62048721 11.58153248 11.58237648
		 52.71711731 11.58153248 11.45347023 52.85572433 11.58153248 11.37135696 53.015205383 11.58153248 11.34853458
		 53.17127609 11.58153248 11.38848114 53.30018234 11.58153248 11.48511314 53.3822937 11.58153248 11.62371826
		 53.40511703 11.58153248 11.78319836 53.36516953 11.58153248 11.93927097 53.26853943 11.58153248 12.068177223
		 53.1299324 11.58153248 12.15029049 52.97045517 11.58153248 12.17311096 52.81438065 11.58153248 12.13316536
		 53.32162094 -1.9073486e-06 11.64507771 53.43533325 -1.9073486e-06 11.83701897 53.29001999 -1.9073486e-06 11.42423153
		 53.34533691 -1.9073486e-06 11.20810223 53.47915268 -1.9073486e-06 11.029593468 53.67109299 -1.9073486e-06 10.91588211
		 53.89194107 -1.9073486e-06 10.88427925 54.10807037 -1.9073486e-06 10.93959618 54.28657532 -1.9073486e-06 11.073411942
		 54.40028763 -1.9073486e-06 11.2653532 54.4318924 -1.9073486e-06 11.48620033 54.37657547 -1.9073486e-06 11.70232964
		 54.2427597 -1.9073486e-06 11.88083839 54.050819397 -1.9073486e-06 11.9945488 53.82997131 -1.9073486e-06 12.026151657
		 53.61384201 -1.9073486e-06 11.97083473 51.6194458 4.35710049 12.24429607 51.58784485 4.35710049 12.023450851
		 51.64316177 4.35710049 11.80732059 51.77697754 4.35710049 11.62881184 51.96891785 4.35710049 11.51510143
		 52.18976593 4.35710049 11.48349762 52.40589523 4.35710049 11.53881454 52.58440018 4.35710049 11.67263126
		 52.69811249 4.35710049 11.86457157 52.72971725 4.35710049 12.085418701 52.67440033 4.35710049 12.301548
		 52.54058456 4.35710049 12.48005676 52.34864044 4.35710049 12.59376717 52.12779617 4.35710049 12.62537003
		 51.91166687 4.35710049 12.5700531 51.73315811 4.35710049 12.43623734 66.28922272 12.95103455 4.38241386
		 64.65073395 12.95103455 4.23144054 63.23757553 12.95103455 3.38857317 61.97223663 12.95103455 4.44040632
		 60.37698746 12.95103455 4.84366131 60.22601318 12.95103455 6.48215199 59.38314438 12.95103455 7.89530897
		 60.43497849 12.95103455 9.1606493 60.83823395 12.95103455 10.75589943 62.47672272 12.95103455 10.9068718
		 63.88988113 12.95103455 11.74973965 65.15522003 12.95103455 10.69790459 66.75047302 12.95103455 10.29464912
		 66.90144348 12.95103455 8.6561594 67.74430847 12.95103455 7.24300194 66.69247437 12.95103455 5.97766161
		 63.56372833 22.21834564 7.56915617 63.93174744 13.65098381 7.3819561 63.8320961 13.65098381 7.25537157
		 63.97537231 13.65098381 7.53704071 63.95632553 13.65098381 7.69701481 63.87751389 13.65098381 7.83752394
		 63.75092697 13.65098381 7.93717575 63.59584045 13.65098381 7.98080015 63.43586731 13.65098381 7.96175575
		 63.29536057 13.65098381 7.88294077 63.19570923 13.65098381 7.75635576 63.15208435 13.65098381 7.60127068
		 63.17112732 13.65098381 7.44129705 63.24994278 13.65098381 7.30078793 63.37652969 13.65098381 7.20113659
		 63.5316124 13.65098381 7.15751219 63.69158554 13.65098381 7.17655706 61.55537033 0 7.72719288
		 61.41737366 0 7.55189848 61.61578369 0 7.94195366;
	setAttr ".vt[166:259]" 61.58940887 0 8.16348553 61.48026657 0 8.35806274 61.30496979 0 8.49605942
		 61.090209961 0 8.55647087 60.86867905 0 8.53009796 60.67410278 0 8.42095566 60.53610611 0 8.24566078
		 60.47569275 0 8.030899048 60.50206757 0 7.80936766 60.61120987 0 7.61479139 60.78650284 0 7.47679377
		 61.0012664795 0 7.41638279 61.22279739 0 7.4427557 64.36933136 5.13565159 6.90903187
		 64.42974854 5.13565159 7.12379217 64.40337372 5.13565159 7.34532404 64.2942276 5.13565159 7.53990078
		 64.11893463 5.13565159 7.67789841 63.90417099 5.13565159 7.73830986 63.68264008 5.13565159 7.71193695
		 63.48806763 5.13565159 7.60279417 63.35006714 5.13565159 7.42749977 63.28965759 5.13565159 7.21273804
		 63.31602859 5.13565159 6.99120665 63.4251709 5.13565159 6.79662991 63.60046768 5.13565159 6.65863228
		 63.81522751 5.13565159 6.59822178 64.036758423 5.13565159 6.62459469 64.2313385 5.13565159 6.73373747
		 36.68894958 10.9048481 7.49009514 38.8731308 10.9048481 8.75006294 40.3003273 10.9048481 10.82883453
		 42.73571014 10.9048481 10.17531586 45.21479797 10.9048481 10.63605118 46.47476959 10.9048481 8.45186806
		 48.55353928 10.9048481 7.024673462 47.90002441 10.9048481 4.58929062 48.36075592 10.9048481 2.11019874
		 46.17657471 10.9048481 0.85023069 44.7493782 10.9048481 -1.22854042 42.31399536 10.9048481 -0.57502079
		 39.83490372 10.9048481 -1.035754681 38.57493591 10.9048481 1.14842868 36.49616241 10.9048481 2.57562399
		 37.14968109 10.9048481 5.011006355 42.52485275 22.95361519 4.80014753 41.8925972 11.81487656 4.82494974
		 41.9502182 11.81487656 5.065014839 41.93123245 11.81487656 4.58110857 42.060241699 11.81487656 4.37061357
		 42.25998688 11.81487656 4.22551107 42.50004959 11.81487656 4.16789246 42.74389267 11.81487656 4.20652866
		 42.95438766 11.81487656 4.33553743 43.099487305 11.81487656 4.53527975 43.15710831 11.81487656 4.77534485
		 43.11847305 11.81487656 5.01918745 42.98946381 11.81487656 5.22968197 42.78971863 11.81487656 5.37478447
		 42.54965591 11.81487656 5.43240261 42.30581284 11.81487656 5.3937664 42.095317841 11.81487656 5.26475716
		 42.91029358 0 4.78502703 42.96791458 0 5.025092125 42.94892883 0 4.54118633 43.07793808 0 4.33069134
		 43.27768326 0 4.18558884 43.51774597 0 4.12797022 43.76158905 0 4.16660595 43.97208405 0 4.2956152
		 44.11718369 0 4.49535751 44.17480469 0 4.73542261 44.13616943 0 4.97926474 44.0071601868 0 5.18975973
		 43.80741882 0 5.33486176 43.56735229 0 5.39248037 43.32350922 0 5.35384417 43.11301422 0 5.22483444
		 40.91485214 4.8216753 4.86330509 40.9534874 4.8216753 4.61946392 41.082496643 4.8216753 4.40896893
		 41.28223801 4.8216753 4.26386642 41.52230453 4.8216753 4.20624781 41.76614761 4.8216753 4.24488401
		 41.97664261 4.8216753 4.37389278 42.12174225 4.8216753 4.5736351 42.17936325 4.8216753 4.8137002
		 42.14072418 4.8216753 5.057542801 42.011714935 4.8216753 5.26803732 41.81197357 4.8216753 5.41313934
		 41.57190704 4.8216753 5.47075796 41.32806778 4.8216753 5.43212175 41.11757278 4.8216753 5.30311251
		 40.97246933 4.8216753 5.10337019;
	setAttr -s 512 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 0 16 1 1 16 1 2 16 1 3 16 1
		 4 16 1 5 16 1 6 16 1 7 16 1 8 16 1 9 16 1 10 16 1 11 16 1 12 16 1 13 16 1 14 16 1
		 15 16 1 15 17 1 0 18 1 17 18 0 14 19 1 19 17 0 13 20 1 20 19 0 12 21 1 21 20 0 11 22 1
		 22 21 0 10 23 1 23 22 0 9 24 1 24 23 0 8 25 1 25 24 0 7 26 1 26 25 0 6 27 1 27 26 0
		 5 28 1 28 27 0 4 29 1 29 28 0 3 30 1 30 29 0 2 31 1 31 30 0 1 32 1 32 31 0 18 32 0
		 17 49 0 18 64 0 33 34 0 19 50 0 35 33 0 20 51 0 36 35 0 21 52 0 37 36 0 22 53 0 38 37 0
		 23 54 0 39 38 0 24 55 0 40 39 0 25 56 0 41 40 0 26 57 0 42 41 0 27 58 0 43 42 0 28 59 0
		 44 43 0 29 60 0 45 44 0 30 61 0 46 45 0 31 62 0 47 46 0 32 63 0 48 47 0 34 48 0 49 33 0
		 50 35 0 51 36 0 52 37 0 53 38 0 54 39 0 55 40 0 56 41 0 57 42 0 58 43 0 59 44 0 60 45 0
		 61 46 0 62 47 0 63 48 0 64 34 0 49 50 1 50 51 1 51 52 1 52 53 1 53 54 1 54 55 1 55 56 1
		 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1 64 49 1 65 66 0 66 67 0
		 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0 75 76 0 76 77 0 77 78 0
		 78 79 0 79 80 0 80 65 0 65 81 1 66 81 1 67 81 1 68 81 1 69 81 1 70 81 1 71 81 1 72 81 1
		 73 81 1 74 81 1 75 81 1 76 81 1 77 81 1 78 81 1 79 81 1 80 81 1 80 82 1 65 83 1 82 83 0
		 79 84 1 84 82 0 78 85 1;
	setAttr ".ed[166:331]" 85 84 0 77 86 1 86 85 0 76 87 1 87 86 0 75 88 1 88 87 0
		 74 89 1 89 88 0 73 90 1 90 89 0 72 91 1 91 90 0 71 92 1 92 91 0 70 93 1 93 92 0 69 94 1
		 94 93 0 68 95 1 95 94 0 67 96 1 96 95 0 66 97 1 97 96 0 83 97 0 82 114 0 83 129 0
		 98 99 0 84 115 0 100 98 0 85 116 0 101 100 0 86 117 0 102 101 0 87 118 0 103 102 0
		 88 119 0 104 103 0 89 120 0 105 104 0 90 121 0 106 105 0 91 122 0 107 106 0 92 123 0
		 108 107 0 93 124 0 109 108 0 94 125 0 110 109 0 95 126 0 111 110 0 96 127 0 112 111 0
		 97 128 0 113 112 0 99 113 0 114 98 0 115 100 0 116 101 0 117 102 0 118 103 0 119 104 0
		 120 105 0 121 106 0 122 107 0 123 108 0 124 109 0 125 110 0 126 111 0 127 112 0 128 113 0
		 129 99 0 114 115 1 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1 121 122 1
		 122 123 1 123 124 1 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 114 1 130 131 0
		 131 132 0 132 133 0 133 134 0 134 135 0 135 136 0 136 137 0 137 138 0 138 139 0 139 140 0
		 140 141 0 141 142 0 142 143 0 143 144 0 144 145 0 145 130 0 130 146 1 131 146 1 132 146 1
		 133 146 1 134 146 1 135 146 1 136 146 1 137 146 1 138 146 1 139 146 1 140 146 1 141 146 1
		 142 146 1 143 146 1 144 146 1 145 146 1 145 147 1 130 148 1 147 148 0 144 149 1 149 147 0
		 143 150 1 150 149 0 142 151 1 151 150 0 141 152 1 152 151 0 140 153 1 153 152 0 139 154 1
		 154 153 0 138 155 1 155 154 0 137 156 1 156 155 0 136 157 1 157 156 0 135 158 1 158 157 0
		 134 159 1 159 158 0 133 160 1 160 159 0 132 161 1 161 160 0 131 162 1 162 161 0 148 162 0
		 147 179 0 148 194 0 163 164 0 149 180 0 165 163 0 150 181 0 166 165 0 151 182 0 167 166 0
		 152 183 0 168 167 0 153 184 0;
	setAttr ".ed[332:497]" 169 168 0 154 185 0 170 169 0 155 186 0 171 170 0 156 187 0
		 172 171 0 157 188 0 173 172 0 158 189 0 174 173 0 159 190 0 175 174 0 160 191 0 176 175 0
		 161 192 0 177 176 0 162 193 0 178 177 0 164 178 0 179 163 0 180 165 0 181 166 0 182 167 0
		 183 168 0 184 169 0 185 170 0 186 171 0 187 172 0 188 173 0 189 174 0 190 175 0 191 176 0
		 192 177 0 193 178 0 194 164 0 179 180 1 180 181 1 181 182 1 182 183 1 183 184 1 184 185 1
		 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1 191 192 1 192 193 1 193 194 1
		 194 179 1 195 196 0 196 197 0 197 198 0 198 199 0 199 200 0 200 201 0 201 202 0 202 203 0
		 203 204 0 204 205 0 205 206 0 206 207 0 207 208 0 208 209 0 209 210 0 210 195 0 195 211 1
		 196 211 1 197 211 1 198 211 1 199 211 1 200 211 1 201 211 1 202 211 1 203 211 1 204 211 1
		 205 211 1 206 211 1 207 211 1 208 211 1 209 211 1 210 211 1 210 212 1 195 213 1 212 213 0
		 209 214 1 214 212 0 208 215 1 215 214 0 207 216 1 216 215 0 206 217 1 217 216 0 205 218 1
		 218 217 0 204 219 1 219 218 0 203 220 1 220 219 0 202 221 1 221 220 0 201 222 1 222 221 0
		 200 223 1 223 222 0 199 224 1 224 223 0 198 225 1 225 224 0 197 226 1 226 225 0 196 227 1
		 227 226 0 213 227 0 212 244 0 213 259 0 228 229 0 214 245 0 230 228 0 215 246 0 231 230 0
		 216 247 0 232 231 0 217 248 0 233 232 0 218 249 0 234 233 0 219 250 0 235 234 0 220 251 0
		 236 235 0 221 252 0 237 236 0 222 253 0 238 237 0 223 254 0 239 238 0 224 255 0 240 239 0
		 225 256 0 241 240 0 226 257 0 242 241 0 227 258 0 243 242 0 229 243 0 244 228 0 245 230 0
		 246 231 0 247 232 0 248 233 0 249 234 0 250 235 0 251 236 0 252 237 0 253 238 0 254 239 0
		 255 240 0 256 241 0 257 242 0 258 243 0 259 229 0 244 245 1 245 246 1;
	setAttr ".ed[498:511]" 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1
		 252 253 1 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 244 1;
	setAttr -s 260 -ch 1024 ".fc[0:259]" -type "polyFaces" 
		f 16 -67 -69 -71 -73 -75 -77 -79 -81 -83 -85 -87 -89 -91 -93 -95 -96
		mu 0 16 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65
		f 3 0 17 -17
		mu 0 3 16 17 33
		f 3 1 18 -18
		mu 0 3 17 18 33
		f 3 2 19 -19
		mu 0 3 18 19 33
		f 3 3 20 -20
		mu 0 3 19 20 33
		f 3 4 21 -21
		mu 0 3 20 21 33
		f 3 5 22 -22
		mu 0 3 21 22 33
		f 3 6 23 -23
		mu 0 3 22 23 33
		f 3 7 24 -24
		mu 0 3 23 24 33
		f 3 8 25 -25
		mu 0 3 24 25 33
		f 3 9 26 -26
		mu 0 3 25 26 33
		f 3 10 27 -27
		mu 0 3 26 27 33
		f 3 11 28 -28
		mu 0 3 27 28 33
		f 3 12 29 -29
		mu 0 3 28 29 33
		f 3 13 30 -30
		mu 0 3 29 30 33
		f 3 14 31 -31
		mu 0 3 30 31 33
		f 3 15 16 -32
		mu 0 3 31 32 33
		f 4 -16 32 34 -34
		mu 0 4 0 15 35 34
		f 4 -15 35 36 -33
		mu 0 4 15 14 36 35
		f 4 -14 37 38 -36
		mu 0 4 14 13 37 36
		f 4 -13 39 40 -38
		mu 0 4 13 12 38 37
		f 4 -12 41 42 -40
		mu 0 4 12 11 39 38
		f 4 -11 43 44 -42
		mu 0 4 11 10 40 39
		f 4 -10 45 46 -44
		mu 0 4 10 9 41 40
		f 4 -9 47 48 -46
		mu 0 4 9 8 42 41
		f 4 -8 49 50 -48
		mu 0 4 8 7 43 42
		f 4 -7 51 52 -50
		mu 0 4 7 6 44 43
		f 4 -6 53 54 -52
		mu 0 4 6 5 45 44
		f 4 -5 55 56 -54
		mu 0 4 5 4 46 45
		f 4 -4 57 58 -56
		mu 0 4 4 3 47 46
		f 4 -3 59 60 -58
		mu 0 4 3 2 48 47
		f 4 -2 61 62 -60
		mu 0 4 2 1 49 48
		f 4 -1 33 63 -62
		mu 0 4 1 0 34 49
		f 4 127 96 66 -112
		mu 0 4 81 66 51 50
		f 4 112 97 68 -97
		mu 0 4 66 67 52 51
		f 4 113 98 70 -98
		mu 0 4 67 68 53 52
		f 4 114 99 72 -99
		mu 0 4 68 69 54 53
		f 4 115 100 74 -100
		mu 0 4 69 70 55 54
		f 4 116 101 76 -101
		mu 0 4 70 71 56 55
		f 4 117 102 78 -102
		mu 0 4 71 72 57 56
		f 4 118 103 80 -103
		mu 0 4 72 73 58 57
		f 4 119 104 82 -104
		mu 0 4 73 74 59 58
		f 4 120 105 84 -105
		mu 0 4 74 75 60 59
		f 4 121 106 86 -106
		mu 0 4 75 76 61 60
		f 4 122 107 88 -107
		mu 0 4 76 77 62 61
		f 4 123 108 90 -108
		mu 0 4 77 78 63 62
		f 4 124 109 92 -109
		mu 0 4 78 79 64 63
		f 4 125 110 94 -110
		mu 0 4 79 80 65 64
		f 4 126 111 95 -111
		mu 0 4 80 81 50 65
		f 4 -37 67 -113 -65
		mu 0 4 35 36 67 66
		f 4 -39 69 -114 -68
		mu 0 4 36 37 68 67
		f 4 -41 71 -115 -70
		mu 0 4 37 38 69 68
		f 4 -43 73 -116 -72
		mu 0 4 38 39 70 69
		f 4 -45 75 -117 -74
		mu 0 4 39 40 71 70
		f 4 -47 77 -118 -76
		mu 0 4 40 41 72 71
		f 4 -49 79 -119 -78
		mu 0 4 41 42 73 72
		f 4 -51 81 -120 -80
		mu 0 4 42 43 74 73
		f 4 -53 83 -121 -82
		mu 0 4 43 44 75 74
		f 4 -55 85 -122 -84
		mu 0 4 44 45 76 75
		f 4 -57 87 -123 -86
		mu 0 4 45 46 77 76
		f 4 -59 89 -124 -88
		mu 0 4 46 47 78 77
		f 4 -61 91 -125 -90
		mu 0 4 47 48 79 78
		f 4 -63 93 -126 -92
		mu 0 4 48 49 80 79
		f 4 -64 65 -127 -94
		mu 0 4 49 34 81 80
		f 4 -35 64 -128 -66
		mu 0 4 34 35 66 81
		f 16 -195 -197 -199 -201 -203 -205 -207 -209 -211 -213 -215 -217 -219 -221 -223 -224
		mu 0 16 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97
		f 3 128 145 -145
		mu 0 3 98 99 100
		f 3 129 146 -146
		mu 0 3 99 101 100
		f 3 130 147 -147
		mu 0 3 101 102 100
		f 3 131 148 -148
		mu 0 3 102 103 100
		f 3 132 149 -149
		mu 0 3 103 104 100
		f 3 133 150 -150
		mu 0 3 104 105 100
		f 3 134 151 -151
		mu 0 3 105 106 100
		f 3 135 152 -152
		mu 0 3 106 107 100
		f 3 136 153 -153
		mu 0 3 107 108 100
		f 3 137 154 -154
		mu 0 3 108 109 100
		f 3 138 155 -155
		mu 0 3 109 110 100
		f 3 139 156 -156
		mu 0 3 110 111 100
		f 3 140 157 -157
		mu 0 3 111 112 100
		f 3 141 158 -158
		mu 0 3 112 113 100
		f 3 142 159 -159
		mu 0 3 113 114 100
		f 3 143 144 -160
		mu 0 3 114 115 100
		f 4 -144 160 162 -162
		mu 0 4 116 117 118 119
		f 4 -143 163 164 -161
		mu 0 4 117 120 121 118
		f 4 -142 165 166 -164
		mu 0 4 120 122 123 121
		f 4 -141 167 168 -166
		mu 0 4 122 124 125 123
		f 4 -140 169 170 -168
		mu 0 4 124 126 127 125
		f 4 -139 171 172 -170
		mu 0 4 126 128 129 127
		f 4 -138 173 174 -172
		mu 0 4 128 130 131 129
		f 4 -137 175 176 -174
		mu 0 4 130 132 133 131
		f 4 -136 177 178 -176
		mu 0 4 132 134 135 133
		f 4 -135 179 180 -178
		mu 0 4 134 136 137 135
		f 4 -134 181 182 -180
		mu 0 4 136 138 139 137
		f 4 -133 183 184 -182
		mu 0 4 138 140 141 139
		f 4 -132 185 186 -184
		mu 0 4 140 142 143 141
		f 4 -131 187 188 -186
		mu 0 4 142 144 145 143
		f 4 -130 189 190 -188
		mu 0 4 144 146 147 145
		f 4 -129 161 191 -190
		mu 0 4 146 116 119 147
		f 4 255 224 194 -240
		mu 0 4 148 149 83 82
		f 4 240 225 196 -225
		mu 0 4 149 150 84 83
		f 4 241 226 198 -226
		mu 0 4 150 151 85 84
		f 4 242 227 200 -227
		mu 0 4 151 152 86 85
		f 4 243 228 202 -228
		mu 0 4 152 153 87 86
		f 4 244 229 204 -229
		mu 0 4 153 154 88 87
		f 4 245 230 206 -230
		mu 0 4 154 155 89 88
		f 4 246 231 208 -231
		mu 0 4 155 156 90 89
		f 4 247 232 210 -232
		mu 0 4 156 157 91 90
		f 4 248 233 212 -233
		mu 0 4 157 158 92 91
		f 4 249 234 214 -234
		mu 0 4 158 159 93 92
		f 4 250 235 216 -235
		mu 0 4 159 160 94 93
		f 4 251 236 218 -236
		mu 0 4 160 161 95 94
		f 4 252 237 220 -237
		mu 0 4 161 162 96 95
		f 4 253 238 222 -238
		mu 0 4 162 163 97 96
		f 4 254 239 223 -239
		mu 0 4 163 148 82 97
		f 4 -165 195 -241 -193
		mu 0 4 118 121 150 149
		f 4 -167 197 -242 -196
		mu 0 4 121 123 151 150
		f 4 -169 199 -243 -198
		mu 0 4 123 125 152 151
		f 4 -171 201 -244 -200
		mu 0 4 125 127 153 152
		f 4 -173 203 -245 -202
		mu 0 4 127 129 154 153
		f 4 -175 205 -246 -204
		mu 0 4 129 131 155 154
		f 4 -177 207 -247 -206
		mu 0 4 131 133 156 155
		f 4 -179 209 -248 -208
		mu 0 4 133 135 157 156
		f 4 -181 211 -249 -210
		mu 0 4 135 137 158 157
		f 4 -183 213 -250 -212
		mu 0 4 137 139 159 158
		f 4 -185 215 -251 -214
		mu 0 4 139 141 160 159
		f 4 -187 217 -252 -216
		mu 0 4 141 143 161 160
		f 4 -189 219 -253 -218
		mu 0 4 143 145 162 161
		f 4 -191 221 -254 -220
		mu 0 4 145 147 163 162
		f 4 -192 193 -255 -222
		mu 0 4 147 119 148 163
		f 4 -163 192 -256 -194
		mu 0 4 119 118 149 148
		f 16 -323 -325 -327 -329 -331 -333 -335 -337 -339 -341 -343 -345 -347 -349 -351 -352
		mu 0 16 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179
		f 3 256 273 -273
		mu 0 3 180 181 182
		f 3 257 274 -274
		mu 0 3 181 183 182
		f 3 258 275 -275
		mu 0 3 183 184 182
		f 3 259 276 -276
		mu 0 3 184 185 182
		f 3 260 277 -277
		mu 0 3 185 186 182
		f 3 261 278 -278
		mu 0 3 186 187 182
		f 3 262 279 -279
		mu 0 3 187 188 182
		f 3 263 280 -280
		mu 0 3 188 189 182
		f 3 264 281 -281
		mu 0 3 189 190 182
		f 3 265 282 -282
		mu 0 3 190 191 182
		f 3 266 283 -283
		mu 0 3 191 192 182
		f 3 267 284 -284
		mu 0 3 192 193 182
		f 3 268 285 -285
		mu 0 3 193 194 182
		f 3 269 286 -286
		mu 0 3 194 195 182
		f 3 270 287 -287
		mu 0 3 195 196 182
		f 3 271 272 -288
		mu 0 3 196 197 182
		f 4 -272 288 290 -290
		mu 0 4 198 199 200 201
		f 4 -271 291 292 -289
		mu 0 4 199 202 203 200
		f 4 -270 293 294 -292
		mu 0 4 202 204 205 203
		f 4 -269 295 296 -294
		mu 0 4 204 206 207 205
		f 4 -268 297 298 -296
		mu 0 4 206 208 209 207
		f 4 -267 299 300 -298
		mu 0 4 208 210 211 209
		f 4 -266 301 302 -300
		mu 0 4 210 212 213 211
		f 4 -265 303 304 -302
		mu 0 4 212 214 215 213
		f 4 -264 305 306 -304
		mu 0 4 214 216 217 215
		f 4 -263 307 308 -306
		mu 0 4 216 218 219 217
		f 4 -262 309 310 -308
		mu 0 4 218 220 221 219
		f 4 -261 311 312 -310
		mu 0 4 220 222 223 221
		f 4 -260 313 314 -312
		mu 0 4 222 224 225 223
		f 4 -259 315 316 -314
		mu 0 4 224 226 227 225
		f 4 -258 317 318 -316
		mu 0 4 226 228 229 227
		f 4 -257 289 319 -318
		mu 0 4 228 198 201 229
		f 4 383 352 322 -368
		mu 0 4 230 231 165 164
		f 4 368 353 324 -353
		mu 0 4 231 232 166 165
		f 4 369 354 326 -354
		mu 0 4 232 233 167 166
		f 4 370 355 328 -355
		mu 0 4 233 234 168 167
		f 4 371 356 330 -356
		mu 0 4 234 235 169 168
		f 4 372 357 332 -357
		mu 0 4 235 236 170 169
		f 4 373 358 334 -358
		mu 0 4 236 237 171 170
		f 4 374 359 336 -359
		mu 0 4 237 238 172 171
		f 4 375 360 338 -360
		mu 0 4 238 239 173 172
		f 4 376 361 340 -361
		mu 0 4 239 240 174 173
		f 4 377 362 342 -362
		mu 0 4 240 241 175 174
		f 4 378 363 344 -363
		mu 0 4 241 242 176 175
		f 4 379 364 346 -364
		mu 0 4 242 243 177 176
		f 4 380 365 348 -365
		mu 0 4 243 244 178 177
		f 4 381 366 350 -366
		mu 0 4 244 245 179 178
		f 4 382 367 351 -367
		mu 0 4 245 230 164 179
		f 4 -293 323 -369 -321
		mu 0 4 200 203 232 231
		f 4 -295 325 -370 -324
		mu 0 4 203 205 233 232
		f 4 -297 327 -371 -326
		mu 0 4 205 207 234 233
		f 4 -299 329 -372 -328
		mu 0 4 207 209 235 234
		f 4 -301 331 -373 -330
		mu 0 4 209 211 236 235
		f 4 -303 333 -374 -332
		mu 0 4 211 213 237 236
		f 4 -305 335 -375 -334
		mu 0 4 213 215 238 237
		f 4 -307 337 -376 -336
		mu 0 4 215 217 239 238
		f 4 -309 339 -377 -338
		mu 0 4 217 219 240 239
		f 4 -311 341 -378 -340
		mu 0 4 219 221 241 240
		f 4 -313 343 -379 -342
		mu 0 4 221 223 242 241
		f 4 -315 345 -380 -344
		mu 0 4 223 225 243 242
		f 4 -317 347 -381 -346
		mu 0 4 225 227 244 243
		f 4 -319 349 -382 -348
		mu 0 4 227 229 245 244
		f 4 -320 321 -383 -350
		mu 0 4 229 201 230 245
		f 4 -291 320 -384 -322
		mu 0 4 201 200 231 230
		f 16 -451 -453 -455 -457 -459 -461 -463 -465 -467 -469 -471 -473 -475 -477 -479 -480
		mu 0 16 246 247 248 249 250 251 252 253 254 255 256 257 258 259 260 261
		f 3 384 401 -401
		mu 0 3 262 263 264
		f 3 385 402 -402
		mu 0 3 263 265 264
		f 3 386 403 -403
		mu 0 3 265 266 264
		f 3 387 404 -404
		mu 0 3 266 267 264
		f 3 388 405 -405
		mu 0 3 267 268 264
		f 3 389 406 -406
		mu 0 3 268 269 264
		f 3 390 407 -407
		mu 0 3 269 270 264
		f 3 391 408 -408
		mu 0 3 270 271 264
		f 3 392 409 -409
		mu 0 3 271 272 264
		f 3 393 410 -410
		mu 0 3 272 273 264
		f 3 394 411 -411
		mu 0 3 273 274 264
		f 3 395 412 -412
		mu 0 3 274 275 264
		f 3 396 413 -413
		mu 0 3 275 276 264
		f 3 397 414 -414
		mu 0 3 276 277 264
		f 3 398 415 -415
		mu 0 3 277 278 264
		f 3 399 400 -416
		mu 0 3 278 279 264
		f 4 -400 416 418 -418
		mu 0 4 280 281 282 283
		f 4 -399 419 420 -417
		mu 0 4 281 284 285 282
		f 4 -398 421 422 -420
		mu 0 4 284 286 287 285
		f 4 -397 423 424 -422
		mu 0 4 286 288 289 287
		f 4 -396 425 426 -424
		mu 0 4 288 290 291 289
		f 4 -395 427 428 -426
		mu 0 4 290 292 293 291
		f 4 -394 429 430 -428
		mu 0 4 292 294 295 293
		f 4 -393 431 432 -430
		mu 0 4 294 296 297 295
		f 4 -392 433 434 -432
		mu 0 4 296 298 299 297
		f 4 -391 435 436 -434
		mu 0 4 298 300 301 299
		f 4 -390 437 438 -436
		mu 0 4 300 302 303 301
		f 4 -389 439 440 -438
		mu 0 4 302 304 305 303
		f 4 -388 441 442 -440
		mu 0 4 304 306 307 305
		f 4 -387 443 444 -442
		mu 0 4 306 308 309 307
		f 4 -386 445 446 -444
		mu 0 4 308 310 311 309
		f 4 -385 417 447 -446
		mu 0 4 310 280 283 311
		f 4 511 480 450 -496
		mu 0 4 312 313 247 246
		f 4 496 481 452 -481
		mu 0 4 313 314 248 247
		f 4 497 482 454 -482
		mu 0 4 314 315 249 248
		f 4 498 483 456 -483
		mu 0 4 315 316 250 249
		f 4 499 484 458 -484
		mu 0 4 316 317 251 250
		f 4 500 485 460 -485
		mu 0 4 317 318 252 251
		f 4 501 486 462 -486
		mu 0 4 318 319 253 252
		f 4 502 487 464 -487
		mu 0 4 319 320 254 253
		f 4 503 488 466 -488
		mu 0 4 320 321 255 254
		f 4 504 489 468 -489
		mu 0 4 321 322 256 255
		f 4 505 490 470 -490
		mu 0 4 322 323 257 256
		f 4 506 491 472 -491
		mu 0 4 323 324 258 257
		f 4 507 492 474 -492
		mu 0 4 324 325 259 258
		f 4 508 493 476 -493
		mu 0 4 325 326 260 259
		f 4 509 494 478 -494
		mu 0 4 326 327 261 260
		f 4 510 495 479 -495
		mu 0 4 327 312 246 261
		f 4 -421 451 -497 -449
		mu 0 4 282 285 314 313
		f 4 -423 453 -498 -452
		mu 0 4 285 287 315 314
		f 4 -425 455 -499 -454
		mu 0 4 287 289 316 315
		f 4 -427 457 -500 -456
		mu 0 4 289 291 317 316
		f 4 -429 459 -501 -458
		mu 0 4 291 293 318 317
		f 4 -431 461 -502 -460
		mu 0 4 293 295 319 318
		f 4 -433 463 -503 -462
		mu 0 4 295 297 320 319
		f 4 -435 465 -504 -464
		mu 0 4 297 299 321 320
		f 4 -437 467 -505 -466
		mu 0 4 299 301 322 321
		f 4 -439 469 -506 -468
		mu 0 4 301 303 323 322
		f 4 -441 471 -507 -470
		mu 0 4 303 305 324 323
		f 4 -443 473 -508 -472
		mu 0 4 305 307 325 324
		f 4 -445 475 -509 -474
		mu 0 4 307 309 326 325
		f 4 -447 477 -510 -476
		mu 0 4 309 311 327 326
		f 4 -448 449 -511 -478
		mu 0 4 311 283 312 327
		f 4 -419 448 -512 -450
		mu 0 4 283 282 313 312;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Sign01";
	rename -uid "BF4EC089-400A-60F9-D74C-FD97A47A4D20";
	setAttr ".t" -type "double3" 141.28360206373017 0 -100 ;
createNode mesh -n "Sign01Shape" -p "Sign01";
	rename -uid "186F23A5-4E99-58DD-5621-46BCD9B311BF";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:15]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[13]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[10]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[5]" "f[15]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[14]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[11]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.5 1 0.5 0.75 0.5 0.5 0.5 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1
		 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -141.2836 0 2 -141.2836 0 
		2 -141.2836 0 2 -141.2836 0 2 -141.2836 0 2 -141.2836 0 2 -141.2836 0 2 -141.2836 
		0 2 -141.2836 0 2 -141.2836 0 2 -141.2836 0 2 -141.2836 0 2 -141.2836 0 2 -141.2836 
		0 2 -141.2836 0 2 -141.2836 0 2 -141.2836 0 2 -141.2836 0 2 -141.2836 0 2 -141.2836 
		0 2;
	setAttr -s 20 ".vt[0:19]"  81.28359985 139.61097717 5 201.28359985 139.61097717 5
		 81.28359985 192.18435669 5 201.28359985 192.18435669 5 81.28359985 192.18435669 -1
		 201.28359985 192.18435669 -1 81.28359985 139.61097717 -1 201.28359985 139.61097717 -1
		 141.28359985 139.61097717 5 141.28359985 139.61097717 -1 141.28359985 219.61097717 -1
		 141.28359985 219.61097717 5 136 0 -1 144 0 -1 136 204.81991577 -1 144 204.81991577 -1
		 136 204.81991577 -9 144 204.81991577 -9 136 0 -9 144 0 -9;
	setAttr -s 32 ".ed[0:31]"  0 8 0 2 11 0 4 10 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 7 0 10 5 0 11 3 0 8 9 1 9 10 1 10 11 1 11 8 1
		 12 13 0 14 15 0 16 17 0 18 19 0 12 14 0 13 15 0 14 16 0 15 17 0 16 18 0 17 19 0 18 12 0
		 19 13 0;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 19 12 5 -16
		mu 0 4 18 14 1 3
		f 4 18 15 7 -15
		mu 0 4 17 18 3 5
		f 4 17 14 9 -14
		mu 0 4 16 17 5 7
		f 4 16 13 11 -13
		mu 0 4 15 16 7 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 3 -17 -1 -11
		mu 0 4 6 16 15 8
		f 4 2 -18 -4 -9
		mu 0 4 4 17 16 6
		f 4 1 -19 -3 -7
		mu 0 4 2 18 17 4
		f 4 0 -20 -2 -5
		mu 0 4 0 14 18 2
		f 4 20 25 -22 -25
		mu 0 4 19 20 21 22
		f 4 21 27 -23 -27
		mu 0 4 22 21 23 24
		f 4 22 29 -24 -29
		mu 0 4 24 23 25 26
		f 4 23 31 -21 -31
		mu 0 4 26 25 27 28
		f 4 -32 -30 -28 -26
		mu 0 4 20 29 30 21
		f 4 30 24 26 28
		mu 0 4 31 19 22 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Sign02";
	rename -uid "82D8541B-47F1-95CF-F05C-A8ADA3378194";
	setAttr ".t" -type "double3" 260 0 -100 ;
createNode mesh -n "Sign02Shape" -p "Sign02";
	rename -uid "29914FE6-404E-7DE6-B9A4-CFB1FC2B97D2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:15]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[13]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[10]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[5]" "f[15]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[14]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[11]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.25 0.25 0.375 0.375 0.625 0.375 0.75 0.25 0.625 0.875
		 0.75 0 0.25 0 0.375 0.875 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -260 0 100 -260 0 100 -260 
		0 100 -260 0 100 -260 0 100 -260 0 100 -260 0 100 -260 0 100 -260 0 100 -260 0 100 
		-260 0 100 -260 0 100 -260 0 100 -260 0 100 -260 0 100 -260 0 100 -260 0 100 -260 
		0 100 -260 0 100 -260 0 100;
	setAttr -s 20 ".vt[0:19]"  235 118.074737549 -71.35964966 285 118.074737549 -71.35964966
		 235 119.074737549 -70 285 119.074737549 -70 235 119.074737549 -130 285 119.074737549 -130
		 235 118.074737549 -128.64035034 285 118.074737549 -128.64035034 235 160.5 -100 285 160.5 -100
		 285 158.14355469 -100 235 158.14355469 -100 240 0 -96 280 0 -96 240 150 -96 280 150 -96
		 240 150 -104 280 150 -104 240 0 -104 280 0 -104;
	setAttr -s 32 ".ed[0:31]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 8 0
		 3 9 0 4 6 0 5 7 0 6 11 0 7 10 0 8 4 0 9 5 0 10 1 0 11 0 0 8 9 1 9 10 1 10 11 1 11 8 1
		 12 13 0 14 15 0 16 17 0 18 19 0 12 14 0 13 15 0 14 16 0 15 17 0 16 18 0 17 19 0 18 12 0
		 19 13 0;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 16 13 -3 -13
		mu 0 4 15 16 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 18 -11
		mu 0 4 6 7 18 21
		f 4 17 -12 -10 -14
		mu 0 4 17 19 10 11
		f 4 10 19 12 8
		mu 0 4 12 20 14 13
		f 4 1 7 -17 -7
		mu 0 4 2 3 16 15
		f 4 -15 -18 -8 -6
		mu 0 4 1 19 17 3
		f 4 -19 14 -1 -16
		mu 0 4 21 18 9 8
		f 4 -20 15 4 6
		mu 0 4 14 20 0 2
		f 4 20 25 -22 -25
		mu 0 4 22 23 24 25
		f 4 21 27 -23 -27
		mu 0 4 25 24 26 27
		f 4 22 29 -24 -29
		mu 0 4 27 26 28 29
		f 4 23 31 -21 -31
		mu 0 4 29 28 30 31
		f 4 -32 -30 -28 -26
		mu 0 4 23 32 33 24
		f 4 30 24 26 28
		mu 0 4 34 22 25 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "StoneLamp";
	rename -uid "0A189310-4714-87BB-F96F-CF8C821F3A24";
	setAttr ".t" -type "double3" -320 0 -160 ;
createNode mesh -n "StoneLampShape" -p "StoneLamp";
	rename -uid "00671DD2-48A4-02E3-4E53-54B651605DF6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[8:15]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:7]" "vtx[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[8:15]" "vtx[17]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:7]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[16:23]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[8:15]";
	setAttr ".pv" -type "double2" 0.5 0.84281593561172485 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 122 ".uvst[0].uvsp[0:121]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.5 0.15000001 0.375 0.6694079 0.625 0.59465247 0.375 0.59465247 0.40625 0.59465247
		 0.4375 0.59465247 0.46875 0.59465247 0.5 0.59465247 0.53125 0.59465247 0.5625 0.59465247
		 0.59375 0.59465247 0.625 0.41880572 0.375 0.41880572 0.40625 0.41880572 0.4375 0.41880572
		 0.46875 0.41880572 0.5 0.41880572 0.53125 0.41880572 0.5625 0.41880572 0.59375 0.41880572
		 0.625 0.50584209 0.375 0.50584209 0.59375 0.50584209 0.5625 0.50584209 0.53125 0.50584209
		 0.5 0.50584209 0.46875 0.50584209 0.4375 0.50584209 0.40625 0.50584209 0.625 0.58217317
		 0.375 0.58217317 0.59375 0.58217317 0.5625 0.58217317 0.53125 0.58217317 0.5 0.58217317
		 0.46875 0.58217317 0.4375 0.58217317 0.40625 0.58217317 0.625 0.63652545 0.375 0.63652545
		 0.59375 0.63652545 0.5625 0.63652545 0.53125 0.63652545 0.5 0.63652545 0.46875 0.63652545
		 0.4375 0.63652545 0.40625 0.63652545 0.37597457 0.6805591 0.40551671 0.68055916 0.625
		 0.6789248 0.62426668 0.6805591 0.5947246 0.6805591 0.4072246 0.68055916 0.43676671
		 0.6805591 0.4384746 0.6805591 0.46801671 0.6805591 0.4697246 0.6805591 0.49926671
		 0.68055916 0.50097454 0.6805591 0.53051668 0.6805591 0.5322246 0.6805591 0.56176674
		 0.6805591 0.5634746 0.6805591 0.59301668 0.6805591 0.40625 0.6694079 0.375 0.67892486
		 0.4375 0.6694079 0.40625 0.67892486 0.46875 0.6694079 0.4375 0.67892486 0.5 0.6694079
		 0.46875 0.67892486 0.53125 0.6694079 0.5 0.67892486 0.5625 0.6694079 0.53125 0.6789248
		 0.59375 0.6694079 0.5625 0.67892486 0.625 0.6694079 0.59375 0.67892486 0.5 0.97571403
		 0.40602684 0.93678904 0.36710197 0.84281594 0.40602687 0.74884278 0.5 0.70991784
		 0.59397316 0.74884284 0.63289803 0.84281594 0.5939731 0.93678904 0.5 0.83749998 0.5939731
		 0.93678904 0.5 0.97571403 0.40602684 0.93678904 0.36710197 0.84281594 0.40602687
		 0.74884278 0.5 0.70991784 0.59397316 0.74884284 0.63289803 0.84281594 0.5939731 0.93678904
		 0.5 0.97571403 0.40602684 0.93678904 0.36710197 0.84281594 0.40602687 0.74884278
		 0.5 0.70991784 0.59397316 0.74884284 0.63289803 0.84281594;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".pt[0:89]" -type "float3"  320 0 160 320 0 160 320 0 
		160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 
		320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 
		0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 
		160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 
		320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 
		0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 
		160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 
		320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 
		0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 
		160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 320 0 160 
		320 0 160 320 0 160 320 0 160 320 0 160;
	setAttr -s 90 ".vt[0:89]"  -298.65274048 0 -181.34725952 -320 0 -190.18962097
		 -341.34725952 0 -181.34725952 -350.18960571 0 -160 -341.34725952 0 -138.65274048
		 -320 0 -129.81039429 -298.65274048 0 -138.65274048 -289.81039429 0 -160 -320 0 -160
		 -308.82727051 101.74996948 -171.17271423 -320 101.74996948 -175.8006134 -331.17272949 101.74996948 -171.17271423
		 -335.80059814 101.74996948 -160 -331.17272949 101.74996948 -148.82728577 -320 101.74996948 -144.1993866
		 -308.82727051 101.74996948 -148.82728577 -304.19940186 101.74996948 -160 -308.57498169 78.80519104 -171.42503357
		 -320 78.80519104 -176.15744019 -331.42501831 78.80519104 -171.42503357 -336.15740967 78.80519104 -160
		 -331.42501831 78.80519104 -148.57496643 -320 78.80519104 -143.84255981 -308.57498169 78.80519104 -148.57496643
		 -303.84259033 78.80519104 -160 -298.1496582 29.69119453 -181.8503418 -320 29.69119453 -190.90106201
		 -341.8503418 29.69119453 -181.8503418 -350.90106201 29.69119453 -160 -341.8503418 29.69119453 -138.1496582
		 -320 29.69119453 -129.098937988 -298.1496582 29.69119453 -138.1496582 -289.098937988 29.69119453 -160
		 -310.10357666 64.54706573 -169.89642334 -306.0043640137 64.54706573 -160 -310.10357666 64.54706573 -150.10357666
		 -320 64.54706573 -146.0043640137 -329.89642334 64.54706573 -150.10357666 -333.99563599 64.54706573 -160
		 -329.89642334 64.54706573 -169.89642334 -320 64.54706573 -173.99563599 -305.15075684 75.31972504 -174.84924316
		 -299 75.31972504 -160 -305.15075684 75.31972504 -145.15075684 -320 75.31972504 -139
		 -334.84924316 75.31972504 -145.15075684 -341 75.31972504 -160 -334.84924316 75.31972504 -174.84924316
		 -320 75.31972504 -181 -304.98129272 90.50031281 -175.018692017 -298.76034546 90.50031281 -160
		 -304.98129272 90.50031281 -144.98130798 -320 90.50031281 -138.76036072 -335.018707275 90.50031281 -144.98130798
		 -341.23965454 90.50031281 -160 -335.018707275 90.50031281 -175.018692017 -320 90.50031281 -181.23963928
		 -307.36999512 105 -172.62997437 -306.98883057 103.37515259 -173.011154175 -320 105 -177.86151123
		 -320 103.37515259 -178.40055847 -332.63000488 105 -172.62997437 -333.011169434 103.37515259 -173.011154175
		 -337.86148071 105 -160 -338.40057373 103.37515259 -160 -332.63000488 105 -147.37002563
		 -333.011169434 103.37515259 -146.98884583 -320 105 -142.13848877 -320 103.37515259 -141.59944153
		 -307.36999512 105 -147.37002563 -306.98883057 103.37515259 -146.98884583 -302.13851929 105 -160
		 -301.59942627 103.37515259 -160 -320 105 -164.2991333 -316.96005249 105 -163.03994751
		 -323.03994751 105 -163.03994751 -324.2991333 105 -160 -323.03994751 105 -156.96005249
		 -320 105 -155.7008667 -316.96005249 105 -156.96005249 -315.7008667 105 -160 -320 108.6985321 -164.2991333
		 -316.96005249 108.6985321 -163.03994751 -320 108.6985321 -160 -323.03994751 108.6985321 -163.03994751
		 -324.2991333 108.6985321 -160 -323.03994751 108.6985321 -156.96005249 -320 108.6985321 -155.7008667
		 -316.96005249 108.6985321 -156.96005249 -315.7008667 108.6985321 -160;
	setAttr -s 184 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 0 0 0 25 0
		 1 26 0 2 27 0 3 28 0 4 29 0 5 30 0 6 31 0 7 32 0 8 0 1 8 1 1 8 2 1 8 3 1 8 4 1 8 5 1
		 8 6 1 8 7 1 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 9 0 17 49 0
		 18 56 0 19 55 0 20 54 0 21 53 0 22 52 0 23 51 0 24 50 0 17 18 1 18 19 1 19 20 1 20 21 1
		 21 22 1 22 23 1 23 24 1 24 17 1 25 33 0 26 40 0 27 39 0 28 38 0 29 37 0 30 36 0 31 35 0
		 32 34 0 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1 31 32 1 32 25 1 33 41 0 34 42 0
		 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0 40 48 0 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1
		 38 39 1 39 40 1 40 33 1 41 17 0 42 24 0 43 23 0 44 22 0 45 21 0 46 20 0 47 19 0 48 18 0
		 41 42 1 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 41 1 49 9 0 50 16 0 51 15 0
		 52 14 0 53 13 0 54 12 0 55 11 0 56 10 0 49 50 1 50 51 1 51 52 1 52 53 1 53 54 1 54 55 1
		 55 56 1 56 49 1 57 58 0 58 60 0 60 59 0 59 57 0 57 71 0 71 72 0 72 58 0 60 62 0 62 61 0
		 61 59 0 62 64 0 64 63 0 63 61 0 64 66 0 66 65 0 65 63 0 66 68 0 68 67 0 67 65 0 68 70 0
		 70 69 0 69 67 0 70 72 0 71 69 0 10 60 1 58 9 1 11 62 1 12 64 1 13 66 1 14 68 1 15 70 1
		 16 72 1 59 73 1 57 74 1 73 74 0 61 75 1 75 73 0 63 76 1 76 75 0 65 77 1 77 76 0 67 78 1
		 78 77 0 69 79 1 79 78 0 71 80 1 80 79 0 74 80 0 73 81 0 74 82 0 81 82 0 81 83 1 83 82 1
		 75 84 0;
	setAttr ".ed[166:183]" 84 81 0 84 83 1 76 85 0 85 84 0 85 83 1 77 86 0 86 85 0
		 86 83 1 78 87 0 87 86 0 87 83 1 79 88 0 88 87 0 88 83 1 80 89 0 89 88 0 89 83 1 82 89 0;
	setAttr -s 96 -ch 368 ".fc[0:95]" -type "polyFaces" 
		f 3 -1 -17 17
		mu 0 3 1 0 17
		f 3 -2 -18 18
		mu 0 3 2 1 17
		f 3 -3 -19 19
		mu 0 3 3 2 17
		f 3 -4 -20 20
		mu 0 3 4 3 17
		f 3 -5 -21 21
		mu 0 3 5 4 17
		f 3 -6 -22 22
		mu 0 3 6 5 17
		f 3 -7 -23 23
		mu 0 3 7 6 17
		f 3 -8 -24 16
		mu 0 3 0 7 17
		f 4 40 33 111 -33
		mu 0 4 20 21 63 56
		f 4 41 34 110 -34
		mu 0 4 21 22 62 63
		f 4 42 35 109 -35
		mu 0 4 22 23 61 62
		f 4 43 36 108 -36
		mu 0 4 23 24 60 61
		f 4 44 37 107 -37
		mu 0 4 24 25 59 60
		f 4 45 38 106 -38
		mu 0 4 25 26 58 59
		f 4 46 39 105 -39
		mu 0 4 26 27 57 58
		f 4 47 32 104 -40
		mu 0 4 27 19 55 57
		f 4 56 49 79 -49
		mu 0 4 29 30 45 38
		f 4 57 50 78 -50
		mu 0 4 30 31 44 45
		f 4 58 51 77 -51
		mu 0 4 31 32 43 44
		f 4 59 52 76 -52
		mu 0 4 32 33 42 43
		f 4 60 53 75 -53
		mu 0 4 33 34 41 42
		f 4 61 54 74 -54
		mu 0 4 34 35 40 41
		f 4 62 55 73 -55
		mu 0 4 35 36 39 40
		f 4 63 48 72 -56
		mu 0 4 36 28 37 39
		f 4 0 9 -57 -9
		mu 0 4 8 9 30 29
		f 4 1 10 -58 -10
		mu 0 4 9 10 31 30
		f 4 2 11 -59 -11
		mu 0 4 10 11 32 31
		f 4 3 12 -60 -12
		mu 0 4 11 12 33 32
		f 4 4 13 -61 -13
		mu 0 4 12 13 34 33
		f 4 5 14 -62 -14
		mu 0 4 13 14 35 34
		f 4 6 15 -63 -15
		mu 0 4 14 15 36 35
		f 4 7 8 -64 -16
		mu 0 4 15 16 28 36
		f 4 -73 64 88 -66
		mu 0 4 39 37 46 48
		f 4 -74 65 89 -67
		mu 0 4 40 39 48 49
		f 4 -75 66 90 -68
		mu 0 4 41 40 49 50
		f 4 -76 67 91 -69
		mu 0 4 42 41 50 51
		f 4 -77 68 92 -70
		mu 0 4 43 42 51 52
		f 4 -78 69 93 -71
		mu 0 4 44 43 52 53
		f 4 -79 70 94 -72
		mu 0 4 45 44 53 54
		f 4 -80 71 95 -65
		mu 0 4 38 45 54 47
		f 4 -89 80 -48 -82
		mu 0 4 48 46 19 27
		f 4 -90 81 -47 -83
		mu 0 4 49 48 27 26
		f 4 -91 82 -46 -84
		mu 0 4 50 49 26 25
		f 4 -92 83 -45 -85
		mu 0 4 51 50 25 24
		f 4 -93 84 -44 -86
		mu 0 4 52 51 24 23
		f 4 -94 85 -43 -87
		mu 0 4 53 52 23 22
		f 4 -95 86 -42 -88
		mu 0 4 54 53 22 21
		f 4 -96 87 -41 -81
		mu 0 4 47 54 21 20
		f 4 -105 96 -32 -98
		mu 0 4 57 55 95 93
		f 4 -106 97 -31 -99
		mu 0 4 58 57 93 91
		f 4 -107 98 -30 -100
		mu 0 4 59 58 91 89
		f 4 -108 99 -29 -101
		mu 0 4 60 59 89 87
		f 4 -109 100 -28 -102
		mu 0 4 61 60 87 85
		f 4 -110 101 -27 -103
		mu 0 4 62 61 85 83
		f 4 -111 102 -26 -104
		mu 0 4 63 62 83 81
		f 4 -112 103 -25 -97
		mu 0 4 56 63 81 18
		f 4 112 113 114 115
		mu 0 4 64 82 84 65
		f 4 -113 116 117 118
		mu 0 4 66 67 68 96
		f 4 -115 119 120 121
		mu 0 4 69 84 86 70
		f 4 -121 122 123 124
		mu 0 4 71 86 88 72
		f 4 -124 125 126 127
		mu 0 4 73 88 90 74
		f 4 -127 128 129 130
		mu 0 4 75 90 92 76
		f 4 -130 131 132 133
		mu 0 4 77 92 94 78
		f 4 -133 134 -118 135
		mu 0 4 79 94 96 80
		f 4 24 136 -114 137
		mu 0 4 18 81 84 82
		f 4 25 138 -120 -137
		mu 0 4 81 83 86 84
		f 4 26 139 -123 -139
		mu 0 4 83 85 88 86
		f 4 27 140 -126 -140
		mu 0 4 85 87 90 88
		f 4 28 141 -129 -141
		mu 0 4 87 89 92 90
		f 4 29 142 -132 -142
		mu 0 4 89 91 94 92
		f 4 30 143 -135 -143
		mu 0 4 91 93 96 94
		f 4 31 -138 -119 -144
		mu 0 4 93 95 66 96
		f 3 -163 163 164
		mu 0 3 114 115 105
		f 3 -167 167 -164
		mu 0 3 115 116 105
		f 3 -170 170 -168
		mu 0 3 116 117 105
		f 3 -173 173 -171
		mu 0 3 117 118 105
		f 3 -176 176 -174
		mu 0 3 118 119 105
		f 3 -179 179 -177
		mu 0 3 119 120 105
		f 3 -182 182 -180
		mu 0 3 120 121 105
		f 3 -184 -165 -183
		mu 0 3 121 114 105
		f 4 -116 144 146 -146
		mu 0 4 104 97 107 106
		f 4 -122 147 148 -145
		mu 0 4 97 98 108 107
		f 4 -125 149 150 -148
		mu 0 4 98 99 109 108
		f 4 -128 151 152 -150
		mu 0 4 99 100 110 109
		f 4 -131 153 154 -152
		mu 0 4 100 101 111 110
		f 4 -134 155 156 -154
		mu 0 4 101 102 112 111
		f 4 -136 157 158 -156
		mu 0 4 102 103 113 112
		f 4 -117 145 159 -158
		mu 0 4 103 104 106 113
		f 4 -147 160 162 -162
		mu 0 4 106 107 115 114
		f 4 -149 165 166 -161
		mu 0 4 107 108 116 115
		f 4 -151 168 169 -166
		mu 0 4 108 109 117 116
		f 4 -153 171 172 -169
		mu 0 4 109 110 118 117
		f 4 -155 174 175 -172
		mu 0 4 110 111 119 118
		f 4 -157 177 178 -175
		mu 0 4 111 112 120 119
		f 4 -159 180 181 -178
		mu 0 4 112 113 121 120
		f 4 -160 161 183 -181
		mu 0 4 113 106 114 121;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ornemental_Grass";
	rename -uid "1A8F0640-4396-7CA4-F120-28B7A6DE6B6D";
	setAttr ".t" -type "double3" -440 0 -160 ;
createNode mesh -n "Ornemental_GrassShape" -p "Ornemental_Grass";
	rename -uid "18D46A61-43E8-DB64-A797-0B9936F7F7DF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.125 0.625 0.125 0.625 0.625 0.875 0.125 0.125
		 0.125 0.375 0.625 0.125 0.1875 0.375 0.5625 0.625 0.5625 0.875 0.1875 0.625 0.1875
		 0.375 0.1875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  8.9144793 24.999998 -8.9144793 
		-8.9144793 24.999998 -8.9144793 13.558171 86.285767 -13.558171 -13.558171 86.285767 
		-13.558171 13.558171 86.285767 13.558171 -13.558171 86.285767 13.558171 8.9144793 
		24.999998 8.9144793 -8.9144793 24.999998 8.9144793 8.4161186 41.079868 -8.4161186 
		-8.4161186 41.079868 -8.4161186 -8.4161186 41.079868 8.4161186 8.4161186 41.079868 
		8.4161186 -1.8400517 81.897919 -1.8400507 1.8400517 81.897919 -1.8400507 1.8400517 
		81.897919 1.8400507 -1.8400517 81.897919 1.8400507;
	setAttr -s 16 ".vt[0:15]"  -25.77848053 -25 25.77848053 25.77848053 -25 25.77848053
		 -35.20377731 25 35.20377731 35.20377731 25 35.20377731 -35.20377731 25 -35.20377731
		 35.20377731 25 -35.20377731 -25.77848053 -25 -25.77848053 25.77848053 -25 -25.77848053
		 -29.24151611 0 29.24151611 29.24151611 0 29.24151611 29.24151611 0 -29.24151611 -29.24151611 0 -29.24151611
		 -40.88479233 12.5 -40.88479233 40.88479233 12.5 -40.88479233 40.88479233 12.5 40.88479233
		 -40.88479233 12.5 40.88479233;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 8 0 1 9 0 2 4 0
		 3 5 0 4 12 0 5 13 0 6 0 0 7 1 0 8 15 0 9 14 0 10 7 0 11 6 0 8 9 0 9 10 0 10 11 0
		 11 8 0 12 11 0 13 10 0 14 3 0 15 2 0 12 13 0 13 14 0 14 15 0 15 12 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 16 13 26 -13
		mu 0 4 14 15 24 25
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 24 21 18 -21
		mu 0 4 21 22 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -22 25 -14
		mu 0 4 15 17 23 24
		f 4 19 12 27 20
		mu 0 4 18 14 25 20
		f 4 0 5 -17 -5
		mu 0 4 0 1 15 14
		f 4 -12 -15 -18 -6
		mu 0 4 1 10 17 15
		f 4 -19 14 -4 -16
		mu 0 4 19 16 7 6
		f 4 10 4 -20 15
		mu 0 4 12 0 14 18
		f 4 2 9 -25 -9
		mu 0 4 4 5 22 21
		f 4 -26 -10 -8 -23
		mu 0 4 24 23 11 3
		f 4 -27 22 -2 -24
		mu 0 4 25 24 3 2
		f 4 -28 23 6 8
		mu 0 4 20 25 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Lantern01";
	rename -uid "818CD996-434D-67DD-1BAC-FF8CA7FDD8DB";
	setAttr ".t" -type "double3" -560 420 -20 ;
createNode mesh -n "Lantern01Shape" -p "Lantern01";
	rename -uid "E2E754C7-4834-DB09-2C15-D29A69745C7C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:304]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "sides";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[1:16]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 355 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.73096991 0.15432927 0.67677677
		 0.073223412 0.595671 0.019030184 0.50000012 1.4901161e-08 0.40432924 0.019030079
		 0.32322338 0.073223233 0.26903015 0.15432906 0.25 0.24999991 0.26903009 0.34567079
		 0.32322326 0.42677665 0.40432909 0.48096985 0.49999997 0.5 0.59567082 0.48096991
		 0.67677665 0.42677671 0.73096991 0.34567088 0.75 0.25 0.25 0.5 0.28125 0.5 0.3125
		 0.5 0.34375 0.5 0.375 0.5 0.40625 0.5 0.4375 0.5 0.46875 0.5 0.5 0.5 0.53125 0.5
		 0.5625 0.5 0.59375 0.5 0.625 0.5 0.65625 0.5 0.6875 0.5 0.71875 0.5 0.75 0.5 0.5
		 1 0 0.0625 0.0625 0.0625 0.0625 0.125 0 0.125 0.125 0.0625 0.125 0.125 0.1875 0.0625
		 0.1875 0.125 0.25 0.0625 0.25 0.125 0.3125 0.0625 0.3125 0.125 0.375 0.0625 0.375
		 0.125 0.4375 0.0625 0.4375 0.125 0.5 0.0625 0.5 0.125 0.5625 0.0625 0.5625 0.125
		 0.625 0.0625 0.625 0.125 0.6875 0.0625 0.6875 0.125 0.75 0.0625 0.75 0.125 0.8125
		 0.0625 0.8125 0.125 0.875 0.0625 0.875 0.125 0.9375 0.0625 0.9375 0.125 1 0.0625
		 1 0.125 0 0.125 0.0625 0.125 0.0625 0.1875 0 0.1875 0.125 0.125 0.125 0.1875 0.1875
		 0.125 0.1875 0.1875 0.25 0.125 0.25 0.1875 0.3125 0.125 0.3125 0.1875 0.375 0.125
		 0.375 0.1875 0.4375 0.125 0.4375 0.1875 0.5 0.125 0.5 0.1875 0.5625 0.125 0.5625
		 0.1875 0.625 0.125 0.625 0.1875 0.6875 0.125 0.6875 0.1875 0.75 0.125 0.75 0.1875
		 0.8125 0.125 0.8125 0.1875 0.875 0.125 0.875 0.1875 0.9375 0.125 0.9375 0.1875 1
		 0.125 1 0.1875 0 0.1875 0.0625 0.1875 0.0625 0.25 0 0.25 0.125 0.1875 0.125 0.25
		 0.1875 0.1875 0.1875 0.25 0.25 0.1875 0.25 0.25 0.3125 0.1875 0.3125 0.25 0.375 0.1875
		 0.375 0.25 0.4375 0.1875 0.4375 0.25 0.5 0.1875 0.5 0.25 0.5625 0.1875 0.5625 0.25
		 0.625 0.1875 0.625 0.25 0.6875 0.1875 0.6875 0.25 0.75 0.1875 0.75 0.25 0.8125 0.1875
		 0.8125 0.25 0.875 0.1875 0.875 0.25 0.9375 0.1875 0.9375 0.25 1 0.1875 1 0.25 0.0625
		 0.3125 0 0.3125 0.125 0.3125 0.1875 0.3125 0.25 0.3125 0.3125 0.3125 0.375 0.3125
		 0.4375 0.3125 0.5 0.3125 0.5625 0.3125 0.625 0.3125 0.6875 0.3125 0.75 0.3125 0.8125
		 0.3125 0.875 0.3125 0.9375 0.3125 1 0.3125 0.0625 0.375 0 0.375 0.125 0.375 0.1875
		 0.375 0.25 0.375 0.3125 0.375 0.375 0.375 0.4375 0.375 0.5 0.375 0.5625 0.375 0.625
		 0.375 0.6875 0.375 0.75 0.375 0.8125 0.375 0.875 0.375 0.9375 0.375 1 0.375 0.0625
		 0.4375 0 0.4375 0.125 0.4375 0.1875 0.4375 0.25 0.4375 0.3125 0.4375 0.375 0.4375
		 0.4375 0.4375 0.5 0.4375 0.5625 0.4375 0.625 0.4375 0.6875 0.4375 0.75 0.4375 0.8125
		 0.4375 0.875 0.4375 0.9375 0.4375 1 0.4375 0.0625 0.5 0 0.5 0.125 0.5 0.1875 0.5
		 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5
		 0.75 0.5 0.8125 0.5 0.875 0.5 0.9375 0.5 1 0.5 0.0625 0.5625 0 0.5625 0.125 0.5625
		 0.1875 0.5625 0.25 0.5625 0.3125 0.5625 0.375 0.5625 0.4375 0.5625 0.5 0.5625 0.5625
		 0.5625 0.625 0.5625 0.6875 0.5625 0.75 0.5625 0.8125 0.5625 0.875 0.5625 0.9375 0.5625
		 1 0.5625 0.0625 0.625 0 0.625 0.125 0.625 0.1875 0.625 0.25 0.625 0.3125 0.625 0.375
		 0.625 0.4375 0.625 0.5 0.625 0.5625 0.625 0.625 0.625 0.6875 0.625 0.75 0.625 0.8125
		 0.625 0.875 0.625 0.9375 0.625 1 0.625 0.0625 0.6875 0 0.6875 0.125 0.6875 0.1875
		 0.6875 0.25 0.6875 0.3125 0.6875 0.375 0.6875 0.4375 0.6875 0.5 0.6875 0.5625 0.6875
		 0.625 0.6875 0.6875 0.6875;
	setAttr ".uvst[0].uvsp[250:354]" 0.75 0.6875 0.8125 0.6875 0.875 0.6875 0.9375
		 0.6875 1 0.6875 0.0625 0.75 0 0.75 0.125 0.75 0.1875 0.75 0.25 0.75 0.3125 0.75 0.375
		 0.75 0.4375 0.75 0.5 0.75 0.5625 0.75 0.625 0.75 0.6875 0.75 0.75 0.75 0.8125 0.75
		 0.875 0.75 0.9375 0.75 1 0.75 0.0625 0.8125 0 0.8125 0.125 0.8125 0.1875 0.8125 0.25
		 0.8125 0.3125 0.8125 0.375 0.8125 0.4375 0.8125 0.5 0.8125 0.5625 0.8125 0.625 0.8125
		 0.6875 0.8125 0.75 0.8125 0.8125 0.8125 0.875 0.8125 0.9375 0.8125 1 0.8125 0.0625
		 0.875 0 0.875 0.125 0.875 0.1875 0.875 0.25 0.875 0.3125 0.875 0.375 0.875 0.4375
		 0.875 0.5 0.875 0.5625 0.875 0.625 0.875 0.6875 0.875 0.75 0.875 0.8125 0.875 0.875
		 0.875 0.9375 0.875 1 0.875 0.0625 0.9375 0 0.9375 0.125 0.9375 0.1875 0.9375 0.25
		 0.9375 0.3125 0.9375 0.375 0.9375 0.4375 0.9375 0.5 0.9375 0.5625 0.9375 0.625 0.9375
		 0.6875 0.9375 0.75 0.9375 0.8125 0.9375 0.875 0.9375 0.9375 0.9375 1 0.9375 0.03125
		 0 0.09375 0 0.15625 0 0.21875 0 0.28125 0 0.34375 0 0.40625 0 0.46875 0 0.53125 0
		 0.59375 0 0.65625 0 0.71875 0 0.78125 0 0.84375 0 0.90625 0 0.96875 0 0.03125 1 0.09375
		 1 0.15625 1 0.21875 1 0.28125 1 0.34375 1 0.40625 1 0.46875 1 0.53125 1 0.59375 1
		 0.65625 1 0.71875 1 0.78125 1 0.84375 1 0.90625 1 0.96875 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 291 ".pt";
	setAttr ".pt[0:165]" -type "float3"  560 -442.71295 -1.9073486e-06 560 -442.71295 
		-3.8146973e-06 560 -442.71295 0 560 -442.71295 -3.8146973e-06 560 -442.71295 -3.8146973e-06 
		560 -442.71295 0 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 
		-442.71295 -1.9073486e-06 560 -442.71295 -3.8146973e-06 560 -442.71295 -3.8146973e-06 
		560 -442.71295 0 560 -442.71295 -3.8146973e-06 560 -442.71295 -3.8146973e-06 560 
		-442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -3.8146973e-06 
		560 -442.71295 -3.8146973e-06 560 -442.71295 0 560 -442.71295 -1.9073486e-06 560 
		-442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 0 560 -442.71295 0 560 -442.71295 -3.8146973e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -3.8146973e-06 
		560 -442.71295 0 560 -442.71295 0 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -3.8146973e-06 560 -442.71295 -3.8146973e-06 560 -442.71295 0 560 
		-442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -3.8146973e-06 560 -442.71295 -3.8146973e-06 
		560 -442.71295 0 560 -442.71295 0 560 -442.71295 0 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 0 560 
		-442.71295 -3.8146973e-06 560 -442.71295 -3.8146973e-06 560 -442.71295 -3.8146973e-06 
		560 -442.71295 -3.8146973e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 0 560 -442.71295 -3.8146973e-06 560 
		-442.71295 -3.8146973e-06 560 -442.71295 -3.8146973e-06 560 -442.71295 -3.8146973e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -3.8146973e-06 560 -442.71295 0 560 -442.71295 0 560 -442.71295 -3.8146973e-06 
		560 -442.71295 0 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 
		-442.71295 -1.9073486e-06 560 -442.71295 0 560 -442.71295 0 560 -442.71295 -3.8146973e-06 
		560 -442.71295 0 560 -442.71295 0 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 0 560 -442.71295 -3.8146973e-06 560 
		-442.71295 0 560 -442.71295 0 560 -442.71295 -3.8146973e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 0 560 
		-442.71295 -3.8146973e-06 560 -442.71295 -3.8146973e-06 560 -442.71295 -3.8146973e-06 
		560 -442.71295 -3.8146973e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -3.8146973e-06 560 -442.71295 0 560 
		-442.71295 0 560 -442.71295 -3.8146973e-06 560 -442.71295 0 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -3.8146973e-06 
		560 -442.71295 -3.8146973e-06 560 -442.71295 0 560 -442.71295 0;
	setAttr ".pt[166:290]" 560 -442.71295 0 560 -442.71295 -1.9073486e-06 560 
		-442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 0 560 -442.71295 
		-3.8146973e-06 560 -442.71295 -3.8146973e-06 560 -442.71295 -3.8146973e-06 560 -442.71295 
		-3.8146973e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 
		-1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -3.8146973e-06 560 -442.71295 
		0 560 -442.71295 0 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 
		-442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -3.8146973e-06 560 -442.71295 -3.8146973e-06 560 -442.71295 0 560 
		-442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -3.8146973e-06 
		560 -442.71295 -3.8146973e-06 560 -442.71295 0 560 -442.71295 -1.9073486e-06 560 
		-442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 0 560 -442.71295 0 560 -442.71295 -3.8146973e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 560 -442.71295 -1.9073486e-06 
		560 -442.71295 -1.9073486e-06;
	setAttr -s 291 ".vt";
	setAttr ".vt[0:165]"  -504.56719971 412.71295166 -22.96097374 -517.57354736 412.71295166 -42.42638016
		 -537.03894043 412.71295166 -55.43275452 -560 412.71295166 -59.99999619 -582.96099854 412.71295166 -55.43278122
		 -602.4263916 412.71295166 -42.42642212 -615.43273926 412.71295166 -22.96102715 -620 412.71295166 -2.1457672e-05
		 -615.43280029 412.71295166 22.96098709 -602.4263916 412.71295166 42.42639542 -582.96099854 412.71295166 55.43276596
		 -560 412.71295166 60 -537.039001465 412.71295166 55.43277359 -517.5736084 412.71295166 42.42641068
		 -504.56723022 412.71295166 22.96100807 -500 412.71295166 0 -560 442.71295166 0 -550.98797607 330.96075439 -3.73288655
		 -553.10253906 330.96075439 -6.89748049 -556.26708984 330.96075439 -9.011995316 -560 330.96075439 -9.75451565
		 -563.73291016 330.96075439 -9.012000084 -566.89746094 330.96075439 -6.89748764 -569.012023926 330.96075439 -3.73289537
		 -569.7545166 330.96075439 -3.488487e-06 -569.012023926 330.96075439 3.73288894 -566.89746094 330.96075439 6.89748287
		 -563.73291016 330.96075439 9.011997223 -560 330.96075439 9.7545166 -556.26708984 330.96075439 9.011998177
		 -553.10253906 330.96075439 6.89748526 -550.98797607 330.96075439 3.73289204 -550.2454834 330.96075439 0
		 -542.32232666 333.80603027 -7.32232046 -546.47009277 333.80603027 -13.52989483 -552.67767334 333.80603027 -17.67766571
		 -560 333.80603027 -19.13417053 -567.32232666 333.80603027 -17.67767334 -573.52990723 333.80603027 -13.52990818
		 -577.67767334 333.80603027 -7.32233763 -579.13415527 333.80603027 -6.8429135e-06
		 -577.67767334 333.80603027 7.32232475 -573.52990723 333.80603027 13.5298996 -567.32232666 333.80603027 17.67766953
		 -560 333.80603027 19.13417244 -552.67767334 333.80603027 17.67767143 -546.47009277 333.80603027 13.52990437
		 -542.32232666 333.80603027 7.32233143 -540.86584473 333.80603027 0 -534.33599854 338.42651367 -10.63036156
		 -540.35760498 338.42651367 -19.64236259 -549.36962891 338.42651367 -25.66399193 -560 338.42651367 -27.77851105
		 -570.63037109 338.42651367 -25.66400337 -579.64239502 338.42651367 -19.64238358 -585.66400146 338.42651367 -10.63038635
		 -587.77850342 338.42651367 -9.9343706e-06 -585.66400146 338.42651367 10.63036823
		 -579.64239502 338.42651367 19.64237022 -570.63037109 338.42651367 25.66399765 -560 338.42651367 27.77851295
		 -549.36962891 338.42651367 25.66399956 -540.35760498 338.42651367 19.64237595 -534.33599854 338.42651367 10.63037777
		 -532.22149658 338.42651367 0 -527.3359375 344.64465332 -13.52988338 -535 344.64465332 -24.99998474
		 -546.47009277 344.64465332 -32.66406631 -560 344.64465332 -35.35533524 -573.52990723 344.64465332 -32.66407776
		 -585 344.64465332 -25.000009536743 -592.6640625 344.64465332 -13.52991486 -595.35534668 344.64465332 -1.2644055e-05
		 -592.6640625 344.64465332 13.52989197 -585 344.64465332 24.99999237 -573.52990723 344.64465332 32.66407013
		 -560 344.64465332 35.35533905 -546.47009277 344.64465332 32.66407394 -535 344.64465332 25.000001907349
		 -527.3359375 344.64465332 13.52990341 -524.64465332 344.64465332 0 -521.59112549 352.22149658 -15.90946007
		 -530.60308838 352.22149658 -29.39687347 -544.090515137 352.22149658 -38.40887833
		 -560 352.22149658 -41.5734787 -575.90948486 352.22149658 -38.4088974 -589.39685059 352.22149658 -29.39690399
		 -598.40887451 352.22149658 -15.90949726 -601.57348633 352.22149658 -1.4867835e-05
		 -598.40887451 352.22149658 15.90947056 -589.39691162 352.22149658 29.39688301 -575.90948486 352.22149658 38.40888596
		 -560 352.22149658 41.57348251 -544.090515137 352.22149658 38.40888977 -530.60308838 352.22149658 29.39689255
		 -521.59112549 352.22149658 15.90948391 -518.42651367 352.22149658 0 -517.32232666 360.86584473 -17.67764282
		 -527.3359375 360.86584473 -32.66405106 -542.32232666 360.86584473 -42.67765427 -560 360.86584473 -46.19396973
		 -577.67767334 360.86584473 -42.67767334 -592.6640625 360.86584473 -32.66408539 -602.67767334 360.86584473 -17.67768478
		 -606.19396973 360.86584473 -1.6520253e-05 -602.67767334 360.86584473 17.67765427
		 -592.6640625 360.86584473 32.6640625 -577.67767334 360.86584473 42.6776619 -560 360.86584473 46.19397354
		 -542.32232666 360.86584473 42.67766953 -527.3359375 360.86584473 32.66407394 -517.32232666 360.86584473 17.67766953
		 -513.80603027 360.86584473 0 -514.69360352 370.2454834 -18.76648521 -525.32397461 370.2454834 -34.67597198
		 -541.23345947 370.2454834 -45.30635452 -560 370.2454834 -49.03925705 -578.76647949 370.2454834 -45.30637741
		 -594.67596436 370.2454834 -34.67600632 -605.30633545 370.2454834 -18.76652908 -609.039245605 370.2454834 -1.7537806e-05
		 -605.30639648 370.2454834 18.76649857 -594.67602539 370.2454834 34.67598343 -578.76654053 370.2454834 45.30636597
		 -560 370.2454834 49.039260864 -541.23352051 370.2454834 45.30636978 -525.32403564 370.2454834 34.67599487
		 -514.69360352 370.2454834 18.76651382 -510.96075439 370.2454834 0 -513.80603027 380 -19.13414383
		 -524.64465332 380 -35.35531616 -540.86578369 380 -46.1939621 -560 380 -49.99999619
		 -579.13415527 380 -46.19398499 -595.35534668 380 -35.35535431 -606.19396973 380 -19.13418961
		 -610 380 -1.7881393e-05 -606.19396973 380 19.13415718 -595.35534668 380 35.35533142
		 -579.13415527 380 46.19397354 -560 380 50 -540.86584473 380 46.19397736 -524.64465332 380 35.35534286
		 -513.80603027 380 19.13417244 -510 380 0 -514.69360352 389.7545166 -18.76648521 -525.32397461 389.7545166 -34.67597198
		 -541.23345947 389.7545166 -45.30635452 -560 389.7545166 -49.03925705 -578.76647949 389.7545166 -45.30637741
		 -594.67596436 389.7545166 -34.67600632 -605.30633545 389.7545166 -18.76652908 -609.039245605 389.7545166 -1.7537806e-05
		 -605.30639648 389.7545166 18.76649857 -594.67602539 389.7545166 34.67598343 -578.76654053 389.7545166 45.30636597
		 -560 389.7545166 49.039260864 -541.23352051 389.7545166 45.30636978 -525.32403564 389.7545166 34.67599487
		 -514.69360352 389.7545166 18.76651382 -510.96075439 389.7545166 0 -517.32232666 399.13415527 -17.67764282
		 -527.3359375 399.13415527 -32.66405106 -542.32232666 399.13415527 -42.67765427 -560 399.13415527 -46.19396973
		 -577.67767334 399.13415527 -42.67767334;
	setAttr ".vt[166:290]" -592.6640625 399.13415527 -32.66408539 -602.67767334 399.13415527 -17.67768478
		 -606.19396973 399.13415527 -1.6520253e-05 -602.67767334 399.13415527 17.67765427
		 -592.6640625 399.13415527 32.6640625 -577.67767334 399.13415527 42.6776619 -560 399.13415527 46.19397354
		 -542.32232666 399.13415527 42.67766953 -527.3359375 399.13415527 32.66407394 -517.32232666 399.13415527 17.67766953
		 -513.80603027 399.13415527 0 -521.59112549 407.77850342 -15.90946007 -530.60308838 407.77850342 -29.39687347
		 -544.090515137 407.77850342 -38.40887833 -560 407.77850342 -41.5734787 -575.90948486 407.77850342 -38.4088974
		 -589.39685059 407.77850342 -29.39690399 -598.40887451 407.77850342 -15.90949726 -601.57348633 407.77850342 -1.4867835e-05
		 -598.40887451 407.77850342 15.90947056 -589.39691162 407.77850342 29.39688301 -575.90948486 407.77850342 38.40888596
		 -560 407.77850342 41.57348251 -544.090515137 407.77850342 38.40888977 -530.60308838 407.77850342 29.39689255
		 -521.59112549 407.77850342 15.90948391 -518.42651367 407.77850342 0 -527.3359375 415.35534668 -13.52988338
		 -535 415.35534668 -24.99998474 -546.47009277 415.35534668 -32.66406631 -560 415.35534668 -35.35533524
		 -573.52990723 415.35534668 -32.66407776 -585 415.35534668 -25.000009536743 -592.6640625 415.35534668 -13.52991486
		 -595.35534668 415.35534668 -1.2644055e-05 -592.6640625 415.35534668 13.52989197 -585 415.35534668 24.99999237
		 -573.52990723 415.35534668 32.66407013 -560 415.35534668 35.35533905 -546.47009277 415.35534668 32.66407394
		 -535 415.35534668 25.000001907349 -527.3359375 415.35534668 13.52990341 -524.64465332 415.35534668 0
		 -534.33599854 421.57348633 -10.63036156 -540.35760498 421.57348633 -19.64236259 -549.36962891 421.57348633 -25.66399193
		 -560 421.57348633 -27.77851105 -570.63037109 421.57348633 -25.66400337 -579.64239502 421.57348633 -19.64238358
		 -585.66400146 421.57348633 -10.63038635 -587.77850342 421.57348633 -9.9343706e-06
		 -585.66400146 421.57348633 10.63036823 -579.64239502 421.57348633 19.64237022 -570.63037109 421.57348633 25.66399765
		 -560 421.57348633 27.77851295 -549.36962891 421.57348633 25.66399956 -540.35760498 421.57348633 19.64237595
		 -534.33599854 421.57348633 10.63037777 -532.22149658 421.57348633 0 -542.32232666 426.19396973 -7.32232046
		 -546.47009277 426.19396973 -13.52989483 -552.67767334 426.19396973 -17.67766571 -560 426.19396973 -19.13417053
		 -567.32232666 426.19396973 -17.67767334 -573.52990723 426.19396973 -13.52990818 -577.67767334 426.19396973 -7.32233763
		 -579.13415527 426.19396973 -6.8429135e-06 -577.67767334 426.19396973 7.32232475 -573.52990723 426.19396973 13.5298996
		 -567.32232666 426.19396973 17.67766953 -560 426.19396973 19.13417244 -552.67767334 426.19396973 17.67767143
		 -546.47009277 426.19396973 13.52990437 -542.32232666 426.19396973 7.32233143 -540.86584473 426.19396973 0
		 -550.98797607 429.039245605 -3.73288655 -553.10253906 429.039245605 -6.89748049 -556.26708984 429.039245605 -9.011995316
		 -560 429.039245605 -9.75451565 -563.73291016 429.039245605 -9.012000084 -566.89746094 429.039245605 -6.89748764
		 -569.012023926 429.039245605 -3.73289537 -569.7545166 429.039245605 -3.488487e-06
		 -569.012023926 429.039245605 3.73288894 -566.89746094 429.039245605 6.89748287 -563.73291016 429.039245605 9.011997223
		 -560 429.039245605 9.7545166 -556.26708984 429.039245605 9.011998177 -553.10253906 429.039245605 6.89748526
		 -550.98797607 429.039245605 3.73289204 -550.2454834 429.039245605 0 -560 330 0 -560 430 0
		 -542.32232666 330.48321533 -7.32232046 -546.47009277 330.48321533 -13.52989483 -540.35760498 330.48327637 -19.64236259
		 -534.33599854 330.48327637 -10.63036156 -552.67767334 330.48321533 -17.67766571 -549.36962891 330.48327637 -25.66399193
		 -560 330.48321533 -19.13417053 -560 330.48327637 -27.77851105 -567.32232666 330.48321533 -17.67767334
		 -570.63037109 330.48327637 -25.66400337 -573.52990723 330.48321533 -13.52990818 -579.64239502 330.48327637 -19.64238358
		 -577.67767334 330.48321533 -7.32233763 -585.66400146 330.48327637 -10.63038635 -579.13415527 330.48321533 -6.8429135e-06
		 -587.77850342 330.48327637 -9.9343706e-06 -577.67767334 330.48321533 7.32232475 -585.66400146 330.48327637 10.63036823
		 -573.52990723 330.48321533 13.5298996 -579.64239502 330.48327637 19.64237022 -567.32232666 330.48321533 17.67766953
		 -570.63037109 330.48327637 25.66399765 -560 330.48321533 19.13417244 -560 330.48327637 27.77851295
		 -552.67767334 330.48321533 17.67767143 -549.36962891 330.48327637 25.66399956 -546.47009277 330.48321533 13.52990437
		 -540.35760498 330.48327637 19.64237595 -542.32232666 330.48321533 7.32233143 -534.33599854 330.48327637 10.63037777
		 -540.86584473 330.48321533 0 -532.22149658 330.48327637 0;
	setAttr -s 592 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 0 16 1 1 16 1 2 16 1 3 16 1
		 4 16 1 5 16 1 6 16 1 7 16 1 8 16 1 9 16 1 10 16 1 11 16 1 12 16 1 13 16 1 14 16 1
		 15 16 1 17 18 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1
		 27 28 1 28 29 1 29 30 1 30 31 1 31 32 1 32 17 1 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0
		 38 39 0 39 40 0 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 33 0
		 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 60 0
		 60 61 0 61 62 0 62 63 0 63 64 0 64 49 0 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1
		 71 72 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 65 1 81 82 1
		 82 83 1 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1
		 93 94 1 94 95 1 95 96 1 96 81 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1
		 103 104 1 104 105 1 105 106 1 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1
		 112 97 1 113 114 1 114 115 1 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1
		 121 122 1 122 123 1 123 124 1 124 125 1 125 126 1 126 127 1 127 128 1 128 113 1 129 130 1
		 130 131 1 131 132 1 132 133 1 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1
		 139 140 1 140 141 1 141 142 1 142 143 1 143 144 1 144 129 1 145 146 1 146 147 1 147 148 1
		 148 149 1 149 150 1 150 151 1;
	setAttr ".ed[166:331]" 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1
		 157 158 1 158 159 1 159 160 1 160 145 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1
		 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1 172 173 1 173 174 1 174 175 1
		 175 176 1 176 161 1 177 178 1 178 179 1 179 180 1 180 181 1 181 182 1 182 183 1 183 184 1
		 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1 191 192 1 192 177 1
		 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1 201 202 1
		 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1 208 193 1 209 210 1 210 211 1
		 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1 217 218 1 218 219 1 219 220 1
		 220 221 1 221 222 1 222 223 1 223 224 1 224 209 1 225 226 1 226 227 1 227 228 1 228 229 1
		 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1
		 238 239 1 239 240 1 240 225 1 241 242 1 242 243 1 243 244 1 244 245 1 245 246 1 246 247 1
		 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1 253 254 1 254 255 1 255 256 1
		 256 241 1 17 33 1 18 34 1 19 35 1 20 36 1 21 37 1 22 38 1 23 39 1 24 40 1 25 41 1
		 26 42 1 27 43 1 28 44 1 29 45 1 30 46 1 31 47 1 32 48 1 49 65 1 50 66 1 51 67 1 52 68 1
		 53 69 1 54 70 1 55 71 1 56 72 1 57 73 1 58 74 1 59 75 1 60 76 1 61 77 1 62 78 1 63 79 1
		 64 80 1 65 81 1 66 82 1 67 83 1 68 84 1 69 85 1 70 86 1 71 87 1 72 88 1 73 89 1 74 90 1
		 75 91 1 76 92 1 77 93 1 78 94 1 79 95 1 80 96 1 81 97 1 82 98 1 83 99 1 84 100 1
		 85 101 1 86 102 1 87 103 1 88 104 1 89 105 1 90 106 1 91 107 1 92 108 1;
	setAttr ".ed[332:497]" 93 109 1 94 110 1 95 111 1 96 112 1 97 113 1 98 114 1
		 99 115 1 100 116 1 101 117 1 102 118 1 103 119 1 104 120 1 105 121 1 106 122 1 107 123 1
		 108 124 1 109 125 1 110 126 1 111 127 1 112 128 1 113 129 1 114 130 1 115 131 1 116 132 1
		 117 133 1 118 134 1 119 135 1 120 136 1 121 137 1 122 138 1 123 139 1 124 140 1 125 141 1
		 126 142 1 127 143 1 128 144 1 129 145 1 130 146 1 131 147 1 132 148 1 133 149 1 134 150 1
		 135 151 1 136 152 1 137 153 1 138 154 1 139 155 1 140 156 1 141 157 1 142 158 1 143 159 1
		 144 160 1 145 161 1 146 162 1 147 163 1 148 164 1 149 165 1 150 166 1 151 167 1 152 168 1
		 153 169 1 154 170 1 155 171 1 156 172 1 157 173 1 158 174 1 159 175 1 160 176 1 161 177 1
		 162 178 1 163 179 1 164 180 1 165 181 1 166 182 1 167 183 1 168 184 1 169 185 1 170 186 1
		 171 187 1 172 188 1 173 189 1 174 190 1 175 191 1 176 192 1 177 193 1 178 194 1 179 195 1
		 180 196 1 181 197 1 182 198 1 183 199 1 184 200 1 185 201 1 186 202 1 187 203 1 188 204 1
		 189 205 1 190 206 1 191 207 1 192 208 1 193 209 1 194 210 1 195 211 1 196 212 1 197 213 1
		 198 214 1 199 215 1 200 216 1 201 217 1 202 218 1 203 219 1 204 220 1 205 221 1 206 222 1
		 207 223 1 208 224 1 209 225 1 210 226 1 211 227 1 212 228 1 213 229 1 214 230 1 215 231 1
		 216 232 1 217 233 1 218 234 1 219 235 1 220 236 1 221 237 1 222 238 1 223 239 1 224 240 1
		 225 241 1 226 242 1 227 243 1 228 244 1 229 245 1 230 246 1 231 247 1 232 248 1 233 249 1
		 234 250 1 235 251 1 236 252 1 237 253 1 238 254 1 239 255 1 240 256 1 257 17 1 257 18 1
		 257 19 1 257 20 1 257 21 1 257 22 1 257 23 1 257 24 1 257 25 1 257 26 1 257 27 1
		 257 28 1 257 29 1 257 30 1 257 31 1 257 32 1 241 258 1 242 258 1;
	setAttr ".ed[498:591]" 243 258 1 244 258 1 245 258 1 246 258 1 247 258 1 248 258 1
		 249 258 1 250 258 1 251 258 1 252 258 1 253 258 1 254 258 1 255 258 1 256 258 1 33 259 0
		 34 260 0 259 260 0 50 261 0 260 261 1 49 262 0 262 261 0 259 262 1 35 263 0 260 263 0
		 51 264 0 263 264 1 261 264 0 36 265 0 263 265 0 52 266 0 265 266 1 264 266 0 37 267 0
		 265 267 0 53 268 0 267 268 1 266 268 0 38 269 0 267 269 0 54 270 0 269 270 1 268 270 0
		 39 271 0 269 271 0 55 272 0 271 272 1 270 272 0 40 273 0 271 273 0 56 274 0 273 274 1
		 272 274 0 41 275 0 273 275 0 57 276 0 275 276 1 274 276 0 42 277 0 275 277 0 58 278 0
		 277 278 1 276 278 0 43 279 0 277 279 0 59 280 0 279 280 1 278 280 0 44 281 0 279 281 0
		 60 282 0 281 282 1 280 282 0 45 283 0 281 283 0 61 284 0 283 284 1 282 284 0 46 285 0
		 283 285 0 62 286 0 285 286 1 284 286 0 47 287 0 285 287 0 63 288 0 287 288 1 286 288 0
		 48 289 0 287 289 0 64 290 0 289 290 1 288 290 0 289 259 0 290 262 0;
	setAttr -s 305 -ch 1184 ".fc[0:304]" -type "polyFaces" 
		f 16 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 16 0 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 3 0 17 -17
		mu 0 3 16 17 33
		f 3 1 18 -18
		mu 0 3 17 18 33
		f 3 2 19 -19
		mu 0 3 18 19 33
		f 3 3 20 -20
		mu 0 3 19 20 33
		f 3 4 21 -21
		mu 0 3 20 21 33
		f 3 5 22 -22
		mu 0 3 21 22 33
		f 3 6 23 -23
		mu 0 3 22 23 33
		f 3 7 24 -24
		mu 0 3 23 24 33
		f 3 8 25 -25
		mu 0 3 24 25 33
		f 3 9 26 -26
		mu 0 3 25 26 33
		f 3 10 27 -27
		mu 0 3 26 27 33
		f 3 11 28 -28
		mu 0 3 27 28 33
		f 3 12 29 -29
		mu 0 3 28 29 33
		f 3 13 30 -30
		mu 0 3 29 30 33
		f 3 14 31 -31
		mu 0 3 30 31 33
		f 3 15 16 -32
		mu 0 3 31 32 33
		f 4 32 273 -49 -273
		mu 0 4 34 35 36 37
		f 4 33 274 -50 -274
		mu 0 4 35 38 39 36
		f 4 34 275 -51 -275
		mu 0 4 38 40 41 39
		f 4 35 276 -52 -276
		mu 0 4 40 42 43 41
		f 4 36 277 -53 -277
		mu 0 4 42 44 45 43
		f 4 37 278 -54 -278
		mu 0 4 44 46 47 45
		f 4 38 279 -55 -279
		mu 0 4 46 48 49 47
		f 4 39 280 -56 -280
		mu 0 4 48 50 51 49
		f 4 40 281 -57 -281
		mu 0 4 50 52 53 51
		f 4 41 282 -58 -282
		mu 0 4 52 54 55 53
		f 4 42 283 -59 -283
		mu 0 4 54 56 57 55
		f 4 43 284 -60 -284
		mu 0 4 56 58 59 57
		f 4 44 285 -61 -285
		mu 0 4 58 60 61 59
		f 4 45 286 -62 -286
		mu 0 4 60 62 63 61
		f 4 46 287 -63 -287
		mu 0 4 62 64 65 63
		f 4 47 272 -64 -288
		mu 0 4 64 66 67 65
		f 4 514 516 -519 -520
		mu 0 4 68 69 70 71
		f 4 521 523 -525 -517
		mu 0 4 69 72 73 70
		f 4 526 528 -530 -524
		mu 0 4 72 74 75 73
		f 4 531 533 -535 -529
		mu 0 4 74 76 77 75
		f 4 536 538 -540 -534
		mu 0 4 76 78 79 77
		f 4 541 543 -545 -539
		mu 0 4 78 80 81 79
		f 4 546 548 -550 -544
		mu 0 4 80 82 83 81
		f 4 551 553 -555 -549
		mu 0 4 82 84 85 83
		f 4 556 558 -560 -554
		mu 0 4 84 86 87 85
		f 4 561 563 -565 -559
		mu 0 4 86 88 89 87
		f 4 566 568 -570 -564
		mu 0 4 88 90 91 89
		f 4 571 573 -575 -569
		mu 0 4 90 92 93 91
		f 4 576 578 -580 -574
		mu 0 4 92 94 95 93
		f 4 581 583 -585 -579
		mu 0 4 94 96 97 95
		f 4 586 588 -590 -584
		mu 0 4 96 98 99 97
		f 4 590 519 -592 -589
		mu 0 4 98 100 101 99
		f 4 64 289 -81 -289
		mu 0 4 102 103 104 105
		f 4 65 290 -82 -290
		mu 0 4 103 106 107 104
		f 4 66 291 -83 -291
		mu 0 4 106 108 109 107
		f 4 67 292 -84 -292
		mu 0 4 108 110 111 109
		f 4 68 293 -85 -293
		mu 0 4 110 112 113 111
		f 4 69 294 -86 -294
		mu 0 4 112 114 115 113
		f 4 70 295 -87 -295
		mu 0 4 114 116 117 115
		f 4 71 296 -88 -296
		mu 0 4 116 118 119 117
		f 4 72 297 -89 -297
		mu 0 4 118 120 121 119
		f 4 73 298 -90 -298
		mu 0 4 120 122 123 121
		f 4 74 299 -91 -299
		mu 0 4 122 124 125 123
		f 4 75 300 -92 -300
		mu 0 4 124 126 127 125
		f 4 76 301 -93 -301
		mu 0 4 126 128 129 127
		f 4 77 302 -94 -302
		mu 0 4 128 130 131 129
		f 4 78 303 -95 -303
		mu 0 4 130 132 133 131
		f 4 79 288 -96 -304
		mu 0 4 132 134 135 133
		f 4 80 305 -97 -305
		mu 0 4 105 104 136 137
		f 4 81 306 -98 -306
		mu 0 4 104 107 138 136
		f 4 82 307 -99 -307
		mu 0 4 107 109 139 138
		f 4 83 308 -100 -308
		mu 0 4 109 111 140 139
		f 4 84 309 -101 -309
		mu 0 4 111 113 141 140
		f 4 85 310 -102 -310
		mu 0 4 113 115 142 141
		f 4 86 311 -103 -311
		mu 0 4 115 117 143 142
		f 4 87 312 -104 -312
		mu 0 4 117 119 144 143
		f 4 88 313 -105 -313
		mu 0 4 119 121 145 144
		f 4 89 314 -106 -314
		mu 0 4 121 123 146 145
		f 4 90 315 -107 -315
		mu 0 4 123 125 147 146
		f 4 91 316 -108 -316
		mu 0 4 125 127 148 147
		f 4 92 317 -109 -317
		mu 0 4 127 129 149 148
		f 4 93 318 -110 -318
		mu 0 4 129 131 150 149
		f 4 94 319 -111 -319
		mu 0 4 131 133 151 150
		f 4 95 304 -112 -320
		mu 0 4 133 135 152 151
		f 4 96 321 -113 -321
		mu 0 4 137 136 153 154
		f 4 97 322 -114 -322
		mu 0 4 136 138 155 153
		f 4 98 323 -115 -323
		mu 0 4 138 139 156 155
		f 4 99 324 -116 -324
		mu 0 4 139 140 157 156
		f 4 100 325 -117 -325
		mu 0 4 140 141 158 157
		f 4 101 326 -118 -326
		mu 0 4 141 142 159 158
		f 4 102 327 -119 -327
		mu 0 4 142 143 160 159
		f 4 103 328 -120 -328
		mu 0 4 143 144 161 160
		f 4 104 329 -121 -329
		mu 0 4 144 145 162 161
		f 4 105 330 -122 -330
		mu 0 4 145 146 163 162
		f 4 106 331 -123 -331
		mu 0 4 146 147 164 163
		f 4 107 332 -124 -332
		mu 0 4 147 148 165 164
		f 4 108 333 -125 -333
		mu 0 4 148 149 166 165
		f 4 109 334 -126 -334
		mu 0 4 149 150 167 166
		f 4 110 335 -127 -335
		mu 0 4 150 151 168 167
		f 4 111 320 -128 -336
		mu 0 4 151 152 169 168
		f 4 112 337 -129 -337
		mu 0 4 154 153 170 171
		f 4 113 338 -130 -338
		mu 0 4 153 155 172 170
		f 4 114 339 -131 -339
		mu 0 4 155 156 173 172
		f 4 115 340 -132 -340
		mu 0 4 156 157 174 173
		f 4 116 341 -133 -341
		mu 0 4 157 158 175 174
		f 4 117 342 -134 -342
		mu 0 4 158 159 176 175
		f 4 118 343 -135 -343
		mu 0 4 159 160 177 176
		f 4 119 344 -136 -344
		mu 0 4 160 161 178 177
		f 4 120 345 -137 -345
		mu 0 4 161 162 179 178
		f 4 121 346 -138 -346
		mu 0 4 162 163 180 179
		f 4 122 347 -139 -347
		mu 0 4 163 164 181 180
		f 4 123 348 -140 -348
		mu 0 4 164 165 182 181
		f 4 124 349 -141 -349
		mu 0 4 165 166 183 182
		f 4 125 350 -142 -350
		mu 0 4 166 167 184 183
		f 4 126 351 -143 -351
		mu 0 4 167 168 185 184
		f 4 127 336 -144 -352
		mu 0 4 168 169 186 185
		f 4 128 353 -145 -353
		mu 0 4 171 170 187 188
		f 4 129 354 -146 -354
		mu 0 4 170 172 189 187
		f 4 130 355 -147 -355
		mu 0 4 172 173 190 189
		f 4 131 356 -148 -356
		mu 0 4 173 174 191 190
		f 4 132 357 -149 -357
		mu 0 4 174 175 192 191
		f 4 133 358 -150 -358
		mu 0 4 175 176 193 192
		f 4 134 359 -151 -359
		mu 0 4 176 177 194 193
		f 4 135 360 -152 -360
		mu 0 4 177 178 195 194
		f 4 136 361 -153 -361
		mu 0 4 178 179 196 195
		f 4 137 362 -154 -362
		mu 0 4 179 180 197 196
		f 4 138 363 -155 -363
		mu 0 4 180 181 198 197
		f 4 139 364 -156 -364
		mu 0 4 181 182 199 198
		f 4 140 365 -157 -365
		mu 0 4 182 183 200 199
		f 4 141 366 -158 -366
		mu 0 4 183 184 201 200
		f 4 142 367 -159 -367
		mu 0 4 184 185 202 201
		f 4 143 352 -160 -368
		mu 0 4 185 186 203 202
		f 4 144 369 -161 -369
		mu 0 4 188 187 204 205
		f 4 145 370 -162 -370
		mu 0 4 187 189 206 204
		f 4 146 371 -163 -371
		mu 0 4 189 190 207 206
		f 4 147 372 -164 -372
		mu 0 4 190 191 208 207
		f 4 148 373 -165 -373
		mu 0 4 191 192 209 208
		f 4 149 374 -166 -374
		mu 0 4 192 193 210 209
		f 4 150 375 -167 -375
		mu 0 4 193 194 211 210
		f 4 151 376 -168 -376
		mu 0 4 194 195 212 211
		f 4 152 377 -169 -377
		mu 0 4 195 196 213 212
		f 4 153 378 -170 -378
		mu 0 4 196 197 214 213
		f 4 154 379 -171 -379
		mu 0 4 197 198 215 214
		f 4 155 380 -172 -380
		mu 0 4 198 199 216 215
		f 4 156 381 -173 -381
		mu 0 4 199 200 217 216
		f 4 157 382 -174 -382
		mu 0 4 200 201 218 217
		f 4 158 383 -175 -383
		mu 0 4 201 202 219 218
		f 4 159 368 -176 -384
		mu 0 4 202 203 220 219
		f 4 160 385 -177 -385
		mu 0 4 205 204 221 222
		f 4 161 386 -178 -386
		mu 0 4 204 206 223 221
		f 4 162 387 -179 -387
		mu 0 4 206 207 224 223
		f 4 163 388 -180 -388
		mu 0 4 207 208 225 224
		f 4 164 389 -181 -389
		mu 0 4 208 209 226 225
		f 4 165 390 -182 -390
		mu 0 4 209 210 227 226
		f 4 166 391 -183 -391
		mu 0 4 210 211 228 227
		f 4 167 392 -184 -392
		mu 0 4 211 212 229 228
		f 4 168 393 -185 -393
		mu 0 4 212 213 230 229
		f 4 169 394 -186 -394
		mu 0 4 213 214 231 230
		f 4 170 395 -187 -395
		mu 0 4 214 215 232 231
		f 4 171 396 -188 -396
		mu 0 4 215 216 233 232
		f 4 172 397 -189 -397
		mu 0 4 216 217 234 233
		f 4 173 398 -190 -398
		mu 0 4 217 218 235 234
		f 4 174 399 -191 -399
		mu 0 4 218 219 236 235
		f 4 175 384 -192 -400
		mu 0 4 219 220 237 236
		f 4 176 401 -193 -401
		mu 0 4 222 221 238 239
		f 4 177 402 -194 -402
		mu 0 4 221 223 240 238
		f 4 178 403 -195 -403
		mu 0 4 223 224 241 240
		f 4 179 404 -196 -404
		mu 0 4 224 225 242 241
		f 4 180 405 -197 -405
		mu 0 4 225 226 243 242
		f 4 181 406 -198 -406
		mu 0 4 226 227 244 243
		f 4 182 407 -199 -407
		mu 0 4 227 228 245 244
		f 4 183 408 -200 -408
		mu 0 4 228 229 246 245
		f 4 184 409 -201 -409
		mu 0 4 229 230 247 246
		f 4 185 410 -202 -410
		mu 0 4 230 231 248 247
		f 4 186 411 -203 -411
		mu 0 4 231 232 249 248
		f 4 187 412 -204 -412
		mu 0 4 232 233 250 249
		f 4 188 413 -205 -413
		mu 0 4 233 234 251 250
		f 4 189 414 -206 -414
		mu 0 4 234 235 252 251
		f 4 190 415 -207 -415
		mu 0 4 235 236 253 252
		f 4 191 400 -208 -416
		mu 0 4 236 237 254 253
		f 4 192 417 -209 -417
		mu 0 4 239 238 255 256
		f 4 193 418 -210 -418
		mu 0 4 238 240 257 255
		f 4 194 419 -211 -419
		mu 0 4 240 241 258 257
		f 4 195 420 -212 -420
		mu 0 4 241 242 259 258
		f 4 196 421 -213 -421
		mu 0 4 242 243 260 259
		f 4 197 422 -214 -422
		mu 0 4 243 244 261 260
		f 4 198 423 -215 -423
		mu 0 4 244 245 262 261
		f 4 199 424 -216 -424
		mu 0 4 245 246 263 262
		f 4 200 425 -217 -425
		mu 0 4 246 247 264 263
		f 4 201 426 -218 -426
		mu 0 4 247 248 265 264
		f 4 202 427 -219 -427
		mu 0 4 248 249 266 265
		f 4 203 428 -220 -428
		mu 0 4 249 250 267 266
		f 4 204 429 -221 -429
		mu 0 4 250 251 268 267
		f 4 205 430 -222 -430
		mu 0 4 251 252 269 268
		f 4 206 431 -223 -431
		mu 0 4 252 253 270 269
		f 4 207 416 -224 -432
		mu 0 4 253 254 271 270
		f 4 208 433 -225 -433
		mu 0 4 256 255 272 273
		f 4 209 434 -226 -434
		mu 0 4 255 257 274 272
		f 4 210 435 -227 -435
		mu 0 4 257 258 275 274
		f 4 211 436 -228 -436
		mu 0 4 258 259 276 275
		f 4 212 437 -229 -437
		mu 0 4 259 260 277 276
		f 4 213 438 -230 -438
		mu 0 4 260 261 278 277
		f 4 214 439 -231 -439
		mu 0 4 261 262 279 278
		f 4 215 440 -232 -440
		mu 0 4 262 263 280 279
		f 4 216 441 -233 -441
		mu 0 4 263 264 281 280
		f 4 217 442 -234 -442
		mu 0 4 264 265 282 281
		f 4 218 443 -235 -443
		mu 0 4 265 266 283 282
		f 4 219 444 -236 -444
		mu 0 4 266 267 284 283
		f 4 220 445 -237 -445
		mu 0 4 267 268 285 284
		f 4 221 446 -238 -446
		mu 0 4 268 269 286 285
		f 4 222 447 -239 -447
		mu 0 4 269 270 287 286
		f 4 223 432 -240 -448
		mu 0 4 270 271 288 287
		f 4 224 449 -241 -449
		mu 0 4 273 272 289 290
		f 4 225 450 -242 -450
		mu 0 4 272 274 291 289
		f 4 226 451 -243 -451
		mu 0 4 274 275 292 291
		f 4 227 452 -244 -452
		mu 0 4 275 276 293 292
		f 4 228 453 -245 -453
		mu 0 4 276 277 294 293
		f 4 229 454 -246 -454
		mu 0 4 277 278 295 294
		f 4 230 455 -247 -455
		mu 0 4 278 279 296 295
		f 4 231 456 -248 -456
		mu 0 4 279 280 297 296
		f 4 232 457 -249 -457
		mu 0 4 280 281 298 297
		f 4 233 458 -250 -458
		mu 0 4 281 282 299 298
		f 4 234 459 -251 -459
		mu 0 4 282 283 300 299
		f 4 235 460 -252 -460
		mu 0 4 283 284 301 300
		f 4 236 461 -253 -461
		mu 0 4 284 285 302 301
		f 4 237 462 -254 -462
		mu 0 4 285 286 303 302
		f 4 238 463 -255 -463
		mu 0 4 286 287 304 303
		f 4 239 448 -256 -464
		mu 0 4 287 288 305 304
		f 4 240 465 -257 -465
		mu 0 4 290 289 306 307
		f 4 241 466 -258 -466
		mu 0 4 289 291 308 306
		f 4 242 467 -259 -467
		mu 0 4 291 292 309 308
		f 4 243 468 -260 -468
		mu 0 4 292 293 310 309
		f 4 244 469 -261 -469
		mu 0 4 293 294 311 310
		f 4 245 470 -262 -470
		mu 0 4 294 295 312 311
		f 4 246 471 -263 -471
		mu 0 4 295 296 313 312
		f 4 247 472 -264 -472
		mu 0 4 296 297 314 313
		f 4 248 473 -265 -473
		mu 0 4 297 298 315 314
		f 4 249 474 -266 -474
		mu 0 4 298 299 316 315
		f 4 250 475 -267 -475
		mu 0 4 299 300 317 316
		f 4 251 476 -268 -476
		mu 0 4 300 301 318 317
		f 4 252 477 -269 -477
		mu 0 4 301 302 319 318
		f 4 253 478 -270 -478
		mu 0 4 302 303 320 319
		f 4 254 479 -271 -479
		mu 0 4 303 304 321 320
		f 4 255 464 -272 -480
		mu 0 4 304 305 322 321
		f 3 -33 -481 481
		mu 0 3 35 34 323
		f 3 -34 -482 482
		mu 0 3 38 35 324
		f 3 -35 -483 483
		mu 0 3 40 38 325
		f 3 -36 -484 484
		mu 0 3 42 40 326
		f 3 -37 -485 485
		mu 0 3 44 42 327
		f 3 -38 -486 486
		mu 0 3 46 44 328
		f 3 -39 -487 487
		mu 0 3 48 46 329
		f 3 -40 -488 488
		mu 0 3 50 48 330
		f 3 -41 -489 489
		mu 0 3 52 50 331
		f 3 -42 -490 490
		mu 0 3 54 52 332
		f 3 -43 -491 491
		mu 0 3 56 54 333
		f 3 -44 -492 492
		mu 0 3 58 56 334
		f 3 -45 -493 493
		mu 0 3 60 58 335
		f 3 -46 -494 494
		mu 0 3 62 60 336
		f 3 -47 -495 495
		mu 0 3 64 62 337
		f 3 -48 -496 480
		mu 0 3 66 64 338
		f 3 256 497 -497
		mu 0 3 307 306 339
		f 3 257 498 -498
		mu 0 3 306 308 340
		f 3 258 499 -499
		mu 0 3 308 309 341
		f 3 259 500 -500
		mu 0 3 309 310 342
		f 3 260 501 -501
		mu 0 3 310 311 343
		f 3 261 502 -502
		mu 0 3 311 312 344
		f 3 262 503 -503
		mu 0 3 312 313 345
		f 3 263 504 -504
		mu 0 3 313 314 346
		f 3 264 505 -505
		mu 0 3 314 315 347
		f 3 265 506 -506
		mu 0 3 315 316 348
		f 3 266 507 -507
		mu 0 3 316 317 349
		f 3 267 508 -508
		mu 0 3 317 318 350
		f 3 268 509 -509
		mu 0 3 318 319 351
		f 3 269 510 -510
		mu 0 3 319 320 352
		f 3 270 511 -511
		mu 0 3 320 321 353
		f 3 271 496 -512
		mu 0 3 321 322 354
		f 4 48 513 -515 -513
		mu 0 4 37 36 69 68
		f 4 -65 517 518 -516
		mu 0 4 103 102 71 70
		f 4 49 520 -522 -514
		mu 0 4 36 39 72 69
		f 4 -66 515 524 -523
		mu 0 4 106 103 70 73
		f 4 50 525 -527 -521
		mu 0 4 39 41 74 72
		f 4 -67 522 529 -528
		mu 0 4 108 106 73 75
		f 4 51 530 -532 -526
		mu 0 4 41 43 76 74
		f 4 -68 527 534 -533
		mu 0 4 110 108 75 77
		f 4 52 535 -537 -531
		mu 0 4 43 45 78 76
		f 4 -69 532 539 -538
		mu 0 4 112 110 77 79
		f 4 53 540 -542 -536
		mu 0 4 45 47 80 78
		f 4 -70 537 544 -543
		mu 0 4 114 112 79 81
		f 4 54 545 -547 -541
		mu 0 4 47 49 82 80
		f 4 -71 542 549 -548
		mu 0 4 116 114 81 83
		f 4 55 550 -552 -546
		mu 0 4 49 51 84 82
		f 4 -72 547 554 -553
		mu 0 4 118 116 83 85
		f 4 56 555 -557 -551
		mu 0 4 51 53 86 84
		f 4 -73 552 559 -558
		mu 0 4 120 118 85 87
		f 4 57 560 -562 -556
		mu 0 4 53 55 88 86
		f 4 -74 557 564 -563
		mu 0 4 122 120 87 89
		f 4 58 565 -567 -561
		mu 0 4 55 57 90 88
		f 4 -75 562 569 -568
		mu 0 4 124 122 89 91
		f 4 59 570 -572 -566
		mu 0 4 57 59 92 90
		f 4 -76 567 574 -573
		mu 0 4 126 124 91 93
		f 4 60 575 -577 -571
		mu 0 4 59 61 94 92
		f 4 -77 572 579 -578
		mu 0 4 128 126 93 95
		f 4 61 580 -582 -576
		mu 0 4 61 63 96 94
		f 4 -78 577 584 -583
		mu 0 4 130 128 95 97
		f 4 62 585 -587 -581
		mu 0 4 63 65 98 96
		f 4 -79 582 589 -588
		mu 0 4 132 130 97 99
		f 4 63 512 -591 -586
		mu 0 4 65 67 100 98
		f 4 -80 587 591 -518
		mu 0 4 134 132 99 101;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Lantern02";
	rename -uid "D5827585-47BE-07AD-38F5-C9877A9DCFF1";
	setAttr ".t" -type "double3" -420 420 0 ;
createNode mesh -n "LanternShape2" -p "Lantern02";
	rename -uid "8178C8D5-48C6-AAB3-5720-04B3F130416D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 322 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0 -29.423553 0 0 -29.423553 0 0 -29.423553 
		0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 
		0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 
		0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 
		0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 
		0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 
		-5.9604645e-08 0 -29.423553 0 0 -29.423553 0 0 -29.423553 1.1920929e-07 5.9604645e-08 
		-29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 -5.9604645e-08 
		0 -29.423553 1.1920929e-07 5.9604645e-08 -29.423553 0 0 -29.423553 -1.1920929e-07 
		-5.9604645e-08 -29.423553 -1.1920929e-07 0 -29.423553 0 0 -29.423553 0 0 -29.423553 
		-7.1054274e-15 -4.7683716e-07 -29.423553 0 2.3841858e-07 -29.423553 2.3841858e-07 
		-1.1920929e-07 -29.423553 -2.3841858e-07 0 -29.423553 0 1.1920929e-07 -29.423553 
		0 0 -29.423553 2.3841858e-07 0 -29.423553 0 0 -29.423553 0 4.7683716e-07 -29.423553 
		0 -2.3841858e-07 -29.423553 -2.3841858e-07 1.1920929e-07 -29.423553 4.7683716e-07 
		0 -29.423553 0 -1.1920929e-07 -29.423553 -2.3841858e-07 0 -29.423553 0 0 -29.423553 
		0 0 -29.423553 1.4210855e-14 0 -29.423553 1.1920929e-07 0 -29.423553 0 1.1920929e-07 
		-29.423553 -4.7683716e-07 0 -29.423553 0 0 -29.423553 -4.7683716e-07 0 -29.423553 
		0 0 -29.423553 -2.3841858e-07 4.7683716e-07 -29.423553 -2.2737368e-13 0 -29.423553 
		0 0 -29.423553 2.3841858e-07 -1.1920929e-07 -29.423553 0 0 -29.423553 0 1.1920929e-07 
		-29.423553 0 0 -29.423553 -2.3841858e-07 0 -29.423553 1.1920929e-07 -4.7683716e-07 
		-29.423553 -1.4210855e-14 0 -29.423553 0 2.3841858e-07 -29.423553 0 0 -29.423553 
		2.3841858e-07 0 -29.423553 0 0 -29.423553 2.3841858e-07 -2.3841858e-07 -29.423553 
		-2.3841858e-07 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 -2.3841858e-07 -29.423553 
		-2.3841858e-07 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 2.3841858e-07 -29.423553 
		-2.3841858e-07 0 -29.423553 0 0 -29.423553 -1.4210855e-14 -2.3841858e-07 -29.423553 
		-5.9604645e-08 0 -29.423553 -1.1920929e-07 5.9604645e-08 -29.423553 0 0 -29.423553 
		0 -5.9604645e-08 -29.423553 -1.1920929e-07 0 -29.423553 1.1920929e-07 2.3841858e-07 
		-29.423553 0 2.3841858e-07 -29.423553 5.6843419e-14 2.3841858e-07 -29.423553 0 0 
		-29.423553 1.1920929e-07 -5.9604645e-08 -29.423553 0 0 -29.423553 0 5.9604645e-08 
		-29.423553 -1.1920929e-07 0 -29.423553 0 -2.3841858e-07 -29.423553 0 -2.3841858e-07 
		-29.423553 -1.4210855e-14 -2.9802322e-08 -29.423553 0 0 -29.423553 0 1.4901161e-08 
		-29.423553 -5.9604645e-08 0 -29.423553 0 -1.4901161e-08 -29.423553 2.9802322e-08 
		0 -29.423553 0 2.9802322e-08 -29.423553 0 2.9802322e-08 -29.423553 1.4210855e-14 
		2.9802322e-08 -29.423553 0 0 -29.423553 0 -1.4901161e-08 -29.423553 2.9802322e-08 
		0 -29.423553 0 1.4901161e-08 -29.423553 5.9604645e-08 0 -29.423553 -2.9802322e-08 
		-2.9802322e-08 -29.423553 1.4901161e-08 -2.9802322e-08 -29.423553 0 0 -29.423553 
		2.7755576e-17 -2.9802322e-08 -29.423553 0 0 -29.423553 0 0 -29.423553 -1.1920929e-07 
		-2.3841858e-07 -29.423553 -5.9604645e-08 1.4901161e-08 -29.423553 -5.9604645e-08 
		5.9604645e-08 -29.423553 0 0 -29.423553 0 0 -29.423553 0 -1.4901161e-08 -29.423553 
		2.9802322e-08 -5.9604645e-08 -29.423553 -1.1920929e-07 0 -29.423553 0 0 -29.423553 
		1.1920929e-07 2.9802322e-08 -29.423553 0 2.3841858e-07 -29.423553 0 2.9802322e-08 
		-29.423553 1.4210855e-14 2.3841858e-07 -29.423553 5.6843419e-14 2.9802322e-08 -29.423553 
		0 2.3841858e-07 -29.423553 0 0 -29.423553 0 0 -29.423553 1.1920929e-07 -1.4901161e-08 
		-29.423553 2.9802322e-08 -5.9604645e-08 -29.423553 0 0 -29.423553 0 0 -29.423553 
		0 1.4901161e-08 -29.423553 5.9604645e-08 5.9604645e-08 -29.423553 -1.1920929e-07 
		0 -29.423553 -2.9802322e-08 0 -29.423553 0 -2.9802322e-08 -29.423553 1.4901161e-08 
		-2.3841858e-07 -29.423553 0 -2.9802322e-08 -29.423553 0 -2.3841858e-07 -29.423553 
		-1.4210855e-14 2.3841858e-07 -29.423553 0 0 -29.423553 0 0 -29.423553 2.3841858e-07 
		0 -29.423553 0 0 -29.423553 2.3841858e-07;
	setAttr ".pt[166:321]" -2.3841858e-07 -29.423553 -2.3841858e-07 0 -29.423553 
		0 0 -29.423553 0 0 -29.423553 0 -2.3841858e-07 -29.423553 -2.3841858e-07 0 -29.423553 
		0 0 -29.423553 0 0 -29.423553 0 2.3841858e-07 -29.423553 -2.3841858e-07 0 -29.423553 
		0 0 -29.423553 -1.4210855e-14 0 -29.423553 0 0 -29.423553 1.1920929e-07 1.1920929e-07 
		-29.423553 -4.7683716e-07 0 -29.423553 0 0 -29.423553 -4.7683716e-07 0 -29.423553 
		0 0 -29.423553 -2.3841858e-07 4.7683716e-07 -29.423553 -2.2737368e-13 0 -29.423553 
		0 0 -29.423553 2.3841858e-07 -1.1920929e-07 -29.423553 0 0 -29.423553 0 1.1920929e-07 
		-29.423553 0 0 -29.423553 -2.3841858e-07 0 -29.423553 1.1920929e-07 -4.7683716e-07 
		-29.423553 -1.4210855e-14 2.3841858e-07 -29.423553 2.3841858e-07 -4.7683716e-07 -29.423553 
		0 -1.1920929e-07 -29.423553 -2.3841858e-07 0 -29.423553 0 1.1920929e-07 -29.423553 
		0 0 -29.423553 2.3841858e-07 0 -29.423553 0 0 -29.423553 0 4.7683716e-07 -29.423553 
		0 -2.3841858e-07 -29.423553 -2.3841858e-07 1.1920929e-07 -29.423553 4.7683716e-07 
		0 -29.423553 0 -1.1920929e-07 -29.423553 -2.3841858e-07 0 -29.423553 0 0 -29.423553 
		0 0 -29.423553 1.4210855e-14 0 -29.423553 0 0 -29.423553 -5.9604645e-08 0 -29.423553 
		0 0 -29.423553 1.1920929e-07 5.9604645e-08 -29.423553 0 0 -29.423553 0 0 -29.423553 
		0 0 -29.423553 0 0 -29.423553 -5.9604645e-08 0 -29.423553 1.1920929e-07 5.9604645e-08 
		-29.423553 0 0 -29.423553 -1.1920929e-07 -5.9604645e-08 -29.423553 -1.1920929e-07 
		0 -29.423553 0 0 -29.423553 0 0 -29.423553 -7.1054274e-15 0 -29.423553 0 0 -29.423553 
		0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 
		0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 
		0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 
		0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 
		0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 
		0 0 -29.423553 2.7755576e-17 0 -29.423553 1.1920929e-07 0 -29.423553 0 2.3841858e-07 
		-29.423553 0 0 -29.423553 0 1.1920929e-07 -29.423553 -4.7683716e-07 0 -29.423553 
		2.3841858e-07 0 -29.423553 0 0 -29.423553 0 0 -29.423553 -4.7683716e-07 0 -29.423553 
		2.3841858e-07 0 -29.423553 0 -2.3841858e-07 -29.423553 -2.3841858e-07 0 -29.423553 
		-2.3841858e-07 0 -29.423553 0 4.7683716e-07 -29.423553 -2.2737368e-13 0 -29.423553 
		0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 2.3841858e-07 -2.3841858e-07 -29.423553 
		-2.3841858e-07 -1.1920929e-07 -29.423553 0 0 -29.423553 0 0 -29.423553 0 0 -29.423553 
		0 1.1920929e-07 -29.423553 0 0 -29.423553 0 0 -29.423553 -2.3841858e-07 2.3841858e-07 
		-29.423553 -2.3841858e-07 0 -29.423553 1.1920929e-07 0 -29.423553 0 -4.7683716e-07 
		-29.423553 -1.4210855e-14 0 -29.423553 -1.4210855e-14 0 -33.903027 0 2.3841858e-07 
		-33.903027 0 0 -37.633884 0 0 -37.633884 1.1920929e-07 0 -33.903027 2.3841858e-07 
		1.1920929e-07 -37.633884 -4.7683716e-07 0 -33.903027 0 0 -37.633884 0 0 -33.903027 
		2.3841858e-07 0 -37.633884 -4.7683716e-07 -2.3841858e-07 -33.903027 -2.3841858e-07 
		0 -37.633884 0 0 -33.903027 0 0 -37.633884 -2.3841858e-07 0 -33.903027 0 4.7683716e-07 
		-37.633884 -2.2737368e-13 0 -33.903027 0 0 -37.633884 0 -2.3841858e-07 -33.903027 
		-2.3841858e-07 0 -37.633884 2.3841858e-07 0 -33.903027 0 -1.1920929e-07 -37.633884 
		0 0 -33.903027 0 0 -37.633884 0 0 -33.903027 0 1.1920929e-07 -37.633884 0 2.3841858e-07 
		-33.903027 -2.3841858e-07 0 -37.633884 -2.3841858e-07 0 -33.903027 0 0 -37.633884 
		1.1920929e-07 0 -33.903027 -1.4210855e-14 -4.7683716e-07 -37.633884 -1.4210855e-14;
createNode transform -n "Lantern03";
	rename -uid "BA3D9810-4EAD-B0DE-2E32-07A325C33E3C";
	setAttr ".t" -type "double3" -920 0 -160 ;
createNode mesh -n "LanternShape3" -p "Lantern03";
	rename -uid "D0E14BF2-42E5-2A1E-AB09-038814271DE4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  880 0 160 880 0 160 880 0 
		160 880 0 160 880 0 160 880 0 160 880 0 160 880 0 160 880 0 160 880 0 160 880 0 160 
		880 0 160 880 0 160 880 0 160 880 0 160 880 0 160 880 0 160 880 0 160 880 0 160 880 
		0 160 880 0 160 880 0 160 880 0 160 880 0 160;
createNode transform -n "Umbrella";
	rename -uid "425447AF-4F1C-EDCA-99BA-07936DE692EE";
	setAttr ".t" -type "double3" -780 480 0 ;
createNode mesh -n "UmbrellaShape" -p "Umbrella";
	rename -uid "6949D897-4715-6324-8B24-56B30631391F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999997019767761 0.24999994039535522 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 81 ".pt[0:80]" -type "float3"  0 -25.000006 0 -1.1787508 
		-25.000006 1.6101614e-05 -1.1210548 -25.000006 0.36427003 -1.1210521 -25.000006 -0.36425686 
		-0.95362353 -25.000006 -0.69285446 -0.69284606 -25.000006 -0.95363045 -0.36425143 
		-25.000006 -1.1210589 7.9101892e-07 -25.000006 -1.178753 0.36425471 -25.000006 -1.1210568 
		0.69285274 -25.000006 -0.9536289 0.95363045 -25.000006 -0.69285148 1.1210589 -25.000006 
		-0.36425862 1.1787508 -25.000006 -4.3577134e-06 1.1210568 -25.000006 0.36425248 0.95362639 
		-25.000006 0.6928491 0.69285011 -25.000006 0.953628 0.36425143 -25.000006 1.1210568 
		-3.053633e-06 -25.000006 1.178753 -0.3642574 -25.000006 1.1210568 -0.69285816 -25.000006 
		0.953628 -0.95363581 -25.000006 0.69285011 -1.1787508 -25 1.6101614e-05 -1.1210548 
		-25 0.36427003 -1.1210521 -25 -0.36425686 -0.95362353 -25 -0.69285446 -0.69284606 
		-25 -0.95363045 -0.36425143 -25 -1.1210589 7.9101892e-07 -25 -1.178753 0.36425471 
		-25 -1.1210568 0.69285274 -25 -0.9536289 0.95363045 -25 -0.69285148 1.1210589 -25 
		-0.36425862 1.1787508 -25 -4.3577134e-06 1.1210568 -25 0.36425248 0.95362639 -25 
		0.6928491 0.69285011 -25 0.953628 0.36425143 -25 1.1210568 -3.053633e-06 -25 1.178753 
		-0.3642574 -25 1.1210568 -0.69285816 -25 0.953628 -0.95363581 -25 0.69285011 2.335526 
		-23.926262 -0.75885791 0 -25.000004 0 1.9867177 -23.926262 -1.4434338 0 -25.000004 
		0 1.443435 -23.926262 -1.9867167 0 -25.000004 0 0.75885868 -23.926262 -2.335526 0 
		-25.000004 0 2.7645183e-07 -23.926262 -2.4557173 -5.6843419e-14 -25.000004 0 -0.75885814 
		-23.926262 -2.335525 0 -25.000004 0 -1.4434338 -23.926262 -1.9867163 0 -25.000004 
		0 -1.986716 -23.926262 -1.4434334 0 -25.000004 0 -2.335525 -23.926262 -0.75885755 
		0 -25.000004 0 -2.4557159 -23.926262 5.5290354e-07 0 -25.000004 0 -2.335525 -23.926262 
		0.75885868 0 -25.000004 0 -1.9867167 -23.926262 1.4434345 0 -25.000004 0 -1.4434334 
		-23.926262 1.9867172 0 -25.000004 0 -0.75885767 -23.926262 2.335526 0 -25.000004 
		0 2.0326576e-07 -23.926262 2.4557173 0 -25.000004 0 0.75885808 -23.926262 2.335526 
		0 -25.000004 0 1.4434341 -23.926262 1.9867167 0 -25.000004 0 1.9867163 -23.926262 
		1.4434339 0 -25.000004 0 2.3355255 -23.926262 0.75885868 0 -25.000004 0 2.4557159 
		-23.926262 5.5290354e-07 0 -25.000004 0;
createNode transform -n "Path";
	rename -uid "C1B62633-40A1-039E-A913-0EBB13C7508A";
	setAttr ".t" -type "double3" -740 0 0 ;
createNode mesh -n "PathShape" -p "Path";
	rename -uid "1C17644D-4A04-B27F-807D-1E863CF2F71B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 10 0 0 10 0 0 10 0 0 10 
		0 0 10 0 0 10 0 0 10 0 0 10 0;
createNode transform -n "Dangle";
	rename -uid "D361683E-4719-ED27-B603-7D852BB7C58B";
	setAttr ".t" -type "double3" -860 160 -460 ;
createNode mesh -n "DangleShape" -p "Dangle";
	rename -uid "D58A1FAF-489B-3B74-2707-8284B92D24BC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".pt[0:59]" -type "float3"  960 -160 0 960 -160 0 960 
		-160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 
		0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 
		-160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 
		0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 
		-160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 
		0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 
		-160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 
		0 960 -160 0 960 -160 0 960 -160 0 960 -160 0 960 -160 0;
createNode transform -n "Panel";
	rename -uid "E13D7720-4C4E-E04C-C86F-60915686DE19";
	setAttr ".t" -type "double3" -639.85931158493111 0 -480 ;
createNode mesh -n "PanelShape" -p "Panel";
	rename -uid "E93BDB76-4A4E-3B94-2D6C-EDA0DD0F5365";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  639.85931 0 160 639.85931 
		0 160 639.85931 0 160 639.85931 0 160 639.85931 0 160 639.85931 0 160 639.85931 0 
		160 639.85931 0 160 639.85931 0 160 639.85931 0 160 639.85931 0 160 639.85931 0 160;
createNode transform -n "StreetSign";
	rename -uid "AB3C9095-46E9-E862-540A-A4839E83CC2B";
	setAttr ".t" -type "double3" -560 0 -480 ;
createNode mesh -n "StreetSignShape" -p "StreetSign";
	rename -uid "C5B85F35-4484-D332-5F7D-8FA688D2CFBA";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:29]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 14 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[26]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[8:15]" "f[27]";
	setAttr ".gtag[2].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[0:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "vtx[0:7]" "vtx[16]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:7]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[0:15]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 2 "vtx[8:15]" "vtx[17]";
	setAttr ".gtag[7].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "vtx[8:15]";
	setAttr ".gtag[8].gtagnm" -type "string" "front";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[24]";
	setAttr ".gtag[9].gtagnm" -type "string" "left";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "f[29]";
	setAttr ".gtag[10].gtagnm" -type "string" "right";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 1 "f[28]";
	setAttr ".gtag[11].gtagnm" -type "string" "sides";
	setAttr ".gtag[11].gtagcmp" -type "componentList" 1 "f[0:7]";
	setAttr ".gtag[12].gtagnm" -type "string" "top";
	setAttr ".gtag[12].gtagcmp" -type "componentList" 2 "f[16:23]" "f[25]";
	setAttr ".gtag[13].gtagnm" -type "string" "topRing";
	setAttr ".gtag[13].gtagcmp" -type "componentList" 1 "e[8:15]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-08 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998 0.375 0
		 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375
		 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  544.70441 0 -1.9999998 544.70441 
		0 -1.9999998 544.70441 0 -1.9999998 544.70441 0 -1.9999999 544.70441 0 -1.9999999 
		544.70441 0 -1.9999999 544.70441 0 -1.9999999 544.70441 0 -1.9999999 544.70441 0 
		-1.9999998 544.70441 0 -1.9999998 544.70441 0 -1.9999998 544.70441 0 -1.9999999 544.70441 
		0 -1.9999999 544.70441 0 -1.9999999 544.70441 0 -1.9999999 544.70441 0 -1.9999999 
		544.70441 0 -1.9999999 544.70441 0 -1.9999999 544.70441 0 156.606 544.70441 0 156.606 
		544.70441 0 156.606 544.70441 0 156.606 544.70441 0 159.394 544.70441 0 159.394 544.70441 
		0 159.394 544.70441 0 159.394;
	setAttr -s 26 ".vt[0:25]"  -543.29022217 0 -1.41421342 -544.70440674 0 -1.99999976
		 -546.11859131 0 -1.41421342 -546.70440674 0 0 -546.11859131 0 1.41421342 -544.70440674 0 1.99999988
		 -543.29022217 0 1.41421354 -542.70440674 0 0 -543.29022217 260 -1.41421342 -544.70440674 260 -1.99999976
		 -546.11859131 260 -1.41421342 -546.70440674 260 0 -546.11859131 260 1.41421342 -544.70440674 260 1.99999988
		 -543.29022217 260 1.41421354 -542.70440674 260 0 -544.70440674 0 0 -544.70440674 260 0
		 -545 60 -157.5 -495 60 -157.5 -545 260 -157.5 -495 260 -157.5 -545 260 -162.5 -495 260 -162.5
		 -545 60 -162.5 -495 60 -162.5;
	setAttr -s 52 ".ed[0:51]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 0 1 9 0 2 10 0
		 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1 18 19 0 20 21 0
		 22 23 0 24 25 0 18 20 0 19 21 0 20 22 0 21 23 0 22 24 0 23 25 0 24 18 0 25 19 0;
	setAttr -s 30 -ch 104 ".fc[0:29]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35
		f 4 40 45 -42 -45
		mu 0 4 36 37 38 39
		f 4 41 47 -43 -47
		mu 0 4 39 38 40 41
		f 4 42 49 -44 -49
		mu 0 4 41 40 42 43
		f 4 43 51 -41 -51
		mu 0 4 43 42 44 45
		f 4 -52 -50 -48 -46
		mu 0 4 37 46 47 38
		f 4 50 44 46 48
		mu 0 4 48 36 39 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Bamboo";
	rename -uid "58700984-4C39-A15D-2ED7-AAB321D73BC8";
	setAttr ".t" -type "double3" 2100 0 -1420 ;
createNode mesh -n "BambooShape" -p "Bamboo";
	rename -uid "F0BCDFB0-44D9-BBF2-0002-7BBE42279DE2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.74999997019767761 0.12750013917684555 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 108 ".pt[0:107]" -type "float3"  0 500 0 0 500 0 0 500 0 0 
		500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 608.89026 0 0 608.89026 0 0 608.89026 0 0 
		608.89026 0 0 608.89026 0 0 608.89026 0 0 608.89026 0 0 608.89026 0 0 500 0 0 500 
		0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 
		0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 
		500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 608.89026 
		0 0 608.89026 0 0 608.89026 0 0 608.89026 0 39.841915 500 0 39.841915 500 0 39.841915 
		500 0 39.841915 500 0 0 500 0 0 500 0 0 500 0 0 500 0 3.1024315 471.01465 0 3.1024315 
		471.01465 0 3.1024315 471.01465 0 3.1024315 471.01465 0 0 500 0 0 500 0 0 500 0 0 
		500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 
		0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 500 0 0 608.89026 0 0 608.89026 0 0 608.89026 
		0 0 608.89026 0 0 608.89026 0 0 608.89026 0 0 608.89026 0 0 608.89026 0 0 500 0 0 
		500 0 0 500 0 0 500 0 19.660015 500 0 19.660015 500 0 19.660015 500 0 19.660015 500 
		0 -23.753548 499.97278 0 -23.753548 499.97278 0 -23.753548 499.97278 0 -23.753548 
		499.97278 0 104.83038 526.94647 0 104.83038 526.94647 0 104.83038 526.94653 0 104.83038 
		526.94653 0;
createNode transform -n "BambooLight";
	rename -uid "9135704C-46B5-6B6B-AAD3-AB9FFF4CA79F";
	setAttr ".t" -type "double3" -991.65214058017705 0 -140 ;
createNode mesh -n "BambooLightShape" -p "BambooLight";
	rename -uid "C0EDBCEB-45BA-55C5-E95F-7D9F57879393";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".pt[0:33]" -type "float3"  991.65216 0 140 991.65216 
		0 140 991.65216 0 140 991.65216 0 140 991.65216 0 140 991.65216 0 140 991.65216 0 
		140 991.65216 0 140 991.65216 0 140 991.65216 0 140 991.65216 0 140 991.65216 0 140 
		991.65216 0 140 991.65216 0 140 991.65216 0 140 991.65216 0 140 991.65216 0 140 991.65216 
		0 140 991.65216 0 140 991.65216 0 140 991.65216 0 140 991.65216 0 140 991.65216 0 
		140 991.65216 0 140 991.65216 0 140 991.65216 0 140 991.65216 0 140 991.65216 0 140 
		991.65216 0 140 991.65216 0 140 991.65216 0 140 991.65216 0 140 991.65216 0 140 991.65216 
		0 140;
createNode transform -n "Wall";
	rename -uid "B910BD1D-457A-BA91-B302-ADA371E37E54";
	setAttr ".t" -type "double3" -1140 20 -260 ;
createNode mesh -n "WallShape" -p "Wall";
	rename -uid "8AF68179-496F-7EC6-A167-A8B3913995EC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt[0:29]" -type "float3"  1140 -20 260 1140 -20 260 
		1140 -20 260 1140 -20 260 1140 -20 260 1140 -20 260 1140 -20 260 1140 -20 260 1140 
		-20 260 1140 -20 260 1140 -20 260 1140 -20 260 1140 -20 260 1140 -20 260 1140 -20 
		260 1140 -20 260 1140 -20 260 1140 -20 260 1140 -20 260 1140 -20 260 1140 -20 260 
		1140 -20 260 1140 -20 260 1140 -20 260 1140 -20 260 1140 -20 260 1140 -20 260 1140 
		-20 260 1140 -20 260 1140 -20 260;
createNode transform -n "House01";
	rename -uid "597BC87C-4937-5280-E970-82B354AA9896";
	setAttr ".t" -type "double3" -540 0 -740 ;
createNode mesh -n "HouseShape1" -p "House01";
	rename -uid "20E918A0-4EE3-1568-DF23-1CB0F4EBF530";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  0 350 0 0 350 0 3.1832438 
		350 -3.1832438 -3.1832438 350 -3.1832438 3.1832438 350 3.1832438 -3.1832438 350 3.1832438 
		0 350 0 0 350 0 0 350 0 0 350 0 0 350 0 0 350 0 0 350 0 0 350 0 0 350 0 0 350 0;
createNode transform -n "House02";
	rename -uid "59C39FAE-434B-2CEB-F330-7D9A769B2D30";
	setAttr ".t" -type "double3" 160 0 -740 ;
createNode mesh -n "HouseShape2" -p "House02";
	rename -uid "DCDCECF8-475B-F991-95A9-139615A7802B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.37500001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt[0:29]" -type "float3"  0 375 0 0 375 0 0 375 0 0 
		375 0 0 375 0 0 375 0 0 375 0 0 375 0 0 375 0 0 375 0 0 375 0 0 375 0 0 375 0 0 375 
		0 0 375 0 0 375 0 0 375 0 0 375 0 0 375 0 0 375 0 0 375 0 0 375 0 0 375 0 0 375 0 
		0 359.4794 18.715874 -16.178493 359.4794 18.715872 -16.178493 359.4794 -18.715874 
		0 359.4794 -18.715872 16.178493 359.4794 -18.715874 16.178493 359.4794 18.715872;
	setAttr -av ".pt[2].px";
	setAttr -av ".pt[2].py";
	setAttr -av ".pt[2].pz";
	setAttr -av ".pt[3].px";
	setAttr -av ".pt[3].py";
	setAttr -av ".pt[3].pz";
	setAttr -av ".pt[4].px";
	setAttr -av ".pt[4].py";
	setAttr -av ".pt[4].pz";
	setAttr -av ".pt[5].px";
	setAttr -av ".pt[5].py";
	setAttr -av ".pt[5].pz";
	setAttr -av ".pt[10].px";
	setAttr -av ".pt[10].py";
	setAttr -av ".pt[10].pz";
	setAttr -av ".pt[11].px";
	setAttr -av ".pt[11].py";
	setAttr -av ".pt[11].pz";
createNode transform -n "House03";
	rename -uid "ECD61809-40AF-5D88-0769-D483E3D04AE2";
	setAttr ".t" -type "double3" -1563.0735701100969 40 -740 ;
createNode mesh -n "HouseShape3" -p "House03";
	rename -uid "2E92C370-4D1E-F4DF-F122-CEB570FCC807";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.37500001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".pt[0:35]" -type "float3"  0 450 0 0 450 0 0 258.6394 
		0 0 258.6394 0 0 258.6394 0 0 258.6394 0 0 450 0 0 450 0 0 258.6394 0 0 258.6394 
		0 0 258.6394 0 0 258.6394 0 0 305.37067 0 0 305.37067 0 0 305.37067 0 0 305.37067 
		0 0 305.37067 0 0 305.37067 0 0 305.37067 0 0 305.37067 0 0 258.6394 0 0 258.6394 
		0 0 258.6394 0 0 258.6394 0 0 305.37067 0 0 305.37067 0 0 305.37067 0 0 305.37067 
		0 0 305.37067 0 0 305.37067 0 0 305.37067 0 0 305.37067 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "Fence";
	rename -uid "221A01EB-4979-424B-1F85-3B804F619F55";
	setAttr ".t" -type "double3" 360 0 -160 ;
createNode mesh -n "FenceShape" -p "Fence";
	rename -uid "B79CE660-4E83-014E-184E-61BC3D163163";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 65 0 0 65 0 0 65 0 0 65 
		0 0 65 0 0 65 0 0 65 0 0 65 0;
createNode transform -n "Guardrail";
	rename -uid "2B26FE9D-4F81-0CED-731E-4CB94D6CEFAE";
	setAttr ".t" -type "double3" 860 0 -160 ;
	setAttr ".s" -type "double3" 1 1 3.1406881551650114 ;
createNode mesh -n "GuardrailShape" -p "Guardrail";
	rename -uid "489ABCCA-4D71-F15F-6F30-8EB7287E2BFB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 50 0 0 50 0 0 30 0 0 30 
		0 0 30 0 0 30 0 0 50 0 0 50 0;
	setAttr -s 8 ".vt[0:7]"  -50 -50 2.5 50 -50 2.5 -50 50 2.5 50 50 2.5
		 -50 50 -2.5 50 50 -2.5 -50 -50 -2.5 50 -50 -2.5;
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
createNode transform -n "WallShrooms";
	rename -uid "6EF6EBEE-4754-3118-331F-64AF389AC575";
	setAttr ".t" -type "double3" 155.81812702472567 44.749599713696547 0 ;
createNode mesh -n "WallShroomsShape" -p "WallShrooms";
	rename -uid "99414B6E-4B5F-CB2C-B0A0-B887A514858D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:447]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 553 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.125 0.125 0.125 0.25 0.125
		 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25 0.125 0.25
		 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.375 0.125
		 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375 1 0.375
		 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.625
		 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875 0.625 1
		 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875
		 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875 0.75
		 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875 0 0.8125
		 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125 1 0.9375
		 1 0 0.125 0.125 0.125 0.125 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25
		 0.5 0.125 0.5 0.25 0.625 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875
		 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375
		 0.75 0.375 0.875 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5
		 0.75 0.5 0.875 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625
		 0.625 0.75 0.625 0.875 0.625 1 0.625 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75 0.5 0.75
		 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.125 0.875 0 0.875 0.25 0.875 0.375 0.875
		 0.5 0.875 0.625 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375
		 0 0.5625 0 0.6875 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625
		 1 0.6875 1 0.8125 1 0.9375 1 0 0.125 0.125 0.125 0.125 0.25 0 0.25 0.25 0.125 0.25
		 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25 0.625 0.125 0.625 0.25 0.75 0.125
		 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375 0.25 0.375 0.375
		 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5
		 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625
		 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875 0.625 1 0.625 0.125 0.75 0 0.75
		 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.125 0.875
		 0 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875 0.75 0.875 0.875 0.875 1 0.875
		 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875 0 0.8125 0 0.9375 0 0.0625 1
		 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125 1 0.9375 1 0 0.125 0.125 0.125
		 0.125 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25
		 0.625 0.125 0.625 0.25 0.75 0.125;
	setAttr ".uvst[0].uvsp[250:499]" 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1
		 0.25 0.125 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375
		 0.875 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5
		 0.875 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625
		 0.75 0.625 0.875 0.625 1 0.625 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625
		 0.75 0.75 0.75 0.875 0.75 1 0.75 0.125 0.875 0 0.875 0.25 0.875 0.375 0.875 0.5 0.875
		 0.625 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625
		 0 0.6875 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875
		 1 0.8125 1 0.9375 1 0 0.125 0.125 0.125 0.125 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375
		 0.125 0.375 0.25 0.5 0.125 0.5 0.25 0.625 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875
		 0.125 0.875 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375
		 0.625 0.375 0.75 0.375 0.875 0.375 1 0.375 0.125 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5
		 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625 0.375 0.625
		 0.5 0.625 0.625 0.625 0.75 0.625 0.875 0.625 1 0.625 0.125 0.75 0 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.125 0.875 0 0.875 0.25
		 0.875 0.375 0.875 0.5 0.875 0.625 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875
		 0 0.3125 0 0.4375 0 0.5625 0 0.6875 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125
		 1 0.4375 1 0.5625 1 0.6875 1 0.8125 1 0.9375 1 0 0.125 0.125 0.125 0.125 0.25 0 0.25
		 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25 0.5 0.125 0.5 0.25 0.625 0.125 0.625
		 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375
		 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375 1 0.375 0.125
		 0.5 0 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0.125 0.625
		 0 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875 0.625 1 0.625
		 0.125 0.75 0 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1
		 0.75 0.125 0.875 0 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875 0.75 0.875
		 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875 0 0.8125
		 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125 1 0.9375
		 1 0 0.125 0.125 0.125 0.125 0.25 0 0.25 0.25 0.125 0.25 0.25 0.375 0.125 0.375 0.25
		 0.5 0.125 0.5 0.25 0.625 0.125 0.625 0.25 0.75 0.125 0.75 0.25 0.875 0.125 0.875
		 0.25 1 0.125 1 0.25 0.125 0.375 0 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375
		 0.75 0.375 0.875 0.375;
	setAttr ".uvst[0].uvsp[500:552]" 1 0.375 0.125 0.5 0 0.5 0.25 0.5 0.375 0.5
		 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0.125 0.625 0 0.625 0.25 0.625 0.375 0.625
		 0.5 0.625 0.625 0.625 0.75 0.625 0.875 0.625 1 0.625 0.125 0.75 0 0.75 0.25 0.75
		 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0.125 0.875 0 0.875 0.25
		 0.875 0.375 0.875 0.5 0.875 0.625 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875
		 0 0.3125 0 0.4375 0 0.5625 0 0.6875 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125
		 1 0.4375 1 0.5625 1 0.6875 1 0.8125 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 406 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -155.81813 -44.749603 0 -155.81813 
		-44.749603 0 -155.81813 -44.749603 0 -155.81813 -44.749603 0 -155.81813 -44.749603 
		0 -155.81813 -44.749603 0 -155.81813 -44.749603 0 -155.81813 -44.749603 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0;
	setAttr ".pt[166:331]" -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0;
	setAttr ".pt[332:405]" -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 
		0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 -44.749599 0 -155.81813 
		-44.749599 0 -155.81813 -44.749599 0;
	setAttr -s 406 ".vt";
	setAttr ".vt[0:165]"  152.37362671 9.88245583 -10.93408489 148.48458862 9.88245583 -12.32722092
		 144.59555054 9.88245583 -10.93408489 142.98464966 9.88245583 -7.57075596 144.59555054 9.88245583 -4.20742702
		 148.48458862 9.88245583 -2.81429052 152.37364197 9.88245583 -4.20742655 153.98452759 9.88245583 -7.57075596
		 155.67060852 10.63498592 -13.7853775 148.48458862 10.63498592 -16.35955811 141.29856873 10.63498592 -13.7853775
		 138.32202148 10.63498592 -7.57075596 141.29856873 10.63498592 -1.35613489 148.48458862 10.63498592 1.21804523
		 155.67060852 10.63498592 -1.35613441 158.64715576 10.63498592 -7.57075596 157.87358093 11.76122665 -15.69054985
		 148.48458862 11.76122665 -19.053878784 139.095596313 11.76122665 -15.69054985 135.20655823 11.76122665 -7.57075596
		 139.095596313 11.76122665 0.54903793 148.48458862 11.76122665 3.91236591 157.87358093 11.76122665 0.54903793
		 161.76261902 11.76122665 -7.57075596 158.64715576 13.089717865 -16.35955811 148.48458862 13.089717865 -19.99999809
		 138.32202148 13.089717865 -16.35955811 134.11254883 13.089717865 -7.57075596 138.32202148 13.089717865 1.21804523
		 148.48458862 13.089717865 4.85848618 158.64715576 13.089717865 1.21804619 162.85662842 13.089717865 -7.57075596
		 157.87358093 14.41820908 -15.69054985 148.48458862 14.41820908 -19.053878784 139.095596313 14.41820908 -15.69054985
		 135.20655823 14.41820908 -7.57075596 139.095596313 14.41820908 0.54903793 148.48458862 14.41820908 3.91236591
		 157.87358093 14.41820908 0.54903793 161.76261902 14.41820908 -7.57075596 155.67060852 15.54444981 -13.7853775
		 148.48458862 15.54444981 -16.35955811 141.29856873 15.54444981 -13.7853775 138.32202148 15.54444981 -7.57075596
		 141.29856873 15.54444981 -1.35613489 148.48458862 15.54444981 1.21804523 155.67060852 15.54444981 -1.35613441
		 158.64715576 15.54444981 -7.57075596 152.37362671 16.2969799 -10.93408489 148.48458862 16.2969799 -12.32722092
		 144.59555054 16.2969799 -10.93408489 142.98464966 16.2969799 -7.57075596 144.59555054 16.2969799 -4.20742702
		 148.48458862 16.2969799 -2.81429052 152.37364197 16.2969799 -4.20742655 153.98452759 16.2969799 -7.57075596
		 148.48458862 9.61820221 -7.57075596 148.48458862 16.56123352 -7.57075596 179.43984985 56.51401901 -8.95692444
		 175.16014099 56.51401901 -10.65388584 170.88043213 56.51401901 -8.95692444 169.10771179 56.51401901 -4.8600955
		 170.88043213 56.51401901 -0.76326704 175.16014099 56.51401901 0.93369532 179.43986511 56.51401901 -0.76326656
		 181.21257019 56.51401901 -4.8600955 183.068023682 57.67028809 -12.43004608 175.16014099 57.67028809 -15.56562233
		 167.2522583 57.67028809 -12.43004608 163.97669983 57.67028809 -4.8600955 167.2522583 57.67028809 2.70985556
		 175.16014099 57.67028809 5.84543276 183.068023682 57.67028809 2.70985651 186.34358215 57.67028809 -4.8600955
		 185.49229431 59.40076447 -14.75071335 175.16014099 59.40076447 -18.84754181 164.82798767 59.40076447 -14.75071335
		 160.54827881 59.40076447 -4.8600955 164.82798767 59.40076447 5.03052187 175.16014099 59.40076447 9.12734985
		 185.49229431 59.40076447 5.030522823 189.77200317 59.40076447 -4.8600955 186.34358215 61.44200134 -15.56562233
		 175.16014099 61.44200134 -19.99999809 163.97669983 61.44200134 -15.56562233 159.34437561 61.44200134 -4.8600955
		 163.97669983 61.44200134 5.8454318 175.16014099 61.44200134 10.27980614 186.34358215 61.44200134 5.84543371
		 190.97590637 61.44200134 -4.8600955 185.49229431 63.48323822 -14.75071335 175.16014099 63.48323822 -18.84754181
		 164.82798767 63.48323822 -14.75071335 160.54827881 63.48323822 -4.8600955 164.82798767 63.48323822 5.03052187
		 175.16014099 63.48323822 9.12734985 185.49229431 63.48323822 5.030522823 189.77200317 63.48323822 -4.8600955
		 183.068023682 65.2137146 -12.43004608 175.16014099 65.2137146 -15.56562233 167.2522583 65.2137146 -12.43004608
		 163.97669983 65.2137146 -4.8600955 167.2522583 65.2137146 2.70985556 175.16014099 65.2137146 5.84543276
		 183.068023682 65.2137146 2.70985651 186.34358215 65.2137146 -4.8600955 179.43984985 66.36997986 -8.95692444
		 175.16014099 66.36997986 -10.65388584 170.88043213 66.36997986 -8.95692444 169.10771179 66.36997986 -4.8600955
		 170.88043213 66.36997986 -0.76326704 175.16014099 66.36997986 0.93369532 179.43986511 66.36997986 -0.76326656
		 181.21257019 66.36997986 -4.8600955 175.16014099 56.10799408 -4.8600955 175.16014099 66.77600861 -4.8600955
		 172.71824646 24.22119904 -10.92621422 168.97808838 24.22119904 -12.32056046 165.2379303 24.22119904 -10.92621422
		 163.68870544 24.22119904 -7.55996561 165.2379303 24.22119904 -4.19371653 168.97808838 24.22119904 -2.79937029
		 172.71824646 24.22119904 -4.19371605 174.26747131 24.22119904 -7.55996561 175.88900757 25.091293335 -13.77998161
		 168.97808838 25.091293335 -16.35639763 162.067169189 25.091293335 -13.77998161 159.20457458 25.091293335 -7.55996561
		 162.067169189 25.091293335 -1.33994913 168.97808838 25.091293335 1.23646593 175.88900757 25.091293335 -1.33994865
		 178.75160217 25.091293335 -7.55996561 178.0076446533 26.39348412 -15.68680763 168.97808838 26.39348412 -19.053056717
		 159.9485321 26.39348412 -15.68680763 156.20837402 26.39348412 -7.55996561 159.9485321 26.39348412 0.56687689
		 168.97808838 26.39348412 3.93312597 178.0076446533 26.39348412 0.56687784 181.74780273 26.39348412 -7.55996561
		 178.75160217 27.92952156 -16.35639763 168.97808838 27.92952156 -19.99999809 159.20457458 27.92952156 -16.35639763
		 155.15625 27.92952156 -7.55996561 159.20457458 27.92952156 1.23646593 168.97808838 27.92952156 4.88006735
		 178.75160217 27.92952156 1.23646688 182.79992676 27.92952156 -7.55996561 178.0076446533 29.46555901 -15.68680763
		 168.97808838 29.46555901 -19.053056717 159.9485321 29.46555901 -15.68680763 156.20837402 29.46555901 -7.55996561
		 159.9485321 29.46555901 0.56687689 168.97808838 29.46555901 3.93312597 178.0076446533 29.46555901 0.56687784
		 181.74780273 29.46555901 -7.55996561 175.88900757 30.76774979 -13.77998161 168.97808838 30.76774979 -16.35639763
		 162.067169189 30.76774979 -13.77998161 159.20457458 30.76774979 -7.55996561 162.067169189 30.76774979 -1.33994913
		 168.97808838 30.76774979 1.23646593 175.88900757 30.76774979 -1.33994865 178.75160217 30.76774979 -7.55996561
		 172.71824646 31.63784409 -10.92621422 168.97808838 31.63784409 -12.32056046;
	setAttr ".vt[166:331]" 165.2379303 31.63784409 -10.92621422 163.68870544 31.63784409 -7.55996561
		 165.2379303 31.63784409 -4.19371653 168.97808838 31.63784409 -2.79937029 172.71824646 31.63784409 -4.19371605
		 174.26747131 31.63784409 -7.55996561 168.97808838 23.91566086 -7.55996561 168.97808838 31.94338226 -7.55996561
		 160.30322266 21.013738632 -12.79110432 157.39372253 21.013738632 -13.89887714 154.48422241 21.013738632 -12.79110432
		 153.27906799 21.013738632 -10.11670399 154.48422241 21.013738632 -7.44230366 157.39372253 21.013738632 -6.33453083
		 160.30322266 21.013738632 -7.44230318 161.50837708 21.013738632 -10.11670399 162.76977539 21.60061264 -15.058351517
		 157.39372253 21.60061264 -17.1052475 152.017669678 21.60061264 -15.058351517 149.79083252 21.60061264 -10.11670399
		 152.017669678 21.60061264 -5.17505693 157.39372253 21.60061264 -3.12815952 162.76977539 21.60061264 -5.17505646
		 164.99661255 21.60061264 -10.11670399 164.4178772 22.47893333 -16.57327652 157.39372253 22.47893333 -19.24767685
		 150.36956787 22.47893333 -16.57327652 147.46006775 22.47893333 -10.11670399 150.36956787 22.47893333 -3.66013098
		 157.39372253 22.47893333 -0.98573112 164.4178772 22.47893333 -3.6601305 167.32737732 22.47893333 -10.11670399
		 164.99661255 23.51498413 -17.1052475 157.39372253 23.51498413 -19.99999809 149.79083252 23.51498413 -17.1052475
		 146.64161682 23.51498413 -10.11670399 149.79083252 23.51498413 -3.12816 157.39372253 23.51498413 -0.23340988
		 164.99661255 23.51498413 -3.12815905 168.14582825 23.51498413 -10.11670399 164.4178772 24.55103493 -16.57327652
		 157.39372253 24.55103493 -19.24767685 150.36956787 24.55103493 -16.57327652 147.46006775 24.55103493 -10.11670399
		 150.36956787 24.55103493 -3.66013098 157.39372253 24.55103493 -0.98573112 164.4178772 24.55103493 -3.6601305
		 167.32737732 24.55103493 -10.11670399 162.76977539 25.42935562 -15.058351517 157.39372253 25.42935562 -17.1052475
		 152.017669678 25.42935562 -15.058351517 149.79083252 25.42935562 -10.11670399 152.017669678 25.42935562 -5.17505693
		 157.39372253 25.42935562 -3.12815952 162.76977539 25.42935562 -5.17505646 164.99661255 25.42935562 -10.11670399
		 160.30322266 26.01622963 -12.79110432 157.39372253 26.01622963 -13.89887714 154.48422241 26.01622963 -12.79110432
		 153.27906799 26.01622963 -10.11670399 154.48422241 26.01622963 -7.44230366 157.39372253 26.01622963 -6.33453083
		 160.30322266 26.01622963 -7.44230318 161.50837708 26.01622963 -10.11670399 157.39372253 20.80765533 -10.11670399
		 157.39372253 26.22231293 -10.11670399 152.028610229 36.7005806 -6.52255487 146.14173889 36.7005806 -8.59360027
		 140.25486755 36.7005806 -6.52255487 137.81643677 36.7005806 -1.52260888 140.25486755 36.7005806 3.47733736
		 146.14173889 36.7005806 5.54838276 152.028610229 36.7005806 3.47733784 154.46704102 36.7005806 -1.52260888
		 157.019256592 37.85684967 -10.76130295 146.14173889 37.85684967 -14.58809566 135.26422119 37.85684967 -10.76130295
		 130.75860596 37.85684967 -1.52260888 135.26422119 37.85684967 7.71608543 146.14173889 37.85684967 11.5428791
		 157.019256592 37.85684967 7.71608639 161.52487183 37.85684967 -1.52260888 160.35391235 39.58732605 -13.59354496
		 146.14173889 39.58732605 -18.5934906 131.92956543 39.58732605 -13.59354496 126.042701721 39.58732605 -1.52260888
		 131.92956543 39.58732605 10.54832745 146.14173889 39.58732605 15.54827213 160.35391235 39.58732605 10.5483284
		 166.24078369 39.58732605 -1.52260888 161.52487183 41.62856293 -14.58809566 146.14173889 41.62856293 -19.99999809
		 130.75860596 41.62856293 -14.58809566 124.38669586 41.62856293 -1.52260888 130.75860596 41.62856293 11.54287815
		 146.14173889 41.62856293 16.95477867 161.52487183 41.62856293 11.54288006 167.89678955 41.62856293 -1.52260888
		 160.35391235 43.6697998 -13.59354496 146.14173889 43.6697998 -18.5934906 131.92956543 43.6697998 -13.59354496
		 126.042701721 43.6697998 -1.52260888 131.92956543 43.6697998 10.54832745 146.14173889 43.6697998 15.54827213
		 160.35391235 43.6697998 10.5483284 166.24078369 43.6697998 -1.52260888 157.019256592 45.40027618 -10.76130295
		 146.14173889 45.40027618 -14.58809566 135.26422119 45.40027618 -10.76130295 130.75860596 45.40027618 -1.52260888
		 135.26422119 45.40027618 7.71608543 146.14173889 45.40027618 11.5428791 157.019256592 45.40027618 7.71608639
		 161.52487183 45.40027618 -1.52260888 152.028610229 46.55654526 -6.52255487 146.14173889 46.55654526 -8.59360027
		 140.25486755 46.55654526 -6.52255487 137.81643677 46.55654526 -1.52260888 140.25486755 46.55654526 3.47733736
		 146.14173889 46.55654526 5.54838276 152.028610229 46.55654526 3.47733784 154.46704102 46.55654526 -1.52260888
		 146.14173889 36.29455566 -1.52260888 146.14173889 46.96257019 -1.52260888 137.57449341 43.98963928 -10.099012375
		 133.9723053 43.98963928 -11.62047195 130.37011719 43.98963928 -10.099012375 128.8780365 43.98963928 -6.42588234
		 130.37011719 43.98963928 -2.75275254 133.9723053 43.98963928 -1.23129225 137.57449341 43.98963928 -2.7527523
		 139.066574097 43.98963928 -6.42588234 140.62828064 45.14590836 -13.21294022 133.9723053 45.14590836 -16.024230957
		 127.31632233 45.14590836 -13.21294022 124.55932617 45.14590836 -6.42588234 127.31632233 45.14590836 0.36117554
		 133.9723053 45.14590836 3.17246723 140.62828064 45.14590836 0.36117649 143.38528442 45.14590836 -6.42588234
		 142.66876221 46.87638474 -15.29360104 133.9723053 46.87638474 -18.96673012 125.27584839 46.87638474 -15.29360104
		 121.67365265 46.87638474 -6.42588234 125.27584839 46.87638474 2.44183636 133.9723053 46.87638474 6.11496544
		 142.66876221 46.87638474 2.44183636 146.27095032 46.87638474 -6.42588234 143.38528442 48.91762161 -16.024230957
		 133.9723053 48.91762161 -19.99999809 124.55932617 48.91762161 -16.024230957 120.66033936 48.91762161 -6.42588234
		 124.55932617 48.91762161 3.17246723 133.9723053 48.91762161 7.14823341 143.38528442 48.91762161 3.17246819
		 147.28427124 48.91762161 -6.42588234 142.66876221 50.95885849 -15.29360104 133.9723053 50.95885849 -18.96673012
		 125.27584839 50.95885849 -15.29360104 121.67365265 50.95885849 -6.42588234 125.27584839 50.95885849 2.44183636
		 133.9723053 50.95885849 6.11496544 142.66876221 50.95885849 2.44183636 146.27095032 50.95885849 -6.42588234
		 140.62828064 52.68933487 -13.21294022 133.9723053 52.68933487 -16.024230957;
	setAttr ".vt[332:405]" 127.31632233 52.68933487 -13.21294022 124.55932617 52.68933487 -6.42588234
		 127.31632233 52.68933487 0.36117554 133.9723053 52.68933487 3.17246723 140.62828064 52.68933487 0.36117649
		 143.38528442 52.68933487 -6.42588234 137.57449341 53.84560394 -10.099012375 133.9723053 53.84560394 -11.62047195
		 130.37011719 53.84560394 -10.099012375 128.8780365 53.84560394 -6.42588234 130.37011719 53.84560394 -2.75275254
		 133.9723053 53.84560394 -1.23129225 137.57449341 53.84560394 -2.7527523 139.066574097 53.84560394 -6.42588234
		 133.9723053 43.58361435 -6.42588234 133.9723053 54.25162888 -6.42588234 153.96379089 69.61901093 -5.41196108
		 149.095703125 69.61901093 -7.6536684 144.22761536 69.61901093 -5.41196108 142.21118164 69.61901093 0
		 144.22761536 69.61901093 5.41196108 149.095703125 69.61901093 7.65366888 153.96379089 69.61901093 5.41196156
		 155.98022461 69.61901093 0 158.090759277 70.77527618 -9.99999905 149.095703125 70.77527618 -14.14213371
		 140.10064697 70.77527618 -9.99999905 136.37478638 70.77527618 0 140.10064697 70.77527618 9.99999905
		 149.095703125 70.77527618 14.14213467 158.090759277 70.77527618 10 161.81661987 70.77527618 0
		 160.84829712 72.50575256 -13.065628052 149.095703125 72.50575256 -18.47758865 137.34310913 72.50575256 -13.065628052
		 132.47502136 72.50575256 0 137.34310913 72.50575256 13.065628052 149.095703125 72.50575256 18.47758865
		 160.84829712 72.50575256 13.065629005 165.71638489 72.50575256 0 161.81661987 74.54698944 -14.14213371
		 149.095703125 74.54698944 -19.99999809 136.37478638 74.54698944 -14.14213371 131.10560608 74.54698944 0
		 136.37478638 74.54698944 14.14213371 149.095703125 74.54698944 19.99999809 161.81661987 74.54698944 14.14213562
		 167.085800171 74.54698944 0 160.84829712 76.58822632 -13.065628052 149.095703125 76.58822632 -18.47758865
		 137.34310913 76.58822632 -13.065628052 132.47502136 76.58822632 0 137.34310913 76.58822632 13.065628052
		 149.095703125 76.58822632 18.47758865 160.84829712 76.58822632 13.065629005 165.71638489 76.58822632 0
		 158.090759277 78.3187027 -9.99999905 149.095703125 78.3187027 -14.14213371 140.10064697 78.3187027 -9.99999905
		 136.37478638 78.3187027 0 140.10064697 78.3187027 9.99999905 149.095703125 78.3187027 14.14213467
		 158.090759277 78.3187027 10 161.81661987 78.3187027 0 153.96379089 79.47496796 -5.41196108
		 149.095703125 79.47496796 -7.6536684 144.22761536 79.47496796 -5.41196108 142.21118164 79.47496796 0
		 144.22761536 79.47496796 5.41196108 149.095703125 79.47496796 7.65366888 153.96379089 79.47496796 5.41196156
		 155.98022461 79.47496796 0 149.095703125 69.21298218 0 149.095703125 79.8809967 0;
	setAttr -s 840 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 0 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0 7 15 0 8 16 0
		 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0 18 26 0 19 27 0
		 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0 29 37 0 30 38 0
		 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0 40 48 0 41 49 0
		 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0 56 3 0 56 4 0
		 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0 54 57 0 55 57 0
		 58 59 0 59 60 0 60 61 0 61 62 0 62 63 0 63 64 0 64 65 0 65 58 0 66 67 0 67 68 0 68 69 0
		 69 70 0 70 71 0 71 72 0 72 73 0 73 66 0 74 75 0 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0
		 80 81 0 81 74 0 82 83 0 83 84 0 84 85 0 85 86 0 86 87 0 87 88 0 88 89 0 89 82 0 90 91 0
		 91 92 0 92 93 0 93 94 0 94 95 0 95 96 0 96 97 0 97 90 0 98 99 0 99 100 0 100 101 0
		 101 102 0 102 103 0 103 104 0;
	setAttr ".ed[166:331]" 104 105 0 105 98 0 106 107 0 107 108 0 108 109 0 109 110 0
		 110 111 0 111 112 0 112 113 0 113 106 0 58 66 0 59 67 0 60 68 0 61 69 0 62 70 0 63 71 0
		 64 72 0 65 73 0 66 74 0 67 75 0 68 76 0 69 77 0 70 78 0 71 79 0 72 80 0 73 81 0 74 82 0
		 75 83 0 76 84 0 77 85 0 78 86 0 79 87 0 80 88 0 81 89 0 82 90 0 83 91 0 84 92 0 85 93 0
		 86 94 0 87 95 0 88 96 0 89 97 0 90 98 0 91 99 0 92 100 0 93 101 0 94 102 0 95 103 0
		 96 104 0 97 105 0 98 106 0 99 107 0 100 108 0 101 109 0 102 110 0 103 111 0 104 112 0
		 105 113 0 114 58 0 114 59 0 114 60 0 114 61 0 114 62 0 114 63 0 114 64 0 114 65 0
		 106 115 0 107 115 0 108 115 0 109 115 0 110 115 0 111 115 0 112 115 0 113 115 0 116 117 0
		 117 118 0 118 119 0 119 120 0 120 121 0 121 122 0 122 123 0 123 116 0 124 125 0 125 126 0
		 126 127 0 127 128 0 128 129 0 129 130 0 130 131 0 131 124 0 132 133 0 133 134 0 134 135 0
		 135 136 0 136 137 0 137 138 0 138 139 0 139 132 0 140 141 0 141 142 0 142 143 0 143 144 0
		 144 145 0 145 146 0 146 147 0 147 140 0 148 149 0 149 150 0 150 151 0 151 152 0 152 153 0
		 153 154 0 154 155 0 155 148 0 156 157 0 157 158 0 158 159 0 159 160 0 160 161 0 161 162 0
		 162 163 0 163 156 0 164 165 0 165 166 0 166 167 0 167 168 0 168 169 0 169 170 0 170 171 0
		 171 164 0 116 124 0 117 125 0 118 126 0 119 127 0 120 128 0 121 129 0 122 130 0 123 131 0
		 124 132 0 125 133 0 126 134 0 127 135 0 128 136 0 129 137 0 130 138 0 131 139 0 132 140 0
		 133 141 0 134 142 0 135 143 0 136 144 0 137 145 0 138 146 0 139 147 0 140 148 0 141 149 0
		 142 150 0 143 151 0 144 152 0 145 153 0 146 154 0 147 155 0 148 156 0 149 157 0 150 158 0
		 151 159 0;
	setAttr ".ed[332:497]" 152 160 0 153 161 0 154 162 0 155 163 0 156 164 0 157 165 0
		 158 166 0 159 167 0 160 168 0 161 169 0 162 170 0 163 171 0 172 116 0 172 117 0 172 118 0
		 172 119 0 172 120 0 172 121 0 172 122 0 172 123 0 164 173 0 165 173 0 166 173 0 167 173 0
		 168 173 0 169 173 0 170 173 0 171 173 0 174 175 0 175 176 0 176 177 0 177 178 0 178 179 0
		 179 180 0 180 181 0 181 174 0 182 183 0 183 184 0 184 185 0 185 186 0 186 187 0 187 188 0
		 188 189 0 189 182 0 190 191 0 191 192 0 192 193 0 193 194 0 194 195 0 195 196 0 196 197 0
		 197 190 0 198 199 0 199 200 0 200 201 0 201 202 0 202 203 0 203 204 0 204 205 0 205 198 0
		 206 207 0 207 208 0 208 209 0 209 210 0 210 211 0 211 212 0 212 213 0 213 206 0 214 215 0
		 215 216 0 216 217 0 217 218 0 218 219 0 219 220 0 220 221 0 221 214 0 222 223 0 223 224 0
		 224 225 0 225 226 0 226 227 0 227 228 0 228 229 0 229 222 0 174 182 0 175 183 0 176 184 0
		 177 185 0 178 186 0 179 187 0 180 188 0 181 189 0 182 190 0 183 191 0 184 192 0 185 193 0
		 186 194 0 187 195 0 188 196 0 189 197 0 190 198 0 191 199 0 192 200 0 193 201 0 194 202 0
		 195 203 0 196 204 0 197 205 0 198 206 0 199 207 0 200 208 0 201 209 0 202 210 0 203 211 0
		 204 212 0 205 213 0 206 214 0 207 215 0 208 216 0 209 217 0 210 218 0 211 219 0 212 220 0
		 213 221 0 214 222 0 215 223 0 216 224 0 217 225 0 218 226 0 219 227 0 220 228 0 221 229 0
		 230 174 0 230 175 0 230 176 0 230 177 0 230 178 0 230 179 0 230 180 0 230 181 0 222 231 0
		 223 231 0 224 231 0 225 231 0 226 231 0 227 231 0 228 231 0 229 231 0 232 233 0 233 234 0
		 234 235 0 235 236 0 236 237 0 237 238 0 238 239 0 239 232 0 240 241 0 241 242 0 242 243 0
		 243 244 0 244 245 0 245 246 0 246 247 0 247 240 0 248 249 0 249 250 0;
	setAttr ".ed[498:663]" 250 251 0 251 252 0 252 253 0 253 254 0 254 255 0 255 248 0
		 256 257 0 257 258 0 258 259 0 259 260 0 260 261 0 261 262 0 262 263 0 263 256 0 264 265 0
		 265 266 0 266 267 0 267 268 0 268 269 0 269 270 0 270 271 0 271 264 0 272 273 0 273 274 0
		 274 275 0 275 276 0 276 277 0 277 278 0 278 279 0 279 272 0 280 281 0 281 282 0 282 283 0
		 283 284 0 284 285 0 285 286 0 286 287 0 287 280 0 232 240 0 233 241 0 234 242 0 235 243 0
		 236 244 0 237 245 0 238 246 0 239 247 0 240 248 0 241 249 0 242 250 0 243 251 0 244 252 0
		 245 253 0 246 254 0 247 255 0 248 256 0 249 257 0 250 258 0 251 259 0 252 260 0 253 261 0
		 254 262 0 255 263 0 256 264 0 257 265 0 258 266 0 259 267 0 260 268 0 261 269 0 262 270 0
		 263 271 0 264 272 0 265 273 0 266 274 0 267 275 0 268 276 0 269 277 0 270 278 0 271 279 0
		 272 280 0 273 281 0 274 282 0 275 283 0 276 284 0 277 285 0 278 286 0 279 287 0 288 232 0
		 288 233 0 288 234 0 288 235 0 288 236 0 288 237 0 288 238 0 288 239 0 280 289 0 281 289 0
		 282 289 0 283 289 0 284 289 0 285 289 0 286 289 0 287 289 0 290 291 0 291 292 0 292 293 0
		 293 294 0 294 295 0 295 296 0 296 297 0 297 290 0 298 299 0 299 300 0 300 301 0 301 302 0
		 302 303 0 303 304 0 304 305 0 305 298 0 306 307 0 307 308 0 308 309 0 309 310 0 310 311 0
		 311 312 0 312 313 0 313 306 0 314 315 0 315 316 0 316 317 0 317 318 0 318 319 0 319 320 0
		 320 321 0 321 314 0 322 323 0 323 324 0 324 325 0 325 326 0 326 327 0 327 328 0 328 329 0
		 329 322 0 330 331 0 331 332 0 332 333 0 333 334 0 334 335 0 335 336 0 336 337 0 337 330 0
		 338 339 0 339 340 0 340 341 0 341 342 0 342 343 0 343 344 0 344 345 0 345 338 0 290 298 0
		 291 299 0 292 300 0 293 301 0 294 302 0 295 303 0 296 304 0 297 305 0;
	setAttr ".ed[664:829]" 298 306 0 299 307 0 300 308 0 301 309 0 302 310 0 303 311 0
		 304 312 0 305 313 0 306 314 0 307 315 0 308 316 0 309 317 0 310 318 0 311 319 0 312 320 0
		 313 321 0 314 322 0 315 323 0 316 324 0 317 325 0 318 326 0 319 327 0 320 328 0 321 329 0
		 322 330 0 323 331 0 324 332 0 325 333 0 326 334 0 327 335 0 328 336 0 329 337 0 330 338 0
		 331 339 0 332 340 0 333 341 0 334 342 0 335 343 0 336 344 0 337 345 0 346 290 0 346 291 0
		 346 292 0 346 293 0 346 294 0 346 295 0 346 296 0 346 297 0 338 347 0 339 347 0 340 347 0
		 341 347 0 342 347 0 343 347 0 344 347 0 345 347 0 348 349 0 349 350 0 350 351 0 351 352 0
		 352 353 0 353 354 0 354 355 0 355 348 0 356 357 0 357 358 0 358 359 0 359 360 0 360 361 0
		 361 362 0 362 363 0 363 356 0 364 365 0 365 366 0 366 367 0 367 368 0 368 369 0 369 370 0
		 370 371 0 371 364 0 372 373 0 373 374 0 374 375 0 375 376 0 376 377 0 377 378 0 378 379 0
		 379 372 0 380 381 0 381 382 0 382 383 0 383 384 0 384 385 0 385 386 0 386 387 0 387 380 0
		 388 389 0 389 390 0 390 391 0 391 392 0 392 393 0 393 394 0 394 395 0 395 388 0 396 397 0
		 397 398 0 398 399 0 399 400 0 400 401 0 401 402 0 402 403 0 403 396 0 348 356 0 349 357 0
		 350 358 0 351 359 0 352 360 0 353 361 0 354 362 0 355 363 0 356 364 0 357 365 0 358 366 0
		 359 367 0 360 368 0 361 369 0 362 370 0 363 371 0 364 372 0 365 373 0 366 374 0 367 375 0
		 368 376 0 369 377 0 370 378 0 371 379 0 372 380 0 373 381 0 374 382 0 375 383 0 376 384 0
		 377 385 0 378 386 0 379 387 0 380 388 0 381 389 0 382 390 0 383 391 0 384 392 0 385 393 0
		 386 394 0 387 395 0 388 396 0 389 397 0 390 398 0 391 399 0 392 400 0 393 401 0 394 402 0
		 395 403 0 404 348 0 404 349 0 404 350 0 404 351 0 404 352 0 404 353 0;
	setAttr ".ed[830:839]" 404 354 0 404 355 0 396 405 0 397 405 0 398 405 0 399 405 0
		 400 405 0 401 405 0 402 405 0 403 405 0;
	setAttr -s 448 -ch 1680 ".fc[0:447]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78
		f 4 120 177 -129 -177
		mu 0 4 79 80 81 82
		f 4 121 178 -130 -178
		mu 0 4 80 83 84 81
		f 4 122 179 -131 -179
		mu 0 4 83 85 86 84
		f 4 123 180 -132 -180
		mu 0 4 85 87 88 86
		f 4 124 181 -133 -181
		mu 0 4 87 89 90 88
		f 4 125 182 -134 -182
		mu 0 4 89 91 92 90
		f 4 126 183 -135 -183
		mu 0 4 91 93 94 92
		f 4 127 176 -136 -184
		mu 0 4 93 95 96 94
		f 4 128 185 -137 -185
		mu 0 4 82 81 97 98
		f 4 129 186 -138 -186
		mu 0 4 81 84 99 97
		f 4 130 187 -139 -187
		mu 0 4 84 86 100 99
		f 4 131 188 -140 -188
		mu 0 4 86 88 101 100
		f 4 132 189 -141 -189
		mu 0 4 88 90 102 101
		f 4 133 190 -142 -190
		mu 0 4 90 92 103 102
		f 4 134 191 -143 -191
		mu 0 4 92 94 104 103
		f 4 135 184 -144 -192
		mu 0 4 94 96 105 104
		f 4 136 193 -145 -193
		mu 0 4 98 97 106 107
		f 4 137 194 -146 -194
		mu 0 4 97 99 108 106
		f 4 138 195 -147 -195
		mu 0 4 99 100 109 108
		f 4 139 196 -148 -196
		mu 0 4 100 101 110 109
		f 4 140 197 -149 -197
		mu 0 4 101 102 111 110
		f 4 141 198 -150 -198
		mu 0 4 102 103 112 111
		f 4 142 199 -151 -199
		mu 0 4 103 104 113 112
		f 4 143 192 -152 -200
		mu 0 4 104 105 114 113
		f 4 144 201 -153 -201
		mu 0 4 107 106 115 116
		f 4 145 202 -154 -202
		mu 0 4 106 108 117 115
		f 4 146 203 -155 -203
		mu 0 4 108 109 118 117
		f 4 147 204 -156 -204
		mu 0 4 109 110 119 118
		f 4 148 205 -157 -205
		mu 0 4 110 111 120 119
		f 4 149 206 -158 -206
		mu 0 4 111 112 121 120
		f 4 150 207 -159 -207
		mu 0 4 112 113 122 121
		f 4 151 200 -160 -208
		mu 0 4 113 114 123 122
		f 4 152 209 -161 -209
		mu 0 4 116 115 124 125
		f 4 153 210 -162 -210
		mu 0 4 115 117 126 124
		f 4 154 211 -163 -211
		mu 0 4 117 118 127 126
		f 4 155 212 -164 -212
		mu 0 4 118 119 128 127
		f 4 156 213 -165 -213
		mu 0 4 119 120 129 128
		f 4 157 214 -166 -214
		mu 0 4 120 121 130 129
		f 4 158 215 -167 -215
		mu 0 4 121 122 131 130
		f 4 159 208 -168 -216
		mu 0 4 122 123 132 131
		f 4 160 217 -169 -217
		mu 0 4 125 124 133 134
		f 4 161 218 -170 -218
		mu 0 4 124 126 135 133
		f 4 162 219 -171 -219
		mu 0 4 126 127 136 135
		f 4 163 220 -172 -220
		mu 0 4 127 128 137 136
		f 4 164 221 -173 -221
		mu 0 4 128 129 138 137
		f 4 165 222 -174 -222
		mu 0 4 129 130 139 138
		f 4 166 223 -175 -223
		mu 0 4 130 131 140 139
		f 4 167 216 -176 -224
		mu 0 4 131 132 141 140
		f 3 -121 -225 225
		mu 0 3 80 79 142
		f 3 -122 -226 226
		mu 0 3 83 80 143
		f 3 -123 -227 227
		mu 0 3 85 83 144
		f 3 -124 -228 228
		mu 0 3 87 85 145
		f 3 -125 -229 229
		mu 0 3 89 87 146
		f 3 -126 -230 230
		mu 0 3 91 89 147
		f 3 -127 -231 231
		mu 0 3 93 91 148
		f 3 -128 -232 224
		mu 0 3 95 93 149
		f 3 168 233 -233
		mu 0 3 134 133 150
		f 3 169 234 -234
		mu 0 3 133 135 151
		f 3 170 235 -235
		mu 0 3 135 136 152
		f 3 171 236 -236
		mu 0 3 136 137 153
		f 3 172 237 -237
		mu 0 3 137 138 154
		f 3 173 238 -238
		mu 0 3 138 139 155
		f 3 174 239 -239
		mu 0 3 139 140 156
		f 3 175 232 -240
		mu 0 3 140 141 157
		f 4 240 297 -249 -297
		mu 0 4 158 159 160 161
		f 4 241 298 -250 -298
		mu 0 4 159 162 163 160
		f 4 242 299 -251 -299
		mu 0 4 162 164 165 163
		f 4 243 300 -252 -300
		mu 0 4 164 166 167 165
		f 4 244 301 -253 -301
		mu 0 4 166 168 169 167
		f 4 245 302 -254 -302
		mu 0 4 168 170 171 169
		f 4 246 303 -255 -303
		mu 0 4 170 172 173 171
		f 4 247 296 -256 -304
		mu 0 4 172 174 175 173
		f 4 248 305 -257 -305
		mu 0 4 161 160 176 177
		f 4 249 306 -258 -306
		mu 0 4 160 163 178 176
		f 4 250 307 -259 -307
		mu 0 4 163 165 179 178
		f 4 251 308 -260 -308
		mu 0 4 165 167 180 179
		f 4 252 309 -261 -309
		mu 0 4 167 169 181 180
		f 4 253 310 -262 -310
		mu 0 4 169 171 182 181
		f 4 254 311 -263 -311
		mu 0 4 171 173 183 182
		f 4 255 304 -264 -312
		mu 0 4 173 175 184 183
		f 4 256 313 -265 -313
		mu 0 4 177 176 185 186
		f 4 257 314 -266 -314
		mu 0 4 176 178 187 185
		f 4 258 315 -267 -315
		mu 0 4 178 179 188 187
		f 4 259 316 -268 -316
		mu 0 4 179 180 189 188
		f 4 260 317 -269 -317
		mu 0 4 180 181 190 189
		f 4 261 318 -270 -318
		mu 0 4 181 182 191 190
		f 4 262 319 -271 -319
		mu 0 4 182 183 192 191
		f 4 263 312 -272 -320
		mu 0 4 183 184 193 192
		f 4 264 321 -273 -321
		mu 0 4 186 185 194 195
		f 4 265 322 -274 -322
		mu 0 4 185 187 196 194
		f 4 266 323 -275 -323
		mu 0 4 187 188 197 196
		f 4 267 324 -276 -324
		mu 0 4 188 189 198 197
		f 4 268 325 -277 -325
		mu 0 4 189 190 199 198
		f 4 269 326 -278 -326
		mu 0 4 190 191 200 199
		f 4 270 327 -279 -327
		mu 0 4 191 192 201 200
		f 4 271 320 -280 -328
		mu 0 4 192 193 202 201
		f 4 272 329 -281 -329
		mu 0 4 195 194 203 204
		f 4 273 330 -282 -330
		mu 0 4 194 196 205 203
		f 4 274 331 -283 -331
		mu 0 4 196 197 206 205
		f 4 275 332 -284 -332
		mu 0 4 197 198 207 206
		f 4 276 333 -285 -333
		mu 0 4 198 199 208 207
		f 4 277 334 -286 -334
		mu 0 4 199 200 209 208
		f 4 278 335 -287 -335
		mu 0 4 200 201 210 209
		f 4 279 328 -288 -336
		mu 0 4 201 202 211 210
		f 4 280 337 -289 -337
		mu 0 4 204 203 212 213
		f 4 281 338 -290 -338
		mu 0 4 203 205 214 212
		f 4 282 339 -291 -339
		mu 0 4 205 206 215 214
		f 4 283 340 -292 -340
		mu 0 4 206 207 216 215
		f 4 284 341 -293 -341
		mu 0 4 207 208 217 216
		f 4 285 342 -294 -342
		mu 0 4 208 209 218 217
		f 4 286 343 -295 -343
		mu 0 4 209 210 219 218
		f 4 287 336 -296 -344
		mu 0 4 210 211 220 219
		f 3 -241 -345 345
		mu 0 3 159 158 221
		f 3 -242 -346 346
		mu 0 3 162 159 222
		f 3 -243 -347 347
		mu 0 3 164 162 223
		f 3 -244 -348 348
		mu 0 3 166 164 224
		f 3 -245 -349 349
		mu 0 3 168 166 225
		f 3 -246 -350 350
		mu 0 3 170 168 226
		f 3 -247 -351 351
		mu 0 3 172 170 227
		f 3 -248 -352 344
		mu 0 3 174 172 228
		f 3 288 353 -353
		mu 0 3 213 212 229
		f 3 289 354 -354
		mu 0 3 212 214 230
		f 3 290 355 -355
		mu 0 3 214 215 231
		f 3 291 356 -356
		mu 0 3 215 216 232
		f 3 292 357 -357
		mu 0 3 216 217 233
		f 3 293 358 -358
		mu 0 3 217 218 234
		f 3 294 359 -359
		mu 0 3 218 219 235
		f 3 295 352 -360
		mu 0 3 219 220 236
		f 4 360 417 -369 -417
		mu 0 4 237 238 239 240
		f 4 361 418 -370 -418
		mu 0 4 238 241 242 239
		f 4 362 419 -371 -419
		mu 0 4 241 243 244 242
		f 4 363 420 -372 -420
		mu 0 4 243 245 246 244
		f 4 364 421 -373 -421
		mu 0 4 245 247 248 246
		f 4 365 422 -374 -422
		mu 0 4 247 249 250 248
		f 4 366 423 -375 -423
		mu 0 4 249 251 252 250
		f 4 367 416 -376 -424
		mu 0 4 251 253 254 252
		f 4 368 425 -377 -425
		mu 0 4 240 239 255 256
		f 4 369 426 -378 -426
		mu 0 4 239 242 257 255
		f 4 370 427 -379 -427
		mu 0 4 242 244 258 257
		f 4 371 428 -380 -428
		mu 0 4 244 246 259 258
		f 4 372 429 -381 -429
		mu 0 4 246 248 260 259
		f 4 373 430 -382 -430
		mu 0 4 248 250 261 260
		f 4 374 431 -383 -431
		mu 0 4 250 252 262 261
		f 4 375 424 -384 -432
		mu 0 4 252 254 263 262
		f 4 376 433 -385 -433
		mu 0 4 256 255 264 265
		f 4 377 434 -386 -434
		mu 0 4 255 257 266 264
		f 4 378 435 -387 -435
		mu 0 4 257 258 267 266
		f 4 379 436 -388 -436
		mu 0 4 258 259 268 267
		f 4 380 437 -389 -437
		mu 0 4 259 260 269 268
		f 4 381 438 -390 -438
		mu 0 4 260 261 270 269
		f 4 382 439 -391 -439
		mu 0 4 261 262 271 270
		f 4 383 432 -392 -440
		mu 0 4 262 263 272 271
		f 4 384 441 -393 -441
		mu 0 4 265 264 273 274
		f 4 385 442 -394 -442
		mu 0 4 264 266 275 273
		f 4 386 443 -395 -443
		mu 0 4 266 267 276 275
		f 4 387 444 -396 -444
		mu 0 4 267 268 277 276
		f 4 388 445 -397 -445
		mu 0 4 268 269 278 277
		f 4 389 446 -398 -446
		mu 0 4 269 270 279 278
		f 4 390 447 -399 -447
		mu 0 4 270 271 280 279
		f 4 391 440 -400 -448
		mu 0 4 271 272 281 280
		f 4 392 449 -401 -449
		mu 0 4 274 273 282 283
		f 4 393 450 -402 -450
		mu 0 4 273 275 284 282
		f 4 394 451 -403 -451
		mu 0 4 275 276 285 284
		f 4 395 452 -404 -452
		mu 0 4 276 277 286 285
		f 4 396 453 -405 -453
		mu 0 4 277 278 287 286
		f 4 397 454 -406 -454
		mu 0 4 278 279 288 287
		f 4 398 455 -407 -455
		mu 0 4 279 280 289 288
		f 4 399 448 -408 -456
		mu 0 4 280 281 290 289
		f 4 400 457 -409 -457
		mu 0 4 283 282 291 292
		f 4 401 458 -410 -458
		mu 0 4 282 284 293 291
		f 4 402 459 -411 -459
		mu 0 4 284 285 294 293
		f 4 403 460 -412 -460
		mu 0 4 285 286 295 294
		f 4 404 461 -413 -461
		mu 0 4 286 287 296 295
		f 4 405 462 -414 -462
		mu 0 4 287 288 297 296
		f 4 406 463 -415 -463
		mu 0 4 288 289 298 297
		f 4 407 456 -416 -464
		mu 0 4 289 290 299 298
		f 3 -361 -465 465
		mu 0 3 238 237 300
		f 3 -362 -466 466
		mu 0 3 241 238 301
		f 3 -363 -467 467
		mu 0 3 243 241 302
		f 3 -364 -468 468
		mu 0 3 245 243 303
		f 3 -365 -469 469
		mu 0 3 247 245 304
		f 3 -366 -470 470
		mu 0 3 249 247 305
		f 3 -367 -471 471
		mu 0 3 251 249 306
		f 3 -368 -472 464
		mu 0 3 253 251 307
		f 3 408 473 -473
		mu 0 3 292 291 308
		f 3 409 474 -474
		mu 0 3 291 293 309
		f 3 410 475 -475
		mu 0 3 293 294 310
		f 3 411 476 -476
		mu 0 3 294 295 311
		f 3 412 477 -477
		mu 0 3 295 296 312
		f 3 413 478 -478
		mu 0 3 296 297 313
		f 3 414 479 -479
		mu 0 3 297 298 314
		f 3 415 472 -480
		mu 0 3 298 299 315
		f 4 480 537 -489 -537
		mu 0 4 316 317 318 319
		f 4 481 538 -490 -538
		mu 0 4 317 320 321 318
		f 4 482 539 -491 -539
		mu 0 4 320 322 323 321
		f 4 483 540 -492 -540
		mu 0 4 322 324 325 323
		f 4 484 541 -493 -541
		mu 0 4 324 326 327 325
		f 4 485 542 -494 -542
		mu 0 4 326 328 329 327
		f 4 486 543 -495 -543
		mu 0 4 328 330 331 329
		f 4 487 536 -496 -544
		mu 0 4 330 332 333 331
		f 4 488 545 -497 -545
		mu 0 4 319 318 334 335
		f 4 489 546 -498 -546
		mu 0 4 318 321 336 334
		f 4 490 547 -499 -547
		mu 0 4 321 323 337 336
		f 4 491 548 -500 -548
		mu 0 4 323 325 338 337
		f 4 492 549 -501 -549
		mu 0 4 325 327 339 338
		f 4 493 550 -502 -550
		mu 0 4 327 329 340 339
		f 4 494 551 -503 -551
		mu 0 4 329 331 341 340
		f 4 495 544 -504 -552
		mu 0 4 331 333 342 341
		f 4 496 553 -505 -553
		mu 0 4 335 334 343 344
		f 4 497 554 -506 -554
		mu 0 4 334 336 345 343
		f 4 498 555 -507 -555
		mu 0 4 336 337 346 345
		f 4 499 556 -508 -556
		mu 0 4 337 338 347 346
		f 4 500 557 -509 -557
		mu 0 4 338 339 348 347
		f 4 501 558 -510 -558
		mu 0 4 339 340 349 348
		f 4 502 559 -511 -559
		mu 0 4 340 341 350 349
		f 4 503 552 -512 -560
		mu 0 4 341 342 351 350
		f 4 504 561 -513 -561
		mu 0 4 344 343 352 353
		f 4 505 562 -514 -562
		mu 0 4 343 345 354 352
		f 4 506 563 -515 -563
		mu 0 4 345 346 355 354
		f 4 507 564 -516 -564
		mu 0 4 346 347 356 355
		f 4 508 565 -517 -565
		mu 0 4 347 348 357 356
		f 4 509 566 -518 -566
		mu 0 4 348 349 358 357
		f 4 510 567 -519 -567
		mu 0 4 349 350 359 358
		f 4 511 560 -520 -568
		mu 0 4 350 351 360 359
		f 4 512 569 -521 -569
		mu 0 4 353 352 361 362
		f 4 513 570 -522 -570
		mu 0 4 352 354 363 361
		f 4 514 571 -523 -571
		mu 0 4 354 355 364 363
		f 4 515 572 -524 -572
		mu 0 4 355 356 365 364
		f 4 516 573 -525 -573
		mu 0 4 356 357 366 365
		f 4 517 574 -526 -574
		mu 0 4 357 358 367 366
		f 4 518 575 -527 -575
		mu 0 4 358 359 368 367
		f 4 519 568 -528 -576
		mu 0 4 359 360 369 368
		f 4 520 577 -529 -577
		mu 0 4 362 361 370 371
		f 4 521 578 -530 -578
		mu 0 4 361 363 372 370
		f 4 522 579 -531 -579
		mu 0 4 363 364 373 372
		f 4 523 580 -532 -580
		mu 0 4 364 365 374 373
		f 4 524 581 -533 -581
		mu 0 4 365 366 375 374
		f 4 525 582 -534 -582
		mu 0 4 366 367 376 375
		f 4 526 583 -535 -583
		mu 0 4 367 368 377 376
		f 4 527 576 -536 -584
		mu 0 4 368 369 378 377
		f 3 -481 -585 585
		mu 0 3 317 316 379
		f 3 -482 -586 586
		mu 0 3 320 317 380
		f 3 -483 -587 587
		mu 0 3 322 320 381
		f 3 -484 -588 588
		mu 0 3 324 322 382
		f 3 -485 -589 589
		mu 0 3 326 324 383
		f 3 -486 -590 590
		mu 0 3 328 326 384
		f 3 -487 -591 591
		mu 0 3 330 328 385
		f 3 -488 -592 584
		mu 0 3 332 330 386
		f 3 528 593 -593
		mu 0 3 371 370 387
		f 3 529 594 -594
		mu 0 3 370 372 388
		f 3 530 595 -595
		mu 0 3 372 373 389
		f 3 531 596 -596
		mu 0 3 373 374 390
		f 3 532 597 -597
		mu 0 3 374 375 391
		f 3 533 598 -598
		mu 0 3 375 376 392
		f 3 534 599 -599
		mu 0 3 376 377 393
		f 3 535 592 -600
		mu 0 3 377 378 394
		f 4 600 657 -609 -657
		mu 0 4 395 396 397 398
		f 4 601 658 -610 -658
		mu 0 4 396 399 400 397
		f 4 602 659 -611 -659
		mu 0 4 399 401 402 400
		f 4 603 660 -612 -660
		mu 0 4 401 403 404 402
		f 4 604 661 -613 -661
		mu 0 4 403 405 406 404
		f 4 605 662 -614 -662
		mu 0 4 405 407 408 406
		f 4 606 663 -615 -663
		mu 0 4 407 409 410 408
		f 4 607 656 -616 -664
		mu 0 4 409 411 412 410
		f 4 608 665 -617 -665
		mu 0 4 398 397 413 414
		f 4 609 666 -618 -666
		mu 0 4 397 400 415 413
		f 4 610 667 -619 -667
		mu 0 4 400 402 416 415
		f 4 611 668 -620 -668
		mu 0 4 402 404 417 416
		f 4 612 669 -621 -669
		mu 0 4 404 406 418 417
		f 4 613 670 -622 -670
		mu 0 4 406 408 419 418
		f 4 614 671 -623 -671
		mu 0 4 408 410 420 419
		f 4 615 664 -624 -672
		mu 0 4 410 412 421 420
		f 4 616 673 -625 -673
		mu 0 4 414 413 422 423
		f 4 617 674 -626 -674
		mu 0 4 413 415 424 422
		f 4 618 675 -627 -675
		mu 0 4 415 416 425 424
		f 4 619 676 -628 -676
		mu 0 4 416 417 426 425
		f 4 620 677 -629 -677
		mu 0 4 417 418 427 426
		f 4 621 678 -630 -678
		mu 0 4 418 419 428 427
		f 4 622 679 -631 -679
		mu 0 4 419 420 429 428
		f 4 623 672 -632 -680
		mu 0 4 420 421 430 429
		f 4 624 681 -633 -681
		mu 0 4 423 422 431 432
		f 4 625 682 -634 -682
		mu 0 4 422 424 433 431
		f 4 626 683 -635 -683
		mu 0 4 424 425 434 433
		f 4 627 684 -636 -684
		mu 0 4 425 426 435 434
		f 4 628 685 -637 -685
		mu 0 4 426 427 436 435
		f 4 629 686 -638 -686
		mu 0 4 427 428 437 436
		f 4 630 687 -639 -687
		mu 0 4 428 429 438 437
		f 4 631 680 -640 -688
		mu 0 4 429 430 439 438
		f 4 632 689 -641 -689
		mu 0 4 432 431 440 441
		f 4 633 690 -642 -690
		mu 0 4 431 433 442 440
		f 4 634 691 -643 -691
		mu 0 4 433 434 443 442
		f 4 635 692 -644 -692
		mu 0 4 434 435 444 443
		f 4 636 693 -645 -693
		mu 0 4 435 436 445 444
		f 4 637 694 -646 -694
		mu 0 4 436 437 446 445
		f 4 638 695 -647 -695
		mu 0 4 437 438 447 446
		f 4 639 688 -648 -696
		mu 0 4 438 439 448 447
		f 4 640 697 -649 -697
		mu 0 4 441 440 449 450
		f 4 641 698 -650 -698
		mu 0 4 440 442 451 449
		f 4 642 699 -651 -699
		mu 0 4 442 443 452 451
		f 4 643 700 -652 -700
		mu 0 4 443 444 453 452
		f 4 644 701 -653 -701
		mu 0 4 444 445 454 453
		f 4 645 702 -654 -702
		mu 0 4 445 446 455 454
		f 4 646 703 -655 -703
		mu 0 4 446 447 456 455
		f 4 647 696 -656 -704
		mu 0 4 447 448 457 456
		f 3 -601 -705 705
		mu 0 3 396 395 458
		f 3 -602 -706 706
		mu 0 3 399 396 459
		f 3 -603 -707 707
		mu 0 3 401 399 460
		f 3 -604 -708 708
		mu 0 3 403 401 461
		f 3 -605 -709 709
		mu 0 3 405 403 462
		f 3 -606 -710 710
		mu 0 3 407 405 463
		f 3 -607 -711 711
		mu 0 3 409 407 464
		f 3 -608 -712 704
		mu 0 3 411 409 465
		f 3 648 713 -713
		mu 0 3 450 449 466
		f 3 649 714 -714
		mu 0 3 449 451 467
		f 3 650 715 -715
		mu 0 3 451 452 468
		f 3 651 716 -716
		mu 0 3 452 453 469
		f 3 652 717 -717
		mu 0 3 453 454 470
		f 3 653 718 -718
		mu 0 3 454 455 471
		f 3 654 719 -719
		mu 0 3 455 456 472
		f 3 655 712 -720
		mu 0 3 456 457 473
		f 4 720 777 -729 -777
		mu 0 4 474 475 476 477
		f 4 721 778 -730 -778
		mu 0 4 475 478 479 476
		f 4 722 779 -731 -779
		mu 0 4 478 480 481 479
		f 4 723 780 -732 -780
		mu 0 4 480 482 483 481
		f 4 724 781 -733 -781
		mu 0 4 482 484 485 483
		f 4 725 782 -734 -782
		mu 0 4 484 486 487 485
		f 4 726 783 -735 -783
		mu 0 4 486 488 489 487
		f 4 727 776 -736 -784
		mu 0 4 488 490 491 489
		f 4 728 785 -737 -785
		mu 0 4 477 476 492 493
		f 4 729 786 -738 -786
		mu 0 4 476 479 494 492
		f 4 730 787 -739 -787
		mu 0 4 479 481 495 494
		f 4 731 788 -740 -788
		mu 0 4 481 483 496 495
		f 4 732 789 -741 -789
		mu 0 4 483 485 497 496
		f 4 733 790 -742 -790
		mu 0 4 485 487 498 497
		f 4 734 791 -743 -791
		mu 0 4 487 489 499 498
		f 4 735 784 -744 -792
		mu 0 4 489 491 500 499
		f 4 736 793 -745 -793
		mu 0 4 493 492 501 502
		f 4 737 794 -746 -794
		mu 0 4 492 494 503 501
		f 4 738 795 -747 -795
		mu 0 4 494 495 504 503
		f 4 739 796 -748 -796
		mu 0 4 495 496 505 504
		f 4 740 797 -749 -797
		mu 0 4 496 497 506 505
		f 4 741 798 -750 -798
		mu 0 4 497 498 507 506
		f 4 742 799 -751 -799
		mu 0 4 498 499 508 507
		f 4 743 792 -752 -800
		mu 0 4 499 500 509 508
		f 4 744 801 -753 -801
		mu 0 4 502 501 510 511
		f 4 745 802 -754 -802
		mu 0 4 501 503 512 510
		f 4 746 803 -755 -803
		mu 0 4 503 504 513 512
		f 4 747 804 -756 -804
		mu 0 4 504 505 514 513
		f 4 748 805 -757 -805
		mu 0 4 505 506 515 514
		f 4 749 806 -758 -806
		mu 0 4 506 507 516 515
		f 4 750 807 -759 -807
		mu 0 4 507 508 517 516
		f 4 751 800 -760 -808
		mu 0 4 508 509 518 517
		f 4 752 809 -761 -809
		mu 0 4 511 510 519 520
		f 4 753 810 -762 -810
		mu 0 4 510 512 521 519
		f 4 754 811 -763 -811
		mu 0 4 512 513 522 521
		f 4 755 812 -764 -812
		mu 0 4 513 514 523 522
		f 4 756 813 -765 -813
		mu 0 4 514 515 524 523
		f 4 757 814 -766 -814
		mu 0 4 515 516 525 524
		f 4 758 815 -767 -815
		mu 0 4 516 517 526 525
		f 4 759 808 -768 -816
		mu 0 4 517 518 527 526
		f 4 760 817 -769 -817
		mu 0 4 520 519 528 529
		f 4 761 818 -770 -818
		mu 0 4 519 521 530 528
		f 4 762 819 -771 -819
		mu 0 4 521 522 531 530
		f 4 763 820 -772 -820
		mu 0 4 522 523 532 531
		f 4 764 821 -773 -821
		mu 0 4 523 524 533 532
		f 4 765 822 -774 -822
		mu 0 4 524 525 534 533
		f 4 766 823 -775 -823
		mu 0 4 525 526 535 534
		f 4 767 816 -776 -824
		mu 0 4 526 527 536 535
		f 3 -721 -825 825
		mu 0 3 475 474 537
		f 3 -722 -826 826
		mu 0 3 478 475 538
		f 3 -723 -827 827
		mu 0 3 480 478 539
		f 3 -724 -828 828
		mu 0 3 482 480 540
		f 3 -725 -829 829
		mu 0 3 484 482 541
		f 3 -726 -830 830
		mu 0 3 486 484 542
		f 3 -727 -831 831
		mu 0 3 488 486 543
		f 3 -728 -832 824
		mu 0 3 490 488 544
		f 3 768 833 -833
		mu 0 3 529 528 545
		f 3 769 834 -834
		mu 0 3 528 530 546
		f 3 770 835 -835
		mu 0 3 530 531 547
		f 3 771 836 -836
		mu 0 3 531 532 548
		f 3 772 837 -837
		mu 0 3 532 533 549
		f 3 773 838 -838
		mu 0 3 533 534 550
		f 3 774 839 -839
		mu 0 3 534 535 551
		f 3 775 832 -840
		mu 0 3 535 536 552;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Walkway";
	rename -uid "A555009A-4285-CC2A-1BD4-9C887D0107E6";
	setAttr ".t" -type "double3" -1000 0 0 ;
createNode mesh -n "WalkwayShape" -p "Walkway";
	rename -uid "F1FAECF5-4D74-8993-4DA3-44B9F12D7A21";
	setAttr -k off ".v";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 10 0 0 10 0 0 10 0 0 10 
		0 0 10 0 0 10 0 0 10 0 0 10 0;
	setAttr -s 8 ".vt[0:7]"  -50 -10 100 50 -10 100 -50 10 100 50 10 100
		 -50 10 -100 50 10 -100 -50 -10 -100 50 -10 -100;
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
createNode transform -n "DecorativePlants";
	rename -uid "3BACFD8A-4791-68CE-6AD4-8DA844AA601A";
	setAttr ".t" -type "double3" -1400 0 -160 ;
createNode mesh -n "DecorativePlantsShape" -p "DecorativePlants";
	rename -uid "0A9A7117-4358-8BE5-A27F-15B094722C62";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  1400 0 160 1400 0 160 1400 
		0 160 1400 0 160 1400 0 160 1400 0 160 1400 0 160 1400 0 160 1400 0 160 1400 0 160 
		1400 0 160 1400 0 160 1400 0 160 1400 0 160 1400 0 160 1400 0 160 1400 0 160 1400 
		0 160 1400 0 160 1400 0 160;
createNode mesh -n "polySurfaceShape2" -p "DecorativePlants";
	rename -uid "D7EA9900-4F7F-A9A7-3A16-1B9162388E25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.125 0.625 0.125 0.625 0.625 0.875 0.125 0.125
		 0.125 0.375 0.625 0.125 0.1875 0.375 0.5625 0.625 0.5625 0.875 0.1875 0.625 0.1875
		 0.375 0.1875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  8.9144793 0 -8.9144793 -8.9144793 
		0 -8.9144793 13.558171 61.285763 -13.558171 -13.558171 61.285763 -13.558171 13.558171 
		61.285763 13.558171 -13.558171 61.285763 13.558171 8.9144793 0 8.9144793 -8.9144793 
		0 8.9144793 4.8862958 -4.595408 -4.8862958 -4.8862958 -4.595408 -4.8862958 -4.8862958 
		-4.595408 4.8862958 4.8862958 -4.595408 4.8862958 21.303986 38.682991 21.303986 -21.303986 
		38.682991 21.303986 -21.303986 38.682991 -21.303986 21.303986 38.682991 -21.303986;
	setAttr -s 16 ".vt[0:15]"  -25.77848053 -25 25.77848053 25.77848053 -25 25.77848053
		 -35.20377731 25 35.20377731 35.20377731 25 35.20377731 -35.20377731 25 -35.20377731
		 35.20377731 25 -35.20377731 -25.77848053 -25 -25.77848053 25.77848053 -25 -25.77848053
		 -29.24151611 0 29.24151611 29.24151611 0 29.24151611 29.24151611 0 -29.24151611 -29.24151611 0 -29.24151611
		 -40.88479233 12.5 -40.88479233 40.88479233 12.5 -40.88479233 40.88479233 12.5 40.88479233
		 -40.88479233 12.5 40.88479233;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 8 0 1 9 0 2 4 0
		 3 5 0 4 12 0 5 13 0 6 0 0 7 1 0 8 15 0 9 14 0 10 7 0 11 6 0 8 9 0 9 10 0 10 11 0
		 11 8 0 12 11 0 13 10 0 14 3 0 15 2 0 12 13 0 13 14 0 14 15 0 15 12 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 16 13 26 -13
		mu 0 4 14 15 24 25
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 24 21 18 -21
		mu 0 4 21 22 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -22 25 -14
		mu 0 4 15 17 23 24
		f 4 19 12 27 20
		mu 0 4 18 14 25 20
		f 4 0 5 -17 -5
		mu 0 4 0 1 15 14
		f 4 -12 -15 -18 -6
		mu 0 4 1 10 17 15
		f 4 -19 14 -4 -16
		mu 0 4 19 16 7 6
		f 4 10 4 -20 15
		mu 0 4 12 0 14 18
		f 4 2 9 -25 -9
		mu 0 4 4 5 22 21
		f 4 -26 -10 -8 -23
		mu 0 4 24 23 11 3
		f 4 -27 22 -2 -24
		mu 0 4 25 24 3 2
		f 4 -28 23 6 8
		mu 0 4 20 25 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "DecorativeFlowers";
	rename -uid "DEF88A75-4F41-2FEB-8443-6CB34BE78558";
	setAttr ".t" -type "double3" -1180.2589344434964 100.27895683073415 -124.93873558228887 ;
createNode mesh -n "DecorativeFlowersShape" -p "DecorativeFlowers";
	rename -uid "BEDBCCD9-4B2D-743A-4316-AC993C71A3CF";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:119]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 168 ".uvst[0].uvsp[0:167]" -type "float2" 0 0.33333334 0.1
		 0.33333334 0.2 0.33333334 0.30000001 0.33333334 0.40000001 0.33333334 0.5 0.33333334
		 0.60000002 0.33333334 0.70000005 0.33333334 0.80000007 0.33333334 0.9000001 0.33333334
		 1.000000119209 0.33333334 0 0.66666669 0.1 0.66666669 0.2 0.66666669 0.30000001 0.66666669
		 0.40000001 0.66666669 0.5 0.66666669 0.60000002 0.66666669 0.70000005 0.66666669
		 0.80000007 0.66666669 0.9000001 0.66666669 1.000000119209 0.66666669 0.050000001
		 0 0.15000001 0 0.25 0 0.35000002 0 0.45000002 0 0.55000001 0 0.65000004 0 0.75 0
		 0.85000002 0 0.95000005 0 0.050000001 1 0.15000001 1 0.25 1 0.35000002 1 0.45000002
		 1 0.55000001 1 0.65000004 1 0.75 1 0.85000002 1 0.95000005 1 0 0.33333334 0.1 0.33333334
		 0.1 0.66666669 0 0.66666669 0.2 0.33333334 0.2 0.66666669 0.30000001 0.33333334 0.30000001
		 0.66666669 0.40000001 0.33333334 0.40000001 0.66666669 0.5 0.33333334 0.5 0.66666669
		 0.60000002 0.33333334 0.60000002 0.66666669 0.70000005 0.33333334 0.70000005 0.66666669
		 0.80000007 0.33333334 0.80000007 0.66666669 0.9000001 0.33333334 0.9000001 0.66666669
		 1.000000119209 0.33333334 1.000000119209 0.66666669 0.050000001 0 0.15000001 0 0.25
		 0 0.35000002 0 0.45000002 0 0.55000001 0 0.65000004 0 0.75 0 0.85000002 0 0.95000005
		 0 0.050000001 1 0.15000001 1 0.25 1 0.35000002 1 0.45000002 1 0.55000001 1 0.65000004
		 1 0.75 1 0.85000002 1 0.95000005 1 0 0.33333334 0.1 0.33333334 0.1 0.66666669 0 0.66666669
		 0.2 0.33333334 0.2 0.66666669 0.30000001 0.33333334 0.30000001 0.66666669 0.40000001
		 0.33333334 0.40000001 0.66666669 0.5 0.33333334 0.5 0.66666669 0.60000002 0.33333334
		 0.60000002 0.66666669 0.70000005 0.33333334 0.70000005 0.66666669 0.80000007 0.33333334
		 0.80000007 0.66666669 0.9000001 0.33333334 0.9000001 0.66666669 1.000000119209 0.33333334
		 1.000000119209 0.66666669 0.050000001 0 0.15000001 0 0.25 0 0.35000002 0 0.45000002
		 0 0.55000001 0 0.65000004 0 0.75 0 0.85000002 0 0.95000005 0 0.050000001 1 0.15000001
		 1 0.25 1 0.35000002 1 0.45000002 1 0.55000001 1 0.65000004 1 0.75 1 0.85000002 1
		 0.95000005 1 0 0.33333334 0.1 0.33333334 0.1 0.66666669 0 0.66666669 0.2 0.33333334
		 0.2 0.66666669 0.30000001 0.33333334 0.30000001 0.66666669 0.40000001 0.33333334
		 0.40000001 0.66666669 0.5 0.33333334 0.5 0.66666669 0.60000002 0.33333334 0.60000002
		 0.66666669 0.70000005 0.33333334 0.70000005 0.66666669 0.80000007 0.33333334 0.80000007
		 0.66666669 0.9000001 0.33333334 0.9000001 0.66666669 1.000000119209 0.33333334 1.000000119209
		 0.66666669 0.050000001 0 0.15000001 0 0.25 0 0.35000002 0 0.45000002 0 0.55000001
		 0 0.65000004 0 0.75 0 0.85000002 0 0.95000005 0 0.050000001 1 0.15000001 1 0.25 1
		 0.35000002 1 0.45000002 1 0.55000001 1 0.65000004 1 0.75 1 0.85000002 1 0.95000005
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 88 ".pt[0:87]" -type "float3"  1180.2589 -100.27895 124.93874 
		1180.2589 -100.27895 124.93874 1180.2589 -100.27895 124.93874 1180.2589 -100.27895 
		124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 
		-100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 
		1180.2589 -100.27896 124.93874 1180.2589 -100.27895 124.93874 1180.2589 -100.27895 
		124.93874 1180.2589 -100.27895 124.93874 1180.2589 -100.27895 124.93874 1180.2589 
		-100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 
		1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 
		124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 
		-100.27895 124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 
		1180.2589 -100.27896 124.93874 1180.2589 -100.27895 124.93874 1180.2589 -100.27895 
		124.93874 1180.2589 -100.27895 124.93874 1180.2589 -100.27896 124.93874 1180.2589 
		-100.27895 124.93874 1180.2589 -100.27895 124.93874 1180.2589 -100.27895 124.93874 
		1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 
		124.93874 1180.2589 -100.27895 124.93874 1180.2589 -100.27895 124.93874 1180.2589 
		-100.27895 124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27895 124.93874 
		1180.2589 -100.27895 124.93874 1180.2589 -100.27895 124.93874 1180.2589 -100.27895 
		124.93874 1180.2589 -100.27895 124.93874 1180.2589 -100.27895 124.93874 1180.2589 
		-100.27895 124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 
		1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 
		124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27895 124.93874 1180.2589 
		-100.27895 124.93874 1180.2589 -100.27895 124.93874 1180.2589 -100.27895 124.93874 
		1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 
		124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 
		-100.27896 124.93874 1180.2589 -100.27895 124.93874 1180.2589 -100.27896 124.93874 
		1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 
		124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 
		-100.27895 124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27895 124.93874 
		1180.2589 -100.27895 124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 
		124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 
		-100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27895 124.93874 
		1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27895 
		124.93874 1180.2589 -100.27896 124.93874 1180.2589 -100.27896 124.93874 1180.2589 
		-100.27896 124.93874 1180.2589 -100.27896 124.93874;
	setAttr -s 88 ".vt[0:87]"  -1188.47119141 169.11703491 -123.86730957
		 -1191.90710449 184.90724182 -123.86730957 -1205.81274414 174.75166321 -123.86730957
		 -1221.18737793 175.39352417 -123.86730957 -1216.53051758 160 -123.86730957 -1221.18737793 144.60647583 -123.86730957
		 -1205.81274414 145.24833679 -123.86730957 -1191.90710449 135.092758179 -123.86730957
		 -1188.47119141 150.88296509 -123.86730957 -1173.81103516 160 -123.86730957 -1190.2878418 167.28239441 -120.6062088
		 -1193.032470703 179.89508057 -120.6062088 -1204.13977051 171.78314209 -120.6062088
		 -1216.42053223 172.2958374 -120.6062088 -1212.70080566 160 -120.6062088 -1216.42053223 147.7041626 -120.6062088
		 -1204.13977051 148.21685791 -120.6062088 -1193.032470703 140.10491943 -120.6062088
		 -1190.2878418 152.71762085 -120.6062088 -1178.57788086 160 -120.6062088 -1200 160 -127.73461914
		 -1200 160 -124.1391449 -1123.3951416 115.051460266 -124.70133209 -1121.89196777 134.63859558 -124.70133209
		 -1141.62695313 127.65908813 -124.70133209 -1159.30847168 133.76641846 -124.70133209
		 -1159.25146484 114.21562958 -124.70133209 -1170.041259766 97.91174316 -124.70133209
		 -1151.91223145 93.29943085 -124.70133209 -1139.25805664 76.62451172 -124.70133209
		 -1129.75183105 93.81601715 -124.70133209 -1109.50024414 99.32299805 -124.70133209
		 -1126.15039063 113.54814911 -120.73694611 -1124.9498291 129.19372559 -120.73694611
		 -1140.71337891 123.61871338 -120.73694611 -1154.83691406 128.49705505 -120.73694611
		 -1154.79138184 112.88053894 -120.73694611 -1163.40991211 99.85752106 -120.73694611
		 -1148.92895508 96.1733551 -120.73694611 -1138.82128906 82.85400391 -120.73694611
		 -1131.22790527 96.58597565 -120.73694611 -1115.051757813 100.98478699 -120.73694611
		 -1140 108.45285034 -129.40266418 -1140 108.45285034 -125.031791687 -1232.6809082 91.40990448 -123.028999329
		 -1243.21105957 98.43211365 -123.028999329 -1245.51416016 85.14354706 -123.028999329
		 -1254.52197266 77.13609314 -123.028999329 -1243.52026367 71.0018920898 -123.028999329
		 -1237.7635498 59.79791641 -123.028999329 -1229.45446777 68.52831268 -123.028999329
		 -1216.095336914 70.37835693 -123.028999329 -1222.75549316 81.14112091 -123.028999329
		 -1219.4621582 94.25552368 -123.028999329 -1232.70532227 89.38784027 -120.47480011
		 -1241.11645508 94.99686432 -120.47480011 -1242.95617676 84.38243103 -120.47480011
		 -1250.15136719 77.98633575 -120.47480011 -1241.36340332 73.086532593 -120.47480011
		 -1236.76525879 64.13717651 -120.47480011 -1230.12817383 71.11073303 -120.47480011
		 -1219.45739746 72.5884552 -120.47480011 -1224.77722168 81.18547058 -120.47480011
		 -1222.14660645 91.66077423 -120.47480011 -1234.21081543 80 -126.057998657 -1234.21081543 80 -123.24191284
		 -1154.27502441 50.018592834 -123.036087036 -1161.40478516 60.51204681 -123.036087036
		 -1168.55639648 49.040542603 -123.036087036 -1179.94226074 45.0025558472 -123.036087036
		 -1172.039550781 35.1558075 -123.036087036 -1170.92016602 22.57971001 -123.036087036
		 -1159.91064453 27.55265808 -123.036087036 -1146.8067627 24.23112488 -123.036087036
		 -1148.93164063 36.73833847 -123.036087036 -1140.92602539 47.67456055 -123.036087036
		 -1155.060546875 48.15002441 -120.475914 -1160.75561523 56.53180313 -120.475914 -1166.46801758 47.36876678 -120.475914
		 -1175.56262207 44.14334869 -120.475914 -1169.25024414 36.2780838 -120.475914 -1168.35620117 26.23272324 -120.475914
		 -1159.56213379 30.20495224 -120.475914 -1149.095214844 27.55180359 -120.475914 -1150.7923584 37.54219818 -120.475914
		 -1144.39782715 46.27765656 -120.475914 -1160 40 -126.072174072 -1160 40 -123.24949646;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 10 0
		 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0 7 17 0 8 18 0 9 19 0 20 0 0 20 1 0
		 20 2 0 20 3 0 20 4 0 20 5 0 20 6 0 20 7 0 20 8 0 20 9 0 10 21 0 11 21 0 12 21 0 13 21 0
		 14 21 0 15 21 0 16 21 0 17 21 0 18 21 0 19 21 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0
		 27 28 0 28 29 0 29 30 0 30 31 0 31 22 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0
		 38 39 0 39 40 0 40 41 0 41 32 0 22 32 0 23 33 0 24 34 0 25 35 0 26 36 0 27 37 0 28 38 0
		 29 39 0 30 40 0 31 41 0 42 22 0 42 23 0 42 24 0 42 25 0 42 26 0 42 27 0 42 28 0 42 29 0
		 42 30 0 42 31 0 32 43 0 33 43 0 34 43 0 35 43 0 36 43 0 37 43 0 38 43 0 39 43 0 40 43 0
		 41 43 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 44 0
		 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 60 0 60 61 0 61 62 0 62 63 0 63 54 0 44 54 0
		 45 55 0 46 56 0 47 57 0 48 58 0 49 59 0 50 60 0 51 61 0 52 62 0 53 63 0 64 44 0 64 45 0
		 64 46 0 64 47 0 64 48 0 64 49 0 64 50 0 64 51 0 64 52 0 64 53 0 54 65 0 55 65 0 56 65 0
		 57 65 0 58 65 0 59 65 0 60 65 0 61 65 0 62 65 0 63 65 0 66 67 0 67 68 0 68 69 0 69 70 0
		 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0 75 66 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0
		 81 82 0;
	setAttr ".ed[166:199]" 82 83 0 83 84 0 84 85 0 85 76 0 66 76 0 67 77 0 68 78 0
		 69 79 0 70 80 0 71 81 0 72 82 0 73 83 0 74 84 0 75 85 0 86 66 0 86 67 0 86 68 0 86 69 0
		 86 70 0 86 71 0 86 72 0 86 73 0 86 74 0 86 75 0 76 87 0 77 87 0 78 87 0 79 87 0 80 87 0
		 81 87 0 82 87 0 83 87 0 84 87 0 85 87 0;
	setAttr -s 120 -ch 400 ".fc[0:119]" -type "polyFaces" 
		f 4 0 21 -11 -21
		mu 0 4 0 1 12 11
		f 4 1 22 -12 -22
		mu 0 4 1 2 13 12
		f 4 2 23 -13 -23
		mu 0 4 2 3 14 13
		f 4 3 24 -14 -24
		mu 0 4 3 4 15 14
		f 4 4 25 -15 -25
		mu 0 4 4 5 16 15
		f 4 5 26 -16 -26
		mu 0 4 5 6 17 16
		f 4 6 27 -17 -27
		mu 0 4 6 7 18 17
		f 4 7 28 -18 -28
		mu 0 4 7 8 19 18
		f 4 8 29 -19 -29
		mu 0 4 8 9 20 19
		f 4 9 20 -20 -30
		mu 0 4 9 10 21 20
		f 3 -1 -31 31
		mu 0 3 1 0 22
		f 3 -2 -32 32
		mu 0 3 2 1 23
		f 3 -3 -33 33
		mu 0 3 3 2 24
		f 3 -4 -34 34
		mu 0 3 4 3 25
		f 3 -5 -35 35
		mu 0 3 5 4 26
		f 3 -6 -36 36
		mu 0 3 6 5 27
		f 3 -7 -37 37
		mu 0 3 7 6 28
		f 3 -8 -38 38
		mu 0 3 8 7 29
		f 3 -9 -39 39
		mu 0 3 9 8 30
		f 3 -10 -40 30
		mu 0 3 10 9 31
		f 3 10 41 -41
		mu 0 3 11 12 32
		f 3 11 42 -42
		mu 0 3 12 13 33
		f 3 12 43 -43
		mu 0 3 13 14 34
		f 3 13 44 -44
		mu 0 3 14 15 35
		f 3 14 45 -45
		mu 0 3 15 16 36
		f 3 15 46 -46
		mu 0 3 16 17 37
		f 3 16 47 -47
		mu 0 3 17 18 38
		f 3 17 48 -48
		mu 0 3 18 19 39
		f 3 18 49 -49
		mu 0 3 19 20 40
		f 3 19 40 -50
		mu 0 3 20 21 41
		f 4 50 71 -61 -71
		mu 0 4 42 43 44 45
		f 4 51 72 -62 -72
		mu 0 4 43 46 47 44
		f 4 52 73 -63 -73
		mu 0 4 46 48 49 47
		f 4 53 74 -64 -74
		mu 0 4 48 50 51 49
		f 4 54 75 -65 -75
		mu 0 4 50 52 53 51
		f 4 55 76 -66 -76
		mu 0 4 52 54 55 53
		f 4 56 77 -67 -77
		mu 0 4 54 56 57 55
		f 4 57 78 -68 -78
		mu 0 4 56 58 59 57
		f 4 58 79 -69 -79
		mu 0 4 58 60 61 59
		f 4 59 70 -70 -80
		mu 0 4 60 62 63 61
		f 3 -51 -81 81
		mu 0 3 43 42 64
		f 3 -52 -82 82
		mu 0 3 46 43 65
		f 3 -53 -83 83
		mu 0 3 48 46 66
		f 3 -54 -84 84
		mu 0 3 50 48 67
		f 3 -55 -85 85
		mu 0 3 52 50 68
		f 3 -56 -86 86
		mu 0 3 54 52 69
		f 3 -57 -87 87
		mu 0 3 56 54 70
		f 3 -58 -88 88
		mu 0 3 58 56 71
		f 3 -59 -89 89
		mu 0 3 60 58 72
		f 3 -60 -90 80
		mu 0 3 62 60 73
		f 3 60 91 -91
		mu 0 3 45 44 74
		f 3 61 92 -92
		mu 0 3 44 47 75
		f 3 62 93 -93
		mu 0 3 47 49 76
		f 3 63 94 -94
		mu 0 3 49 51 77
		f 3 64 95 -95
		mu 0 3 51 53 78
		f 3 65 96 -96
		mu 0 3 53 55 79
		f 3 66 97 -97
		mu 0 3 55 57 80
		f 3 67 98 -98
		mu 0 3 57 59 81
		f 3 68 99 -99
		mu 0 3 59 61 82
		f 3 69 90 -100
		mu 0 3 61 63 83
		f 4 100 121 -111 -121
		mu 0 4 84 85 86 87
		f 4 101 122 -112 -122
		mu 0 4 85 88 89 86
		f 4 102 123 -113 -123
		mu 0 4 88 90 91 89
		f 4 103 124 -114 -124
		mu 0 4 90 92 93 91
		f 4 104 125 -115 -125
		mu 0 4 92 94 95 93
		f 4 105 126 -116 -126
		mu 0 4 94 96 97 95
		f 4 106 127 -117 -127
		mu 0 4 96 98 99 97
		f 4 107 128 -118 -128
		mu 0 4 98 100 101 99
		f 4 108 129 -119 -129
		mu 0 4 100 102 103 101
		f 4 109 120 -120 -130
		mu 0 4 102 104 105 103
		f 3 -101 -131 131
		mu 0 3 85 84 106
		f 3 -102 -132 132
		mu 0 3 88 85 107
		f 3 -103 -133 133
		mu 0 3 90 88 108
		f 3 -104 -134 134
		mu 0 3 92 90 109
		f 3 -105 -135 135
		mu 0 3 94 92 110
		f 3 -106 -136 136
		mu 0 3 96 94 111
		f 3 -107 -137 137
		mu 0 3 98 96 112
		f 3 -108 -138 138
		mu 0 3 100 98 113
		f 3 -109 -139 139
		mu 0 3 102 100 114
		f 3 -110 -140 130
		mu 0 3 104 102 115
		f 3 110 141 -141
		mu 0 3 87 86 116
		f 3 111 142 -142
		mu 0 3 86 89 117
		f 3 112 143 -143
		mu 0 3 89 91 118
		f 3 113 144 -144
		mu 0 3 91 93 119
		f 3 114 145 -145
		mu 0 3 93 95 120
		f 3 115 146 -146
		mu 0 3 95 97 121
		f 3 116 147 -147
		mu 0 3 97 99 122
		f 3 117 148 -148
		mu 0 3 99 101 123
		f 3 118 149 -149
		mu 0 3 101 103 124
		f 3 119 140 -150
		mu 0 3 103 105 125
		f 4 150 171 -161 -171
		mu 0 4 126 127 128 129
		f 4 151 172 -162 -172
		mu 0 4 127 130 131 128
		f 4 152 173 -163 -173
		mu 0 4 130 132 133 131
		f 4 153 174 -164 -174
		mu 0 4 132 134 135 133
		f 4 154 175 -165 -175
		mu 0 4 134 136 137 135
		f 4 155 176 -166 -176
		mu 0 4 136 138 139 137
		f 4 156 177 -167 -177
		mu 0 4 138 140 141 139
		f 4 157 178 -168 -178
		mu 0 4 140 142 143 141
		f 4 158 179 -169 -179
		mu 0 4 142 144 145 143
		f 4 159 170 -170 -180
		mu 0 4 144 146 147 145
		f 3 -151 -181 181
		mu 0 3 127 126 148
		f 3 -152 -182 182
		mu 0 3 130 127 149
		f 3 -153 -183 183
		mu 0 3 132 130 150
		f 3 -154 -184 184
		mu 0 3 134 132 151
		f 3 -155 -185 185
		mu 0 3 136 134 152
		f 3 -156 -186 186
		mu 0 3 138 136 153
		f 3 -157 -187 187
		mu 0 3 140 138 154
		f 3 -158 -188 188
		mu 0 3 142 140 155
		f 3 -159 -189 189
		mu 0 3 144 142 156
		f 3 -160 -190 180
		mu 0 3 146 144 157
		f 3 160 191 -191
		mu 0 3 129 128 158
		f 3 161 192 -192
		mu 0 3 128 131 159
		f 3 162 193 -193
		mu 0 3 131 133 160
		f 3 163 194 -194
		mu 0 3 133 135 161
		f 3 164 195 -195
		mu 0 3 135 137 162
		f 3 165 196 -196
		mu 0 3 137 139 163
		f 3 166 197 -197
		mu 0 3 139 141 164
		f 3 167 198 -198
		mu 0 3 141 143 165
		f 3 168 199 -199
		mu 0 3 143 145 166
		f 3 169 190 -200
		mu 0 3 145 147 167;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "UniversalSmallRock";
	rename -uid "E2E4947F-4230-91B7-FC7D-DEA749394F53";
	setAttr ".t" -type "double3" -860 0 -160 ;
createNode mesh -n "UniversalSmallRockShape" -p "UniversalSmallRock";
	rename -uid "59F7AC1A-4F4F-8ED5-6C13-CDADE42464B3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 15 0 0 15 0 0 15 0 0 15 
		0 0 15 0 0 15 0 0 15 0 0 15 0;
createNode transform -n "UniversalBigRock";
	rename -uid "49F1B817-4B57-930E-8EEF-A7B94D06AF34";
	setAttr ".t" -type "double3" -760 0 -180 ;
createNode mesh -n "UniversalBigRockShape" -p "UniversalBigRock";
	rename -uid "137FF379-4E7E-302E-93AD-259A65C25470";
	setAttr -k off ".v";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -39.532043 15 39.532043 39.532043 
		15 39.532043 -39.532043 94.064087 39.532043 39.532043 94.064087 39.532043 -39.532043 
		94.064087 -39.532043 39.532043 94.064087 -39.532043 -39.532043 15 -39.532043 39.532043 
		15 -39.532043;
	setAttr -s 8 ".vt[0:7]"  -15 -15 15 15 -15 15 -15 15 15 15 15 15 -15 15 -15
		 15 15 -15 -15 -15 -15 15 -15 -15;
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
createNode transform -n "Root";
	rename -uid "F6C838E4-4A0E-9C88-DD58-6289CB735D4B";
	setAttr ".t" -type "double3" 200 0 220 ;
	setAttr ".s" -type "double3" -0.041204849962696556 1 0.036623434868688048 ;
createNode mesh -n "RootShape" -p "Root";
	rename -uid "B3E892FB-4DEF-1E5E-36C7-8FB890D55535";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.75 0.14564608037471771 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".pt[0:59]" -type "float3"  150 -150 0 150 -150 0 150 
		-150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 
		0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 
		-150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 
		0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 
		-150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 
		0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 
		-150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 0 150 -150 
		0 150 -150 0 177.40976 -190.74001 0 177.40976 -190.74001 0 122.59025 -190.74001 0 
		122.59025 -190.74001 0;
createNode mesh -n "polySurfaceShape3" -p "Root";
	rename -uid "9A6C45CD-43BB-90F6-5F55-B8905F7526AC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[0]" -type "float3" 58.10318 0 0 ;
	setAttr ".pt[1]" -type "float3" -58.10318 0 0 ;
	setAttr ".pt[6]" -type "float3" 58.10318 0 0 ;
	setAttr ".pt[7]" -type "float3" -58.10318 0 0 ;
	setAttr -s 8 ".vt[0:7]"  -150 -150 150 150 -150 150 -150 150 150 150 150 150
		 -150 150 -150 150 150 -150 -150 -150 -150 150 -150 -150;
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
createNode transform -n "DangleLeaves";
	rename -uid "F53AF3FA-4DF2-4B0C-0D6D-A481E34DA491";
	setAttr ".t" -type "double3" 0 0 200 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "DangleLeavesShape" -p "DangleLeaves";
	rename -uid "0B9C9786-43F1-9704-54FE-E5B94C640113";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 121 ".pt[0:120]" -type "float3"  -0.070426032 4.4970679 68.682861 
		-0.49947071 4.4970679 76.154266 -0.95749927 4.4970679 84.144989 -1.2510675 4.4970679 
		91.352295 -1.2700387 4.4970679 96.600037 -1.0291547 4.4970679 99.012421 -0.65307236 
		4.4970679 98.167603 -0.30620736 4.4970679 94.169052 -0.10206699 4.4970679 87.663788 
		-0.046635963 4.4970679 79.726807 -0.050811399 4.4970679 71.704422 3.7762632 4.4970679 
		69.672012 2.8657379 4.4970679 76.184372 1.5809866 4.4970679 83.403519 0.15145138 
		4.4970679 90.190216 -1.2417783 4.4970679 95.464661 -2.5114875 4.4970679 98.354691 
		-3.661551 4.4970679 98.347656 -4.7347722 4.4970679 95.398315 -5.7394986 4.4970679 
		89.957855 -6.6025047 4.4970679 82.919281 -7.1817775 4.4970679 75.487091 5.7835541 
		-0.38214505 73.94223 4.7784986 -0.38214505 78.816132 3.2492023 -0.38214505 84.543976 
		1.3866038 -0.38214505 90.149353 -0.64962351 -0.38214505 94.673981 -2.7160416 -0.38214505 
		97.326431 -4.7273598 -0.38214505 97.615105 -6.623179 -0.38214505 95.455063 -8.3200989 
		-0.38214505 91.203011 -9.6842947 -0.38214505 85.611069 -10.572967 -0.38214505 79.713837 
		6.3072505 7.8032236 81.032364 5.5039315 7.8032236 84.065292 3.9966123 7.8032236 87.975906 
		2.0568976 7.8032236 91.987495 -0.081454515 7.8032236 95.318146 -2.2629673 7.8032236 
		97.296356 -4.449635 7.8032236 97.505028 -6.5236135 7.8032236 95.888657 -8.4314508 
		7.8032236 92.778252 -10.019573 7.8032236 88.816208 -11.066753 7.8032236 84.824776 
		5.535471 10.159464 89.554459 5.1323967 10.159464 90.724213 4.1083593 10.159464 92.682655 
		2.5233757 10.159464 94.913872 0.64397585 10.159464 96.81778 -1.4017817 10.159464 
		97.954552 -3.4737215 10.159464 97.99659 -5.4385896 10.159464 96.93045 -7.2055459 
		10.159464 95.074829 -8.5561495 10.159464 92.860016 -9.2696657 10.159464 90.939018 
		4.7460532 6.1733332 96.625053 4.4654636 6.1733332 96.976173 3.8048983 6.1733332 97.520851 
		2.8735619 6.1733332 98.178825 1.3657861 6.1733332 98.799164 -0.47364157 6.1733332 
		99.187408 -2.4026294 6.1733332 99.165627 -4.146008 6.1733332 98.741516 -5.4624543 
		6.1733332 98.064697 -6.4168196 6.1733332 97.396126 -6.8685532 6.1733332 96.857155 
		4.2743034 5.293561 99.933731 4.1512656 5.293561 99.938057 3.7127483 5.293561 100 
		2.9282129 5.293561 100 1.5952656 5.293561 100 -0.10229799 5.293561 100 -1.9424385 
		5.293561 100 -3.6147602 5.293561 100 -4.9175897 5.293561 99.95414 -5.6453047 5.293561 
		99.901268 -5.9023123 5.293561 99.866943 3.349375 13.977201 100 3.3142648 13.977201 
		100 3.0519106 13.977201 100 2.2872012 13.977201 100 0.95463467 13.977201 100 -0.74570191 
		13.977201 100 -2.592716 13.977201 100 -4.3490386 13.977201 100 -5.8009081 13.977201 
		100 -6.6340098 13.977201 100 -6.889389 13.977201 100 0.76602155 10.573394 100 0.7983402 
		10.573394 100 0.73165447 10.573394 100 0.39574039 10.573394 100 -0.42656958 10.573394 
		100 -1.5812397 10.573394 100 -2.8693767 10.573394 100 -4.0834775 10.573394 100 -5.0373511 
		10.573394 100 -5.6489773 10.573394 100 -5.8787284 10.573394 100 -2.1543872 18.452322 
		100 -2.1093347 18.452322 100 -1.9933059 18.452322 100 -1.821107 18.452322 100 -1.7907352 
		18.452322 100 -2.0057046 18.452322 100 -2.3430054 18.452322 100 -2.6695282 18.452322 
		100 -2.9511631 18.452322 100 -3.3199515 18.452322 100 -3.483253 18.452322 100 -3.0404918 
		0 100 -3.0159197 0 100 -2.8083239 0 100 -2.4323781 0 100 -1.9073662 0 100 -1.2702587 
		0 100 -0.76117939 0 100 -0.55973011 0 100 -0.66494715 0 100 -0.86223441 0 100 -0.93470955 
		0 100;
createNode transform -n "Cocoon";
	rename -uid "BDDBECE1-4C94-D125-C830-E08B36674F7A";
	setAttr ".t" -type "double3" 1046.5267088211597 0 0 ;
	setAttr ".r" -type "double3" -90 -90 0 ;
	setAttr ".s" -type "double3" 1.3238150309587331 1.3238150309587331 1.3238150309587331 ;
createNode mesh -n "CocoonShape" -p "Cocoon";
	rename -uid "0495157A-409F-4140-5089-8EB9CE4C197E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 15 0 0 15 0 -27.600748 
		59.993484 0 -27.600748 59.993484 0 -7.4666786 63.167065 0 -7.4666786 63.167065 0 
		0 15 0 0 15 0 2.2737368e-13 26.228668 0 2.2737368e-13 26.228668 0 2.2737368e-13 15 
		0 2.2737368e-13 15;
createNode mesh -n "polySurfaceShape4" -p "Cocoon";
	rename -uid "D9DE63ED-4AE3-E766-1F12-0394E30D9F21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -25 -85 15 25 -85 15 -25 85 15 25 85 15 -25 85 -15
		 25 85 -15 -25 -85 -15 25 -85 -15;
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
createNode transform -n "Skull";
	rename -uid "3182FD20-4668-22A8-CBE0-DDAB5FFB9F3F";
	setAttr ".t" -type "double3" 1160 20 20 ;
createNode mesh -n "SkullShape" -p "Skull";
	rename -uid "6873513A-4259-6C56-12DB-A18DB0DFA9A7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Ribcage";
	rename -uid "EF33A95D-4EAC-9801-433D-5C9C513C7C57";
	setAttr ".t" -type "double3" 1240 0 0 ;
createNode mesh -n "RibcageShape" -p "Ribcage";
	rename -uid "4DDC46B4-473A-423B-B74A-0C8E73B21648";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 85 0 0 85 0 0 -25 0 0 -25 
		0 0 -25 0 0 -25 0 0 85 0 0 85 0;
	setAttr -s 8 ".vt[0:7]"  -25 -85 15 25 -85 15 -25 85 15 25 85 15 -25 85 -15
		 25 85 -15 -25 -85 -15 25 -85 -15;
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
createNode transform -n "Bone";
	rename -uid "B254773D-4776-E27C-9953-EC951B3491A0";
	setAttr ".t" -type "double3" 1320 0 0 ;
	setAttr ".s" -type "double3" 0.19594974236700113 1 0.38110419549449515 ;
createNode mesh -n "BoneShape" -p "Bone";
	rename -uid "AE97F730-4D5D-4FF1-3DA4-9DBE1791E1EF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.37499998044222593 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[16:23]" -type "float3"  11.03524 0 -6.6208868 -11.034809 
		0 -6.6208868 -11.034809 0 -6.6208868 11.03524 0 -6.6208868 -11.034809 0 6.6208868 
		-11.034809 0 6.6208868 11.03524 0 6.6208868 11.03524 0 6.6208868;
createNode mesh -n "polySurfaceShape5" -p "Bone";
	rename -uid "1E06CB93-4A50-4DC3-0D0B-88830A3121A9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 85 0 0 85 0 0 -3.9504929 
		0 0 -3.9504929 0 0 -3.9504929 0 0 -3.9504929 0 0 85 0 0 85 0;
	setAttr -s 8 ".vt[0:7]"  -25 -85 15 25 -85 15 -25 85 15 25 85 15 -25 85 -15
		 25 85 -15 -25 -85 -15 25 -85 -15;
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FA80FF69-45B6-9D85-3604-8EB37589BB5F";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "31369B52-4C97-B3BB-5303-EB90A616067C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "CD3406E9-404D-8C22-A91E-FD83E780D8EC";
createNode displayLayerManager -n "layerManager";
	rename -uid "18A8FC81-4899-BBF9-9222-579FB516B4F4";
createNode displayLayer -n "defaultLayer";
	rename -uid "5E65FF49-4007-5F9F-CCE9-08B8FFCE1EBA";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "047F3420-401A-5CBF-3899-919F2B0D5E3F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "486AD784-4244-B475-24D3-3097597365C8";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F96F1BE3-4894-4214-5DA5-0AA8730985BA";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|Camera01\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 734\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 734\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 656\\n    -height 734\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 656\\n    -height 734\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|Camera01\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 656\\n    -height 734\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|Camera01\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 656\\n    -height 734\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7AC5CB9F-4DEB-0374-E5A7-5ABA41668A69";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "4878222A-468F-92B0-8253-41A5FCD7CF1A";
	setAttr ".version" -type "string" "5.0.0.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "BDA44172-4FA0-69A5-13B2-8384ADCC9F96";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "ADCC7A17-469F-57EF-998A-77B46393FD2E";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "53F84B77-48B0-B2B2-0376-87A5422030FA";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode groupId -n "groupId1";
	rename -uid "8E3A6B68-4CCB-2552-B34C-049FB9C598DA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "42BE433C-441D-E2B5-8F95-79B23A7EC35C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "5CDBAD2B-46B4-7B03-4FCE-88AEAB46B46A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "454F21EA-4BD7-85E7-76C3-C7AA4E344E25";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "EB711C10-4F77-D931-528B-1D954CBF5717";
	setAttr ".ihi" 0;
createNode polySphere -n "polySphere1";
	rename -uid "E85C0A37-4CCD-6ED5-65EB-3FA08E758A89";
	setAttr ".r" 30;
	setAttr ".sa" 16;
	setAttr ".sh" 16;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "4B652D4D-46A1-07C9-BCCD-088E69783C61";
	setAttr ".ics" -type "componentList" 2 "f[0:111]" "f[224:239]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -421.30666913019212 345.33342947534243 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -421.30667 330.33344 9.5367432e-07 ;
	setAttr ".rs" 44090;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -451.30666913019212 315.33342947534243 -29.999998092651367 ;
	setAttr ".cbx" -type "double3" -391.30666913019212 345.33342947534243 30 ;
	setAttr ".raf" no;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "6B92C6A3-423C-97F5-F82E-39A3E7325F93";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -421.30666913019212 345.33342947534243 0 1;
createNode polyTweak -n "polyTweak1";
	rename -uid "956EAE41-4B4E-6471-8BFD-2090BC18889E";
	setAttr ".uopa" yes;
	setAttr -s 129 ".tk[129:257]" -type "float3"  0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743 0 0 -50.33342743
		 0 0 -50.33342743 0 0 -50.33342743 0;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "FC9EDC62-4BC1-D1CB-06EB-77A506F847EE";
	setAttr ".ics" -type "componentList" 1 "f[176:191]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -421.30666913019212 345.33342947534243 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -421.30667 368.41208 9.5367432e-07 ;
	setAttr ".rs" 49247;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -442.51986493097337 366.54662527612368 -21.213201522827148 ;
	setAttr ".cbx" -type "double3" -400.09347332941087 370.27752127221743 21.213203430175781 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "902C3A6D-446B-A9FD-0FE3-FDB7347403EF";
	setAttr ".ics" -type "componentList" 1 "f[32:47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -421.30666913019212 345.33342947534243 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -421.30667 271.92136 9.5367432e-07 ;
	setAttr ".rs" 42030;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -442.51986493097337 270.05590261987368 -21.213201522827148 ;
	setAttr ".cbx" -type "double3" -400.09347332941087 273.78679861596743 21.213203430175781 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak2";
	rename -uid "7F5CAA12-48F0-ED59-E522-E38A1C3A283C";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[258:289]" -type "float3"  0 8.21034622 0 0 8.21034622
		 0 0 4.47948647 0 0 4.47948647 0 0 8.21034622 0 0 4.47948647 0 0 8.21034622 0 0 4.47948647
		 0 0 8.21034622 0 0 4.47948647 0 0 8.21034622 0 0 4.47948647 0 0 8.21034622 0 0 4.47948647
		 0 0 8.21034622 0 0 4.47948647 0 0 8.21034622 0 0 4.47948647 0 0 8.21034622 0 0 4.47948647
		 0 0 8.21034622 0 0 4.47948647 0 0 8.21034622 0 0 4.47948647 0 0 8.21034622 0 0 4.47948647
		 0 0 8.21034622 0 0 4.47948647 0 0 8.21034622 0 0 4.47948647 0 0 8.21034622 0 0 4.47948647
		 0;
createNode polyCube -n "polyCube1";
	rename -uid "B33CCBF9-47BA-CD21-A7D9-2E84A5EDDC7A";
	setAttr ".w" 40;
	setAttr ".h" 100;
	setAttr ".d" 40;
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "29B278D4-48F6-D8AA-DE61-04BA675F2686";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -560 50.000001197759815 -160 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "CA2A7C76-43EF-1035-1AF9-DB8F7A807B7E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[4]" "e[6]" "e[9]" "e[12]" "e[16:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -560 50.000001197759815 -160 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.19999999999999996;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCone -n "polyCone1";
	rename -uid "8687B489-4D4E-AD85-77D9-AC825CCCFC73";
	setAttr ".r" 150;
	setAttr ".h" 50;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "8FE38C1F-4CCB-0B0D-7E00-1581120D475D";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 351.77108221390017 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5258789e-05 326.77109 -3.0517578e-05 ;
	setAttr ".rs" 34978;
	setAttr ".off" 140;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -150.00003051757812 326.77108221390017 -150.00007629394531 ;
	setAttr ".cbx" -type "double3" 150 326.77108221390017 150.00001525878906 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "26DE82F4-4F5E-A7C9-26B2-B38ECABBE9F5";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 351.77108221390017 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 369.01071 -3.0517578e-05 ;
	setAttr ".rs" 61556;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.2549285888671875 369.01072149612673 -8.254974365234375 ;
	setAttr ".cbx" -type "double3" 8.2549285888671875 369.01072149612673 8.254913330078125 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak3";
	rename -uid "FBDF9FAB-4EA6-7F01-01F7-DF9A90244FE2";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[21:40]" -type "float3"  0 42.23963928 0 0 42.23963928
		 0 0 42.23963928 0 0 42.23963928 0 0 42.23963928 0 0 42.23963928 0 0 42.23963928 0
		 0 42.23963928 0 0 42.23963928 0 0 42.23963928 0 0 42.23963928 0 0 42.23963928 0 0
		 42.23963928 0 0 42.23963928 0 0 42.23963928 0 0 42.23963928 0 0 42.23963928 0 0 42.23963928
		 0 0 42.23963928 0 0 42.23963928 0;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "B650D94F-4F10-EC9D-4F2C-7D84D6BC3F7D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 351.77108221390017 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.099999999999999978;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak4";
	rename -uid "2DFEC983-4A1C-D5F3-E2E2-569173675DCD";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk[21:60]" -type "float3"  -4.73032904 0 6.4615859e-05
		 -4.4987936 0 1.46181631 -4.49878597 0 -1.46176422 -3.82689381 0 -2.78042793 -2.78039217
		 0 -3.82691884 -1.46174204 0 -4.4988122 3.1743584e-06 0 -4.73033714 1.46175528 0 -4.49880314
		 2.78041792 0 -3.82691526 3.82691884 0 -2.7804141 4.4988122 0 -1.4617703 4.73032904
		 0 -1.7487515e-05 4.49880314 0 1.46174669 3.82690716 0 2.78040576 2.78041053 0 3.82691097
		 1.46174204 0 4.49880314 -1.225424e-05 0 4.73033714 -1.46176636 0 4.49880314 -2.78043985
		 0 3.82691097 -3.82694101 0 2.78041053 -4.73032904 -219.70956421 6.4615859e-05 -4.4987936
		 -219.70956421 1.46181631 -4.49878597 -219.70956421 -1.46176422 -3.82689381 -219.70956421
		 -2.78042793 -2.78039217 -219.70956421 -3.82691884 -1.46174204 -219.70956421 -4.4988122
		 3.1743584e-06 -219.70956421 -4.73033714 1.46175528 -219.70956421 -4.49880314 2.78041792
		 -219.70956421 -3.82691526 3.82691884 -219.70956421 -2.7804141 4.4988122 -219.70956421
		 -1.4617703 4.73032904 -219.70956421 -1.7487515e-05 4.49880314 -219.70956421 1.46174669
		 3.82690716 -219.70956421 2.78040576 2.78041053 -219.70956421 3.82691097 1.46174204
		 -219.70956421 4.49880314 -1.225424e-05 -219.70956421 4.73033714 -1.46176636 -219.70956421
		 4.49880314 -2.78043985 -219.70956421 3.82691097 -3.82694101 -219.70956421 2.78041053;
createNode polyCube -n "polyCube2";
	rename -uid "AFEA6B64-48B1-6FE1-0F69-338B70268C1A";
	setAttr ".w" 100;
	setAttr ".h" 20;
	setAttr ".d" 200;
	setAttr ".cuv" 4;
createNode polyPrimitiveMisc -n "polyPrimitiveMisc1";
	rename -uid "A047FB33-4C85-78A8-D3B4-D486802C3606";
	setAttr ".r" 20;
	setAttr ".l" 8.0720001459121704;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube3";
	rename -uid "C09A87A0-402F-343C-73C8-B19117C03832";
	setAttr ".w" 40;
	setAttr ".h" 3;
	setAttr ".d" 60;
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit1";
	rename -uid "31B0A969-4BDF-95E8-CF20-588C52D24CEC";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483641 -2147483637 -2147483638 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode shadingEngine -n "blinn1SG";
	rename -uid "85399994-4C57-AB03-8D62-C7B796956D35";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "A9F1702C-4526-8321-CD54-93B5D38E0C58";
createNode lambert -n "lambert2";
	rename -uid "27C0C174-4A3C-0327-B011-A9A9D8A25E47";
	setAttr ".c" -type "float3" 0.040936001 0.062873587 0.13600001 ;
createNode groupId -n "groupId7";
	rename -uid "AD4DA0B3-4906-A6B2-19D9-12BE709C2034";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube4";
	rename -uid "8B7D25DE-430A-9AF4-7367-70B54D6842ED";
	setAttr ".w" 20;
	setAttr ".h" 1000;
	setAttr ".d" 20;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak5";
	rename -uid "7077B070-4016-C6B3-FBA8-36A51ADB08A5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  6.20516396 0 -6.20516396 -6.20516396
		 0 -6.20516396 6.20516396 0 6.20516396 -6.20516396 0 6.20516396;
createNode polySplit -n "polySplit2";
	rename -uid "7C8FD63D-414F-3D9D-080D-37AA776D076B";
	setAttr -s 5 ".e[0:4]"  0.30000001 0.30000001 0.69999999 0.69999999
		 0.30000001;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "7B0ADF39-4A34-459E-96AA-068565F6A616";
	setAttr -s 5 ".e[0:4]"  0.69999999 0.69999999 0.30000001 0.30000001
		 0.69999999;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483635 -2147483636 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "5B441CCD-4CEF-71A6-50A5-E0829032DAF7";
	setAttr -s 5 ".e[0:4]"  0.69999999 0.69999999 0.30000001 0.30000001
		 0.69999999;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483626 -2147483625 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "892758D2-4CFF-5F94-E59B-129EDBC42CB7";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483618 -2147483617 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "B13746DF-49D9-085B-4EF2-1399C12A41F6";
	setAttr -s 5 ".e[0:4]"  0.40000001 0.40000001 0.60000002 0.60000002
		 0.40000001;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483610 -2147483609 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "E9E5BFC9-4A20-3B73-0A2B-C4854EEA4144";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.05;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "380B080D-43EC-77DB-E03A-7280BDFE59E1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.05;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel6";
	rename -uid "0B39EF6D-4F38-E8AD-5F6B-C49ACBBBD95B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.05;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel7";
	rename -uid "58F04D5B-474A-1981-DFAB-45B455E8515F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.05;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel8";
	rename -uid "A51FCF60-48D7-75CC-647C-D4A39C4105CF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.05;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "015261E6-4EAA-BAD2-B05D-4892BA678454";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -528.13843 300 -780 ;
	setAttr ".rs" 58991;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -528.20355224609375 289.50103759765625 -788.20355224609375 ;
	setAttr ".cbx" -type "double3" -528.07330322265625 310.49896240234375 -771.79644775390625 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "E356CACC-43F5-A9E3-58CB-2F88D1EA01FA";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -513.16461 510 -780 ;
	setAttr ".rs" 57535;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -513.210205078125 502.65072631835938 -786.8809814453125 ;
	setAttr ".cbx" -type "double3" -513.1190185546875 517.3492431640625 -773.1190185546875 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak6";
	rename -uid "068F4687-4FBB-E1CB-0CD9-10A944F18646";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[48:51]" -type "float3"  -224.92941284 194.55212402
		 0 -224.92941284 194.55212402 0 -224.92941284 194.55212402 0 -224.92941284 194.55212402
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "16202B64-442F-1E9E-892E-849D952F7CA5";
	setAttr ".ics" -type "componentList" 1 "f[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -525.92322 657 -780 ;
	setAttr ".rs" 57985;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -525.966552734375 650.0181884765625 -785.966552734375 ;
	setAttr ".cbx" -type "double3" -525.8798828125 663.9818115234375 -774.033447265625 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak7";
	rename -uid "A7ED631E-41FB-2D67-78D5-D6985621266E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[52:55]" -type "float3"  180.96728516 101.41015625
		 0 180.96728516 101.41015625 0 180.96728516 101.41015625 0 180.96728516 101.41015625
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "B34C07C4-4E57-060A-D0C1-038440F013DD";
	setAttr ".ics" -type "componentList" 1 "f[28]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -515.14099 828.5 -780 ;
	setAttr ".rs" 63802;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -515.17291259765625 823.35552978515625 -784.89093017578125 ;
	setAttr ".cbx" -type "double3" -515.10906982421875 833.64447021484375 -775.10906982421875 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak8";
	rename -uid "0D71B2BD-4643-0587-D89D-769ABB3F4BAD";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[48]" -type "float3" 38.62978 -30.404934 0 ;
	setAttr ".tk[49]" -type "float3" 38.62978 -30.404934 0 ;
	setAttr ".tk[50]" -type "float3" 38.62978 -30.404934 0 ;
	setAttr ".tk[51]" -type "float3" 38.62978 -30.404934 0 ;
	setAttr ".tk[56]" -type "float3" -175.57269 62.554729 0 ;
	setAttr ".tk[57]" -type "float3" -175.57269 62.554729 0 ;
	setAttr ".tk[58]" -type "float3" -175.57269 62.554729 0 ;
	setAttr ".tk[59]" -type "float3" -175.57269 62.554729 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "B85922FF-4BE2-E70F-58D0-259AB9C65632";
	setAttr ".ics" -type "componentList" 1 "f[34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -524.22052 931.40002 -780 ;
	setAttr ".rs" 49111;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -524.2418212890625 927.97039794921875 -784.2418212890625 ;
	setAttr ".cbx" -type "double3" -524.19921875 934.82965087890625 -775.7581787109375 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak9";
	rename -uid "DB6FE5C0-4FEC-60A0-9CC0-70B3E374C8DC";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[48]" -type "float3" 0 -74.554817 0 ;
	setAttr ".tk[49]" -type "float3" 0 -74.554817 0 ;
	setAttr ".tk[50]" -type "float3" 0 -74.554817 0 ;
	setAttr ".tk[51]" -type "float3" 0 -74.554817 0 ;
	setAttr ".tk[52]" -type "float3" 0 -37.294823 0 ;
	setAttr ".tk[53]" -type "float3" 0 -37.294823 0 ;
	setAttr ".tk[54]" -type "float3" 0 -37.294823 0 ;
	setAttr ".tk[55]" -type "float3" 0 -37.294823 0 ;
	setAttr ".tk[60]" -type "float3" 160.92693 55.314728 0 ;
	setAttr ".tk[61]" -type "float3" 160.92693 55.314728 0 ;
	setAttr ".tk[62]" -type "float3" 160.92693 55.314728 0 ;
	setAttr ".tk[63]" -type "float3" 160.92693 55.314728 0 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "3CE71944-4C29-9BE6-D4DC-08828A937179";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[64:67]" -type "float3"  -104.76931 36.62798691 0 -104.76931
		 36.62798691 0 -104.76931 36.62798691 0 -104.76931 36.62798691 0;
createNode polySplit -n "polySplit7";
	rename -uid "2719712F-4C1F-33D8-1902-D39B47313D60";
	setAttr -s 5 ".e[0:4]"  0.89444399 0.89444399 0.89444399 0.105556
		 0.89444399;
	setAttr -s 5 ".d[0:4]"  -2147483560 -2147483558 -2147483557 -2147483559 -2147483560;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "9697BC36-4691-D02A-94C8-4F9721D36468";
	setAttr -s 5 ".e[0:4]"  0.89418399 0.105816 0.89418399 0.89418399
		 0.89418399;
	setAttr -s 5 ".d[0:4]"  -2147483564 -2147483563 -2147483561 -2147483562 -2147483564;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "6D816B71-43D3-E135-6C3F-919252BBD947";
	setAttr -s 5 ".e[0:4]"  0.91210097 0.087898798 0.91210097 0.91210097
		 0.91210097;
	setAttr -s 5 ".d[0:4]"  -2147483580 -2147483579 -2147483577 -2147483578 -2147483580;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "3DEEF3C7-44D3-E6CE-7B53-2BAD7A42499E";
	setAttr -s 5 ".e[0:4]"  0.87928802 0.87928802 0.87928802 0.120712
		 0.87928802;
	setAttr -s 5 ".d[0:4]"  -2147483596 -2147483594 -2147483593 -2147483595 -2147483596;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "EF473F7B-42DF-A4D6-B532-C4AE06F08168";
	setAttr -s 5 ".e[0:4]"  0.115209 0.88479102 0.115209 0.88479102 0.115209;
	setAttr -s 5 ".d[0:4]"  -2147483612 -2147483610 -2147483609 -2147483611 -2147483612;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "3A793122-4E6B-C093-D392-3A914944BB4E";
	setAttr ".ics" -type "componentList" 1 "f[82]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -511.99539 321.56775 -780 ;
	setAttr ".rs" 50042;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -512.06406307220459 310.49896240234375 -788.07330322265625 ;
	setAttr ".cbx" -type "double3" -511.92669677734375 332.63656616210938 -771.92669677734375 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "B2F76E50-4D76-8A81-C7EC-29B8D025679B";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -526.74011 525.35657 -780 ;
	setAttr ".rs" 43569;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -526.789794921875 517.3492431640625 -786.789794921875 ;
	setAttr ".cbx" -type "double3" -526.6904296875 533.36395263671875 -773.210205078125 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak11";
	rename -uid "A4AB4920-4117-443C-1C83-FE802D2AA61B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[88:91]" -type "float3"  192.76815796 77.11346436 -1.1368684e-13
		 192.76815796 77.11346436 -1.1368684e-13 192.76815796 77.11346436 -1.1368684e-13 192.76815796
		 77.11346436 -1.1368684e-13;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "DFC99456-484F-D42B-EB53-298D09480967";
	setAttr ".ics" -type "componentList" 1 "f[77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -514.16357 670.98621 -780 ;
	setAttr ".rs" 40743;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -514.20703125 663.9818115234375 -785.8798828125 ;
	setAttr ".cbx" -type "double3" -514.1201171875 677.9906005859375 -774.1201171875 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak12";
	rename -uid "540A3A26-4382-C4D2-8D5E-18A56B16170D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[92:95]" -type "float3"  -216.52957153 60.53087234
		 0 -216.52957153 60.53087234 0 -216.52957153 60.53087234 0 -216.52957153 60.53087234
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "F86A6872-4AB8-2655-BCCB-A688AD994ACA";
	setAttr ".ics" -type "componentList" 1 "f[45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -524.7962 838.6228 -780 ;
	setAttr ".rs" 55033;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -524.82708740234375 833.64447021484375 -784.82708740234375 ;
	setAttr ".cbx" -type "double3" -524.76531982421875 843.60113525390625 -775.17291259765625 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak13";
	rename -uid "208BED4C-4C25-3C52-E057-96B476490150";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[88]" -type "float3" 0 -50.457558 0 ;
	setAttr ".tk[89]" -type "float3" 0 -50.457558 0 ;
	setAttr ".tk[90]" -type "float3" 0 -50.457558 0 ;
	setAttr ".tk[91]" -type "float3" 0 -50.457558 0 ;
	setAttr ".tk[96]" -type "float3" 139.3168 39.472862 0 ;
	setAttr ".tk[97]" -type "float3" 139.3168 39.472862 0 ;
	setAttr ".tk[98]" -type "float3" 139.3168 39.472862 0 ;
	setAttr ".tk[99]" -type "float3" 139.3168 39.472862 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "CB1AB083-4BA2-FA47-F275-2B9B01010EAF";
	setAttr ".ics" -type "componentList" 1 "f[73]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -520 500 -780 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -515.82214 938.27771 -780 ;
	setAttr ".rs" 46254;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -515.84356689453125 934.82965087890625 -784.19921875 ;
	setAttr ".cbx" -type "double3" -515.80078125 941.7257080078125 -775.80078125 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak14";
	rename -uid "EB8662A1-432E-CB75-DE1C-0786DAA1096A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[100:103]" -type "float3"  -151.005645752 23.71316719
		 0 -151.005645752 23.71316719 0 -151.005645752 23.71316719 0 -151.005645752 23.71316719
		 0;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "BE8F2A71-4043-51A3-205A-89A66286C180";
	setAttr ".r" 10;
	setAttr ".h" 40;
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "C45F376F-471F-9DBE-C201-9B88E68119EF";
	setAttr ".ics" -type "componentList" 1 "f[16:23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -991.65214058017705 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -991.65216 11.29165 0 ;
	setAttr ".rs" 41948;
	setAttr ".off" 2.7999999523162842;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1001.6521396265027 -0.19071578979492188 -9.9999990463256836 ;
	setAttr ".cbx" -type "double3" -981.65214058017705 22.774015426635742 9.9999990463256836 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "19AFB2F6-43B7-2671-85A2-5795EEAAD2A6";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[8]" -type "float3" 0 -0.99931002 0 ;
	setAttr ".tk[9]" -type "float3" 0 2.7740152 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.99931002 0 ;
	setAttr ".tk[11]" -type "float3" 0 -9.2333679 0 ;
	setAttr ".tk[12]" -type "float3" 0 -16.404165 0 ;
	setAttr ".tk[13]" -type "float3" 0 -20.190716 0 ;
	setAttr ".tk[14]" -type "float3" 0 -16.404165 0 ;
	setAttr ".tk[15]" -type "float3" 0 -9.2333679 0 ;
	setAttr ".tk[17]" -type "float3" 0 -8.8640738 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "2FEC228D-43BB-F80B-EAF7-D781D567964B";
	setAttr ".ics" -type "componentList" 1 "f[16:23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -991.65214058017705 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -991.65216 11.26851 -0.025471926 ;
	setAttr ".rs" 33038;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -998.7442426309583 2.2732899188995361 -7.742255687713623 ;
	setAttr ".cbx" -type "double3" -984.5600385293958 20.263729095458984 7.6913118362426758 ;
	setAttr ".raf" no;
createNode polyCube -n "polyCube5";
	rename -uid "EB18BFFE-4CCD-4CC5-6A14-DBA18164FA6E";
	setAttr ".w" 200;
	setAttr ".h" 200;
	setAttr ".d" 40;
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit12";
	rename -uid "E1DE9C9B-44EC-2647-EF6A-D9AECB3280F9";
	setAttr -s 5 ".e[0:4]"  0.80000001 0.80000001 0.2 0.2 0.80000001;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "22C792A9-4C72-F1EF-CBC5-2897CE873E93";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483642 -2147483641 -2147483631 -2147483637 -2147483638 -2147483629 
		-2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak16";
	rename -uid "56A5FD34-44D8-6A51-3636-4AA9493D8DD1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0 -15.23397064 0 0 -15.23397064
		 0 0 -15.23397064 0 0 -15.23397064 0;
createNode polySplit -n "polySplit14";
	rename -uid "DA80CE9D-436D-8D8B-2083-92A50C766629";
	setAttr -s 7 ".e[0:6]"  0.83042997 0.83042997 0.83042997 0.16957
		 0.16957 0.16957 0.83042997;
	setAttr -s 7 ".d[0:6]"  -2147483640 -2147483639 -2147483621 -2147483635 -2147483636 -2147483617 
		-2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak17";
	rename -uid "8DD2ED1A-45C5-EC65-0BCD-6EA41637D9FD";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2]" -type "float3" 0 7.6682105 -7.8826365 ;
	setAttr ".tk[3]" -type "float3" 0 7.6682105 -7.8826365 ;
	setAttr ".tk[4]" -type "float3" 0 7.6682105 7.8826365 ;
	setAttr ".tk[5]" -type "float3" 0 7.6682105 7.8826365 ;
	setAttr ".tk[18]" -type "float3" 0 -6.4123874 -4.6243863 ;
	setAttr ".tk[19]" -type "float3" 0 -6.4123874 -4.6243863 ;
	setAttr ".tk[21]" -type "float3" 0 -6.4123874 4.6243863 ;
	setAttr ".tk[22]" -type "float3" 0 -6.4123874 4.6243863 ;
createNode polySplit -n "polySplit15";
	rename -uid "79D497F4-4C03-A07D-DF0B-A8B7CD76B935";
	setAttr -s 7 ".e[0:6]"  0.112099 0.112099 0.112099 0.88790101 0.88790101
		 0.88790101 0.112099;
	setAttr -s 7 ".d[0:6]"  -2147483640 -2147483639 -2147483621 -2147483613 -2147483612 -2147483611 
		-2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube6";
	rename -uid "DDA3A2D3-4F2E-8670-F9FB-01BED29CF1D0";
	setAttr ".w" 400;
	setAttr ".h" 700;
	setAttr ".d" 400;
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit16";
	rename -uid "C8232FB9-4DDB-BB71-5338-9EA7B4207EC4";
	setAttr -s 5 ".e[0:4]"  0.84874201 0.84874201 0.15125801 0.15125801
		 0.84874201;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "899DD3D1-4CCD-F47C-04E5-778772656208";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -540 350 -640 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -540 647.05969 -640 ;
	setAttr ".rs" 48752;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 20.5;
	setAttr ".cbn" -type "double3" -740 594.119384765625 -840 ;
	setAttr ".cbx" -type "double3" -340 700 -440 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "4F0C657B-463C-8F9F-AF99-46B23FA03F38";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -540 350 -640 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak18";
	rename -uid "29498EA8-400E-0E2A-B3D6-FCB4DB134F08";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[2]" -type "float3" -10.25 0 10.25 ;
	setAttr ".tk[15]" -type "float3" 10.25 0 -10.25 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "BB0A46F6-460C-AAA8-B2DC-0C8C23CBF4D5";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -540 350 -640 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak19";
	rename -uid "D1AE0D40-4FFA-880E-0136-0B9847CADF0C";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[3]" -type "float3" 10.25 0 10.25 ;
	setAttr ".tk[14]" -type "float3" -10.25 0 -10.25 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "4096A119-43A0-BA95-1BBF-89866D01E30E";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -540 350 -640 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak20";
	rename -uid "5D2AE9A5-4397-2245-8C23-8F8786508DE6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[5]" -type "float3" 10.25 0 -10.25 ;
	setAttr ".tk[15]" -type "float3" -10.25 0 10.25 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "8D7B771B-4FC8-DBB8-D177-DBA2F9F45E28";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -540 350 -640 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak21";
	rename -uid "E8B96AC9-4528-7FBC-7876-749B64F40309";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[4]" -type "float3" -10.25 0 -10.25 ;
	setAttr ".tk[14]" -type "float3" 10.25 0 10.25 ;
createNode polyCube -n "polyCube7";
	rename -uid "C49A8FE4-42C2-749B-5CAE-74BB337B839B";
	setAttr ".w" 1500;
	setAttr ".h" 900;
	setAttr ".d" 400;
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit17";
	rename -uid "5DBCE882-4D95-9E58-B3FD-2FB0FFA61324";
	setAttr -s 5 ".e[0:4]"  0.84746802 0.84746802 0.152532 0.152532 0.84746802;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "754B5734-4A1F-0EA8-34D3-73B5650C6163";
	setAttr -s 5 ".e[0:4]"  0.65563798 0.65563798 0.34436199 0.34436199
		 0.65563798;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483634 -2147483633 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "565B589C-4545-9C7F-570F-47AD78E2DE1F";
	setAttr -s 5 ".e[0:4]"  0.69828302 0.69828302 0.30171701 0.30171701
		 0.69828302;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483626 -2147483625 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "FD0B207A-4BAF-CB8C-1DB9-1CB00DD18B44";
	setAttr ".ics" -type "componentList" 4 "f[0]" "f[2]" "f[4:5]" "f[10:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1600 490 -620 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1600 664.59485 -620 ;
	setAttr ".rs" 33346;
	setAttr ".lt" -type "double3" 0 0 96.244816457630861 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2350 389.18966674804688 -820 ;
	setAttr ".cbx" -type "double3" -850 940 -420 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "84D84B86-4FA0-D3DE-ABF9-4F903CCB443A";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1600 490 -620 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak22";
	rename -uid "FEA7323A-4F92-6FB7-E046-D58314D311B4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[3]" -type "float3" 24.061218 0 24.061203 ;
	setAttr ".tk[22]" -type "float3" -24.061218 0 -24.061203 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "AF329E75-4454-0CF2-6CDE-C4AD3119E79B";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1600 490 -620 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak23";
	rename -uid "1CE92E16-4DE6-6152-E61C-EE8444791B5D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[5]" -type "float3" 24.061218 0 -24.061218 ;
	setAttr ".tk[24]" -type "float3" -24.061218 0 24.061218 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "4295070B-491E-56B9-E928-5EB4F89FDEDF";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1600 490 -620 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak24";
	rename -uid "4A513A25-426C-8A92-5158-CD8FB000F947";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[4]" -type "float3" -24.061157 0 -24.061218 ;
	setAttr ".tk[23]" -type "float3" 24.061157 0 24.061218 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "EF6DF923-4E69-17D0-F1BE-488C21E150C9";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1600 490 -620 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak25";
	rename -uid "29DA493D-4B3A-A70D-9290-DDA4B6D5E49D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[2]" -type "float3" -24.061157 0 24.061203 ;
	setAttr ".tk[22]" -type "float3" 24.061157 0 -24.061203 ;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "7FAE877A-4572-938F-6F71-46A85017A331";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1600 490 -620 1;
createNode polyTweak -n "polyTweak26";
	rename -uid "B271C323-4A05-0AB7-E776-0CB73404EB80";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[2]" -type "float3" 27.569187 0 -7.9802294 ;
	setAttr ".tk[3]" -type "float3" -27.569187 0 -7.9802294 ;
	setAttr ".tk[4]" -type "float3" 27.569187 0 7.9802294 ;
	setAttr ".tk[5]" -type "float3" -27.569187 0 7.9802294 ;
	setAttr ".tk[20]" -type "float3" 17.745605 0 0 ;
	setAttr ".tk[21]" -type "float3" -17.745605 0 0 ;
	setAttr ".tk[22]" -type "float3" -17.745605 0 0 ;
	setAttr ".tk[23]" -type "float3" 17.745605 0 0 ;
	setAttr ".tk[24]" -type "float3" 17.745605 0 0 ;
	setAttr ".tk[25]" -type "float3" -17.745605 0 0 ;
	setAttr ".tk[26]" -type "float3" -33.700989 0 -31.826162 ;
	setAttr ".tk[27]" -type "float3" 33.700989 0 -31.826162 ;
	setAttr ".tk[28]" -type "float3" -17.745605 0 0 ;
	setAttr ".tk[29]" -type "float3" -33.700989 0 31.826162 ;
	setAttr ".tk[30]" -type "float3" 33.700989 0 31.826162 ;
	setAttr ".tk[31]" -type "float3" 17.745605 0 0 ;
createNode polyCube -n "polyCube8";
	rename -uid "FD3B9725-4126-595C-8494-15BF74EA9A41";
	setAttr ".w" 900;
	setAttr ".h" 750;
	setAttr ".d" 400;
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit20";
	rename -uid "D10E34FC-4A80-E91F-9CD1-FB9622160D63";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483645 -2147483646 -2147483647 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak27";
	rename -uid "8A7DB866-468B-A9A5-06B1-ADAEAD7C9C9E";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -385 0 ;
	setAttr ".tk[3]" -type "float3" 0 -385 0 ;
	setAttr ".tk[4]" -type "float3" 0 -385 0 ;
	setAttr ".tk[5]" -type "float3" 0 -385 0 ;
	setAttr ".tk[10]" -type "float3" 0 -115 0 ;
	setAttr ".tk[11]" -type "float3" 0 -115 0 ;
createNode polySplit -n "polySplit21";
	rename -uid "D7A16BBA-4CA4-AC14-D137-C9A6A4CD8704";
	setAttr -s 7 ".e[0:6]"  0.45684099 0.54315901 0.45684099 0.54315901
		 0.45684099 0.54315901 0.45684099;
	setAttr -s 7 ".d[0:6]"  -2147483644 -2147483629 -2147483643 -2147483639 -2147483631 -2147483640 
		-2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak28";
	rename -uid "E55EC087-4EB4-3AA9-1422-C59A487725B5";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[12:17]" -type "float3"  0 173.25241089 0 0 49.90658569
		 0 0 173.25241089 0 0 173.25241089 0 0 49.90658569 0 0 173.25241089 0;
createNode polySplit -n "polySplit22";
	rename -uid "728A78DB-401D-DE56-7A75-ACB31EA12FEC";
	setAttr -s 7 ".e[0:6]"  0.69999999 0.30000001 0.69999999 0.30000001
		 0.69999999 0.30000001 0.69999999;
	setAttr -s 7 ".d[0:6]"  -2147483644 -2147483627 -2147483643 -2147483625 -2147483631 -2147483623 
		-2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit23";
	rename -uid "A5977487-4665-79A0-4786-22B1576C61B0";
	setAttr -s 7 ".e[0:6]"  0.84783298 0.15216701 0.84783298 0.15216701
		 0.84783298 0.15216701 0.84783298;
	setAttr -s 7 ".d[0:6]"  -2147483627 -2147483616 -2147483623 -2147483612 -2147483625 -2147483614 
		-2147483627;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube9";
	rename -uid "A871153B-4F61-4000-EC4C-B29A159D3BC9";
	setAttr ".w" 100;
	setAttr ".h" 130;
	setAttr ".d" 5;
	setAttr ".cuv" 4;
createNode polyCollapseEdge -n "polyCollapseEdge1";
	rename -uid "61859145-4D3F-25BD-9E91-39830EABF0BF";
	setAttr ".ics" -type "componentList" 1 "e[0]";
createNode polyCollapseEdge -n "polyCollapseEdge2";
	rename -uid "20544B48-4592-B03C-9566-A4A34B96CE87";
	setAttr ".ics" -type "componentList" 1 "e[2]";
createNode groupId -n "groupId8";
	rename -uid "C48FF00A-49A0-1D7B-E320-9F883C115C31";
	setAttr ".ihi" 0;
createNode polySplit -n "polySplit24";
	rename -uid "E3D06747-4C99-16E5-AC8E-5B893F4B9007";
	setAttr -s 5 ".e[0:4]"  0.210858 0.210858 0.78914201 0.78914201 0.210858;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483626 -2147483625 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak29";
	rename -uid "61C5244B-4750-1174-B655-AA8C5B6C6FD1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -3.8441305 2.0042441 ;
	setAttr ".tk[3]" -type "float3" 0 -3.8441305 2.0042441 ;
	setAttr ".tk[4]" -type "float3" 0 -3.8441305 -2.0042441 ;
	setAttr ".tk[5]" -type "float3" 0 -3.8441305 -2.0042441 ;
	setAttr ".tk[24]" -type "float3" 0 0.44285509 3.012434 ;
	setAttr ".tk[25]" -type "float3" 0 0.44285509 3.012434 ;
	setAttr ".tk[27]" -type "float3" 0 0.44285509 -3.012434 ;
	setAttr ".tk[28]" -type "float3" 0 0.44285509 -3.012434 ;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "9BBB976D-4FC4-59A8-E5E0-2F8B055B3207";
	setAttr ".txf" -type "matrix" 1.4560995862528801 0 0 0 0 1.4560995862528801 0 0
		 0 0 1.4560995862528801 0 -1140 165.60995862528802 -260 1;
createNode polyTweak -n "polyTweak30";
	rename -uid "BDBEAE98-4098-73A9-26C7-E5B5BEBEFDC3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  3.16119576 0 -3.16119576 -3.16119576
		 0 -3.16119576 3.16119576 0 3.16119576 -3.16119576 0 3.16119576;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "C37EBDDE-4301-3EB9-D13C-338AAEA46680";
	setAttr ".txf" -type "matrix" 1.655752016039207 0 0 0 0 1.655752016039207 0 0 0 0 1.655752016039207 0
		 -1400 41.393797603886718 -160 1;
createNode polyTweak -n "polyTweak31";
	rename -uid "E483F5E0-461D-B14F-6B7F-E2BF5191CB4F";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[25:33]" -type "float3"  0 -18.066846848 0 0 -20.60228348
		 0 0 -11.47457218 0 0 -18.066854477 0 0 -11.16018105 0 0 -5.2371459 0 0 -2.61202431
		 0 0 -5.23714209 0 0 -11.16018105 0;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "E84F850C-4837-3CEF-7C39-0694639342B6";
	setAttr ".txf" -type "matrix" 1.5318481227039531 0 0 0 0 1.5318481227039531 0 0
		 0 0 1.5318481227039531 0 -991.65214058017705 30.636962454079061 -140 1;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "0241B769-40A4-F256-30B9-9CA77D97B898";
	setAttr ".txf" -type "matrix" 1.6218298354572722 0 0 0 0 1.6218298354572722 0 0
		 0 0 1.6218298354572722 0 -960 160 0 1;
createNode polyTweak -n "polyTweak32";
	rename -uid "F1621FA9-4195-643E-D4D3-FFA81F9DF5FD";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[0:15]" -type "float3"  0 1.5 -1.31849003 0 1.5 -1.31849003
		 0 -1.5 0 0 -1.5 0 0 -1.5 0 0 -1.5 0 0 1.5 1.31849003 0 1.5 1.31849003 0 80 0 0 80
		 0 0 80 0 0 80 0 0 3.8146973e-06 0 0 3.8146973e-06 0 0 3.8146973e-06 0 0 3.8146973e-06
		 0;
createNode transformGeometry -n "transformGeometry5";
	rename -uid "3108EE9D-4AC1-E245-F714-1C889B592245";
	setAttr ".txf" -type "matrix" 1.2174961632168853 0 0 0 0 1.2174961632168853 0 0
		 0 0 1.2174961632168853 0 -639.85931158493111 0 -160 1;
createNode transformGeometry -n "transformGeometry6";
	rename -uid "E3B24051-4807-FA07-50E7-89BD5B00A787";
	setAttr ".txf" -type "matrix" 1.2797710374222495 0 0 0 0 1.2797710374222495 0 0
		 0 0 1.2797710374222495 0 -880 63.988553403970798 -160 1;
createNode groupId -n "groupId9";
	rename -uid "768C1326-4038-2569-C2F2-B199396CB120";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube10";
	rename -uid "E75FBD13-4158-363D-66F2-F7AFFBC2462C";
	setAttr ".w" 30;
	setAttr ".h" 30;
	setAttr ".d" 30;
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit25";
	rename -uid "FE3CCE53-41EE-A264-ACAF-919FF3BC4E85";
	setAttr -s 5 ".e[0:4]"  0.60000002 0.60000002 0.40000001 0.40000001
		 0.60000002;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit26";
	rename -uid "C049B2DD-4E87-D9D0-077E-BAA4A0066631";
	setAttr -s 5 ".e[0:4]"  0.60000002 0.60000002 0.40000001 0.40000001
		 0.60000002;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483634 -2147483633 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit27";
	rename -uid "793D113B-4323-2E8C-32E7-5CB6239C5DBD";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483635 -2147483636 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak33";
	rename -uid "66B7AC8E-4D92-7D85-91A8-AE9B8A9030D6";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[8:19]" -type "float3"  216.30613708 -1.4210855e-14
		 0 216.30613708 -1.4210855e-14 0 216.30613708 -1.4210855e-14 0 216.30613708 -1.4210855e-14
		 0 -112.093505859 0 0 -112.093505859 0 0 -112.093505859 0 0 -112.093505859 0 0 -210.28074646
		 0 0 -210.28074646 0 0 -210.28074646 0 0 -210.28074646 0 0;
createNode polySplit -n "polySplit28";
	rename -uid "35B22347-4872-E71A-995C-F2AD677052F2";
	setAttr -s 5 ".e[0:4]"  0.40000001 0.40000001 0.60000002 0.60000002
		 0.40000001;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483626 -2147483625 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak34";
	rename -uid "47EFF486-4A7D-6B14-D8C5-9C935504E3A1";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" 29.473871 0 0 ;
	setAttr ".tk[1]" -type "float3" -29.473871 0 0 ;
	setAttr ".tk[6]" -type "float3" 29.473871 0 0 ;
	setAttr ".tk[7]" -type "float3" -29.473871 0 0 ;
	setAttr ".tk[8]" -type "float3" 61.651886 0 0 ;
	setAttr ".tk[9]" -type "float3" 61.651886 0 0 ;
	setAttr ".tk[10]" -type "float3" 61.651886 0 0 ;
	setAttr ".tk[11]" -type "float3" 61.651886 0 0 ;
	setAttr ".tk[12]" -type "float3" 527.59229 0 0 ;
	setAttr ".tk[13]" -type "float3" 527.59229 0 0 ;
	setAttr ".tk[14]" -type "float3" 527.59229 0 0 ;
	setAttr ".tk[15]" -type "float3" 527.59229 0 0 ;
	setAttr ".tk[20]" -type "float3" -278.78534 0 0 ;
	setAttr ".tk[21]" -type "float3" -278.78534 0 0 ;
	setAttr ".tk[22]" -type "float3" -278.78534 0 0 ;
	setAttr ".tk[23]" -type "float3" -278.78534 0 0 ;
createNode polySplit -n "polySplit29";
	rename -uid "A837076C-4890-50C0-5DD0-EE886B2CA347";
	setAttr -s 5 ".e[0:4]"  0.14513101 0.85486901 0.85486901 0.14513101
		 0.14513101;
	setAttr -s 5 ".d[0:4]"  -2147483634 -2147483627 -2147483628 -2147483633 -2147483634;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit30";
	rename -uid "613C13FF-4FBD-CB5D-E919-3F99DD824438";
	setAttr -s 5 ".e[0:4]"  0.14269599 0.85730398 0.85730398 0.14269599
		 0.14269599;
	setAttr -s 5 ".d[0:4]"  -2147483626 -2147483611 -2147483612 -2147483625 -2147483626;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit31";
	rename -uid "7F073CB4-4118-E7A1-10E7-5BBB3D43A5C1";
	setAttr -s 5 ".e[0:4]"  0.82863802 0.82863802 0.171362 0.171362 0.82863802;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483618 -2147483617 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "63E64E31-4D1F-A990-67FB-FA81101CA151";
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" -0.041204849962696556 0 0 0 0 1 0 0 0 0 0.036623434868688048 0
		 193.81927250559551 -150 220 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 176.77342 -125.22472 220 ;
	setAttr ".rs" 46392;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 176.40386184435545 -130.44943237304688 214.50648476969678 ;
	setAttr ".cbx" -type "double3" 177.14297887045024 -119.99999618530273 225.49351523030322 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "215CA12A-4606-90A4-92B7-A68728543C13";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" -0.041204849962696556 0 0 0 0 1 0 0 0 0 0.036623434868688048 0
		 193.81927250559551 -150 220 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 174.26006 -196.62335 220 ;
	setAttr ".rs" 46343;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 172.05023520967839 -201.2467041015625 214.50648476969678 ;
	setAttr ".cbx" -type "double3" 176.46987787884615 -192 225.49351523030322 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak35";
	rename -uid "214919DC-4C0C-63EF-F44C-4A8BC8006519";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[36:39]" -type "float3"  790.54205322 -18.41016579
		 0 790.54205322 -18.41016579 0 790.54205322 -23.73811531 0 790.54205322 -23.73811531
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	rename -uid "F71660CE-4ED6-8662-B810-059CCE8A7FA1";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" -0.041204849962696556 0 0 0 0 1 0 0 0 0 0.036623434868688048 0
		 193.81927250559551 -150 220 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 132.36647 -237.54404 220 ;
	setAttr ".rs" 64895;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 130.34142558727572 -238.80694580078125 214.50648476969678 ;
	setAttr ".cbx" -type "double3" 134.39151225834055 -236.28114318847656 225.49351523030322 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak36";
	rename -uid "9FD2226E-4A6B-05EF-D544-3AA8FD2CBBE3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[40:43]" -type "float3"  1021.19927979 -37.56023788
		 0 1021.19927979 -37.56023788 0 1012.23059082 -44.28113937 0 1012.23059082 -44.28113937
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	rename -uid "1020EFB3-4168-892E-5970-FEA259177726";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" -0.041204849962696556 0 0 0 0 1 0 0 0 0 0.036623434868688048 0
		 193.81927250559551 -150 220 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 207.48442 -54.859138 220 ;
	setAttr ".rs" 48483;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 206.78306675132987 -60 214.50648476969678 ;
	setAttr ".cbx" -type "double3" 208.18576193184708 -49.718276977539062 225.49351523030322 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak37";
	rename -uid "110E531A-46E0-410C-35CC-F39DFBD456AB";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[0]" -type "float3" 179.22777 -15.683406 0 ;
	setAttr ".tk[1]" -type "float3" 117.94236 -10.79499 0 ;
	setAttr ".tk[6]" -type "float3" 179.22777 -15.683406 0 ;
	setAttr ".tk[7]" -type "float3" 117.94236 -10.79499 0 ;
	setAttr ".tk[40]" -type "float3" -43.080967 2.4886899 0 ;
	setAttr ".tk[41]" -type "float3" -43.080967 2.4886899 0 ;
	setAttr ".tk[44]" -type "float3" -6.8212103e-13 -55.358318 0 ;
	setAttr ".tk[45]" -type "float3" -6.8212103e-13 -55.358318 0 ;
	setAttr ".tk[46]" -type "float3" -45.878174 -59.46159 0 ;
	setAttr ".tk[47]" -type "float3" -45.878174 -59.46159 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	rename -uid "F42A5FDB-4231-2B5D-5300-7DB607EB5748";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" -0.041204849962696556 0 0 0 0 1 0 0 0 0 0.036623434868688048 0
		 193.81927250559551 -150 220 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 223.07091 -59.421448 220 ;
	setAttr ".rs" 44555;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 222.36955824800103 -64.562309265136719 214.50648476969678 ;
	setAttr ".cbx" -type "double3" 223.77225342851824 -54.280586242675781 225.49351523030322 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak38";
	rename -uid "7173F677-4154-9337-9865-7394CB18F00F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[48:51]" -type "float3"  -378.26837158 -4.5623064 0
		 -378.26837158 -4.5623064 0 -378.26837158 -4.5623064 0 -378.26837158 -4.5623064 0;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	rename -uid "B368CE4F-4A14-EC29-D483-04AA200D1DC5";
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" -0.041204849962696556 0 0 0 0 1 0 0 0 0 0.036623434868688048 0
		 193.81927250559551 -150 220 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 141.2193 -148.65491 220 ;
	setAttr ".rs" 44012;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 138.60885782537824 -148.85960388183594 214.50648476969678 ;
	setAttr ".cbx" -type "double3" 143.82973161880841 -148.45021295547485 225.49351523030322 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak39";
	rename -uid "5BADA5E2-4977-57A9-ABFD-8FB4DCFF8EF6";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[38]" -type "float3" 144.64232 -4.7120996 0 ;
	setAttr ".tk[39]" -type "float3" 144.64232 -4.7120996 0 ;
	setAttr ".tk[50]" -type "float3" -208.2962 0 0 ;
	setAttr ".tk[51]" -type "float3" -208.2962 0 0 ;
	setAttr ".tk[52]" -type "float3" -223.19066 -55.61451 0 ;
	setAttr ".tk[53]" -type "float3" -223.19066 -55.61451 0 ;
	setAttr ".tk[54]" -type "float3" -302.97348 -55.61451 0 ;
	setAttr ".tk[55]" -type "float3" -302.97348 -55.61451 0 ;
createNode polyPlane -n "polyPlane1";
	rename -uid "15A5040A-4439-245E-9839-FDB0043DDC28";
	setAttr ".w" 100;
	setAttr ".h" 200;
	setAttr ".cuv" 2;
createNode polySplit -n "polySplit32";
	rename -uid "2FC09874-436F-3ECC-F86F-08A5283B5B49";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySphere -n "polySphere2";
	rename -uid "4F510746-40C3-DABA-0100-24847EE62C0B";
	setAttr ".r" 20;
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode polySplit -n "polySplit33";
	rename -uid "62F4A228-4377-C314-D68D-979CAE9A5E8F";
	setAttr -s 5 ".e[0:4]"  0.89999998 0.89999998 0.1 0.1 0.89999998;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit34";
	rename -uid "76B9F984-4808-9BA3-DE10-2AB39A93C16B";
	setAttr -s 5 ".e[0:4]"  0.1 0.1 0.89999998 0.89999998 0.1;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483634 -2147483633 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	rename -uid "A29008A1-4B3A-1188-4BF8-AF8704BBC9D9";
	setAttr ".ics" -type "componentList" 1 "f[6:9]";
	setAttr ".ix" -type "matrix" 0.19594974236700113 0 0 0 0 1 0 0 0 0 0.38110419549449515 0
		 1320 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1320 40.119507 0 ;
	setAttr ".rs" 34021;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1315.101256440825 7.2944560050964355 -5.7165629324174274 ;
	setAttr ".cbx" -type "double3" 1324.898743559175 72.944557189941406 5.7165629324174274 ;
	setAttr ".raf" no;
createNode groupId -n "groupId2";
	rename -uid "55C55B15-4D2A-BD83-6EB2-2585E472FCC7";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 70;
	setAttr ".unw" 70;
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
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 47 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 9 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
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
connectAttr "locatorShape1.wp" "distanceDimensionShape1.sp";
connectAttr "locatorShape2.wp" "distanceDimensionShape1.ep";
connectAttr "groupId1.id" "MoonShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "MoonShape.iog.og[0].gco";
connectAttr "polyCollapseEdge2.out" "fxCornerShape.i";
connectAttr "groupId2.id" "TheTreeShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "TheTreeShape.iog.og[0].gco";
connectAttr "groupId3.id" "MushroomsShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "MushroomsShape.iog.og[0].gco";
connectAttr "groupId4.id" "Sign01Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Sign01Shape.iog.og[0].gco";
connectAttr "groupId5.id" "Sign02Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Sign02Shape.iog.og[0].gco";
connectAttr "groupId6.id" "Lantern01Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Lantern01Shape.iog.og[0].gco";
connectAttr "polyExtrudeFace3.out" "LanternShape2.i";
connectAttr "transformGeometry6.og" "LanternShape3.i";
connectAttr "polyBevel3.out" "UmbrellaShape.i";
connectAttr "polyCube2.out" "PathShape.i";
connectAttr "transformGeometry4.og" "DangleShape.i";
connectAttr "transformGeometry5.og" "PanelShape.i";
connectAttr "groupId7.id" "StreetSignShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "StreetSignShape.iog.og[0].gco";
connectAttr "polyExtrudeFace15.out" "BambooShape.i";
connectAttr "transformGeometry3.og" "BambooLightShape.i";
connectAttr "transformGeometry1.og" "WallShape.i";
connectAttr "polyMergeVert4.out" "HouseShape1.i";
connectAttr "polySplit23.out" "HouseShape2.i";
connectAttr "polySoftEdge2.out" "HouseShape3.i";
connectAttr "polyCube9.out" "FenceShape.i";
connectAttr "groupId8.id" "WallShroomsShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "WallShroomsShape.iog.og[0].gco";
connectAttr "transformGeometry2.og" "DecorativePlantsShape.i";
connectAttr "groupId9.id" "DecorativeFlowersShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "DecorativeFlowersShape.iog.og[0].gco";
connectAttr "polyCube10.out" "UniversalSmallRockShape.i";
connectAttr "polyExtrudeFace25.out" "RootShape.i";
connectAttr "polyPlane1.out" "DangleLeavesShape.i";
connectAttr "polySplit32.out" "CocoonShape.i";
connectAttr "polySphere2.out" "SkullShape.i";
connectAttr "polyExtrudeFace26.out" "BoneShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polySphere1.out" "polyExtrudeFace1.ip";
connectAttr "LanternShape2.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polySoftEdge1.ip";
connectAttr "LanternShape2.wm" "polySoftEdge1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polySoftEdge1.out" "polyExtrudeFace2.ip";
connectAttr "LanternShape2.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "LanternShape2.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyCube1.out" "polyBevel1.ip";
connectAttr "LanternShape3.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "LanternShape3.wm" "polyBevel2.mp";
connectAttr "polyCone1.out" "polyExtrudeFace4.ip";
connectAttr "UmbrellaShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace5.ip";
connectAttr "UmbrellaShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyBevel3.ip";
connectAttr "UmbrellaShape.wm" "polyBevel3.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak4.ip";
connectAttr "polyCube3.out" "polySplit1.ip";
connectAttr "lambert2.oc" "blinn1SG.ss";
connectAttr "Main_GEOShape.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "polyCube4.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polyBevel4.ip";
connectAttr "BambooShape.wm" "polyBevel4.mp";
connectAttr "polyBevel4.out" "polyBevel5.ip";
connectAttr "BambooShape.wm" "polyBevel5.mp";
connectAttr "polyBevel5.out" "polyBevel6.ip";
connectAttr "BambooShape.wm" "polyBevel6.mp";
connectAttr "polyBevel6.out" "polyBevel7.ip";
connectAttr "BambooShape.wm" "polyBevel7.mp";
connectAttr "polyBevel7.out" "polyBevel8.ip";
connectAttr "BambooShape.wm" "polyBevel8.mp";
connectAttr "polyBevel8.out" "polyExtrudeFace6.ip";
connectAttr "BambooShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace7.ip";
connectAttr "BambooShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace8.ip";
connectAttr "BambooShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace9.ip";
connectAttr "BambooShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace10.ip";
connectAttr "BambooShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak9.ip";
connectAttr "polyExtrudeFace10.out" "polyTweak10.ip";
connectAttr "polyTweak10.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polyExtrudeFace11.ip";
connectAttr "BambooShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyTweak11.out" "polyExtrudeFace12.ip";
connectAttr "BambooShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace13.ip";
connectAttr "BambooShape.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace14.ip";
connectAttr "BambooShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace15.ip";
connectAttr "BambooShape.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace16.ip";
connectAttr "BambooLightShape.wm" "polyExtrudeFace16.mp";
connectAttr "polyCylinder1.out" "polyTweak15.ip";
connectAttr "polyExtrudeFace16.out" "polyExtrudeFace17.ip";
connectAttr "BambooLightShape.wm" "polyExtrudeFace17.mp";
connectAttr "polyCube5.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polyTweak16.ip";
connectAttr "polyTweak16.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polyTweak17.ip";
connectAttr "polyTweak17.out" "polySplit15.ip";
connectAttr "polyCube6.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polyExtrudeFace18.ip";
connectAttr "HouseShape1.wm" "polyExtrudeFace18.mp";
connectAttr "polyTweak18.out" "polyMergeVert1.ip";
connectAttr "HouseShape1.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyMergeVert2.ip";
connectAttr "HouseShape1.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyMergeVert3.ip";
connectAttr "HouseShape1.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polyMergeVert4.ip";
connectAttr "HouseShape1.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak21.ip";
connectAttr "polyCube7.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polyExtrudeFace19.ip";
connectAttr "HouseShape3.wm" "polyExtrudeFace19.mp";
connectAttr "polyTweak22.out" "polyMergeVert5.ip";
connectAttr "HouseShape3.wm" "polyMergeVert5.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyMergeVert6.ip";
connectAttr "HouseShape3.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert5.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyMergeVert7.ip";
connectAttr "HouseShape3.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert6.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyMergeVert8.ip";
connectAttr "HouseShape3.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert7.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polySoftEdge2.ip";
connectAttr "HouseShape3.wm" "polySoftEdge2.mp";
connectAttr "polyMergeVert8.out" "polyTweak26.ip";
connectAttr "polyCube8.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polyTweak27.ip";
connectAttr "polyTweak27.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polyTweak28.ip";
connectAttr "polyTweak28.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polySplit23.ip";
connectAttr "polySurfaceShape1.o" "polyCollapseEdge1.ip";
connectAttr "polyCollapseEdge1.out" "polyCollapseEdge2.ip";
connectAttr "polySurfaceShape2.o" "polySplit24.ip";
connectAttr "polySplit15.out" "polyTweak29.ip";
connectAttr "polyTweak29.out" "transformGeometry1.ig";
connectAttr "polySplit24.out" "polyTweak30.ip";
connectAttr "polyTweak30.out" "transformGeometry2.ig";
connectAttr "polyExtrudeFace17.out" "polyTweak31.ip";
connectAttr "polyTweak31.out" "transformGeometry3.ig";
connectAttr "polyPrimitiveMisc1.out" "transformGeometry4.ig";
connectAttr "polySplit1.out" "polyTweak32.ip";
connectAttr "polyTweak32.out" "transformGeometry5.ig";
connectAttr "polyBevel2.out" "transformGeometry6.ig";
connectAttr "polySurfaceShape3.o" "polySplit25.ip";
connectAttr "polySplit25.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polySplit27.ip";
connectAttr "polySplit27.out" "polyTweak33.ip";
connectAttr "polyTweak33.out" "polySplit28.ip";
connectAttr "polySplit28.out" "polyTweak34.ip";
connectAttr "polyTweak34.out" "polySplit29.ip";
connectAttr "polySplit29.out" "polySplit30.ip";
connectAttr "polySplit30.out" "polySplit31.ip";
connectAttr "polySplit31.out" "polyExtrudeFace20.ip";
connectAttr "RootShape.wm" "polyExtrudeFace20.mp";
connectAttr "polyTweak35.out" "polyExtrudeFace21.ip";
connectAttr "RootShape.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak35.ip";
connectAttr "polyTweak36.out" "polyExtrudeFace22.ip";
connectAttr "RootShape.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polyExtrudeFace23.ip";
connectAttr "RootShape.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak37.ip";
connectAttr "polyTweak38.out" "polyExtrudeFace24.ip";
connectAttr "RootShape.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak38.ip";
connectAttr "polyTweak39.out" "polyExtrudeFace25.ip";
connectAttr "RootShape.wm" "polyExtrudeFace25.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak39.ip";
connectAttr "polySurfaceShape4.o" "polySplit32.ip";
connectAttr "polySurfaceShape5.o" "polySplit33.ip";
connectAttr "polySplit33.out" "polySplit34.ip";
connectAttr "polySplit34.out" "polyExtrudeFace26.ip";
connectAttr "BoneShape.wm" "polyExtrudeFace26.mp";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "TreeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MoonShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LandformShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "StairsShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "fxShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "fxShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "fxShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pxShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pxShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pxShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "PlantShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "FolliageShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TheTreeShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "MushroomsShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Sign01Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Sign02Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "StoneLampShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Ornemental_GrassShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Lantern01Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "LanternShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LanternShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "UmbrellaShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "PathShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DangleShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "PanelShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "StreetSignShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "BambooShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BambooLightShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HouseShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HouseShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "HouseShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "FenceShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "GuardrailShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "fxCornerShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallShroomsShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "WalkwayShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DecorativePlantsShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DecorativeFlowersShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "UniversalSmallRockShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "UniversalBigRockShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RootShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "DangleLeavesShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CocoonShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SkullShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "RibcageShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BoneShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
// End of NotTooDeep_MOD_MASTER.ma
