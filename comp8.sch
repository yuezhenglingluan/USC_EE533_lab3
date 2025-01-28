VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL EQ
        SIGNAL A(7)
        SIGNAL A(6)
        SIGNAL A(5)
        SIGNAL A(4)
        SIGNAL A(3)
        SIGNAL A(2)
        SIGNAL A(1)
        SIGNAL A(0)
        SIGNAL B(7)
        SIGNAL B(6)
        SIGNAL B(5)
        SIGNAL B(4)
        SIGNAL B(3)
        SIGNAL B(2)
        SIGNAL B(1)
        SIGNAL B(0)
        SIGNAL AB0
        SIGNAL AB1
        SIGNAL AB2
        SIGNAL AB3
        SIGNAL XLXN_27
        SIGNAL XLXN_30
        SIGNAL AB4
        SIGNAL AB5
        SIGNAL AB6
        SIGNAL AB7
        SIGNAL XLXN_35
        SIGNAL XLXN_38
        SIGNAL XLXN_39
        SIGNAL XLXN_42
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL AB03
        SIGNAL AB47
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Output EQ
        BEGIN BLOCKDEF xnor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
            CIRCLE N 212 -104 228 -88 
            LINE N 228 -96 256 -96 
            LINE N 60 -28 60 -28 
        END BLOCKDEF
        BEGIN BLOCKDEF and4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xnor2
            PIN I0 B(0)
            PIN I1 A(0)
            PIN O AB0
        END BLOCK
        BEGIN BLOCK XLXI_2 xnor2
            PIN I0 B(1)
            PIN I1 A(1)
            PIN O AB1
        END BLOCK
        BEGIN BLOCK XLXI_3 xnor2
            PIN I0 B(2)
            PIN I1 A(2)
            PIN O AB2
        END BLOCK
        BEGIN BLOCK XLXI_4 xnor2
            PIN I0 B(3)
            PIN I1 A(3)
            PIN O AB3
        END BLOCK
        BEGIN BLOCK XLXI_5 xnor2
            PIN I0 B(4)
            PIN I1 A(4)
            PIN O AB4
        END BLOCK
        BEGIN BLOCK XLXI_6 xnor2
            PIN I0 B(5)
            PIN I1 A(5)
            PIN O AB5
        END BLOCK
        BEGIN BLOCK XLXI_7 xnor2
            PIN I0 B(6)
            PIN I1 A(6)
            PIN O AB6
        END BLOCK
        BEGIN BLOCK XLXI_8 xnor2
            PIN I0 B(7)
            PIN I1 A(7)
            PIN O AB7
        END BLOCK
        BEGIN BLOCK XLXI_9 and4
            PIN I0 AB3
            PIN I1 AB2
            PIN I2 AB1
            PIN I3 AB0
            PIN O AB03
        END BLOCK
        BEGIN BLOCK XLXI_10 and4
            PIN I0 AB7
            PIN I1 AB6
            PIN I2 AB5
            PIN I3 AB4
            PIN O AB47
        END BLOCK
        BEGIN BLOCK XLXI_11 and2
            PIN I0 AB47
            PIN I1 AB03
            PIN O EQ
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(7:0)
            WIRE 192 2192 352 2192
            WIRE 352 352 352 512
            WIRE 352 512 352 704
            WIRE 352 704 352 864
            WIRE 352 864 352 1072
            WIRE 352 1072 352 1264
            WIRE 352 1264 352 1440
            WIRE 352 1440 352 1584
            WIRE 352 1584 352 1600
            WIRE 352 1600 352 2192
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 192 2672 352 2672
            WIRE 352 2672 464 2672
            WIRE 464 416 464 576
            WIRE 464 576 464 704
            WIRE 464 704 464 768
            WIRE 464 768 464 928
            WIRE 464 928 464 1136
            WIRE 464 1136 464 1328
            WIRE 464 1328 464 1504
            WIRE 464 1504 464 1664
            WIRE 464 1664 464 1680
            WIRE 464 1680 464 2672
        END BRANCH
        IOMARKER 192 2192 A(7:0) R180 28
        IOMARKER 192 2672 B(7:0) R180 28
        BEGIN BRANCH EQ
            WIRE 2736 1008 2752 1008
            WIRE 2752 1008 2976 1008
        END BRANCH
        INSTANCE XLXI_1 928 480 R0
        INSTANCE XLXI_2 928 640 R0
        INSTANCE XLXI_3 928 832 R0
        INSTANCE XLXI_4 928 992 R0
        INSTANCE XLXI_5 928 1200 R0
        INSTANCE XLXI_6 928 1392 R0
        BUSTAP 352 1600 448 1600
        BEGIN BRANCH A(7)
            WIRE 448 1600 688 1600
            WIRE 688 1600 688 1616
            WIRE 688 1616 928 1616
            BEGIN DISPLAY 688 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 352 1440 448 1440
        BUSTAP 352 1264 448 1264
        BEGIN BRANCH A(5)
            WIRE 448 1264 688 1264
            WIRE 688 1264 928 1264
            BEGIN DISPLAY 688 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 352 1072 448 1072
        BEGIN BRANCH A(4)
            WIRE 448 1072 688 1072
            WIRE 688 1072 928 1072
            BEGIN DISPLAY 688 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 352 864 448 864
        BEGIN BRANCH A(3)
            WIRE 448 864 688 864
            WIRE 688 864 928 864
            BEGIN DISPLAY 688 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 352 704 448 704
        BEGIN BRANCH A(2)
            WIRE 448 704 688 704
            WIRE 688 704 928 704
            BEGIN DISPLAY 688 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 352 512 448 512
        BEGIN BRANCH A(1)
            WIRE 448 512 688 512
            WIRE 688 512 928 512
            BEGIN DISPLAY 688 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 352 352 448 352
        BEGIN BRANCH A(0)
            WIRE 448 352 688 352
            WIRE 688 352 928 352
            BEGIN DISPLAY 688 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 464 1664 560 1664
        BEGIN BRANCH B(7)
            WIRE 560 1664 736 1664
            WIRE 736 1664 736 1664
            WIRE 736 1664 736 1680
            WIRE 736 1680 928 1680
            BEGIN DISPLAY 744 1664 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BUSTAP 464 1504 560 1504
        BUSTAP 464 1328 560 1328
        BEGIN BRANCH B(5)
            WIRE 560 1328 736 1328
            WIRE 736 1328 928 1328
            BEGIN DISPLAY 744 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 464 1136 560 1136
        BEGIN BRANCH B(4)
            WIRE 560 1136 736 1136
            WIRE 736 1136 928 1136
            BEGIN DISPLAY 744 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 464 928 560 928
        BEGIN BRANCH B(3)
            WIRE 560 928 736 928
            WIRE 736 928 928 928
            BEGIN DISPLAY 744 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 464 768 560 768
        BEGIN BRANCH B(2)
            WIRE 560 768 736 768
            WIRE 736 768 928 768
            BEGIN DISPLAY 744 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 464 576 560 576
        BEGIN BRANCH B(1)
            WIRE 560 576 736 576
            WIRE 736 576 928 576
            BEGIN DISPLAY 744 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 464 416 560 416
        BEGIN BRANCH B(0)
            WIRE 560 416 736 416
            WIRE 736 416 928 416
            BEGIN DISPLAY 744 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH AB0
            WIRE 1184 384 1504 384
            WIRE 1504 384 1920 384
            WIRE 1920 384 1920 544
            BEGIN DISPLAY 1504 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH AB3
            WIRE 1184 896 1536 896
            WIRE 1536 896 1920 896
            WIRE 1920 736 1920 896
            BEGIN DISPLAY 1536 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_9 1920 800 R0
        BEGIN BRANCH AB1
            WIRE 1184 544 1200 544
            WIRE 1200 544 1200 608
            WIRE 1200 608 1552 608
            WIRE 1552 608 1920 608
            BEGIN DISPLAY 1552 608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH AB2
            WIRE 1184 736 1200 736
            WIRE 1200 672 1200 736
            WIRE 1200 672 1536 672
            WIRE 1536 672 1920 672
            BEGIN DISPLAY 1536 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH AB4
            WIRE 1184 1104 1456 1104
            WIRE 1456 1104 1888 1104
            WIRE 1888 1104 1888 1296
            BEGIN DISPLAY 1456 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH AB7
            WIRE 1184 1648 1488 1648
            WIRE 1488 1648 1888 1648
            WIRE 1888 1488 1888 1648
            BEGIN DISPLAY 1488 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_10 1888 1552 R0
        BEGIN BRANCH AB5
            WIRE 1184 1296 1200 1296
            WIRE 1200 1296 1200 1360
            WIRE 1200 1360 1488 1360
            WIRE 1488 1360 1888 1360
            BEGIN DISPLAY 1488 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH AB6
            WIRE 1184 1472 1200 1472
            WIRE 1200 1424 1200 1472
            WIRE 1200 1424 1488 1424
            WIRE 1488 1424 1872 1424
            WIRE 1872 1424 1888 1424
            BEGIN DISPLAY 1488 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_8 928 1744 R0
        BEGIN BRANCH B(6)
            WIRE 560 1504 736 1504
            WIRE 736 1504 736 1504
            WIRE 736 1504 928 1504
            BEGIN DISPLAY 744 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 448 1440 688 1440
            WIRE 688 1440 928 1440
            BEGIN DISPLAY 688 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_7 928 1568 R0
        INSTANCE XLXI_11 2480 1104 R0
        BEGIN BRANCH AB03
            WIRE 2176 640 2320 640
            WIRE 2320 640 2320 768
            WIRE 2320 768 2320 976
            WIRE 2320 976 2480 976
            BEGIN DISPLAY 2320 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH AB47
            WIRE 2144 1392 2304 1392
            WIRE 2304 1040 2480 1040
            WIRE 2304 1040 2304 1216
            WIRE 2304 1216 2304 1392
            BEGIN DISPLAY 2304 1216 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2976 1008 EQ R0 28
    END SHEET
END SCHEMATIC
