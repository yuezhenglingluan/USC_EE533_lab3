VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a(55:0)
        SIGNAL b(55:0)
        SIGNAL amask(6:0)
        SIGNAL a(55:48)
        SIGNAL b(55:48)
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL a(39:32)
        SIGNAL b(39:32)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL amask(6)
        SIGNAL amask(5)
        SIGNAL amask(4)
        SIGNAL amask(3)
        SIGNAL XLXN_28
        SIGNAL amask(2)
        SIGNAL XLXN_30
        SIGNAL amask(1)
        SIGNAL XLXN_32
        SIGNAL amask(0)
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL XLXN_40
        SIGNAL XLXN_41
        SIGNAL XLXN_42
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        SIGNAL XLXN_46
        SIGNAL match
        PORT Input a(55:0)
        PORT Input b(55:0)
        PORT Input amask(6:0)
        PORT Output match
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2025 1 28 5 31 2
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_13 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_21
            PIN O XLXN_45
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_22
            PIN O XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_15 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_23
            PIN O XLXN_40
        END BLOCK
        BEGIN BLOCK XLXI_16 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_20
            PIN O XLXN_46
        END BLOCK
        BEGIN BLOCK XLXI_17 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_18 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_28
            PIN O XLXN_41
        END BLOCK
        BEGIN BLOCK XLXI_19 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_20 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_30
            PIN O XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_21 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_22 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_32
            PIN O XLXN_43
        END BLOCK
        BEGIN BLOCK XLXI_23 and7
            PIN I0 XLXN_43
            PIN I1 XLXN_42
            PIN I2 XLXN_41
            PIN I3 XLXN_40
            PIN I4 XLXN_44
            PIN I5 XLXN_45
            PIN I6 XLXN_46
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN BRANCH a(55:0)
            WIRE 224 48 384 48
        END BRANCH
        BEGIN BRANCH b(55:0)
            WIRE 224 128 384 128
        END BRANCH
        BEGIN BRANCH amask(6:0)
            WIRE 272 208 384 208
        END BRANCH
        IOMARKER 224 48 a(55:0) R180 28
        IOMARKER 224 128 b(55:0) R180 28
        IOMARKER 272 208 amask(6:0) R180 28
        BEGIN INSTANCE XLXI_1 224 672 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 224 1056 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 224 1440 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 224 1824 R0
        END INSTANCE
        BEGIN BRANCH a(55:48)
            WIRE 160 352 224 352
            BEGIN DISPLAY 160 352 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 160 544 224 544
            BEGIN DISPLAY 160 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 160 736 224 736
            BEGIN DISPLAY 160 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 160 928 224 928
            BEGIN DISPLAY 160 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 160 1120 224 1120
            BEGIN DISPLAY 160 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 160 1312 224 1312
            BEGIN DISPLAY 160 1312 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 160 1504 224 1504
            BEGIN DISPLAY 160 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 160 1696 224 1696
            BEGIN DISPLAY 160 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_13 720 960 R0
        INSTANCE XLXI_15 720 1728 R0
        INSTANCE XLXI_16 720 576 R0
        INSTANCE XLXI_14 720 1344 R0
        BEGIN BRANCH XLXN_20
            WIRE 608 448 720 448
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 608 832 720 832
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 608 1216 720 1216
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 608 1600 720 1600
        END BRANCH
        BEGIN BRANCH amask(6)
            WIRE 672 512 720 512
            BEGIN DISPLAY 672 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 672 896 720 896
            BEGIN DISPLAY 672 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 672 1280 720 1280
            BEGIN DISPLAY 672 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 672 1664 720 1664
            BEGIN DISPLAY 672 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_17 224 2208 R0
        END INSTANCE
        BEGIN BRANCH XLXN_28
            WIRE 608 1984 720 1984
        END BRANCH
        INSTANCE XLXI_18 720 2112 R0
        BEGIN BRANCH amask(2)
            WIRE 672 2048 720 2048
            BEGIN DISPLAY 672 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_19 224 2592 R0
        END INSTANCE
        BEGIN BRANCH XLXN_30
            WIRE 608 2368 720 2368
        END BRANCH
        INSTANCE XLXI_20 720 2496 R0
        BEGIN BRANCH amask(1)
            WIRE 672 2432 720 2432
            BEGIN DISPLAY 672 2432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_21 224 2976 R0
        END INSTANCE
        BEGIN BRANCH XLXN_32
            WIRE 608 2752 720 2752
        END BRANCH
        INSTANCE XLXI_22 720 2880 R0
        BEGIN BRANCH amask(0)
            WIRE 672 2816 720 2816
            BEGIN DISPLAY 672 2816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 160 1888 224 1888
            BEGIN DISPLAY 160 1888 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 160 2080 224 2080
            BEGIN DISPLAY 160 2080 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 160 2272 224 2272
            BEGIN DISPLAY 160 2272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 160 2464 224 2464
            BEGIN DISPLAY 160 2464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 160 2656 224 2656
            BEGIN DISPLAY 160 2656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 160 2848 224 2848
            BEGIN DISPLAY 160 2848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_23 1536 1888 R0
        BEGIN BRANCH XLXN_40
            WIRE 976 1632 1536 1632
        END BRANCH
        BEGIN BRANCH XLXN_41
            WIRE 976 2016 1248 2016
            WIRE 1248 1696 1248 2016
            WIRE 1248 1696 1536 1696
        END BRANCH
        BEGIN BRANCH XLXN_42
            WIRE 976 2400 1264 2400
            WIRE 1264 1760 1264 2400
            WIRE 1264 1760 1536 1760
        END BRANCH
        BEGIN BRANCH XLXN_43
            WIRE 976 2784 1536 2784
            WIRE 1536 1824 1536 2784
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 976 1248 1248 1248
            WIRE 1248 1248 1248 1568
            WIRE 1248 1568 1536 1568
        END BRANCH
        BEGIN BRANCH XLXN_45
            WIRE 976 864 1264 864
            WIRE 1264 864 1264 1504
            WIRE 1264 1504 1536 1504
        END BRANCH
        BEGIN BRANCH XLXN_46
            WIRE 976 480 1536 480
            WIRE 1536 480 1536 1440
        END BRANCH
        BEGIN BRANCH match
            WIRE 1792 1632 1904 1632
            WIRE 1904 1632 2064 1632
        END BRANCH
        IOMARKER 2064 1632 match R0 28
    END SHEET
END SCHEMATIC
