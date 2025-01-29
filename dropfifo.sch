VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL firstword
        SIGNAL lastword
        SIGNAL fifowrite
        SIGNAL fiforead
        SIGNAL rst
        SIGNAL drop_pkt
        SIGNAL clk
        SIGNAL valid_data
        SIGNAL out_fifo(71:0)
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32(7:0)
        SIGNAL XLXN_34(7:0)
        SIGNAL waddr(7:0)
        SIGNAL XLXN_36(7:0)
        SIGNAL raddr(7:0)
        SIGNAL XLXN_40
        SIGNAL XLXN_41
        SIGNAL XLXN_42
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_45
        SIGNAL XLXN_46
        SIGNAL XLXN_47
        SIGNAL XLXN_48(71:0)
        SIGNAL XLXN_49
        SIGNAL in_fifo(71:0)
        SIGNAL XLXN_51
        SIGNAL XLXN_52
        SIGNAL XLXN_53
        SIGNAL XLXN_54
        SIGNAL XLXN_55
        SIGNAL XLXN_56
        SIGNAL XLXN_57
        SIGNAL XLXN_58
        SIGNAL XLXN_60
        SIGNAL XLXN_61
        PORT Input firstword
        PORT Input lastword
        PORT Input fifowrite
        PORT Input fiforead
        PORT Input rst
        PORT Input drop_pkt
        PORT Input clk
        PORT Output valid_data
        PORT Output out_fifo(71:0)
        PORT Input in_fifo(71:0)
        BEGIN BLOCKDEF dual_core_memory_element
            TIMESTAMP 2025 1 29 3 48 56
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
            END LINE
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
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
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
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2025 1 28 5 31 2
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
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
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 dual_core_memory_element
            PIN addra(7:0) waddr(7:0)
            PIN dina(71:0) XLXN_48(71:0)
            PIN wea XLXN_47
            PIN clka clk
            PIN addrb(7:0) raddr(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_3 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_47
        END BLOCK
        BEGIN BLOCK XLXI_5 or2
            PIN I0 XLXN_24
            PIN I1 XLXN_23
            PIN O XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_6 fd8ce
            PIN C clk
            PIN CE XLXN_27
            PIN CLR rst
            PIN D(7:0) waddr(7:0)
            PIN Q(7:0) XLXN_34(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 and2b1
            PIN I0 XLXN_31
            PIN I1 XLXN_26
            PIN O XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_8 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_9 cb8cle
            PIN C clk
            PIN CE XLXN_47
            PIN CLR rst
            PIN D(7:0) XLXN_34(7:0)
            PIN L XLXN_31
            PIN CEO
            PIN Q(7:0) waddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_10 comp8
            PIN A(7:0) waddr(7:0)
            PIN B(7:0) raddr(7:0)
            PIN EQ XLXN_41
        END BLOCK
        BEGIN BLOCK XLXI_11 comp8
            PIN A(7:0) raddr(7:0)
            PIN B(7:0) XLXN_34(7:0)
            PIN EQ XLXN_40
        END BLOCK
        BEGIN BLOCK XLXI_12 cb8ce
            PIN C clk
            PIN CE XLXN_44
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) raddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_13 and3b2
            PIN I0 XLXN_40
            PIN I1 XLXN_41
            PIN I2 fiforead
            PIN O XLXN_44
        END BLOCK
        BEGIN BLOCK XLXI_14 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_44
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_15 reg9B
            PIN d(71:0) in_fifo(71:0)
            PIN ce XLXN_49
            PIN clk clk
            PIN clr rst
            PIN q(71:0) XLXN_48(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_16 vcc
            PIN P XLXN_49
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH firstword
            WIRE 624 160 752 160
        END BRANCH
        BEGIN BRANCH lastword
            WIRE 544 528 752 528
        END BRANCH
        BEGIN BRANCH fifowrite
            WIRE 1504 192 1616 192
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1488 1888 1536 1888
        END BRANCH
        BEGIN BRANCH rst
            WIRE 256 960 528 960
            WIRE 528 960 528 1120
            WIRE 528 1120 528 2640
            WIRE 528 2640 1584 2640
            WIRE 528 1120 752 1120
            WIRE 1504 768 2048 768
            WIRE 1504 768 1504 1248
            WIRE 1504 1248 1600 1248
            WIRE 1504 1248 1504 1648
            WIRE 1504 1648 1504 2176
            WIRE 1504 2176 1584 2176
            WIRE 1584 2176 2064 2176
            WIRE 1584 2176 1584 2640
            WIRE 1504 1648 1600 1648
            WIRE 2048 352 2192 352
            WIRE 2048 352 2048 768
        END BRANCH
        BEGIN BRANCH drop_pkt
            WIRE 432 1280 752 1280
        END BRANCH
        IOMARKER 256 960 rst R180 28
        BEGIN BRANCH valid_data
            WIRE 2448 1952 2752 1952
        END BRANCH
        BEGIN BRANCH out_fifo(71:0)
            WIRE 2928 1120 3136 1120
        END BRANCH
        INSTANCE XLXI_2 752 416 R0
        INSTANCE XLXI_3 752 784 R0
        INSTANCE XLXI_4 1616 448 R0
        IOMARKER 624 160 firstword R180 28
        IOMARKER 1504 192 fifowrite R180 28
        BEGIN BRANCH XLXN_24
            WIRE 1136 528 1280 528
        END BRANCH
        INSTANCE XLXI_5 1280 592 R0
        BEGIN BRANCH XLXN_23
            WIRE 1136 160 1152 160
            WIRE 1152 160 1152 464
            WIRE 1152 464 1280 464
        END BRANCH
        INSTANCE XLXI_6 752 1152 R0
        INSTANCE XLXI_7 1600 624 R0
        BEGIN BRANCH XLXN_26
            WIRE 1536 496 1600 496
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 672 752 1936 752
            WIRE 672 752 672 960
            WIRE 672 960 752 960
            WIRE 1856 528 1936 528
            WIRE 1936 528 1936 752
        END BRANCH
        INSTANCE XLXI_8 752 1536 R0
        IOMARKER 368 1408 clk R180 28
        IOMARKER 432 1280 drop_pkt R180 28
        BEGIN BRANCH XLXN_31
            WIRE 1136 1280 1360 1280
            WIRE 1360 560 1600 560
            WIRE 1360 560 1360 1024
            WIRE 1360 1024 1600 1024
            WIRE 1360 1024 1360 1280
        END BRANCH
        BEGIN INSTANCE XLXI_10 752 1984 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_11 752 2464 R0
        END INSTANCE
        INSTANCE XLXI_9 1600 1280 R0
        BEGIN BRANCH raddr(7:0)
            WIRE 496 2000 688 2000
            WIRE 688 2000 688 2144
            WIRE 688 2144 752 2144
            WIRE 688 1856 752 1856
            WIRE 688 1856 688 2000
            BEGIN DISPLAY 496 2000 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_34(7:0)
            WIRE 656 2336 752 2336
            WIRE 656 2336 656 2496
            WIRE 656 2496 1296 2496
            WIRE 1136 896 1296 896
            WIRE 1296 896 1600 896
            WIRE 1296 896 1296 2496
        END BRANCH
        BEGIN BRANCH waddr(7:0)
            WIRE 1984 896 2224 896
            WIRE 2224 896 2640 896
            BEGIN DISPLAY 2224 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_1 2640 848 R0
        END INSTANCE
        IOMARKER 3136 1120 out_fifo(71:0) R0 28
        BEGIN BRANCH waddr(7:0)
            WIRE 576 896 752 896
            BEGIN DISPLAY 576 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_12 1600 1680 R0
        BEGIN BRANCH raddr(7:0)
            WIRE 1984 1424 2304 1424
            WIRE 2304 1120 2640 1120
            WIRE 2304 1120 2304 1248
            WIRE 2304 1248 2304 1424
            BEGIN DISPLAY 2304 1248 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH waddr(7:0)
            WIRE 608 1664 752 1664
            BEGIN DISPLAY 608 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_13 1536 2080 R0
        BEGIN BRANCH XLXN_40
            WIRE 1136 2240 1328 2240
            WIRE 1328 2016 1328 2240
            WIRE 1328 2016 1536 2016
        END BRANCH
        BEGIN BRANCH XLXN_41
            WIRE 1136 1760 1328 1760
            WIRE 1328 1760 1328 1952
            WIRE 1328 1952 1536 1952
        END BRANCH
        IOMARKER 1488 1888 fiforead R180 28
        BEGIN BRANCH XLXN_44
            WIRE 1536 1488 1600 1488
            WIRE 1536 1488 1536 1728
            WIRE 1536 1728 1856 1728
            WIRE 1856 1728 1856 1952
            WIRE 1856 1952 2064 1952
            WIRE 1792 1952 1856 1952
        END BRANCH
        INSTANCE XLXI_14 2064 2208 R0
        IOMARKER 2752 1952 valid_data R0 28
        BEGIN BRANCH XLXN_47
            WIRE 1536 1088 1600 1088
            WIRE 1536 1088 1536 1312
            WIRE 1536 1312 2080 1312
            WIRE 2000 192 2080 192
            WIRE 2080 192 2080 960
            WIRE 2080 960 2080 1312
            WIRE 2080 960 2640 960
        END BRANCH
        BEGIN BRANCH XLXN_48(71:0)
            WIRE 2576 160 2624 160
            WIRE 2624 160 2624 928
            WIRE 2624 928 2640 928
        END BRANCH
        BEGIN INSTANCE XLXI_15 2192 384 R0
        END INSTANCE
        INSTANCE XLXI_16 2048 112 R0
        BEGIN BRANCH XLXN_49
            WIRE 2112 112 2112 224
            WIRE 2112 224 2192 224
        END BRANCH
        BEGIN BRANCH in_fifo(71:0)
            WIRE 1552 64 2016 64
            WIRE 2016 64 2016 160
            WIRE 2016 160 2192 160
        END BRANCH
        IOMARKER 1552 64 in_fifo(71:0) R180 28
        IOMARKER 544 528 lastword R180 28
        BEGIN BRANCH clk
            WIRE 368 1408 624 1408
            WIRE 624 1408 752 1408
            WIRE 624 1408 624 1552
            WIRE 624 1552 624 2608
            WIRE 624 2608 1520 2608
            WIRE 1520 2608 2464 2608
            WIRE 624 1552 1600 1552
            WIRE 624 288 752 288
            WIRE 624 288 624 400
            WIRE 624 400 624 656
            WIRE 624 656 624 1024
            WIRE 624 1024 752 1024
            WIRE 624 1024 624 1152
            WIRE 624 1152 624 1408
            WIRE 624 1152 1600 1152
            WIRE 624 656 752 656
            WIRE 624 400 1392 400
            WIRE 1392 400 2064 400
            WIRE 1392 320 1616 320
            WIRE 1392 320 1392 400
            WIRE 1520 2080 2064 2080
            WIRE 1520 2080 1520 2608
            WIRE 2064 288 2192 288
            WIRE 2064 288 2064 400
            WIRE 2464 1088 2640 1088
            WIRE 2464 1088 2464 1312
            WIRE 2464 1312 2640 1312
            WIRE 2464 1312 2464 2608
        END BRANCH
    END SHEET
END SCHEMATIC
