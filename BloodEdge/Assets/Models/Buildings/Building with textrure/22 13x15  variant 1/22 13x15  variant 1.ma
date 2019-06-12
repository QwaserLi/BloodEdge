//Maya ASCII 2018 scene
//Name: 22 13x15  variant 1.ma
//Last modified: Mon, Jun 10, 2019 04:55:07 PM
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
	setAttr ".t" -type "double3" 8.0811940381280696 42.316021714428544 71.047609841950319 ;
	setAttr ".r" -type "double3" -20.138351990575323 -8638.5999999996075 4.9711006141196606e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "496D3DA1-40C7-B89A-18A4-039C1385E847";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 74.054502725591931;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 512.84489937312787 1682.6350245023086 1082.7325436282572 ;
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
createNode transform -n "ground_floor";
	rename -uid "4B44F37D-4C7A-4370-D3F3-91AEC76F576C";
	setAttr ".t" -type "double3" 0 0.05 0 ;
	setAttr ".s" -type "double3" 13 0.1 15 ;
createNode mesh -n "ground_floorShape" -p "ground_floor";
	rename -uid "BA525FE3-4AB5-0762-11CC-7186D1DAFFCB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube9";
	rename -uid "F4FDEDB7-4D54-02B9-67EC-3AA80305E7FE";
	setAttr ".rp" -type "double3" 6.482 2.1541919166586498 0 ;
	setAttr ".sp" -type "double3" 6.482 2.1541919166586498 0 ;
createNode transform -n "polySurface1" -p "pCube9";
	rename -uid "6D5A4D5F-423C-5079-BC86-05BA432F0A5B";
createNode mesh -n "polySurfaceShape1" -p "|pCube9|polySurface1";
	rename -uid "760F276C-4E6C-8A07-2593-228329032DA7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface2" -p "pCube9";
	rename -uid "13E819E4-439F-ADB1-6E65-5DAED6030336";
createNode mesh -n "polySurfaceShape2" -p "|pCube9|polySurface2";
	rename -uid "C4C0035F-48BE-D771-5842-C882A132B7A6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface3" -p "pCube9";
	rename -uid "56B5A690-4C61-524D-A91F-AF9E391285B9";
createNode mesh -n "polySurfaceShape3" -p "|pCube9|polySurface3";
	rename -uid "4032D3F1-4F6B-5CEB-D1A0-A880924986BB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface4" -p "pCube9";
	rename -uid "B59DC3D9-40C1-F02C-F7E5-BD8EB8C3D783";
createNode mesh -n "polySurfaceShape4" -p "|pCube9|polySurface4";
	rename -uid "2E4834FD-4137-FC7F-F7A3-E1A1EF11A4B2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface5" -p "pCube9";
	rename -uid "E70C7DAC-45D4-2CEE-7D32-9CB76B428892";
createNode mesh -n "polySurfaceShape5" -p "|pCube9|polySurface5";
	rename -uid "9357F8DD-4F50-CE99-B225-C5BEC911D97F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface6" -p "pCube9";
	rename -uid "A146F247-4E8F-DCC6-22CD-1789B44B42B0";
createNode mesh -n "polySurfaceShape6" -p "|pCube9|polySurface6";
	rename -uid "5314AAC8-4C5E-A143-41DE-7ABDA8DE113A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface7" -p "pCube9";
	rename -uid "987447F7-4263-B1DE-96F1-D4A9C8F30B63";
createNode mesh -n "polySurfaceShape7" -p "|pCube9|polySurface7";
	rename -uid "3E4E5312-4EBC-B2C3-ED8E-0C970BDBBE19";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform1" -p "pCube9";
	rename -uid "CBAD7FD1-41A8-C415-CC79-47930FA6EDB9";
	setAttr ".v" no;
createNode mesh -n "pCube9Shape" -p "|pCube9|transform1";
	rename -uid "315D7117-41F7-4739-36AA-E499A9F65FB2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 98 ".uvst[0].uvsp[0:97]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  6.23200035 -1.5258789e-07 7.73200035 6.73200035 -1.5258789e-07 7.73200035
		 6.23200035 4.30000019 7.73200035 6.73200035 4.30000019 7.73200035 6.23200035 4.30000019 7.23200035
		 6.73200035 4.30000019 7.23200035 6.23200035 -1.5258789e-07 7.23200035 6.73200035 -1.5258789e-07 7.23200035
		 6.4963274 0.0040100096 7.51673841 6.60389328 0.0040100096 7.51673841 6.4963274 4.30401039 7.51673841
		 6.60389328 4.30401039 7.51673841 6.4963274 4.30401039 6.49627209 6.60389328 4.30401039 6.49627209
		 6.4963274 0.0040100096 6.49627209 6.60389328 0.0040100096 6.49627209 6.4963274 0.0040100096 -6.49676704
		 6.60389328 0.0040100096 -6.49676704 6.4963274 4.30401039 -6.49676704 6.60389328 4.30401039 -6.49676704
		 6.4963274 4.30401039 -7.51723337 6.60389328 4.30401039 -7.51723337 6.4963274 0.0040100096 -7.51723337
		 6.60389328 0.0040100096 -7.51723337 6.4963274 0.0040100096 0.51023328 6.60389328 0.0040100096 0.51023328
		 6.4963274 4.30401039 0.51023328 6.60389328 4.30401039 0.51023328 6.4963274 4.30401039 -0.51023328
		 6.60389328 4.30401039 -0.51023328 6.4963274 0.0040100096 -0.51023328 6.60389328 0.0040100096 -0.51023328
		 6.45738792 2.8083837 7.51999998 6.50738764 2.8083837 7.51999998 6.45738792 4.30838394 7.51999998
		 6.50738764 4.30838394 7.51999998 6.45738792 4.30838394 -7.51999998 6.50738764 4.30838394 -7.51999998
		 6.45738792 2.8083837 -7.51999998 6.50738764 2.8083837 -7.51999998 6.41871643 0.12979278 7.51999998
		 6.46871662 0.12979278 7.51999998 6.41871643 2.79619145 7.51999998 6.46871662 2.79619145 7.51999998
		 6.41871643 2.79619145 -7.51999998 6.46871662 2.79619145 -7.51999998 6.41871643 0.12979278 -7.51999998
		 6.46871662 0.12979278 -7.51999998 6.23200035 -1.5258789e-07 -7.23200035 6.73200035 -1.5258789e-07 -7.23200035
		 6.23200035 4.30000019 -7.23200035 6.73200035 4.30000019 -7.23200035 6.23200035 4.30000019 -7.73200035
		 6.73200035 4.30000019 -7.73200035 6.23200035 -1.5258789e-07 -7.73200035 6.73200035 -1.5258789e-07 -7.73200035;
	setAttr -s 84 ".ed[0:83]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0
		 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0
		 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0
		 46 47 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0
		 52 53 0 54 55 0 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
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
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube10";
	rename -uid "E64CCF2C-4A8B-22DB-03C6-D7813DA5D460";
	setAttr ".t" -type "double3" -12.950000000000001 0 -6.2957629337861054e-16 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" 6.482 2.1541919166586498 0 ;
	setAttr ".sp" -type "double3" 6.482 2.1541919166586498 0 ;
createNode transform -n "polySurface1" -p "pCube10";
	rename -uid "7D038C4F-4F74-3770-D078-5AB8EA239A37";
createNode mesh -n "polySurfaceShape1" -p "|pCube10|polySurface1";
	rename -uid "D6537514-4E02-07E0-B26B-0A8618CCDD9C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.23200035 -1.5258789e-07 7.73200035 6.73200035 -1.5258789e-07 7.73200035
		 6.23200035 4.30000019 7.73200035 6.73200035 4.30000019 7.73200035 6.23200035 4.30000019 7.23200035
		 6.73200035 4.30000019 7.23200035 6.23200035 -1.5258789e-07 7.23200035 6.73200035 -1.5258789e-07 7.23200035;
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
createNode transform -n "polySurface2" -p "pCube10";
	rename -uid "A2BA2A79-4619-6211-70A3-B890EAC1EB2D";
createNode mesh -n "polySurfaceShape2" -p "|pCube10|polySurface2";
	rename -uid "AA05A0DC-47A3-7C48-94ED-C18E1053AAEC";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.4963274 0.0040100096 7.51673841 6.60389328 0.0040100096 7.51673841
		 6.4963274 4.30401039 7.51673841 6.60389328 4.30401039 7.51673841 6.4963274 4.30401039 6.49627209
		 6.60389328 4.30401039 6.49627209 6.4963274 0.0040100096 6.49627209 6.60389328 0.0040100096 6.49627209;
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
createNode transform -n "polySurface3" -p "pCube10";
	rename -uid "9C07F2C4-4A8C-74BF-7483-1A9F80B81D2A";
createNode mesh -n "polySurfaceShape3" -p "|pCube10|polySurface3";
	rename -uid "D386D6AF-41F8-DB3A-6A76-BB8357F79BBD";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.4963274 0.0040100096 -6.49676704 6.60389328 0.0040100096 -6.49676704
		 6.4963274 4.30401039 -6.49676704 6.60389328 4.30401039 -6.49676704 6.4963274 4.30401039 -7.51723337
		 6.60389328 4.30401039 -7.51723337 6.4963274 0.0040100096 -7.51723337 6.60389328 0.0040100096 -7.51723337;
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
createNode transform -n "polySurface4" -p "pCube10";
	rename -uid "7D696B8D-44D9-3054-CECD-52974C0FBD66";
createNode mesh -n "polySurfaceShape4" -p "|pCube10|polySurface4";
	rename -uid "3F628D25-4EB4-9997-D3F9-AABCF2314B6C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.4963274 0.0040100096 0.51023328 6.60389328 0.0040100096 0.51023328
		 6.4963274 4.30401039 0.51023328 6.60389328 4.30401039 0.51023328 6.4963274 4.30401039 -0.51023328
		 6.60389328 4.30401039 -0.51023328 6.4963274 0.0040100096 -0.51023328 6.60389328 0.0040100096 -0.51023328;
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
createNode transform -n "polySurface5" -p "pCube10";
	rename -uid "19CA3EE1-4A8F-6994-3EA4-378CCBCF185F";
createNode mesh -n "polySurfaceShape5" -p "|pCube10|polySurface5";
	rename -uid "984A19F1-4723-8B05-AED1-DAAD69E96267";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.45738792 2.8083837 7.51999998 6.50738764 2.8083837 7.51999998
		 6.45738792 4.30838394 7.51999998 6.50738764 4.30838394 7.51999998 6.45738792 4.30838394 -7.51999998
		 6.50738764 4.30838394 -7.51999998 6.45738792 2.8083837 -7.51999998 6.50738764 2.8083837 -7.51999998;
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
createNode transform -n "polySurface6" -p "pCube10";
	rename -uid "F5C86458-4EFB-B8C0-8A7B-569FDD3D4D80";
createNode mesh -n "polySurfaceShape6" -p "|pCube10|polySurface6";
	rename -uid "8E60E7DE-448A-D8F2-290C-2AA2AE5C4825";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.41871643 0.12979278 7.51999998 6.46871662 0.12979278 7.51999998
		 6.41871643 2.79619145 7.51999998 6.46871662 2.79619145 7.51999998 6.41871643 2.79619145 -7.51999998
		 6.46871662 2.79619145 -7.51999998 6.41871643 0.12979278 -7.51999998 6.46871662 0.12979278 -7.51999998;
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
createNode transform -n "polySurface7" -p "pCube10";
	rename -uid "99C4F22D-498F-F11B-C54E-47B84100F07F";
createNode mesh -n "polySurfaceShape7" -p "|pCube10|polySurface7";
	rename -uid "2227DB9D-4700-04E6-47BA-64B401D89A01";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.23200035 -1.5258789e-07 -7.23200035 6.73200035 -1.5258789e-07 -7.23200035
		 6.23200035 4.30000019 -7.23200035 6.73200035 4.30000019 -7.23200035 6.23200035 4.30000019 -7.73200035
		 6.73200035 4.30000019 -7.73200035 6.23200035 -1.5258789e-07 -7.73200035 6.73200035 -1.5258789e-07 -7.73200035;
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
createNode transform -n "transform1" -p "pCube10";
	rename -uid "848B6384-4692-D15F-E70C-47B4CBF52161";
	setAttr ".v" no;
createNode mesh -n "pCube9Shape" -p "|pCube10|transform1";
	rename -uid "4E88C7D4-4C42-E7A3-6908-3E940D06E24E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 98 ".uvst[0].uvsp[0:97]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  6.23200035 -1.5258789e-07 7.73200035 6.73200035 -1.5258789e-07 7.73200035
		 6.23200035 4.30000019 7.73200035 6.73200035 4.30000019 7.73200035 6.23200035 4.30000019 7.23200035
		 6.73200035 4.30000019 7.23200035 6.23200035 -1.5258789e-07 7.23200035 6.73200035 -1.5258789e-07 7.23200035
		 6.4963274 0.0040100096 7.51673841 6.60389328 0.0040100096 7.51673841 6.4963274 4.30401039 7.51673841
		 6.60389328 4.30401039 7.51673841 6.4963274 4.30401039 6.49627209 6.60389328 4.30401039 6.49627209
		 6.4963274 0.0040100096 6.49627209 6.60389328 0.0040100096 6.49627209 6.4963274 0.0040100096 -6.49676704
		 6.60389328 0.0040100096 -6.49676704 6.4963274 4.30401039 -6.49676704 6.60389328 4.30401039 -6.49676704
		 6.4963274 4.30401039 -7.51723337 6.60389328 4.30401039 -7.51723337 6.4963274 0.0040100096 -7.51723337
		 6.60389328 0.0040100096 -7.51723337 6.4963274 0.0040100096 0.51023328 6.60389328 0.0040100096 0.51023328
		 6.4963274 4.30401039 0.51023328 6.60389328 4.30401039 0.51023328 6.4963274 4.30401039 -0.51023328
		 6.60389328 4.30401039 -0.51023328 6.4963274 0.0040100096 -0.51023328 6.60389328 0.0040100096 -0.51023328
		 6.45738792 2.8083837 7.51999998 6.50738764 2.8083837 7.51999998 6.45738792 4.30838394 7.51999998
		 6.50738764 4.30838394 7.51999998 6.45738792 4.30838394 -7.51999998 6.50738764 4.30838394 -7.51999998
		 6.45738792 2.8083837 -7.51999998 6.50738764 2.8083837 -7.51999998 6.41871643 0.12979278 7.51999998
		 6.46871662 0.12979278 7.51999998 6.41871643 2.79619145 7.51999998 6.46871662 2.79619145 7.51999998
		 6.41871643 2.79619145 -7.51999998 6.46871662 2.79619145 -7.51999998 6.41871643 0.12979278 -7.51999998
		 6.46871662 0.12979278 -7.51999998 6.23200035 -1.5258789e-07 -7.23200035 6.73200035 -1.5258789e-07 -7.23200035
		 6.23200035 4.30000019 -7.23200035 6.73200035 4.30000019 -7.23200035 6.23200035 4.30000019 -7.73200035
		 6.73200035 4.30000019 -7.73200035 6.23200035 -1.5258789e-07 -7.73200035 6.73200035 -1.5258789e-07 -7.73200035;
	setAttr -s 84 ".ed[0:83]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0
		 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0
		 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0
		 46 47 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0
		 52 53 0 54 55 0 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
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
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube11";
	rename -uid "FF861F0A-404F-3461-3082-0BA519258620";
	setAttr ".t" -type "double3" -6.4096022006924249 0 -7.5625565974106461 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 1 1 0.87705725128481371 ;
	setAttr ".rp" -type "double3" 6.482 2.1541919166586498 0 ;
	setAttr ".sp" -type "double3" 6.482 2.1541919166586498 0 ;
createNode transform -n "polySurface2" -p "pCube11";
	rename -uid "6487CFB4-47DA-82FE-199C-3D90F2A36C4A";
createNode mesh -n "polySurfaceShape2" -p "|pCube11|polySurface2";
	rename -uid "7E8B3F42-4166-C291-161F-87BCCFCEA61C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.4963274 0.0040100096 7.51673841 6.60389328 0.0040100096 7.51673841
		 6.4963274 4.30401039 7.51673841 6.60389328 4.30401039 7.51673841 6.4963274 4.30401039 6.49627209
		 6.60389328 4.30401039 6.49627209 6.4963274 0.0040100096 6.49627209 6.60389328 0.0040100096 6.49627209;
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
createNode transform -n "polySurface3" -p "pCube11";
	rename -uid "D5BF0B53-4B56-E8E6-C729-8C9E266688AC";
createNode mesh -n "polySurfaceShape3" -p "|pCube11|polySurface3";
	rename -uid "3A4E0ABA-487E-6BA4-76D8-FCAF0CC38C2F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.4963274 0.0040100096 -6.49676704 6.60389328 0.0040100096 -6.49676704
		 6.4963274 4.30401039 -6.49676704 6.60389328 4.30401039 -6.49676704 6.4963274 4.30401039 -7.51723337
		 6.60389328 4.30401039 -7.51723337 6.4963274 0.0040100096 -7.51723337 6.60389328 0.0040100096 -7.51723337;
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
createNode transform -n "polySurface4" -p "pCube11";
	rename -uid "2B06F496-4750-1E13-80B8-D29A180AA18C";
createNode mesh -n "polySurfaceShape4" -p "|pCube11|polySurface4";
	rename -uid "C137D712-4CFE-4119-2ECC-DA8852E2EC9C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.4963274 0.0040100096 0.51023328 6.60389328 0.0040100096 0.51023328
		 6.4963274 4.30401039 0.51023328 6.60389328 4.30401039 0.51023328 6.4963274 4.30401039 -0.51023328
		 6.60389328 4.30401039 -0.51023328 6.4963274 0.0040100096 -0.51023328 6.60389328 0.0040100096 -0.51023328;
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
createNode transform -n "polySurface5" -p "pCube11";
	rename -uid "687D07DC-4767-4750-4AD6-448BA02B1B8C";
createNode mesh -n "polySurfaceShape5" -p "|pCube11|polySurface5";
	rename -uid "69E355E3-423D-9305-2DF7-6A8F431546C0";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.45738792 2.8083837 7.51999998 6.50738764 2.8083837 7.51999998
		 6.45738792 4.30838394 7.51999998 6.50738764 4.30838394 7.51999998 6.45738792 4.30838394 -7.51999998
		 6.50738764 4.30838394 -7.51999998 6.45738792 2.8083837 -7.51999998 6.50738764 2.8083837 -7.51999998;
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
createNode transform -n "polySurface6" -p "pCube11";
	rename -uid "A2D6C307-4612-DC9D-14AF-449F54978E1A";
createNode mesh -n "polySurfaceShape6" -p "|pCube11|polySurface6";
	rename -uid "77A0223D-4ABA-6152-88EE-939AFB447600";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.41871643 0.12979278 7.51999998 6.46871662 0.12979278 7.51999998
		 6.41871643 2.79619145 7.51999998 6.46871662 2.79619145 7.51999998 6.41871643 2.79619145 -7.51999998
		 6.46871662 2.79619145 -7.51999998 6.41871643 0.12979278 -7.51999998 6.46871662 0.12979278 -7.51999998;
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
createNode transform -n "transform1" -p "pCube11";
	rename -uid "CD68CA86-44F9-00C8-6B6B-FD904AB7A5DA";
	setAttr ".v" no;
createNode mesh -n "pCube9Shape" -p "|pCube11|transform1";
	rename -uid "39F9648D-4788-F364-FE93-918D8F24CD56";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 98 ".uvst[0].uvsp[0:97]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  6.23200035 -1.5258789e-07 7.73200035 6.73200035 -1.5258789e-07 7.73200035
		 6.23200035 4.30000019 7.73200035 6.73200035 4.30000019 7.73200035 6.23200035 4.30000019 7.23200035
		 6.73200035 4.30000019 7.23200035 6.23200035 -1.5258789e-07 7.23200035 6.73200035 -1.5258789e-07 7.23200035
		 6.4963274 0.0040100096 7.51673841 6.60389328 0.0040100096 7.51673841 6.4963274 4.30401039 7.51673841
		 6.60389328 4.30401039 7.51673841 6.4963274 4.30401039 6.49627209 6.60389328 4.30401039 6.49627209
		 6.4963274 0.0040100096 6.49627209 6.60389328 0.0040100096 6.49627209 6.4963274 0.0040100096 -6.49676704
		 6.60389328 0.0040100096 -6.49676704 6.4963274 4.30401039 -6.49676704 6.60389328 4.30401039 -6.49676704
		 6.4963274 4.30401039 -7.51723337 6.60389328 4.30401039 -7.51723337 6.4963274 0.0040100096 -7.51723337
		 6.60389328 0.0040100096 -7.51723337 6.4963274 0.0040100096 0.51023328 6.60389328 0.0040100096 0.51023328
		 6.4963274 4.30401039 0.51023328 6.60389328 4.30401039 0.51023328 6.4963274 4.30401039 -0.51023328
		 6.60389328 4.30401039 -0.51023328 6.4963274 0.0040100096 -0.51023328 6.60389328 0.0040100096 -0.51023328
		 6.45738792 2.8083837 7.51999998 6.50738764 2.8083837 7.51999998 6.45738792 4.30838394 7.51999998
		 6.50738764 4.30838394 7.51999998 6.45738792 4.30838394 -7.51999998 6.50738764 4.30838394 -7.51999998
		 6.45738792 2.8083837 -7.51999998 6.50738764 2.8083837 -7.51999998 6.41871643 0.12979278 7.51999998
		 6.46871662 0.12979278 7.51999998 6.41871643 2.79619145 7.51999998 6.46871662 2.79619145 7.51999998
		 6.41871643 2.79619145 -7.51999998 6.46871662 2.79619145 -7.51999998 6.41871643 0.12979278 -7.51999998
		 6.46871662 0.12979278 -7.51999998 6.23200035 -1.5258789e-07 -7.23200035 6.73200035 -1.5258789e-07 -7.23200035
		 6.23200035 4.30000019 -7.23200035 6.73200035 4.30000019 -7.23200035 6.23200035 4.30000019 -7.73200035
		 6.73200035 4.30000019 -7.73200035 6.23200035 -1.5258789e-07 -7.73200035 6.73200035 -1.5258789e-07 -7.73200035;
	setAttr -s 84 ".ed[0:83]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0
		 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0
		 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0
		 46 47 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0
		 52 53 0 54 55 0 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
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
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube12";
	rename -uid "A841E4F9-490B-95CE-DA2F-DFB7B8837324";
	setAttr ".t" -type "double3" -6.4096022006924285 0 7.5253539123878159 ;
	setAttr ".r" -type "double3" 0 270 0 ;
	setAttr ".s" -type "double3" 1 1 0.87705725128481371 ;
	setAttr ".rp" -type "double3" 6.482 2.1541919166586498 0 ;
	setAttr ".sp" -type "double3" 6.482 2.1541919166586498 0 ;
createNode transform -n "polySurface2" -p "pCube12";
	rename -uid "BF76DF1A-44F3-0E3E-49E9-13B903E29970";
createNode mesh -n "polySurfaceShape2" -p "|pCube12|polySurface2";
	rename -uid "7D663B4C-49F5-699B-7716-C4AC84EE4FE9";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.4963274 0.0040100096 7.51673841 6.60389328 0.0040100096 7.51673841
		 6.4963274 4.30401039 7.51673841 6.60389328 4.30401039 7.51673841 6.4963274 4.30401039 6.49627209
		 6.60389328 4.30401039 6.49627209 6.4963274 0.0040100096 6.49627209 6.60389328 0.0040100096 6.49627209;
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
createNode transform -n "polySurface3" -p "pCube12";
	rename -uid "E4C14BBE-4002-ACC1-2B05-97863CA8CDB6";
createNode mesh -n "polySurfaceShape3" -p "|pCube12|polySurface3";
	rename -uid "1878B24E-4546-4B16-1205-3EA548D042A2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.4963274 0.0040100096 -6.49676704 6.60389328 0.0040100096 -6.49676704
		 6.4963274 4.30401039 -6.49676704 6.60389328 4.30401039 -6.49676704 6.4963274 4.30401039 -7.51723337
		 6.60389328 4.30401039 -7.51723337 6.4963274 0.0040100096 -7.51723337 6.60389328 0.0040100096 -7.51723337;
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
createNode transform -n "polySurface4" -p "pCube12";
	rename -uid "ACF0972F-499A-0166-B45F-E7BB371BCA69";
createNode mesh -n "polySurfaceShape4" -p "|pCube12|polySurface4";
	rename -uid "7AA7CD48-41AE-CE7F-4468-D9A665AEEF47";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.4963274 0.0040100096 0.51023328 6.60389328 0.0040100096 0.51023328
		 6.4963274 4.30401039 0.51023328 6.60389328 4.30401039 0.51023328 6.4963274 4.30401039 -0.51023328
		 6.60389328 4.30401039 -0.51023328 6.4963274 0.0040100096 -0.51023328 6.60389328 0.0040100096 -0.51023328;
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
createNode transform -n "polySurface5" -p "pCube12";
	rename -uid "7A883B9F-428E-8650-4378-9E82CBAE0B94";
createNode mesh -n "polySurfaceShape5" -p "|pCube12|polySurface5";
	rename -uid "7845CBF7-4C35-0AC3-6B61-48AAB19E2F4F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.45738792 2.8083837 7.51999998 6.50738764 2.8083837 7.51999998
		 6.45738792 4.30838394 7.51999998 6.50738764 4.30838394 7.51999998 6.45738792 4.30838394 -7.51999998
		 6.50738764 4.30838394 -7.51999998 6.45738792 2.8083837 -7.51999998 6.50738764 2.8083837 -7.51999998;
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
createNode transform -n "polySurface6" -p "pCube12";
	rename -uid "399C5D7A-4F50-CCBD-B4EC-9096918A09E0";
createNode mesh -n "polySurfaceShape6" -p "|pCube12|polySurface6";
	rename -uid "A4C1EE4D-4C71-8226-1B7F-2B99A5B1F61F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  6.41871643 0.12979278 7.51999998 6.46871662 0.12979278 7.51999998
		 6.41871643 2.79619145 7.51999998 6.46871662 2.79619145 7.51999998 6.41871643 2.79619145 -7.51999998
		 6.46871662 2.79619145 -7.51999998 6.41871643 0.12979278 -7.51999998 6.46871662 0.12979278 -7.51999998;
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
createNode transform -n "transform1" -p "pCube12";
	rename -uid "9FF72EA0-4DE4-AE79-E750-4A957C26C46F";
	setAttr ".v" no;
createNode mesh -n "pCube9Shape" -p "|pCube12|transform1";
	rename -uid "9255099B-4E2B-6F4A-4912-F1BC5509BA53";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:41]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 98 ".uvst[0].uvsp[0:97]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  6.23200035 -1.5258789e-07 7.73200035 6.73200035 -1.5258789e-07 7.73200035
		 6.23200035 4.30000019 7.73200035 6.73200035 4.30000019 7.73200035 6.23200035 4.30000019 7.23200035
		 6.73200035 4.30000019 7.23200035 6.23200035 -1.5258789e-07 7.23200035 6.73200035 -1.5258789e-07 7.23200035
		 6.4963274 0.0040100096 7.51673841 6.60389328 0.0040100096 7.51673841 6.4963274 4.30401039 7.51673841
		 6.60389328 4.30401039 7.51673841 6.4963274 4.30401039 6.49627209 6.60389328 4.30401039 6.49627209
		 6.4963274 0.0040100096 6.49627209 6.60389328 0.0040100096 6.49627209 6.4963274 0.0040100096 -6.49676704
		 6.60389328 0.0040100096 -6.49676704 6.4963274 4.30401039 -6.49676704 6.60389328 4.30401039 -6.49676704
		 6.4963274 4.30401039 -7.51723337 6.60389328 4.30401039 -7.51723337 6.4963274 0.0040100096 -7.51723337
		 6.60389328 0.0040100096 -7.51723337 6.4963274 0.0040100096 0.51023328 6.60389328 0.0040100096 0.51023328
		 6.4963274 4.30401039 0.51023328 6.60389328 4.30401039 0.51023328 6.4963274 4.30401039 -0.51023328
		 6.60389328 4.30401039 -0.51023328 6.4963274 0.0040100096 -0.51023328 6.60389328 0.0040100096 -0.51023328
		 6.45738792 2.8083837 7.51999998 6.50738764 2.8083837 7.51999998 6.45738792 4.30838394 7.51999998
		 6.50738764 4.30838394 7.51999998 6.45738792 4.30838394 -7.51999998 6.50738764 4.30838394 -7.51999998
		 6.45738792 2.8083837 -7.51999998 6.50738764 2.8083837 -7.51999998 6.41871643 0.12979278 7.51999998
		 6.46871662 0.12979278 7.51999998 6.41871643 2.79619145 7.51999998 6.46871662 2.79619145 7.51999998
		 6.41871643 2.79619145 -7.51999998 6.46871662 2.79619145 -7.51999998 6.41871643 0.12979278 -7.51999998
		 6.46871662 0.12979278 -7.51999998 6.23200035 -1.5258789e-07 -7.23200035 6.73200035 -1.5258789e-07 -7.23200035
		 6.23200035 4.30000019 -7.23200035 6.73200035 4.30000019 -7.23200035 6.23200035 4.30000019 -7.73200035
		 6.73200035 4.30000019 -7.73200035 6.23200035 -1.5258789e-07 -7.73200035 6.73200035 -1.5258789e-07 -7.73200035;
	setAttr -s 84 ".ed[0:83]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0
		 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0
		 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0
		 46 47 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0
		 52 53 0 54 55 0 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0;
	setAttr -s 42 -ch 168 ".fc[0:41]" -type "polyFaces" 
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
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "second_floor";
	rename -uid "4B8524C8-416A-A227-93E9-C69FCA253DD6";
	setAttr ".t" -type "double3" 0 4.292494663805857 0 ;
	setAttr ".s" -type "double3" 13.4 0.1 15.4 ;
createNode mesh -n "second_floorShape" -p "second_floor";
	rename -uid "1965B476-4342-696C-7FDD-7BA2E50D7F58";
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
createNode transform -n "second_floor2";
	rename -uid "7495A8F5-44F1-53DD-13EB-A194F1E4651E";
	setAttr ".t" -type "double3" 0 8.6 0 ;
	setAttr ".s" -type "double3" 13.4 0.1 15.4 ;
createNode mesh -n "second_floor2Shape" -p "second_floor2";
	rename -uid "3EEF3D60-4070-F6FA-47D9-F0B7E73193EE";
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
createNode transform -n "second_floor4";
	rename -uid "0E3FE8C3-4183-70EF-BBB5-6E855B39473E";
	setAttr ".t" -type "double3" 0 17.2 0 ;
	setAttr ".s" -type "double3" 13.4 0.1 15.4 ;
createNode mesh -n "second_floor4Shape" -p "second_floor4";
	rename -uid "AD056254-47D0-75EE-B33B-B891891D9CBB";
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
createNode transform -n "pillar";
	rename -uid "A6D0F805-4876-9453-8C30-E9A98B5F7E1E";
	setAttr ".t" -type "double3" 6.7235286859700567 12.920793064305393 -7.6648862657970094 ;
	setAttr ".s" -type "double3" 0.5 17.2 0.5 ;
createNode mesh -n "pillarShape" -p "pillar";
	rename -uid "98F860B1-4ED9-2CF4-8C19-36A9ACEE3A90";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pillar1";
	rename -uid "D9982722-4697-B1ED-CD3C-2E98F1D2ED2A";
	setAttr ".t" -type "double3" -6.724 12.920793064305393 -7.6648862657970094 ;
	setAttr ".s" -type "double3" 0.5 17.2 0.5 ;
createNode mesh -n "pillarShape1" -p "pillar1";
	rename -uid "8CD847FF-4989-4643-0E01-8CB845708998";
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
createNode transform -n "pillar2";
	rename -uid "EBF43BD5-4A5F-F92E-AF75-D3A893FAD6BE";
	setAttr ".t" -type "double3" -6.724 12.920793064305393 7.665 ;
	setAttr ".s" -type "double3" 0.5 17.2 0.5 ;
createNode transform -n "transform9" -p "pillar2";
	rename -uid "E1C97577-4B63-35C7-B266-BAAB852033BF";
	setAttr ".v" no;
createNode mesh -n "pillarShape2" -p "transform9";
	rename -uid "18530617-4362-7247-59AA-05AD41F49C62";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "pillar3";
	rename -uid "03CCB145-4DDB-6993-148E-92AC10EFD91B";
	setAttr ".t" -type "double3" 6.7235286859700567 12.920793064305393 7.665 ;
	setAttr ".s" -type "double3" 0.5 17.2 0.5 ;
createNode transform -n "transform15" -p "pillar3";
	rename -uid "672E616C-4047-311F-C9A8-2FBAC4A5B292";
	setAttr ".v" no;
createNode mesh -n "pillarShape3" -p "transform15";
	rename -uid "CFE7D8E0-47A5-4EFE-9EF3-E681907B10FE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "pCube24";
	rename -uid "8F5E1369-4A1A-24BC-517D-CBB069366920";
	setAttr ".t" -type "double3" 0 0 15.117431624710402 ;
	setAttr ".rp" -type "double3" 0.048317388180312837 12.920793064305313 -7.5411661213377812 ;
	setAttr ".sp" -type "double3" 0.048317388180312837 12.920793064305313 -7.5411661213377812 ;
createNode transform -n "transform2" -p "pCube24";
	rename -uid "3C5B71A5-485D-E42E-1F9F-4BB386769A0C";
	setAttr ".v" no;
createNode mesh -n "pCube23Shape" -p "|pCube24|transform2";
	rename -uid "E71DB893-41E6-9342-4FDE-358D7109C6C2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:29]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -6.043784142 4.32079268 -7.24116659 -5.29378414 4.32079268 -7.24116659
		 -6.043784142 21.52079391 -7.24116659 -5.29378414 21.52079391 -7.24116659 -6.043784142 21.52079391 -7.8411665
		 -5.29378414 21.52079391 -7.8411665 -6.043784142 4.32079268 -7.8411665 -5.29378414 4.32079268 -7.8411665
		 2.55272913 4.32079268 -7.24116659 3.30272913 4.32079268 -7.24116659 2.55272913 21.52079391 -7.24116659
		 3.30272913 21.52079391 -7.24116659 2.55272913 21.52079391 -7.8411665 3.30272913 21.52079391 -7.8411665
		 2.55272913 4.32079268 -7.8411665 3.30272913 4.32079268 -7.8411665 5.39041853 4.32079268 -7.24116659
		 6.14041853 4.32079268 -7.24116659 5.39041853 21.52079391 -7.24116659 6.14041853 21.52079391 -7.24116659
		 5.39041853 21.52079391 -7.8411665 6.14041853 21.52079391 -7.8411665 5.39041853 4.32079268 -7.8411665
		 6.14041853 4.32079268 -7.8411665 -0.375 4.32079268 -7.24116659 0.375 4.32079268 -7.24116659
		 -0.375 21.52079391 -7.24116659 0.375 21.52079391 -7.24116659 -0.375 21.52079391 -7.8411665
		 0.375 21.52079391 -7.8411665 -0.375 4.32079268 -7.8411665 0.375 4.32079268 -7.8411665
		 -3.30299997 4.32079268 -7.24116659 -2.55299997 4.32079268 -7.24116659 -3.30299997 21.52079391 -7.24116659
		 -2.55299997 21.52079391 -7.24116659 -3.30299997 21.52079391 -7.8411665 -2.55299997 21.52079391 -7.8411665
		 -3.30299997 4.32079268 -7.8411665 -2.55299997 4.32079268 -7.8411665;
	setAttr -s 60 ".ed[0:59]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0
		 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0
		 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0;
	setAttr -s 30 -ch 120 ".fc[0:29]" -type "polyFaces" 
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
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube25";
	rename -uid "0BF1B1D7-47AA-8211-09A6-D1A2F9C866C1";
	setAttr ".t" -type "double3" -6.6145013728037894 0 7.5 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 0.048317388180312837 12.920793064305313 -7.5411661213377812 ;
	setAttr ".sp" -type "double3" 0.048317388180312837 12.920793064305313 -7.5411661213377812 ;
createNode transform -n "transform2" -p "pCube25";
	rename -uid "6783C53A-4D85-73A5-DEE3-D3AC49D30F17";
	setAttr ".v" no;
createNode mesh -n "pCube23Shape" -p "|pCube25|transform2";
	rename -uid "B9BCFC8A-4261-5E26-EC3F-CF9046B5B70F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:29]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -6.043784142 4.32079268 -7.24116659 -5.29378414 4.32079268 -7.24116659
		 -6.043784142 21.52079391 -7.24116659 -5.29378414 21.52079391 -7.24116659 -6.043784142 21.52079391 -7.8411665
		 -5.29378414 21.52079391 -7.8411665 -6.043784142 4.32079268 -7.8411665 -5.29378414 4.32079268 -7.8411665
		 2.55272913 4.32079268 -7.24116659 3.30272913 4.32079268 -7.24116659 2.55272913 21.52079391 -7.24116659
		 3.30272913 21.52079391 -7.24116659 2.55272913 21.52079391 -7.8411665 3.30272913 21.52079391 -7.8411665
		 2.55272913 4.32079268 -7.8411665 3.30272913 4.32079268 -7.8411665 5.39041853 4.32079268 -7.24116659
		 6.14041853 4.32079268 -7.24116659 5.39041853 21.52079391 -7.24116659 6.14041853 21.52079391 -7.24116659
		 5.39041853 21.52079391 -7.8411665 6.14041853 21.52079391 -7.8411665 5.39041853 4.32079268 -7.8411665
		 6.14041853 4.32079268 -7.8411665 -0.375 4.32079268 -7.24116659 0.375 4.32079268 -7.24116659
		 -0.375 21.52079391 -7.24116659 0.375 21.52079391 -7.24116659 -0.375 21.52079391 -7.8411665
		 0.375 21.52079391 -7.8411665 -0.375 4.32079268 -7.8411665 0.375 4.32079268 -7.8411665
		 -3.30299997 4.32079268 -7.24116659 -2.55299997 4.32079268 -7.24116659 -3.30299997 21.52079391 -7.24116659
		 -2.55299997 21.52079391 -7.24116659 -3.30299997 21.52079391 -7.8411665 -2.55299997 21.52079391 -7.8411665
		 -3.30299997 4.32079268 -7.8411665 -2.55299997 4.32079268 -7.8411665;
	setAttr -s 60 ".ed[0:59]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0
		 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0
		 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0;
	setAttr -s 30 -ch 120 ".fc[0:29]" -type "polyFaces" 
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
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube26";
	rename -uid "E5144956-4DAE-8D9C-3150-5D8FAA03699F";
	setAttr ".t" -type "double3" 6.5750207431363501 0 7.5000000000000027 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" 0.048317388180312837 12.920793064305313 -7.5411661213377812 ;
	setAttr ".sp" -type "double3" 0.048317388180312837 12.920793064305313 -7.5411661213377812 ;
createNode transform -n "transform2" -p "pCube26";
	rename -uid "B308DDB3-42C8-ECF8-2F59-9D927014F890";
	setAttr ".v" no;
createNode mesh -n "pCube23Shape" -p "|pCube26|transform2";
	rename -uid "A73A0CCE-408E-0C7D-5B8F-949740F53854";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:29]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 70 ".uvst[0].uvsp[0:69]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -6.043784142 4.32079268 -7.24116659 -5.29378414 4.32079268 -7.24116659
		 -6.043784142 21.52079391 -7.24116659 -5.29378414 21.52079391 -7.24116659 -6.043784142 21.52079391 -7.8411665
		 -5.29378414 21.52079391 -7.8411665 -6.043784142 4.32079268 -7.8411665 -5.29378414 4.32079268 -7.8411665
		 2.55272913 4.32079268 -7.24116659 3.30272913 4.32079268 -7.24116659 2.55272913 21.52079391 -7.24116659
		 3.30272913 21.52079391 -7.24116659 2.55272913 21.52079391 -7.8411665 3.30272913 21.52079391 -7.8411665
		 2.55272913 4.32079268 -7.8411665 3.30272913 4.32079268 -7.8411665 5.39041853 4.32079268 -7.24116659
		 6.14041853 4.32079268 -7.24116659 5.39041853 21.52079391 -7.24116659 6.14041853 21.52079391 -7.24116659
		 5.39041853 21.52079391 -7.8411665 6.14041853 21.52079391 -7.8411665 5.39041853 4.32079268 -7.8411665
		 6.14041853 4.32079268 -7.8411665 -0.375 4.32079268 -7.24116659 0.375 4.32079268 -7.24116659
		 -0.375 21.52079391 -7.24116659 0.375 21.52079391 -7.24116659 -0.375 21.52079391 -7.8411665
		 0.375 21.52079391 -7.8411665 -0.375 4.32079268 -7.8411665 0.375 4.32079268 -7.8411665
		 -3.30299997 4.32079268 -7.24116659 -2.55299997 4.32079268 -7.24116659 -3.30299997 21.52079391 -7.24116659
		 -2.55299997 21.52079391 -7.24116659 -3.30299997 21.52079391 -7.8411665 -2.55299997 21.52079391 -7.8411665
		 -3.30299997 4.32079268 -7.8411665 -2.55299997 4.32079268 -7.8411665;
	setAttr -s 60 ".ed[0:59]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0
		 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0
		 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0;
	setAttr -s 30 -ch 120 ".fc[0:29]" -type "polyFaces" 
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
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "wall4";
	rename -uid "6936839B-4024-DA4F-34B0-B1AAB1E55F86";
	setAttr ".rp" -type "double3" 6.6233378708185073 12.926010437011719 0 ;
	setAttr ".sp" -type "double3" 6.6233378708185073 12.926010437011719 0 ;
createNode transform -n "polySurface15" -p "wall4";
	rename -uid "176B2A5A-4EA8-844B-2970-80B898860D62";
createNode mesh -n "polySurfaceShape15" -p "polySurface15";
	rename -uid "2C9B6190-4F08-B6B5-8433-8285EBE999A2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface16" -p "wall4";
	rename -uid "90DCB40F-4C49-795E-7BCD-9B8647ADE16A";
createNode mesh -n "polySurfaceShape16" -p "polySurface16";
	rename -uid "9AD6779D-40D0-33AD-77DA-82BF458BD433";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface17" -p "wall4";
	rename -uid "20024569-4AB1-D3AA-A08E-1D90BBBF60DB";
createNode mesh -n "polySurfaceShape17" -p "polySurface17";
	rename -uid "493020D5-4FC5-B2D1-CE55-F997F6FD31E6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface18" -p "wall4";
	rename -uid "9D5805AB-43ED-E45D-2352-F6B9636BEC15";
createNode mesh -n "polySurfaceShape18" -p "polySurface18";
	rename -uid "84C126C9-4B61-E920-8E4F-029209A1D655";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface19" -p "wall4";
	rename -uid "75B5FC72-4C26-F294-15AB-16BC0C96CE2A";
createNode mesh -n "polySurfaceShape19" -p "polySurface19";
	rename -uid "1D437EA5-43D5-67B3-592A-08B01A5B934D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface20" -p "wall4";
	rename -uid "E2893F5D-431F-665B-0844-8E9956C19F88";
createNode mesh -n "polySurfaceShape20" -p "polySurface20";
	rename -uid "C8491A51-4867-CDA6-B8A7-81936BC99449";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface21" -p "wall4";
	rename -uid "F7907828-4906-F20C-0E8B-3285C71EBE08";
createNode mesh -n "polySurfaceShape21" -p "polySurface21";
	rename -uid "BD4ED44F-4E00-8664-6550-B29AAE66B49E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface22" -p "wall4";
	rename -uid "2D695F01-43A9-BAEA-AA21-28893C695511";
createNode mesh -n "polySurfaceShape22" -p "polySurface22";
	rename -uid "161A5681-40B1-1096-A10B-088AA4AEFB8D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface23" -p "wall4";
	rename -uid "0E6C3D48-4A6D-DA25-69DA-598DA7B231EE";
createNode mesh -n "polySurfaceShape23" -p "polySurface23";
	rename -uid "F4E835DC-42F8-A1C4-3592-CCBCFC99F6D8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface24" -p "wall4";
	rename -uid "5A36F5DD-48FC-7A5F-C289-949E4864B877";
createNode mesh -n "polySurfaceShape24" -p "polySurface24";
	rename -uid "623F3F34-431A-B156-8EB9-DAABECF02B84";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface25" -p "wall4";
	rename -uid "6422F6B9-46AA-5ED4-1DFC-F9B3362FB8C1";
createNode mesh -n "polySurfaceShape25" -p "polySurface25";
	rename -uid "4D88717E-48B0-083F-8195-A292BF762339";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface26" -p "wall4";
	rename -uid "AF11DEF5-4E92-928E-5D5E-B29616538557";
createNode mesh -n "polySurfaceShape26" -p "polySurface26";
	rename -uid "3AE36742-462C-1DE9-4F0B-71873F7522C2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface27" -p "wall4";
	rename -uid "479B13F1-456D-4DC6-5FA9-1CA650364C78";
createNode mesh -n "polySurfaceShape27" -p "polySurface27";
	rename -uid "E8C74631-429F-E1A2-26C2-299FDB7E1F0D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform3" -p "wall4";
	rename -uid "162B7BCB-4C6C-8D3E-25DC-9AB025A58160";
	setAttr ".v" no;
createNode mesh -n "wall4Shape" -p "transform3";
	rename -uid "FFB4C1AB-4ECB-13B7-A75D-5FA73E21CD61";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:95]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 254 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.625 0 0.625 0.25
		 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.48226577
		 0.5 0.48226577 0.75 0.50012261 0.75 0.50012261 0.5 0.48226577 0.5 0.48226577 0.75
		 0.50012261 0.75 0.50012261 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.48226577 1 0.50012261 1 0.48226577 0.25 0.50012261 0.25
		 0.48226577 0.5 0.48226577 0.75 0.50012261 0.75 0.50012261 0.5 0.48226577 1 0.50012261
		 1 0.48226577 0.25 0.50012261 0.25 0.48226577 0.5 0.48226577 0.75 0.50012261 0.75
		 0.50012261 0.5 0.48226577 0 0.50012261 0 0.48226577 1 0.50012261 1 0.48226577 0.25
		 0.50012261 0.25 0.48226577 0 0.50012261 0 0.48226577 1 0.50012261 1 0.48226577 0.25
		 0.50012261 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.625 0.5 0.375 0.5 0.48226577
		 0 0.50012261 0 0.48226577 0 0.50012261 0 0.6168955 0.73228526 0.61689556 0.7104829
		 0.61689556 0.66978532 0.61689556 0.64798295 0.61689556 0.60728526 0.61689556 0.58548295
		 0.6168955 0.54478532 0.61689556 0.52298295 0.38310447 0.52298295 0.38310444 0.22701703
		 0.61689556 0.22701703 0.61689556 0.20521471 0.61689556 0.16451705 0.61689556 0.14271472
		 0.6168955 0.10201705 0.61689562 0.080214724 0.61689562 0.039517056 0.61689556 0.017714733
		 0.38310444 0.54478526 0.38310444 0.58548295 0.38310444 0.60728526 0.38310444 0.64798295
		 0.38310444 0.66978526 0.38310444 0.71048295 0.38310444 0.73228526 0.38310447 0.017714733
		 0.38310444 0.039517056 0.38310444 0.080214724;
	setAttr ".uvst[0].uvsp[250:253]" 0.38310444 0.10201705 0.38310444 0.14271472
		 0.38310444 0.16451705 0.38310444 0.20521471;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 136 ".vt[0:135]"  6.92333794 4.32079268 7.12385273 6.92333794 4.32079268 6.37385273
		 6.92333794 21.52079391 7.12385273 6.92333794 21.52079391 6.37385273 6.32333803 21.52079391 7.12385273
		 6.32333803 21.52079391 6.37385273 6.32333803 4.32079268 7.12385273 6.32333803 4.32079268 6.37385273
		 6.92333794 4.32079268 -1.90739107 6.92333794 4.32079268 -2.65739107 6.92333794 21.52079391 -1.90739107
		 6.92333794 21.52079391 -2.65739107 6.32333803 21.52079391 -1.90739107 6.32333803 21.52079391 -2.65739107
		 6.32333803 4.32079268 -1.90739107 6.32333803 4.32079268 -2.65739107 6.92333794 4.32079268 -6.43338156
		 6.92333794 4.32079268 -7.18338156 6.92333794 21.52079391 -6.43338156 6.92333794 21.52079391 -7.18338156
		 6.32333803 21.52079391 -6.43338156 6.32333803 21.52079391 -7.18338156 6.32333803 4.32079268 -6.43338156
		 6.32333803 4.32079268 -7.18338156 6.92333794 4.32079268 0.38215125 6.92333794 4.32079268 -0.36784875
		 6.92333794 21.52079391 0.38215125 6.92333794 21.52079391 -0.36784875 6.32333803 21.52079391 0.38215125
		 6.32333803 21.52079391 -0.36784875 6.32333803 4.32079268 0.38215125 6.32333803 4.32079268 -0.36784875
		 6.92333794 4.32079268 2.88297415 6.92333794 4.32079268 2.13297415 6.92333794 21.52079391 2.88297415
		 6.92333794 21.52079391 2.13297415 6.32333803 21.52079391 2.88297415 6.32333803 21.52079391 2.13297415
		 6.32333803 4.32079268 2.88297415 6.32333803 4.32079268 2.13297415 6.92333794 4.32079268 5.041856766
		 6.92333794 4.32079268 4.29185677 6.92333794 21.52079391 5.041856766 6.92333794 21.52079391 4.29185677
		 6.32333803 21.52079391 5.041856766 6.32333803 21.52079391 4.29185677 6.32333803 4.32079268 5.041856766
		 6.32333803 4.32079268 4.29185677 6.92333794 4.32079268 -4.30580711 6.92333794 4.32079268 -5.055807114
		 6.92333794 21.52079391 -4.30580711 6.92333794 21.52079391 -5.055807114 6.32333803 21.52079391 -4.30580711
		 6.32333803 21.52079391 -5.055807114 6.32333803 4.32079268 -4.30580711 6.32333803 4.32079268 -5.055807114
		 6.82884884 4.60972643 7.59910822 6.82884884 4.60972643 -7.59310722 6.82884884 5.33256578 7.59910822
		 6.82884884 5.33256578 -7.59310722 6.7456336 5.33256578 7.59910822 6.7456336 5.33256578 -7.59310722
		 6.7456336 4.60972643 7.59910822 6.7456336 4.60972643 -7.59310722 6.82884884 8.10000038 7.59910822
		 6.82884884 8.10000038 -7.59310722 6.82884884 9.10000038 7.59910822 6.82884884 9.10000038 -7.59310722
		 6.7456336 9.10000038 7.59910822 6.7456336 9.10000038 -7.59310722 6.7456336 8.10000038 7.59910822
		 6.7456336 8.10000038 -7.59310722 6.82884884 12.39999962 7.59910822 6.82884884 12.39999962 -7.59310722
		 6.82884884 13.39999962 7.59910822 6.82884884 13.39999962 -7.59310722 6.7456336 13.39999962 7.59910822
		 6.7456336 13.39999962 -7.59310722 6.7456336 12.39999962 7.59910822 6.7456336 12.39999962 -7.59310722
		 6.82884884 16.70000076 7.59910822 6.82884884 16.70000076 -7.59310722 6.82884884 17.70000076 7.59910822
		 6.82884884 17.70000076 -7.59310722 6.7456336 17.70000076 7.59910822 6.7456336 17.70000076 -7.59310722
		 6.7456336 16.70000076 7.59910822 6.7456336 16.70000076 -7.59310722 6.82884884 20.15241432 7.59910822
		 6.82884884 20.15241432 -7.59310722 6.82884884 21.15241432 7.59910822 6.82884884 21.15241432 -7.59310722
		 6.7456336 21.15241432 7.59910822 6.7456336 21.15241432 -7.59310722 6.7456336 20.15241432 7.59910822
		 6.7456336 20.15241432 -7.59310722 6.65275812 7.050000191 -7.1500001 6.65275812 5.55000019 -7.1500001
		 6.75275803 5.55000019 -7.1500001 6.75275803 7.050000191 -7.1500001 6.65275812 11.35000038 -7.1500001
		 6.65275812 9.85000038 -7.1500001 6.75275803 9.85000038 -7.1500001 6.75275803 11.35000038 -7.1500001
		 6.65275812 4.33122635 7.64571428 6.65275812 4.33122635 -7.64571428 6.75275803 4.33122635 -7.64571428
		 6.75275803 4.33122635 7.64571428 6.65275812 21.53122711 -7.64571428 6.75275803 21.53122711 -7.64571428
		 6.65275812 5.55000019 7.1500001 6.75275803 5.55000019 7.1500001 6.65275812 7.050000191 7.1500001
		 6.75275803 7.050000191 7.1500001 6.65275812 15.64999962 -7.1500001 6.65275812 14.14999962 -7.1500001
		 6.75275803 14.14999962 -7.1500001 6.75275803 15.64999962 -7.1500001 6.65275812 9.85000038 7.1500001
		 6.75275803 9.85000038 7.1500001 6.65275812 11.35000038 7.1500001 6.75275803 11.35000038 7.1500001
		 6.65275812 19.95000076 -7.1500001 6.65275812 18.45000076 -7.1500001 6.75275803 18.45000076 -7.1500001
		 6.75275803 19.95000076 -7.1500001 6.65275812 14.14999962 7.1500001 6.75275803 14.14999962 7.1500001
		 6.65275812 15.64999962 7.1500001 6.75275803 15.64999962 7.1500001 6.65275812 18.45000076 7.1500001
		 6.75275803 18.45000076 7.1500001 6.65275812 19.95000076 7.1500001 6.75275803 19.95000076 7.1500001
		 6.75275803 21.53122711 7.64571428 6.65275812 21.53122711 7.64571428;
	setAttr -s 214 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0
		 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0
		 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0 32 34 0 33 35 0
		 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0
		 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0 52 53 0 54 55 0
		 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0 58 59 0 60 61 0
		 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0 64 65 0 66 67 0
		 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0 71 65 0 72 73 0
		 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0 78 72 0 79 73 0
		 80 81 0 82 83 0 84 85 0 86 87 0 80 82 0 81 83 0 82 84 0 83 85 0 84 86 0 85 87 0 86 80 0
		 87 81 0 88 89 0 90 91 0 92 93 0 94 95 0 88 90 0 89 91 0 90 92 0 91 93 0 92 94 0 93 95 0
		 94 88 0 95 89 0 96 97 0 97 98 0 98 99 0 99 96 0 100 101 0 101 102 0 102 103 0 103 100 0
		 104 105 0 105 106 0 106 107 0 107 104 0 105 108 0 108 109 0 109 106 0 97 110 0 110 111 0
		 111 98 0 112 96 0 99 113 0 113 112 0 114 115 0;
	setAttr ".ed[166:213]" 115 116 0 116 117 0 117 114 0 101 118 0 118 119 0 119 102 0
		 120 100 0 103 121 0 121 120 0 122 123 0 123 124 0 124 125 0 125 122 0 110 112 0 113 111 0
		 115 126 0 126 127 0 127 116 0 128 114 0 117 129 0 129 128 0 118 120 0 121 119 0 123 130 0
		 130 131 0 131 124 0 132 122 0 125 133 0 133 132 0 107 134 0 134 135 0 135 104 0 134 109 0
		 108 135 0 126 128 0 129 127 0 130 132 0 133 131 0 105 97 1 96 101 1 100 115 1 114 123 1
		 132 135 1 124 117 1 116 103 1 102 99 1 98 106 1 134 133 1;
	setAttr -s 96 -ch 428 ".fc[0:95]" -type "polyFaces" 
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
		mu 0 4 12 0 3 13
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
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97
		f 4 84 89 -86 -89
		mu 0 4 98 99 100 101
		f 4 85 91 -87 -91
		mu 0 4 101 100 102 103
		f 4 86 93 -88 -93
		mu 0 4 103 102 104 105
		f 4 87 95 -85 -95
		mu 0 4 105 104 106 107
		f 4 -96 -94 -92 -90
		mu 0 4 99 108 109 100
		f 4 94 88 90 92
		mu 0 4 110 98 101 111
		f 4 96 101 -98 -101
		mu 0 4 112 113 114 115
		f 4 97 103 -99 -103
		mu 0 4 115 114 116 117
		f 4 98 105 -100 -105
		mu 0 4 117 116 118 119
		f 4 99 107 -97 -107
		mu 0 4 119 118 120 121
		f 4 -108 -106 -104 -102
		mu 0 4 113 122 123 114
		f 4 106 100 102 104
		mu 0 4 124 112 115 125
		f 4 108 113 -110 -113
		mu 0 4 126 127 128 129
		f 4 109 115 -111 -115
		mu 0 4 129 128 130 131
		f 4 110 117 -112 -117
		mu 0 4 131 130 132 133
		f 4 111 119 -109 -119
		mu 0 4 133 132 134 135
		f 4 -120 -118 -116 -114
		mu 0 4 127 136 137 128
		f 4 118 112 114 116
		mu 0 4 138 126 129 139
		f 4 120 125 -122 -125
		mu 0 4 140 141 142 143
		f 4 121 127 -123 -127
		mu 0 4 143 142 144 145
		f 4 122 129 -124 -129
		mu 0 4 145 144 146 147
		f 4 123 131 -121 -131
		mu 0 4 147 146 148 149
		f 4 -132 -130 -128 -126
		mu 0 4 141 150 151 142
		f 4 130 124 126 128
		mu 0 4 152 140 143 153
		f 4 132 137 -134 -137
		mu 0 4 154 155 156 157
		f 4 133 139 -135 -139
		mu 0 4 157 156 158 159
		f 4 134 141 -136 -141
		mu 0 4 159 158 160 161
		f 4 135 143 -133 -143
		mu 0 4 161 160 162 163
		f 4 -144 -142 -140 -138
		mu 0 4 155 164 165 156
		f 4 142 136 138 140
		mu 0 4 166 154 157 167
		f 4 144 145 146 147
		mu 0 4 168 169 170 171
		f 4 148 149 150 151
		mu 0 4 172 173 174 175
		f 4 152 153 154 155
		mu 0 4 176 177 178 179
		f 4 -154 156 157 158
		mu 0 4 180 181 182 183
		f 4 159 160 161 -146
		mu 0 4 169 184 185 170
		f 4 162 -148 163 164
		mu 0 4 186 168 171 187
		f 4 165 166 167 168
		mu 0 4 188 189 190 191
		f 4 169 170 171 -150
		mu 0 4 173 192 193 174
		f 4 172 -152 173 174
		mu 0 4 194 172 175 195
		f 4 175 176 177 178
		mu 0 4 196 197 198 199
		f 4 179 -165 180 -161
		mu 0 4 200 186 187 201
		f 4 181 182 183 -167
		mu 0 4 189 202 203 190
		f 4 184 -169 185 186
		mu 0 4 204 188 191 205
		f 4 187 -175 188 -171
		mu 0 4 206 194 195 207
		f 4 189 190 191 -177
		mu 0 4 197 208 209 198
		f 4 192 -179 193 194
		mu 0 4 210 196 199 211
		f 4 -156 195 196 197
		mu 0 4 212 213 214 215
		f 4 198 -158 199 -197
		mu 0 4 214 183 216 217
		f 4 200 -187 201 -183
		mu 0 4 218 204 205 219
		f 4 202 -195 203 -191
		mu 0 4 220 210 211 221
		f 12 -200 -157 204 -145 205 -149 206 -166 207 -176 -193 208
		mu 0 12 217 216 177 222 223 224 225 226 227 228 229 230
		f 12 -194 -178 209 -168 210 -151 211 -147 212 -159 -199 213
		mu 0 12 231 232 233 234 235 236 237 238 239 180 183 214
		f 18 -209 -203 -190 -208 -185 -201 -182 -207 -173 -188 -170 -206 -163 -180 -160 -205
		 -153 -198
		mu 0 18 217 230 240 228 227 241 242 226 225 243 244 224 223 245 246 222 177 176
		f 18 -155 -213 -162 -181 -164 -212 -172 -189 -174 -211 -184 -202 -186 -210 -192 -204
		 -214 -196
		mu 0 18 213 180 239 247 248 238 237 249 250 236 235 251 252 234 233 253 231 214;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "wall5";
	rename -uid "4155E326-487A-FC79-EFD4-92A12A49B36A";
	setAttr ".rp" -type "double3" 0 12.926010437011719 7.5762652428744648 ;
	setAttr ".sp" -type "double3" 0 12.926010437011719 7.5762652428744648 ;
createNode transform -n "polySurface28" -p "wall5";
	rename -uid "C34894DC-4C2A-EF02-BFD7-1C83B3E2256C";
createNode mesh -n "polySurfaceShape28" -p "polySurface28";
	rename -uid "0CB618B5-4A7F-12D0-395B-34A3D3FF1A64";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  -6.043784142 4.32079268 7.87626505 -5.29378414 4.32079268 7.87626505
		 -6.043784142 21.52079391 7.87626505 -5.29378414 21.52079391 7.87626505 -6.043784142 21.52079391 7.27626514
		 -5.29378414 21.52079391 7.27626514 -6.043784142 4.32079268 7.27626514 -5.29378414 4.32079268 7.27626514;
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
createNode transform -n "polySurface29" -p "wall5";
	rename -uid "A52C69E9-44F6-C68D-C920-CA94F5B92B62";
createNode transform -n "transform11" -p "|wall5|polySurface29";
	rename -uid "F46B6C18-48CF-ADA1-FB68-0E8910D67931";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape29" -p "transform11";
	rename -uid "C5291146-4896-94FA-3EB7-FCB2C1611D3C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  2.55272913 4.32079268 7.87626505 3.30272913 4.32079268 7.87626505
		 2.55272913 21.52079391 7.87626505 3.30272913 21.52079391 7.87626505 2.55272913 21.52079391 7.27626514
		 3.30272913 21.52079391 7.27626514 2.55272913 4.32079268 7.27626514 3.30272913 4.32079268 7.27626514;
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
createNode transform -n "polySurface30" -p "wall5";
	rename -uid "E3E72EED-427D-5329-9966-31B84B1DF0A0";
createNode mesh -n "polySurfaceShape30" -p "polySurface30";
	rename -uid "1745BF0F-4439-C5F9-C858-D29C5AA9E894";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  5.39041853 4.32079268 7.87626505 6.14041853 4.32079268 7.87626505
		 5.39041853 21.52079391 7.87626505 6.14041853 21.52079391 7.87626505 5.39041853 21.52079391 7.27626514
		 6.14041853 21.52079391 7.27626514 5.39041853 4.32079268 7.27626514 6.14041853 4.32079268 7.27626514;
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
createNode transform -n "polySurface31" -p "wall5";
	rename -uid "FC746967-4184-373F-69E1-9D92286C0FDF";
createNode mesh -n "polySurfaceShape31" -p "polySurface31";
	rename -uid "7FB98160-4A2C-3492-8176-A398631A8275";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  -0.375 4.32079268 7.87626505 0.375 4.32079268 7.87626505
		 -0.375 21.52079391 7.87626505 0.375 21.52079391 7.87626505 -0.375 21.52079391 7.27626514
		 0.375 21.52079391 7.27626514 -0.375 4.32079268 7.27626514 0.375 4.32079268 7.27626514;
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
createNode transform -n "polySurface33" -p "wall5";
	rename -uid "1BE62296-4DED-45E4-604A-CCA2C129C4FD";
createNode mesh -n "polySurfaceShape33" -p "polySurface33";
	rename -uid "DFA2CFFD-4B3C-0CA7-26BA-6D91C76968BC";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  -6.57213545 4.60972643 7.83329105 6.57213545 4.60972643 7.83329105
		 -6.57213545 5.33256578 7.83329105 6.57213545 5.33256578 7.83329105 -6.57213545 5.33256578 7.75007582
		 6.57213545 5.33256578 7.75007582 -6.57213545 4.60972643 7.75007582 6.57213545 4.60972643 7.75007582;
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
createNode transform -n "polySurface34" -p "wall5";
	rename -uid "2DE588A2-4455-67DA-83EE-46A5C20555A2";
createNode mesh -n "polySurfaceShape34" -p "polySurface34";
	rename -uid "A0327BED-4A1D-2661-7BC6-2196002E413A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  -6.57213545 8.10000038 7.83329105 6.57213545 8.10000038 7.83329105
		 -6.57213545 9.10000038 7.83329105 6.57213545 9.10000038 7.83329105 -6.57213545 9.10000038 7.75007582
		 6.57213545 9.10000038 7.75007582 -6.57213545 8.10000038 7.75007582 6.57213545 8.10000038 7.75007582;
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
createNode transform -n "polySurface35" -p "wall5";
	rename -uid "56FC6234-4E64-78FD-AA6E-5ABC756DFB75";
createNode mesh -n "polySurfaceShape35" -p "polySurface35";
	rename -uid "90050EA8-49C4-3C52-9B6B-5D83D68EF426";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  -6.57213545 12.39999962 7.83329105 6.57213545 12.39999962 7.83329105
		 -6.57213545 13.39999962 7.83329105 6.57213545 13.39999962 7.83329105 -6.57213545 13.39999962 7.75007582
		 6.57213545 13.39999962 7.75007582 -6.57213545 12.39999962 7.75007582 6.57213545 12.39999962 7.75007582;
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
createNode transform -n "polySurface36" -p "wall5";
	rename -uid "1D4C6A2B-47E9-2393-6750-26AA0F2E4091";
createNode mesh -n "polySurfaceShape36" -p "polySurface36";
	rename -uid "103BE293-4C7A-2D7C-9CEC-8BBE52CCDAEF";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
	setAttr -s 8 ".vt[0:7]"  -6.57213545 16.70000076 7.83329105 6.57213545 16.70000076 7.83329105
		 -6.57213545 17.70000076 7.83329105 6.57213545 17.70000076 7.83329105 -6.57213545 17.70000076 7.75007582
		 6.57213545 17.70000076 7.75007582 -6.57213545 16.70000076 7.75007582 6.57213545 16.70000076 7.75007582;
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
createNode transform -n "wall6";
	rename -uid "B86C91F0-4140-23C1-0903-53AAFBA82C8C";
	setAttr ".rp" -type "double3" 0 12.926010437011719 -7.6054750819541095 ;
	setAttr ".sp" -type "double3" 0 12.926010437011719 -7.6054750819541095 ;
createNode transform -n "polySurface39" -p "wall6";
	rename -uid "592D3B88-472D-064D-AC45-00A4BFABF861";
createNode mesh -n "polySurfaceShape39" -p "polySurface39";
	rename -uid "96090845-4EBB-D1CF-B6CD-B2A03B61BEF5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface40" -p "wall6";
	rename -uid "15042E9B-4C99-6482-6654-8CA643014867";
createNode mesh -n "polySurfaceShape40" -p "polySurface40";
	rename -uid "5CFBB658-4BCE-CAB6-FFE8-F2A287B2EC18";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface41" -p "wall6";
	rename -uid "D029D4EF-4B3D-5EE0-949E-02A3FFC2203F";
createNode mesh -n "polySurfaceShape41" -p "polySurface41";
	rename -uid "AE5F9FC1-48A5-0939-2FC1-AB9A5FCC4645";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface42" -p "wall6";
	rename -uid "6206980F-4B6F-AB96-FC1F-5C98E542DDA9";
createNode mesh -n "polySurfaceShape42" -p "polySurface42";
	rename -uid "0821163A-47B6-BA94-7B3F-FF8CC37E1BF4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface43" -p "wall6";
	rename -uid "61C47893-42FE-06EC-4735-67AD82C41510";
createNode mesh -n "polySurfaceShape43" -p "polySurface43";
	rename -uid "121CEAA4-482B-70B2-A756-088E13174170";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface44" -p "wall6";
	rename -uid "44A4D0B0-4742-2342-ADFB-0F86B1F74743";
createNode mesh -n "polySurfaceShape44" -p "polySurface44";
	rename -uid "98176553-4C79-42F6-6FA5-EDB7164F8E64";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface45" -p "wall6";
	rename -uid "3F3A224A-493E-53CD-3D4E-1E893263B0B6";
createNode mesh -n "polySurfaceShape45" -p "polySurface45";
	rename -uid "99F3174F-47B9-04BE-180B-9BAA90E402B6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface46" -p "wall6";
	rename -uid "D88B7A6E-4B6D-43A8-E165-28A67410C772";
createNode mesh -n "polySurfaceShape46" -p "polySurface46";
	rename -uid "C626534E-4EFC-D3A6-7AA4-CF812AE90FF6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface47" -p "wall6";
	rename -uid "850222F5-443A-2C94-ADD7-E5A88036ABE3";
createNode mesh -n "polySurfaceShape47" -p "polySurface47";
	rename -uid "66B3A447-4B2D-BC30-59ED-27A21F4253A8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface48" -p "wall6";
	rename -uid "DF293F8B-4362-8422-D076-2592B9C3E1B2";
createNode mesh -n "polySurfaceShape48" -p "polySurface48";
	rename -uid "9FB8EC37-4CF6-E5C6-9223-05AE3BAFBDB3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface49" -p "wall6";
	rename -uid "C2D364DA-443C-28A7-F05D-7090C8FE5FFB";
createNode mesh -n "polySurfaceShape49" -p "polySurface49";
	rename -uid "8FBB0E6C-4F81-E38A-B656-9EAB88E52480";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform4" -p "wall6";
	rename -uid "DC2888A0-4070-2287-7042-1A9DB86B654F";
	setAttr ".v" no;
createNode mesh -n "pCube37Shape" -p "transform4";
	rename -uid "57684614-4B5C-40AA-86BF-B784CB774450";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:83]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 226 ".uvst[0].uvsp[0:225]" -type "float2" 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.47364232 0.5 0.47364232
		 0.75 0.49149913 0.75 0.49149913 0.5 0.47364232 0.75 0.47364232 1 0.49149913 1 0.49149913
		 0.75 0.47364232 0.25 0.47364232 0.5 0.49149913 0.5 0.49149913 0.25 0.47364232 0 0.47364232
		 0.25 0.49149913 0.25 0.49149913 0 0.47364232 0.5 0.47364232 0.75 0.49149913 0.75
		 0.49149913 0.5 0.47364232 1 0.49149913 1 0.47364232 0.25 0.49149913 0.25 0.47364232
		 0 0.49149913 0 0.47364232 1 0.49149913 1 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.47364232
		 0.25 0.49149913 0.25 0.47364232 0 0.49149913 0 0.375 0.25 0.625 0.5 0.375 0.5 0.47364232
		 0 0.49149913 0 0.61184227 0.52298295 0.38799429 0.52298295 0.38799426 0.54478532
		 0.38799429 0.58548295 0.38799429 0.60728526 0.38799429 0.64798295 0.38799426 0.66978526
		 0.38799423 0.7104829 0.38799426 0.73228526 0.375 0.75 0.375 0 0.38799423 0.017714733
		 0.38799426 0.039517056 0.38799426 0.080214724 0.38799429 0.10201705 0.38799429 0.14271472
		 0.38799429 0.16451705 0.38799426 0.20521472 0.38799426 0.22701705 0.61184233 0.22701703
		 0.625 0.75 0.61184233 0.73228532 0.61184227 0.71048295 0.61184227 0.66978532 0.61184227
		 0.64798295 0.61184233 0.60728526 0.61184227 0.58548295 0.61184233 0.54478526 0.61184233
		 0.20521471 0.61184227 0.16451705 0.61184233 0.14271472 0.61184227 0.10201705 0.61184227
		 0.080214731 0.61184227 0.039517056 0.61184233 0.017714733 0.47364232 0.5 0.49149913
		 0.5 0.125 0 0.125 0.25 0.47364232 0.75 0.47364232 1 0.49149913 1 0.49149913 0.75
		 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 120 ".vt[0:119]"  -6.043784142 4.32079268 -7.30547476 -5.29378414 4.32079268 -7.30547476
		 -6.043784142 21.52079391 -7.30547476 -5.29378414 21.52079391 -7.30547476 -6.043784142 21.52079391 -7.90547466
		 -5.29378414 21.52079391 -7.90547466 -6.043784142 4.32079268 -7.90547466 -5.29378414 4.32079268 -7.90547466
		 2.55272913 4.32079268 -7.30547476 3.30272913 4.32079268 -7.30547476 2.55272913 21.52079391 -7.30547476
		 3.30272913 21.52079391 -7.30547476 2.55272913 21.52079391 -7.90547466 3.30272913 21.52079391 -7.90547466
		 2.55272913 4.32079268 -7.90547466 3.30272913 4.32079268 -7.90547466 5.39041853 4.32079268 -7.30547476
		 6.14041853 4.32079268 -7.30547476 5.39041853 21.52079391 -7.30547476 6.14041853 21.52079391 -7.30547476
		 5.39041853 21.52079391 -7.90547466 6.14041853 21.52079391 -7.90547466 5.39041853 4.32079268 -7.90547466
		 6.14041853 4.32079268 -7.90547466 -0.375 4.32079268 -7.30547476 0.375 4.32079268 -7.30547476
		 -0.375 21.52079391 -7.30547476 0.375 21.52079391 -7.30547476 -0.375 21.52079391 -7.90547466
		 0.375 21.52079391 -7.90547466 -0.375 4.32079268 -7.90547466 0.375 4.32079268 -7.90547466
		 -3.30299997 4.32079268 -7.30547476 -2.55299997 4.32079268 -7.30547476 -3.30299997 21.52079391 -7.30547476
		 -2.55299997 21.52079391 -7.30547476 -3.30299997 21.52079391 -7.90547466 -2.55299997 21.52079391 -7.90547466
		 -3.30299997 4.32079268 -7.90547466 -2.55299997 4.32079268 -7.90547466 -6.57213545 4.60972643 -7.73773575
		 6.57213545 4.60972643 -7.73773575 -6.57213545 5.33256578 -7.73773575 6.57213545 5.33256578 -7.73773575
		 -6.57213545 5.33256578 -7.82095098 6.57213545 5.33256578 -7.82095098 -6.57213545 4.60972643 -7.82095098
		 6.57213545 4.60972643 -7.82095098 -6.57213545 8.10000038 -7.73773575 6.57213545 8.10000038 -7.73773575
		 -6.57213545 9.10000038 -7.73773575 6.57213545 9.10000038 -7.73773575 -6.57213545 9.10000038 -7.82095098
		 6.57213545 9.10000038 -7.82095098 -6.57213545 8.10000038 -7.82095098 6.57213545 8.10000038 -7.82095098
		 -6.57213545 12.39999962 -7.73773575 6.57213545 12.39999962 -7.73773575 -6.57213545 13.39999962 -7.73773575
		 6.57213545 13.39999962 -7.73773575 -6.57213545 13.39999962 -7.82095098 6.57213545 13.39999962 -7.82095098
		 -6.57213545 12.39999962 -7.82095098 6.57213545 12.39999962 -7.82095098 -6.57213545 16.70000076 -7.73773575
		 6.57213545 16.70000076 -7.73773575 -6.57213545 17.70000076 -7.73773575 6.57213545 17.70000076 -7.73773575
		 -6.57213545 17.70000076 -7.82095098 6.57213545 17.70000076 -7.82095098 -6.57213545 16.70000076 -7.82095098
		 6.57213545 16.70000076 -7.82095098 -6.57213545 20.15241432 -7.73773575 6.57213545 20.15241432 -7.73773575
		 -6.57213545 21.15241432 -7.73773575 6.57213545 21.15241432 -7.73773575 -6.57213545 21.15241432 -7.82095098
		 6.57213545 21.15241432 -7.82095098 -6.57213545 20.15241432 -7.82095098 6.57213545 20.15241432 -7.82095098
		 -6.048309803 15.64999962 -7.64799976 -6.048309803 14.14999962 -7.64799976 -6.048309803 14.14999962 -7.74799967
		 -6.048309803 15.64999962 -7.74799967 -6.048309803 9.85000038 -7.64799976 6.039484024 9.85000038 -7.64799976
		 6.039484024 9.85000038 -7.74799967 -6.048309803 9.85000038 -7.74799967 6.039484024 11.35000038 -7.64799976
		 -6.048309803 11.35000038 -7.64799976 -6.048309803 11.35000038 -7.74799967 6.039484024 11.35000038 -7.74799967
		 6.039484024 5.55000019 -7.64799976 6.039484024 7.050000191 -7.64799976 6.039484024 7.050000191 -7.74799967
		 6.039484024 5.55000019 -7.74799967 -6.048309803 19.95000076 -7.64799976 -6.048309803 18.45000076 -7.64799976
		 -6.048309803 18.45000076 -7.74799967 -6.048309803 19.95000076 -7.74799967 6.039484024 14.14999962 -7.64799976
		 6.039484024 14.14999962 -7.74799967 6.039484024 15.64999962 -7.64799976 6.039484024 15.64999962 -7.74799967
		 6.039484024 18.45000076 -7.64799976 6.039484024 18.45000076 -7.74799967 6.75 4.33122635 -7.64799976
		 6.75 4.33122635 -7.74799967 6.75 21.53122711 -7.74799967 6.75 21.53122711 -7.64799976
		 6.039484024 19.95000076 -7.64799976 6.039484024 19.95000076 -7.74799967 -6.75 21.53122711 -7.64799976
		 -6.75 21.53122711 -7.74799967 -6.048309803 7.050000191 -7.74799967 -6.048309803 5.55000019 -7.74799967
		 -6.75 4.33122635 -7.74799967 -6.75 4.33122635 -7.64799976 -6.048309803 5.55000019 -7.64799976
		 -6.048309803 7.050000191 -7.64799976;
	setAttr -s 190 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0
		 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0
		 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0 32 34 0 33 35 0
		 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0
		 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0 52 53 0 54 55 0
		 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0 58 59 0 60 61 0
		 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0 64 65 0 66 67 0
		 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0 71 65 0 72 73 0
		 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0 78 72 0 79 73 0
		 80 81 0 81 82 0 82 83 0 83 80 0 84 85 0 85 86 0 86 87 0 87 84 0 88 89 0 89 90 0 90 91 0
		 91 88 0 92 93 0 93 94 0 94 95 0 95 92 0 96 97 0 97 98 0 98 99 0 99 96 0 81 100 0
		 100 101 0 101 82 0 102 80 0 83 103 0 103 102 0 85 88 0 91 86 0 97 104 0 104 105 0
		 105 98 0 106 107 0 107 108 0 108 109 0 109 106 0 110 96 0 99 111 0 111 110 0 100 102 0
		 103 101 0 112 109 0 108 113 0 113 112 0 104 110 0 111 105 0 108 111 1;
	setAttr ".ed[166:189]" 98 83 1 82 90 1 90 87 0 87 114 1 114 115 0 115 116 1
		 116 113 0 117 118 1 118 119 0 119 84 1 84 89 0 89 81 1 80 97 1 110 109 1 112 117 0
		 107 116 0 115 95 0 94 114 0 119 93 0 92 118 0 117 106 0 119 114 0 116 117 0 115 118 0;
	setAttr -s 84 -ch 380 ".fc[0:83]" -type "polyFaces" 
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
		mu 0 4 12 0 3 13
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
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97
		f 4 84 89 -86 -89
		mu 0 4 98 99 100 101
		f 4 85 91 -87 -91
		mu 0 4 101 100 102 103
		f 4 86 93 -88 -93
		mu 0 4 103 102 104 105
		f 4 87 95 -85 -95
		mu 0 4 105 104 106 107
		f 4 -96 -94 -92 -90
		mu 0 4 99 108 109 100
		f 4 94 88 90 92
		mu 0 4 110 98 101 111
		f 4 96 101 -98 -101
		mu 0 4 112 113 114 115
		f 4 97 103 -99 -103
		mu 0 4 115 114 116 117
		f 4 98 105 -100 -105
		mu 0 4 117 116 118 119
		f 4 99 107 -97 -107
		mu 0 4 119 118 120 121
		f 4 -108 -106 -104 -102
		mu 0 4 113 122 123 114
		f 4 106 100 102 104
		mu 0 4 124 112 115 125
		f 4 108 113 -110 -113
		mu 0 4 126 127 128 129
		f 4 109 115 -111 -115
		mu 0 4 129 128 130 131
		f 4 110 117 -112 -117
		mu 0 4 131 130 132 133
		f 4 111 119 -109 -119
		mu 0 4 133 132 134 135
		f 4 -120 -118 -116 -114
		mu 0 4 127 136 137 128
		f 4 118 112 114 116
		mu 0 4 138 126 129 139
		f 4 120 121 122 123
		mu 0 4 140 141 142 143
		f 4 124 125 126 127
		mu 0 4 144 145 146 147
		f 4 128 129 130 131
		mu 0 4 148 149 150 151
		f 4 132 133 134 135
		mu 0 4 152 153 154 155
		f 4 136 137 138 139
		mu 0 4 156 157 158 159
		f 4 140 141 142 -122
		mu 0 4 141 160 161 142
		f 4 143 -124 144 145
		mu 0 4 162 140 143 163
		f 4 146 -132 147 -126
		mu 0 4 164 148 151 165
		f 4 148 149 150 -138
		mu 0 4 157 166 167 158
		f 4 151 152 153 154
		mu 0 4 168 169 170 171
		f 4 155 -140 156 157
		mu 0 4 172 156 159 173
		f 4 158 -146 159 -142
		mu 0 4 174 162 163 175
		f 4 160 -154 161 162
		mu 0 4 176 171 177 178
		f 4 163 -158 164 -150
		mu 0 4 179 172 173 180
		f 12 -162 165 -157 -139 166 -123 167 168 169 170 171 172
		mu 0 12 178 177 181 182 183 184 185 186 187 188 189 190
		f 12 173 174 175 176 177 -121 178 -137 -156 179 -161 180
		mu 0 12 191 192 193 194 195 196 197 198 199 200 171 176
		f 18 -153 181 -172 182 -135 183 -170 -127 -148 -131 -168 -143 -160 -145 -167 -151 -165
		 -166
		mu 0 18 177 201 190 189 202 203 188 187 204 205 186 185 206 207 184 183 208 181
		f 18 -164 -149 -179 -144 -159 -141 -178 -129 -147 -125 -176 184 -133 185 -174 186 -155
		 -180
		mu 0 18 200 209 198 197 210 211 196 195 212 213 194 193 214 215 192 191 168 171
		f 4 -185 187 -184 -134
		mu 0 4 153 216 217 154
		f 4 188 -181 -163 -173
		mu 0 4 218 191 176 219
		f 4 -186 -136 -183 189
		mu 0 4 220 221 222 223
		f 4 -177 -128 -169 -130
		mu 0 4 149 144 147 150
		f 4 -182 -152 -187 -189
		mu 0 4 190 201 224 225
		f 4 -175 -190 -171 -188
		mu 0 4 216 220 223 217;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "wall";
	rename -uid "F5146D25-4FF3-5A5B-867B-1184054AE02B";
	setAttr ".rp" -type "double3" -6.566184245121633 12.926010437011719 0 ;
	setAttr ".sp" -type "double3" -6.566184245121633 12.926010437011719 0 ;
createNode transform -n "polySurface50" -p "wall";
	rename -uid "903350C9-45AA-B21C-8BDE-77B945419717";
createNode mesh -n "polySurfaceShape50" -p "polySurface50";
	rename -uid "E5E4896A-4B10-0BA1-FC4F-62960A3F2CAD";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface52" -p "wall";
	rename -uid "26C3920E-4E98-4E5F-A013-DFAA76E6A5A6";
createNode mesh -n "polySurfaceShape52" -p "polySurface52";
	rename -uid "9C22932F-4A3F-79D0-BEC2-AF8274CA22F6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface55" -p "wall";
	rename -uid "23BC2FF1-440B-5BFB-32F9-11AE32E08F6B";
createNode mesh -n "polySurfaceShape55" -p "polySurface55";
	rename -uid "2C6A03DB-4BD5-6386-9BBA-97B6561AE444";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface56" -p "wall";
	rename -uid "10DAB505-4E31-6A13-1695-A4AD8F4EDB81";
createNode mesh -n "polySurfaceShape56" -p "polySurface56";
	rename -uid "03B732FB-4514-51E3-261B-71A57C96AFC5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface57" -p "wall";
	rename -uid "D425C16D-4030-A0D9-0576-509642FCC3F5";
createNode mesh -n "polySurfaceShape57" -p "polySurface57";
	rename -uid "C734018B-44B7-2AAB-CD9D-E095AC5FF271";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface58" -p "wall";
	rename -uid "2E502931-48F2-39EE-517E-CAAB04A5821B";
createNode mesh -n "polySurfaceShape58" -p "polySurface58";
	rename -uid "52466233-4015-75BD-6C5C-C89C63A75866";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface60" -p "wall";
	rename -uid "1E8DFFD0-4A47-8BC9-F71A-2EA84DEB6334";
createNode mesh -n "polySurfaceShape60" -p "polySurface60";
	rename -uid "33CF090D-4911-7C73-4BE4-8BA3B16AF16E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface61" -p "wall";
	rename -uid "E1D63A87-4447-7DB9-09F2-5FBF4EF6AEBC";
createNode mesh -n "polySurfaceShape61" -p "polySurface61";
	rename -uid "8E183CD8-4BFA-1BE0-CE5C-F48DBBBFEA09";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform5" -p "wall";
	rename -uid "D92E824F-46A2-E779-B529-AB885375392D";
	setAttr ".v" no;
createNode mesh -n "pCube38Shape" -p "transform5";
	rename -uid "25DDA2EF-4AC1-A64E-DA5C-E4AB5CE4B932";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:95]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 254 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.625 0 0.625 0.25
		 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1
		 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0
		 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.42350751
		 0.25 0.42350751 0.5 0.44136435 0.5 0.44136435 0.25 0.42350751 0.5 0.42350751 0.75
		 0.44136435 0.75 0.44136435 0.5 0.42350751 0.75 0.42350751 1 0.44136435 1 0.44136435
		 0.75 0.42350751 0.25 0.42350751 0.5 0.44136435 0.5 0.44136435 0.25 0.42350751 0.5
		 0.42350751 0.75 0.44136435 0.75 0.44136435 0.5 0.42350751 0 0.44136435 0 0.42350751
		 1 0.44136435 1 0.42350751 0.25 0.44136435 0.25 0.42350751 0 0.44136435 0 0.42350751
		 1 0.44136435 1 0.42350751 0.25 0.44136435 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25
		 0.625 0.25 0.625 0.5 0.375 0.5 0.42350751 0 0.44136435 0 0.42350751 0 0.44136435
		 0 0.625 0.75 0.6168955 0.73228526 0.61689556 0.7104829 0.61689556 0.66978532 0.61689556
		 0.64798295 0.61689556 0.60728526 0.61689556 0.58548295 0.6168955 0.54478532 0.61689556
		 0.52298295 0.38310447 0.52298295 0.38310444 0.22701703 0.61689556 0.22701703 0.61689556
		 0.20521471 0.61689556 0.16451705 0.61689556 0.14271472 0.6168955 0.10201705 0.61689562
		 0.080214724 0.61689562 0.039517056 0.61689556 0.017714733 0.625 0 0.38310444 0.54478526
		 0.38310444 0.58548295 0.38310444 0.60728526 0.38310444 0.64798295 0.38310444 0.66978526
		 0.38310444 0.71048295 0.38310444 0.73228526 0.375 0.75 0.38310447 0.017714733 0.38310444
		 0.039517056 0.38310444 0.080214724 0.38310444 0.10201705 0.38310444 0.14271472 0.38310444
		 0.16451705 0.38310444 0.20521471 0.42350751 0.75 0.42350751 1 0.44136435 1 0.44136435
		 0.75;
	setAttr ".uvst[0].uvsp[250:253]" 0.875 0 0.875 0.25 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 136 ".vt[0:135]"  -6.26618385 4.32079268 7.12385273 -6.26618385 4.32079268 6.37385273
		 -6.26618385 21.52079391 7.12385273 -6.26618385 21.52079391 6.37385273 -6.86618423 21.52079391 7.12385273
		 -6.86618423 21.52079391 6.37385273 -6.86618423 4.32079268 7.12385273 -6.86618423 4.32079268 6.37385273
		 -6.26618385 4.32079268 -1.90739107 -6.26618385 4.32079268 -2.65739107 -6.26618385 21.52079391 -1.90739107
		 -6.26618385 21.52079391 -2.65739107 -6.86618423 21.52079391 -1.90739107 -6.86618423 21.52079391 -2.65739107
		 -6.86618423 4.32079268 -1.90739107 -6.86618423 4.32079268 -2.65739107 -6.26618385 4.32079268 -6.43338156
		 -6.26618385 4.32079268 -7.18338156 -6.26618385 21.52079391 -6.43338156 -6.26618385 21.52079391 -7.18338156
		 -6.86618423 21.52079391 -6.43338156 -6.86618423 21.52079391 -7.18338156 -6.86618423 4.32079268 -6.43338156
		 -6.86618423 4.32079268 -7.18338156 -6.26618385 4.32079268 0.38215125 -6.26618385 4.32079268 -0.36784875
		 -6.26618385 21.52079391 0.38215125 -6.26618385 21.52079391 -0.36784875 -6.86618423 21.52079391 0.38215125
		 -6.86618423 21.52079391 -0.36784875 -6.86618423 4.32079268 0.38215125 -6.86618423 4.32079268 -0.36784875
		 -6.26618385 4.32079268 2.88297415 -6.26618385 4.32079268 2.13297415 -6.26618385 21.52079391 2.88297415
		 -6.26618385 21.52079391 2.13297415 -6.86618423 21.52079391 2.88297415 -6.86618423 21.52079391 2.13297415
		 -6.86618423 4.32079268 2.88297415 -6.86618423 4.32079268 2.13297415 -6.26618385 4.32079268 5.041856766
		 -6.26618385 4.32079268 4.29185677 -6.26618385 21.52079391 5.041856766 -6.26618385 21.52079391 4.29185677
		 -6.86618423 21.52079391 5.041856766 -6.86618423 21.52079391 4.29185677 -6.86618423 4.32079268 5.041856766
		 -6.86618423 4.32079268 4.29185677 -6.26618385 4.32079268 -4.30580711 -6.26618385 4.32079268 -5.055807114
		 -6.26618385 21.52079391 -4.30580711 -6.26618385 21.52079391 -5.055807114 -6.86618423 21.52079391 -4.30580711
		 -6.86618423 21.52079391 -5.055807114 -6.86618423 4.32079268 -4.30580711 -6.86618423 4.32079268 -5.055807114
		 -6.74469948 4.60972643 7.59910822 -6.74469948 4.60972643 -7.59310722 -6.74469948 5.33256578 7.59910822
		 -6.74469948 5.33256578 -7.59310722 -6.82791519 5.33256578 7.59910822 -6.82791519 5.33256578 -7.59310722
		 -6.82791519 4.60972643 7.59910822 -6.82791519 4.60972643 -7.59310722 -6.74469948 8.10000038 7.59910822
		 -6.74469948 8.10000038 -7.59310722 -6.74469948 9.10000038 7.59910822 -6.74469948 9.10000038 -7.59310722
		 -6.82791519 9.10000038 7.59910822 -6.82791519 9.10000038 -7.59310722 -6.82791519 8.10000038 7.59910822
		 -6.82791519 8.10000038 -7.59310722 -6.74469948 12.39999962 7.59910822 -6.74469948 12.39999962 -7.59310722
		 -6.74469948 13.39999962 7.59910822 -6.74469948 13.39999962 -7.59310722 -6.82791519 13.39999962 7.59910822
		 -6.82791519 13.39999962 -7.59310722 -6.82791519 12.39999962 7.59910822 -6.82791519 12.39999962 -7.59310722
		 -6.74469948 16.70000076 7.59910822 -6.74469948 16.70000076 -7.59310722 -6.74469948 17.70000076 7.59910822
		 -6.74469948 17.70000076 -7.59310722 -6.82791519 17.70000076 7.59910822 -6.82791519 17.70000076 -7.59310722
		 -6.82791519 16.70000076 7.59910822 -6.82791519 16.70000076 -7.59310722 -6.74469948 20.15241432 7.59910822
		 -6.74469948 20.15241432 -7.59310722 -6.74469948 21.15241432 7.59910822 -6.74469948 21.15241432 -7.59310722
		 -6.82791519 21.15241432 7.59910822 -6.82791519 21.15241432 -7.59310722 -6.82791519 20.15241432 7.59910822
		 -6.82791519 20.15241432 -7.59310722 -6.74853039 7.050000191 7.1500001 -6.74853039 7.050000191 -7.1500001
		 -6.64853048 7.050000191 -7.1500001 -6.64853048 7.050000191 7.1500001 -6.74853039 15.64999962 -7.1500001
		 -6.74853039 14.14999962 -7.1500001 -6.64853048 14.14999962 -7.1500001 -6.64853048 15.64999962 -7.1500001
		 -6.74853039 9.85000038 -7.1500001 -6.74853039 9.85000038 7.1500001 -6.64853048 9.85000038 7.1500001
		 -6.64853048 9.85000038 -7.1500001 -6.74853039 11.35000038 7.1500001 -6.74853039 11.35000038 -7.1500001
		 -6.64853048 11.35000038 -7.1500001 -6.64853048 11.35000038 7.1500001 -6.74853039 19.95000076 -7.1500001
		 -6.74853039 18.45000076 -7.1500001 -6.64853048 18.45000076 -7.1500001 -6.64853048 19.95000076 -7.1500001
		 -6.74853039 5.55000019 7.1500001 -6.64853048 5.55000019 7.1500001 -6.74853039 14.14999962 7.1500001
		 -6.64853048 14.14999962 7.1500001 -6.74853039 15.64999962 7.1500001 -6.64853048 15.64999962 7.1500001
		 -6.74853039 18.45000076 7.1500001 -6.64853048 18.45000076 7.1500001 -6.74853039 19.95000076 7.1500001
		 -6.64853048 19.95000076 7.1500001 -6.74853039 4.33122635 7.64571428 -6.64853048 4.33122635 7.64571428
		 -6.64853048 21.53122711 7.64571428 -6.74853039 21.53122711 7.64571428 -6.64853048 21.53122711 -7.64571428
		 -6.74853039 21.53122711 -7.64571428 -6.74853039 4.33122635 -7.64571428 -6.74853039 5.55000019 -7.1500001
		 -6.64853048 5.55000019 -7.1500001 -6.64853048 4.33122635 -7.64571428;
	setAttr -s 214 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0 11 13 0 12 14 0
		 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0 18 20 0 19 21 0
		 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0 25 27 0 26 28 0
		 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0 32 34 0 33 35 0
		 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0 46 47 0 40 42 0
		 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0 52 53 0 54 55 0
		 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0 58 59 0 60 61 0
		 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0 64 65 0 66 67 0
		 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0 71 65 0 72 73 0
		 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0 78 72 0 79 73 0
		 80 81 0 82 83 0 84 85 0 86 87 0 80 82 0 81 83 0 82 84 0 83 85 0 84 86 0 85 87 0 86 80 0
		 87 81 0 88 89 0 90 91 0 92 93 0 94 95 0 88 90 0 89 91 0 90 92 0 91 93 0 92 94 0 93 95 0
		 94 88 0 95 89 0 96 97 0 97 98 0 98 99 0 99 96 0 100 101 0 101 102 0 102 103 0 103 100 0
		 104 105 0 105 106 0 106 107 0 107 104 0 108 109 0 109 110 0 110 111 0 111 108 0 112 113 0
		 113 114 0 114 115 0 115 112 0 116 96 0 99 117 0;
	setAttr ".ed[166:213]" 117 116 0 101 118 0 118 119 0 119 102 0 120 100 0 103 121 0
		 121 120 0 105 108 0 111 106 0 113 122 0 122 123 0 123 114 0 124 112 0 115 125 0 125 124 0
		 126 127 0 127 128 0 128 129 0 129 126 0 128 130 0 130 131 0 131 129 0 118 120 0 121 119 0
		 122 124 0 125 123 0 131 132 0 132 133 1 133 97 0 97 104 1 104 109 0 109 101 1 100 113 1
		 124 129 1 114 103 1 102 110 1 110 107 0 107 98 1 98 134 0 134 135 1 135 130 0 128 125 1
		 116 133 0 132 126 0 127 135 0 134 117 0 134 133 0 135 132 0;
	setAttr -s 96 -ch 428 ".fc[0:95]" -type "polyFaces" 
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
		mu 0 4 12 0 3 13
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
		mu 0 4 26 14 17 27
		f 4 24 29 -26 -29
		mu 0 4 28 29 30 31
		f 4 25 31 -27 -31
		mu 0 4 31 30 32 33
		f 4 26 33 -28 -33
		mu 0 4 33 32 34 35
		f 4 27 35 -25 -35
		mu 0 4 35 34 36 37
		f 4 -36 -34 -32 -30
		mu 0 4 29 38 39 30
		f 4 34 28 30 32
		mu 0 4 40 28 31 41
		f 4 36 41 -38 -41
		mu 0 4 42 43 44 45
		f 4 37 43 -39 -43
		mu 0 4 45 44 46 47
		f 4 38 45 -40 -45
		mu 0 4 47 46 48 49
		f 4 39 47 -37 -47
		mu 0 4 49 48 50 51
		f 4 -48 -46 -44 -42
		mu 0 4 43 52 53 44
		f 4 46 40 42 44
		mu 0 4 54 42 45 55
		f 4 48 53 -50 -53
		mu 0 4 56 57 58 59
		f 4 49 55 -51 -55
		mu 0 4 59 58 60 61
		f 4 50 57 -52 -57
		mu 0 4 61 60 62 63
		f 4 51 59 -49 -59
		mu 0 4 63 62 64 65
		f 4 -60 -58 -56 -54
		mu 0 4 57 66 67 58
		f 4 58 52 54 56
		mu 0 4 68 56 59 69
		f 4 60 65 -62 -65
		mu 0 4 70 71 72 73
		f 4 61 67 -63 -67
		mu 0 4 73 72 74 75
		f 4 62 69 -64 -69
		mu 0 4 75 74 76 77
		f 4 63 71 -61 -71
		mu 0 4 77 76 78 79
		f 4 -72 -70 -68 -66
		mu 0 4 71 80 81 72
		f 4 70 64 66 68
		mu 0 4 82 70 73 83
		f 4 72 77 -74 -77
		mu 0 4 84 85 86 87
		f 4 73 79 -75 -79
		mu 0 4 87 86 88 89
		f 4 74 81 -76 -81
		mu 0 4 89 88 90 91
		f 4 75 83 -73 -83
		mu 0 4 91 90 92 93
		f 4 -84 -82 -80 -78
		mu 0 4 85 94 95 86
		f 4 82 76 78 80
		mu 0 4 96 84 87 97
		f 4 84 89 -86 -89
		mu 0 4 98 99 100 101
		f 4 85 91 -87 -91
		mu 0 4 101 100 102 103
		f 4 86 93 -88 -93
		mu 0 4 103 102 104 105
		f 4 87 95 -85 -95
		mu 0 4 105 104 106 107
		f 4 -96 -94 -92 -90
		mu 0 4 99 108 109 100
		f 4 94 88 90 92
		mu 0 4 110 98 101 111
		f 4 96 101 -98 -101
		mu 0 4 112 113 114 115
		f 4 97 103 -99 -103
		mu 0 4 115 114 116 117
		f 4 98 105 -100 -105
		mu 0 4 117 116 118 119
		f 4 99 107 -97 -107
		mu 0 4 119 118 120 121
		f 4 -108 -106 -104 -102
		mu 0 4 113 122 123 114
		f 4 106 100 102 104
		mu 0 4 124 112 115 125
		f 4 108 113 -110 -113
		mu 0 4 126 127 128 129
		f 4 109 115 -111 -115
		mu 0 4 129 128 130 131
		f 4 110 117 -112 -117
		mu 0 4 131 130 132 133
		f 4 111 119 -109 -119
		mu 0 4 133 132 134 135
		f 4 -120 -118 -116 -114
		mu 0 4 127 136 137 128
		f 4 118 112 114 116
		mu 0 4 138 126 129 139
		f 4 120 125 -122 -125
		mu 0 4 140 141 142 143
		f 4 121 127 -123 -127
		mu 0 4 143 142 144 145
		f 4 122 129 -124 -129
		mu 0 4 145 144 146 147
		f 4 123 131 -121 -131
		mu 0 4 147 146 148 149
		f 4 -132 -130 -128 -126
		mu 0 4 141 150 151 142
		f 4 130 124 126 128
		mu 0 4 152 140 143 153
		f 4 132 137 -134 -137
		mu 0 4 154 155 156 157
		f 4 133 139 -135 -139
		mu 0 4 157 156 158 159
		f 4 134 141 -136 -141
		mu 0 4 159 158 160 161
		f 4 135 143 -133 -143
		mu 0 4 161 160 162 163
		f 4 -144 -142 -140 -138
		mu 0 4 155 164 165 156
		f 4 142 136 138 140
		mu 0 4 166 154 157 167
		f 4 144 145 146 147
		mu 0 4 168 169 170 171
		f 4 148 149 150 151
		mu 0 4 172 173 174 175
		f 4 152 153 154 155
		mu 0 4 176 177 178 179
		f 4 156 157 158 159
		mu 0 4 180 181 182 183
		f 4 160 161 162 163
		mu 0 4 184 185 186 187
		f 4 164 -148 165 166
		mu 0 4 188 168 171 189
		f 4 167 168 169 -150
		mu 0 4 173 190 191 174
		f 4 170 -152 171 172
		mu 0 4 192 172 175 193
		f 4 173 -160 174 -154
		mu 0 4 194 180 183 195
		f 4 175 176 177 -162
		mu 0 4 185 196 197 186
		f 4 178 -164 179 180
		mu 0 4 198 184 187 199
		f 4 181 182 183 184
		mu 0 4 200 201 202 203
		f 4 185 186 187 -184
		mu 0 4 202 204 205 206
		f 4 188 -173 189 -169
		mu 0 4 207 192 193 208
		f 4 190 -181 191 -177
		mu 0 4 209 198 199 210
		f 12 -188 192 193 194 195 196 197 -149 198 -161 -179 199
		mu 0 12 206 205 211 212 213 214 215 216 217 218 219 220
		f 12 -180 -163 200 -151 201 202 203 204 205 206 -186 207
		mu 0 12 221 222 223 224 225 226 227 228 229 230 204 202
		f 18 -200 -191 -176 -199 -171 -189 -168 -198 -157 -174 -153 -196 -145 -165 208 -194
		 209 -185
		mu 0 18 206 220 231 218 217 232 233 216 215 234 235 214 213 236 237 212 211 238
		f 18 210 -206 211 -166 -147 -204 -155 -175 -159 -202 -170 -190 -172 -201 -178 -192 -208
		 -183
		mu 0 18 201 230 229 239 240 228 227 241 242 226 225 243 244 224 223 245 221 202
		f 4 -209 -167 -212 212
		mu 0 4 246 247 248 249
		f 4 213 -193 -187 -207
		mu 0 4 230 250 251 204
		f 4 -210 -214 -211 -182
		mu 0 4 238 211 252 253
		f 4 -197 -156 -203 -158
		mu 0 4 181 176 179 182
		f 4 -195 -213 -205 -146
		mu 0 4 169 246 249 170;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface53";
	rename -uid "2C145B25-476B-D03B-B7AD-07865A6C4FE3";
	setAttr ".rp" -type "double3" -6.56618408203125 12.920793151855468 0.0071512603759765628 ;
	setAttr ".sp" -type "double3" -6.56618408203125 12.920793151855468 0.0071512603759765628 ;
createNode mesh -n "polySurface53Shape" -p "polySurface53";
	rename -uid "C7B3DADE-484F-502B-9119-C8A1CC3CFEAF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 47 ".uvst[0].uvsp[0:46]" -type "float2" 0.375 0 0.625 0 0.625
		 0.11095236 0.375 0.11276219 0.46678701 0.90183556 0.625 0.63904762 0.625 0.75 0.375
		 0.75 0.375 0.63723785 0.125 0 0.24812953 0.11276219 0.125 0.11276219 0.875 0 0.875
		 0.11095236 0.75187045 0.11095236 0.49501199 0.92833602 0.52409446 0.92833608 0.52409446
		 0.90183562 0.49501202 0.90183556 0.46678701 0.37002403 0.46678701 0.39575109 0.49501199
		 0.39575112 0.49501199 0.37002403 0.46678704 0.92833602 0.52409452 0.39575109 0.52409446
		 0.37002403 0.49501202 0.33849981 0.46678704 0.33849978 0.52409446 0.33849978 0.375
		 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.875 0.15447645 0.875 0.25 0.625 0.15447645
		 0.75187051 0.15447646 0.625 0.5955236 0.48501778 0.59367681 0.375 0.59042054 0.375
		 0.15957947 0.48501778 0.15632322 0.125 0.25 0.125 0.15957947 0.24812953 0.15957946
		 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 23 ".vt[0:22]"  -6.26618385 4.32079268 0.38215125 -6.26618385 4.32079268 -0.36784875
		 -6.26618385 11.95431519 -0.36784875 -6.26618385 12.078831673 0.38215125 -6.86618423 11.95431519 -0.36784875
		 -6.86618423 4.32079268 -0.36784875 -6.86618423 4.32079268 0.38215125 -6.86618423 12.078831673 0.38215125
		 -6.57067299 12.078831673 0.38215125 -6.57067299 11.95431519 -0.36784875 -6.86618423 15.075831413 0.052097898
		 -6.86618423 14.94877338 -0.36784875 -6.57067299 14.94877338 -0.36784875 -6.57067299 15.075831413 0.052097898
		 -6.26618385 14.94877338 -0.36784875 -6.26618385 15.075831413 0.052097898 -6.57067299 15.29986095 0.38215125
		 -6.86618423 15.29986095 0.38215125 -6.26618385 15.29986095 0.38215125 -6.26618385 21.52079391 0.38215125
		 -6.26618385 21.52079391 -0.36784875 -6.86618423 21.52079391 -0.36784875 -6.86618423 21.52079391 0.38215125;
	setAttr -s 35 ".ed[0:34]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 6 0 0 3 8 0 8 7 0 1 5 0 4 9 0 9 2 0 9 8 1 10 11 0 11 12 0 12 13 1 13 10 1 12 14 0
		 14 15 0 15 13 1 16 17 0 17 10 0 13 16 1 15 18 0 18 16 0 19 20 0 20 21 0 21 22 0 22 19 0
		 11 21 0 20 14 0 17 22 0 19 18 0;
	setAttr -s 16 -ch 70 ".fc[0:15]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 -8 -11 -15 -13
		mu 0 4 4 23 15 18
		f 4 4 5 6 7
		mu 0 4 5 6 7 8
		f 5 8 -4 9 10 -7
		mu 0 5 9 0 3 10 11
		f 5 11 -5 12 13 -2
		mu 0 5 1 12 13 14 2
		f 4 -10 -3 -14 14
		mu 0 4 15 16 17 18
		f 4 15 16 17 18
		mu 0 4 19 20 21 22
		f 4 19 20 21 -18
		mu 0 4 21 24 25 22
		f 4 22 23 -19 24
		mu 0 4 26 27 19 22
		f 4 -22 25 26 -25
		mu 0 4 22 25 28 26
		f 4 27 28 29 30
		mu 0 4 29 30 31 32
		f 5 31 -29 32 -20 -17
		mu 0 5 33 34 30 35 36
		f 5 -30 -32 -16 -24 33
		mu 0 5 32 31 37 38 39
		f 5 -33 -28 34 -26 -21
		mu 0 5 35 30 29 40 41
		f 5 -35 -31 -34 -23 -27
		mu 0 5 40 29 42 43 44
		f 4 -6 -12 -1 -9
		mu 0 4 7 6 45 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface51";
	rename -uid "77DF7B8F-4CDC-47A9-A05B-BEA2D5BCB868";
	setAttr ".rp" -type "double3" -6.56618408203125 12.920793151855468 -2.2823910522460937 ;
	setAttr ".sp" -type "double3" -6.56618408203125 12.920793151855468 -2.2823910522460937 ;
createNode mesh -n "polySurface51Shape" -p "polySurface51";
	rename -uid "5B213285-49B5-1952-051A-B387D938A8BA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.125 0 0.375 0 0.375
		 0.10945947 0.24812952 0.10945947 0.125 0.10945947 0.46678701 0.75 0.46678698 0.79201978
		 0.49501199 0.79201978 0.49501199 0.75 0.46678701 0.63721275 0.49501199 0.63721275
		 0.52409446 0.79201984 0.52409446 0.75 0.52409446 0.63721275 0.625 0 0.875 0 0.875
		 0.25 0.625 0.25 0.46678701 0.5 0.49501199 0.5 0.52409446 0.5 0.49501202 0.49006769
		 0.46678704 0.49006766 0.52409452 0.49006766 0.375 0.25 0.625 0.5 0.375 0.5 0.375
		 0.14770609 0.125 0.25 0.125 0.14770609 0.24812955 0.14770609 0.625 0.75 0.375 0.75
		 0.375 0.64054048 0.52164674 0.64054048 0.61809552 0.62337679 0.42904216 0.6030069
		 0.375 0.60229391 0.42904216 0.14699312 0.61809552 0.1266232 0.52164674 0.10945947
		 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 23 ".vt[0:22]"  -6.86618423 4.32079268 -1.90739107 -6.26618385 4.32079268 -1.90739107
		 -6.26618385 11.85160542 -1.90739107 -6.57067299 11.85160542 -1.90739107 -6.86618423 11.85160542 -1.90739107
		 -6.86618423 11.85160542 -2.34733129 -6.57067299 11.85160542 -2.34733129 -6.86618423 13.032469749 -2.6366775
		 -6.57067299 13.032469749 -2.6366775 -6.26618385 11.85160542 -2.34733129 -6.26618385 13.032469749 -2.6366775
		 -6.26618385 4.32079268 -2.65739107 -6.86618423 4.32079268 -2.65739107 -6.86618423 21.52079391 -2.65739107
		 -6.26618385 21.52079391 -2.65739107 -6.86618423 14.43391991 -2.069517612 -6.57067299 14.43391991 -2.069517612
		 -6.26618385 14.43391991 -2.069517612 -6.57067299 14.48297215 -1.90739107 -6.86618423 14.48297215 -1.90739107
		 -6.26618385 14.48297215 -1.90739107 -6.26618385 21.52079391 -1.90739107 -6.86618423 21.52079391 -1.90739107;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 4 0 3 6 1
		 6 5 0 7 5 0 6 8 1 8 7 0 2 9 0 9 6 0 9 10 0 10 8 0 11 12 0 12 13 0 13 14 0 14 11 0
		 15 7 0 8 16 1 16 15 0 10 17 0 17 16 0 18 19 0 19 15 0 16 18 1 17 20 0 20 18 0 21 14 0
		 13 22 0 22 21 0 20 21 0 22 19 0 12 0 0 1 11 0;
	setAttr -s 15 -ch 72 ".fc[0:14]" -type "polyFaces" 
		f 5 0 1 2 3 4
		mu 0 5 0 1 2 3 4
		f 4 5 -4 6 7
		mu 0 4 5 6 7 8
		f 4 8 -8 9 10
		mu 0 4 9 5 8 10
		f 4 -3 11 12 -7
		mu 0 4 7 11 12 8
		f 4 13 14 -10 -13
		mu 0 4 12 13 10 8
		f 4 15 16 17 18
		mu 0 4 14 15 16 17
		f 4 19 -11 20 21
		mu 0 4 18 9 10 19
		f 4 22 23 -21 -15
		mu 0 4 13 20 19 10
		f 4 24 25 -22 26
		mu 0 4 21 22 18 19
		f 4 -24 27 28 -27
		mu 0 4 19 20 23 21
		f 4 29 -18 30 31
		mu 0 4 24 17 25 26
		f 5 32 -32 33 -25 -29
		mu 0 5 27 24 28 29 30
		f 9 -31 -17 34 -5 -6 -9 -20 -26 -34
		mu 0 9 26 25 31 32 33 34 35 36 37
		f 9 35 -19 -30 -33 -28 -23 -14 -12 -2
		mu 0 9 1 14 17 24 27 38 39 40 2
		f 4 -35 -16 -36 -1
		mu 0 4 32 31 41 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface54";
	rename -uid "369EF057-4781-17B6-D77D-2D9EAA6D6045";
	setAttr ".rp" -type "double3" -6.56618408203125 12.920793151855468 2.5079742431640626 ;
	setAttr ".sp" -type "double3" -6.56618408203125 12.920793151855468 2.5079742431640626 ;
createNode mesh -n "polySurface54Shape" -p "polySurface54";
	rename -uid "53CD1F21-4AF5-C380-E640-568FE15BC412";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.625 0 0.875 0 0.875 0.11698711 0.75187051 0.11698711 0.625
		 0.11698711 0.625 0.63301289 0.375 0.61802924 0.53254402 0.63234353 0.49501202 0.99019951
		 0.46678698 0.99019951 0.46678701 1 0.49501199 1 0.52409446 1 0.52409452 0.99019951
		 0.375 0 0.53254402 0.11765642 0.375 0.13197073 0.46678701 0 0.46678701 0.056386732
		 0.49501199 0.056386732 0.49501199 0 0.52409452 0.056386735 0.52409446 0 0.125 0 0.24812953
		 0.13197073 0.125 0.13197073 0.49501199 0.14447618 0.46678704 0.14447618 0.46678701
		 0.19474971 0.49501199 0.19474971 0.52409452 0.19474971 0.52409446 0.14447618 0.375
		 0.5 0.625 0.5 0.625 0.59031177 0.375 0.59853077 0.625 0.15968825 0.625 0.25 0.375
		 0.25 0.375 0.15146923 0.875 0.15968825 0.875 0.25 0.75187051 0.15968823 0.125 0.25
		 0.125 0.15146923 0.24812953 0.15146923;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 23 ".vt[0:22]"  -6.86618423 4.32079268 2.88297415 -6.86618423 4.32079268 2.13297415
		 -6.26618385 4.32079268 2.13297415 -6.26618385 4.32079268 2.88297415 -6.86618423 12.36950684 2.13297415
		 -6.57067299 12.36950684 2.13297415 -6.26618385 12.36950684 2.13297415 -6.86618423 13.40037918 2.88297415
		 -6.86618423 12.415555 2.41034222 -6.57067299 12.415555 2.41034222 -6.26618385 12.415555 2.41034222
		 -6.26618385 13.40037918 2.88297415 -6.57067299 13.40037918 2.88297415 -6.57067299 14.7418766 2.88297415
		 -6.86618423 14.7418766 2.88297415 -6.86618423 15.30734348 2.13297415 -6.57067299 15.30734348 2.13297415
		 -6.26618385 15.30734348 2.13297415 -6.26618385 14.7418766 2.88297415 -6.86618423 21.52079391 2.88297415
		 -6.86618423 21.52079391 2.13297415 -6.26618385 21.52079391 2.13297415 -6.26618385 21.52079391 2.88297415;
	setAttr -s 35 ".ed[0:34]"  0 1 0 1 2 0 2 3 0 3 0 0 1 4 0 4 5 0 5 6 0
		 6 2 0 0 7 0 7 8 0 8 4 0 8 9 0 9 5 1 9 10 0 10 6 0 10 11 0 11 3 0 7 12 0 12 9 1 12 11 0
		 13 14 0 14 15 0 15 16 0 16 13 1 16 17 0 17 18 0 18 13 0 19 20 0 20 15 0 14 19 0 17 21 0
		 21 22 0 22 18 0 21 20 0 19 22 0;
	setAttr -s 16 -ch 70 ".fc[0:15]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 5 -2 4 5 6 7
		mu 0 5 4 5 6 7 8
		f 5 -5 -1 8 9 10
		mu 0 5 9 1 0 10 11
		f 4 -6 -11 11 12
		mu 0 4 12 13 14 15
		f 4 13 14 -7 -13
		mu 0 4 15 16 17 12
		f 5 -3 -8 -15 15 16
		mu 0 5 18 4 8 19 20
		f 4 -10 17 18 -12
		mu 0 4 21 22 23 24
		f 4 19 -16 -14 -19
		mu 0 4 23 25 26 24
		f 5 -4 -17 -20 -18 -9
		mu 0 5 27 18 20 28 29
		f 4 20 21 22 23
		mu 0 4 30 31 32 33
		f 4 24 25 26 -24
		mu 0 4 33 34 35 30
		f 4 27 28 -22 29
		mu 0 4 36 37 38 39
		f 4 30 31 32 -26
		mu 0 4 40 41 42 43
		f 4 -32 33 -28 34
		mu 0 4 42 41 37 36
		f 5 -29 -34 -31 -25 -23
		mu 0 5 44 45 41 40 46
		f 5 -33 -35 -30 -21 -27
		mu 0 5 43 42 47 48 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface62";
	rename -uid "BAC4DA5A-4A5F-AC78-DA77-318ECC62EFE7";
	setAttr ".rp" -type "double3" -6.6985302734375001 12.931227111816407 0 ;
	setAttr ".sp" -type "double3" -6.6985302734375001 12.931227111816407 0 ;
createNode mesh -n "polySurface62Shape" -p "polySurface62";
	rename -uid "17680681-4705-8A8B-21F3-C093DC791F49";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 132 ".uvst[0].uvsp[0:131]" -type "float2" 0.42350751 0.25 0.42350751
		 0.5 0.44136435 0.5 0.44136435 0.25 0.42350751 0.5 0.42350751 0.75 0.44136435 0.75
		 0.44136435 0.5 0.42350751 0.83681083 0.44136435 0.83681083 0.42350751 0.75 0.42350751
		 1 0.44136435 1 0.44136435 0.75 0.47802442 0.63721275 0.47802442 0.75 0.48757568 0.75
		 0.48757568 0.63721275 0.47802442 0.87997609 0.48757568 0.87997603 0.48757568 0.52779794
		 0.47802439 0.52779788 0.42350751 0.25 0.42350751 0.5 0.44136435 0.5 0.44136435 0.25
		 0.42350751 0.5 0.42350751 0.75 0.44136435 0.75 0.44136435 0.5 0.42350751 0.35930073
		 0.44136435 0.35930073 0.47802442 1 0.48757568 1 0.42350751 0 0.44136435 0 0.47802442
		 0 0.47802439 0.099306732 0.48757568 0.099306732 0.48757568 0 0.47802442 0.25 0.47802439
		 0.28922993 0.48757568 0.28922996 0.48757568 0.25 0.48757568 0.22521387 0.47802442
		 0.22521387 0.42350751 0 0.44136435 0 0.42350751 1 0.44136435 1 0.42350751 0.93169105
		 0.42350751 1 0.44136435 1 0.44136435 0.93169105 0.42350751 0.25 0.44136435 0.25 0.42350751
		 0.25 0.42350751 0.34565562 0.44136435 0.34565562 0.44136435 0.25 0.125 0 0.375 0
		 0.375 0.25 0.125 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.42350751 0 0.44136435 0 0.42350751
		 0 0.44136435 0 0.625 0.75 0.6168955 0.73228526 0.61689556 0.7104829 0.61689556 0.66978532
		 0.61689556 0.64798295 0.61689556 0.60728526 0.61689556 0.58548295 0.6168955 0.54478532
		 0.61689556 0.52298295 0.38310447 0.52298295 0.38310444 0.22701703 0.61689556 0.22701703
		 0.61689556 0.20521471 0.61689556 0.16451705 0.61689556 0.14271472 0.6168955 0.10201705
		 0.61689562 0.080214724 0.61689562 0.039517056 0.61689556 0.017714733 0.625 0 0.38310444
		 0.54478526 0.48531857 0.58548295 0.47860354 0.58143085 0.47255817 0.58548295 0.38310444
		 0.58548295 0.38310444 0.60728526 0.44698453 0.60728526 0.46059325 0.63249511 0.51612836
		 0.64069211 0.53837657 0.64069223 0.54310703 0.62352842 0.53571314 0.60728526 0.38310444
		 0.64798295 0.38310444 0.66978526 0.38310444 0.71048295 0.38310444 0.73228526 0.375
		 0.75 0.38310447 0.017714733 0.38310444 0.039517056 0.38310444 0.080214724 0.38310444
		 0.10201705 0.53571314 0.14271471 0.54310709 0.12647153 0.53837651 0.10930781 0.5161283
		 0.10930782 0.46059322 0.11750478 0.44698453 0.14271471 0.38310444 0.14271472 0.38310444
		 0.16451705 0.47255817 0.16451705 0.47860351 0.16856921 0.48531857 0.16451705 0.38310444
		 0.20521471 0.42350751 0.75 0.42350751 1 0.44136435 1 0.44136435 0.75 0.875 0 0.875
		 0.25 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  -6.74853039 7.050000191 7.1500001 -6.74853039 7.050000191 -7.1500001
		 -6.64853048 7.050000191 -7.1500001 -6.64853048 7.050000191 7.1500001 -6.74853039 15.64999962 -7.1500001
		 -6.74853039 14.14999962 -7.1500001 -6.64853048 14.14999962 -7.1500001 -6.64853048 15.64999962 -7.1500001
		 -6.74853039 14.14999962 -2.18441844 -6.64853048 14.14999962 -2.18441844 -6.74853039 9.85000038 -7.1500001
		 -6.74853039 9.85000038 7.1500001 -6.64853048 9.85000038 7.1500001 -6.64853048 9.85000038 -7.1500001
		 -6.74853039 13.032469749 -2.6366775 -6.74853039 11.85160542 -2.34733129 -6.64853048 11.85160542 -2.34733129
		 -6.64853048 13.032469749 -2.6366775 -6.74853039 11.85160542 -0.98650444 -6.64853048 11.85160542 -0.98650444
		 -6.74853039 11.35000038 7.1500001 -6.74853039 11.35000038 -7.1500001 -6.64853048 11.35000038 -7.1500001
		 -6.64853048 11.35000038 7.1500001 -6.74853039 19.95000076 -7.1500001 -6.74853039 18.45000076 -7.1500001
		 -6.64853048 18.45000076 -7.1500001 -6.64853048 19.95000076 -7.1500001 -6.74853039 15.64999962 0.89799833
		 -6.64853048 15.64999962 0.89799833 -6.74853039 12.415555 2.41034222 -6.64853048 12.415555 2.41034222
		 -6.74853039 5.55000019 7.1500001 -6.64853048 5.55000019 7.1500001 -6.74853039 14.14999962 3.24272847
		 -6.64853048 14.14999962 3.24272847 -6.74853039 15.92879009 1.30872929 -6.64853048 15.92879009 1.30872929
		 -6.64853048 15.64999962 1.67849839 -6.74853039 15.64999962 1.67849839 -6.74853039 18.45000076 7.1500001
		 -6.64853048 18.45000076 7.1500001 -6.74853039 14.14999962 7.1500001 -6.64853048 14.14999962 7.1500001
		 -6.74853039 19.95000076 7.1500001 -6.64853048 19.95000076 7.1500001 -6.74853039 15.64999962 7.1500001
		 -6.64853048 15.64999962 7.1500001 -6.74853039 4.33122635 7.64571428 -6.64853048 4.33122635 7.64571428
		 -6.64853048 21.53122711 7.64571428 -6.74853039 21.53122711 7.64571428 -6.64853048 21.53122711 -7.64571428
		 -6.74853039 21.53122711 -7.64571428 -6.74853039 4.33122635 -7.64571428 -6.74853039 5.55000019 -7.1500001
		 -6.64853048 5.55000019 -7.1500001 -6.64853048 4.33122635 -7.64571428;
	setAttr -s 97 ".ed[0:96]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 5 8 0 8 9 0 9 6 0 10 11 0 11 12 0 12 13 0 13 10 0 14 15 0 15 16 0 16 17 0 17 14 0
		 15 18 0 18 19 1 19 16 0 17 9 0 8 14 0 20 21 0 21 22 0 22 23 0 23 20 0 24 25 0 25 26 0
		 26 27 0 27 24 0 28 4 0 7 29 0 29 28 0 18 30 0 30 31 0 31 19 0 32 0 0 3 33 0 33 32 0
		 30 34 0 34 35 0 35 31 0 36 28 0 29 37 0 37 36 0 37 38 0 38 39 0 39 36 0 11 20 0 23 12 0
		 25 40 0 40 41 0 41 26 0 34 42 0 42 43 0 43 35 0 44 24 0 27 45 0 45 44 0 46 39 0 38 47 0
		 47 46 0 48 49 0 49 50 0 50 51 0 51 48 0 50 52 0 52 53 0 53 51 0 42 46 0 47 43 0 40 44 0
		 45 41 0 53 54 0 54 55 1 55 1 0 1 10 1 10 21 0 21 5 1 4 25 1 44 51 1 26 7 1 6 22 1
		 22 13 0 13 2 1 2 56 0 56 57 1 57 52 0 50 45 1 32 55 0 54 48 0 49 57 0 56 33 0 56 55 0
		 57 54 0;
	setAttr -s 33 -ch 194 ".fc[0:32]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 -6
		mu 0 4 5 8 9 6
		f 4 11 12 13 14
		mu 0 4 10 11 12 13
		f 4 15 16 17 18
		mu 0 4 14 15 16 17
		f 4 19 20 21 -17
		mu 0 4 15 18 19 16
		f 4 -21 35 36 37
		mu 0 4 19 18 32 33
		f 4 22 -10 23 -19
		mu 0 4 17 20 21 14
		f 4 24 25 26 27
		mu 0 4 22 23 24 25
		f 4 28 29 30 31
		mu 0 4 26 27 28 29
		f 4 32 -8 33 34
		mu 0 4 30 4 7 31
		f 4 38 -4 39 40
		mu 0 4 34 0 3 35
		f 4 41 42 43 -37
		mu 0 4 36 37 38 39
		f 4 44 -35 45 46
		mu 0 4 40 41 42 43
		f 4 47 48 49 -47
		mu 0 4 43 44 45 40
		f 4 50 -28 51 -13
		mu 0 4 46 22 25 47
		f 4 52 53 54 -30
		mu 0 4 27 48 49 28
		f 4 55 56 57 -43
		mu 0 4 50 51 52 53
		f 4 58 -32 59 60
		mu 0 4 54 26 29 55
		f 4 61 -49 62 63
		mu 0 4 56 57 58 59
		f 4 64 65 66 67
		mu 0 4 60 61 62 63
		f 4 68 69 70 -67
		mu 0 4 62 64 65 66
		f 4 71 -64 72 -57
		mu 0 4 67 56 59 68
		f 4 73 -61 74 -54
		mu 0 4 69 54 55 70
		f 12 -71 75 76 77 78 79 80 -5 81 -29 -59 82
		mu 0 12 66 65 71 72 73 74 75 76 77 78 79 80
		f 12 -60 -31 83 -7 84 85 86 87 88 89 -69 90
		mu 0 12 81 82 83 84 85 86 87 88 89 90 64 62
		f 27 -83 -74 -53 -82 -33 -45 -50 -62 -72 -56 -42 -36 -20 -16 -24 -9 -81 -25 -51 -12
		 -79 -1 -39 91 -77 92 -68
		mu 0 27 66 80 91 78 77 92 93 94 95 96 97 98 99 100 101 102 76 75 103 104 74 73 105 106
		 72 71 107
		f 27 93 -89 94 -40 -3 -87 -14 -52 -27 -85 -11 -23 -18 -22 -38 -44 -58 -73 -63 -48 -46
		 -34 -84 -55 -75 -91 -66
		mu 0 27 61 90 89 108 109 88 87 110 111 86 85 112 113 114 115 116 117 118 119 120 121 122
		 84 83 123 81 62
		f 4 -92 -41 -95 95
		mu 0 4 124 125 126 127
		f 4 96 -76 -70 -90
		mu 0 4 90 128 129 64
		f 4 -93 -97 -94 -65
		mu 0 4 107 71 130 131
		f 4 -80 -15 -86 -26
		mu 0 4 23 10 13 24
		f 4 -78 -96 -88 -2
		mu 0 4 1 124 127 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface59";
	rename -uid "7D55E13D-4C1A-A69B-FD7D-18BF37B605E0";
	setAttr ".rp" -type "double3" -6.786307373046875 12.9 0.0030004882812500002 ;
	setAttr ".sp" -type "double3" -6.786307373046875 12.9 0.0030004882812500002 ;
createNode mesh -n "polySurface59Shape" -p "polySurface59";
	rename -uid "049CC744-4B01-CDB0-701A-5BA38A6FC79E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.54088777 0.75 0.625
		 0.75 0.625 1 0.54088777 1 0.54099041 0.25 0.625 0.25 0.625 0.5 0.54099041 0.5 0.54343802
		 0.59188265 0.54088777 0 0.625 0 0.54343802 0.15811737 0.47044218 0.63721275 0.47044221
		 0.69762146 0.47839028 0.69762146 0.47839031 0.63721281 0.47839028 0.60122865 0.47044218
		 0.60122871 0.47839031 1 0.47839028 0.99668938 0.47044218 0.99668938 0.47044218 1
		 0.47044218 0 0.47044215 0.056365002 0.47839031 0.056365006 0.47839031 0 0.375 0.75
		 0.46192712 0.75 0.46192712 1 0.375 1 0.375 0.25 0.45261073 0.25 0.45261073 0.5 0.375
		 0.5 0.125 0 0.375 0 0.125 0.25 0.46038526 0.74611115 0.46192712 0 0.46038526 0.0038888548
		 0.875 0 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -6.82791519 12.39999962 -2.481704 -6.82791519 12.39999962 -7.59310722
		 -6.74469948 12.39999962 -7.59310722 -6.74469948 12.39999962 -2.481704 -6.74469948 13.39999962 -2.48793983
		 -6.74469948 13.39999962 -7.59310722 -6.82791519 13.39999962 -7.59310722 -6.82791519 13.39999962 -2.48793983
		 -6.82791519 13.032469749 -2.6366775 -6.74469948 13.032469749 -2.6366775 -6.74469948 12.415555 2.41034222
		 -6.74469948 12.39999962 2.31664729 -6.82791519 12.39999962 2.31664729 -6.82791519 12.415555 2.41034222
		 -6.82791519 13.39999962 2.882792 -6.74469948 13.39999962 2.882792 -6.82791519 12.39999962 7.59910822
		 -6.74469948 12.39999962 7.59910822 -6.74469948 13.39999962 7.59910822 -6.82791519 13.39999962 7.59910822;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 6 1 0 0 8 0 8 7 0 2 5 0 4 9 0 9 3 0 9 8 0 10 11 0 11 12 0 12 13 0 13 10 0 13 14 0
		 14 15 0 15 10 0 16 12 0 11 17 0 17 16 0 18 15 0 14 19 0 19 18 0 17 18 0 19 16 0;
	setAttr -s 14 -ch 60 ".fc[0:13]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 5 -7 8 -1 9 10
		mu 0 5 7 6 1 0 8
		f 5 -3 11 -5 12 13
		mu 0 5 9 10 5 4 11
		f 4 -10 -4 -14 14
		mu 0 4 12 13 14 15
		f 4 -13 -8 -11 -15
		mu 0 4 15 16 17 12
		f 4 15 16 17 18
		mu 0 4 18 19 20 21
		f 4 19 20 21 -19
		mu 0 4 22 23 24 25
		f 4 22 -17 23 24
		mu 0 4 26 27 28 29
		f 4 25 -21 26 27
		mu 0 4 30 31 32 33
		f 4 -25 28 -28 29
		mu 0 4 34 35 30 36
		f 5 -27 -20 -18 -23 -30
		mu 0 5 33 32 37 27 26
		f 5 -24 -16 -22 -26 -29
		mu 0 5 35 38 39 31 30
		f 4 -2 -9 -6 -12
		mu 0 4 10 40 41 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "second_floor5";
	rename -uid "216D3181-48FB-BC5B-8694-BCBF882FD859";
	setAttr ".rp" -type "double3" 0 12.9 0 ;
	setAttr ".sp" -type "double3" 0 12.9 0 ;
createNode mesh -n "second_floor5Shape" -p "second_floor5";
	rename -uid "BBA4BB7C-44D3-523E-3E80-9AA94EFBE49F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 53 ".uvst[0].uvsp[0:52]" -type "float2" 0.125 0 0.20792261
		 0 0.20752484 0.25 0.125 0.25 0.49501199 0.64508963 0.4826597 0.64508969 0.48265964
		 0.65464085 0.49501196 0.65464079 0.62499994 0.65464079 0.625 0.64508963 0.80628157
		 0.11278725 0.74502403 0.11278725 0.74502403 0.11737373 0.74502397 0.10987266 0.73917651
		 0.11278725 0.875 0.10491039 0.875 0.095359139 0.375 0.5 0.625 0.5 0.625 0.75 0.375
		 0.75 0.49501199 0.024874402 0.4826597 0.0248744 0.48265964 0.030599965 0.49501199
		 0.030599965 0.625 0.030599965 0.625 0.024874402 0.29251364 0 0.375 0 0.375 0.25 0.2932927
		 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 1 0.375 1 0.375 0.91751361 0.3774128
		 0.91751361 0.40280372 0.91751361 0.42782828 0.86783463 0.40280372 0.83292258 0.3774128
		 0.83292264 0.375 0.83292258 0.375 0.41747516 0.3774128 0.41747516 0.40280372 0.41747516
		 0.4163852 0.39883733 0.42763343 0.38167065 0.42724058 0.37893891 0.40280372 0.3317073
		 0.3774128 0.3317073 0.375 0.3317073;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".vt[0:24]"  -6.69999981 12.85000038 -7.69999981 -6.69999981 12.85000038 -2.59196711
		 -6.69999981 12.94999981 -2.6164701 -6.69999981 12.94999981 -7.69999981 -6.57067299 12.94999981 -2.6164701
		 -6.57067299 12.85000038 -2.59196711 -5.20972061 12.85000038 -2.59196711 -5.20972061 12.94999981 -2.6164701
		 -4.48175335 12.94999981 -1.46837902 -3.83282351 12.87648392 -0.42692468 -3.8788476 12.94999981 -0.41091281
		 -3.86840463 12.85000038 -0.44138503 -3.8999052 12.94999981 -0.2426364 6.69999981 12.94999981 -7.69999981
		 6.69999981 12.85000038 -7.69999981 -6.57067299 12.85000038 2.61883879 -6.69999981 12.85000038 2.61883879
		 -6.69999981 12.94999981 2.66683054 -6.57067299 12.94999981 2.66683054 -5.20972061 12.94999981 2.66683054
		 -5.20972061 12.85000038 2.61883879 -6.69999981 12.85000038 7.69999981 -6.69999981 12.94999981 7.69999981
		 6.69999981 12.85000038 7.69999981 6.69999981 12.94999981 7.69999981;
	setAttr -s 38 ".ed[0:37]"  0 1 0 1 2 0 2 3 0 3 0 0 4 2 0 1 5 0 5 4 1
		 5 6 0 6 7 0 7 4 0 8 9 0 10 8 0 9 10 1 9 11 0 12 10 0 9 12 0 3 13 0 13 14 0 14 0 0
		 15 16 0 16 17 0 17 18 0 18 15 1 18 19 0 19 20 0 20 15 0 8 7 0 6 11 0 16 21 0 21 22 0
		 22 17 0 11 20 0 19 12 0 23 14 0 13 24 0 24 23 0 21 23 0 24 22 0;
	setAttr -s 15 -ch 76 ".fc[0:14]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -2 5 6
		mu 0 4 4 5 6 7
		f 4 7 8 9 -7
		mu 0 4 7 8 9 4
		f 3 10 12 11
		mu 0 3 10 11 12
		f 5 13 31 -25 32 -16
		mu 0 5 11 13 26 25 14
		f 3 14 -13 15
		mu 0 3 14 12 11
		f 5 -9 27 -14 -11 26
		mu 0 5 15 16 13 11 10
		f 4 16 17 18 -4
		mu 0 4 17 18 19 20
		f 4 19 20 21 22
		mu 0 4 21 22 23 24
		f 4 23 24 25 -23
		mu 0 4 24 25 26 21
		f 4 28 29 30 -21
		mu 0 4 27 28 29 30
		f 4 33 -18 34 35
		mu 0 4 31 32 33 34
		f 4 36 -36 37 -30
		mu 0 4 28 31 34 29
		f 11 -19 -34 -37 -29 -20 -26 -32 -28 -8 -6 -1
		mu 0 11 20 19 35 36 37 38 39 40 41 42 43
		f 13 -38 -35 -17 -3 -5 -10 -27 -12 -15 -33 -24 -22 -31
		mu 0 13 29 34 18 17 44 45 46 47 48 49 50 51 52;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube42";
	rename -uid "62A5EC38-447F-B308-B2A6-F29E3E4203F2";
	setAttr ".t" -type "double3" -1.8719707903424456 22.051003104274557 7.0185878990206882 ;
	setAttr ".r" -type "double3" -82.864651900025621 29.562802285599254 14.325243899961658 ;
	setAttr ".s" -type "double3" 1.9487942095309481 1.9487942095309481 1.9487942095309481 ;
createNode transform -n "transform6" -p "pCube42";
	rename -uid "1D1901D2-4A29-57F1-5B05-DCBC2F7E165D";
	setAttr ".v" no;
createNode mesh -n "pCubeShape42" -p "transform6";
	rename -uid "C5807AFC-494D-A024-B14F-3C9D14E79BA4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:15]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49806797504425049 0.62146401405334473 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.128536 0.625 0.128536 0.625 0.62146401 0.875
		 0.128536 0.125 0.128536 0.375 0.62146401 0.49806798 0 0.49806798 1 0.49806798 0.75
		 0.49806798 0.62146401 0.49806798 0.5 0.49806798 0.25 0.49806798 0.128536;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" -0.063346647 -0.085384943 -0.04473627 ;
	setAttr ".pt[8]" -type "float3" -0.2645728 0.13688254 -0.048063062 ;
	setAttr ".pt[11]" -type "float3" -0.2645728 0.13688254 -0.048063062 ;
	setAttr ".pt[12]" -type "float3" 0.1087622 -0.24167748 0.026171105 ;
	setAttr ".pt[13]" -type "float3" 0.1087622 -0.24167748 0.026171105 ;
	setAttr ".pt[14]" -type "float3" -0.36895901 -0.34758672 0.40108407 ;
	setAttr -s 18 ".vt[0:17]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 0.01414402 0.5 0.5 0.01414402 0.5
		 0.5 0.01414402 -0.5 -0.5 0.01414402 -0.5 -0.0077279853 -0.5 0.5 -0.0077279853 -0.5 -0.5
		 -0.0077279662 0.01414402 -0.5 -0.0077279853 0.5 -0.5 -0.0077279853 0.5 0.5 -0.0077279853 0.01414402 0.5;
	setAttr -s 32 ".ed[0:31]"  0 12 0 2 16 0 4 15 0 6 13 0 0 8 0 1 9 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 7 0 11 6 0 8 17 1 9 10 1 10 14 1 11 8 1
		 12 1 0 13 7 0 14 11 1 15 5 0 16 3 0 17 9 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1
		 17 12 1;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 30 25 13 -25
		mu 0 4 25 26 15 3
		f 4 29 24 7 -24
		mu 0 4 24 25 3 5
		f 4 28 23 9 18
		mu 0 4 23 24 5 16
		f 4 26 21 11 -21
		mu 0 4 21 22 7 9
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 31 20 5 -26
		mu 0 4 26 20 1 15
		f 4 -12 -15 -18 -6
		mu 0 4 1 10 17 15
		f 4 27 -19 14 -22
		mu 0 4 22 23 16 7
		f 4 10 4 -20 15
		mu 0 4 12 0 14 18
		f 4 3 -27 -1 -11
		mu 0 4 6 22 21 8
		f 4 -23 -28 -4 -16
		mu 0 4 19 23 22 6
		f 4 2 -29 22 -9
		mu 0 4 4 24 23 19
		f 4 1 -30 -3 -7
		mu 0 4 2 25 24 4
		f 4 16 -31 -2 -13
		mu 0 4 14 26 25 2
		f 4 0 -32 -17 -5
		mu 0 4 0 20 26 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface38";
	rename -uid "DC7E7311-404C-469D-4624-53991CFAA004";
	setAttr ".rp" -type "double3" 0 12.931227111816407 7.6979998779296874 ;
	setAttr ".sp" -type "double3" 0 12.931227111816407 7.6979998779296874 ;
createNode transform -n "transform13" -p "polySurface38";
	rename -uid "8C87D75C-4E1B-A9A3-EA7C-EDA1B4083C35";
	setAttr ".v" no;
createNode mesh -n "polySurface38Shape" -p "transform13";
	rename -uid "B5F84B30-4EFC-03E8-5A63-CD83597C7B07";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:28]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 108 ".uvst[0].uvsp[0:107]" -type "float2" 0.49318933 0.5 0.49318933
		 0.75 0.51104617 0.75 0.51104617 0.5 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.49318933
		 0.5 0.49318933 0.75 0.51104617 0.75 0.51104617 0.5 0.49318933 1 0.51104617 1 0.125
		 0 0.375 0 0.375 0.25 0.125 0.25 0.49318933 0.25 0.51104617 0.25 0.49318933 0.5 0.49318933
		 0.75 0.51104617 0.75 0.51104617 0.5 0.49318933 1 0.51104617 1 0.49318933 0.25 0.51104617
		 0.25 0.49318933 0 0.51104617 0 0.49318933 0.5 0.49318933 0.75 0.51104617 0.75 0.51104617
		 0.5 0.49318933 1 0.51104617 1 0.49318933 0.25 0.51104617 0.25 0.44131076 0.25 0.44131076
		 0.5 0.375 0.5 0.49318933 0 0.51104617 0 0.25755259 0.128536 0.24946049 0.21033679
		 0.26228893 0.21033679 0.27038106 0.128536 0.49318933 1 0.51104617 1 0.26461092 6.8467658e-18
		 0.25118169 8.8437395e-18 0.375 0.87618166 0.375 0.88961089 0.625 0 0.875 0 0.875
		 0.25 0.625 0.25 0.49318933 0.25 0.51104617 0.25 0.49806795 0.87682247 0.49806798
		 0.863994 0.53756279 0.87885827 0.53756279 0.86602974 0.49318933 0 0.51104617 0 0.4892756
		 0.25 0.625 0.5 0.4892756 0.5 0.49318933 0 0.51104617 0 0.38799426 0.73228526 0.61184233
		 0.73228532 0.61184227 0.71048295 0.38799423 0.7104829 0.38799426 0.66978526 0.61184227
		 0.66978532 0.61184227 0.64798295 0.38799429 0.64798295 0.38799429 0.60728526 0.61184233
		 0.60728526 0.61184227 0.58548295 0.38799429 0.58548295 0.38799426 0.54478532 0.61184233
		 0.54478526 0.61184227 0.52298295 0.61184233 0.22701703 0.61184233 0.20521471 0.38799426
		 0.20521472 0.38799429 0.16451705 0.61184227 0.16451705 0.61184233 0.14271472 0.38799429
		 0.14271472 0.38799429 0.10201705 0.61184227 0.10201705 0.61184227 0.080214731 0.38799426
		 0.080214724 0.38799426 0.039517056 0.61184227 0.039517056 0.61184233 0.017714733
		 0.38799423 0.017714733 0.44410095 0.50806177 0.46906441 0.5148499 0.48868915 0.50408524
		 0.38799429 0.52298295 0.38799426 0.22701705 0.48868909 0.24591476 0.4691205 0.23499447
		 0.44410104 0.24193826;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".vt[0:49]"  -6.048309803 7.050000191 7.74799967 -6.048309803 5.55000019 7.74799967
		 -6.048309803 5.55000019 7.64799976 -6.048309803 7.050000191 7.64799976 -6.75 4.33122635 7.64799976
		 6.75 4.33122635 7.64799976 6.75 4.33122635 7.74799967 -6.75 4.33122635 7.74799967
		 -6.048309803 11.35000038 7.74799967 -6.048309803 9.85000038 7.74799967 -6.048309803 9.85000038 7.64799976
		 -6.048309803 11.35000038 7.64799976 6.039484024 5.55000019 7.74799967 6.039484024 5.55000019 7.64799976
		 -6.75 21.53122711 7.74799967 -6.75 21.53122711 7.64799976 6.039484024 7.050000191 7.74799967
		 6.039484024 7.050000191 7.64799976 -6.048309803 15.64999962 7.74799967 -6.048309803 14.14999962 7.74799967
		 -6.048309803 14.14999962 7.64799976 -6.048309803 15.64999962 7.64799976 6.039484024 9.85000038 7.74799967
		 6.039484024 9.85000038 7.64799976 6.039484024 11.35000038 7.74799967 6.039484024 11.35000038 7.64799976
		 -6.048309803 19.95000076 7.74799967 -6.048309803 18.45000076 7.74799967 -6.048309803 18.45000076 7.64799976
		 -6.048309803 19.95000076 7.64799976 6.039484024 14.14999962 7.74799967 6.039484024 14.14999962 7.64799976
		 6.039484024 15.64999962 7.74799967 6.039484024 15.64999962 7.64799976 -3.16921878 21.53122711 7.74799967
		 -3.16921878 21.53122711 7.64799976 -3.018544912 20.97657967 7.64799976 -3.018544912 20.97657967 7.74799967
		 6.039484024 18.45000076 7.74799967 6.039484024 18.45000076 7.64799976 -1.66749299 20.49884796 7.74799967
		 -1.67052221 20.50955772 7.64799976 6.75 21.53122711 7.64799976 6.75 21.53122711 7.74799967
		 6.039484024 19.95000076 7.74799967 6.039484024 19.95000076 7.64799976 -0.61078811 21.25016403 7.74799967
		 -0.61078811 21.25016403 7.64799976 -0.57911867 21.53122711 7.74799967 -0.57911867 21.53122711 7.64799976;
	setAttr -s 85 ".ed[0:84]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 8 9 0 9 10 0 10 11 0 11 8 0 1 12 0 12 13 0 13 2 0 7 14 0 14 15 0 15 4 0 16 0 0
		 3 17 0 17 16 0 18 19 0 19 20 0 20 21 0 21 18 0 9 22 0 22 23 0 23 10 0 24 8 0 11 25 0
		 25 24 0 12 16 0 17 13 0 26 27 0 27 28 0 28 29 0 29 26 0 19 30 0 30 31 0 31 20 0 32 18 0
		 21 33 0 33 32 0 14 34 0 34 35 0 35 15 0 22 24 0 25 23 0 36 35 0 34 37 0 37 36 0 27 38 0
		 38 39 0 39 28 0 37 40 0 40 41 0 41 36 0 5 42 0 42 43 0 43 6 0 44 26 0 29 45 0 45 44 0
		 40 46 0 46 47 0 47 41 0 46 48 0 48 49 0 49 47 0 30 32 0 33 31 0 48 43 0 42 49 0 38 44 0
		 45 39 0 4 2 1 3 10 1 11 20 1 21 28 1 45 42 1 27 18 1 19 8 1 9 0 1 1 7 1 43 44 1;
	setAttr -s 29 -ch 170 ".fc[0:28]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7
		f 4 8 9 10 11
		mu 0 4 8 9 10 11
		f 4 12 13 14 -2
		mu 0 4 1 12 13 2
		f 4 -8 15 16 17
		mu 0 4 14 15 16 17
		f 4 18 -4 19 20
		mu 0 4 18 0 3 19
		f 4 21 22 23 24
		mu 0 4 20 21 22 23
		f 4 25 26 27 -10
		mu 0 4 9 24 25 10
		f 4 28 -12 29 30
		mu 0 4 26 8 11 27
		f 4 31 -21 32 -14
		mu 0 4 28 18 19 29
		f 4 33 34 35 36
		mu 0 4 30 31 32 33
		f 4 37 38 39 -23
		mu 0 4 21 34 35 22
		f 4 40 -25 41 42
		mu 0 4 36 20 23 37
		f 4 43 44 45 -17
		mu 0 4 16 38 39 40
		f 4 46 -31 47 -27
		mu 0 4 41 26 27 42
		f 4 48 -45 49 50
		mu 0 4 43 44 45 46
		f 4 -51 54 55 56
		mu 0 4 43 46 49 50
		f 4 51 52 53 -35
		mu 0 4 31 47 48 32
		f 4 -56 63 64 65
		mu 0 4 51 52 59 60
		f 4 -6 57 58 59
		mu 0 4 53 54 55 56
		f 4 60 -37 61 62
		mu 0 4 57 30 33 58
		f 4 66 67 68 -65
		mu 0 4 59 61 62 60
		f 4 69 -43 70 -39
		mu 0 4 63 36 37 64
		f 4 71 -59 72 -68
		mu 0 4 65 56 66 67
		f 4 73 -63 74 -53
		mu 0 4 68 57 58 69
		f 18 -58 -5 75 -15 -33 -20 76 -28 -48 -30 77 -40 -71 -42 78 -54 -75 79
		mu 0 18 66 5 4 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84
		f 18 -74 -52 80 -41 -70 -38 81 -29 -47 -26 82 -19 -32 -13 83 -7 -60 84
		mu 0 18 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 15 53 56
		f 17 -46 -49 -57 -66 -69 -73 -80 -62 -36 -79 -24 -78 -11 -77 -3 -76 -18
		mu 0 17 40 39 100 101 102 67 66 84 103 82 81 78 77 74 73 70 4
		f 17 -84 -1 -83 -9 -82 -22 -81 -34 -61 -85 -72 -67 -64 -55 -50 -44 -16
		mu 0 17 15 99 96 95 92 91 88 87 104 85 56 65 105 106 107 38 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface32";
	rename -uid "EA185DAA-4087-24F5-ACD0-7F8BF5EA71FE";
	setAttr ".rp" -type "double3" -2.9279998779296874 12.920793151855468 7.5762652587890624 ;
	setAttr ".sp" -type "double3" -2.9279998779296874 12.920793151855468 7.5762652587890624 ;
createNode mesh -n "polySurface32Shape" -p "polySurface32";
	rename -uid "D5BA4006-45D0-B8CB-5B92-6297B17D1121";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0.75 0.625
		 0.75 0.625 1 0.375 1 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.625 0.24021105 0.625
		 0 0.875 0 0.87500006 0.24021105 0.28683552 0.128536 0.28259632 0.083188079 0.20562562
		 0.083188087 0.20986483 0.128536 0.20192493 0.20879787 0.27889565 0.20879787 0.42053863
		 0.5 0.375 0.5 0.42053863 0.25 0.46981829 0.50791013 0.625 0.50978893 0.46981829 0.24208993;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -3.30299997 4.32079268 7.27626514 -2.55299997 4.32079268 7.27626514
		 -2.55299997 4.32079268 7.87626505 -3.30299997 4.32079268 7.87626505 -3.30299997 21.52079391 7.87626505
		 -3.30299997 21.52079391 7.27626514 -2.55299997 20.84731483 7.87626505 -2.55299997 20.84731483 7.27626514
		 -3.018544912 20.97657967 7.87626505 -3.018544912 20.97657967 7.27626514 -3.16638398 21.52079391 7.27626514
		 -3.16638398 21.52079391 7.87626505;
	setAttr -s 18 ".ed[0:17]"  0 1 0 1 2 0 2 3 0 3 0 0 3 4 0 4 5 0 5 0 0
		 6 2 0 1 7 0 7 6 0 8 6 0 7 9 0 9 8 0 9 10 0 10 11 0 11 8 0 10 5 0 4 11 0;
	setAttr -s 8 -ch 36 ".fc[0:7]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 -4 4 5 6
		mu 0 4 4 5 6 7
		f 4 7 -2 8 9
		mu 0 4 8 9 10 11
		f 4 10 -10 11 12
		mu 0 4 12 13 14 15
		f 4 13 14 15 -13
		mu 0 4 15 16 17 12
		f 4 16 -6 17 -15
		mu 0 4 18 19 6 20
		f 6 -17 -14 -12 -9 -1 -7
		mu 0 6 19 18 21 22 1 0
		f 6 -3 -8 -11 -16 -18 -5
		mu 0 6 5 9 8 23 20 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface37";
	rename -uid "70379E22-4D2E-C3AF-0CF4-109D103DEB81";
	setAttr ".rp" -type "double3" 0 20.652414550781252 7.7916833496093751 ;
	setAttr ".sp" -type "double3" 0 20.652414550781252 7.7916833496093751 ;
createNode mesh -n "polySurface37Shape" -p "polySurface37";
	rename -uid "EB3190AF-43BD-B9AF-0A41-E09547F354FF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.125 0 0.375 0 0.375
		 0.25 0.125 0.25 0.44167969 0.25 0.44167969 0.5 0.375 0.5 0.27064735 0.128536 0.26808199
		 0.15446854 0.27875718 0.15446852 0.28132257 0.128536 0.27606484 -6.8467658e-18 0.26488969
		 -1.2552404e-17 0.375 0.88988966 0.375 0.90106487 0.48373568 0.88982844 0.48373568
		 0.87915319 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.48609757 0.25 0.625 0.25 0.625
		 0.5 0.48609757 0.5 0.625 0 0.875 0 0.875 0.25 0.44258821 0.54395872 0.46828601 0.66344738
		 0.46833393 0.084324688 0.44258821 0.20604125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -6.57213545 20.15241432 7.75007582 -6.57213545 20.15241432 7.83329105
		 -6.57213545 21.15241432 7.83329105 -6.57213545 21.15241432 7.75007582 -3.066311598 21.15241432 7.83329105
		 -3.066311598 21.15241432 7.75007582 -3.018544912 20.97657967 7.75007582 -3.018544912 20.97657967 7.83329105
		 -1.66490924 20.48971367 7.83329105 -1.66743016 20.4986248 7.75007582 -0.73095024 21.15241432 7.83329105
		 -0.73095024 21.15241432 7.75007582 6.57213545 20.15241432 7.75007582 6.57213545 20.15241432 7.83329105
		 6.57213545 21.15241432 7.83329105 6.57213545 21.15241432 7.75007582;
	setAttr -s 24 ".ed[0:23]"  0 1 0 1 2 0 2 3 0 3 0 0 2 4 0 4 5 0 5 3 0
		 6 5 0 4 7 0 7 6 0 7 8 0 8 9 0 9 6 0 8 10 0 10 11 0 11 9 0 0 12 0 12 13 0 13 1 0 10 14 0
		 14 15 0 15 11 0 12 15 0 14 13 0;
	setAttr -s 10 -ch 48 ".fc[0:9]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -3
		mu 0 4 2 4 5 6
		f 4 7 -6 8 9
		mu 0 4 7 8 9 10
		f 4 -10 10 11 12
		mu 0 4 7 10 11 12
		f 4 -12 13 14 15
		mu 0 4 13 14 15 16
		f 4 16 17 18 -1
		mu 0 4 17 18 19 20
		f 4 19 20 21 -15
		mu 0 4 21 22 23 24
		f 4 -18 22 -21 23
		mu 0 4 25 26 27 22
		f 8 -7 -8 -13 -16 -22 -23 -17 -4
		mu 0 8 6 5 28 29 24 23 18 17
		f 8 -19 -24 -20 -14 -11 -9 -5 -2
		mu 0 8 1 25 22 21 30 31 4 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "second_floor6";
	rename -uid "AB851302-4F8A-BB78-D966-80A44B0F1823";
	setAttr ".rp" -type "double3" 0 21.308173828125 0 ;
	setAttr ".sp" -type "double3" 0 21.308173828125 0 ;
createNode transform -n "transform7" -p "second_floor6";
	rename -uid "C071B20B-4F3B-8F6C-A1B0-4DA312E2075F";
	setAttr ".v" no;
createNode mesh -n "second_floor6Shape" -p "transform7";
	rename -uid "B9F9FC39-4278-EBC1-B624-A28B6E9B09B6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.75 0.375 0.75 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.44268441 0 0.44218135
		 0.25 0.4217217 0.62146401 0.375 0.56518567 0.375 0.57993382 0.40947789 0.62146401
		 0.125 0.18481436 0.26507032 0.18481438 0.26652929 0.17006615 0.125 0.17006615 0.49806798
		 0.74859262 0.49806795 0.73102248 0.49919355 0.75 0.51324546 0.75 0.49919355 0.87713712
		 0.51324546 0.87786138 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.48870581 0 0.48891446
		 0.25 0.625 1 0.48870581 1 0.48870581 0.98401523 0.48842633 0.98401356 0.44986945
		 0.98211241 0.44268441 0.98220575 0.44268441 1 0.375 1 0.44218132 0.26761085 0.45191798
		 0.2677373 0.48514599 0.26609892 0.48891449 0.26607585;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -6.75 21.35817337 -7.75 6.75 21.35817337 -7.75
		 6.75 21.25817299 -7.75 -6.75 21.25817299 -7.75 -6.75 21.25817299 7.75 -6.75 21.35817337 7.75
		 -3.095041752 21.25817299 7.75 -3.1222074 21.35817337 7.75 -2.59642935 21.35817337 6.65028811
		 -3.1222074 21.35817337 6.65812731 -3.095041752 21.25817299 6.64675426 -2.70704842 21.25817299 6.64096975
		 -0.62497735 21.25817299 6.7588377 -0.80211633 21.35817337 6.75186634 -0.60988557 21.25817299 6.75894403
		 -0.59861785 21.35817337 6.75329781 -0.60988557 21.25817299 7.75 -0.59861785 21.35817337 7.75
		 6.75 21.25817299 7.75 6.75 21.35817337 7.75;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 0 0 3 4 0 4 5 0 5 0 0
		 4 6 0 6 7 0 7 5 0 8 9 0 9 10 0 10 11 0 11 8 1 9 7 0 6 10 0 11 12 0 12 13 1 13 8 0
		 12 14 0 14 15 0 15 13 0 14 16 0 16 17 0 17 15 0 18 2 0 1 19 0 19 18 0 16 18 0 19 17 0;
	setAttr -s 12 -ch 60 ".fc[0:11]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -4
		mu 0 4 4 5 6 7
		f 4 7 8 9 -6
		mu 0 4 5 8 9 6
		f 4 10 11 12 13
		mu 0 4 10 11 12 13
		f 4 14 -9 15 -12
		mu 0 4 14 15 16 17
		f 4 -14 16 17 18
		mu 0 4 10 13 18 19
		f 4 19 20 21 -18
		mu 0 4 18 20 21 19
		f 4 22 23 24 -21
		mu 0 4 20 22 23 21
		f 4 25 -2 26 27
		mu 0 4 24 25 26 27
		f 4 28 -28 29 -24
		mu 0 4 28 24 27 29
		f 10 -3 -26 -29 -23 -20 -17 -13 -16 -8 -5
		mu 0 10 3 2 30 31 32 33 34 35 36 37
		f 10 -10 -15 -11 -19 -22 -25 -30 -27 -1 -7
		mu 0 10 6 9 38 39 40 41 29 27 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "second_floor7";
	rename -uid "A25EEEFF-425E-C4FA-0ABE-ED8A8DA6C06A";
	setAttr ".rp" -type "double3" 0 21.308173828125 0 ;
	setAttr ".sp" -type "double3" 0 21.308173828125 0 ;
createNode mesh -n "second_floor7Shape" -p "second_floor7";
	rename -uid "FA02275D-4FF3-46DB-0185-D38D65393B3A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "second_floor8";
	rename -uid "8DA0C1A9-42F2-161E-9129-A1B36EE66D7C";
	setAttr ".rp" -type "double3" 0 21.308173828125 0 ;
	setAttr ".sp" -type "double3" 0 21.308173828125 0 ;
createNode mesh -n "second_floor8Shape" -p "second_floor8";
	rename -uid "1B131D55-4B3E-8C71-AA9A-83BCA8BD7CB6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 124 ".uvst[0].uvsp[0:123]" -type "float2" 0.375 0.5 0.625 0.5
		 0.625 0.75 0.375 0.75 0.37694687 0.56753075 0.375 0.56518567 0.62499994 0.49345976
		 0.625 0.5 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.47204959 0.26674467 0.48043525
		 0.2663312 0.48079139 0.26861307 0.49919355 0.75 0.51324546 0.75 0.49806798 0.74859262
		 0.86865896 6.8375358e-17 0.875 0 0.44268441 0 0.44218135 0.25 0.375 0.43836501 0.375
		 0.45150131 0.375 0.57993382 0.37622875 0.58141392 0.125 0.18481436 0.14635949 0.18481436
		 0.13848108 0.17006615 0.125 0.17006615 0.17840582 0.22752748 0.19346003 0.21874413
		 0.49806798 0.47862309 0.498068 0.46548682 0.20002149 0.128536 0.21315777 0.128536
		 0.21112926 0.11877862 0.19779547 0.11782856 0.49806798 0.53241235 0.49330932 0.54025412
		 0.49806798 0.53908789 0.23574699 0.18481438 0.26507032 0.18481438 0.26652929 0.17006615
		 0.23657201 0.17006615 0.59506929 0.5 0.625 0.62146401 0.86855662 0.128536 0.86845976
		 0.25 0.875 0.25 0.875 0.128536 0.875 0.07699845 0.86859667 0.078229599 0.62092376
		 0.6692062 0.625 0.67300159 0.86861598 0.053867042 0.875 0.057611186 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.625 0.69238883 0.56903005 0.73872685 0.56895602 0.75 0.625
		 0.75 0.49919355 0.87127078 0.49919355 0.87713712 0.51324546 0.87786138 0.51324546
		 0.86641133 0.48870581 0 0.48891446 0.25 0.18663496 0.25 0.18827614 0.24248408 0.175134
		 0.242511 0.17349869 0.25 0.48724437 0.7154904 0.46797708 0.68784142 0.43471581 0.65179217
		 0.60928357 0.62146401 0.59824395 0.63010472 0.50608957 0.74105251 0.50070494 0.74288303
		 0.49806798 0.74025095 0.49919352 0.8512904 0.50641334 0.76666474 0.51324546 0.77093816
		 0.55648482 0.75151205 0.56505454 0.76360929 0.625 0.7563411 0.56276155 0.59254491
		 0.43065318 0.651851 0.625 1 0.48870581 1 0.48870578 0.99926245 0.48952311 0.99798095
		 0.48870581 0.9967503 0.48870581 0.98401523 0.48842633 0.98401356 0.45908552 0.98256683
		 0.45968416 0.98098433 0.47114483 0.96704352 0.45876941 0.97335106 0.44306844 0.98135352
		 0.44294047 0.98220247 0.44268441 0.98220575 0.44268444 0.98390073 0.44099265 0.99512064
		 0.44268441 0.99623352 0.44268441 1 0.375 1 0.44218138 0.25368679 0.4406397 0.25470084
		 0.44218132 0.26492533 0.44218132 0.26761085 0.44258705 0.26761609 0.4427155 0.26846799
		 0.45841646 0.27647054 0.47461036 0.28472432 0.48346874 0.27154514 0.48713773 0.26608673
		 0.48891449 0.26607585 0.48891446 0.26344332 0.49284303 0.25759861 0.48891446 0.2514396;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 51 ".vt[0:50]"  -6.75 21.35817337 -7.75 6.75 21.35817337 -7.75
		 6.75 21.25817299 -7.75 -6.75 21.25817299 -7.75 -3.10029888 21.35817337 6.65780067
		 -3.1222074 21.35817337 6.65812731 -1.37103879 21.35817337 5.59709215 -1.36154938 21.30838585 5.59158373
		 -6.75 21.25817299 7.75 -6.75 21.35817337 7.75 -1.50932157 21.35817337 6.71183062
		 -1.056495786 21.35817337 6.73746586 -1.03726685 21.35817337 6.59598827 -0.60988557 21.25817299 6.75894403
		 -0.59861785 21.35817337 6.75329781 -0.62497735 21.25817299 6.7588377 -0.38647595 21.35817337 7.27888775
		 -0.37727556 21.30990219 7.27354717 -3.095041752 21.25817299 7.75 -3.1222074 21.35817337 7.75
		 -3.093362808 21.35817337 6.60498428 -3.074302912 21.25817299 6.59392071 -3.095041752 21.25817299 6.64675426
		 -3.08121419 21.25817299 6.64654779 -3.1222074 21.35817337 6.82462835 -3.095041752 21.25817299 6.75184155
		 -2.22645092 21.25817299 6.097763538 -2.24551058 21.35817337 6.10882711 -3.1863966 21.25817299 7.44748354
		 -3.20545626 21.35817337 7.45854759 -3.1222074 21.35817337 7.52141953 -3.095041752 21.25817299 7.51647758
		 -2.17705464 21.25817299 6.57103109 -2.20938015 21.25817299 6.6691432 -2.17326927 21.29168892 6.67221212
		 -1.55817997 21.25817299 5.70669603 -0.88333404 21.30912399 6.40877581 -0.89268285 21.35817337 6.41420221
		 -0.68042582 21.3094368 6.75551271 -0.69456369 21.35817337 6.7526226 -0.70907694 21.3056488 6.75552797
		 -0.59861785 21.35817337 6.9165144 -0.60409623 21.30955315 6.8859477 6.75 21.25817299 7.75
		 6.75 21.35817337 7.75 -0.60988557 21.25817299 7.54852057 -0.56575102 21.25817299 7.62482834
		 -0.60988557 21.25817299 7.70427084 -0.60988557 21.25817299 7.75 -0.59861785 21.35817337 7.75
		 -0.59861785 21.35817337 7.66074467;
	setAttr -s 77 ".ed[0:76]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 7 6 0 3 8 0
		 8 9 0 9 0 0 10 11 0 11 12 1 12 10 1 13 14 0 15 13 0 17 16 0 8 18 0 18 19 0 19 9 0
		 20 21 0 5 22 0 22 23 0 23 4 0 5 24 0 24 25 1 25 22 0 21 26 0 26 27 1 27 20 0 28 25 0
		 24 29 0 29 28 0 29 30 0 30 31 0 31 28 0 32 33 0 33 34 0 34 32 0 30 19 0 18 31 0 36 7 0
		 7 35 0 37 6 0 36 37 1 38 39 0 39 37 0 36 38 0 40 38 0 16 41 0 41 42 0 42 17 0 43 2 0
		 1 44 0 44 43 0 42 45 0 45 46 0 46 17 0 47 48 0 48 49 0 49 50 0 50 47 0 48 43 0 44 49 0
		 20 4 0 23 21 0 26 35 0 6 27 0 10 34 0 11 40 0 36 12 0 14 39 0 40 15 1 13 45 0 41 14 0
		 46 47 0 50 16 0 35 32 0 33 15 0;
	setAttr -s 28 -ch 154 ".fc[0:27]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 19 20 21
		mu 0 4 4 5 24 25
		f 5 5 65 -27 64 -41
		mu 0 5 7 6 33 32 45
		f 4 6 7 8 -4
		mu 0 4 8 9 10 11
		f 3 9 10 11
		mu 0 3 12 13 14
		f 6 13 12 69 -44 -47 70
		mu 0 6 17 15 16 80 81 82
		f 4 14 47 48 49
		mu 0 4 19 18 55 56
		f 4 15 16 17 -8
		mu 0 4 9 20 21 10
		f 4 18 25 26 27
		mu 0 4 22 23 32 33
		f 4 22 23 24 -20
		mu 0 4 26 27 28 29
		f 4 -24 29 30 28
		mu 0 4 30 31 35 34
		f 4 31 32 33 -31
		mu 0 4 35 36 37 34
		f 3 34 35 36
		mu 0 3 38 39 40
		f 4 37 -17 38 -33
		mu 0 4 41 42 43 44
		f 7 39 40 75 -37 -67 -12 -69
		mu 0 7 46 7 45 38 40 89 78
		f 4 41 -6 -40 42
		mu 0 4 47 48 49 50
		f 4 43 44 -43 45
		mu 0 4 51 52 47 50
		f 5 46 -46 68 -11 67
		mu 0 5 53 54 46 78 79
		f 4 50 -2 51 52
		mu 0 4 57 58 59 60
		f 4 53 54 55 -50
		mu 0 4 61 62 63 64
		f 4 56 57 58 59
		mu 0 4 65 66 67 68
		f 4 60 -53 61 -58
		mu 0 4 69 57 60 70
		f 4 62 -22 63 -19
		mu 0 4 71 72 73 74
		f 6 -10 66 -36 76 -71 -68
		mu 0 6 75 76 77 90 17 82
		f 5 71 -54 -49 72 -13
		mu 0 5 15 83 84 85 16
		f 5 73 -60 74 -15 -56
		mu 0 5 63 86 87 88 64
		f 21 -3 -51 -61 -57 -74 -55 -72 -14 -77 -35 -76 -65 -26 -64 -21 -25 -29 -34 -39 -16
		 -7
		mu 0 21 3 2 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109
		f 20 -18 -38 -32 -30 -23 -5 -63 -28 -66 -42 -45 -70 -73 -48 -75 -59 -62 -52 -1 -9
		mu 0 20 10 21 110 111 112 113 114 115 116 117 118 119 120 121 122 123 70 60 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube43";
	rename -uid "9360C3EA-424E-C6E6-1C33-A19780A4C7CB";
	setAttr ".t" -type "double3" -7.5736549819295425 11.633075519964306 8.0695246005235788 ;
	setAttr ".r" -type "double3" -9.9541662757552114 -23.727178077593912 55.039150588061695 ;
createNode transform -n "transform8" -p "pCube43";
	rename -uid "4F4F580D-424C-2D81-0A20-5E877316996A";
	setAttr ".v" no;
createNode mesh -n "pCubeShape43" -p "transform8";
	rename -uid "D291D1CC-40CA-8F77-064E-F1AE1EDAA51F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pillar4";
	rename -uid "D8A2A3C9-4BEB-0479-DFB5-6A86ABE2482E";
	setAttr ".rp" -type "double3" -6.7240002441406252 12.920793151855468 7.665 ;
	setAttr ".sp" -type "double3" -6.7240002441406252 12.920793151855468 7.665 ;
createNode mesh -n "pillar4Shape" -p "pillar4";
	rename -uid "DA0C426D-4300-77C5-4B23-45A0951A4F5E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube44";
	rename -uid "F73BEC8F-4E96-E085-C733-71B0EC54A00F";
	setAttr ".t" -type "double3" 1.5228876841693233 14.629315702770205 7.9916200690014705 ;
	setAttr ".r" -type "double3" -213.40929714083524 -74.989952002303738 118.91333966255081 ;
createNode transform -n "transform12" -p "pCube44";
	rename -uid "F9FF4A96-422C-4AF0-AF4D-BAA31F825E44";
	setAttr ".v" no;
createNode mesh -n "pCubeShape44" -p "transform12";
	rename -uid "EC898990-4BEC-01D4-06A0-88AEE1C1935D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube45";
	rename -uid "FC82DB8E-4F75-81B2-CC5D-3D923995588B";
	setAttr ".t" -type "double3" 3.7456233210165069 10.790956001722371 8.0334917823793734 ;
	setAttr ".r" -type "double3" -27.446606786071193 0.46440865083990363 -68.16267439982127 ;
createNode transform -n "transform10" -p "pCube45";
	rename -uid "8092F337-4E45-96B7-41C2-0DBC91A8B312";
	setAttr ".v" no;
createNode mesh -n "pCubeShape45" -p "transform10";
	rename -uid "3D9704DA-4318-5367-3C74-7B868E29483F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
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
createNode transform -n "polySurface29";
	rename -uid "A9EB1F26-48A5-348D-394D-1C934F22ABA2";
	setAttr ".rp" -type "double3" 2.9277291870117188 12.920793151855468 7.5762652587890624 ;
	setAttr ".sp" -type "double3" 2.9277291870117188 12.920793151855468 7.5762652587890624 ;
createNode mesh -n "polySurface29Shape" -p "|polySurface29";
	rename -uid "F3A907DB-492C-4E6A-626F-D8A6AFE83DD3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface63";
	rename -uid "EE95A200-4912-94C8-0C5C-74BE6E8AD39E";
	setAttr ".rp" -type "double3" 0 12.931227111816407 7.6979998779296874 ;
	setAttr ".sp" -type "double3" 0 12.931227111816407 7.6979998779296874 ;
createNode mesh -n "polySurface63Shape" -p "polySurface63";
	rename -uid "0E66F8A4-4F92-B2B6-FFDD-658DE37F3824";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPrism1";
	rename -uid "7CCF8BC5-49C7-CFD1-CCB8-6BA8A911A94B";
	setAttr ".t" -type "double3" 7.4137103432203517 15.322860872516165 7.7627724307466419 ;
	setAttr ".r" -type "double3" -32.82263396510448 64.964683174300589 -48.787040527336529 ;
createNode transform -n "transform14" -p "pPrism1";
	rename -uid "8C58C6D2-4E9C-F152-0346-F5AFB049058C";
	setAttr ".v" no;
createNode mesh -n "pPrismShape1" -p "transform14";
	rename -uid "5DBA7110-4A27-A3A0-F144-E7AA5D0A2066";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pillar5";
	rename -uid "123E61E1-44C5-7BCE-A5E8-35B59E2C4AA0";
	setAttr ".rp" -type "double3" 6.723528442382813 12.920793151855468 7.665 ;
	setAttr ".sp" -type "double3" 6.723528442382813 12.920793151855468 7.665 ;
createNode mesh -n "pillar5Shape" -p "pillar5";
	rename -uid "2626CB1B-4E32-8899-FAD7-9BB2880124D7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pillar6";
	rename -uid "F432FC4A-47A2-2525-E966-28B23CC404B0";
	setAttr ".rp" -type "double3" 6.723528442382813 12.920793151855468 7.665 ;
	setAttr ".sp" -type "double3" 6.723528442382813 12.920793151855468 7.665 ;
createNode mesh -n "pillar6Shape" -p "pillar6";
	rename -uid "76AC8144-47AF-B15A-4989-7BA4C721BF49";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.48401529 0.056810215
		 0.5068506 0.11499026 0.55775476 0.099383734 0.375 0.55834341 0.3862372 0.48364636
		 0.375 0.44434947 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.125 0 0.375 0 0.375 0.25
		 0.125 0.25 0.375 0.5 0.625 0.5 0.57668722 0.3125 0.60290575 0.3125 0.625 0.55834341
		 0.625 0.44434947 0.625 0.25 0.625 0 0.625 0.14685704 0.51548529 0.14792126 0.53142709
		 0.15881076 0.625 0.16119315 0.875 0 0.875 0.25 0.6945532 0.16694777 0.72046423 0.14616746;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  6.75449896 14.49777699 7.91499996 6.97352839 14.42455673 7.91499996
		 6.97352839 14.3771143 7.7240715 6.97352839 15.80679893 7.77589369 6.97352839 15.41088104 7.91499996
		 6.78638268 15.24697399 7.91499996 6.47352839 4.32079268 7.41499996 6.97352839 4.32079268 7.41499996
		 6.97352839 4.32079268 7.91499996 6.47352839 4.32079268 7.91499996 6.47352839 21.52079391 7.91499996
		 6.47352839 21.52079391 7.41499996 6.97352839 21.52079391 7.41499996 6.97352839 21.52079391 7.91499996;
	setAttr -s 21 ".ed[0:20]"  0 1 0 1 2 0 2 0 0 3 4 0 4 5 0 5 3 0 6 7 0
		 7 8 0 8 9 0 9 6 0 9 10 0 10 11 0 11 6 0 11 12 0 12 7 0 2 3 0 5 0 0 10 13 0 13 12 0
		 8 1 0 4 13 0;
	setAttr -s 9 -ch 42 ".fc[0:8]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 5
		mu 0 3 3 4 5
		f 4 6 7 8 9
		mu 0 4 6 7 8 9
		f 4 -10 10 11 12
		mu 0 4 10 11 12 13
		f 4 13 14 -7 -13
		mu 0 4 14 15 7 6
		f 4 -3 15 -6 16
		mu 0 4 17 16 18 19
		f 4 17 18 -14 -12
		mu 0 4 12 20 15 14
		f 8 -9 19 -1 -17 -5 20 -18 -11
		mu 0 8 11 21 22 23 24 25 20 12
		f 8 -8 -15 -19 -21 -4 -16 -2 -20
		mu 0 8 21 26 27 20 25 28 29 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2E32B675-4849-BAE1-1562-4BB7E9ADB49D";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8D5295FF-43AC-F98D-2086-14BBE127C43E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "30630BD8-4BC1-E0DC-48A0-44BC4AD48D5B";
createNode displayLayerManager -n "layerManager";
	rename -uid "7241AFB7-4206-81FF-07AC-DCADB63803A0";
createNode displayLayer -n "defaultLayer";
	rename -uid "54911EBE-49B0-3356-6569-8180E823E956";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "15178720-4323-D3F8-CAA7-5F8B9F89A9C8";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "886522F3-4DCE-0B52-1971-67A5D1702AD7";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B32F2C20-4482-FD7E-39D6-03A1282EDF25";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
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
	rename -uid "EB2E6D1B-4934-DDFA-A75C-4E85DE7E1E44";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode groupId -n "groupId68";
	rename -uid "D6DE8818-4D2F-9C3C-D186-21A1F65B707F";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate1";
	rename -uid "9D07ABCE-40B0-A4D5-058F-EB959BEA0007";
	setAttr ".ic" 7;
	setAttr -s 7 ".out";
createNode groupId -n "groupId69";
	rename -uid "4186CBA9-4953-CAA4-8F29-2CB035964158";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "C7A3C1C8-419D-0CF2-9B86-E5A012BC598A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId70";
	rename -uid "8632AD85-4090-0BE1-4384-F7881D17AF4B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "E21A3C50-4911-91E5-9470-5E8175D4BB21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId71";
	rename -uid "924CE396-48A7-780E-436F-CB8386652AAE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "B6EA6220-46B3-53B2-26EE-A18CFAB7958B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId72";
	rename -uid "638296C0-4DBA-5466-27BD-D1AC3CAB192F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "66555EC7-40C4-8513-A038-23A885F952A9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId73";
	rename -uid "5224C796-420A-C879-534D-EAB02FEA1F93";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "6927FE69-45D4-79CE-A484-278D1E560023";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId74";
	rename -uid "E92AC9CD-4D6E-4741-061B-1182F4AAB187";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "D57AD385-499D-1BA7-CE26-388DD9B4BF7C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId75";
	rename -uid "F3906FC5-43C5-E154-304C-64A830495089";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "5C10E7E1-4527-44B7-5DFE-D29975FA5730";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId83";
	rename -uid "30DDA6C4-4BDD-36B1-7F40-CEBCCBFADA7A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId84";
	rename -uid "811795BD-4140-4977-86B2-61B62793E50B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId85";
	rename -uid "C9C46306-4805-7CDB-65F7-5FAC12D08496";
	setAttr ".ihi" 0;
createNode groupId -n "groupId86";
	rename -uid "F64DE0B2-44EE-6CCA-7CC2-3E9C7FBFF630";
	setAttr ".ihi" 0;
createNode groupId -n "groupId87";
	rename -uid "0EE71EB2-48CF-F329-C8E9-7F803369946F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId88";
	rename -uid "30A7393A-40B9-2322-AC47-BFA4C52196AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId89";
	rename -uid "D2C246D5-43C8-CB59-705E-A4B0DEEADA7D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId98";
	rename -uid "F8FC509F-49E2-B1F4-F306-2E8FBCC717E9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId99";
	rename -uid "2E2287BC-4DC7-5A51-5BC7-058FA3BA62C8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId100";
	rename -uid "E38791DB-42F0-88F8-54A7-58A5008D1658";
	setAttr ".ihi" 0;
createNode groupId -n "groupId101";
	rename -uid "10033020-4BEA-A416-547C-32B23F318D07";
	setAttr ".ihi" 0;
createNode groupId -n "groupId102";
	rename -uid "009DC2A0-400B-8351-96B0-01945E7313B6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId103";
	rename -uid "032A72C8-44D4-E327-AD17-CCB455D4DF17";
	setAttr ".ihi" 0;
createNode groupId -n "groupId104";
	rename -uid "6B3DE37F-4B5D-9BCE-84B2-F697EFDC1F90";
	setAttr ".ihi" 0;
createNode groupId -n "groupId105";
	rename -uid "FB21DCA9-4F74-8ECA-13BB-5994CB50AA58";
	setAttr ".ihi" 0;
createNode groupId -n "groupId106";
	rename -uid "864A1D85-4529-CC4A-AD41-E8AFEABB6758";
	setAttr ".ihi" 0;
createNode groupId -n "groupId107";
	rename -uid "476B9E87-47B4-6C07-E717-10B17E642394";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube2";
	rename -uid "0C54807B-47D7-BCC2-4669-42B8AB7317D5";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode groupId -n "groupId153";
	rename -uid "374A9EB1-4B25-61FD-B78F-A29DB3FEA364";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate3";
	rename -uid "E85C28A9-48D1-F503-6606-BDBF311075B3";
	setAttr ".ic" 13;
	setAttr -s 13 ".out";
createNode groupId -n "groupId154";
	rename -uid "BFD797EC-4637-4924-EDFE-08BB94D21E2C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "A3D099C0-406F-A881-3F16-64BE3A0373CD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId155";
	rename -uid "FD61EC3E-4AC4-97D7-2FD0-D697CD9167A1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "5325A2E3-4BBE-00E7-CCE5-4E87CE0E6A41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId156";
	rename -uid "C0CB3EB0-4A48-AACB-C120-ADB2DB67B8FF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "0317883C-4A51-D3EB-EA16-17B7E7899034";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId157";
	rename -uid "A7B2D52F-47EF-EB05-5CEE-BDA17EF6D2EC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "23AA6524-4B4F-6EE9-13F0-209A3BE1D663";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId158";
	rename -uid "57565D9E-45E6-0D59-9665-1F9457F25338";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "85B5665C-4F92-76FD-A216-9E83A70019EB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId159";
	rename -uid "1815C84E-4E87-536C-E40B-2AB8596C8A99";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "407AF9E1-47BF-F46A-03D5-199DFA1F07E2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId160";
	rename -uid "911C24FE-4DEE-4177-F1A5-FCB68B8B99FA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "5F4401F9-41FA-2B8A-61D5-BEAE47A78E1A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId161";
	rename -uid "04A8AABE-443F-FF19-1330-61A1A8F7162D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "B5435C72-4B54-F77D-8FA5-AF95489F531E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId162";
	rename -uid "F38A06A2-4387-C0BF-E255-B18DDA6C5ED8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "0D6960BE-445B-9C8B-F69C-2891ADA77D3F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId163";
	rename -uid "BEF9EF9B-42D1-C02F-704C-BD94642E71B6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "231FA88D-43C6-9110-E81D-CAAC6EFE232D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId164";
	rename -uid "9A9817F5-4BBC-3D81-AF8D-E59D24E704BD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "A61B12AF-48F0-4E11-1490-92B98B3D8263";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId165";
	rename -uid "3CA2782B-480A-5DE0-B362-988A5A9DFF88";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "6BE8BF6A-4F6D-02D6-52A1-5D9CAD195F3C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId166";
	rename -uid "09C86568-433A-8333-6FEB-A886FCCFFE25";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "2899CA24-4640-868B-0DD4-7FB5EBA6BC14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode groupId -n "groupId179";
	rename -uid "FFD75ED5-41F3-2377-8CBE-A1A0E9CC122C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId180";
	rename -uid "7A22AD3D-47E4-9794-8732-23B7FB704DAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId181";
	rename -uid "2AD6470D-46E8-A4E8-C725-1C9532617F3B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId182";
	rename -uid "485F775D-4162-E2E7-1521-D891EB29D612";
	setAttr ".ihi" 0;
createNode groupId -n "groupId184";
	rename -uid "CEFB75B2-4143-4C81-CAFF-469242CD1EA5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId185";
	rename -uid "C716D96B-4BBB-C8D8-F094-77AE96659948";
	setAttr ".ihi" 0;
createNode groupId -n "groupId186";
	rename -uid "8EFB17C7-4BE0-9F70-E4BB-CEAF4FE238CA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId187";
	rename -uid "1810F883-4346-9D34-1DC7-A18F1E4B22FA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId190";
	rename -uid "8969293C-456F-E444-2ABB-A3BDB2668A48";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate4";
	rename -uid "A5029266-4A99-0477-BF75-45AD0DB1C0AB";
	setAttr ".ic" 11;
	setAttr -s 11 ".out";
createNode groupId -n "groupId191";
	rename -uid "7E4A0F8E-4DE8-4021-50CE-FE83B426EA01";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "20F99E75-4AAA-8EE6-E3EF-76BC2A86D24B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId192";
	rename -uid "8F329F93-478B-630E-A1C9-B1A243054601";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "AC72FA94-43C0-E58B-09A0-A4A58C8740D0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId193";
	rename -uid "C0A61208-4E8B-A953-C511-4F9467469885";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "7B22F226-49AF-8F15-5028-46A2AD0C17C4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId194";
	rename -uid "9795F20A-4CBB-1C47-8CBF-7D8ADE649258";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "8899F458-4ACA-76A0-302B-AC85F8E70D68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId195";
	rename -uid "56D2155C-4057-48BF-6D29-47B3BFA98AFB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "83D1A6AF-42F7-3295-3957-DCA4581AB0BD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId196";
	rename -uid "BD2B5964-437D-2C2F-01F8-90A7E50EB8E3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "CDD51DE8-4980-526D-C12A-CD8DD675F50E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId197";
	rename -uid "1D599EC7-439F-DF6A-76AC-AA969C376EDE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "0876ED59-40F2-8D92-A742-2E92D9F1C307";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId198";
	rename -uid "CE1B92D4-49CD-92A7-5BA1-63A9B57F30D5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "9B73319D-4719-01C0-4F18-1EB2B0F12407";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId199";
	rename -uid "37C463AF-49FB-A4C2-422A-A0963E084901";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "CD02E14C-4296-38E0-666E-1F9AF83FF9E3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId200";
	rename -uid "C1F7CDB7-4E27-3106-F547-2A844AFCC4B3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "C041FFBF-4EE0-7970-0739-FF80A2AB3A22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId201";
	rename -uid "3F04114B-412A-9BF3-A7F2-EDB70FE3C4E6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "AA35C165-429C-BB3A-06C1-5E8644AA7C0B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode groupId -n "groupId202";
	rename -uid "753164B3-46B5-2A69-5727-CBADB9D7D6F9";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate5";
	rename -uid "214C7803-4FB6-B2C8-843E-148ECCEF736B";
	setAttr ".ic" 13;
	setAttr -s 8 ".out";
createNode groupId -n "groupId203";
	rename -uid "AD0FC69E-4D95-ED97-0C44-7592189BC6D4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "D3F7D0E4-4D13-8772-27CE-258CD2CAEB9D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId205";
	rename -uid "15D89E22-443C-5A6E-DD6A-B1B7DDC3E318";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "C7F68C50-421C-A910-B45D-B29011766704";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId208";
	rename -uid "88FD5F99-4D06-ADBC-A38B-60BB4F280464";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "3E658583-4950-F71D-7F98-18837C6DB4DD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId209";
	rename -uid "8B3E2D3B-4901-0D20-5213-12B5BC994374";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "65D9DFBD-41EE-6C77-A662-529D3A83C1FA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId210";
	rename -uid "7C5672EA-47A2-7549-E753-8B8CA5BAA378";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "483DEF76-4B9D-7F43-A622-C8AFA749005A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId211";
	rename -uid "66461F24-4575-C729-6CA6-ECA0F86F4100";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "1548FFB8-423A-79DC-5D86-17AFA07E4227";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId213";
	rename -uid "FB5644E8-40A3-D50D-6040-BF83B322B60C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	rename -uid "11C487C9-4809-FB08-BD34-4EAAD83E96EA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId214";
	rename -uid "B2048047-43B4-4B9F-3B72-F3A4EC3E2AD4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "4E8577F2-4F32-C631-6A41-A3B49EB07836";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId218";
	rename -uid "CD13A930-40EE-0797-C434-0CB5322817EF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId221";
	rename -uid "89F6A184-465C-FC13-ACB5-808F80EF01F1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId224";
	rename -uid "7B57C88D-4D30-A154-BF06-BFB2964574FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId227";
	rename -uid "C6A60BA2-4197-ABB5-B512-F18AE57B3C30";
	setAttr ".ihi" 0;
createNode groupId -n "groupId230";
	rename -uid "C1A6F2D8-4502-ED87-E126-3EAC1E48F582";
	setAttr ".ihi" 0;
createNode groupId -n "groupId235";
	rename -uid "A20FA645-48FA-CF0A-BC32-AC8C9BCFE51D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId238";
	rename -uid "4181EE4E-4492-580B-C497-A1AB494189F3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId241";
	rename -uid "830B458E-424B-A1DE-1492-EDAD4B768D16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId244";
	rename -uid "5FBCBA8E-4D18-ACB4-FB27-E7A924F73F9A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId249";
	rename -uid "DDDD36F1-4843-4C17-C155-03B041BF341A";
	setAttr ".ihi" 0;
createNode polyCBoolOp -n "polyCBoolOp1";
	rename -uid "8064594D-41BA-830C-0501-B0B1AA00D04D";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 406 -408 ;
createNode groupId -n "groupId250";
	rename -uid "CBF81BB3-462E-ADEA-FE98-88B8D2937402";
	setAttr ".ihi" 0;
createNode groupId -n "groupId251";
	rename -uid "E23C7D60-4129-C93A-0982-F0AAFB8AAE5E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId252";
	rename -uid "11C96E97-4687-E433-70D8-919019B85AF3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId253";
	rename -uid "D9F4544E-4B33-2236-A1D2-E59BCB00B413";
	setAttr ".ihi" 0;
createNode groupId -n "groupId254";
	rename -uid "A0D1029C-4E13-B63D-666A-8B8DEE627092";
	setAttr ".ihi" 0;
createNode groupId -n "groupId255";
	rename -uid "F2F476E8-4B41-9546-C797-BE82BC5A5A53";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube3";
	rename -uid "B95B1FCC-4373-EEDE-0278-C196BD7E9A5F";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp2";
	rename -uid "C173B3C1-40EA-C056-7070-6BB039FAF4C1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 412 -414 ;
createNode groupId -n "groupId256";
	rename -uid "B2E0F382-4D02-4D8C-AA74-20A86999C9D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId257";
	rename -uid "A84C1C44-4863-1C45-FCE9-2BA9624B6CD8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId258";
	rename -uid "1233ADD3-4813-A278-C1CB-978F04561763";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	rename -uid "7F3FD61C-498B-BCED-4F8B-0084ECDAC839";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId259";
	rename -uid "31B94FFD-4029-48FF-A2AA-BDA76F191DD8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId260";
	rename -uid "FE18AE47-4E40-5D38-07B2-ECB688E096DC";
	setAttr ".ihi" 0;
createNode polyCube -n "polyCube4";
	rename -uid "ECCFAAAF-4C22-3128-F2D6-C984AED835C7";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polyCBoolOp -n "polyCBoolOp3";
	rename -uid "97A33E0D-449F-2A6E-1329-F98EEBD14855";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 320 -429 ;
createNode groupId -n "groupId261";
	rename -uid "31081162-4637-B43D-8850-A284EEA3D50C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId262";
	rename -uid "AE348EA1-490C-011C-52A8-BD8876E62D2F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId263";
	rename -uid "75DEC40D-46CD-2E15-EA78-AE9AA5D8822A";
	setAttr ".ihi" 0;
createNode polyCBoolOp -n "polyCBoolOp4";
	rename -uid "021538CC-4ED9-5DBB-FC8E-7BB168C58F52";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 432 -434 ;
createNode groupId -n "groupId264";
	rename -uid "DDC35A44-4F32-722E-F9C7-2C8D5F823214";
	setAttr ".ihi" 0;
createNode groupId -n "groupId265";
	rename -uid "D3CA2FC5-47D0-31E5-BEA5-DE83F97BA793";
	setAttr ".ihi" 0;
createNode groupId -n "groupId266";
	rename -uid "6818D108-4888-C37C-E610-F094EAE4667D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	rename -uid "319A785A-450E-0F08-3E6C-12B3154C60B2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId267";
	rename -uid "AD5850CF-4109-64F3-1304-E0823534C8EE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId268";
	rename -uid "1F1771BB-4AC8-70BA-1033-97BA2A08CAC0";
	setAttr ".ihi" 0;
createNode polyPrism -n "polyPrism1";
	rename -uid "566AFEC2-4074-5919-CFE1-28A884C7A760";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".l" 2;
	setAttr ".w" 1;
	setAttr ".cuv" 3;
createNode polyCBoolOp -n "polyCBoolOp5";
	rename -uid "D493265D-4B70-F12C-0983-CBBB9E70F6C3";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
	setAttr ".op" 2;
	setAttr ".cls" 1;
	setAttr ".mg" -type "Int32Array" 2 437 -439 ;
createNode groupId -n "groupId269";
	rename -uid "D8B5509A-420B-0646-8601-1EAA5AF4BF16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId270";
	rename -uid "4145C645-4078-8541-48FD-28BE36075557";
	setAttr ".ihi" 0;
createNode groupId -n "groupId271";
	rename -uid "E6FDA7E4-4A45-3C44-A3C4-878ABADD3C49";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	rename -uid "713FE004-44DE-757E-7242-6AB6C8B65601";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId272";
	rename -uid "BFC3EBFC-4549-5A1D-7ACE-9A8D6C35D1EC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId273";
	rename -uid "6BE8C2AD-4DED-44C1-777E-B58127C340B1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId274";
	rename -uid "20A1E25D-4CB9-A2E4-4C74-BBBC02282E91";
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
	setAttr -s 124 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 88 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyCube1.out" "ground_floorShape.i";
connectAttr "groupParts1.og" "|pCube9|polySurface1|polySurfaceShape1.i";
connectAttr "groupId69.id" "|pCube9|polySurface1|polySurfaceShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube9|polySurface1|polySurfaceShape1.iog.og[0].gco"
		;
connectAttr "groupParts2.og" "|pCube9|polySurface2|polySurfaceShape2.i";
connectAttr "groupId70.id" "|pCube9|polySurface2|polySurfaceShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube9|polySurface2|polySurfaceShape2.iog.og[0].gco"
		;
connectAttr "groupParts3.og" "|pCube9|polySurface3|polySurfaceShape3.i";
connectAttr "groupId71.id" "|pCube9|polySurface3|polySurfaceShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube9|polySurface3|polySurfaceShape3.iog.og[0].gco"
		;
connectAttr "groupParts4.og" "|pCube9|polySurface4|polySurfaceShape4.i";
connectAttr "groupId72.id" "|pCube9|polySurface4|polySurfaceShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube9|polySurface4|polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "groupParts5.og" "|pCube9|polySurface5|polySurfaceShape5.i";
connectAttr "groupId73.id" "|pCube9|polySurface5|polySurfaceShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube9|polySurface5|polySurfaceShape5.iog.og[0].gco"
		;
connectAttr "groupParts6.og" "|pCube9|polySurface6|polySurfaceShape6.i";
connectAttr "groupId74.id" "|pCube9|polySurface6|polySurfaceShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube9|polySurface6|polySurfaceShape6.iog.og[0].gco"
		;
connectAttr "groupParts7.og" "|pCube9|polySurface7|polySurfaceShape7.i";
connectAttr "groupId75.id" "|pCube9|polySurface7|polySurfaceShape7.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube9|polySurface7|polySurfaceShape7.iog.og[0].gco"
		;
connectAttr "groupId68.id" "|pCube9|transform1|pCube9Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|pCube9|transform1|pCube9Shape.iog.og[0].gco"
		;
connectAttr "groupId83.id" "|pCube10|polySurface1|polySurfaceShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube10|polySurface1|polySurfaceShape1.iog.og[0].gco"
		;
connectAttr "groupId84.id" "|pCube10|polySurface2|polySurfaceShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube10|polySurface2|polySurfaceShape2.iog.og[0].gco"
		;
connectAttr "groupId85.id" "|pCube10|polySurface3|polySurfaceShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube10|polySurface3|polySurfaceShape3.iog.og[0].gco"
		;
connectAttr "groupId86.id" "|pCube10|polySurface4|polySurfaceShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube10|polySurface4|polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "groupId87.id" "|pCube10|polySurface5|polySurfaceShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube10|polySurface5|polySurfaceShape5.iog.og[0].gco"
		;
connectAttr "groupId88.id" "|pCube10|polySurface6|polySurfaceShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube10|polySurface6|polySurfaceShape6.iog.og[0].gco"
		;
connectAttr "groupId89.id" "|pCube10|polySurface7|polySurfaceShape7.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube10|polySurface7|polySurfaceShape7.iog.og[0].gco"
		;
connectAttr "groupId98.id" "|pCube11|polySurface2|polySurfaceShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube11|polySurface2|polySurfaceShape2.iog.og[0].gco"
		;
connectAttr "groupId99.id" "|pCube11|polySurface3|polySurfaceShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube11|polySurface3|polySurfaceShape3.iog.og[0].gco"
		;
connectAttr "groupId100.id" "|pCube11|polySurface4|polySurfaceShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube11|polySurface4|polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "groupId101.id" "|pCube11|polySurface5|polySurfaceShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube11|polySurface5|polySurfaceShape5.iog.og[0].gco"
		;
connectAttr "groupId102.id" "|pCube11|polySurface6|polySurfaceShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube11|polySurface6|polySurfaceShape6.iog.og[0].gco"
		;
connectAttr "groupId103.id" "|pCube12|polySurface2|polySurfaceShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube12|polySurface2|polySurfaceShape2.iog.og[0].gco"
		;
connectAttr "groupId104.id" "|pCube12|polySurface3|polySurfaceShape3.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube12|polySurface3|polySurfaceShape3.iog.og[0].gco"
		;
connectAttr "groupId105.id" "|pCube12|polySurface4|polySurfaceShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube12|polySurface4|polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "groupId106.id" "|pCube12|polySurface5|polySurfaceShape5.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube12|polySurface5|polySurfaceShape5.iog.og[0].gco"
		;
connectAttr "groupId107.id" "|pCube12|polySurface6|polySurfaceShape6.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube12|polySurface6|polySurfaceShape6.iog.og[0].gco"
		;
connectAttr "polyCube2.out" "pillarShape.i";
connectAttr "groupId256.id" "pillarShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pillarShape2.iog.og[0].gco";
connectAttr "groupId257.id" "pillarShape2.ciog.cog[0].cgid";
connectAttr "groupId269.id" "pillarShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pillarShape3.iog.og[0].gco";
connectAttr "groupId270.id" "pillarShape3.ciog.cog[0].cgid";
connectAttr "groupParts13.og" "polySurfaceShape15.i";
connectAttr "groupId154.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupParts14.og" "polySurfaceShape16.i";
connectAttr "groupId155.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupParts15.og" "polySurfaceShape17.i";
connectAttr "groupId156.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupParts16.og" "polySurfaceShape18.i";
connectAttr "groupId157.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupParts17.og" "polySurfaceShape19.i";
connectAttr "groupId158.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupParts18.og" "polySurfaceShape20.i";
connectAttr "groupId159.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupParts19.og" "polySurfaceShape21.i";
connectAttr "groupId160.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupParts20.og" "polySurfaceShape22.i";
connectAttr "groupId161.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "groupParts21.og" "polySurfaceShape23.i";
connectAttr "groupId162.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape24.i";
connectAttr "groupId163.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupParts23.og" "polySurfaceShape25.i";
connectAttr "groupId164.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "groupParts24.og" "polySurfaceShape26.i";
connectAttr "groupId165.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "groupParts25.og" "polySurfaceShape27.i";
connectAttr "groupId166.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupId153.id" "wall4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "wall4Shape.iog.og[0].gco";
connectAttr "groupId179.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupId180.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupId181.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupId182.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupId184.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupId185.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "groupId186.id" "polySurfaceShape35.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape35.iog.og[0].gco";
connectAttr "groupId187.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "groupParts26.og" "polySurfaceShape39.i";
connectAttr "groupId191.id" "polySurfaceShape39.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape39.iog.og[0].gco";
connectAttr "groupParts27.og" "polySurfaceShape40.i";
connectAttr "groupId192.id" "polySurfaceShape40.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape40.iog.og[0].gco";
connectAttr "groupParts28.og" "polySurfaceShape41.i";
connectAttr "groupId193.id" "polySurfaceShape41.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape41.iog.og[0].gco";
connectAttr "groupParts29.og" "polySurfaceShape42.i";
connectAttr "groupId194.id" "polySurfaceShape42.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape42.iog.og[0].gco";
connectAttr "groupParts30.og" "polySurfaceShape43.i";
connectAttr "groupId195.id" "polySurfaceShape43.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape43.iog.og[0].gco";
connectAttr "groupParts31.og" "polySurfaceShape44.i";
connectAttr "groupId196.id" "polySurfaceShape44.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape44.iog.og[0].gco";
connectAttr "groupParts32.og" "polySurfaceShape45.i";
connectAttr "groupId197.id" "polySurfaceShape45.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape45.iog.og[0].gco";
connectAttr "groupParts33.og" "polySurfaceShape46.i";
connectAttr "groupId198.id" "polySurfaceShape46.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape46.iog.og[0].gco";
connectAttr "groupParts34.og" "polySurfaceShape47.i";
connectAttr "groupId199.id" "polySurfaceShape47.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape47.iog.og[0].gco";
connectAttr "groupParts35.og" "polySurfaceShape48.i";
connectAttr "groupId200.id" "polySurfaceShape48.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape48.iog.og[0].gco";
connectAttr "groupParts36.og" "polySurfaceShape49.i";
connectAttr "groupId201.id" "polySurfaceShape49.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape49.iog.og[0].gco";
connectAttr "groupId190.id" "pCube37Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube37Shape.iog.og[0].gco";
connectAttr "groupParts37.og" "polySurfaceShape50.i";
connectAttr "groupId203.id" "polySurfaceShape50.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape50.iog.og[0].gco";
connectAttr "groupParts39.og" "polySurfaceShape52.i";
connectAttr "groupId205.id" "polySurfaceShape52.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape52.iog.og[0].gco";
connectAttr "groupParts42.og" "polySurfaceShape55.i";
connectAttr "groupId208.id" "polySurfaceShape55.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape55.iog.og[0].gco";
connectAttr "groupParts43.og" "polySurfaceShape56.i";
connectAttr "groupId209.id" "polySurfaceShape56.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape56.iog.og[0].gco";
connectAttr "groupParts44.og" "polySurfaceShape57.i";
connectAttr "groupId210.id" "polySurfaceShape57.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape57.iog.og[0].gco";
connectAttr "groupParts45.og" "polySurfaceShape58.i";
connectAttr "groupId211.id" "polySurfaceShape58.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape58.iog.og[0].gco";
connectAttr "groupParts47.og" "polySurfaceShape60.i";
connectAttr "groupId213.id" "polySurfaceShape60.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape60.iog.og[0].gco";
connectAttr "groupParts48.og" "polySurfaceShape61.i";
connectAttr "groupId214.id" "polySurfaceShape61.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape61.iog.og[0].gco";
connectAttr "groupId202.id" "pCube38Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube38Shape.iog.og[0].gco";
connectAttr "groupId218.id" "polySurface53Shape.ciog.cog[0].cgid";
connectAttr "groupId221.id" "polySurface51Shape.ciog.cog[0].cgid";
connectAttr "groupId224.id" "polySurface54Shape.ciog.cog[0].cgid";
connectAttr "groupId227.id" "polySurface62Shape.ciog.cog[0].cgid";
connectAttr "groupId230.id" "polySurface59Shape.ciog.cog[0].cgid";
connectAttr "groupId235.id" "second_floor5Shape.ciog.cog[0].cgid";
connectAttr "groupId252.id" "pCubeShape42.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape42.iog.og[2].gco";
connectAttr "groupId253.id" "pCubeShape42.ciog.cog[2].cgid";
connectAttr "groupId264.id" "polySurface38Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface38Shape.iog.og[0].gco";
connectAttr "groupId238.id" "polySurface38Shape.ciog.cog[0].cgid";
connectAttr "groupId265.id" "polySurface38Shape.ciog.cog[1].cgid";
connectAttr "groupId241.id" "polySurface32Shape.ciog.cog[0].cgid";
connectAttr "groupId244.id" "polySurface37Shape.ciog.cog[0].cgid";
connectAttr "groupId250.id" "second_floor6Shape.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "second_floor6Shape.iog.og[2].gco";
connectAttr "groupId249.id" "second_floor6Shape.ciog.cog[0].cgid";
connectAttr "groupId251.id" "second_floor6Shape.ciog.cog[3].cgid";
connectAttr "polyCBoolOp1.out" "second_floor7Shape.i";
connectAttr "groupId254.id" "second_floor7Shape.ciog.cog[0].cgid";
connectAttr "groupId255.id" "second_floor8Shape.ciog.cog[1].cgid";
connectAttr "groupId258.id" "pCubeShape43.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape43.iog.og[0].gco";
connectAttr "groupParts49.og" "pCubeShape43.i";
connectAttr "groupId259.id" "pCubeShape43.ciog.cog[0].cgid";
connectAttr "polyCBoolOp2.out" "pillar4Shape.i";
connectAttr "groupId260.id" "pillar4Shape.ciog.cog[0].cgid";
connectAttr "groupId266.id" "pCubeShape44.iog.og[4].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape44.iog.og[4].gco";
connectAttr "groupParts50.og" "pCubeShape44.i";
connectAttr "groupId267.id" "pCubeShape44.ciog.cog[4].cgid";
connectAttr "groupId261.id" "pCubeShape45.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape45.iog.og[0].gco";
connectAttr "groupId262.id" "pCubeShape45.ciog.cog[0].cgid";
connectAttr "polyCBoolOp3.out" "polySurface29Shape.i";
connectAttr "groupId263.id" "polySurface29Shape.ciog.cog[0].cgid";
connectAttr "polyCBoolOp4.out" "polySurface63Shape.i";
connectAttr "groupId268.id" "polySurface63Shape.ciog.cog[0].cgid";
connectAttr "groupId271.id" "pPrismShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPrismShape1.iog.og[0].gco";
connectAttr "groupParts51.og" "pPrismShape1.i";
connectAttr "groupId272.id" "pPrismShape1.ciog.cog[0].cgid";
connectAttr "polyCBoolOp5.out" "pillar5Shape.i";
connectAttr "groupId273.id" "pillar5Shape.ciog.cog[0].cgid";
connectAttr "groupId274.id" "pillar6Shape.ciog.cog[1].cgid";
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
connectAttr "|pCube9|transform1|pCube9Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts1.ig";
connectAttr "groupId69.id" "groupParts1.gi";
connectAttr "polySeparate1.out[1]" "groupParts2.ig";
connectAttr "groupId70.id" "groupParts2.gi";
connectAttr "polySeparate1.out[2]" "groupParts3.ig";
connectAttr "groupId71.id" "groupParts3.gi";
connectAttr "polySeparate1.out[3]" "groupParts4.ig";
connectAttr "groupId72.id" "groupParts4.gi";
connectAttr "polySeparate1.out[4]" "groupParts5.ig";
connectAttr "groupId73.id" "groupParts5.gi";
connectAttr "polySeparate1.out[5]" "groupParts6.ig";
connectAttr "groupId74.id" "groupParts6.gi";
connectAttr "polySeparate1.out[6]" "groupParts7.ig";
connectAttr "groupId75.id" "groupParts7.gi";
connectAttr "wall4Shape.o" "polySeparate3.ip";
connectAttr "polySeparate3.out[0]" "groupParts13.ig";
connectAttr "groupId154.id" "groupParts13.gi";
connectAttr "polySeparate3.out[1]" "groupParts14.ig";
connectAttr "groupId155.id" "groupParts14.gi";
connectAttr "polySeparate3.out[2]" "groupParts15.ig";
connectAttr "groupId156.id" "groupParts15.gi";
connectAttr "polySeparate3.out[3]" "groupParts16.ig";
connectAttr "groupId157.id" "groupParts16.gi";
connectAttr "polySeparate3.out[4]" "groupParts17.ig";
connectAttr "groupId158.id" "groupParts17.gi";
connectAttr "polySeparate3.out[5]" "groupParts18.ig";
connectAttr "groupId159.id" "groupParts18.gi";
connectAttr "polySeparate3.out[6]" "groupParts19.ig";
connectAttr "groupId160.id" "groupParts19.gi";
connectAttr "polySeparate3.out[7]" "groupParts20.ig";
connectAttr "groupId161.id" "groupParts20.gi";
connectAttr "polySeparate3.out[8]" "groupParts21.ig";
connectAttr "groupId162.id" "groupParts21.gi";
connectAttr "polySeparate3.out[9]" "groupParts22.ig";
connectAttr "groupId163.id" "groupParts22.gi";
connectAttr "polySeparate3.out[10]" "groupParts23.ig";
connectAttr "groupId164.id" "groupParts23.gi";
connectAttr "polySeparate3.out[11]" "groupParts24.ig";
connectAttr "groupId165.id" "groupParts24.gi";
connectAttr "polySeparate3.out[12]" "groupParts25.ig";
connectAttr "groupId166.id" "groupParts25.gi";
connectAttr "pCube37Shape.o" "polySeparate4.ip";
connectAttr "polySeparate4.out[0]" "groupParts26.ig";
connectAttr "groupId191.id" "groupParts26.gi";
connectAttr "polySeparate4.out[1]" "groupParts27.ig";
connectAttr "groupId192.id" "groupParts27.gi";
connectAttr "polySeparate4.out[2]" "groupParts28.ig";
connectAttr "groupId193.id" "groupParts28.gi";
connectAttr "polySeparate4.out[3]" "groupParts29.ig";
connectAttr "groupId194.id" "groupParts29.gi";
connectAttr "polySeparate4.out[4]" "groupParts30.ig";
connectAttr "groupId195.id" "groupParts30.gi";
connectAttr "polySeparate4.out[5]" "groupParts31.ig";
connectAttr "groupId196.id" "groupParts31.gi";
connectAttr "polySeparate4.out[6]" "groupParts32.ig";
connectAttr "groupId197.id" "groupParts32.gi";
connectAttr "polySeparate4.out[7]" "groupParts33.ig";
connectAttr "groupId198.id" "groupParts33.gi";
connectAttr "polySeparate4.out[8]" "groupParts34.ig";
connectAttr "groupId199.id" "groupParts34.gi";
connectAttr "polySeparate4.out[9]" "groupParts35.ig";
connectAttr "groupId200.id" "groupParts35.gi";
connectAttr "polySeparate4.out[10]" "groupParts36.ig";
connectAttr "groupId201.id" "groupParts36.gi";
connectAttr "pCube38Shape.o" "polySeparate5.ip";
connectAttr "polySeparate5.out[0]" "groupParts37.ig";
connectAttr "groupId203.id" "groupParts37.gi";
connectAttr "polySeparate5.out[2]" "groupParts39.ig";
connectAttr "groupId205.id" "groupParts39.gi";
connectAttr "polySeparate5.out[5]" "groupParts42.ig";
connectAttr "groupId208.id" "groupParts42.gi";
connectAttr "polySeparate5.out[6]" "groupParts43.ig";
connectAttr "groupId209.id" "groupParts43.gi";
connectAttr "polySeparate5.out[7]" "groupParts44.ig";
connectAttr "groupId210.id" "groupParts44.gi";
connectAttr "polySeparate5.out[8]" "groupParts45.ig";
connectAttr "groupId211.id" "groupParts45.gi";
connectAttr "polySeparate5.out[10]" "groupParts47.ig";
connectAttr "groupId213.id" "groupParts47.gi";
connectAttr "polySeparate5.out[11]" "groupParts48.ig";
connectAttr "groupId214.id" "groupParts48.gi";
connectAttr "second_floor6Shape.o" "polyCBoolOp1.ip[0]";
connectAttr "pCubeShape42.o" "polyCBoolOp1.ip[1]";
connectAttr "second_floor6Shape.wm" "polyCBoolOp1.im[0]";
connectAttr "pCubeShape42.wm" "polyCBoolOp1.im[1]";
connectAttr "pillarShape2.o" "polyCBoolOp2.ip[0]";
connectAttr "pCubeShape43.o" "polyCBoolOp2.ip[1]";
connectAttr "pillarShape2.wm" "polyCBoolOp2.im[0]";
connectAttr "pCubeShape43.wm" "polyCBoolOp2.im[1]";
connectAttr "polyCube3.out" "groupParts49.ig";
connectAttr "groupId258.id" "groupParts49.gi";
connectAttr "polySurfaceShape29.o" "polyCBoolOp3.ip[0]";
connectAttr "pCubeShape45.o" "polyCBoolOp3.ip[1]";
connectAttr "polySurfaceShape29.wm" "polyCBoolOp3.im[0]";
connectAttr "pCubeShape45.wm" "polyCBoolOp3.im[1]";
connectAttr "polySurface38Shape.o" "polyCBoolOp4.ip[0]";
connectAttr "pCubeShape44.o" "polyCBoolOp4.ip[1]";
connectAttr "polySurface38Shape.wm" "polyCBoolOp4.im[0]";
connectAttr "pCubeShape44.wm" "polyCBoolOp4.im[1]";
connectAttr "polyCube4.out" "groupParts50.ig";
connectAttr "groupId266.id" "groupParts50.gi";
connectAttr "pillarShape3.o" "polyCBoolOp5.ip[0]";
connectAttr "pPrismShape1.o" "polyCBoolOp5.ip[1]";
connectAttr "pillarShape3.wm" "polyCBoolOp5.im[0]";
connectAttr "pPrismShape1.wm" "polyCBoolOp5.im[1]";
connectAttr "polyPrism1.out" "groupParts51.ig";
connectAttr "groupId271.id" "groupParts51.gi";
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
connectAttr "ground_floorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pCube9|transform1|pCube9Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube9|polySurface1|polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube9|polySurface2|polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube9|polySurface3|polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube9|polySurface4|polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube9|polySurface5|polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube9|polySurface6|polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube9|polySurface7|polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube10|polySurface1|polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube10|polySurface2|polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube10|polySurface3|polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube10|polySurface4|polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube10|polySurface5|polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube10|polySurface6|polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube10|polySurface7|polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube11|polySurface2|polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube11|polySurface3|polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube11|polySurface4|polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube11|polySurface5|polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube11|polySurface6|polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube12|polySurface2|polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube12|polySurface3|polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube12|polySurface4|polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube12|polySurface5|polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube12|polySurface6|polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "second_floorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "second_floor2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "second_floor4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pillarShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pillarShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "wall4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape20.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape35.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube37Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape39.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape40.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape41.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape42.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape43.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape44.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape45.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape47.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape48.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape49.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube38Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape50.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape52.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape55.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape56.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape57.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape58.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape60.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape61.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface53Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface53Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface51Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface51Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface54Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface54Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface62Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface62Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface59Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface59Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "second_floor5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "second_floor5Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface38Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface32Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface32Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface37Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface37Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "second_floor6Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "second_floor6Shape.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "second_floor6Shape.ciog.cog[3]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape42.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape42.ciog.cog[2]" ":initialShadingGroup.dsm" -na;
connectAttr "second_floor7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "second_floor7Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "second_floor8Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "second_floor8Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pillarShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pillarShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape43.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape43.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pillar4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pillar4Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape45.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape45.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface29Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface29Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface38Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface38Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape44.iog.og[4]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape44.ciog.cog[4]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface63Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface63Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pillarShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pillarShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPrismShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPrismShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pillar5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pillar5Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pillar6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pillar6Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId69.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId70.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId71.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId72.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId73.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId74.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId75.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId83.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId84.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId85.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId86.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId87.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId88.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId89.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId98.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId99.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId100.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId101.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId102.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId103.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId104.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId105.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId106.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId107.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId153.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId154.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId155.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId156.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId157.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId158.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId159.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId160.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId161.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId162.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId163.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId164.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId165.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId166.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId179.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId180.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId181.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId182.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId184.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId185.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId186.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId187.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId190.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId191.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId192.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId193.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId194.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId195.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId196.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId197.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId198.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId199.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId200.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId201.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId202.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId203.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId205.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId208.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId209.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId210.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId211.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId213.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId214.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId250.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId251.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId252.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId253.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId255.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId256.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId257.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId258.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId259.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId261.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId262.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId264.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId265.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId266.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId267.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId269.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId270.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId271.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId272.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId274.msg" ":initialShadingGroup.gn" -na;
// End of 22 13x15  variant 1.ma
