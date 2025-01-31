VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL pipe1(71:0)
        SIGNAL pipe0(71:0)
        SIGNAL mrst
        SIGNAL XLXN_18
        SIGNAL clk
        SIGNAL ce
        SIGNAL XLXN_25(111:0)
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        SIGNAL hwregA(55:0)
        SIGNAL hwregA(62:56)
        SIGNAL XLXN_49
        SIGNAL match
        SIGNAL XLXN_46
        SIGNAL match_en
        SIGNAL hwregA(63:0)
        PORT Input pipe1(71:0)
        PORT Output pipe0(71:0)
        PORT Input mrst
        PORT Input clk
        PORT Input ce
        PORT Output match
        PORT Input match_en
        PORT Input hwregA(63:0)
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2025 1 29 3 20 29
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2025 1 29 3 25 19
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2025 1 28 6 35 47
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 reg9B
            PIN d(71:0) pipe1(71:0)
            PIN ce ce
            PIN clk clk
            PIN clr XLXN_18
            PIN q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_2 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_25(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 wordmatch
            PIN datain(111:0) XLXN_25(111:0)
            PIN datacomp(55:0) hwregA(55:0)
            PIN wildcard(6:0) hwregA(62:56)
            PIN match XLXN_49
        END BLOCK
        BEGIN BLOCK XLXI_4 fdce
            PIN C clk
            PIN CE XLXN_46
            PIN CLR XLXN_18
            PIN D XLXN_46
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_15 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_49
            PIN O XLXN_46
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 688 496 R0
        END INSTANCE
        BEGIN BRANCH pipe1(71:0)
            WIRE 448 272 688 272
        END BRANCH
        IOMARKER 448 272 pipe1(71:0) R180 28
        BEGIN BRANCH pipe0(71:0)
            WIRE 1072 272 1200 272
        END BRANCH
        BEGIN BRANCH mrst
            WIRE 480 1360 720 1360
        END BRANCH
        INSTANCE XLXI_5 720 1616 R0
        IOMARKER 480 1360 mrst R180 28
        BEGIN BRANCH XLXN_18
            WIRE 688 464 688 1152
            WIRE 688 1152 1184 1152
            WIRE 1184 1152 1184 1360
            WIRE 1184 1360 2688 1360
            WIRE 1104 1360 1184 1360
            WIRE 2688 432 2688 1360
        END BRANCH
        BEGIN BRANCH clk
            WIRE 384 400 544 400
            WIRE 544 400 688 400
            WIRE 544 400 544 1488
            WIRE 544 1488 720 1488
            WIRE 544 1488 544 1616
            WIRE 544 1616 2528 1616
            WIRE 2528 336 2688 336
            WIRE 2528 336 2528 1616
        END BRANCH
        IOMARKER 384 400 clk R180 28
        BEGIN BRANCH ce
            WIRE 384 336 688 336
        END BRANCH
        IOMARKER 384 336 ce R180 28
        BEGIN INSTANCE XLXI_2 992 800 R0
        END INSTANCE
        BEGIN BRANCH XLXN_25(111:0)
            WIRE 1376 704 1600 704
        END BRANCH
        BEGIN INSTANCE XLXI_3 1600 864 R0
        END INSTANCE
        BEGIN BRANCH pipe0(47:0)
            WIRE 864 704 992 704
            BEGIN DISPLAY 864 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 864 768 992 768
            BEGIN DISPLAY 864 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(55:0)
            WIRE 1536 768 1600 768
            BEGIN DISPLAY 1536 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(62:56)
            WIRE 1536 832 1600 832
            BEGIN DISPLAY 1536 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_4 2688 464 R0
        BEGIN BRANCH match
            WIRE 2032 304 2048 304
            WIRE 2032 304 2032 480
            WIRE 2032 480 2048 480
            WIRE 2048 480 2928 480
            WIRE 2928 480 3136 480
            WIRE 3072 208 3136 208
            WIRE 3136 208 3296 208
            WIRE 3136 208 3136 480
        END BRANCH
        INSTANCE XLXI_15 2048 368 R0
        BEGIN BRANCH XLXN_46
            WIRE 2304 240 2496 240
            WIRE 2496 240 2496 272
            WIRE 2496 272 2688 272
            WIRE 2496 208 2688 208
            WIRE 2496 208 2496 240
        END BRANCH
        IOMARKER 3296 208 match R0 28
        BEGIN BRANCH XLXN_49
            WIRE 1984 704 2000 704
            WIRE 2000 176 2048 176
            WIRE 2000 176 2000 704
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1792 240 1952 240
            WIRE 1952 240 2048 240
        END BRANCH
        IOMARKER 1792 240 match_en R180 28
        BEGIN BRANCH hwregA(63:0)
            WIRE 288 1712 448 1712
            WIRE 448 1712 576 1712
            BEGIN DISPLAY 576 1712 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 288 1712 hwregA(63:0) R180 28
        IOMARKER 1200 272 pipe0(71:0) R0 28
    END SHEET
END SCHEMATIC
