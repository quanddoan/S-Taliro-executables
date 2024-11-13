    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 6;
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
            section.nData     = 6;
            section.data(6)  = dumData; %prealloc

                    ;% rtP.AF_sensor_tol
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.MAF_sensor_tol
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.fault_time
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.fuel_inj_tol
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.measureTime
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.simTime
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtP.spec_num
                    section.data(1).logicalSrcIdx = 6;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 56;
            section.data(56)  = dumData; %prealloc

                    ;% rtP.Pwon_Time
                    section.data(1).logicalSrcIdx = 7;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.Pwon_Y0
                    section.data(2).logicalSrcIdx = 8;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Pwon_YFinal
                    section.data(3).logicalSrcIdx = 9;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.PulseGenerator_10ms_Amp
                    section.data(4).logicalSrcIdx = 10;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.PulseGenerator_10ms_Period
                    section.data(5).logicalSrcIdx = 11;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.PulseGenerator_10ms_Duty
                    section.data(6).logicalSrcIdx = 12;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.PulseGenerator_10ms_PhaseDelay
                    section.data(7).logicalSrcIdx = 13;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.Integrator_IC
                    section.data(8).logicalSrcIdx = 14;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.AF_sensor_Gain
                    section.data(9).logicalSrcIdx = 15;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.Throttledelay_A
                    section.data(10).logicalSrcIdx = 16;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.Throttledelay_C
                    section.data(11).logicalSrcIdx = 17;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.theta090_UpperSat
                    section.data(12).logicalSrcIdx = 18;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.theta090_LowerSat
                    section.data(13).logicalSrcIdx = 19;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.EngineSpeed9001100_UpperSat
                    section.data(14).logicalSrcIdx = 20;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.EngineSpeed9001100_LowerSat
                    section.data(15).logicalSrcIdx = 21;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.rpmtorads_Gain
                    section.data(16).logicalSrcIdx = 22;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.AFSensorFaultInjection_Y0
                    section.data(17).logicalSrcIdx = 23;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.AFSensorFaultInjection_YFinal
                    section.data(18).logicalSrcIdx = 24;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.Switch_Threshold
                    section.data(19).logicalSrcIdx = 25;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.p00543bar_IC
                    section.data(20).logicalSrcIdx = 26;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.Switch_Threshold_g5ldd2qgcy
                    section.data(21).logicalSrcIdx = 27;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.Integrator_IC_lkhrhjwbot
                    section.data(22).logicalSrcIdx = 28;
                    section.data(22).dtTransOffset = 21;

                    ;% rtP.Gain_Gain
                    section.data(23).logicalSrcIdx = 29;
                    section.data(23).dtTransOffset = 22;

                    ;% rtP.radstorpm_Gain
                    section.data(24).logicalSrcIdx = 30;
                    section.data(24).dtTransOffset = 23;

                    ;% rtP.Gain_Gain_lwwetqjf5s
                    section.data(25).logicalSrcIdx = 31;
                    section.data(25).dtTransOffset = 24;

                    ;% rtP.uKappa_tableData
                    section.data(26).logicalSrcIdx = 32;
                    section.data(26).dtTransOffset = 25;

                    ;% rtP.uKappa_bp01Data
                    section.data(27).logicalSrcIdx = 33;
                    section.data(27).dtTransOffset = 45;

                    ;% rtP.uKappa_bp02Data
                    section.data(28).logicalSrcIdx = 34;
                    section.data(28).dtTransOffset = 50;

                    ;% rtP.Kappatolerance0911_Gain
                    section.data(29).logicalSrcIdx = 35;
                    section.data(29).dtTransOffset = 54;

                    ;% rtP.Integrator_IC_mrk54afxwh
                    section.data(30).logicalSrcIdx = 36;
                    section.data(30).dtTransOffset = 55;

                    ;% rtP.tau_ww_tableData
                    section.data(31).logicalSrcIdx = 37;
                    section.data(31).dtTransOffset = 56;

                    ;% rtP.tau_ww_bp01Data
                    section.data(32).logicalSrcIdx = 38;
                    section.data(32).dtTransOffset = 76;

                    ;% rtP.tau_ww_bp02Data
                    section.data(33).logicalSrcIdx = 39;
                    section.data(33).dtTransOffset = 81;

                    ;% rtP.tau_wwtolerance0911_Gain
                    section.data(34).logicalSrcIdx = 40;
                    section.data(34).dtTransOffset = 85;

                    ;% rtP.fuelsystemtransportdelay_MaxDelay
                    section.data(35).logicalSrcIdx = 41;
                    section.data(35).dtTransOffset = 86;

                    ;% rtP.fuelsystemtransportdelay_InitOutput
                    section.data(36).logicalSrcIdx = 42;
                    section.data(36).dtTransOffset = 87;

                    ;% rtP.Gain1_Gain
                    section.data(37).logicalSrcIdx = 43;
                    section.data(37).dtTransOffset = 88;

                    ;% rtP.radstorpm_Gain_phyjrb0ib3
                    section.data(38).logicalSrcIdx = 44;
                    section.data(38).dtTransOffset = 89;

                    ;% rtP.delays_tableData
                    section.data(39).logicalSrcIdx = 45;
                    section.data(39).dtTransOffset = 90;

                    ;% rtP.delays_bp01Data
                    section.data(40).logicalSrcIdx = 46;
                    section.data(40).dtTransOffset = 110;

                    ;% rtP.delays_bp02Data
                    section.data(41).logicalSrcIdx = 47;
                    section.data(41).dtTransOffset = 115;

                    ;% rtP.RTVm_Gain
                    section.data(42).logicalSrcIdx = 48;
                    section.data(42).dtTransOffset = 119;

                    ;% rtP.Gain_Gain_mq3vllxyxc
                    section.data(43).logicalSrcIdx = 49;
                    section.data(43).dtTransOffset = 120;

                    ;% rtP.AtmosphericPressurebar_Value
                    section.data(44).logicalSrcIdx = 50;
                    section.data(44).dtTransOffset = 121;

                    ;% rtP.Baseopeningangle_Value
                    section.data(45).logicalSrcIdx = 51;
                    section.data(45).dtTransOffset = 122;

                    ;% rtP.FaultySensorOutput_Value
                    section.data(46).logicalSrcIdx = 52;
                    section.data(46).dtTransOffset = 123;

                    ;% rtP.SonicFlow_Value
                    section.data(47).logicalSrcIdx = 53;
                    section.data(47).dtTransOffset = 124;

                    ;% rtP.Constant_Value
                    section.data(48).logicalSrcIdx = 54;
                    section.data(48).dtTransOffset = 125;

                    ;% rtP.Constant_Value_i2zubjcpp0
                    section.data(49).logicalSrcIdx = 55;
                    section.data(49).dtTransOffset = 126;

                    ;% rtP.Integrator_IC_b500ztwhjo
                    section.data(50).logicalSrcIdx = 56;
                    section.data(50).dtTransOffset = 127;

                    ;% rtP.MeasureOn_Time
                    section.data(51).logicalSrcIdx = 57;
                    section.data(51).dtTransOffset = 128;

                    ;% rtP.MeasureOn_Y0
                    section.data(52).logicalSrcIdx = 58;
                    section.data(52).dtTransOffset = 129;

                    ;% rtP.MeasureOn_YFinal
                    section.data(53).logicalSrcIdx = 59;
                    section.data(53).dtTransOffset = 130;

                    ;% rtP.MeasureOn_Y0_mao34pee2i
                    section.data(54).logicalSrcIdx = 60;
                    section.data(54).dtTransOffset = 131;

                    ;% rtP.MeasureOn_YFinal_nzkifqrhnv
                    section.data(55).logicalSrcIdx = 61;
                    section.data(55).dtTransOffset = 132;

                    ;% rtP.Constant_Value_loxo21kpgj
                    section.data(56).logicalSrcIdx = 62;
                    section.data(56).dtTransOffset = 133;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section

            section.nData     = 35;
            section.data(35)  = dumData; %prealloc

                    ;% rtP.fb_fuel_saturation_UpperSat
                    section.data(1).logicalSrcIdx = 63;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.fb_fuel_saturation_LowerSat
                    section.data(2).logicalSrcIdx = 64;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.Constant1_Value
                    section.data(3).logicalSrcIdx = 65;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.Constant2_Value
                    section.data(4).logicalSrcIdx = 66;
                    section.data(4).dtTransOffset = 3;

                    ;% rtP.Constant3_Value
                    section.data(5).logicalSrcIdx = 67;
                    section.data(5).dtTransOffset = 4;

                    ;% rtP.Constant4_Value
                    section.data(6).logicalSrcIdx = 68;
                    section.data(6).dtTransOffset = 5;

                    ;% rtP.Constant5_Value
                    section.data(7).logicalSrcIdx = 69;
                    section.data(7).dtTransOffset = 6;

                    ;% rtP.UnitDelay1_InitialCondition
                    section.data(8).logicalSrcIdx = 70;
                    section.data(8).dtTransOffset = 7;

                    ;% rtP.Gain_Gain_jfaopuunxi
                    section.data(9).logicalSrcIdx = 71;
                    section.data(9).dtTransOffset = 8;

                    ;% rtP.Constant1_Value_h3gosz3rso
                    section.data(10).logicalSrcIdx = 72;
                    section.data(10).dtTransOffset = 9;

                    ;% rtP.Gain_Gain_c5md433mqa
                    section.data(11).logicalSrcIdx = 73;
                    section.data(11).dtTransOffset = 10;

                    ;% rtP.Gain1_Gain_an2gitrlld
                    section.data(12).logicalSrcIdx = 74;
                    section.data(12).dtTransOffset = 11;

                    ;% rtP.UnitDelay1_InitialCondition_lwvhtplh3d
                    section.data(13).logicalSrcIdx = 75;
                    section.data(13).dtTransOffset = 12;

                    ;% rtP.fuel_saturation_UpperSat
                    section.data(14).logicalSrcIdx = 76;
                    section.data(14).dtTransOffset = 13;

                    ;% rtP.fuel_saturation_LowerSat
                    section.data(15).logicalSrcIdx = 77;
                    section.data(15).dtTransOffset = 14;

                    ;% rtP.Constant2_Value_h15bkuhc3g
                    section.data(16).logicalSrcIdx = 78;
                    section.data(16).dtTransOffset = 15;

                    ;% rtP.Constant3_Value_ar1ajyxmim
                    section.data(17).logicalSrcIdx = 79;
                    section.data(17).dtTransOffset = 16;

                    ;% rtP.airbyfuel_reference_power_Value
                    section.data(18).logicalSrcIdx = 80;
                    section.data(18).dtTransOffset = 17;

                    ;% rtP.airbyfuel_reference_Value
                    section.data(19).logicalSrcIdx = 81;
                    section.data(19).dtTransOffset = 18;

                    ;% rtP.UnitDelay2_InitialCondition
                    section.data(20).logicalSrcIdx = 82;
                    section.data(20).dtTransOffset = 19;

                    ;% rtP.sampling_sec_Value
                    section.data(21).logicalSrcIdx = 83;
                    section.data(21).dtTransOffset = 20;

                    ;% rtP.normal_mode_start_sec_Value
                    section.data(22).logicalSrcIdx = 84;
                    section.data(22).dtTransOffset = 21;

                    ;% rtP.Constant_Value_d4xw1fezi3
                    section.data(23).logicalSrcIdx = 85;
                    section.data(23).dtTransOffset = 22;

                    ;% rtP.Constant1_Value_frpjq2fffb
                    section.data(24).logicalSrcIdx = 86;
                    section.data(24).dtTransOffset = 23;

                    ;% rtP.threshold_Value
                    section.data(25).logicalSrcIdx = 87;
                    section.data(25).dtTransOffset = 24;

                    ;% rtP.Constant1_Value_ln0tldisjx
                    section.data(26).logicalSrcIdx = 88;
                    section.data(26).dtTransOffset = 25;

                    ;% rtP.Constant2_Value_ki5yoscsu1
                    section.data(27).logicalSrcIdx = 89;
                    section.data(27).dtTransOffset = 26;

                    ;% rtP.Constant3_Value_old4tikkcg
                    section.data(28).logicalSrcIdx = 90;
                    section.data(28).dtTransOffset = 27;

                    ;% rtP.DataStoreMemory_InitialValue
                    section.data(29).logicalSrcIdx = 91;
                    section.data(29).dtTransOffset = 28;

                    ;% rtP.DataStoreMemory1_InitialValue
                    section.data(30).logicalSrcIdx = 92;
                    section.data(30).dtTransOffset = 29;

                    ;% rtP.DataStoreMemory2_InitialValue
                    section.data(31).logicalSrcIdx = 93;
                    section.data(31).dtTransOffset = 30;

                    ;% rtP.DataStoreMemory3_InitialValue
                    section.data(32).logicalSrcIdx = 94;
                    section.data(32).dtTransOffset = 31;

                    ;% rtP.commanded_fuel_InitialValue
                    section.data(33).logicalSrcIdx = 95;
                    section.data(33).dtTransOffset = 32;

                    ;% rtP.mode_fb1_InitialValue
                    section.data(34).logicalSrcIdx = 96;
                    section.data(34).dtTransOffset = 33;

                    ;% rtP.Gain2_Gain
                    section.data(35).logicalSrcIdx = 97;
                    section.data(35).dtTransOffset = 34;

            nTotData = nTotData + section.nData;
            paramMap.sections(4) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% rtP.uKappa_maxIndex
                    section.data(1).logicalSrcIdx = 98;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.tau_ww_maxIndex
                    section.data(2).logicalSrcIdx = 99;
                    section.data(2).dtTransOffset = 2;

                    ;% rtP.delays_maxIndex
                    section.data(3).logicalSrcIdx = 100;
                    section.data(3).dtTransOffset = 4;

            nTotData = nTotData + section.nData;
            paramMap.sections(5) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% rtP.UnitDelay1_InitialCondition_chrxrrvhjp
                    section.data(1).logicalSrcIdx = 101;
                    section.data(1).dtTransOffset = 0;

                    ;% rtP.UnitDelay1_InitialCondition_f1k0xy35kz
                    section.data(2).logicalSrcIdx = 102;
                    section.data(2).dtTransOffset = 1;

                    ;% rtP.UnitDelay_InitialCondition
                    section.data(3).logicalSrcIdx = 103;
                    section.data(3).dtTransOffset = 2;

                    ;% rtP.mode_fb_InitialValue
                    section.data(4).logicalSrcIdx = 104;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            paramMap.sections(6) = section;
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
        ;% Init/prealloc sigMap
        ;%
        sigMap.nSections           = nTotSects;
        sigMap.sectIdxOffset       = sectIdxOffset;
            sigMap.sections(nTotSects) = dumSection; %prealloc
        sigMap.nTotData            = -1;

        ;%
        ;% Auto data (rtB)
        ;%
            section.nData     = 60;
            section.data(60)  = dumData; %prealloc

                    ;% rtB.odqlvqmn2b
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.j1xad1kw2y
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.n4cgz4c1ig
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.cfq25lfyyw
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.l1nevfnqpf
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.oyuelozcmi
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.dizvn0c2kv
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.p2z1c52id3
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.pqjo5cmif3
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

                    ;% rtB.ljxgkjd15j
                    section.data(10).logicalSrcIdx = 9;
                    section.data(10).dtTransOffset = 9;

                    ;% rtB.escvsqytg5
                    section.data(11).logicalSrcIdx = 10;
                    section.data(11).dtTransOffset = 10;

                    ;% rtB.no3zx0ezfz
                    section.data(12).logicalSrcIdx = 11;
                    section.data(12).dtTransOffset = 11;

                    ;% rtB.cqfpshtxvd
                    section.data(13).logicalSrcIdx = 12;
                    section.data(13).dtTransOffset = 12;

                    ;% rtB.pkw2gccdta
                    section.data(14).logicalSrcIdx = 13;
                    section.data(14).dtTransOffset = 13;

                    ;% rtB.klp4ythknn
                    section.data(15).logicalSrcIdx = 14;
                    section.data(15).dtTransOffset = 14;

                    ;% rtB.mgqkkfzlvr
                    section.data(16).logicalSrcIdx = 15;
                    section.data(16).dtTransOffset = 15;

                    ;% rtB.adzxmfdvct
                    section.data(17).logicalSrcIdx = 16;
                    section.data(17).dtTransOffset = 16;

                    ;% rtB.b0hwckgura
                    section.data(18).logicalSrcIdx = 17;
                    section.data(18).dtTransOffset = 17;

                    ;% rtB.kx21h31n2g
                    section.data(19).logicalSrcIdx = 18;
                    section.data(19).dtTransOffset = 18;

                    ;% rtB.lmmtdwu0wp
                    section.data(20).logicalSrcIdx = 19;
                    section.data(20).dtTransOffset = 19;

                    ;% rtB.e0hefnwpn5
                    section.data(21).logicalSrcIdx = 20;
                    section.data(21).dtTransOffset = 20;

                    ;% rtB.jccvex1ixq
                    section.data(22).logicalSrcIdx = 21;
                    section.data(22).dtTransOffset = 21;

                    ;% rtB.fskykcddjv
                    section.data(23).logicalSrcIdx = 22;
                    section.data(23).dtTransOffset = 22;

                    ;% rtB.p0vdharg3x
                    section.data(24).logicalSrcIdx = 23;
                    section.data(24).dtTransOffset = 23;

                    ;% rtB.kvvecvkv4w
                    section.data(25).logicalSrcIdx = 24;
                    section.data(25).dtTransOffset = 24;

                    ;% rtB.d2xczoi00g
                    section.data(26).logicalSrcIdx = 25;
                    section.data(26).dtTransOffset = 25;

                    ;% rtB.mqlyzq05s5
                    section.data(27).logicalSrcIdx = 26;
                    section.data(27).dtTransOffset = 26;

                    ;% rtB.edkdzixy33
                    section.data(28).logicalSrcIdx = 27;
                    section.data(28).dtTransOffset = 27;

                    ;% rtB.jrd3m1e14e
                    section.data(29).logicalSrcIdx = 28;
                    section.data(29).dtTransOffset = 28;

                    ;% rtB.dv5kghuyay
                    section.data(30).logicalSrcIdx = 29;
                    section.data(30).dtTransOffset = 29;

                    ;% rtB.oftupsnnwq
                    section.data(31).logicalSrcIdx = 30;
                    section.data(31).dtTransOffset = 30;

                    ;% rtB.kdatkznqf3
                    section.data(32).logicalSrcIdx = 31;
                    section.data(32).dtTransOffset = 31;

                    ;% rtB.kzu4511fzw
                    section.data(33).logicalSrcIdx = 32;
                    section.data(33).dtTransOffset = 32;

                    ;% rtB.bq2aoymfa2
                    section.data(34).logicalSrcIdx = 33;
                    section.data(34).dtTransOffset = 33;

                    ;% rtB.b0d12gfpcn
                    section.data(35).logicalSrcIdx = 34;
                    section.data(35).dtTransOffset = 34;

                    ;% rtB.ggljthsrvd
                    section.data(36).logicalSrcIdx = 35;
                    section.data(36).dtTransOffset = 35;

                    ;% rtB.eklk3dmin0
                    section.data(37).logicalSrcIdx = 36;
                    section.data(37).dtTransOffset = 36;

                    ;% rtB.oo3ejug25p
                    section.data(38).logicalSrcIdx = 37;
                    section.data(38).dtTransOffset = 37;

                    ;% rtB.a0lpbr03kt
                    section.data(39).logicalSrcIdx = 38;
                    section.data(39).dtTransOffset = 38;

                    ;% rtB.b3qds3z03d
                    section.data(40).logicalSrcIdx = 39;
                    section.data(40).dtTransOffset = 39;

                    ;% rtB.ojzkzpds5k
                    section.data(41).logicalSrcIdx = 40;
                    section.data(41).dtTransOffset = 40;

                    ;% rtB.fpznfvuttn
                    section.data(42).logicalSrcIdx = 41;
                    section.data(42).dtTransOffset = 41;

                    ;% rtB.iefpdh24wc
                    section.data(43).logicalSrcIdx = 42;
                    section.data(43).dtTransOffset = 42;

                    ;% rtB.hdznuhk51n
                    section.data(44).logicalSrcIdx = 43;
                    section.data(44).dtTransOffset = 43;

                    ;% rtB.h2gumn0zfz
                    section.data(45).logicalSrcIdx = 44;
                    section.data(45).dtTransOffset = 44;

                    ;% rtB.nfrioqoa1z
                    section.data(46).logicalSrcIdx = 45;
                    section.data(46).dtTransOffset = 45;

                    ;% rtB.gh4si2bfc3
                    section.data(47).logicalSrcIdx = 46;
                    section.data(47).dtTransOffset = 46;

                    ;% rtB.nfkbndd5rw
                    section.data(48).logicalSrcIdx = 47;
                    section.data(48).dtTransOffset = 47;

                    ;% rtB.fthtwuev1r
                    section.data(49).logicalSrcIdx = 48;
                    section.data(49).dtTransOffset = 48;

                    ;% rtB.inb2szn322
                    section.data(50).logicalSrcIdx = 49;
                    section.data(50).dtTransOffset = 49;

                    ;% rtB.f5wvyzcfg5
                    section.data(51).logicalSrcIdx = 50;
                    section.data(51).dtTransOffset = 50;

                    ;% rtB.ok00lxzmk0
                    section.data(52).logicalSrcIdx = 51;
                    section.data(52).dtTransOffset = 51;

                    ;% rtB.keiyfhx4eg
                    section.data(53).logicalSrcIdx = 52;
                    section.data(53).dtTransOffset = 52;

                    ;% rtB.gczfrkzoxa
                    section.data(54).logicalSrcIdx = 53;
                    section.data(54).dtTransOffset = 53;

                    ;% rtB.c3siktwmor
                    section.data(55).logicalSrcIdx = 54;
                    section.data(55).dtTransOffset = 54;

                    ;% rtB.aexnc2oizh
                    section.data(56).logicalSrcIdx = 55;
                    section.data(56).dtTransOffset = 55;

                    ;% rtB.eulxbwi45w
                    section.data(57).logicalSrcIdx = 56;
                    section.data(57).dtTransOffset = 56;

                    ;% rtB.g1ctig4m3i
                    section.data(58).logicalSrcIdx = 57;
                    section.data(58).dtTransOffset = 57;

                    ;% rtB.ak0qj52dtk
                    section.data(59).logicalSrcIdx = 58;
                    section.data(59).dtTransOffset = 58;

                    ;% rtB.mdypthjkfn
                    section.data(60).logicalSrcIdx = 59;
                    section.data(60).dtTransOffset = 59;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtB.dbtddmdnlk
                    section.data(1).logicalSrcIdx = 60;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.g1kfu2k5fh
                    section.data(2).logicalSrcIdx = 61;
                    section.data(2).dtTransOffset = 1;

                    ;% rtB.hto3u2ooh4
                    section.data(3).logicalSrcIdx = 62;
                    section.data(3).dtTransOffset = 2;

                    ;% rtB.j0q4aipzzu
                    section.data(4).logicalSrcIdx = 63;
                    section.data(4).dtTransOffset = 3;

                    ;% rtB.ige0xs0xi4
                    section.data(5).logicalSrcIdx = 64;
                    section.data(5).dtTransOffset = 4;

                    ;% rtB.iwmpiqqojt
                    section.data(6).logicalSrcIdx = 65;
                    section.data(6).dtTransOffset = 5;

                    ;% rtB.fxvkky4cdu
                    section.data(7).logicalSrcIdx = 66;
                    section.data(7).dtTransOffset = 6;

                    ;% rtB.g1sdxnua3f
                    section.data(8).logicalSrcIdx = 68;
                    section.data(8).dtTransOffset = 7;

                    ;% rtB.hpdu0hetw0
                    section.data(9).logicalSrcIdx = 69;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtB.fhrdrehs2q
                    section.data(1).logicalSrcIdx = 71;
                    section.data(1).dtTransOffset = 0;

                    ;% rtB.g4yktga2hl
                    section.data(2).logicalSrcIdx = 72;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            sigMap.sections(3) = section;
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
        nTotSects     = 10;
        sectIdxOffset = 3;

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
            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.owav32xvsn
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.a2qsprdgu1
                    section.data(1).logicalSrcIdx = 1;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% rtDW.aiubtbumbt.modelTStart
                    section.data(1).logicalSrcIdx = 2;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% rtDW.fz3uelqdj1.LoggedData
                    section.data(1).logicalSrcIdx = 3;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.enaunfvrqp.LoggedData
                    section.data(2).logicalSrcIdx = 4;
                    section.data(2).dtTransOffset = 4;

                    ;% rtDW.gpxkxxnpkk.TUbufferPtrs
                    section.data(3).logicalSrcIdx = 5;
                    section.data(3).dtTransOffset = 7;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtDW.btjp423gxi
                    section.data(1).logicalSrcIdx = 6;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.lgypi2y43m
                    section.data(2).logicalSrcIdx = 7;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.lq35xsrymr
                    section.data(3).logicalSrcIdx = 8;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.j3e50spkrk
                    section.data(4).logicalSrcIdx = 9;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.fpmlnohs30
                    section.data(5).logicalSrcIdx = 10;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.lcyc3z0xe4
                    section.data(6).logicalSrcIdx = 11;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.oyzwbyjehp
                    section.data(7).logicalSrcIdx = 12;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.abqwkmfwm4
                    section.data(8).logicalSrcIdx = 13;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.kasy120l4j
                    section.data(9).logicalSrcIdx = 14;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% rtDW.gh1igxnqfd
                    section.data(1).logicalSrcIdx = 15;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.enr4nh0hfz
                    section.data(2).logicalSrcIdx = 16;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtDW.amxtebsuok.Tail
                    section.data(1).logicalSrcIdx = 17;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.gw2nevades
                    section.data(2).logicalSrcIdx = 18;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.beov4p1chl
                    section.data(3).logicalSrcIdx = 19;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.i1d01tl30y
                    section.data(4).logicalSrcIdx = 20;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.kmsrw41wv2
                    section.data(5).logicalSrcIdx = 21;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.ori3ob0wbj
                    section.data(6).logicalSrcIdx = 22;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.jtmvk2k11t
                    section.data(7).logicalSrcIdx = 23;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.g33icp3oa5
                    section.data(8).logicalSrcIdx = 24;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.lm0jugnir2
                    section.data(9).logicalSrcIdx = 25;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            dworkMap.sections(7) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% rtDW.dx43c5auhv
                    section.data(1).logicalSrcIdx = 26;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.e50m41o2zc
                    section.data(2).logicalSrcIdx = 27;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.ikdfizkwpn
                    section.data(3).logicalSrcIdx = 28;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(8) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% rtDW.imhks3haia
                    section.data(1).logicalSrcIdx = 29;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.f2jjc1wq2q
                    section.data(2).logicalSrcIdx = 30;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.lkimmiwkfm
                    section.data(3).logicalSrcIdx = 31;
                    section.data(3).dtTransOffset = 2;

                    ;% rtDW.d1wjbe2mwx
                    section.data(4).logicalSrcIdx = 32;
                    section.data(4).dtTransOffset = 3;

                    ;% rtDW.bkxvh1udvf
                    section.data(5).logicalSrcIdx = 33;
                    section.data(5).dtTransOffset = 4;

                    ;% rtDW.lxkp2jo22h
                    section.data(6).logicalSrcIdx = 34;
                    section.data(6).dtTransOffset = 5;

                    ;% rtDW.ev00g24oaq
                    section.data(7).logicalSrcIdx = 35;
                    section.data(7).dtTransOffset = 6;

                    ;% rtDW.nhy3an0buu
                    section.data(8).logicalSrcIdx = 36;
                    section.data(8).dtTransOffset = 7;

                    ;% rtDW.meym2kkggb
                    section.data(9).logicalSrcIdx = 37;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            dworkMap.sections(9) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% rtDW.lqflcq5fag
                    section.data(1).logicalSrcIdx = 38;
                    section.data(1).dtTransOffset = 0;

                    ;% rtDW.gqihgtfesf
                    section.data(2).logicalSrcIdx = 39;
                    section.data(2).dtTransOffset = 1;

                    ;% rtDW.haix1u4b0d
                    section.data(3).logicalSrcIdx = 40;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(10) = section;
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


    targMap.checksum0 = 3328080310;
    targMap.checksum1 = 1960284117;
    targMap.checksum2 = 3069926035;
    targMap.checksum3 = 938795997;

