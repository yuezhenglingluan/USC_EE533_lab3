VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL datain(111:0)
        SIGNAL datacomp(55:0)
        SIGNAL wildcard(6:0)
        SIGNAL match
        SIGNAL XLXN_9(6:0)
        SIGNAL XLXN_10(6:0)
        SIGNAL XLXN_11(55:0)
        SIGNAL datain(55:0)
        SIGNAL datain(71:16)
        SIGNAL datain(79:24)
        SIGNAL datain(111:56)
        SIGNAL datain(103:48)
        SIGNAL datain(95:40)
        SIGNAL datain(87:32)
        SIGNAL datain(63:8)
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_47
        SIGNAL XLXN_48
        SIGNAL XLXN_51
        PORT Input datain(111:0)
        PORT Input datacomp(55:0)
        PORT Input wildcard(6:0)
        PORT Output match
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2025 1 28 6 5 59
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(63:8)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(71:16)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(79:24)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(87:32)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(95:40)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(103:48)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(111:56)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_9 or8
            PIN I0 XLXN_30
            PIN I1 XLXN_29
            PIN I2 XLXN_28
            PIN I3 XLXN_27
            PIN I4 XLXN_26
            PIN I5 XLXN_25
            PIN I6 XLXN_24
            PIN I7 XLXN_23
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH datain(111:0)
            WIRE 256 64 416 64
        END BRANCH
        BEGIN BRANCH datacomp(55:0)
            WIRE 256 544 416 544
            WIRE 416 544 416 720
            WIRE 416 720 784 720
            WIRE 416 720 416 992
            WIRE 416 992 784 992
            WIRE 416 992 416 1264
            WIRE 416 1264 784 1264
            WIRE 416 1264 416 1536
            WIRE 416 1536 784 1536
            WIRE 416 1536 416 1808
            WIRE 416 1808 416 2080
            WIRE 416 2080 784 2080
            WIRE 416 1808 784 1808
            WIRE 416 176 784 176
            WIRE 416 176 416 448
            WIRE 416 448 416 544
            WIRE 416 448 784 448
        END BRANCH
        BEGIN BRANCH wildcard(6:0)
            WIRE 256 1024 416 1024
            WIRE 416 1024 624 1024
            WIRE 624 1024 624 1040
            WIRE 624 1040 624 1120
            WIRE 624 1120 784 1120
            WIRE 624 1120 624 1392
            WIRE 624 1392 784 1392
            WIRE 624 1392 624 1664
            WIRE 624 1664 624 1904
            WIRE 624 1904 624 1936
            WIRE 624 1936 624 2208
            WIRE 624 2208 784 2208
            WIRE 624 1936 784 1936
            WIRE 624 1664 784 1664
            WIRE 624 304 784 304
            WIRE 624 304 624 320
            WIRE 624 320 624 576
            WIRE 624 576 624 848
            WIRE 624 848 624 1024
            WIRE 624 848 784 848
            WIRE 624 576 784 576
        END BRANCH
        IOMARKER 256 64 datain(111:0) R180 28
        IOMARKER 256 544 datacomp(55:0) R180 28
        IOMARKER 256 1024 wildcard(6:0) R180 28
        BEGIN BRANCH match
            WIRE 2000 1120 2016 1120
            WIRE 2016 1120 2192 1120
        END BRANCH
        BEGIN INSTANCE XLXI_1 784 336 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 784 608 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 784 880 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 784 1152 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 784 1424 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 784 1696 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 784 1968 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 784 2240 R0
        END INSTANCE
        BEGIN BRANCH datain(55:0)
            WIRE 288 240 624 240
            WIRE 624 240 784 240
            BEGIN DISPLAY 288 240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(71:16)
            WIRE 288 784 784 784
            BEGIN DISPLAY 288 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 288 1056 784 1056
            BEGIN DISPLAY 288 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 288 2144 784 2144
            BEGIN DISPLAY 288 2144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 288 1872 784 1872
            BEGIN DISPLAY 288 1872 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 288 1600 784 1600
            BEGIN DISPLAY 288 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 288 1328 784 1328
            BEGIN DISPLAY 288 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(63:8)
            WIRE 288 512 784 512
            BEGIN DISPLAY 288 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1168 176 1744 176
            WIRE 1744 176 1744 896
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 1168 448 1456 448
            WIRE 1456 448 1456 960
            WIRE 1456 960 1744 960
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1168 720 1440 720
            WIRE 1440 720 1440 1024
            WIRE 1440 1024 1744 1024
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1168 1808 1472 1808
            WIRE 1472 1280 1472 1808
            WIRE 1472 1280 1744 1280
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 1168 2080 1744 2080
            WIRE 1744 1344 1744 2080
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1168 1536 1456 1536
            WIRE 1456 1216 1456 1536
            WIRE 1456 1216 1744 1216
        END BRANCH
        INSTANCE XLXI_9 1744 1408 R0
        BEGIN BRANCH XLXN_26
            WIRE 1168 992 1184 992
            WIRE 1184 992 1184 1088
            WIRE 1184 1088 1744 1088
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1168 1264 1184 1264
            WIRE 1184 1152 1744 1152
            WIRE 1184 1152 1184 1264
        END BRANCH
        IOMARKER 2192 1120 match R0 28
    END SHEET
END SCHEMATIC
