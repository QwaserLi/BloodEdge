//Maya ASCII 2018 scene
//Name: 25 8 13x14 crashed.ma
//Last modified: Tue, Jun 11, 2019 03:48:25 PM
//Codeset: 1252
requires maya "2018";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 "mtoa" "2.0.1";
requires "stereoCamera" "10.0";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "72F48D16-4BDC-7A5F-5759-25A3834B4459";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -31.680503354445747 17.628156727948483 -14.114461983868097 ;
	setAttr ".r" -type "double3" 2.0616480752778279 -12349.399999964438 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "496D3DA1-40C7-B89A-18A4-039C1385E847";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 30.340830380000302;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 681.6026611328125 430 -663.42889404296875 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "C359C1D0-4B34-C7D1-B6E2-3CA09EFA7B2C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 10.001000000000001 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "AE9B9A2C-45B4-994F-5771-5494C528939C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "E7274279-4966-29D4-4DD1-3FAA86E569E4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 10.001000000000001 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "49A748E9-4AD1-32E3-B129-5BB01FC6D431";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "E83A7D61-454F-D1EC-920A-DBB3970BA825";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.001000000000001 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C11279FB-410D-05CA-ED85-1DAB928477F8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "gloor";
	rename -uid "AE65E4EE-4C16-D81F-BCCE-D292C56CA92A";
	setAttr ".t" -type "double3" 0 0.05 0 ;
	setAttr ".s" -type "double3" 14 0.1 13 ;
createNode mesh -n "gloorShape" -p "gloor";
	rename -uid "CF477996-4A29-EF7C-7670-42BB7758CC35";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3";
	rename -uid "37DB80D0-4DF2-F0B5-4BBA-6588FCA11D9D";
	setAttr ".rp" -type "double3" 7.211292245626189 25.31098427641896 0 ;
	setAttr ".sp" -type "double3" 7.211292245626189 25.31098427641896 0 ;
createNode mesh -n "pCube3Shape" -p "pCube3";
	rename -uid "7ACB1AB0-4B23-E2D2-1511-029933236461";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  6.9911871 24.81098366 6.5999999 7.2692256 24.81098366 6.5999999
		 6.9911871 25.81098366 6.5999999 7.2692256 25.81098366 6.5999999 6.9911871 25.81098366 -6.5999999
		 7.2692256 25.81098366 -6.5999999 6.9911871 24.81098366 -6.5999999 7.2692256 24.81098366 -6.5999999
		 7.2586031 25.289505 6.5999999 7.43139696 25.55257607 6.5999999 7.2586031 25.81049538 6.5999999
		 7.43139696 25.81049538 6.5999999 7.2586031 25.81049538 -6.5999999 7.43139696 25.81049538 -6.5999999
		 7.2586031 25.289505 -6.5999999 7.43139696 25.55257607 -6.5999999;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
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
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6";
	rename -uid "00F2F9E2-4D1E-4F34-3BB0-3690C26DEF02";
	setAttr ".t" -type "double3" -7.213000000000001 0 6.7978570980052497 ;
	setAttr ".r" -type "double3" 0 270 0 ;
	setAttr ".s" -type "double3" 1 1 1.1358729967400374 ;
	setAttr ".rp" -type "double3" 7.211292245626189 25.31098427641896 0 ;
	setAttr ".sp" -type "double3" 7.211292245626189 25.31098427641896 0 ;
createNode mesh -n "pCube6Shape" -p "pCube6";
	rename -uid "B4F9E5A1-4FAD-18D5-D42A-D6A1DEE4C746";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:27]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.36607459
		 0.25 0.375 0.25892544 0.625 0.25892544 0.63392544 0.25 0.625 0.9910745 0.63392556
		 0 0.3660745 0 0.375 0.9910745 0.36611295 0.25 0.375 0.25888705 0.625 0.25888705 0.63388705
		 0.25 0.625 0.99111301 0.63388693 0 0.36611301 0 0.375 0.99111301 0.13315184 0 0.375
		 0.75815183 0.625 0.75815183 0.86684811 0 0.625 0.49184805 0.86684805 0.25 0.13315195
		 0.25 0.375 0.49184805 0.13315602 0 0.375 0.758156 0.62500006 0.758156 0.866844 0
		 0.625 0.49184412 0.86684412 0.25 0.13315588 0.25 0.375 0.49184412;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[4]" -type "float3" -0.25835419 0 0.18864399 ;
	setAttr ".pt[5]" -type "float3" -0.25835419 0 0.18864399 ;
	setAttr ".pt[6]" -type "float3" -0.25835419 0 0.18864399 ;
	setAttr ".pt[7]" -type "float3" -0.25835419 0 0.18864399 ;
	setAttr ".pt[12]" -type "float3" -0.41487464 0 0.056853425 ;
	setAttr ".pt[13]" -type "float3" -0.41487464 0 0.056853425 ;
	setAttr ".pt[14]" -type "float3" -0.24455811 0.012868637 0.20256811 ;
	setAttr ".pt[15]" -type "float3" -0.41553879 -0.0037498844 0.056083661 ;
	setAttr -s 32 ".vt[0:31]"  6.72575092 24.81098366 6.3897624 7.0037889481 24.81098366 6.3897624
		 6.72575092 25.81098366 6.43955278 7.0037889481 25.81098366 6.43955278 6.9911871 25.81098366 -6.5999999
		 7.2692256 25.81098366 -6.5999999 6.9911871 24.81098366 -6.5999999 7.2692256 24.81098366 -6.5999999
		 7.0063319206 25.24423599 6.36435652 7.016382217 25.55257607 6.5420332 6.86291075 25.81049538 6.5420332
		 7.012683868 25.81049538 6.5420332 7.2586031 25.81049538 -6.5999999 7.43139696 25.81049538 -6.5999999
		 7.2586031 25.289505 -6.5999999 7.43139696 25.55257607 -6.5999999 6.9911871 25.81098366 6.12873793
		 7.2692256 25.81098366 6.12873793 7.2692256 24.81098366 6.12873411 6.9911871 24.81098366 6.12873411
		 7.2586031 25.81049538 6.13076401 7.43139696 25.81049538 6.13076401 7.43139696 25.55257607 6.13076639
		 7.2586031 25.289505 6.13076639 6.9911871 24.81098366 -6.16958332 7.26922464 24.81098366 -6.16958332
		 7.2692256 25.81098175 -6.16957712 6.9911871 25.81098175 -6.16957712 7.2586031 25.28950691 -6.16936302
		 7.43139696 25.55257607 -6.16936302 7.43139696 25.81049538 -6.1693697 7.2586031 25.81049538 -6.1693697;
	setAttr -s 56 ".ed[0:55]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 16 0
		 3 17 0 4 6 0 5 7 0 6 24 0 7 25 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 20 0
		 11 21 0 12 14 0 13 15 0 14 28 0 15 29 0 16 27 0 17 26 0 18 1 0 19 0 0 16 17 1 17 18 1
		 18 19 1 19 16 1 20 31 0 21 30 0 22 9 0 23 8 0 20 21 1 21 22 1 22 23 1 23 20 1 24 19 0
		 25 18 0 26 5 0 27 4 0 24 25 1 25 26 1 26 27 1 27 24 1 28 23 0 29 22 0 30 13 0 31 12 0
		 28 29 1 29 30 1 30 31 1 31 28 1;
	setAttr -s 28 -ch 112 ".fc[0:27]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 28 25 46 -25
		mu 0 4 29 30 48 51
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 44 41 30 -41
		mu 0 4 45 46 32 35
		f 4 29 -42 45 -26
		mu 0 4 31 33 47 49
		f 4 47 40 31 24
		mu 0 4 50 44 34 28
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 36 33 54 -33
		mu 0 4 37 38 56 59
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 52 49 38 -49
		mu 0 4 53 54 40 43
		f 4 37 -50 53 -34
		mu 0 4 39 41 55 57
		f 4 55 48 39 32
		mu 0 4 58 52 42 36
		f 4 1 7 -29 -7
		mu 0 4 2 3 30 29
		f 4 -27 -30 -8 -6
		mu 0 4 1 33 31 3
		f 4 -31 26 -1 -28
		mu 0 4 35 32 9 8
		f 4 -32 27 4 6
		mu 0 4 28 34 0 2
		f 4 13 19 -37 -19
		mu 0 4 17 16 38 37
		f 4 -35 -38 -20 -18
		mu 0 4 15 41 39 16
		f 4 -39 34 -13 -36
		mu 0 4 43 40 22 23
		f 4 -40 35 16 18
		mu 0 4 36 42 14 17
		f 4 3 11 -45 -11
		mu 0 4 6 7 46 45
		f 4 -46 -12 -10 -43
		mu 0 4 49 47 10 11
		f 4 -47 42 -3 -44
		mu 0 4 51 48 5 4
		f 4 10 -48 43 8
		mu 0 4 12 44 50 13
		f 4 15 23 -53 -23
		mu 0 4 21 20 54 53
		f 4 -54 -24 -22 -51
		mu 0 4 57 55 24 25
		f 4 -55 50 -15 -52
		mu 0 4 59 56 18 19
		f 4 22 -56 51 20
		mu 0 4 26 52 58 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "pCube6";
	rename -uid "402B33D0-4551-D4B5-5953-088743B268FE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  6.9911871 24.81098366 6.5999999 7.2692256 24.81098366 6.5999999
		 6.9911871 25.81098366 6.5999999 7.2692256 25.81098366 6.5999999 6.9911871 25.81098366 -6.5999999
		 7.2692256 25.81098366 -6.5999999 6.9911871 24.81098366 -6.5999999 7.2692256 24.81098366 -6.5999999
		 7.2586031 25.289505 6.5999999 7.43139696 25.55257607 6.5999999 7.2586031 25.81049538 6.5999999
		 7.43139696 25.81049538 6.5999999 7.2586031 25.81049538 -6.5999999 7.43139696 25.81049538 -6.5999999
		 7.2586031 25.289505 -6.5999999 7.43139696 25.55257607 -6.5999999;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
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
		mu 0 4 12 0 2 13
		f 4 12 17 -14 -17
		mu 0 4 14 15 16 17
		f 4 13 19 -15 -19
		mu 0 4 17 16 18 19
		f 4 14 21 -16 -21
		mu 0 4 19 18 20 21
		f 4 15 23 -13 -23
		mu 0 4 21 20 22 23
		f 4 -24 -22 -20 -18
		mu 0 4 15 24 25 16
		f 4 22 16 18 20
		mu 0 4 26 14 17 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube7";
	rename -uid "6892E475-4439-0B00-143A-9AAB0040A67E";
	setAttr ".t" -type "double3" 7.059945128991699 12.331669828430229 6.6236189450921108 ;
	setAttr ".s" -type "double3" 0.4 24.670682580071873 0.4 ;
createNode mesh -n "pCubeShape1" -p "pCube7";
	rename -uid "A67C8F96-4B50-D5A8-9513-959C2925DA17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[1:5]" -type "float3"  -0.24059235 0 -0.43178445 
		0 0.0054197381 0 -0.24059235 0.0054197381 -0.43178445 0 0.0054197381 0 0 0.0054197381 
		0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube8";
	rename -uid "0FBF7810-4827-AD5A-662D-349E8CD056B6";
	setAttr ".t" -type "double3" 7.059945128991699 12.331669828430229 -6.624 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 0.4 24.670682580071873 0.4 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "415196B9-4B50-6016-48E8-4683C8EFB49A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[1:5]" -type "float3"  -0.24059235 0 -0.43178445 
		0 0.0054197381 0 -0.24059235 0.0054197381 -0.43178445 0 0.0054197381 0 0 0.0054197381 
		0;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube10";
	rename -uid "09CC86DD-40A3-715B-E95C-2B83ED4FE43D";
	setAttr ".t" -type "double3" -7.0600000000000005 12.331669828430229 6.6236189450921108 ;
	setAttr ".r" -type "double3" 0 270 0 ;
	setAttr ".s" -type "double3" 0.4 24.670682580071873 0.4 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "A84C16D6-4B53-2F3E-D799-DB96AADEDDCA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[1:5]" -type "float3"  -0.24059235 0 -0.43178445 
		0 0.0054197381 0 -0.24059235 0.0054197381 -0.43178445 0 0.0054197381 0 0 0.0054197381 
		0;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "across6";
	rename -uid "3E28EDBF-4381-9489-72B8-84BC24C85A72";
	setAttr ".rp" -type "double3" 7.0530126953124999 12.403279418945313 0 ;
	setAttr ".sp" -type "double3" 7.0530126953124999 12.403279418945313 0 ;
createNode transform -n "polySurface7" -p "across6";
	rename -uid "FD6CD2DD-4301-E40B-7256-14A626040D7E";
createNode mesh -n "polySurfaceShape7" -p "polySurface7";
	rename -uid "19EB0FCD-47C4-EAFA-0D51-17A413CCE70A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  6.9353013 21.29999924 2.070526838 7.13530159 21.29999924 2.070526838
		 6.9353013 21.70000076 2.070526838 7.13530159 21.70000076 2.070526838 6.9353013 21.70000076 -2.070526838
		 7.13530159 21.70000076 -2.070526838 6.9353013 21.29999924 -2.070526838 7.13530159 21.29999924 -2.070526838;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface8" -p "across6";
	rename -uid "F396655D-4B56-433A-E90A-89800ACD75FE";
createNode mesh -n "polySurfaceShape8" -p "polySurface8";
	rename -uid "3D0B268C-4347-17F8-6E48-F385318BD08F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  6.9353013 17 2.070526838 7.13530159 17 2.070526838
		 6.9353013 17.39999962 2.070526838 7.13530159 17.39999962 2.070526838 6.9353013 17.39999962 -2.070526838
		 7.13530159 17.39999962 -2.070526838 6.9353013 17 -2.070526838 7.13530159 17 -2.070526838;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface9" -p "across6";
	rename -uid "250BC39F-48E3-077D-FA00-5FA10AF9E16A";
createNode mesh -n "polySurfaceShape9" -p "polySurface9";
	rename -uid "477A3C34-4250-32DC-32E8-458ECBD0609D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  6.9353013 12.69999981 2.070526838 7.13530159 12.69999981 2.070526838
		 6.9353013 13.10000038 2.070526838 7.13530159 13.10000038 2.070526838 6.9353013 13.10000038 -2.070526838
		 7.13530159 13.10000038 -2.070526838 6.9353013 12.69999981 -2.070526838 7.13530159 12.69999981 -2.070526838;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface10" -p "across6";
	rename -uid "4A3AE830-4D9B-0592-A06B-3BA292B4F38B";
createNode mesh -n "polySurfaceShape10" -p "polySurface10";
	rename -uid "FB4C2C0E-4E1D-78B0-5D10-6DB8D361600F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  6.9353013 8.39999962 2.070526838 7.13530159 8.39999962 2.070526838
		 6.9353013 8.80000019 2.070526838 7.13530159 8.80000019 2.070526838 6.9353013 8.80000019 -2.070526838
		 7.13530159 8.80000019 -2.070526838 6.9353013 8.39999962 -2.070526838 7.13530159 8.39999962 -2.070526838;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface11" -p "across6";
	rename -uid "A602A444-4605-A1CC-FD77-BB8B7598D28E";
createNode mesh -n "polySurfaceShape11" -p "polySurface11";
	rename -uid "15504DE4-42CA-698D-50ED-1D959C436E5D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  6.9353013 4.050000191 6.46176004 7.13530159 4.050000191 6.46176004
		 6.9353013 4.55000019 6.46176004 7.13530159 4.55000019 6.46176004 6.9353013 4.55000019 -6.46176004
		 7.13530159 4.55000019 -6.46176004 6.9353013 4.050000191 -6.46176004 7.13530159 4.050000191 -6.46176004;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface12" -p "across6";
	rename -uid "3277F84D-4CFD-3B83-9D77-4A9F906D5C6A";
createNode mesh -n "polySurfaceShape12" -p "polySurface12";
	rename -uid "D5C53DBC-4C53-A0C2-6845-88BFB8833AE9";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  6.85301256 -0.0034997559 5.72150326 7.25301266 -0.0034997559 5.72150326
		 6.85301256 24.81005859 5.72150326 7.25301266 24.81005859 5.72150326 6.85301256 24.81005859 5.32150316
		 7.25301266 24.81005859 5.32150316 6.85301256 -0.0034997559 5.32150316 7.25301266 -0.0034997559 5.32150316;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface13" -p "across6";
	rename -uid "5E531362-4493-913E-3ECF-FBA9FEC32E12";
createNode mesh -n "polySurfaceShape13" -p "polySurface13";
	rename -uid "43CD41E2-4BF5-B035-1292-13ACD395563F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  6.85301256 -0.0034997559 4.09499979 7.25301266 -0.0034997559 4.09499979
		 6.85301256 24.81005859 4.09499979 7.25301266 24.81005859 4.09499979 6.85301256 24.81005859 3.69499993
		 7.25301266 24.81005859 3.69499993 6.85301256 -0.0034997559 3.69499993 7.25301266 -0.0034997559 3.69499993;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface14" -p "across6";
	rename -uid "6558B694-43DB-B60D-5B54-0AB78184366B";
createNode mesh -n "polySurfaceShape14" -p "polySurface14";
	rename -uid "98631958-4DEE-28B1-9822-A483CFD28A98";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  6.85301256 -0.0034997559 2.52600002 7.25301266 -0.0034997559 2.52600002
		 6.85301256 24.81005859 2.52600002 7.25301266 24.81005859 2.52600002 6.85301256 24.81005859 1.52600002
		 7.25301266 24.81005859 1.52600002 6.85301256 -0.0034997559 1.52600002 7.25301266 -0.0034997559 1.52600002;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface15" -p "across6";
	rename -uid "18E90AF5-4B8E-C3A4-21E6-B98F1B6B8756";
createNode mesh -n "polySurfaceShape15" -p "polySurface15";
	rename -uid "03DB66A9-4AB1-56C1-F67F-419953653C4F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  6.85301256 -0.0034997559 -1.52646685 7.25301266 -0.0034997559 -1.52646685
		 6.85301256 24.81005859 -1.52646685 7.25301266 24.81005859 -1.52646685 6.85301256 24.81005859 -2.52646685
		 7.25301266 24.81005859 -2.52646685 6.85301256 -0.0034997559 -2.52646685 7.25301266 -0.0034997559 -2.52646685;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface16" -p "across6";
	rename -uid "C859353C-4DFB-1FFD-78BE-39B13F6ACD1B";
createNode mesh -n "polySurfaceShape16" -p "polySurface16";
	rename -uid "87F0EDA4-431E-73CE-6F2C-A9817D6259B9";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  6.85301256 -0.0034997559 -3.69514561 7.25301266 -0.0034997559 -3.69514561
		 6.85301256 24.81005859 -3.69514561 7.25301266 24.81005859 -3.69514561 6.85301256 24.81005859 -4.095145702
		 7.25301266 24.81005859 -4.095145702 6.85301256 -0.0034997559 -4.095145702 7.25301266 -0.0034997559 -4.095145702;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface17" -p "across6";
	rename -uid "FF610CCA-4A7D-99A6-FEE0-91B9C6BA455C";
createNode mesh -n "polySurfaceShape17" -p "polySurface17";
	rename -uid "37FFD6B6-4E63-6D25-5C54-2A917D1C789B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 6 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  6.85301256 -0.0034997559 -5.32200003 7.25301266 -0.0034997559 -5.32200003
		 6.85301256 24.81005859 -5.32200003 7.25301266 24.81005859 -5.32200003 6.85301256 24.81005859 -5.72200012
		 7.25301266 24.81005859 -5.72200012 6.85301256 -0.0034997559 -5.72200012 7.25301266 -0.0034997559 -5.72200012;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 1 7 -3 -7
		mu 0 4 3 2 4 5
		f 4 2 9 -4 -9
		mu 0 4 5 4 6 7
		f 4 3 11 -1 -11
		mu 0 4 7 6 8 9
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 2
		f 4 10 4 6 8
		mu 0 4 12 0 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "wall5";
	rename -uid "A1987B15-42E5-C461-32FB-52B4714A08FB";
	setAttr ".rp" -type "double3" 6.9492309570312498 12.9 0 ;
	setAttr ".sp" -type "double3" 6.9492309570312498 12.9 0 ;
createNode mesh -n "wall5Shape" -p "wall5";
	rename -uid "09EECE7D-433C-6CB5-3AB7-82AE26527906";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 194 ".uvst[0].uvsp[0:193]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.54080248 0.5 0.54080248 0.75 0.56580245 0.75 0.56580245 0.5
		 0.54080248 1 0.56580245 1 0.54080248 0.25 0.56580245 0.25 0.54080248 0 0.56580245
		 0 0.54080248 0.5 0.54080248 0.75 0.56580245 0.75 0.56580245 0.5 0.54080248 1 0.56580245
		 1 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.54080248 0.25 0.56580245 0.25 0.54080248
		 0 0.56580245 0 0.54080248 0.5 0.54080248 0.75 0.56580245 0.75 0.56580245 0.5 0.54080248
		 0.5 0.54080248 0.75 0.56580245 0.75 0.56580245 0.5 0.54080248 1 0.56580245 1 0.54080248
		 1 0.56580245 1 0.54080248 0.25 0.56580245 0.25 0.54080248 0.25 0.56580245 0.25 0.54080248
		 0 0.56580245 0 0.54080248 0 0.56580245 0 0.54080248 0.5 0.54080248 0.75 0.56580245
		 0.75 0.56580245 0.5 0.54080248 0.5 0.54080248 0.75 0.56580245 0.75 0.56580245 0.5
		 0.54080248 1 0.56580245 1 0.54080248 1 0.56580245 1 0.54080248 0.25 0.56580245 0.25
		 0.54080248 0.25 0.56580245 0.25 0.54080248 0 0.56580245 0 0.54080248 0 0.56580245
		 0 0.54080248 0.5 0.54080248 0.75 0.56580245 0.75 0.56580245 0.5 0.54080248 0.5 0.54080248
		 0.75 0.56580245 0.75 0.56580245 0.5 0.54080248 1 0.56580245 1 0.54080248 1 0.56580245
		 1 0.54080248 0.25 0.56580245 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.54080248
		 0.25 0.56580245 0.25 0.54080248 0 0.56580245 0 0.54080248 0 0.56580245 0 0.54080248
		 0.5 0.54080248 0.75 0.56580245 0.75 0.56580245 0.5 0.54080248 1 0.56580245 1 0.54080248
		 0.25 0.56580245 0.25 0.54080248 0 0.56580245 0 0.54080248 0.5 0.54080248 0.75 0.56580245
		 0.75 0.56580245 0.5 0.625 0.5 0.375 0.5 0.54080248 1 0.56580245 1 0.54080248 0.25
		 0.56580245 0.25 0.54080248 0 0.56580245 0 0.45121598 0.22965115 0.54884225 0.1879845
		 0.60265177 0.1879845 0.60265177 0.21996124 0.54884225 0.21996124 0.54884225 0.22965117
		 0.60265183 0.22965115 0.60265177 0.17829457 0.60265183 0.14631782 0.60265183 0.13662791
		 0.60265183 0.10465117 0.60265183 0.094961241 0.60265183 0.062984496 0.60265183 0.053294573
		 0.60265183 0.6967054 0.60265183 0.68701547 0.60265183 0.65503877 0.60265183 0.64534885
		 0.60265183 0.61337209 0.60265183 0.60368216 0.60265177 0.5717054 0.60265183 0.56201553
		 0.60265177 0.53003877 0.60265189 0.52034879 0.54884225 0.52034885 0.54884225 0.53003877
		 0.45121598 0.21996123 0.45121598 0.1879845 0.45121598 0.17829457 0.45121598 0.14631782
		 0.45121598 0.13662791 0.45121598 0.10465116 0.45121601 0.094961241 0.45121598 0.062984496
		 0.45121598 0.053294573 0.54884225 0.053294573 0.54884225 0.062984496 0.54884231 0.094961241
		 0.54884225 0.10465116 0.54884225 0.13662791 0.54884225 0.14631782 0.54884225 0.17829457
		 0.39740643 0.52034885 0.3974064 0.53003877 0.45121601 0.53003871 0.45121598 0.56201553
		 0.39740646 0.56201553 0.39740643 0.57170546 0.45121598 0.5717054 0.45121598 0.60368216
		 0.3974064 0.60368216 0.39740643 0.61337209 0.45121598 0.61337209 0.45121598 0.64534879
		 0.3974064 0.64534879 0.39740643 0.65503877 0.45121598 0.65503877 0.45121598 0.68701553
		 0.39740643 0.68701553 0.39740643 0.69670546 0.45121598 0.69670546 0.54884225 0.6967054
		 0.3974064 0.053294573 0.39740646 0.062984496 0.39740643 0.094961241 0.39740643 0.10465116
		 0.39740643 0.13662791 0.39740643 0.14631782 0.39740643 0.17829457 0.39740646 0.1879845
		 0.39740643 0.21996124 0.39740643 0.22965117 0.54884225 0.56201547 0.54884219 0.57170546
		 0.54884225 0.60368216 0.54884225 0.61337209 0.54884225 0.64534885 0.54884225 0.65503871
		 0.54884225 0.68701553 0.45121598 0.52034879;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 88 ".vt[0:87]"  6.89923096 0 6.4749999 6.89923096 0 -6.4749999
		 6.99923086 0 -6.4749999 6.99923086 0 6.4749999 6.89923096 6.5 -5.31736469 6.89923096 5.5 -5.31736469
		 6.99923086 5.5 -5.31736469 6.99923086 6.5 -5.31736469 6.89923096 5.5 -2.53002906
		 6.99923086 5.5 -2.53002906 6.89923096 6.5 -2.53002906 6.99923086 6.5 -2.53002906
		 6.89923096 10.80000019 -5.31736469 6.89923096 9.80000019 -5.31736469 6.99923086 9.80000019 -5.31736469
		 6.99923086 10.80000019 -5.31736469 6.89923096 9.80000019 -2.53002906 6.99923086 9.80000019 -2.53002906
		 6.89923096 25.79999924 -6.4749999 6.99923086 25.79999924 -6.4749999 6.89923096 10.80000019 -2.53002906
		 6.99923086 10.80000019 -2.53002906 6.89923096 6.5 2.52701211 6.89923096 5.5 2.52701211
		 6.99923086 5.5 2.52701211 6.99923086 6.5 2.52701211 6.89923096 15.10000038 -5.31736469
		 6.89923096 14.10000038 -5.31736469 6.99923086 14.10000038 -5.31736469 6.99923086 15.10000038 -5.31736469
		 6.89923096 5.5 5.31434679 6.99923086 5.5 5.31434679 6.89923096 14.10000038 -2.53002906
		 6.99923086 14.10000038 -2.53002906 6.89923096 6.5 5.31434679 6.99923086 6.5 5.31434679
		 6.89923096 15.10000038 -2.53002906 6.99923086 15.10000038 -2.53002906 6.89923096 10.80000019 2.52701211
		 6.89923096 9.80000019 2.52701211 6.99923086 9.80000019 2.52701211 6.99923086 10.80000019 2.52701211
		 6.89923096 19.39999962 -5.31736469 6.89923096 18.39999962 -5.31736469 6.99923086 18.39999962 -5.31736469
		 6.99923086 19.39999962 -5.31736469 6.89923096 9.80000019 5.31434679 6.99923086 9.80000019 5.31434679
		 6.89923096 18.39999962 -2.53002906 6.99923086 18.39999962 -2.53002906 6.89923096 10.80000019 5.31434679
		 6.99923086 10.80000019 5.31434679 6.89923096 19.39999962 -2.53002906 6.99923086 19.39999962 -2.53002906
		 6.89923096 15.10000038 2.52701211 6.89923096 14.10000038 2.52701211 6.99923086 14.10000038 2.52701211
		 6.99923086 15.10000038 2.52701211 6.89923096 23.70000076 -5.31736469 6.89923096 22.70000076 -5.31736469
		 6.99923086 22.70000076 -5.31736469 6.99923086 23.70000076 -5.31736469 6.89923096 14.10000038 5.31434679
		 6.99923086 14.10000038 5.31434679 6.89923096 22.70000076 -2.53002906 6.99923086 22.70000076 -2.53002906
		 6.89923096 15.10000038 5.31434679 6.99923086 15.10000038 5.31434679 6.99923086 25.79999924 6.4749999
		 6.89923096 25.79999924 6.4749999 6.89923096 23.70000076 -2.53002906 6.99923086 23.70000076 -2.53002906
		 6.89923096 19.39999962 2.52701211 6.89923096 18.39999962 2.52701211 6.99923086 18.39999962 2.52701211
		 6.99923086 19.39999962 2.52701211 6.89923096 18.39999962 5.31434679 6.99923086 18.39999962 5.31434679
		 6.89923096 19.39999962 5.31434679 6.99923086 19.39999962 5.31434679 6.89923096 23.70000076 2.52701211
		 6.89923096 22.70000076 2.52701211 6.99923086 22.70000076 2.52701211 6.99923086 23.70000076 2.52701211
		 6.89923096 22.70000076 5.31434679 6.99923086 22.70000076 5.31434679 6.89923096 23.70000076 5.31434679
		 6.99923086 23.70000076 5.31434679;
	setAttr -s 157 ".ed[0:156]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 5 8 0 8 9 0 9 6 0 10 4 0 7 11 0 11 10 0 8 10 0 11 9 0 12 13 0 13 14 0 14 15 0
		 15 12 0 13 16 0 16 17 0 17 14 0 1 18 0 18 19 0 19 2 0 20 12 0 15 21 0 21 20 0 16 20 0
		 21 17 0 22 23 0 23 24 0 24 25 0 25 22 0 26 27 0 27 28 0 28 29 0 29 26 0 23 30 0 30 31 0
		 31 24 0 27 32 0 32 33 0 33 28 0 34 22 0 25 35 0 35 34 0 36 26 0 29 37 0 37 36 0 30 34 0
		 35 31 0 32 36 0 37 33 0 38 39 0 39 40 0 40 41 0 41 38 0 42 43 0 43 44 0 44 45 0 45 42 0
		 39 46 0 46 47 0 47 40 0 43 48 0 48 49 0 49 44 0 50 38 0 41 51 0 51 50 0 52 42 0 45 53 0
		 53 52 0 46 50 0 51 47 0 48 52 0 53 49 0 54 55 0 55 56 0 56 57 0 57 54 0 58 59 0 59 60 0
		 60 61 0 61 58 0 55 62 0 62 63 0 63 56 0 59 64 0 64 65 0 65 60 0 66 54 0 57 67 0 67 66 0
		 3 68 0 68 69 0 69 0 0 70 58 0 61 71 0 71 70 0 62 66 0 67 63 0 64 70 0 71 65 0 72 73 0
		 73 74 0 74 75 0 75 72 0 73 76 0 76 77 0 77 74 0 78 72 0 75 79 0 79 78 0 76 78 0 79 77 0
		 80 81 0 81 82 0 82 83 0 83 80 0 68 19 0 18 69 0 81 84 0 84 85 0 85 82 0 86 80 0 83 87 0
		 87 86 0 84 86 0 87 85 0 83 53 1 45 60 1 71 68 1 68 83 1 44 29 1 28 15 1 14 7 1 6 2 1
		 1 5 1 4 13 1 12 27 1 26 43 1 42 59 1 64 69 1 82 75 1 74 57 1 56 41 1 40 25 1 24 9 1
		 69 86 1 81 72 1 73 54 1 55 38 1 39 22 1 23 8 1;
	setAttr -s 51 -ch 314 ".fc[0:50]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 -6
		mu 0 4 5 8 9 6
		f 4 11 -8 12 13
		mu 0 4 10 4 7 11
		f 4 14 -14 15 -10
		mu 0 4 12 10 11 13
		f 4 16 17 18 19
		mu 0 4 14 15 16 17
		f 4 20 21 22 -18
		mu 0 4 15 18 19 16
		f 4 -2 23 24 25
		mu 0 4 20 21 22 23
		f 4 26 -20 27 28
		mu 0 4 24 14 17 25
		f 4 29 -29 30 -22
		mu 0 4 26 24 25 27
		f 4 31 32 33 34
		mu 0 4 28 29 30 31
		f 4 35 36 37 38
		mu 0 4 32 33 34 35
		f 4 39 40 41 -33
		mu 0 4 29 36 37 30
		f 4 42 43 44 -37
		mu 0 4 33 38 39 34
		f 4 45 -35 46 47
		mu 0 4 40 28 31 41
		f 4 48 -39 49 50
		mu 0 4 42 32 35 43
		f 4 51 -48 52 -41
		mu 0 4 44 40 41 45
		f 4 53 -51 54 -44
		mu 0 4 46 42 43 47
		f 4 55 56 57 58
		mu 0 4 48 49 50 51
		f 4 59 60 61 62
		mu 0 4 52 53 54 55
		f 4 63 64 65 -57
		mu 0 4 49 56 57 50
		f 4 66 67 68 -61
		mu 0 4 53 58 59 54
		f 4 69 -59 70 71
		mu 0 4 60 48 51 61
		f 4 72 -63 73 74
		mu 0 4 62 52 55 63
		f 4 75 -72 76 -65
		mu 0 4 64 60 61 65
		f 4 77 -75 78 -68
		mu 0 4 66 62 63 67
		f 4 79 80 81 82
		mu 0 4 68 69 70 71
		f 4 83 84 85 86
		mu 0 4 72 73 74 75
		f 4 87 88 89 -81
		mu 0 4 69 76 77 70
		f 4 90 91 92 -85
		mu 0 4 73 78 79 74
		f 4 93 -83 94 95
		mu 0 4 80 68 71 81
		f 4 -4 96 97 98
		mu 0 4 82 83 84 85
		f 4 99 -87 100 101
		mu 0 4 86 72 75 87
		f 4 102 -96 103 -89
		mu 0 4 88 80 81 89
		f 4 104 -102 105 -92
		mu 0 4 90 86 87 91
		f 4 106 107 108 109
		mu 0 4 92 93 94 95
		f 4 110 111 112 -108
		mu 0 4 93 96 97 94
		f 4 113 -110 114 115
		mu 0 4 98 92 95 99
		f 4 116 -116 117 -112
		mu 0 4 100 98 99 101
		f 4 118 119 120 121
		mu 0 4 102 103 104 105
		f 4 122 -25 123 -98
		mu 0 4 84 23 106 107
		f 4 124 125 126 -120
		mu 0 4 103 108 109 104
		f 4 127 -122 128 129
		mu 0 4 110 102 105 111
		f 4 130 -130 131 -126
		mu 0 4 112 110 111 113
		f 7 132 -74 133 -93 -106 134 135
		mu 0 7 114 115 116 117 118 119 84
		f 14 -101 -86 -134 -62 136 -38 137 -19 138 -7 139 -26 -123 -135
		mu 0 14 119 120 117 116 121 122 123 124 125 126 127 20 23 84
		f 15 -124 -24 140 -5 141 -17 142 -36 143 -60 144 -84 -100 -105 145
		mu 0 15 107 106 1 128 129 130 131 132 133 134 135 136 137 138 139
		f 24 -121 146 -109 147 -82 148 -58 149 -34 150 -16 -13 -139 -23 -31 -28 -138 -45 -55
		 -50 -137 -69 -79 -133
		mu 0 24 114 140 141 142 143 144 145 146 147 148 149 150 126 125 151 152 124 123 153 154
		 122 121 155 115
		f 24 151 -131 -125 152 -114 -117 -111 153 -94 -103 -88 154 -70 -76 -64 155 -46 -52 -40
		 156 -9 -141 -1 -99
		mu 0 24 107 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174
		 175 128 1 0
		f 25 -3 -140 -11 -151 -42 -53 -47 -150 -66 -77 -71 -149 -90 -104 -95 -148 -113 -118
		 -115 -147 -127 -132 -129 -136 -97
		mu 0 25 83 20 127 149 148 176 177 147 146 178 179 145 144 180 181 143 142 182 183 141 140
		 184 185 114 84
		f 29 -146 -91 -145 -73 -78 -67 -144 -49 -54 -43 -143 -27 -30 -21 -142 -12 -15 -157 -32
		 -156 -56 -155 -80 -154 -107 -153 -119 -128 -152
		mu 0 29 107 139 136 135 186 187 134 133 188 189 132 131 190 191 130 129 192 175 174 171
		 170 167 166 163 162 159 158 193 156;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "across11";
	rename -uid "5AC32623-4FE8-23EC-8847-8F86F141483D";
	setAttr ".t" -type "double3" -3.1974423109204478e-16 0 13.308 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 0.015025024414062501 14.429942626953125 -6.6520001220703122 ;
	setAttr ".sp" -type "double3" 0.015025024414062501 14.429942626953125 -6.6520001220703122 ;
createNode mesh -n "across11Shape" -p "across11";
	rename -uid "8C7B4421-488F-1F78-E2E4-1FA2EE81034E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 166 ".uvst[0].uvsp[0:165]" -type "float2" 0.56053448 0.48731261
		 0.56053448 0.38731262 0.55430347 0.38731262 0.55430341 0.48731261 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.375 0.70916218 0.375
		 0.5 0.625 0.5 0.625 0.70916218 0.87499994 0.040837821 0.875 0.25 0.625 0.25 0.625
		 0.040837821 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.625 0.5 0.375 0.5 0.375 0.040837821
		 0.375 0.25 0.125 0.25 0.125 0.040837821 0.58936137 0.38731262 0.58313036 0.38731262
		 0.5831303 0.48731261 0.58936137 0.48731261 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75
		 0.375 0.70916218 0.375 0.5 0.625 0.5 0.625 0.70916218 0.87499994 0.040837821 0.875
		 0.25 0.625 0.25 0.625 0.040837821 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0.25
		 0.375 0.040837821 0.125 0.25 0.125 0.040837821 0.375 0.70916218 0.375 0.5 0.625 0.5
		 0.625 0.70916218 0.87499994 0.040837821 0.875 0.25 0.625 0.25 0.625 0.040837821 0.375
		 0.75 0.625 0.75 0.625 1 0.375 1 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.375 0.040837821
		 0.375 0.25 0.125 0.25 0.125 0.040837821 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.625
		 0.5 0.375 0.5 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.70916218 0.375 0.5
		 0.625 0.5 0.625 0.70916218 0.87499994 0.040837821 0.875 0.25 0.625 0.25 0.625 0.040837821
		 0.375 0.040837821 0.375 0.25 0.125 0.25 0.125 0.040837821 0.625 1 0.375 1 0.625 0
		 0.875 0 0.875 0.25 0.625 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.87499994 0.040837821
		 0.875 0.25 0.625 0.25 0.625 0.040837821 0.375 0.70916218 0.375 0.5 0.625 0.5 0.625
		 0.70916218 0.375 0.25 0.375 0.040837821 0.125 0.25 0.125 0.040837821 0.375 0.70916218
		 0.375 0.5 0.625 0.5 0.625 0.70916218 0.87499994 0.040837821 0.875 0.25 0.625 0.25
		 0.625 0.040837821 0.375 0.25 0.375 0.040837821 0.125 0.25 0.125 0.040837821 0.625
		 1 0.375 1 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.125 0 0.375 0 0.375 0.25 0.125
		 0.25 0.53103095 0.48731261 0.53103095 0.38731262 0.51545334 0.38731265 0.51545334
		 0.48731261 0.625 0.5 0.375 0.5 0.125 0 0.125 0.25 0.875 0 0.875 0.25 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.46589389 0.38731262 0.46589392 0.48731261 0.48147148 0.48731261
		 0.48147154 0.38731265 0.44517684 0.48731261 0.44517684 0.38731262 0.43894577 0.38731262
		 0.43894577 0.48731261 0.41733003 0.48731261 0.41733003 0.38731262 0.41109896 0.38731262
		 0.41109899 0.48731261;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[34]" -type "float3" 0.45773897 0 0 ;
	setAttr ".pt[35]" -type "float3" 0.45773897 0 0 ;
	setAttr ".pt[36]" -type "float3" 0.45773897 0 0 ;
	setAttr ".pt[37]" -type "float3" 0.45773897 0 0 ;
	setAttr ".pt[84]" -type "float3" -0.39977959 0 -1.1368684e-15 ;
	setAttr ".pt[85]" -type "float3" -0.39977959 0 -1.1368684e-15 ;
	setAttr ".pt[86]" -type "float3" -0.39977959 0 -1.1368684e-15 ;
	setAttr ".pt[87]" -type "float3" -0.39977959 0 -1.1368684e-15 ;
	setAttr -s 88 ".vt[0:87]"  3.8859942 4.049826622 -6.85200024 3.8859942 4.049826622 -6.45200014
		 3.48599434 4.049826622 -6.45200014 3.48599434 4.049826622 -6.85200024 -6.83195734 8.39999962 -6.53428888
		 -6.83195734 8.39999962 -6.73428917 6.86200762 8.39999962 -6.73428917 6.86200762 8.39999962 -6.53428888
		 -6.83195734 8.80000019 -6.73428917 6.86200762 8.80000019 -6.73428917 -5.70697498 4.049826622 -6.45200014
		 -5.70697498 24.81005859 -6.45200014 -5.70697498 24.81005859 -6.85200024 -5.70697498 4.049826622 -6.85200024
		 -5.30697489 24.81005859 -6.85200024 -5.30697489 4.049826622 -6.85200024 6.86200762 8.80000019 -6.53428888
		 -6.83195734 8.80000019 -6.53428888 -5.30697489 4.049826622 -6.45200014 -5.30697489 24.81005859 -6.45200014
		 5.7365284 4.049826622 -6.45200014 5.3365283 4.049826622 -6.45200014 5.3365283 4.049826622 -6.85200024
		 5.7365284 4.049826622 -6.85200024 -6.83195734 17.39999962 -6.53428888 -6.83195734 17.39999962 -6.73428917
		 -6.83195734 17 -6.73428917 -6.83195734 17 -6.53428888 -3.9193573 4.049826622 -6.45200014
		 -3.9193573 24.81005859 -6.45200014 -3.9193573 24.81005859 -6.85200024 -3.9193573 4.049826622 -6.85200024
		 -3.5193572 24.81005859 -6.85200024 -3.5193572 4.049826622 -6.85200024 6.47678518 4.050000191 -6.53428888
		 6.47678518 4.050000191 -6.73428917 6.47678518 4.55000019 -6.73428917 6.47678518 4.55000019 -6.53428888
		 -3.5193572 24.81005859 -6.45200014 -3.5193572 4.049826622 -6.45200014 -2.18943 4.049826622 -6.45200014
		 -2.18943 24.81005859 -6.45200014 -2.18943 24.81005859 -6.85200024 -2.18943 4.049826622 -6.85200024
		 -1.18942988 24.81005859 -6.85200024 -1.18942988 4.049826622 -6.85200024 -6.83195734 12.69999981 -6.53428888
		 -6.83195734 12.69999981 -6.73428917 6.86200762 12.69999981 -6.73428917 6.86200762 12.69999981 -6.53428888
		 -6.83195734 13.10000038 -6.73428917 6.86200762 13.10000038 -6.73428917 -1.18942988 4.049826622 -6.45200014
		 -1.18942988 24.81005859 -6.45200014 6.86200762 13.10000038 -6.53428888 -6.83195734 13.10000038 -6.53428888
		 -6.83195734 21.70000076 -6.53428888 -6.83195734 21.70000076 -6.73428917 -6.83195734 21.29999924 -6.73428917
		 -6.83195734 21.29999924 -6.53428888 0.99202257 4.049826622 -6.45200014 0.99202257 24.81005859 -6.45200014
		 0.99202257 24.81005859 -6.85200024 0.99202257 4.049826622 -6.85200024 1.99202251 24.81005859 -6.85200024
		 1.99202251 4.049826622 -6.85200024 1.99202251 4.049826622 -6.45200014 1.99202251 24.81005859 -6.45200014
		 6.86200762 17 -6.73428917 6.86200762 17 -6.53428888 6.86200762 17.39999962 -6.73428917
		 6.86200762 17.39999962 -6.53428888 3.48599434 24.81005859 -6.85200024 3.8859942 24.81005859 -6.85200024
		 3.48599434 24.81005859 -6.45200014 3.8859942 24.81005859 -6.45200014 5.3365283 24.81005859 -6.45200014
		 5.3365283 24.81005859 -6.85200024 5.7365284 24.81005859 -6.85200024 5.7365284 24.81005859 -6.45200014
		 6.86200762 21.29999924 -6.73428917 6.86200762 21.29999924 -6.53428888 6.86200762 21.70000076 -6.73428917
		 6.86200762 21.70000076 -6.53428888 -6.44673538 4.55000019 -6.73428917 -6.44673538 4.55000019 -6.53428888
		 -6.44673538 4.050000191 -6.53428888 -6.44673538 4.050000191 -6.73428917;
	setAttr -s 132 ".ed[0:131]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 5 8 0 8 9 0 9 6 0 10 11 0 11 12 0 12 13 0 13 10 0 12 14 0 14 15 0 15 13 0 7 16 0
		 16 17 0 17 4 0 16 9 0 8 17 0 18 19 0 19 11 0 10 18 0 14 19 0 18 15 0 20 21 0 21 22 0
		 22 23 0 23 20 0 24 25 0 25 26 0 26 27 0 27 24 0 28 29 0 29 30 0 30 31 0 31 28 0 30 32 0
		 32 33 0 33 31 0 34 35 0 35 36 0 36 37 0 37 34 0 32 38 0 38 39 0 39 33 0 38 29 0 28 39 0
		 40 41 0 41 42 0 42 43 0 43 40 0 42 44 0 44 45 0 45 43 0 46 47 0 47 48 0 48 49 0 49 46 0
		 47 50 0 50 51 0 51 48 0 52 53 0 53 41 0 40 52 0 49 54 0 54 55 0 55 46 0 54 51 0 50 55 0
		 44 53 0 52 45 0 56 57 0 57 58 0 58 59 0 59 56 0 60 61 0 61 62 0 62 63 0 63 60 0 62 64 0
		 64 65 0 65 63 0 66 67 0 67 61 0 60 66 0 64 67 0 66 65 0 26 68 0 68 69 0 69 27 0 25 70 0
		 70 68 0 69 71 0 71 24 0 71 70 0 3 72 0 72 73 0 73 0 0 2 74 0 74 72 0 73 75 0 75 1 0
		 75 74 0 21 76 0 76 77 0 77 22 0 77 78 0 78 23 0 78 79 0 79 20 0 79 76 0 58 80 0 80 81 0
		 81 59 0 57 82 0 82 80 0 81 83 0 83 56 0 83 82 0 36 84 0 84 85 0 85 37 0 86 34 0 85 86 0
		 35 87 0 87 84 0 86 87 0;
	setAttr -s 66 -ch 264 ".fc[0:65]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 -6 8 9 10
		mu 0 4 8 9 10 11
		f 4 11 12 13 14
		mu 0 4 12 13 14 15
		f 4 -14 15 16 17
		mu 0 4 16 17 18 19
		f 4 -8 18 19 20
		mu 0 4 20 21 22 23
		f 4 21 -10 22 -20
		mu 0 4 22 11 24 25
		f 4 23 24 -12 25
		mu 0 4 26 27 28 29
		f 4 -17 26 -24 27
		mu 0 4 19 18 27 26
		f 4 28 29 30 31
		mu 0 4 30 31 32 33
		f 4 32 33 34 35
		mu 0 4 34 35 36 37
		f 4 36 37 38 39
		mu 0 4 38 39 40 41
		f 4 -39 40 41 42
		mu 0 4 42 43 44 45
		f 4 43 44 45 46
		mu 0 4 46 47 48 49
		f 4 -42 47 48 49
		mu 0 4 45 44 50 51
		f 4 -49 50 -37 51
		mu 0 4 51 50 52 53
		f 4 52 53 54 55
		mu 0 4 54 55 56 57
		f 4 -55 56 57 58
		mu 0 4 58 59 60 61
		f 4 59 60 61 62
		mu 0 4 62 63 64 65
		f 4 -61 63 64 65
		mu 0 4 66 67 68 69
		f 4 66 67 -53 68
		mu 0 4 70 71 72 73
		f 4 -63 69 70 71
		mu 0 4 74 75 76 77
		f 4 72 -65 73 -71
		mu 0 4 76 69 78 79
		f 4 -58 74 -67 75
		mu 0 4 61 60 71 70
		f 4 76 77 78 79
		mu 0 4 80 81 82 83
		f 4 80 81 82 83
		mu 0 4 84 85 86 87
		f 4 -7 -11 -22 -19
		mu 0 4 21 8 11 22
		f 4 -83 84 85 86
		mu 0 4 88 89 90 91
		f 4 87 88 -81 89
		mu 0 4 92 93 94 95
		f 4 -86 90 -88 91
		mu 0 4 91 90 93 92
		f 4 -35 92 93 94
		mu 0 4 37 36 96 97
		f 4 -93 -34 95 96
		mu 0 4 98 99 100 101
		f 4 -95 97 98 -36
		mu 0 4 102 103 104 105
		f 4 99 -96 -33 -99
		mu 0 4 104 101 35 34
		f 4 100 101 102 -4
		mu 0 4 106 107 108 109
		f 4 103 104 -101 -3
		mu 0 4 110 111 112 113
		f 4 -103 105 106 -1
		mu 0 4 109 108 114 115
		f 4 -107 107 -104 -2
		mu 0 4 115 114 116 117
		f 4 -27 -16 -13 -25
		mu 0 4 27 18 14 13
		f 4 108 109 110 -30
		mu 0 4 118 119 120 121
		f 4 -111 111 112 -31
		mu 0 4 122 123 124 125
		f 4 -62 -66 -73 -70
		mu 0 4 75 66 69 76
		f 4 -113 113 114 -32
		mu 0 4 125 124 126 127
		f 4 -115 115 -109 -29
		mu 0 4 127 126 128 129
		f 4 -48 -41 -38 -51
		mu 0 4 50 44 40 39
		f 4 -79 116 117 118
		mu 0 4 83 82 130 131
		f 4 -117 -78 119 120
		mu 0 4 132 133 134 135
		f 4 -119 121 122 -80
		mu 0 4 136 137 138 139
		f 4 123 -120 -77 -123
		mu 0 4 138 135 81 80
		f 4 -75 -57 -54 -68
		mu 0 4 71 60 56 55
		f 4 -94 -97 -100 -98
		mu 0 4 103 98 101 104
		f 4 -91 -85 -82 -89
		mu 0 4 93 90 86 85
		f 4 -118 -121 -124 -122
		mu 0 4 137 132 135 138
		f 4 -106 -102 -105 -108
		mu 0 4 114 108 112 111
		f 4 -114 -112 -110 -116
		mu 0 4 126 124 120 119
		f 4 -74 -64 -60 -72
		mu 0 4 79 78 63 62
		f 4 -92 -90 -84 -87
		mu 0 4 140 141 142 143
		f 4 -46 124 125 126
		mu 0 4 49 48 144 145
		f 4 127 -47 -127 128
		mu 0 4 146 46 49 147
		f 4 129 130 -125 -45
		mu 0 4 47 148 149 48
		f 4 131 -130 -44 -128
		mu 0 4 150 151 152 153
		f 4 -56 -59 -76 -69
		mu 0 4 154 155 156 157
		f 4 -23 -9 -5 -21
		mu 0 4 25 24 5 4
		f 4 -50 -52 -40 -43
		mu 0 4 158 159 160 161
		f 4 -28 -26 -15 -18
		mu 0 4 162 163 164 165
		f 4 -126 -131 -132 -129
		mu 0 4 145 144 151 150;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "wall7";
	rename -uid "5DCD8B74-4E73-A2DE-40AB-23B29A5BBD87";
	setAttr ".rp" -type "double3" 0 12.9 6.5220001220703123 ;
	setAttr ".sp" -type "double3" 0 12.9 6.5220001220703123 ;
createNode mesh -n "wall7Shape" -p "wall7";
	rename -uid "2F9285DA-4FB2-9D4E-1401-D5A3F5259717";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 134 ".uvst[0].uvsp[0:133]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.25299361 0 0.25299361 0.25 0.27799362 0.25 0.27799362 0 0.25299361
		 0 0.25299361 0.25 0.27799362 0.25 0.27799362 0 0.625 0.87799364 0.375 0.87799364
		 0.375 0.90299362 0.625 0.90299362 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.625 0.34700638
		 0.375 0.34700638 0.375 0.37200639 0.625 0.37200639 0.25299361 0 0.25299361 0.25 0.27799362
		 0.25 0.27799362 0 0.625 0.87799364 0.375 0.87799364 0.375 0.90299362 0.625 0.90299362
		 0.625 0.34700638 0.375 0.34700638 0.375 0.37200639 0.625 0.37200639 0.72200638 0
		 0.72200638 0.25 0.74700642 0.25 0.74700642 0 0.25299361 0 0.25299361 0.25 0.27799362
		 0.25 0.27799362 0 0.625 0.87799364 0.375 0.87799364 0.375 0.90299362 0.625 0.90299362
		 0.625 0.34700638 0.375 0.34700638 0.375 0.37200639 0.625 0.37200639 0.72200638 0
		 0.72200638 0.25 0.74700642 0.25 0.74700642 0 0.25299361 0 0.25299361 0.25 0.27799362
		 0.25 0.27799362 0 0.625 0.87799364 0.375 0.87799364 0.375 0.90299362 0.625 0.90299362
		 0.625 0.34700638 0.375 0.34700638 0.375 0.37200639 0.625 0.37200639 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.72200638 0 0.72200638 0.25 0.74700642 0.25 0.74700642 0
		 0.625 0.87799364 0.375 0.87799364 0.375 0.90299362 0.625 0.90299362 0.625 0.34700638
		 0.375 0.34700638 0.375 0.37200639 0.625 0.37200639 0.72200638 0 0.72200638 0.25 0.74700642
		 0.25 0.74700642 0 0.625 0.5 0.375 0.5 0.72200638 0 0.72200638 0.25 0.74700642 0.25
		 0.74700642 0 0.59598023 0.51913756 0.40401971 0.51913762 0.40401977 0.53125 0.40401971
		 0.56080425 0.40401974 0.57291669 0.40401977 0.60247093 0.40401977 0.61458337 0.40401971
		 0.64413756 0.40401974 0.65625 0.40401974 0.68580425 0.40401977 0.69791675 0.40401977
		 0.052083332 0.40401977 0.064195737 0.40401977 0.09375 0.40401971 0.10586241 0.40401977
		 0.13541667 0.40401977 0.14752907 0.40401977 0.17708334 0.40401974 0.18919572 0.40401977
		 0.21875 0.40401974 0.23086241 0.59598023 0.23086241 0.59598023 0.69791675 0.59598023
		 0.68580425 0.59598023 0.65625 0.59598023 0.64413756 0.59598023 0.61458337 0.59598023
		 0.60247099 0.59598023 0.57291669 0.59598029 0.56080419 0.59598023 0.53125 0.59598023
		 0.21875 0.59598017 0.18919572 0.59598023 0.17708334 0.59598023 0.14752907 0.59598023
		 0.13541667 0.59598023 0.10586241 0.59598023 0.09375 0.59598023 0.064195737 0.59598029
		 0.052083332;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".vt[0:47]"  -7 0 6.47200012 7 0 6.47200012 7 0 6.57200003
		 -7 0 6.57200003 -5.37489367 5.375 6.47200012 -5.37489367 6.625 6.47200012 -5.37489367 6.625 6.57200003
		 -5.37489367 5.375 6.57200003 -5.37489367 9.67500019 6.47200012 -5.37489367 10.92500019 6.47200012
		 -5.37489367 10.92500019 6.57200003 -5.37489367 9.67500019 6.57200003 5.37489367 5.375 6.47200012
		 5.37489367 5.375 6.57200003 -7 25.79999924 6.57200003 -7 25.79999924 6.47200012 5.37489367 6.625 6.57200003
		 5.37489367 6.625 6.47200012 -5.37489367 13.97500038 6.47200012 -5.37489367 15.22500038 6.47200012
		 -5.37489367 15.22500038 6.57200003 -5.37489367 13.97500038 6.57200003 5.37489367 9.67500019 6.47200012
		 5.37489367 9.67500019 6.57200003 5.37489367 10.92500019 6.57200003 5.37489367 10.92500019 6.47200012
		 -5.37489367 18.27499962 6.47200012 -5.37489367 19.52499962 6.47200012 -5.37489367 19.52499962 6.57200003
		 -5.37489367 18.27499962 6.57200003 5.37489367 13.97500038 6.47200012 5.37489367 13.97500038 6.57200003
		 5.37489367 15.22500038 6.57200003 5.37489367 15.22500038 6.47200012 -5.37489367 22.57500076 6.47200012
		 -5.37489367 23.82500076 6.47200012 -5.37489367 23.82500076 6.57200003 -5.37489367 22.57500076 6.57200003
		 5.37489367 18.27499962 6.47200012 5.37489367 18.27499962 6.57200003 5.37489367 19.52499962 6.57200003
		 5.37489367 19.52499962 6.47200012 7 25.79999924 6.47200012 7 25.79999924 6.57200003
		 5.37489367 22.57500076 6.47200012 5.37489367 22.57500076 6.57200003 5.37489367 23.82500076 6.57200003
		 5.37489367 23.82500076 6.47200012;
	setAttr -s 84 ".ed[0:83]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 4 0 7 13 0 13 12 0 3 14 0 14 15 0 15 0 0 16 6 0
		 5 17 0 17 16 0 18 19 0 19 20 0 20 21 0 21 18 0 22 8 0 11 23 0 23 22 0 24 10 0 9 25 0
		 25 24 0 13 16 0 17 12 0 26 27 0 27 28 0 28 29 0 29 26 0 30 18 0 21 31 0 31 30 0 32 20 0
		 19 33 0 33 32 0 23 24 0 25 22 0 34 35 0 35 36 0 36 37 0 37 34 0 38 26 0 29 39 0 39 38 0
		 40 28 0 27 41 0 41 40 0 1 42 0 42 43 0 43 2 0 31 32 0 33 30 0 44 34 0 37 45 0 45 44 0
		 46 36 0 35 47 0 47 46 0 39 40 0 41 38 0 14 43 0 42 15 0 45 46 0 47 44 0 42 47 1 34 27 1
		 26 19 1 18 9 1 8 5 1 4 0 1 3 7 1 6 11 1 10 21 1 20 29 1 28 37 1 46 43 1;
	setAttr -s 28 -ch 168 ".fc[0:27]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 11
		mu 0 4 8 9 10 11
		f 4 12 -8 13 14
		mu 0 4 12 13 14 15
		f 4 -4 15 16 17
		mu 0 4 16 17 18 19
		f 4 18 -6 19 20
		mu 0 4 20 21 22 23
		f 4 21 22 23 24
		mu 0 4 24 25 26 27
		f 4 25 -12 26 27
		mu 0 4 28 29 30 31
		f 4 28 -10 29 30
		mu 0 4 32 33 34 35
		f 4 31 -21 32 -15
		mu 0 4 36 37 38 39
		f 4 33 34 35 36
		mu 0 4 40 41 42 43
		f 4 37 -25 38 39
		mu 0 4 44 45 46 47
		f 4 40 -23 41 42
		mu 0 4 48 49 50 51
		f 4 43 -31 44 -28
		mu 0 4 52 53 54 55
		f 4 45 46 47 48
		mu 0 4 56 57 58 59
		f 4 49 -37 50 51
		mu 0 4 60 61 62 63
		f 4 52 -35 53 54
		mu 0 4 64 65 66 67
		f 4 -2 55 56 57
		mu 0 4 68 69 70 71
		f 4 58 -43 59 -40
		mu 0 4 72 73 74 75
		f 4 60 -49 61 62
		mu 0 4 76 77 78 79
		f 4 63 -47 64 65
		mu 0 4 80 81 82 83
		f 4 66 -55 67 -52
		mu 0 4 84 85 86 87
		f 4 68 -57 69 -17
		mu 0 4 18 71 88 89
		f 4 70 -66 71 -63
		mu 0 4 90 91 92 93
		f 14 -70 72 -65 -46 73 -34 74 -22 75 -9 76 -5 77 -18
		mu 0 14 89 88 94 95 96 97 98 99 100 101 102 103 104 0
		f 14 78 -7 79 -11 80 -24 81 -36 82 -48 -64 83 -69 -16
		mu 0 14 17 105 106 107 108 109 110 111 112 113 114 115 71 18
		f 22 -56 -1 -78 -13 -33 -20 -77 -26 -45 -30 -76 -38 -60 -42 -75 -50 -68 -54 -74 -61
		 -72 -73
		mu 0 22 88 1 0 104 116 117 103 102 118 119 101 100 120 121 99 98 122 123 97 96 124 94
		f 22 -71 -62 -83 -53 -67 -51 -82 -41 -59 -39 -81 -29 -44 -27 -80 -19 -32 -14 -79 -3
		 -58 -84
		mu 0 22 115 125 113 112 126 127 111 110 128 129 109 108 130 131 107 106 132 133 105 17
		 68 71;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "gloor2";
	rename -uid "95CEDA9F-41A1-FF17-43AD-1AAEBF560793";
	setAttr ".t" -type "double3" 0 4.35 0 ;
	setAttr ".s" -type "double3" 14 0.1 13 ;
createNode mesh -n "gloor2Shape" -p "gloor2";
	rename -uid "F45189FA-4186-F435-75B5-95842F8E7505";
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "gloor3";
	rename -uid "BD8AD8F0-430D-D2E0-E764-BFB260D097AE";
	setAttr ".t" -type "double3" 0 8.65 0 ;
	setAttr ".s" -type "double3" 14 0.1 13 ;
createNode mesh -n "gloor3Shape" -p "gloor3";
	rename -uid "9ED85CB8-40A5-7F8D-192F-C882BFFED38B";
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "gloor4";
	rename -uid "AA315BD4-4D0C-4749-2486-D2B29F49E78D";
	setAttr ".t" -type "double3" 0 12.950000000000001 0 ;
	setAttr ".s" -type "double3" 14 0.1 13 ;
createNode mesh -n "gloor4Shape" -p "gloor4";
	rename -uid "B4ACB0C7-4DF5-A54F-71B3-E6B51AFF83BE";
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "gloor5";
	rename -uid "B4608A8A-4750-C900-4873-7BA61D9710E7";
	setAttr ".t" -type "double3" 0 17.25 0 ;
	setAttr ".s" -type "double3" 14 0.1 13 ;
createNode mesh -n "gloor5Shape" -p "gloor5";
	rename -uid "5A31A814-4CF9-1FD9-EDBA-C6B3663E6169";
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "across12";
	rename -uid "080359E7-4BF5-88CC-CFB3-A689F6D581A4";
	setAttr ".rp" -type "double3" -1.953125e-05 14.429942626953125 -6.6520001220703122 ;
	setAttr ".sp" -type "double3" -1.953125e-05 14.429942626953125 -6.6520001220703122 ;
createNode mesh -n "across12Shape" -p "across12";
	rename -uid "4FBC13FA-4DFE-03DE-3244-8DA7A6CE9519";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 194 ".uvst[0].uvsp[0:193]" -type "float2" 0.625 0.57066083
		 0.625 0.70916218 0.375 0.70916218 0.375 0.57197952 0.375 0.17751664 0.375 0.040837821
		 0.625 0.040837821 0.625 0.17883538 0.56053448 0.48731261 0.56053448 0.38731262 0.55430347
		 0.38731262 0.55430341 0.48731261 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.625 0.56898975 0.625
		 0.70916218 0.375 0.70916218 0.375 0.57030845 0.625 0.5 0.375 0.5 0.625 0.18264562
		 0.625 0.040837821 0.87499994 0.040837821 0.875 0.18101028 0.87499994 0.040837821
		 0.875 0.1793392 0.64990461 0.1787702 0.125 0.17969154 0.125 0.040837821 0.375 0.040837821
		 0.375 0.18132688 0.58936137 0.38731262 0.58313036 0.38731262 0.5831303 0.48731261
		 0.58936137 0.48731261 0.35009533 0.17745146 0.125 0.17802046 0.125 0.040837821 0.375
		 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.43570584
		 0.9664523 0.43570584 0.97947371 0.44808152 0.98007727 0.44808152 0.96705586 0.375
		 0.75 0.625 0.75 0.625 1 0.375 1 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0.54855752
		 0.625 0.70916218 0.375 0.70916218 0.375 0.54987627 0.125 0 0.375 0 0.375 0.25 0.125
		 0.25 0.625 0.5 0.375 0.5 0.50215626 0.96969295 0.49101341 0.96914959 0.49101341 0.98217094
		 0.50215626 0.98271441 0.50338912 0.98265219 0.50338912 0.96963078 0.57547534 0.97901326
		 0.57547534 0.96599185 0.54453611 0.96755368 0.54453611 0.98057508 0.625 0.040837821
		 0.625 0.25 0.375 0.25 0.375 0.040837821 0.625 1 0.375 1 0.625 0 0.875 0 0.875 0.25
		 0.625 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.375 0.70916218 0.375 0.5 0.625
		 0.5 0.625 0.70916218 0.87499994 0.040837821 0.875 0.25 0.625 0.25 0.625 0.040837821
		 0.375 0.040837821 0.375 0.25 0.125 0.25 0.125 0.040837821 0.87499994 0.040837821
		 0.875 0.25 0.625 0.25 0.625 0.040837821 0.375 0.70916218 0.375 0.5 0.625 0.5 0.625
		 0.70916218 0.375 0.25 0.375 0.040837821 0.125 0.25 0.125 0.040837821 0.68609822 0.086857848
		 0.68021727 0.088782258 0.68406606 0.10054425 0.68994707 0.098619841 0.625 0.90173608
		 0.625 1 0.375 1 0.375 0.90216815 0.375 0.34519094 0.375 0.25 0.625 0.25 0.625 0.34562302
		 0.375 0.47695667 0.625 0.4656395 0.375 0 0.625 0 0.72326386 0 0.72062302 0.25 0.27716818
		 0 0.27980909 0.25 0.87499994 0.040837821 0.875 0.20144247 0.74355274 0.21609059 0.64442962
		 0.22713658 0.84063953 0.25 0.14804333 0.25 0.35557035 0.22581786 0.27331981 0.2166521
		 0.125 0.20012374 0.125 0.040837821 0.375 0.18021275 0.375 0.040837821 0.625 0.040837821
		 0.625 0.18153147 0.125 0.18084471 0.125 0.040837821 0.53103095 0.48731261 0.53103095
		 0.38731262 0.51545334 0.38731265 0.51545334 0.48731261 0.87499994 0.040837821 0.875
		 0.18216345 0.625 0.56783658 0.625 0.70916218 0.375 0.70916218 0.375 0.56915528 0.625
		 0.5 0.375 0.5 0.125 0 0.125 0.25 0.875 0 0.875 0.25 0.375 0.75 0.625 0.75 0.625 1
		 0.375 1 0.46589389 0.38731262 0.46589392 0.48731261 0.48147148 0.48731261 0.48147154
		 0.38731265 0.44517684 0.48731261 0.44517684 0.38731262 0.43894577 0.38731262 0.43894577
		 0.48731261 0.41733003 0.48731261 0.41733003 0.38731262 0.41109896 0.38731262 0.41109899
		 0.48731261;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 96 ".vt[0:95]"  -3.9193573 17.79667473 -6.85200024 -3.9193573 4.049826622 -6.85200024
		 -3.9193573 4.049826622 -6.45200014 -3.9193573 17.66578484 -6.45200014 -3.5193572 17.61577797 -6.45200014
		 -3.5193572 4.049826622 -6.45200014 -3.5193572 4.049826622 -6.85200024 -3.5193572 17.74666786 -6.85200024
		 3.8859942 4.049826622 -6.85200024 3.8859942 4.049826622 -6.45200014 3.48599434 4.049826622 -6.45200014
		 3.48599434 4.049826622 -6.85200024 -6.83195734 8.39999962 -6.53428888 -6.83195734 8.39999962 -6.73428917
		 6.86200762 8.39999962 -6.73428917 6.86200762 8.39999962 -6.53428888 -6.83195734 8.80000019 -6.73428917
		 6.86200762 8.80000019 -6.73428917 6.86200762 8.80000019 -6.53428888 -6.83195734 8.80000019 -6.53428888
		 -2.18943 17.96253586 -6.85200024 -2.18943 4.049826622 -6.85200024 -2.18943 4.049826622 -6.45200014
		 -2.18943 17.83164597 -6.45200014 -1.18942988 18.12485123 -6.85200024 -1.18942988 4.049826622 -6.85200024
		 -3.55920482 17.74019814 -6.85200024 -1.18942988 4.049826622 -6.45200014 -1.18942988 17.99396133 -6.45200014
		 5.7365284 4.049826622 -6.45200014 5.3365283 4.049826622 -6.45200014 5.3365283 4.049826622 -6.85200024
		 5.7365284 4.049826622 -6.85200024 -3.55920482 17.60930824 -6.45200014 -6.83195734 17.39999962 -6.53428888
		 -6.83195734 17.39999962 -6.73428917 -6.83195734 17 -6.73428917 -6.83195734 17 -6.53428888
		 6.86340141 4.050000191 -6.53428888 6.86340141 4.050000191 -6.73428917 6.86340141 4.55000019 -6.73428917
		 6.86340141 4.55000019 -6.53428888 -5.70697498 18.076993942 -6.85200024 -5.70697498 17.94610405 -6.45200014
		 -5.30697489 17.88337898 -6.45200014 -5.30697489 18.014268875 -6.85200024 -6.83195734 12.69999981 -6.53428888
		 -6.83195734 12.69999981 -6.73428917 6.86200762 12.69999981 -6.73428917 6.86200762 12.69999981 -6.53428888
		 -6.83195734 13.10000038 -6.73428917 6.86200762 13.10000038 -6.73428917 0.99202257 19.99051857 -6.85200024
		 0.99202257 4.049826622 -6.85200024 0.99202257 4.049826622 -6.45200014 0.99202257 19.85962868 -6.45200014
		 6.86200762 13.10000038 -6.53428888 -6.83195734 13.10000038 -6.53428888 1.99202251 4.049826622 -6.85200024
		 1.99202251 24.81005859 -6.85200024 1.99202251 24.81005859 -6.45200014 1.99202251 4.049826622 -6.45200014
		 6.86200762 17 -6.73428917 6.86200762 17 -6.53428888 6.86200762 17.39999962 -6.73428917
		 6.86200762 17.39999962 -6.53428888 3.48599434 24.81005859 -6.45200014 3.48599434 24.81005859 -6.85200024
		 3.8859942 24.81005859 -6.85200024 3.8859942 24.81005859 -6.45200014 5.3365283 24.81005859 -6.85200024
		 5.7365284 24.81005859 -6.85200024 5.3365283 24.81005859 -6.45200014 5.7365284 24.81005859 -6.45200014
		 1.47951782 21.29999924 -6.73428917 1.50318563 21.29999924 -6.53428888 1.647843 21.70000076 -6.53428888
		 1.62417531 21.70000076 -6.73428917 6.86200762 21.29999924 -6.73428917 6.86200762 21.29999924 -6.53428888
		 6.86200762 21.70000076 -6.53428888 6.86200762 21.70000076 -6.73428917 1.084195852 24.81005859 -6.45200014
		 1.12946451 24.81005859 -6.85200024 1.51781154 21.44440651 -6.85200024 1.9143039 22.54076958 -6.85200024
		 1.9143039 22.40987778 -6.45200014 1.58530188 21.50013733 -6.45200014 -5.30697489 4.049826622 -6.45200014
		 -5.30697489 4.049826622 -6.85200024 -5.70697498 4.049826622 -6.45200014 -5.70697498 4.049826622 -6.85200024
		 -6.86344051 4.55000019 -6.73428917 -6.86344051 4.55000019 -6.53428888 -6.86344051 4.050000191 -6.53428888
		 -6.86344051 4.050000191 -6.73428917;
	setAttr -s 142 ".ed[0:141]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 13 16 0 16 17 0
		 17 14 0 15 18 0 18 19 0 19 12 0 20 21 0 21 22 0 22 23 0 23 20 0 18 17 0 16 19 0 24 25 0
		 25 21 0 20 24 0 0 26 0 26 7 0 6 1 0 22 27 0 27 28 0 28 23 0 29 30 0 30 31 0 31 32 0
		 32 29 0 27 25 0 24 28 0 4 33 0 33 3 0 2 5 0 34 35 0 35 36 0 36 37 0 37 34 0 38 39 0
		 39 40 0 40 41 0 41 38 0 42 43 0 43 44 0 44 45 0 45 42 0 46 47 0 47 48 0 48 49 0 49 46 0
		 47 50 0 50 51 0 51 48 0 52 53 0 53 54 0 54 55 0 55 52 0 49 56 0 56 57 0 57 46 0 56 51 0
		 50 57 0 33 26 1 58 59 0 59 60 0 60 61 0 61 58 0 36 62 0 62 63 0 63 37 0 35 64 0 64 62 0
		 63 65 0 65 34 0 65 64 0 10 66 0 66 67 0 67 11 0 67 68 0 68 8 0 9 69 0 69 66 0 68 69 0
		 31 70 0 70 71 0 71 32 0 30 72 0 72 70 0 71 73 0 73 29 0 73 72 0 74 75 0 75 76 0 76 77 0
		 77 74 0 74 78 0 78 79 0 79 75 0 76 80 0 80 81 0 81 77 0 82 60 0 59 83 0 83 82 0 78 81 0
		 80 79 0 52 84 0 84 85 0 85 83 0 58 53 0 82 86 0 86 87 0 87 55 0 54 61 0 44 88 0 88 89 0
		 89 45 0 43 90 0 90 88 0 89 91 0 91 42 0 91 90 0 40 92 0 92 93 0 93 41 0 94 38 0 93 94 0
		 39 95 0 95 92 0 94 95 0;
	setAttr -s 67 -ch 276 ".fc[0:66]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 11
		mu 0 4 8 9 10 11
		f 4 12 13 14 15
		mu 0 4 12 13 14 15
		f 4 -14 16 17 18
		mu 0 4 16 17 18 19
		f 4 -16 19 20 21
		mu 0 4 20 21 22 23
		f 4 22 23 24 25
		mu 0 4 24 25 26 27
		f 4 26 -18 27 -21
		mu 0 4 22 19 28 29
		f 4 28 29 -23 30
		mu 0 4 30 31 32 33
		f 5 -1 31 32 -7 33
		mu 0 5 34 35 36 7 6
		f 4 -25 34 35 36
		mu 0 4 37 38 39 40
		f 4 37 38 39 40
		mu 0 4 41 42 43 44
		f 4 -36 41 -29 42
		mu 0 4 40 39 31 30
		f 5 -5 43 44 -3 45
		mu 0 5 5 4 45 46 47
		f 4 46 47 48 49
		mu 0 4 48 49 50 51
		f 4 50 51 52 53
		mu 0 4 52 53 54 55
		f 4 54 55 56 57
		mu 0 4 56 57 58 59
		f 4 58 59 60 61
		mu 0 4 60 61 62 63
		f 4 -60 62 63 64
		mu 0 4 64 65 66 67
		f 4 65 66 67 68
		mu 0 4 68 69 70 71
		f 4 -62 69 70 71
		mu 0 4 72 73 74 75
		f 4 72 -64 73 -71
		mu 0 4 74 67 76 77
		f 4 -32 -4 -45 74
		mu 0 4 78 79 80 81
		f 4 -44 -8 -33 -75
		mu 0 4 81 82 83 78
		f 4 -15 -19 -27 -20
		mu 0 4 21 16 19 22
		f 4 -43 -31 -26 -37
		mu 0 4 84 85 86 87
		f 4 75 76 77 78
		mu 0 4 88 89 90 91
		f 4 -49 79 80 81
		mu 0 4 51 50 92 93
		f 4 -80 -48 82 83
		mu 0 4 94 95 96 97
		f 4 -82 84 85 -50
		mu 0 4 98 99 100 101
		f 4 86 -83 -47 -86
		mu 0 4 100 97 49 48
		f 4 87 88 89 -11
		mu 0 4 102 103 104 105
		f 4 -90 90 91 -12
		mu 0 4 106 107 108 109
		f 4 92 93 -88 -10
		mu 0 4 110 111 112 113
		f 4 -92 94 -93 -9
		mu 0 4 109 108 111 110
		f 4 95 96 97 -40
		mu 0 4 114 115 116 117
		f 4 98 99 -96 -39
		mu 0 4 118 119 120 121
		f 4 -61 -65 -73 -70
		mu 0 4 73 64 67 74
		f 4 -98 100 101 -41
		mu 0 4 117 116 122 123
		f 4 -102 102 -99 -38
		mu 0 4 123 122 124 125
		f 4 103 104 105 106
		mu 0 4 126 127 128 129
		f 4 -81 -84 -87 -85
		mu 0 4 99 94 97 100
		f 4 107 108 109 -104
		mu 0 4 130 131 132 133
		f 4 110 111 112 -106
		mu 0 4 134 135 136 137
		f 4 113 -77 114 115
		mu 0 4 138 90 89 139
		f 4 -109 116 -112 117
		mu 0 4 140 141 136 135
		f 4 -95 -91 -89 -94
		mu 0 4 111 108 104 103
		f 4 -101 -97 -100 -103
		mu 0 4 122 116 120 119
		f 4 -108 -107 -113 -117
		mu 0 4 141 142 143 136
		f 4 -110 -118 -111 -105
		mu 0 4 144 140 135 145
		f 7 -66 118 119 120 -115 -76 121
		mu 0 7 146 147 148 149 150 89 88
		f 7 -78 -114 122 123 124 -68 125
		mu 0 7 91 90 151 152 153 154 155
		f 4 -74 -63 -59 -72
		mu 0 4 77 76 61 60
		f 4 126 127 128 -57
		mu 0 4 156 157 158 159
		f 4 129 130 -127 -56
		mu 0 4 160 161 157 156
		f 4 -79 -126 -67 -122
		mu 0 4 162 163 164 165
		f 4 -129 131 132 -58
		mu 0 4 159 158 166 167
		f 4 -133 133 -130 -55
		mu 0 4 168 169 170 171
		f 4 -53 134 135 136
		mu 0 4 55 54 172 173
		f 4 137 -54 -137 138
		mu 0 4 174 52 55 175
		f 4 139 140 -135 -52
		mu 0 4 53 176 177 54
		f 4 141 -140 -51 -138
		mu 0 4 178 179 180 181
		f 4 -24 -30 -42 -35
		mu 0 4 182 183 184 185
		f 4 -28 -17 -13 -22
		mu 0 4 29 28 13 12
		f 4 -6 -46 -2 -34
		mu 0 4 186 187 188 189
		f 4 -128 -131 -134 -132
		mu 0 4 190 191 192 193
		f 4 -136 -141 -142 -139
		mu 0 4 173 172 179 178;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "wall8";
	rename -uid "27927010-4797-9D94-2149-0DBEA5B0496A";
	setAttr ".rp" -type "double3" 0 12.9 -6.5222747802734373 ;
	setAttr ".sp" -type "double3" 0 12.9 -6.5222747802734373 ;
createNode mesh -n "wall8Shape" -p "wall8";
	rename -uid "9AE87C78-476D-A775-2152-F79E8E6F1802";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 158 ".uvst[0].uvsp[0:157]" -type "float2" 0.625 0.28943026
		 0.37500003 0.28943026 0.375 0.31443024 0.625 0.31443024 0.31056976 0 0.31056976 0.25
		 0.3355698 0.25 0.3355698 0 0.625 0.93556976 0.375 0.93556976 0.37500003 0.9605698
		 0.625 0.9605698 0.625 0.28943026 0.37500003 0.28943026 0.375 0.31443024 0.625 0.31443024
		 0.66443026 0 0.66443026 0.25 0.68943024 0.25 0.68943024 0 0.64914674 -9.7507438e-18
		 0.64928705 0.00042885571 0.65059763 1.3929635e-18 0.625 0.93556976 0.375 0.93556976
		 0.37500003 0.9605698 0.625 0.9605698 0.625 0.28943026 0.37500003 0.28943026 0.375
		 0.31443024 0.625 0.31443024 0.66443026 0 0.66443026 0.25 0.68943024 0.25 0.68943024
		 0 0.50215626 0.98205441 0.50215626 0.97879899 0.625 0 0.875 0 0.875 0.25 0.625 0.25
		 0.66443026 0 0.66443026 0.25 0.68943024 0.25 0.68943024 0 0.44598019 0.97605944 0.39570063
		 0.97360742 0.3957006 0.97686279 0.44598019 0.9793148 0.66425514 0.036222894 0.66131461
		 0.037185095 0.51992536 0.31443024 0.625 0.31443024 0.625 0.28943026 0.52020061 0.28943026
		 0.68913686 0.12221 0.69239223 0.12221 0.66443026 0 0.66443026 0.25 0.68943024 0.25
		 0.68943024 0 0.69066185 0.12687032 0.69360232 0.12590812 0.625 0.97585326 0.625 0.97440231
		 0.62154269 0.97277248 0.70562983 0.16266437 0.70268929 0.16362657 0.54324484 0.96056986
		 0.625 0.9605698 0.625 0.93556976 0.54350805 0.93556976 0.72169286 0.22170144 0.72463346
		 0.22073925 0.53345394 0.31443024 0.625 0.31443024 0.625 0.28943026 0.53319079 0.28943026
		 0.66443026 0 0.66443026 0.25 0.68943024 0.25 0.68943024 0 0.625 0.93556976 0.50696599
		 0.93556976 0.50956482 0.94942725 0.50968742 0.96056974 0.625 0.9605698 0.51328778
		 0.25 0.625 0.5 0.5134899 0.5 0.59598023 0.51913756 0.52568734 0.51913762 0.52548528
		 0.23086241 0.59598023 0.23086241 0.625 0.75 0.375 0.75 0.40401977 0.69791675 0.59598023
		 0.69791675 0.59598023 0.68580425 0.40401974 0.68580425 0.40401974 0.65625 0.59598023
		 0.65625 0.59598023 0.64413756 0.40401971 0.64413756 0.40401977 0.61458337 0.59598023
		 0.61458337 0.59598023 0.60247099 0.40401977 0.60247093 0.40401977 0.57622689 0.43644276
		 0.57898587 0.5053488 0.57291663 0.59598023 0.57291669 0.59598029 0.56080419 0.5152995
		 0.56080419 0.53418398 0.53246868 0.53340727 0.53125 0.59598023 0.53125 0.59598023
		 0.21875 0.53320521 0.21875 0.5341841 0.21721426 0.5155108 0.18919572 0.59598017 0.18919572
		 0.59598023 0.17708334 0.50743842 0.17708334 0.50734431 0.17694201 0.43644282 0.17069714
		 0.40401977 0.17345604 0.40401977 0.14752907 0.59598023 0.14752907 0.59598023 0.13541667
		 0.40401977 0.13541667 0.40401971 0.10586241 0.59598023 0.10586241 0.59598023 0.09375
		 0.40401977 0.09375 0.40401977 0.064195737 0.59598023 0.064195737 0.59598029 0.052083332
		 0.40401977 0.052083332 0.375 0 0.625 0.93556976 0.375 0.93556976 0.37500003 0.9605698
		 0.625 0.9605698 0.31056976 0 0.31056976 0.25 0.3355698 0.25 0.3355698 0 0.125 0.17624244
		 0.125 0 0.375 0.17592536 0.31056976 0 0.31056976 0.25 0.3355698 0.25 0.3355698 0
		 0.625 1 0.375 1 0.375 0.57375753;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  5.37489367 6.625 -6.47227478 -5.37489367 6.625 -6.47227478
		 -5.37489367 6.625 -6.57227468 5.37489367 6.625 -6.57227468 -5.37489367 13.97500038 -6.57227468
		 -5.37489367 15.22500038 -6.57227468 -5.37489367 15.22500038 -6.47227478 -5.37489367 13.97500038 -6.47227478
		 5.37489367 9.67500019 -6.57227468 -5.37489367 9.67500019 -6.57227468 -5.37489367 9.67500019 -6.47227478
		 5.37489367 9.67500019 -6.47227478 5.37489367 10.92500019 -6.47227478 -5.37489367 10.92500019 -6.47227478
		 -5.37489367 10.92500019 -6.57227468 5.37489367 10.92500019 -6.57227468 5.37489367 5.375 -6.47227478
		 5.37489367 5.375 -6.57227468 0.41127807 18.26041412 -6.47227478 0.41655245 18.27499962 -6.47227478
		 0.41127807 18.27499962 -6.51684523 5.37489367 13.97500038 -6.57227468 5.37489367 13.97500038 -6.47227478
		 5.37489367 15.22500038 -6.47227478 5.37489367 15.22500038 -6.57227468 -3.55920482 17.61594391 -6.47227478
		 -3.55920482 17.64866638 -6.57227468 7 0 -6.47227478 7 0 -6.57227468 7 25.79999924 -6.57227468
		 7 25.79999924 -6.47227478 -5.37489367 17.93338585 -6.57227468 -7 18.18822098 -6.57227468
		 -7 18.1554985 -6.47227478 -5.37489367 17.90066338 -6.47227478 0.85677308 19.52499962 -6.57227468
		 0.86860693 19.52499962 -6.47227478 5.37489367 19.52499962 -6.57227468 5.37489367 19.52499962 -6.47227478
		 1.9143039 22.41651344 -6.47227478 1.9143039 22.44923592 -6.57227468 5.37489367 18.27499962 -6.47227478
		 5.37489367 18.27499962 -6.57227468 1.85949063 22.57500076 -6.47227478 1.87080777 22.57500076 -6.57227468
		 0.29953277 18.27499962 -6.57227468 1.43849242 23.82500076 -6.57227468 1.42717528 23.82500076 -6.47227478
		 5.37489367 22.57500076 -6.47227478 5.37489367 22.57500076 -6.57227468 0.74411684 25.79999924 -6.47227478
		 0.75543398 25.79999924 -6.57227468 5.37489367 23.82500076 -6.57227468 5.37489367 23.82500076 -6.47227478
		 -7 0 -6.57227468 -5.37489367 5.375 -6.57227468 -5.37489367 5.375 -6.47227478 -7 0 -6.47227478;
	setAttr -s 96 ".ed[0:95]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 12 13 0 13 14 0 14 15 0 15 12 0 16 0 0 3 17 0 17 16 0
		 18 19 0 19 20 0 20 18 0 21 4 0 7 22 0 22 21 0 23 6 0 5 24 0 24 23 0 11 12 0 15 8 0
		 26 25 1 27 28 0 28 29 0 29 30 0 30 27 0 22 23 0 24 21 0 26 31 0 31 32 0 32 33 0 33 34 0
		 34 25 0 35 36 0 35 37 0 37 38 0 38 36 0 36 39 0 39 40 0 40 35 0 41 38 0 37 42 0 42 41 0
		 39 43 0 43 44 0 44 40 0 25 18 0 20 45 1 45 26 0 46 47 0 43 48 0 48 49 0 49 44 0 47 50 0
		 50 51 0 51 46 0 46 52 0 52 53 0 53 47 0 48 53 0 52 49 0 42 45 0 19 41 0 50 30 0 29 51 0
		 29 52 1 53 30 1 28 54 0 54 55 1 55 17 0 2 9 1 14 4 1 5 31 1 34 6 1 7 13 1 10 1 1
		 16 56 0 56 57 1 57 27 0 55 56 0 9 14 0 13 10 0 32 54 0 54 57 0 57 33 0 55 2 0 1 56 0;
	setAttr -s 34 -ch 192 ".fc[0:33]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 11
		mu 0 4 8 9 10 11
		f 4 12 13 14 15
		mu 0 4 12 13 14 15
		f 4 16 -4 17 18
		mu 0 4 16 17 18 19
		f 3 19 20 21
		mu 0 3 20 21 22
		f 4 22 -8 23 24
		mu 0 4 23 24 25 26
		f 4 25 -6 26 27
		mu 0 4 27 28 29 30
		f 4 28 -16 29 -12
		mu 0 4 31 32 33 34
		f 5 30 55 -22 56 57
		mu 0 5 36 35 63 64 65
		f 4 31 32 33 34
		mu 0 4 37 38 39 40
		f 4 35 -28 36 -25
		mu 0 4 41 42 43 44
		f 6 37 38 39 40 41 -31
		mu 0 6 36 45 46 47 48 35
		f 4 42 46 47 48
		mu 0 4 49 50 55 56
		f 4 43 44 45 -43
		mu 0 4 51 52 53 54
		f 4 49 -45 50 51
		mu 0 4 57 58 59 60
		f 4 52 53 54 -48
		mu 0 4 55 61 62 56
		f 4 58 62 63 64
		mu 0 4 66 67 72 73
		f 4 59 60 61 -54
		mu 0 4 68 69 70 71
		f 4 65 66 67 -59
		mu 0 4 74 75 76 77
		f 4 68 -67 69 -61
		mu 0 4 78 79 80 81
		f 5 70 -57 -21 71 -52
		mu 0 5 82 83 84 85 86
		f 4 72 -34 73 -64
		mu 0 4 87 40 88 89
		f 4 -74 74 -66 -65
		mu 0 4 89 88 90 91
		f 4 -68 75 -73 -63
		mu 0 4 92 93 40 87
		f 25 -33 76 77 78 -18 -3 79 -9 -30 -15 80 -23 -37 -27 81 -38 -58 -71 -51 -44 -49 -55
		 -62 -70 -75
		mu 0 25 88 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114
		 115 116 90
		f 26 -69 -60 -53 -47 -46 -50 -72 -20 -56 -42 82 -26 -36 -24 83 -13 -29 -11 84 -1 -17
		 85 86 87 -35 -76
		mu 0 26 93 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135
		 136 137 138 139 37 40
		f 4 -79 88 -86 -19
		mu 0 4 140 141 142 143
		f 4 89 -14 90 -10
		mu 0 4 144 145 146 147
		f 4 91 92 93 -40
		mu 0 4 148 149 139 150
		f 4 94 -2 95 -89
		mu 0 4 151 152 153 154
		f 4 -77 -32 -88 -93
		mu 0 4 95 94 155 156
		f 9 -87 -96 -85 -91 -84 -7 -83 -41 -94
		mu 0 9 139 138 135 134 131 130 127 126 150
		f 9 -82 -5 -81 -90 -80 -95 -78 -92 -39
		mu 0 9 108 107 104 103 100 99 96 95 157;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube14";
	rename -uid "D3B5D712-4929-336E-F99C-5D8CBFCA28E9";
createNode mesh -n "pCube14Shape" -p "pCube14";
	rename -uid "52F951E8-4C18-0F62-7DC2-AEB76E4F5871";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "wall9";
	rename -uid "796B43AD-4D71-A9A7-FEF5-9A85F33025B1";
	setAttr ".rp" -type "double3" -6.9490002441406249 12.9 0 ;
	setAttr ".sp" -type "double3" -6.9490002441406249 12.9 0 ;
createNode mesh -n "wall9Shape" -p "wall9";
	rename -uid "7CFB45A6-41A0-85A2-05A0-1C9CEB8758DE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 226 ".uvst[0].uvsp[0:225]" -type "float2" 0.4965111 0 0.4965111
		 0.25 0.52151108 0.25 0.52151108 0 0.4965111 0.5 0.4965111 0.75 0.52151108 0.75 0.52151108
		 0.5 0.4965111 0.5 0.4965111 0.75 0.52151108 0.75 0.52151108 0.5 0.4965111 1 0.52151108
		 1 0.4965111 1 0.52151108 1 0.4965111 0.25 0.52151108 0.25 0.4965111 0.25 0.52151108
		 0.25 0.4965111 0 0.52151108 0 0.3988255 1 0.3988255 0.97692645 0.39573154 0.97677565
		 0.39573157 1 0.4965111 0 0.52151108 0 0.4965111 0.5 0.4965111 0.75 0.52151108 0.75
		 0.52151108 0.5 0.39573157 1.0085531e-17 0.39573157 0.044192087 0.39882547 0.044653188
		 0.3988255 -2.6294421e-17 0.4965111 0.52992427 0.4965111 0.75 0.52151108 0.75 0.52151108
		 0.52992427 0.4965111 1 0.52151108 1 0.4965111 1 0.52151108 1 0.4965111 0.25 0.52151108
		 0.25 0.3988255 0.04854976 0.39573157 0.048088655 0.52151108 0.49648696 0.52151108
		 0.25 0.4965111 0.25 0.4965111 0.49648696 0.4965111 0 0.52151108 0 0.4965111 0 0.52151108
		 0 0.39248008 0.12221 0.39508873 0.12221 0.4965111 0.5 0.4965111 0.75 0.52151108 0.75
		 0.52151108 0.5 0.39248008 0.15242569 0.39508873 0.15242569 0.4965111 1 0.52151108
		 1 0.4965111 0.25 0.52151108 0.25 0.49651107 0.8503654 0.4965111 1 0.52151108 1 0.52151108
		 0.8503654 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.4965111 0 0.52151108 0 0.52151108
		 0.37028527 0.52151108 0.25 0.4965111 0.25 0.4965111 0.37028527 0.4965111 0 0.52151108
		 0 0.39508876 0.18497926 0.39248008 0.18497926 0.4965111 0.5 0.4965111 0.75 0.52151108
		 0.75 0.52151108 0.5 0.4965111 1 0.52151108 1 0.39573157 0.25 0.3988255 0.25 0.39573157
		 0.25241807 0.3988255 0.25170335 0.4965111 0.25 0.52151108 0.25 0.4965111 0 0.52151108
		 0 0.4965111 0.5 0.4965111 0.75 0.52151108 0.75 0.52151108 0.5 0.4965111 1 0.52151108
		 1 0.55661321 0.5 0.375 0.5 0.55500209 0.25 0.4965111 0.25 0.52151108 0.25 0.4965111
		 0 0.52151108 0 0.54884225 0.22965117 0.57473224 0.22965115 0.55375099 0.2497649 0.55483711
		 0.50033373 0.5747323 0.52034879 0.54884225 0.52034885 0.54884225 0.53003877 0.45121598
		 0.22965115 0.54884225 0.1879845 0.60189563 0.1879845 0.58691269 0.2109672 0.58104932
		 0.21996124 0.54884225 0.21996124 0.45121598 0.21996123 0.45121598 0.1879845 0.45121598
		 0.17829457 0.45121598 0.14631782 0.45121598 0.13662791 0.45121598 0.10465116 0.45121601
		 0.094961241 0.45121598 0.062984496 0.45121598 0.053294573 0.54884225 0.053294573
		 0.54884225 0.062984496 0.60265183 0.062984496 0.60265183 0.094961241 0.54884231 0.094961241
		 0.54884225 0.10465116 0.60265183 0.10465117 0.60265183 0.13662791 0.54884225 0.13662791
		 0.54884225 0.14631782 0.60265183 0.14631782 0.60265177 0.17829457 0.54884225 0.17829457
		 0.39740643 0.52034885 0.3974064 0.53003877 0.45121601 0.53003871 0.45121598 0.56201553
		 0.39740646 0.56201553 0.39740643 0.57170546 0.45121598 0.5717054 0.45121598 0.60368216
		 0.3974064 0.60368216 0.39740643 0.61337209 0.45121598 0.61337209 0.45121598 0.64534879
		 0.3974064 0.64534879 0.39740643 0.65503877 0.45121598 0.65503877 0.45121598 0.68701553
		 0.39740643 0.68701553 0.39740643 0.69670546 0.45121598 0.69670546 0.54884225 0.6967054
		 0.60265183 0.6967054 0.625 0.75 0.375 0.75 0.625 0 0.60265183 0.053294573 0.3974064
		 0.053294573 0.39740646 0.062984496 0.39740643 0.094961241 0.39740643 0.10465116 0.39740643
		 0.13662791 0.39740643 0.14631782 0.39740643 0.17829457 0.39740646 0.1879845 0.39740643
		 0.21996124 0.39740643 0.22965117 0.58104932 0.53003877 0.58691269 0.5390327 0.60189569
		 0.56201553 0.54884225 0.56201547 0.54884219 0.57170546 0.60265177 0.5717054 0.60265183
		 0.60368216 0.54884225 0.60368216 0.54884225 0.61337209 0.60265183 0.61337209 0.60265183
		 0.64534885 0.54884225 0.64534885 0.54884225 0.65503871 0.60265183 0.65503877 0.60265183
		 0.68701547 0.54884225 0.68701553 0.45121598 0.52034879 0.4965111 0.5 0.52151108 0.5
		 0.4965111 0.75 0.4965111 1 0.52151108 1 0.52151108 0.75 0.60265177 0.18682463 0.625
		 0.17578053 0.6113168 0.17353313 0.625 0.57406747 0.60265177 0.56317538 0.61122745
		 0.57632953 0.4965111 0 0.4965111 0.25 0.52151108 0.25 0.52151108 0 0.875 0 0.87499994
		 0.17593248 0.4965111 0.5 0.52151108 0.5 0.4965111 0.75 0.4965111 1 0.52151108 1 0.52151108
		 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 98 ".vt[0:97]"  -6.99900007 9.80000019 -2.53002906 -6.99900007 10.80000019 -2.53002906
		 -6.89900017 10.80000019 -2.53002906 -6.89900017 9.80000019 -2.53002906 -6.99900007 6.5 2.52701211
		 -6.99900007 5.5 2.52701211 -6.89900017 5.5 2.52701211 -6.89900017 6.5 2.52701211
		 -6.99900007 15.10000038 -5.31736469 -6.99900007 14.10000038 -5.31736469 -6.89900017 14.10000038 -5.31736469
		 -6.89900017 15.10000038 -5.31736469 -6.99900007 5.5 5.31434679 -6.89900017 5.5 5.31434679
		 -6.99900007 14.10000038 -2.53002906 -6.89900017 14.10000038 -2.53002906 -6.99900007 6.5 5.31434679
		 -6.89900017 6.5 5.31434679 -6.99900007 15.10000038 -2.53002906 -6.89900017 15.10000038 -2.53002906
		 -6.89900017 17.90861893 -5.76621294 -6.89900017 18.14055252 -6.4749999 -6.99900007 18.15623283 -6.4749999
		 -6.99900007 17.9227829 -5.76157856 -6.99900007 10.80000019 2.52701211 -6.99900007 9.80000019 2.52701211
		 -6.89900017 9.80000019 2.52701211 -6.89900017 10.80000019 2.52701211 -6.99900007 19.28030205 -5.31736469
		 -6.89900017 19.28030205 -5.31736469 -6.99900007 18.39999962 -5.31736469 -6.89900017 18.39999962 -5.31736469
		 -6.99900007 9.80000019 5.31434679 -6.89900017 9.80000019 5.31434679 -6.99900007 18.39999962 -2.53002906
		 -6.89900017 18.39999962 -2.53002906 -6.99900007 10.80000019 5.31434679 -6.89900017 10.80000019 5.31434679
		 -6.89900017 19.39999962 -5.27819633 -6.99900007 19.39999962 -5.27819633 -6.89900017 19.39999962 -2.53002906
		 -6.99900007 19.39999962 -2.53002906 -6.99900007 21.77181625 -4.50207996 -6.89900017 21.77181625 -4.50207996
		 -6.99900007 15.10000038 2.52701211 -6.99900007 14.10000038 2.52701211 -6.89900017 14.10000038 2.52701211
		 -6.89900017 15.10000038 2.52701211 -6.99900007 22.70000076 -4.1983552 -6.89900017 22.70000076 -4.1983552
		 -6.99900007 14.10000038 5.31434679 -6.89900017 14.10000038 5.31434679 -6.99900007 15.10000038 5.31434679
		 -6.89900017 15.10000038 5.31434679 -6.99900007 22.70000076 -2.53002906 -6.89900017 22.70000076 -2.53002906
		 -6.99900007 0 6.4749999 -6.89900017 0 6.4749999 -6.89900017 25.79999924 6.4749999
		 -6.99900007 25.79999924 6.4749999 -6.89900017 23.70000076 -3.87113094 -6.89900017 23.70000076 -2.53002906
		 -6.99900007 23.70000076 -2.53002906 -6.99900007 23.70000076 -3.87113094 -6.99900007 19.39999962 2.52701211
		 -6.99900007 18.39999962 2.52701211 -6.89900017 18.39999962 2.52701211 -6.89900017 19.39999962 2.52701211
		 -6.99900007 18.39999962 5.31434679 -6.89900017 18.39999962 5.31434679 -6.99900007 25.76555824 -2.84056091
		 -6.89900017 25.77573967 -2.78429985 -6.99900007 25.79999924 -2.93256474 -6.89900017 25.79999924 -2.84910941
		 -6.99900007 19.39999962 5.31434679 -6.89900017 19.39999962 5.31434679 -6.99900007 23.70000076 2.52701211
		 -6.99900007 22.70000076 2.52701211 -6.89900017 22.70000076 2.52701211 -6.89900017 23.70000076 2.52701211
		 -6.99900007 22.70000076 5.31434679 -6.89900017 22.70000076 5.31434679 -6.99900007 23.70000076 5.31434679
		 -6.89900017 23.70000076 5.31434679 -6.89900017 5.5 -2.53002906 -6.89900017 6.5 -2.53002906
		 -6.89900017 6.5 -5.31736469 -6.89900017 9.80000019 -5.31736469 -6.89900017 10.80000019 -5.31736469
		 -6.99900007 5.5 -2.53002906 -6.99900007 5.5 -5.31736469 -6.99900007 0 -6.4749999
		 -6.89900017 0 -6.4749999 -6.89900017 5.5 -5.31736469 -6.99900007 10.80000019 -5.31736469
		 -6.99900007 9.80000019 -5.31736469 -6.99900007 6.5 -5.31736469 -6.99900007 6.5 -2.53002906;
	setAttr -s 170 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0 7 4 0 8 9 0
		 9 10 0 10 11 0 11 8 0 5 12 0 12 13 0 13 6 0 9 14 0 14 15 0 15 10 0 16 4 0 7 17 0
		 17 16 0 18 8 0 11 19 0 19 18 0 12 16 0 17 13 0 20 21 0 21 22 0 22 23 0 23 20 0 14 18 0
		 19 15 0 24 25 0 25 26 0 26 27 0 27 24 0 23 28 0 28 29 0 29 20 0 28 30 0 30 31 0 31 29 0
		 25 32 0 32 33 0 33 26 0 30 34 0 34 35 0 35 31 0 36 24 0 27 37 0 37 36 0 38 39 0 38 40 0
		 40 41 0 41 39 0 32 36 0 37 33 0 34 41 0 40 35 0 39 42 0 42 43 1 43 38 0 44 45 0 45 46 0
		 46 47 0 47 44 0 42 48 0 48 49 0 49 43 0 45 50 0 50 51 0 51 46 0 52 44 0 47 53 0 53 52 0
		 48 54 0 54 55 0 55 49 0 56 57 0 57 58 0 58 59 0 59 56 0 50 52 0 53 51 0 60 61 0 61 62 0
		 62 63 0 63 60 0 54 62 0 61 55 0 64 65 0 65 66 0 66 67 0 67 64 0 65 68 0 68 69 0 69 66 0
		 63 70 0 70 71 0 71 60 0 70 72 0 72 73 0 73 71 0 74 64 0 67 75 0 75 74 0 68 74 0 75 69 0
		 76 77 0 77 78 0 78 79 0 79 76 0 77 80 0 80 81 0 81 78 0 72 59 0 58 73 0 82 76 0 79 83 0
		 83 82 0 80 82 0 83 81 0 58 61 1 54 59 1 79 40 1 58 79 1 78 67 1 66 47 1 46 27 1 26 7 1
		 6 84 1 84 85 0 85 86 0 86 87 1 87 3 0 2 88 0 88 10 1 11 31 1 59 82 1 77 64 1 65 44 1
		 45 24 1 25 4 1 5 89 1 89 90 0 90 91 1 91 56 0 57 92 0 92 93 1 93 84 0 30 8 1 9 94 1
		 94 1 0 0 95 0 95 96 1 96 97 0 97 89 0 94 88 0 87 95 0 88 87 0 86 93 0 92 21 0 22 91 0
		 90 96 0 95 94 0 97 85 0;
	setAttr ".ed[166:169]" 84 89 0 92 91 0 96 86 0 93 90 0;
	setAttr -s 58 -ch 340 ".fc[0:57]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 11
		mu 0 4 8 9 10 11
		f 4 12 13 14 -6
		mu 0 4 5 12 13 6
		f 4 15 16 17 -10
		mu 0 4 9 14 15 10
		f 4 18 -8 19 20
		mu 0 4 16 4 7 17
		f 4 21 -12 22 23
		mu 0 4 18 8 11 19
		f 4 24 -21 25 -14
		mu 0 4 20 16 17 21
		f 4 26 27 28 29
		mu 0 4 22 23 24 25
		f 4 30 -24 31 -17
		mu 0 4 26 18 19 27
		f 4 32 33 34 35
		mu 0 4 28 29 30 31
		f 4 36 37 38 -30
		mu 0 4 32 33 34 35
		f 4 39 40 41 -38
		mu 0 4 36 37 38 39
		f 4 42 43 44 -34
		mu 0 4 29 40 41 30
		f 4 45 46 47 -41
		mu 0 4 37 42 43 38
		f 4 48 -36 49 50
		mu 0 4 44 28 31 45
		f 4 51 59 60 61
		mu 0 4 46 47 56 57
		f 4 52 53 54 -52
		mu 0 4 48 49 50 51
		f 4 55 -51 56 -44
		mu 0 4 52 44 45 53
		f 4 57 -54 58 -47
		mu 0 4 54 50 49 55
		f 4 62 63 64 65
		mu 0 4 58 59 60 61
		f 4 66 67 68 -61
		mu 0 4 56 62 63 57
		f 4 69 70 71 -64
		mu 0 4 59 64 65 60
		f 4 72 -66 73 74
		mu 0 4 66 58 61 67
		f 4 75 76 77 -68
		mu 0 4 68 69 70 71
		f 4 78 79 80 81
		mu 0 4 72 73 74 75
		f 4 82 -75 83 -71
		mu 0 4 76 66 67 77
		f 4 84 85 86 87
		mu 0 4 78 79 80 81
		f 4 88 -86 89 -77
		mu 0 4 82 80 79 83
		f 4 -88 97 98 99
		mu 0 4 84 85 92 93
		f 4 90 91 92 93
		mu 0 4 86 87 88 89
		f 4 94 95 96 -92
		mu 0 4 87 90 91 88
		f 4 100 101 102 -99
		mu 0 4 92 94 95 93
		f 4 103 -94 104 105
		mu 0 4 96 86 89 97
		f 4 106 -106 107 -96
		mu 0 4 98 96 97 99
		f 4 108 109 110 111
		mu 0 4 100 101 102 103
		f 4 112 113 114 -110
		mu 0 4 101 104 105 102
		f 4 115 -81 116 -102
		mu 0 4 106 107 74 108
		f 4 117 -112 118 119
		mu 0 4 109 100 103 110
		f 4 120 -120 121 -114
		mu 0 4 111 109 110 112
		f 5 -85 -100 -103 -117 122
		mu 0 5 113 114 115 108 74
		f 6 -116 -101 -98 -87 -89 123
		mu 0 6 107 106 116 117 118 119
		f 8 124 -53 -62 -69 -78 -90 -123 125
		mu 0 8 120 121 122 123 124 125 113 74
		f 24 -111 126 -93 127 -65 128 -35 129 -7 130 131 132 133 134 -3 135 136 -18 -32 -23
		 137 -48 -59 -125
		mu 0 24 120 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144
		 145 146 147 121
		f 24 138 -121 -113 139 -104 -107 -95 140 -73 -83 -70 141 -49 -56 -43 142 -19 -25 -13
		 143 144 145 146 -82
		mu 0 24 107 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166
		 167 168 169 170
		f 25 147 148 149 -131 -15 -26 -20 -130 -45 -57 -50 -129 -72 -84 -74 -128 -97 -108 -105
		 -127 -115 -122 -119 -126 -80
		mu 0 25 73 171 172 135 134 173 174 133 132 175 176 131 130 177 178 129 128 179 180 127
		 126 181 182 120 74
		f 30 -124 -76 -67 -60 -55 -58 -46 150 -22 -31 -16 151 152 -1 153 154 155 156 -144 -5
		 -143 -33 -142 -63 -141 -91 -140 -109 -118 -139
		mu 0 30 107 119 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 167 166
		 163 162 159 158 155 154 151 150 199 148
		f 4 -153 157 -136 -2
		mu 0 4 1 200 201 2
		f 4 -154 -4 -135 158
		mu 0 4 202 203 204 205
		f 11 -42 -138 -11 -137 159 -134 160 -149 161 -27 -39
		mu 0 11 206 146 145 142 141 138 137 172 171 207 208
		f 11 162 -146 163 -155 164 -152 -9 -151 -40 -37 -29
		mu 0 11 209 169 168 197 196 193 192 189 188 210 211
		f 4 -165 -159 -160 -158
		mu 0 4 200 202 205 201
		f 4 -157 165 -132 166
		mu 0 4 212 213 214 215
		f 4 -162 167 -163 -28
		mu 0 4 207 171 216 217
		f 4 -156 168 -133 -166
		mu 0 4 213 218 219 214
		f 4 -145 -167 -150 169
		mu 0 4 220 221 222 223
		f 4 -164 -170 -161 -169
		mu 0 4 218 220 223 219
		f 4 -147 -168 -148 -79
		mu 0 4 170 169 224 225;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "across14";
	rename -uid "07FB7F39-4B2D-2C69-24EE-2A875F223F7F";
	setAttr ".rp" -type "double3" -7.0719873046875001 12.403279418945313 0 ;
	setAttr ".sp" -type "double3" -7.0719873046875001 12.403279418945313 0 ;
createNode mesh -n "across14Shape" -p "across14";
	rename -uid "0CB23A94-41C8-DE99-48A1-55852DB0AA4B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 162 ".uvst[0].uvsp[0:161]" -type "float2" 0.375 0.23192315
		 0.375 0 0.625 0 0.625 0.23192315 0.875 0 0.875 0.24423902 0.125 0.24423902 0.125
		 0 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.625 0.50576097 0.625 0.75 0.375 0.75 0.375
		 0.50576097 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.125 0 0.375 0 0.375 0.25 0.125
		 0.25 0.625 0.5 0.375 0.5 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.875 0 0.875 0.25
		 0.125 0 0.125 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.375 0.75 0.625 0.75 0.625
		 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.625 0.5 0.375 0.5 0.38728556 0.0027280492
		 0.38728553 0.042521592 0.39966121 0.044366002 0.39966124 0.0045724581 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0.5 0.625 0.5
		 0.625 0.75 0.375 0.75 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.875 0 0.875 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.125
		 0 0.125 0.25 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.625 0.5 0.375 0.5 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.375 0 0.375 0.25
		 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.38535869 0.1627079 0.38535872 0.20250145 0.39579344 0.20250145
		 0.39579344 0.1627079 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.625 0.5 0.375 0.5 0.625 1 0.375 1 0.375 0.25 0.625 0.25 0.125 0 0.375
		 0 0.125 0.25 0.625 0.55584049 0.625 0.75 0.375 0.75 0.375 0.55584049 0.625 0 0.875
		 0 0.875 0.25 0.625 1 0.375 1 0.125 0.19415952 0.125 0 0.375 0 0.375 0.18184365 0.625
		 1 0.375 1 0.625 0.18184365 0.625 0 0.875 0 0.875 0.19415952 0.625 1 0.375 1 0.625
		 1 0.375 1 0.625 1 0.375 1 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 88 ".vt[0:87]"  -6.87198734 23.015853882 -4.09499979 -6.87198734 -0.0034997559 -4.09499979
		 -7.27198744 -0.0034997559 -4.09499979 -7.27198744 23.015853882 -4.09499979 -7.27198744 -0.0034997559 -3.69499993
		 -7.27198744 24.23825645 -3.69499993 -6.87198734 24.23825645 -3.69499993 -6.87198734 -0.0034997559 -3.69499993
		 -6.95427608 8.39999962 2.070526838 -7.15427589 8.39999962 2.070526838 -7.15427589 8.39999962 -2.070526838
		 -6.95427608 8.39999962 -2.070526838 -7.15427589 8.80000019 2.070526838 -7.15427589 8.80000019 -2.070526838
		 -6.95427608 8.80000019 -2.070526838 -6.95427608 8.80000019 2.070526838 -6.87198734 -0.0034997559 -2.52600002
		 -7.27198744 -0.0034997559 -2.52600002 -7.27198744 24.81005859 -2.52600002 -6.87198734 24.81005859 -2.52600002
		 -7.27198744 -0.0034997559 -1.52600002 -7.27198744 24.81005859 -1.52600002 -6.87198734 -0.0034997559 -1.52600002
		 -6.87198734 24.81005859 -1.52600002 -6.95427608 4.55000019 6.46176004 -7.15427589 4.55000019 6.46176004
		 -7.15427589 4.050000191 6.46176004 -6.95427608 4.050000191 6.46176004 -6.95427608 12.69999981 -2.070526838
		 -7.15427589 12.69999981 -2.070526838 -7.15427589 13.10000038 -2.070526838 -6.95427608 13.10000038 -2.070526838
		 -6.95427608 12.69999981 2.070526838 -7.15427589 12.69999981 2.070526838 -7.15427589 13.10000038 2.070526838
		 -6.95427608 13.10000038 2.070526838 -7.27198744 18.045251846 -5.72150326 -7.27198744 19.26765442 -5.32150316
		 -6.87198734 19.26765442 -5.32150316 -6.87198734 18.045251846 -5.72150326 -6.87198734 -0.0034997559 1.52646685
		 -7.27198744 -0.0034997559 1.52646685 -7.27198744 24.81005859 1.52646685 -6.87198734 24.81005859 1.52646685
		 -7.27198744 -0.0034997559 2.52646685 -7.27198744 24.81005859 2.52646685 -6.87198734 -0.0034997559 2.52646685
		 -6.87198734 24.81005859 2.52646685 -6.95427608 17 -2.070526838 -7.15427589 17 -2.070526838
		 -7.15427589 17.39999962 -2.070526838 -6.95427608 17.39999962 -2.070526838 -6.87198734 -0.0034997559 3.69514561
		 -7.27198744 -0.0034997559 3.69514561 -7.27198744 24.81005859 3.69514561 -6.87198734 24.81005859 3.69514561
		 -7.27198744 -0.0034997559 4.095145702 -7.27198744 24.81005859 4.095145702 -6.87198734 24.81005859 4.095145702
		 -6.87198734 -0.0034997559 4.095145702 -6.95427608 17 2.070526838 -7.15427589 17 2.070526838
		 -7.15427589 17.39999962 2.070526838 -6.95427608 17.39999962 2.070526838 -7.27198744 -0.0034997559 5.32200003
		 -7.27198744 -0.0034997559 5.72200012 -7.27198744 24.81005859 5.72200012 -7.27198744 24.81005859 5.32200003
		 -6.87198734 -0.0034997559 5.32200003 -6.87198734 24.81005859 5.32200003 -6.87198734 24.81005859 5.72200012
		 -6.87198734 -0.0034997559 5.72200012 -6.95427608 21.29999924 -2.070526838 -7.15427589 21.29999924 -2.070526838
		 -7.15427589 21.70000076 -2.070526838 -6.95427608 21.70000076 -2.070526838 -6.95427608 21.29999924 2.070526838
		 -7.15427589 21.29999924 2.070526838 -7.15427589 21.70000076 2.070526838 -6.95427608 21.70000076 2.070526838
		 -6.95427608 4.55000019 -6.46176004 -7.15427589 4.55000019 -6.46176004 -6.95427608 4.050000191 -6.46176004
		 -7.27198744 -0.0034997559 -5.32150316 -6.87198734 -0.0034997559 -5.32150316 -7.15427589 4.050000191 -6.46176004
		 -6.87198734 -0.0034997559 -5.72150326 -7.27198744 -0.0034997559 -5.72150326;
	setAttr -s 132 ".ed[0:131]"  0 1 0 1 2 0 2 3 0 3 0 1 2 4 0 4 5 0 5 3 0
		 6 7 0 7 1 0 0 6 0 8 9 0 9 10 0 10 11 0 11 8 0 4 7 0 6 5 0 9 12 0 12 13 0 13 10 0
		 11 14 0 14 15 0 15 8 0 14 13 0 12 15 0 16 17 0 17 18 0 18 19 0 19 16 0 17 20 0 20 21 0
		 21 18 0 22 16 0 19 23 0 23 22 0 24 25 0 25 26 0 26 27 0 27 24 0 28 29 0 29 30 0 30 31 0
		 31 28 0 23 21 0 20 22 0 32 33 0 33 29 0 28 32 0 33 34 0 34 30 0 31 35 0 35 32 0 34 35 0
		 36 37 0 37 38 0 38 39 0 39 36 1 40 41 0 41 42 0 42 43 0 43 40 0 41 44 0 44 45 0 45 42 0
		 46 40 0 43 47 0 47 46 0 47 45 0 44 46 0 48 49 0 49 50 0 50 51 0 51 48 0 52 53 0 53 54 0
		 54 55 0 55 52 0 53 56 0 56 57 0 57 54 0 58 57 0 56 59 0 59 58 0 59 52 0 55 58 0 60 61 0
		 61 49 0 48 60 0 61 62 0 62 50 0 51 63 0 63 60 0 62 63 0 64 65 0 65 66 0 66 67 0 67 64 0
		 68 64 0 67 69 0 69 68 0 70 66 0 65 71 0 71 70 0 71 68 0 69 70 0 72 73 0 73 74 0 74 75 0
		 75 72 0 76 77 0 77 73 0 72 76 0 77 78 0 78 74 0 75 79 0 79 76 0 78 79 0 80 81 0 81 25 0
		 24 80 0 27 82 0 82 80 0 37 83 0 83 84 0 84 38 0 85 26 0 81 85 0 85 82 0 84 86 0 86 39 0
		 36 87 0 87 83 0 86 87 0;
	setAttr -s 66 -ch 264 ".fc[0:65]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 -3 4 5 6
		mu 0 4 3 2 4 5
		f 4 7 8 -1 9
		mu 0 4 6 7 1 0
		f 4 10 11 12 13
		mu 0 4 8 9 10 11
		f 4 -6 14 -8 15
		mu 0 4 12 13 14 15
		f 4 -12 16 17 18
		mu 0 4 16 17 18 19
		f 4 -14 19 20 21
		mu 0 4 20 21 22 23
		f 4 22 -18 23 -21
		mu 0 4 22 19 24 25
		f 4 24 25 26 27
		mu 0 4 26 27 28 29
		f 4 28 29 30 -26
		mu 0 4 27 30 31 28
		f 4 31 -28 32 33
		mu 0 4 32 26 29 33
		f 4 -24 -17 -11 -22
		mu 0 4 25 24 9 8
		f 4 34 35 36 37
		mu 0 4 34 35 36 37
		f 4 38 39 40 41
		mu 0 4 38 39 40 41
		f 4 42 -30 43 -34
		mu 0 4 42 43 44 45
		f 4 44 45 -39 46
		mu 0 4 46 47 48 49
		f 4 -46 47 48 -40
		mu 0 4 39 50 51 40
		f 4 -47 -42 49 50
		mu 0 4 52 38 41 53
		f 4 -41 -49 51 -50
		mu 0 4 41 40 54 55
		f 4 52 53 54 55
		mu 0 4 56 57 58 59
		f 4 56 57 58 59
		mu 0 4 60 61 62 63
		f 4 60 61 62 -58
		mu 0 4 61 64 65 62
		f 4 63 -60 64 65
		mu 0 4 66 60 63 67
		f 4 66 -62 67 -66
		mu 0 4 68 69 70 71
		f 4 -52 -48 -45 -51
		mu 0 4 55 54 47 46
		f 4 68 69 70 71
		mu 0 4 72 73 74 75
		f 4 72 73 74 75
		mu 0 4 76 77 78 79
		f 4 76 77 78 -74
		mu 0 4 77 80 81 78
		f 4 79 -78 80 81
		mu 0 4 82 83 84 85
		f 4 82 -76 83 -82
		mu 0 4 86 76 79 87
		f 4 84 85 -69 86
		mu 0 4 88 89 90 91
		f 4 -86 87 88 -70
		mu 0 4 73 92 93 74
		f 4 -87 -72 89 90
		mu 0 4 94 72 75 95
		f 4 -71 -89 91 -90
		mu 0 4 75 74 96 97
		f 4 92 93 94 95
		mu 0 4 98 99 100 101
		f 4 96 -96 97 98
		mu 0 4 102 98 101 103
		f 4 99 -94 100 101
		mu 0 4 104 105 106 107
		f 4 102 -99 103 -102
		mu 0 4 108 102 103 109
		f 4 -92 -88 -85 -91
		mu 0 4 97 96 89 88
		f 4 104 105 106 107
		mu 0 4 110 111 112 113
		f 4 -7 -16 -10 -4
		mu 0 4 114 115 116 117
		f 4 108 109 -105 110
		mu 0 4 118 119 120 121
		f 4 -110 111 112 -106
		mu 0 4 111 122 123 112
		f 4 -111 -108 113 114
		mu 0 4 124 110 113 125
		f 4 -107 -113 115 -114
		mu 0 4 113 112 126 127
		f 4 -27 -31 -43 -33
		mu 0 4 29 28 43 42
		f 4 -116 -112 -109 -115
		mu 0 4 127 126 119 118
		f 4 -59 -63 -67 -65
		mu 0 4 63 62 69 68
		f 4 -75 -79 -80 -84
		mu 0 4 79 78 83 82
		f 4 -98 -95 -100 -104
		mu 0 4 103 101 105 104
		f 4 -13 -19 -23 -20
		mu 0 4 21 16 19 22
		f 4 -101 -93 -97 -103
		mu 0 4 107 106 128 129
		f 4 116 117 -35 118
		mu 0 4 130 131 35 34
		f 4 119 120 -119 -38
		mu 0 4 132 133 130 134
		f 4 121 122 123 -54
		mu 0 4 135 136 137 138
		f 4 124 -36 -118 125
		mu 0 4 139 140 141 131
		f 4 -37 -125 126 -120
		mu 0 4 37 36 142 143
		f 4 -124 127 128 -55
		mu 0 4 144 145 146 147
		f 4 -81 -77 -73 -83
		mu 0 4 85 84 148 149
		f 4 129 130 -122 -53
		mu 0 4 150 151 152 153
		f 4 -129 131 -130 -56
		mu 0 4 147 146 151 150
		f 4 -68 -61 -57 -64
		mu 0 4 71 70 154 155
		f 4 -44 -29 -25 -32
		mu 0 4 45 44 156 157
		f 4 -127 -126 -117 -121
		mu 0 4 133 139 131 130
		f 4 -15 -5 -2 -9
		mu 0 4 14 13 158 159
		f 4 -123 -131 -132 -128
		mu 0 4 137 136 160 161;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "gloor7";
	rename -uid "D9E67F09-4B01-9DF6-2CC0-A7AAE485BB42";
	setAttr ".rp" -type "double3" 0 25.711508789062499 0 ;
	setAttr ".sp" -type "double3" 0 25.711508789062499 0 ;
createNode mesh -n "gloor7Shape" -p "gloor7";
	rename -uid "6F14E84B-4F04-B42C-B668-5FB9141489CA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.39724758 0.20476398
		 0.39724758 0.20801933 0.50215626 0.19802038 0.50215626 0.20091105 0.18775588 0 0.375
		 0 0.375 0.25 0.18839003 0.25 0.625 0.21084011 0.7206676 0.17953533 0.71970534 0.17659482
		 0.625 0.20758477 0.52230328 0.5 0.625 0.5 0.625 0.75 0.52292532 0.75 0.625 0 0.625
		 0.25 0.875 0 0.875 0.25 0.625 1 0.375 1 0.375 0.81275588 0.4415783 0.81356573 0.51636964
		 0.81241715 0.51568103 0.43694872 0.44126725 0.4357563 0.37499997 0.43660995;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  -6.94999981 25.66150856 -3.21179628 -6.94999981 25.76150894 -3.17907381
		 -3.24824762 25.66150856 -3.17000675 -3.26554036 25.76150894 -3.13502407 -6.94999981 25.66150856 6.44999981
		 -6.94999981 25.76150894 6.44999981 0.87186438 25.76150894 -3.19655418 1.24006152 25.76150894 -6.44999981
		 1.27464676 25.66150856 -6.44999981 0.91015291 25.66150856 -3.22927666 6.94999981 25.76150894 -6.44999981
		 6.94999981 25.66150856 -6.44999981 6.94999981 25.66150856 6.44999981 6.94999981 25.76150894 6.44999981;
	setAttr -s 21 ".ed[0:20]"  0 1 0 2 0 0 1 3 0 3 2 1 0 4 0 4 5 0 5 1 0
		 6 7 0 7 8 0 8 9 0 9 6 0 3 6 0 9 2 0 7 10 0 10 11 0 11 8 0 4 12 0 12 13 0 13 5 0 12 11 0
		 10 13 0;
	setAttr -s 9 -ch 42 ".fc[0:8]" -type "polyFaces" 
		f 4 0 2 3 1
		mu 0 4 0 1 3 2
		f 4 4 5 6 -1
		mu 0 4 4 5 6 7
		f 4 -4 11 -11 12
		mu 0 4 2 3 8 11
		f 4 7 8 9 10
		mu 0 4 8 9 10 11
		f 4 13 14 15 -9
		mu 0 4 12 13 14 15
		f 4 16 17 18 -6
		mu 0 4 5 16 17 6
		f 4 19 -15 20 -18
		mu 0 4 16 18 19 17
		f 7 -16 -20 -17 -5 -2 -13 -10
		mu 0 7 15 14 20 21 22 23 24
		f 7 -19 -21 -14 -8 -12 -3 -7
		mu 0 7 6 17 13 12 25 26 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "gloor8";
	rename -uid "36C717BF-4E6B-6C0D-8372-8D8AF5BE52BB";
	setAttr ".rp" -type "double3" 0 21.55 0 ;
	setAttr ".sp" -type "double3" 0 21.55 0 ;
createNode mesh -n "gloor8Shape" -p "gloor8";
	rename -uid "EE82C13B-48D1-5B3A-F08E-90A886AF44DB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.39570063 0.07519792
		 0.3957006 0.078453273 0.50215626 0.081656642 0.50215626 0.078838304 0.16171107 0
		 0.375 0 0.375 0.25 0.16234034 0.25 0.625 0.075368166 0.625 0.072112806 0.68209565
		 0.056685075 0.68113339 0.053744577 0.51979339 0.5 0.625 0.5 0.625 0.75 0.51914763
		 0.75 0.625 0 0.625 0.25 0.875 0 0.875 0.25 0.625 1 0.375 1 0.375 0.7867111 0.44524938
		 0.7867111 0.52318168 0.7867111 0.52389657 0.46265966 0.44556415 0.46265966 0.375
		 0.46265966;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  -7 21.5 -4.59102488 -7 21.60000038 -4.5583024
		 -3.048407078 21.60000038 -4.5583024 -3.06603694 21.5 -4.59102488 -7 21.5 6.5 -7 21.60000038 6.5
		 1.33820951 21.60000038 -4.5583024 1.29817295 21.5 -4.59102488 1.10843158 21.60000038 -6.5
		 1.072267175 21.5 -6.5 7 21.60000038 -6.5 7 21.5 -6.5 7 21.5 6.5 7 21.60000038 6.5;
	setAttr -s 21 ".ed[0:20]"  0 1 0 1 2 0 2 3 1 3 0 0 0 4 0 4 5 0 5 1 0
		 2 6 0 6 7 0 7 3 0 6 8 0 8 9 0 9 7 0 8 10 0 10 11 0 11 9 0 4 12 0 12 13 0 13 5 0 12 11 0
		 10 13 0;
	setAttr -s 9 -ch 42 ".fc[0:8]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 -3 7 8 9
		mu 0 4 3 2 8 9
		f 4 4 5 6 -1
		mu 0 4 4 5 6 7
		f 4 10 11 12 -9
		mu 0 4 8 10 11 9
		f 4 13 14 15 -12
		mu 0 4 12 13 14 15
		f 4 16 17 18 -6
		mu 0 4 5 16 17 6
		f 4 19 -15 20 -18
		mu 0 4 16 18 19 17
		f 7 -16 -20 -17 -5 -4 -10 -13
		mu 0 7 15 14 20 21 22 23 24
		f 7 -19 -21 -14 -11 -8 -2 -7
		mu 0 7 6 17 13 12 25 26 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube15";
	rename -uid "21F95CFD-4DBE-E69F-3B33-A790781B3E30";
	setAttr ".rp" -type "double3" -7.0600000000000005 9.8238708496093761 -6.6240002441406247 ;
	setAttr ".sp" -type "double3" -7.0600000000000005 9.8238708496093761 -6.6240002441406247 ;
createNode mesh -n "pCube15Shape" -p "pCube15";
	rename -uid "8C25DA64-4C74-52EE-4752-01831AD988A8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.39063391 0.95729065
		 0.38765642 0.96454442 0.4000321 0.96514791 0.4000321 0.9521265 0.625 0.5525862 0.625
		 0.75 0.375 0.75 0.375 0.55321836 0.375 0 0.625 0 0.625 0.19801132 0.375 0.19810085
		 0.125 0.19678164 0.125 0 0.875 0 0.875 0.19741382 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -7.16376305 19.64253044 -6.6512866 -7.26000023 19.58324623 -6.42400026
		 -6.86000013 19.52052307 -6.42400026 -6.86000013 19.65141296 -6.82400036 -7.26000023 -0.003671875 -6.42400026
		 -6.86000013 -0.003671875 -6.42400026 -6.86000013 -0.003671875 -6.82400036 -7.16376305 -0.003671875 -6.6512866;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 1 4 0 4 5 0 5 2 0
		 6 7 0 7 0 0 3 6 0 5 6 0 7 4 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 4 5 6 7
		f 4 7 8 -4 9
		mu 0 4 8 9 10 11
		f 4 -7 10 -10 -3
		mu 0 4 12 13 8 11
		f 4 -9 11 -5 -1
		mu 0 4 10 9 14 15
		f 4 -6 -12 -8 -11
		mu 0 4 6 5 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7F475EE2-4998-AEDD-1E6C-D5B08932F8C1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6003A385-4444-6165-669E-D08B46122C1F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "9D3FD987-4D85-7DB9-F75C-3BB049DC6E73";
createNode displayLayerManager -n "layerManager";
	rename -uid "6E428591-4E88-4016-B919-538C148FE515";
createNode displayLayer -n "defaultLayer";
	rename -uid "54911EBE-49B0-3356-6569-8180E823E956";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F67584F7-42A8-ED08-2ED1-BFBA0F16DD4F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "886522F3-4DCE-0B52-1971-67A5D1702AD7";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B32F2C20-4482-FD7E-39D6-03A1282EDF25";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 382\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 382\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 382\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1119\n            -height 808\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 808\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 808\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0D5B5C0F-4DF9-1A7B-A85F-BB961CA2A3DE";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId9";
	rename -uid "06C60293-4E7D-BA57-0432-EBBA57D802CE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	rename -uid "028AB1E2-4566-2A39-BD36-039970BA47BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "47D90D36-445F-6B30-B2B2-A9865A4A547C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId22";
	rename -uid "649BBE9D-47C8-D9E8-EA7D-CFA6B6B0257A";
	setAttr ".ihi" 0;
createNode aiStandardSurface -n "aiStandardSurface1";
	rename -uid "363DA356-40FE-A4B9-FE3C-5D88EF4037E0";
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "82E53B9A-479B-1A87-10AF-C8835E6ABFAD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "C8772484-4593-2FAD-DA69-81BBE553D712";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "FAF59DB9-4604-E5B6-3E4F-24BE40B95692";
	setAttr ".version" -type "string" "2.0.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "8BB06FD8-4169-7E37-F4CD-8B8BF1533114";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "0B00FC93-4E35-EA80-E39C-1192669990DA";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "1B22D056-4B1E-C432-A71D-6CAB3C1D44B0";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode file -n "file1";
	rename -uid "16115D11-4454-3779-2690-0F9FA3E8B490";
	setAttr ".ftn" -type "string" "C:/Users/User/Desktop/MDDN343/TexturesCom_ConcreteBunkerDamaged0045_2_M 2.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "92C21944-40A4-EEE5-79FE-8BBBC0306FAD";
createNode groupId -n "groupId27";
	rename -uid "5E15F3EB-44E8-9D33-CA4D-6CA831F0314B";
	setAttr ".ihi" 0;
createNode renderLayerManager -n "first_building:renderLayerManager";
	rename -uid "E7AB7D3A-4E61-2892-A29B-B5AE13E544CC";
createNode renderLayer -n "first_building:defaultRenderLayer";
	rename -uid "9AD04428-4A48-A19F-367C-679E99689384";
	setAttr ".g" yes;
createNode groupId -n "first_building:groupId9";
	rename -uid "9581FD9F-424D-F36D-5479-A38D2F187ED9";
	setAttr ".ihi" 0;
createNode groupId -n "first_building:groupId16";
	rename -uid "4436DC47-467A-5B89-A6F7-AC98952ECDEC";
	setAttr ".ihi" 0;
createNode groupId -n "first_building:groupId19";
	rename -uid "882C7591-44ED-4E1A-5BC7-C698003FD1A6";
	setAttr ".ihi" 0;
createNode groupId -n "first_building:groupId22";
	rename -uid "8FFBE2EE-477F-F89F-6801-D982C0A81612";
	setAttr ".ihi" 0;
createNode aiStandardSurface -n "first_building:aiStandardSurface1";
	rename -uid "CA162698-4B70-87B7-99FB-FAABB58376AE";
createNode shadingEngine -n "first_building:aiStandardSurface1SG";
	rename -uid "AC6DCE60-4026-F9D3-1D67-4796CABFAA78";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "first_building:materialInfo1";
	rename -uid "0A9BF6A3-411E-7206-6968-75A9239DF284";
createNode file -n "first_building:file1";
	rename -uid "250D427B-490E-97DC-EA6C-9C90A9802D5F";
	setAttr ".ftn" -type "string" "C:/Users/User/Desktop/TexturesCom_ConcreteBunkerDamaged0045_2_M.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "first_building:place2dTexture1";
	rename -uid "E4D1A7DD-4184-B4C0-02A4-71B436A29039";
createNode groupId -n "first_building:groupId27";
	rename -uid "B96B20CF-4F87-6ABF-39CD-FFBA721E1C8F";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "first_building:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "E445D5B1-4A43-60B3-8D60-60B57D10643D";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839041 -471.80633356775758 ;
	setAttr ".tgi[0].vh" -type "double2" 930.92319420101069 486.09204728580863 ;
createNode groupId -n "groupId48";
	rename -uid "8BCA011D-4FBB-6CA1-3F1C-95A2F9D4C992";
	setAttr ".ihi" 0;
createNode groupId -n "groupId66";
	rename -uid "8781C5FF-4CFD-0AC8-0FD7-D18E0F739EF4";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "A6230F6E-418D-5DCE-5A0D-A4A1180D4B87";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -660.71425945985982 -492.14574118720697 ;
	setAttr ".tgi[0].vh" -type "double2" -472.61902883885472 517.1457401937962 ;
createNode polyCube -n "polyCube1";
	rename -uid "4903F7FC-4632-EE9D-ADCF-FD97928C0F8A";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode groupId -n "groupId67";
	rename -uid "265E6289-4FEC-F24F-4DA2-9786BD6A8C73";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	rename -uid "43942512-4489-17AF-9A24-0787008EE333";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube3";
	rename -uid "80B11327-4FFB-AA56-3721-F8B562FC6C4A";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode groupId -n "groupId102";
	rename -uid "211EC377-4E2A-50CF-966C-81B63730B868";
	setAttr ".ihi" 0;
createNode groupId -n "groupId103";
	rename -uid "D4ED9160-4041-6CC0-160A-74B349CE93C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId104";
	rename -uid "5203D585-4A1D-1193-A903-B094BA39712D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId105";
	rename -uid "7A8F650F-453A-0D05-5BE8-7C8E2D5A1B6F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId106";
	rename -uid "0625AACC-43E7-EC06-D193-71B848F43DFE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId107";
	rename -uid "BAA9360A-4E5B-1443-901E-42AB81CA1AAB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId108";
	rename -uid "219FB386-4663-C1A5-4F4F-5E8B9D0304FC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId109";
	rename -uid "565AD41C-4293-C587-D361-439023147787";
	setAttr ".ihi" 0;
createNode groupId -n "groupId110";
	rename -uid "0082D11F-490E-3638-737E-F197B4BABDC5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId111";
	rename -uid "112EC1E3-4984-6A60-2E00-D3AE603224E3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId112";
	rename -uid "D4DB2740-430C-FAF6-018B-B0B91CDBB51A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId162";
	rename -uid "409427BD-4C90-BB8A-CE56-EAA3A6857BE2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId167";
	rename -uid "4F314FC8-4A0A-E363-33B3-8B9FC54911CA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId175";
	rename -uid "147768FC-4AB7-50BB-FCDC-95A70064CA3E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId180";
	rename -uid "51608589-471A-E593-8E9A-C0B9416D1262";
	setAttr ".ihi" 0;
createNode groupId -n "groupId185";
	rename -uid "3EF12FEF-4209-2773-1DFA-E598AA697162";
	setAttr ".ihi" 0;
createNode groupId -n "groupId188";
	rename -uid "52DE1503-476D-DC73-55E6-3CBE1A92B544";
	setAttr ".ihi" 0;
createNode groupId -n "groupId194";
	rename -uid "9149BA5A-4DE8-2178-EA27-F2B6E5EBEB93";
	setAttr ".ihi" 0;
createNode groupId -n "groupId197";
	rename -uid "655F6861-48F8-99D7-6408-DB8C2C368DF0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId202";
	rename -uid "8BD850B3-4EC9-3CC4-AC27-A5A4B79D149A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId207";
	rename -uid "9D1C9C12-4E83-38A9-888D-C1818BC62C24";
	setAttr ".ihi" 0;
createNode groupId -n "groupId212";
	rename -uid "1A60663A-4717-FC1E-E0B2-EC9A1B7B880C";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 88;
	setAttr ".unw" 88;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 4 ".st";
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
	setAttr -s 43 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 14 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyCube1.out" "gloorShape.i";
connectAttr "groupId67.id" "pCube3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube3Shape.iog.og[0].gco";
connectAttr "groupId70.id" "pCube6Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube6Shape.iog.og[0].gco";
connectAttr "polyCube3.out" "pCubeShape1.i";
connectAttr "groupId102.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupId103.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupId104.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupId105.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupId106.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupId107.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupId108.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupId109.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupId110.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupId111.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupId112.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupId162.id" "wall5Shape.ciog.cog[0].cgid";
connectAttr "groupId167.id" "across11Shape.ciog.cog[1].cgid";
connectAttr "groupId175.id" "wall7Shape.ciog.cog[0].cgid";
connectAttr "groupId180.id" "across12Shape.ciog.cog[0].cgid";
connectAttr "groupId185.id" "wall8Shape.ciog.cog[0].cgid";
connectAttr "groupId188.id" "pCube14Shape.ciog.cog[0].cgid";
connectAttr "groupId194.id" "wall9Shape.ciog.cog[0].cgid";
connectAttr "groupId197.id" "across14Shape.ciog.cog[0].cgid";
connectAttr "groupId202.id" "gloor7Shape.ciog.cog[0].cgid";
connectAttr "groupId207.id" "gloor8Shape.ciog.cog[0].cgid";
connectAttr "groupId212.id" "pCube15Shape.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "first_building:aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "first_building:aiStandardSurface1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "aiStandardSurface1.base_color";
connectAttr "aiStandardSurface1.out" "aiStandardSurface1SG.ss";
connectAttr "aiStandardSurface1SG.msg" "materialInfo1.sg";
connectAttr "aiStandardSurface1.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "first_building:renderLayerManager.rlmi[0]" "first_building:defaultRenderLayer.rlid"
		;
connectAttr "first_building:file1.oc" "first_building:aiStandardSurface1.base_color"
		;
connectAttr "first_building:aiStandardSurface1.out" "first_building:aiStandardSurface1SG.ss"
		;
connectAttr "first_building:aiStandardSurface1SG.msg" "first_building:materialInfo1.sg"
		;
connectAttr "first_building:aiStandardSurface1.msg" "first_building:materialInfo1.m"
		;
connectAttr "first_building:file1.msg" "first_building:materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "first_building:file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "first_building:file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "first_building:file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "first_building:file1.ws";
connectAttr "first_building:place2dTexture1.c" "first_building:file1.c";
connectAttr "first_building:place2dTexture1.tf" "first_building:file1.tf";
connectAttr "first_building:place2dTexture1.rf" "first_building:file1.rf";
connectAttr "first_building:place2dTexture1.mu" "first_building:file1.mu";
connectAttr "first_building:place2dTexture1.mv" "first_building:file1.mv";
connectAttr "first_building:place2dTexture1.s" "first_building:file1.s";
connectAttr "first_building:place2dTexture1.wu" "first_building:file1.wu";
connectAttr "first_building:place2dTexture1.wv" "first_building:file1.wv";
connectAttr "first_building:place2dTexture1.re" "first_building:file1.re";
connectAttr "first_building:place2dTexture1.of" "first_building:file1.of";
connectAttr "first_building:place2dTexture1.r" "first_building:file1.ro";
connectAttr "first_building:place2dTexture1.n" "first_building:file1.n";
connectAttr "first_building:place2dTexture1.vt1" "first_building:file1.vt1";
connectAttr "first_building:place2dTexture1.vt2" "first_building:file1.vt2";
connectAttr "first_building:place2dTexture1.vt3" "first_building:file1.vt3";
connectAttr "first_building:place2dTexture1.vc1" "first_building:file1.vc1";
connectAttr "first_building:place2dTexture1.o" "first_building:file1.uv";
connectAttr "first_building:place2dTexture1.ofs" "first_building:file1.fs";
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "first_building:aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "first_building:aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "first_building:place2dTexture1.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "first_building:defaultRenderLayer.msg" ":defaultRenderingList1.r" -na
		;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "first_building:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "gloorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube6Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "wall5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "wall5Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "across11Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "across11Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "wall7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "wall7Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "gloor2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "gloor3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "gloor4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "gloor5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "across12Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "across12Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "wall8Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "wall8Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube14Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube14Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "wall9Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "wall9Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "across14Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "across14Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "gloor7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "gloor7Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "gloor8Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "gloor8Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube15Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube15Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId67.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId70.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId102.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId103.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId104.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId105.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId106.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId107.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId108.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId109.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId110.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId111.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId112.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId167.msg" ":initialShadingGroup.gn" -na;
// End of 25 8 13x14 crashed.ma
