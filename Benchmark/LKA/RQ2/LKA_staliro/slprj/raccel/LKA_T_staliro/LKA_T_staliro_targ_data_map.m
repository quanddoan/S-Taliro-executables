    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 3;
        sectIdxOffset = 0;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc paramMap
        ;%
        paramMap.nSections           = nTotSects;
        paramMap.sectIdxOffset       = sectIdxOffset;
            paramMap.sections(nTotSects) = dumSection; %prealloc
        paramMap.nTotData            = -1;

        ;%
        ;% Auto data (rtP)
        ;%
            section.nData     = 62;
            section.data(62)  = dumData; %prealloc

                    ;% rtP.Cf
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Cr
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Iz
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Vx
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.e1_initial
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.e2_initial
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.lf
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.lr
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.m
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.u_max
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.u_min
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.LaneKeepingAssistSystem_TransportLag
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.Longitudinalvelocitymustbepositive_min
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.last_x_InitialCondition
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.last_mv_InitialCondition
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 18;

                    ;% rtP.Memory1_InitialCondition
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 19;

                    ;% rtP.umin_scale4_Gain
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 20;

                    ;% rtP.ymin_scale1_Gain
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 21;

                    ;% rtP.ymin_scale2_Gain
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 23;

                    ;% rtP.extmv_scale_Gain
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 24;

                    ;% rtP.uref_scale_Gain
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 25;

                    ;% rtP.Gain2_Gain
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 26;

                    ;% rtP.Gain3_Gain
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 27;

                    ;% rtP.Gain4_Gain
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 28;

                    ;% rtP.Gain_Gain
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 29;

                    ;% rtP.Gain1_Gain
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 30;

                    ;% rtP.LastPcov_InitialCondition
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 31;

                    ;% rtP.u_scale_Gain
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 56;

                    ;% rtP.Gain4_Gain_nzox2md245
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 57;

                    ;% rtP.Vy_IC
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 58;

                    ;% rtP.Yaw_rate_IC
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 59;

                    ;% rtP.Constant_Value
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 60;

                    ;% rtP.E_zero_Value
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 61;

                    ;% rtP.F_zero_Value
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 62;

                    ;% rtP.G_zero_Value
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 64;

                    ;% rtP.ywt_zero_Value
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 65;

                    ;% rtP.uwt_zero_Value
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 67;

                    ;% rtP.duwt_zero_Value
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 68;

                    ;% rtP.Referenceconstant_Value
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 69;

                    ;% rtP.ymin_zero_Value
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 71;

                    ;% rtP.ymax_zero_Value
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 73;

                    ;% rtP.ecrwt_zero_Value
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 75;

                    ;% rtP.UConstant_Value
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 76;

                    ;% rtP.YConstant_Value
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 78;

                    ;% rtP.XConstant_Value
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 80;

                    ;% rtP.DXConstant_Value
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 84;

                    ;% rtP.S_zero_Value
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 88;

                    ;% rtP.extmv_zero_Value
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 89;

                    ;% rtP.mvtarget_zero_Value
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 90;

                    ;% rtP.Enableoptimizationconstant_Value
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 91;

                    ;% rtP.Externalcontrolsignalconstant_Value
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 92;

                    ;% rtP.CmConstant_Value
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 93;

                    ;% rtP.Sampletimeconstant_Value
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 97;

                    ;% rtP.Vehiclelengthtofrontconstant_Value
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 98;

                    ;% rtP.Vehiclefronttirecorneringstiffnessconstant_Value
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 99;

                    ;% rtP.Vehicleyawinertiaconstant_Value
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 100;

                    ;% rtP.Vehiclemassconstant_Value
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 101;

                    ;% rtP.Vehiclelengthtorearconstant_Value
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 102;

                    ;% rtP.Vehiclereartirecorneringstiffnessconstant_Value
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 103;

                    ;% rtP.VehicledynamicsmatrixAconstant_Value
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 104;

                    ;% rtP.VehicledynamicsmatrixBconstant_Value
                    section.data(61).logicalSrcIdx = 60;
                    section.data(61).dtTransOffset = 108;

                    ;% rtP.VehicledynamicsmatrixCconstant_Value
                    section.data(62).logicalSrcIdx = 61;
                    section.data(62).dtTransOffset = 110;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtP.FixedHorizonOptimizer_Ndis
                    section.data(1).logicalSrcIdx = 62;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtP.Memory_InitialCondition
                    section.data(1).logicalSrcIdx = 63;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Assertion_Enabled
                    section.data(2).logicalSrcIdx = 64;
                    section.data(2).dtTransOffset = 4;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section


            ;%
            ;% Non-auto Data (parameter)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        paramMap.nTotData = nTotData;



    ;%**************************
    ;% Create Block Output Map *
    ;%**************************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 16;
        sectIdxOffset = 0;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc sigMap
        ;%
        sigMap.nSections           = nTotSects;
        sigMap.sectIdxOffset       = sectIdxOffset;
            sigMap.sections(nTotSects) = dumSection; %prealloc
        sigMap.nTotData            = -1;

        ;%
        ;% Auto data (rtB)
        ;%
            section.nData     = 21;
            section.data(21)  = dumData; %prealloc

                    ;% rtB.jl0aukavwi
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.itiywpghyu
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.k0suforjme
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.o13qcxbdip
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.ncih2tph21
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.pend3mkk21
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.bfv1nrsihf
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.jufm00blrf
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.glp22kvlec
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.dvyu1sscyo
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 9;

                    ;% rtB.cvvfihfwkh
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 10;

                    ;% rtB.d4mpdlgsh1
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 11;

                    ;% rtB.bjzx13hfvh
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 12;

                    ;% rtB.dxboshnqcx
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 13;

                    ;% rtB.cffmjtonjb
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 15;

                    ;% rtB.opyhkzbx15
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 16;

                    ;% rtB.kjjzvf0odm
                    section.data(17).logicalSrcIdx = 23;
                    section.data(17).dtTransOffset = 17;

                    ;% rtB.o0gndlrdqg
                    section.data(18).logicalSrcIdx = 24;
                    section.data(18).dtTransOffset = 22;

                    ;% rtB.ns4zakixk4
                    section.data(19).logicalSrcIdx = 31;
                    section.data(19).dtTransOffset = 23;

                    ;% rtB.p42cer33ct
                    section.data(20).logicalSrcIdx = 33;
                    section.data(20).dtTransOffset = 48;

                    ;% rtB.ppw1rz40hr
                    section.data(21).logicalSrcIdx = 34;
                    section.data(21).dtTransOffset = 49;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.etstptzcgp
                    section.data(1).logicalSrcIdx = 35;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.euyeijkvwj.onhvape52u
                    section.data(1).logicalSrcIdx = 36;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(3) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.kug2oixzkm.onhvape52u
                    section.data(1).logicalSrcIdx = 37;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.lzaj2qo24h.onhvape52u
                    section.data(1).logicalSrcIdx = 38;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(5) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.e5mwwrj2xv.onhvape52u
                    section.data(1).logicalSrcIdx = 39;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(6) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.elsnrsfkpu.onhvape52u
                    section.data(1).logicalSrcIdx = 40;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(7) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.gnn330lieg.onhvape52u
                    section.data(1).logicalSrcIdx = 41;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(8) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.be3jllceim.onhvape52u
                    section.data(1).logicalSrcIdx = 42;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(9) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.gnys0rptin.mccd0iruvd
                    section.data(1).logicalSrcIdx = 43;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(10) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.k1mx4005qx.mccd0iruvd
                    section.data(1).logicalSrcIdx = 44;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(11) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.gccus3jafp.onhvape52u
                    section.data(1).logicalSrcIdx = 45;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(12) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.njn5yczmu3.onhvape52u
                    section.data(1).logicalSrcIdx = 46;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(13) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.cik2vkh3a4.onhvape52u
                    section.data(1).logicalSrcIdx = 49;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(14) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.bk3nxv3tlr.onhvape52u
                    section.data(1).logicalSrcIdx = 50;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(15) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtB.cc1fon30yl.onhvape52u
                    section.data(1).logicalSrcIdx = 51;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(16) = section;
            clear section


            ;%
            ;% Non-auto Data (signal)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        sigMap.nTotData = nTotData;



    ;%*******************
    ;% Create DWork Map *
    ;%*******************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 36;
        sectIdxOffset = 16;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc dworkMap
        ;%
        dworkMap.nSections           = nTotSects;
        dworkMap.sectIdxOffset       = sectIdxOffset;
            dworkMap.sections(nTotSects) = dumSection; %prealloc
        dworkMap.nTotData            = -1;

        ;%
        ;% Auto data (rtDW)
        ;%
            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtDW.j45svihtjo
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.mwdhrz5xb1
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.oen24533b2
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 6;

                    ;% rtDW.kwh42zszzd
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 7;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% rtDW.kz0usvbqfo.AQHandles
                    section.data(1).logicalSrcIdx = 4;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.h35e1w25qj.AQHandles
                    section.data(2).logicalSrcIdx = 5;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.a5r4vbzi4b.AQHandles
                    section.data(3).logicalSrcIdx = 6;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 6;
            section.data(6)  = dumData; %prealloc

                    ;% rtDW.h4zkufiov3
                    section.data(1).logicalSrcIdx = 7;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.fwdhnrc1pz
                    section.data(2).logicalSrcIdx = 8;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.e51nkuwvdf
                    section.data(3).logicalSrcIdx = 9;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.j0i5djvvgw
                    section.data(4).logicalSrcIdx = 10;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.oikgzdquty
                    section.data(5).logicalSrcIdx = 11;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.evq0kveuwk
                    section.data(6).logicalSrcIdx = 12;
                    section.data(6).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 7;
            section.data(7)  = dumData; %prealloc

                    ;% rtDW.pswc1mgssa
                    section.data(1).logicalSrcIdx = 13;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.b5dfi4px0f
                    section.data(2).logicalSrcIdx = 14;
                    section.data(2).dtTransOffset = 4;

                    ;% rtDW.eav1tlopa2
                    section.data(3).logicalSrcIdx = 15;
                    section.data(3).dtTransOffset = 5;

                    ;% rtDW.hgfwy0uny1
                    section.data(4).logicalSrcIdx = 16;
                    section.data(4).dtTransOffset = 6;

                    ;% rtDW.axawio3aws
                    section.data(5).logicalSrcIdx = 17;
                    section.data(5).dtTransOffset = 7;

                    ;% rtDW.byo3k50uq4
                    section.data(6).logicalSrcIdx = 18;
                    section.data(6).dtTransOffset = 8;

                    ;% rtDW.bjss44da1o
                    section.data(7).logicalSrcIdx = 19;
                    section.data(7).dtTransOffset = 9;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.euyeijkvwj.ad0pg2zl2x
                    section.data(1).logicalSrcIdx = 20;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.euyeijkvwj.am1q23zvbk
                    section.data(1).logicalSrcIdx = 21;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.kug2oixzkm.ad0pg2zl2x
                    section.data(1).logicalSrcIdx = 22;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(7) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.kug2oixzkm.am1q23zvbk
                    section.data(1).logicalSrcIdx = 23;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(8) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.lzaj2qo24h.ad0pg2zl2x
                    section.data(1).logicalSrcIdx = 24;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(9) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.lzaj2qo24h.am1q23zvbk
                    section.data(1).logicalSrcIdx = 25;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(10) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.e5mwwrj2xv.ad0pg2zl2x
                    section.data(1).logicalSrcIdx = 26;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(11) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.e5mwwrj2xv.am1q23zvbk
                    section.data(1).logicalSrcIdx = 27;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(12) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.elsnrsfkpu.ad0pg2zl2x
                    section.data(1).logicalSrcIdx = 28;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(13) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.elsnrsfkpu.am1q23zvbk
                    section.data(1).logicalSrcIdx = 29;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(14) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.gnn330lieg.ad0pg2zl2x
                    section.data(1).logicalSrcIdx = 30;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(15) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.gnn330lieg.am1q23zvbk
                    section.data(1).logicalSrcIdx = 31;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(16) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.be3jllceim.ad0pg2zl2x
                    section.data(1).logicalSrcIdx = 32;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(17) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.be3jllceim.am1q23zvbk
                    section.data(1).logicalSrcIdx = 33;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(18) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.gnys0rptin.ov2ak15hts
                    section.data(1).logicalSrcIdx = 34;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(19) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.gnys0rptin.mz5ndlrakh
                    section.data(1).logicalSrcIdx = 35;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(20) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.k1mx4005qx.ov2ak15hts
                    section.data(1).logicalSrcIdx = 36;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(21) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.k1mx4005qx.mz5ndlrakh
                    section.data(1).logicalSrcIdx = 37;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(22) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.gccus3jafp.ad0pg2zl2x
                    section.data(1).logicalSrcIdx = 38;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(23) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.gccus3jafp.am1q23zvbk
                    section.data(1).logicalSrcIdx = 39;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(24) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.njn5yczmu3.ad0pg2zl2x
                    section.data(1).logicalSrcIdx = 40;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(25) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.njn5yczmu3.am1q23zvbk
                    section.data(1).logicalSrcIdx = 41;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(26) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.cvyjidmo4f.akqsbdynir
                    section.data(1).logicalSrcIdx = 42;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(27) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.cvyjidmo4f.pckcm0tazc
                    section.data(1).logicalSrcIdx = 43;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(28) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.gqjzh0f3es.akqsbdynir
                    section.data(1).logicalSrcIdx = 44;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(29) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.gqjzh0f3es.pckcm0tazc
                    section.data(1).logicalSrcIdx = 45;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(30) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.cik2vkh3a4.ad0pg2zl2x
                    section.data(1).logicalSrcIdx = 46;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(31) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.cik2vkh3a4.am1q23zvbk
                    section.data(1).logicalSrcIdx = 47;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(32) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.bk3nxv3tlr.ad0pg2zl2x
                    section.data(1).logicalSrcIdx = 48;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(33) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.bk3nxv3tlr.am1q23zvbk
                    section.data(1).logicalSrcIdx = 49;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(34) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.cc1fon30yl.ad0pg2zl2x
                    section.data(1).logicalSrcIdx = 50;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(35) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.cc1fon30yl.am1q23zvbk
                    section.data(1).logicalSrcIdx = 51;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(36) = section;
            clear section


            ;%
            ;% Non-auto Data (dwork)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        dworkMap.nTotData = nTotData;



    ;%
    ;% Add individual maps to base struct.
    ;%

    targMap.paramMap  = paramMap;
    targMap.signalMap = sigMap;
    targMap.dworkMap  = dworkMap;

    ;%
    ;% Add checksums to base struct.
    ;%


    targMap.checksum0 = 2717182362;
    targMap.checksum1 = 1965175627;
    targMap.checksum2 = 3343308624;
    targMap.checksum3 = 1323682619;

