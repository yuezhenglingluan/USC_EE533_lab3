VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL q(71:0)
        SIGNAL d(71:0)
        SIGNAL ce
        SIGNAL clk
        SIGNAL clr
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL d(71:64)
        SIGNAL d(63:48)
        SIGNAL d(47:32)
        SIGNAL d(15:0)
        SIGNAL d(31:16)
        SIGNAL q(15:0)
        SIGNAL q(71:64)
        SIGNAL q(63:48)
        SIGNAL q(47:32)
        SIGNAL q(31:16)
        PORT Output q(71:0)
        PORT Input d(71:0)
        PORT Input ce
        PORT Input clk
        PORT Input clr
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH q(71:0)
            WIRE 3184 64 3344 64
        END BRANCH
        IOMARKER 3344 64 q(71:0) R0 28
        BEGIN BRANCH d(71:0)
            WIRE 160 64 320 64
        END BRANCH
        BEGIN BRANCH ce
            WIRE 160 352 384 352
            WIRE 384 352 384 640
            WIRE 384 640 720 640
            WIRE 384 640 384 1024
            WIRE 384 1024 720 1024
            WIRE 384 1024 384 1408
            WIRE 384 1408 720 1408
            WIRE 384 1408 384 1792
            WIRE 384 1792 720 1792
            WIRE 384 256 384 352
            WIRE 384 256 720 256
        END BRANCH
        BEGIN BRANCH clr
            WIRE 160 1120 320 1120
            WIRE 320 1120 320 1184
            WIRE 320 1184 320 1568
            WIRE 320 1568 320 1952
            WIRE 320 1952 720 1952
            WIRE 320 1568 720 1568
            WIRE 320 1184 720 1184
            WIRE 320 416 720 416
            WIRE 320 416 320 800
            WIRE 320 800 320 1120
            WIRE 320 800 720 800
        END BRANCH
        IOMARKER 160 64 d(71:0) R180 28
        IOMARKER 160 1120 clr R180 28
        INSTANCE XLXI_1 720 448 R0
        INSTANCE XLXI_2 720 832 R0
        INSTANCE XLXI_3 720 1216 R0
        INSTANCE XLXI_4 720 1600 R0
        INSTANCE XLXI_5 720 1984 R0
        IOMARKER 144 768 clk R180 28
        BEGIN BRANCH clk
            WIRE 144 768 352 768
            WIRE 352 768 352 1088
            WIRE 352 1088 720 1088
            WIRE 352 1088 352 1408
            WIRE 352 1408 352 1472
            WIRE 352 1472 720 1472
            WIRE 352 1472 352 1744
            WIRE 352 1744 352 1856
            WIRE 352 1856 720 1856
            WIRE 352 320 720 320
            WIRE 352 320 352 576
            WIRE 352 576 352 704
            WIRE 352 704 720 704
            WIRE 352 704 352 768
        END BRANCH
        IOMARKER 160 352 ce R180 28
        BEGIN BRANCH d(71:64)
            WIRE 656 192 720 192
            BEGIN DISPLAY 656 192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 656 576 720 576
            BEGIN DISPLAY 656 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 656 960 720 960
            BEGIN DISPLAY 656 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 656 1728 720 1728
            BEGIN DISPLAY 656 1728 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 656 1344 720 1344
            BEGIN DISPLAY 656 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1104 1728 1184 1728
            BEGIN DISPLAY 1184 1728 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1104 192 1184 192
            BEGIN DISPLAY 1184 192 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1104 576 1168 576
            WIRE 1168 576 1184 576
            BEGIN DISPLAY 1184 576 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1104 960 1184 960
            BEGIN DISPLAY 1184 960 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1104 1344 1184 1344
            BEGIN DISPLAY 1184 1344 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
