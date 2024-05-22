.class public abstract Lcom/miui/clock/hct/HctSolver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CRITICAL_PLANES:[D

.field public static final LINRGB_FROM_SCALED_DISCOUNT:[[D

.field public static final SCALED_DISCOUNT_FROM_LINRGB:[[D

.field public static final Y_FROM_LINRGB:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [D

    .line 3
    fill-array-data v1, :array_0

    .line 5
    new-array v2, v0, [D

    .line 8
    fill-array-data v2, :array_1

    .line 10
    new-array v3, v0, [D

    .line 13
    fill-array-data v3, :array_2

    .line 15
    filled-new-array {v1, v2, v3}, [[D

    .line 18
    move-result-object v1

    .line 21
    sput-object v1, Lcom/miui/clock/hct/HctSolver;->SCALED_DISCOUNT_FROM_LINRGB:[[D

    .line 22
    new-array v1, v0, [D

    .line 24
    fill-array-data v1, :array_3

    .line 26
    new-array v2, v0, [D

    .line 29
    fill-array-data v2, :array_4

    .line 31
    new-array v3, v0, [D

    .line 34
    fill-array-data v3, :array_5

    .line 36
    filled-new-array {v1, v2, v3}, [[D

    .line 39
    move-result-object v1

    .line 42
    sput-object v1, Lcom/miui/clock/hct/HctSolver;->LINRGB_FROM_SCALED_DISCOUNT:[[D

    .line 43
    new-array v0, v0, [D

    .line 45
    fill-array-data v0, :array_6

    .line 47
    sput-object v0, Lcom/miui/clock/hct/HctSolver;->Y_FROM_LINRGB:[D

    .line 50
    const/16 v0, 0xff

    .line 52
    new-array v0, v0, [D

    .line 54
    fill-array-data v0, :array_7

    .line 56
    sput-object v0, Lcom/miui/clock/hct/HctSolver;->CRITICAL_PLANES:[D

    .line 59
    return-void

    .line 61
    :array_0
    .array-data 8
        0x3f53aca939f9bf80L    # 0.001200833568784504
        0x3f63938d761f2c49L    # 0.002389694492170889
        0x3f32527a6d20ac99L    # 2.795742885861124E-4
    .end array-data

    .line 62
    :array_1
    .array-data 8
        0x3f434dcd39abd367L    # 5.891086651375999E-4
        0x3f686678fe3bac59L    # 0.0029785502573438758
        0x3f356f44653168daL    # 3.270666104008398E-4
    .end array-data

    .line 78
    :array_2
    .array-data 8
        0x3f1a99547f1efd1dL    # 1.0146692491640572E-4
        0x3f4193d4431726edL    # 5.364214359186694E-4
        0x3f6b0448268cc828L    # 0.0032979401770712076
    .end array-data

    .line 94
    :array_3
    .array-data 8
        0x409574e125da5040L    # 1373.2198709594231
        -0x3f6ece4cad95c798L    # -1100.4251190754821
        -0x3fe2e2a16cb12fbfL    # -7.278681089101213
    .end array-data

    .line 110
    :array_4
    .array-data 8
        -0x3f8f02f1ca687dc0L    # -271.815969077903
        0x40817d43adeec650L    # 559.6580465940733
        -0x3fbfc50f292cbe56L    # -32.46047482791194
    .end array-data

    :array_5
    .array-data 8
        0x3fff658a28353577L    # 1.9622899599665666
        -0x3fb369c071f80c3fL    # -57.173814538844006
        0x40734b92b7c34f82L    # 308.7233197812385
    .end array-data

    :array_6
    .array-data 8
        0x3fcb367a0f9096bcL    # 0.2126
        0x3fe6e2eb1c432ca5L    # 0.7152
        0x3fb27bb2fec56d5dL    # 0.0722
    .end array-data

    :array_7
    .array-data 8
        0x3f8f14c71b1e49e2L    # 0.015176349177441876
        0x3fa74f955456b769L    # 0.045529047532325624
        0x3fb36cfc70f2ee2dL    # 0.07588174588720938
        0x3fbb322e37ba80a6L    # 0.10623444424209313
        0x3fc17bafff41098eL    # 0.13658714259697685
        0x3fc55e48e2a4d2cbL    # 0.16693984095186062
        0x3fc940e1c6089c06L    # 0.19729253930674434
        0x3fcd237aa96c6543L    # 0.2276452376616281
        0x3fd08309c6681740L    # 0.2579979360165119
        0x3fd274563819fbdeL    # 0.28835063437139563
        0x3fd467b652dbc0b0L    # 0.3188300904430532
        0x3fd675920d7da7b7L    # 0.350925934958123
        0x3fd8a114458f16a8L    # 0.3848314933096426
        0x3fdaeab2941ce8eeL    # 0.42057480301049466
        0x3fdd52dff06864acL    # 0.458183274052838
        0x3fdfda0cd6afa026L    # 0.4976837250274023
        0x3fe14053b5ba9b10L    # 0.5391024159806381
        0x3fe2a38dcdd9d833L    # 0.5824650784040898
        0x3fe416e99d2c6dbcL    # 0.6277969426914107
        0x3fe59a9b0dabee07L    # 0.6751227633498623
        0x3fe72ed5164ae78aL    # 0.7244668422128921
        0x3fe8d3c9c675c021L    # 0.775853049866786
        0x3fea89aa50b7831bL    # 0.829304845476233
        0x3fec50a71498c460L    # 0.8848452951698498
        0x3fee28efa7cbf7abL    # 0.942497089126609
        0x3ff009596f5c1eb0L    # 1.0022825574869039
        0x3ff1070f6a38d1ecL    # 1.0642236851973577
        0x3ff20db079160f60L    # 1.1283421258858297
        0x3ff31d52fb1a7c13L    # 1.1946592148522128
        0x3ff4360cfd3e997fL    # 1.2631959812511864
        0x3ff557f43d5f1b72L    # 1.3339731595349034
        0x3ff6831e2d2090c9L    # 1.407011200216447
        0x3ff7b79ff4a81f49L    # 1.4823302800086415
        0x3ff8f58e752cb288L    # 1.5599503113873272
        0x3ffa3cfe4b63a8afL    # 1.6398909516233677
        0x3ffb8e03d1cbbd1eL    # 1.7221716113234105
        0x3ffce8b322d8ae77L    # 1.8068114625156377
        0x3ffe4d201b01e2ceL    # 1.8938294463134073
        0x3fffbb5e5ab6180fL    # 1.9832442801866852
        0x400099c0a41b0043L    # 2.075074464868551
        0x40015ace08abc052L    # 2.1693382909216234
        0x400220e0d6998f93L    # 2.2660538449872063
        0x4002ec026ede8ab3L    # 2.36523901573795
        0x4003bc3c18a5a895L    # 2.4669114995532007
        0x400491970204ce3aL    # 2.5710888059345764
        0x40056c1c40ae8440L    # 2.6777882626779785
        0x40064bd4d29bd0e9L    # 2.7870270208169257
        0x400730c99eaeafeeL    # 2.898822059350997
        0x40081b03754d97e3L    # 3.0131901897720907
        0x40090a8b10f874ddL    # 3.1301480604002863
        0x4009ff6916d77856L    # 3.2497121605402226
        0x400af9a61744174aL    # 3.3718988244681087
        0x400bf94a8e4c897dL    # 3.4967242352587946
        0x400cfe5ee43216c1L    # 3.624204428461639
        0x400e08eb6de279d2L    # 3.754355295633311
        0x400f18f86d6c9be2L    # 3.887192587735158
        0x401017470938736eL    # 4.022731918402185
        0x4010a4da3d46b461L    # 4.160988767090289
        0x40113539d8e2ff50L    # 4.301978482107941
        0x4011c869d9745cf2L    # 4.445716283538092
        0x40125e6e33f75806L    # 4.592217266055746
        0x4012f74ad52cb09aL    # 4.741496401646282
        0x40139303a1c66fdaL    # 4.893568542229298
        0x4014319c7693702aL    # 5.048448422192488
        0x4014d31928a96beaL    # 5.20615066083972
        0x4015777d858da48eL    # 5.3666897647573375
        0x40161ecd535c325bL    # 5.5300801301023865
        0x4016c90c50ee0c43L    # 5.696336044816294
        0x4017763e35fdd6a4L    # 5.865471690767354
        0x40182666b34b8667L    # 6.037501145825082
        0x4018d98972bee5cfL    # 6.212438385869475
        0x40198faa17890716L    # 6.390297286737924
        0x401a48cc3e44b09eL    # 6.571091626112461
        0x401b04f37d15cd99L    # 6.7548350853498045
        0x401bc42363c7eda2L    # 6.941541251256611
        0x401c865f7bebdd24L    # 7.131223617812143
        0x401d4bab48f46014L    # 7.323895587840543
        0x401e140a485217a5L    # 7.5195704746346665
        0x401edf7ff18e9b89L    # 7.7182615035334345
        0x401fae0fb666ceb6L    # 7.919981813454504
        0x40203fde81723bbfL    # 8.124744458384042
        0x4020aa459ebb90eeL    # 8.332562408825165
        0x4021163ee38629a1L    # 8.543448553206703
        0x402183cbfd938b07L    # 8.757415699253682
        0x4021f2ee97fb71b0L    # 8.974476575321063
        0x402263a85b36f868L    # 9.194643831691977
        0x4022d5faed2b7406L    # 9.417930041841839
        0x402349e7f13506c4L    # 9.644347703669503
        0x4023bf710830edd2L    # 9.873909240696694
        0x40243697d0878b80L    # 10.106627003236781
        0x4024af5de6363078L    # 10.342513269534024
        0x402529c4e2d8a631L    # 10.58158024687427
        0x4025a5ce5db27ccdL    # 10.8238400726681
        0x4026237bebb81e6fL    # 11.069304815507364
        0x4026a2cf1f97aa0eL    # 11.317986476196008
        0x402723c989c19785L    # 11.569896988756009
        0x4027a66cb87126f5L    # 11.825048221409341
        0x40282aba37b49ccdL    # 12.083451977536606
        0x4028b0b391754c8fL    # 12.345119996613247
        0x4029385a4d7f7392L    # 12.610063955123938
        0x4029c1aff189e588L    # 12.878295467455942
        0x402a4cb6013d8c16L    # 13.149826086772048
        0x402ad96dfe3cbaefL    # 13.42466730586372
        0x402b67d9682a59d7L    # 13.702830557985108
        0x402bf7f9bcb0e5dbL    # 13.984327217668513
        0x402c89d077894ae9L    # 14.269168601521828
        0x402d1d5f12819719L    # 14.55736596900856
        0x402db2a7058388a2L    # 14.848930523210871
        0x402e49a9c69af7d4L    # 15.143873411576273
        0x402ee268c9fc1dedL    # 15.44220572664832
        0x402f7ce58209ba02L    # 15.743938506781891
        0x40300c90afad8a5bL    # 16.04908273684337
        0x40305b8ee860f20bL    # 16.35764934889634
        0x4030ab6e21a80812L    # 16.66964922287304
        0x4030fc2f112eac90L    # 16.985093187232053
        0x40314dd26bc67044L    # 17.30399201960269
        0x4031a058e5694aa2L    # 17.62635644741625
        0x4031f3c3313c4220L    # 17.95219714852476
        0x40324812019206eaL    # 18.281524751807332
        0x40329d4607ed8070L    # 18.614349837764564
        0x4032f35ff5044e3bL    # 18.95068293910138
        0x40334a6078c13c38L    # 19.290534541298456
        0x4033a2484246aaf7L    # 19.633915083172692
        0x4033fb17fff0ec0bL    # 19.98083495742689
        0x403454d05f589306L    # 20.331304511189067
        0x4034af720d54bb29L    # 20.685334046541502
        0x40350afdb5fd424fL    # 21.042933821039977
        0x4035677404acf91aL    # 21.404114048223256
        0x4035c4d5a403c8daL    # 21.76888489811322
        0x403623233de8cf6cL    # 22.137256497705877
        0x4036825d7b8c711bL    # 22.50923893145328
        0x4036e285056a611fL    # 22.884842241736916
        0x4037439a834ba09cL    # 23.264076429332462
        0x4037a59e9c487496L    # 23.6469514538663
        0x40380891f6ca5311L    # 24.033477234264016
        0x40386c75388dc754L    # 24.42366364919083
        0x4038d14906a44df5L    # 24.817520537484558
        0x4039370e0576286fL    # 25.21505769858089
        0x40399dc4d8c428bdL    # 25.61628489293138
        0x403a056e23a9751fL    # 26.021211842414342
        0x403a6e0a889d441aL    # 26.429848230738664
        0x403ad79aa9749101L    # 26.842203703840827
        0x403b421f2763c940L    # 27.258287870275353
        0x403bad98a3007244L    # 27.678110301598522
        0x403c1a07bc42c8a7L    # 28.10168053274597
        0x403c876d12875855L    # 28.529008062403893
        0x403cf5c944908e0fL    # 28.96010235337422
        0x403d651cf0884284L    # 29.39497283293396
        0x403dd568b4013ebdL    # 29.83362889318845
        0x403e46ad2bf8bab1L    # 30.276079891419332
        0x403eb8eaf4d7d567L    # 30.722335150426627
        0x403f2c22aa75073fL    # 31.172403958865512
        0x403fa054e8158e76L    # 31.62629557157785
        0x40400ac124376ae6L    # 32.08401920991837
        0x404045d5b2d3eadeL    # 32.54558406207592
        0x404081686cad3812L    # 33.010999283389665
        0x4040bd799e4a633aL    # 33.4802739966603
        0x4040fa0993ed4580L    # 33.953417292456834
        0x4041371899932659L    # 34.430438229418264
        0x404174a6faf55f12L    # 34.911345834551085
        0x4041b2b50389fbc7L    # 35.39614910352207
        0x4041f142fe8459f4L    # 35.88485700094671
        0x4042305136d5c4beL    # 36.37747846067349
        0x40426fdff72e0ed9L    # 36.87402238606382
        0x4042afef89fc2a2bL    # 37.37449765026789
        0x4042f080396ebd4eL    # 37.87891309649659
        0x404331924f74b6c1L    # 38.38727753828926
        0x4043732615bdde1fL    # 38.89959975977785
        0x4043b53bd5bb6319L    # 39.41588851594697
        0x4043f7d3d8a06a8dL    # 39.93615253289054
        0x40443aee67629979L    # 40.460400508064545
        0x40447e8bcaba9e04L    # 40.98864111053629
        0x4044c2ac4b24b69dL    # 41.520882981230194
        0x4045075030e1373cL    # 42.05713473317016
        0x40454c77c3f50cabL    # 42.597404951718396
        0x404592234c2a3e29L    # 43.141702194811224
        0x4045d85311106d15L    # 43.6900349931913
        0x40461f0759fd5306L    # 44.24241185063697
        0x404666406e0d3e0eL    # 44.798841244188324
        0x4046adfe94238b52L    # 45.35933162437017
        0x4046f64212eb2003L    # 45.92389141541209
        0x40473f0b30d6e0b4L    # 46.49252901546552
        0x4047885a3422271aL    # 47.065252796817916
        0x4047d22f62d13639L    # 47.64207110610409
        0x40481c8b02b1acffL    # 48.22299226451468
        0x4048676d595af778L    # 48.808024568002054
        0x4048b2d6ac2ebe65L    # 49.3971762874833
        0x4048fec740595582L    # 49.9904556690408
        0x40494b3f5ad2283bL    # 50.587870934119984
        0x4049983f405c2519L    # 51.189430279724725
        0x4049e5c7358627c0L    # 51.79514187861014
        0x404a33d77eab618dL    # 52.40501387947288
        0x404a82705ff3c0f7L    # 53.0190544071392
        0x404ad1921d545781L    # 53.637271562750364
        0x404b213cfa8fbe81L    # 54.259673423945976
        0x404b71713b367a9aL    # 54.88626804504493
        0x404bc22f22a75de3L    # 55.517063457223934
        0x404c1376f40fe90dL    # 56.15206766869424
        0x404c6548f26cab1cL    # 56.79128866487574
        0x404cb7a56089a00fL    # 57.43473440856916
        0x404d0a8c81028e68L    # 58.08241284012621
        0x404d5dfe96436370L    # 58.734331877617365
        0x404db1fbe2888e90L    # 59.39049941699807
        0x404e0684a7df5b5dL    # 60.05092333227251
        0x404e5b9928264aa1L    # 60.715611475655585
        0x404eb139a50d6a71L    # 61.38457167773311
        0x404f07666016ad10L    # 62.057811747619894
        0x404f5e1f9a963eceL    # 62.7353394731159
        0x404fb56595b2db0bL    # 63.417162620860914
        0x4050069c49330fffL    # 64.10328893648692
        0x405032cc68be70e4L    # 64.79372614476921
        0x40505f4349cbbe28L    # 65.48848194977529
        0x40508c010c951223L    # 66.18756403501224
        0x4050b905d13e9baaL    # 66.89098006357258
        0x4050e651b7d6c597L    # 67.59873767827808
        0x405113e4e0565df1L    # 68.31084450182222
        0x405141bf6aa0bc9eL    # 69.02730813691093
        0x40516fe17683e997L    # 69.74813616640164
        0x40519e4b23b8c2ceL    # 70.47333615344107
        0x4051ccfc91e3217eL    # 71.20291564160104
        0x4051fbf5e091ff31L    # 71.93688215501312
        0x40522b372f3f9a53L    # 72.67524319850172
        0x40525ac09d519a4fL    # 73.41800625771542
        0x40528a924a193361L    # 74.16517879925733
        0x4052baac54d349eaL    # 74.9167682708136
        0x4052eb0edca8956eL    # 75.67278210128072
        0x40531bba00adc335L    # 76.43322770089146
        0x40534caddfe39879L    # 77.1981124613393
        0x40537dea9937144bL    # 77.96744375590167
        0x4053af704b81910dL    # 78.74122893956174
        0x4053e13f1588e598L    # 79.51947534912904
        0x4054135715ff8602L    # 80.30219030335869
        0x405445b86b84a40cL    # 81.08938110306934
        0x4054786334a44f3aL    # 81.88105503125999
        0x4054ab578fd79492L    # 82.67721935322541
        0x4054de959b849e0fL    # 83.4778813166706
        0x4055121d75fed1acL    # 84.28304815182372
        0x405545ef3d86f02fL    # 85.09272707154808
        0x40557a0b104b33a0L    # 85.90692527145302
        0x4055ae710c676d67L    # 86.72564993000343
        0x4055e3214fe52419L    # 87.54890820862819
        0x4056181bf8bbb106L    # 88.3767072518277
        0x40564d6124d05d6fL    # 89.2090541872801
        0x405682f0f1f67f71L    # 90.04595612594655
        0x4056b8cb7def969eL    # 90.88742016217518
        0x4056eef0e66b685dL    # 91.73345337380438
        0x4057256149081bfcL    # 92.58406282226491
        0x40575c1cc3525664L    # 93.43925555268066
        0x4057932372c555aeL    # 94.29903859396902
        0x4057ca7574cb0c4fL    # 95.16341895893969
        0x40580212e6bc3c09L    # 96.03240364439274
        0x405839fbe5e090aaL    # 96.9059996312159
        0x405872308f6eba68L    # 97.78421388448044
        0x4058aab1008c881eL    # 98.6670533535366
        0x4058e37d564f0129L    # 99.55452497210776
    .end array-data
.end method

.method public static areInCyclicOrder(DDD)Z
    .locals 4

    .line 1
    sub-double/2addr p2, p0

    .line 2
    const-wide v0, 0x403921fb54442d18L    # 25.132741228718345

    .line 3
    add-double/2addr p2, v0

    .line 8
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 9
    rem-double/2addr p2, v2

    .line 14
    sub-double/2addr p4, p0

    .line 15
    add-double/2addr p4, v0

    .line 16
    rem-double/2addr p4, v2

    .line 17
    cmpg-double p0, p2, p4

    .line 18
    if-gez p0, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
    .line 25
.end method

.method public static chromaticAdaptation(D)D
    .locals 5

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    .line 2
    move-result-wide v0

    .line 5
    const-wide v2, 0x3fdae147ae147ae1L    # 0.42

    .line 6
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 11
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    cmpg-double v4, p0, v2

    .line 17
    if-gez v4, :cond_0

    .line 19
    const/4 p0, -0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    cmpl-double p0, p0, v2

    .line 23
    if-nez p0, :cond_1

    .line 25
    const/4 p0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x1

    .line 29
    :goto_0
    int-to-double p0, p0

    .line 30
    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    .line 31
    mul-double/2addr p0, v2

    .line 33
    mul-double/2addr p0, v0

    .line 34
    const-wide v2, 0x403b2147ae147ae1L    # 27.13

    .line 35
    add-double/2addr v0, v2

    .line 40
    div-double/2addr p0, v0

    .line 41
    return-wide p0
    .line 42
.end method

.method public static hueOf([D)D
    .locals 12

    .line 1
    sget-object v0, Lcom/miui/clock/hct/HctSolver;->SCALED_DISCOUNT_FROM_LINRGB:[[D

    .line 2
    invoke-static {p0, v0}, Lcom/miui/clock/hct/MathUtils;->matrixMultiply([D[[D)[D

    .line 4
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    aget-wide v0, p0, v0

    .line 9
    invoke-static {v0, v1}, Lcom/miui/clock/hct/HctSolver;->chromaticAdaptation(D)D

    .line 11
    move-result-wide v0

    .line 14
    const/4 v2, 0x1

    .line 15
    aget-wide v2, p0, v2

    .line 16
    invoke-static {v2, v3}, Lcom/miui/clock/hct/HctSolver;->chromaticAdaptation(D)D

    .line 18
    move-result-wide v2

    .line 21
    const/4 v4, 0x2

    .line 22
    aget-wide v4, p0, v4

    .line 23
    invoke-static {v4, v5}, Lcom/miui/clock/hct/HctSolver;->chromaticAdaptation(D)D

    .line 25
    move-result-wide v4

    .line 28
    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    .line 29
    mul-double v8, v0, v6

    .line 31
    const-wide/high16 v10, -0x3fd8000000000000L    # -12.0

    .line 33
    mul-double/2addr v10, v2

    .line 35
    add-double/2addr v10, v8

    .line 36
    add-double/2addr v10, v4

    .line 37
    div-double/2addr v10, v6

    .line 38
    add-double/2addr v0, v2

    .line 39
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 40
    mul-double/2addr v4, v2

    .line 42
    sub-double/2addr v0, v4

    .line 43
    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    .line 44
    div-double/2addr v0, v2

    .line 46
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .line 47
    move-result-wide v0

    .line 50
    return-wide v0
    .line 51
.end method

.method public static inverseChromaticAdaptation(D)D
    .locals 6

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    .line 2
    move-result-wide v0

    .line 5
    const-wide v2, 0x403b2147ae147ae1L    # 27.13

    .line 6
    mul-double/2addr v2, v0

    .line 11
    const-wide/high16 v4, 0x4079000000000000L    # 400.0

    .line 12
    sub-double/2addr v4, v0

    .line 14
    div-double/2addr v2, v4

    .line 15
    const-wide/16 v0, 0x0

    .line 16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 18
    move-result-wide v2

    .line 21
    cmpg-double v4, p0, v0

    .line 22
    if-gez v4, :cond_0

    .line 24
    const/4 p0, -0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    cmpl-double p0, p0, v0

    .line 28
    if-nez p0, :cond_1

    .line 30
    const/4 p0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    :goto_0
    int-to-double p0, p0

    .line 35
    const-wide v0, 0x40030c30c30c30c3L    # 2.380952380952381

    .line 36
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 41
    move-result-wide v0

    .line 44
    mul-double/2addr v0, p0

    .line 45
    return-wide v0
    .line 46
.end method

.method public static solveToInt(DDD)I
    .locals 40

    .line 1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 2
    cmpg-double v2, p2, v0

    .line 7
    if-ltz v2, :cond_20

    .line 9
    cmpg-double v0, p4, v0

    .line 11
    if-ltz v0, :cond_20

    .line 13
    const-wide v0, 0x4058fffe5c91d14eL    # 99.9999

    .line 15
    cmpl-double v0, p4, v0

    .line 20
    if-lez v0, :cond_0

    .line 22
    goto/16 :goto_14

    .line 24
    :cond_0
    const-wide v0, 0x4076800000000000L    # 360.0

    .line 26
    rem-double v2, p0, v0

    .line 31
    const-wide/16 v4, 0x0

    .line 33
    cmpg-double v6, v2, v4

    .line 35
    if-gez v6, :cond_1

    .line 37
    add-double/2addr v2, v0

    .line 39
    :cond_1
    const-wide v0, 0x4066800000000000L    # 180.0

    .line 40
    div-double/2addr v2, v0

    .line 45
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 46
    mul-double/2addr v2, v0

    .line 51
    invoke-static/range {p4 .. p5}, Lcom/miui/clock/hct/ColorUtils;->yFromLstar(D)D

    .line 52
    move-result-wide v0

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 56
    move-result-wide v6

    .line 59
    const-wide/high16 v8, 0x4026000000000000L    # 11.0

    .line 60
    mul-double/2addr v6, v8

    .line 62
    sget-object v8, Lcom/miui/clock/hct/ViewingConditions;->DEFAULT:Lcom/miui/clock/hct/ViewingConditions;

    .line 63
    iget-wide v9, v8, Lcom/miui/clock/hct/ViewingConditions;->n:D

    .line 65
    const-wide v11, 0x3fd28f5c28f5c28fL    # 0.29

    .line 67
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 72
    move-result-wide v9

    .line 75
    const-wide v11, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 76
    sub-double/2addr v11, v9

    .line 81
    const-wide v9, 0x3fe75c28f5c28f5cL    # 0.73

    .line 82
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 87
    move-result-wide v9

    .line 90
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 91
    div-double/2addr v11, v9

    .line 93
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 94
    add-double v13, v2, v9

    .line 96
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 98
    move-result-wide v13

    .line 101
    const-wide v15, 0x400e666666666666L    # 3.8

    .line 102
    add-double/2addr v13, v15

    .line 107
    const-wide/high16 v15, 0x3fd0000000000000L    # 0.25

    .line 108
    mul-double/2addr v13, v15

    .line 110
    const-wide v15, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    .line 111
    mul-double/2addr v13, v15

    .line 116
    iget-wide v4, v8, Lcom/miui/clock/hct/ViewingConditions;->nc:D

    .line 117
    mul-double/2addr v13, v4

    .line 119
    iget-wide v4, v8, Lcom/miui/clock/hct/ViewingConditions;->ncb:D

    .line 120
    mul-double/2addr v13, v4

    .line 122
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 123
    move-result-wide v4

    .line 126
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 127
    move-result-wide v15

    .line 130
    const/16 v17, 0x0

    .line 131
    move-wide/from16 v18, v6

    .line 133
    move/from16 v9, v17

    .line 135
    const-wide/16 v6, 0x0

    .line 137
    :goto_0
    sget-object v10, Lcom/miui/clock/hct/HctSolver;->Y_FROM_LINRGB:[D

    .line 139
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    .line 141
    move-wide/from16 v22, v2

    .line 143
    const/4 v2, 0x5

    .line 145
    if-ge v9, v2, :cond_9

    .line 146
    div-double v2, v18, v20

    .line 148
    cmpl-double v24, p2, v6

    .line 150
    if-eqz v24, :cond_3

    .line 152
    cmpl-double v24, v18, v6

    .line 154
    if-nez v24, :cond_2

    .line 156
    goto :goto_1

    .line 158
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 159
    move-result-wide v6

    .line 162
    div-double v6, p2, v6

    .line 163
    :cond_3
    :goto_1
    mul-double/2addr v6, v11

    .line 165
    move-wide/from16 p0, v11

    .line 166
    const-wide v11, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    .line 168
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 173
    move-result-wide v6

    .line 176
    iget-wide v11, v8, Lcom/miui/clock/hct/ViewingConditions;->c:D

    .line 177
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    .line 179
    div-double v24, v24, v11

    .line 181
    iget-wide v11, v8, Lcom/miui/clock/hct/ViewingConditions;->z:D

    .line 183
    div-double v11, v24, v11

    .line 185
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 187
    move-result-wide v2

    .line 190
    iget-wide v11, v8, Lcom/miui/clock/hct/ViewingConditions;->aw:D

    .line 191
    mul-double/2addr v2, v11

    .line 193
    iget-wide v11, v8, Lcom/miui/clock/hct/ViewingConditions;->nbb:D

    .line 194
    div-double/2addr v2, v11

    .line 196
    const-wide v11, 0x3fd3851eb851eb85L    # 0.305

    .line 197
    add-double/2addr v11, v2

    .line 202
    const-wide/high16 v24, 0x4037000000000000L    # 23.0

    .line 203
    mul-double v11, v11, v24

    .line 205
    mul-double/2addr v11, v6

    .line 207
    mul-double v24, v24, v13

    .line 208
    const-wide/high16 v26, 0x4026000000000000L    # 11.0

    .line 210
    mul-double v26, v26, v6

    .line 212
    mul-double v26, v26, v15

    .line 214
    add-double v26, v26, v24

    .line 216
    const-wide/high16 v24, 0x405b000000000000L    # 108.0

    .line 218
    mul-double v6, v6, v24

    .line 220
    mul-double/2addr v6, v4

    .line 222
    add-double v6, v6, v26

    .line 223
    div-double/2addr v11, v6

    .line 225
    mul-double v6, v11, v15

    .line 226
    mul-double/2addr v11, v4

    .line 228
    const-wide v24, 0x407cc00000000000L    # 460.0

    .line 229
    mul-double v2, v2, v24

    .line 234
    const-wide v24, 0x407c300000000000L    # 451.0

    .line 236
    mul-double v24, v24, v6

    .line 241
    add-double v24, v24, v2

    .line 243
    const-wide/high16 v26, 0x4072000000000000L    # 288.0

    .line 245
    mul-double v26, v26, v11

    .line 247
    add-double v26, v26, v24

    .line 249
    const-wide v32, 0x4095ec0000000000L    # 1403.0

    .line 251
    div-double v34, v26, v32

    .line 256
    const-wide v24, 0x408bd80000000000L    # 891.0

    .line 258
    mul-double v24, v24, v6

    .line 263
    sub-double v28, v2, v24

    .line 265
    const-wide v26, 0x4070500000000000L    # 261.0

    .line 267
    move-wide/from16 v24, v11

    .line 272
    move-wide/from16 v30, v32

    .line 274
    invoke-static/range {v24 .. v31}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticOutline0;->m(DDDD)D

    .line 276
    move-result-wide v36

    .line 279
    const-wide v24, 0x406b800000000000L    # 220.0

    .line 280
    mul-double v6, v6, v24

    .line 285
    sub-double v28, v2, v6

    .line 287
    const-wide v26, 0x40b89c0000000000L    # 6300.0

    .line 289
    move-wide/from16 v24, v11

    .line 294
    invoke-static/range {v24 .. v31}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticOutline0;->m(DDDD)D

    .line 296
    move-result-wide v2

    .line 299
    invoke-static/range {v34 .. v35}, Lcom/miui/clock/hct/HctSolver;->inverseChromaticAdaptation(D)D

    .line 300
    move-result-wide v6

    .line 303
    invoke-static/range {v36 .. v37}, Lcom/miui/clock/hct/HctSolver;->inverseChromaticAdaptation(D)D

    .line 304
    move-result-wide v11

    .line 307
    invoke-static {v2, v3}, Lcom/miui/clock/hct/HctSolver;->inverseChromaticAdaptation(D)D

    .line 308
    move-result-wide v2

    .line 311
    move-wide/from16 p4, v4

    .line 312
    const/4 v4, 0x3

    .line 314
    new-array v4, v4, [D

    .line 315
    aput-wide v6, v4, v17

    .line 317
    const/4 v5, 0x1

    .line 319
    aput-wide v11, v4, v5

    .line 320
    const/4 v6, 0x2

    .line 322
    aput-wide v2, v4, v6

    .line 323
    sget-object v2, Lcom/miui/clock/hct/HctSolver;->LINRGB_FROM_SCALED_DISCOUNT:[[D

    .line 325
    invoke-static {v4, v2}, Lcom/miui/clock/hct/MathUtils;->matrixMultiply([D[[D)[D

    .line 327
    move-result-object v2

    .line 330
    aget-wide v3, v2, v17

    .line 331
    const-wide/16 v11, 0x0

    .line 333
    cmpg-double v7, v3, v11

    .line 335
    if-ltz v7, :cond_9

    .line 337
    aget-wide v24, v2, v5

    .line 339
    cmpg-double v7, v24, v11

    .line 341
    if-ltz v7, :cond_9

    .line 343
    aget-wide v26, v2, v6

    .line 345
    cmpg-double v7, v26, v11

    .line 347
    if-gez v7, :cond_4

    .line 349
    goto/16 :goto_3

    .line 351
    :cond_4
    aget-wide v28, v10, v17

    .line 353
    aget-wide v30, v10, v5

    .line 355
    aget-wide v5, v10, v6

    .line 357
    mul-double v28, v28, v3

    .line 359
    mul-double v30, v30, v24

    .line 361
    add-double v30, v30, v28

    .line 363
    mul-double v5, v5, v26

    .line 365
    add-double v5, v5, v30

    .line 367
    cmpg-double v3, v5, v11

    .line 369
    if-gtz v3, :cond_5

    .line 371
    goto :goto_3

    .line 373
    :cond_5
    const/4 v3, 0x4

    .line 374
    if-eq v9, v3, :cond_7

    .line 375
    sub-double v3, v5, v0

    .line 377
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 379
    move-result-wide v11

    .line 382
    const-wide v24, 0x3f60624dd2f1a9fcL    # 0.002

    .line 383
    cmpg-double v7, v11, v24

    .line 388
    if-gez v7, :cond_6

    .line 390
    goto :goto_2

    .line 392
    :cond_6
    mul-double v3, v3, v18

    .line 393
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 395
    mul-double/2addr v5, v10

    .line 397
    div-double/2addr v3, v5

    .line 398
    sub-double v18, v18, v3

    .line 399
    add-int/lit8 v9, v9, 0x1

    .line 401
    const-wide/16 v6, 0x0

    .line 403
    move-wide/from16 v11, p0

    .line 405
    move-wide/from16 v4, p4

    .line 407
    move-wide/from16 v2, v22

    .line 409
    goto/16 :goto_0

    .line 411
    :cond_7
    :goto_2
    aget-wide v3, v2, v17

    .line 413
    const-wide v5, 0x405900a3d70a3d71L    # 100.01

    .line 415
    cmpl-double v7, v3, v5

    .line 420
    if-gtz v7, :cond_9

    .line 422
    const/4 v7, 0x1

    .line 424
    aget-wide v8, v2, v7

    .line 425
    cmpl-double v8, v8, v5

    .line 427
    if-gtz v8, :cond_9

    .line 429
    const/4 v8, 0x2

    .line 431
    aget-wide v11, v2, v8

    .line 432
    cmpl-double v5, v11, v5

    .line 434
    if-lez v5, :cond_8

    .line 436
    goto :goto_3

    .line 438
    :cond_8
    invoke-static {v3, v4}, Lcom/miui/clock/hct/ColorUtils;->delinearized(D)I

    .line 439
    move-result v3

    .line 442
    aget-wide v4, v2, v7

    .line 443
    invoke-static {v4, v5}, Lcom/miui/clock/hct/ColorUtils;->delinearized(D)I

    .line 445
    move-result v4

    .line 448
    aget-wide v5, v2, v8

    .line 449
    invoke-static {v5, v6}, Lcom/miui/clock/hct/ColorUtils;->delinearized(D)I

    .line 451
    move-result v2

    .line 454
    and-int/lit16 v3, v3, 0xff

    .line 455
    shl-int/lit8 v3, v3, 0x10

    .line 457
    const/high16 v5, -0x1000000

    .line 459
    or-int/2addr v3, v5

    .line 461
    and-int/lit16 v4, v4, 0xff

    .line 462
    shl-int/lit8 v4, v4, 0x8

    .line 464
    or-int/2addr v3, v4

    .line 466
    and-int/lit16 v2, v2, 0xff

    .line 467
    or-int/2addr v2, v3

    .line 469
    goto :goto_4

    .line 470
    :cond_9
    :goto_3
    move/from16 v2, v17

    .line 471
    :goto_4
    if-eqz v2, :cond_a

    .line 473
    return v2

    .line 475
    :cond_a
    const/4 v2, 0x3

    .line 476
    new-array v2, v2, [D

    .line 477
    fill-array-data v2, :array_0

    .line 479
    const-wide/16 v3, 0x0

    .line 482
    const/4 v5, 0x1

    .line 484
    const-wide/16 v6, 0x0

    .line 485
    move-wide v7, v6

    .line 487
    move/from16 v9, v17

    .line 488
    move v11, v9

    .line 490
    move v6, v5

    .line 491
    move-wide v4, v3

    .line 492
    move-object v3, v2

    .line 493
    :goto_5
    const/16 v12, 0xc

    .line 494
    if-ge v9, v12, :cond_1a

    .line 496
    aget-wide v30, v10, v17

    .line 498
    const/4 v12, 0x1

    .line 500
    aget-wide v13, v10, v12

    .line 501
    const/4 v15, 0x2

    .line 503
    aget-wide v38, v10, v15

    .line 504
    rem-int/lit8 v15, v9, 0x4

    .line 506
    if-gt v15, v12, :cond_b

    .line 508
    const-wide/16 v15, 0x0

    .line 510
    goto :goto_6

    .line 512
    :cond_b
    move-wide/from16 v15, v20

    .line 513
    :goto_6
    rem-int/lit8 v12, v9, 0x2

    .line 515
    if-nez v12, :cond_c

    .line 517
    const/4 v12, 0x4

    .line 519
    const-wide/16 v18, 0x0

    .line 520
    goto :goto_7

    .line 522
    :cond_c
    const/4 v12, 0x4

    .line 523
    move-wide/from16 v18, v20

    .line 524
    :goto_7
    if-ge v9, v12, :cond_f

    .line 526
    mul-double/2addr v13, v15

    .line 528
    sub-double v28, v0, v13

    .line 529
    move-wide/from16 v24, v38

    .line 531
    move-wide/from16 v26, v18

    .line 533
    invoke-static/range {v24 .. v31}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticOutline0;->m(DDDD)D

    .line 535
    move-result-wide v12

    .line 538
    const-wide/16 v24, 0x0

    .line 539
    cmpg-double v14, v24, v12

    .line 541
    if-gtz v14, :cond_d

    .line 543
    cmpg-double v14, v12, v20

    .line 545
    if-gtz v14, :cond_d

    .line 547
    const/4 v14, 0x1

    .line 549
    goto :goto_8

    .line 550
    :cond_d
    move/from16 v14, v17

    .line 551
    :goto_8
    if-eqz v14, :cond_e

    .line 553
    const/4 v14, 0x3

    .line 555
    new-array v14, v14, [D

    .line 556
    aput-wide v12, v14, v17

    .line 558
    const/4 v12, 0x1

    .line 560
    aput-wide v15, v14, v12

    .line 561
    const/4 v12, 0x2

    .line 563
    aput-wide v18, v14, v12

    .line 564
    goto/16 :goto_b

    .line 566
    :cond_e
    const/4 v12, 0x3

    .line 568
    new-array v14, v12, [D

    .line 569
    fill-array-data v14, :array_1

    .line 571
    goto :goto_b

    .line 574
    :cond_f
    const/16 v12, 0x8

    .line 575
    if-ge v9, v12, :cond_12

    .line 577
    mul-double v30, v30, v18

    .line 579
    sub-double v36, v0, v30

    .line 581
    move-wide/from16 v32, v38

    .line 583
    move-wide/from16 v34, v15

    .line 585
    move-wide/from16 v38, v13

    .line 587
    invoke-static/range {v32 .. v39}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticOutline0;->m(DDDD)D

    .line 589
    move-result-wide v12

    .line 592
    const-wide/16 v24, 0x0

    .line 593
    cmpg-double v14, v24, v12

    .line 595
    if-gtz v14, :cond_10

    .line 597
    cmpg-double v14, v12, v20

    .line 599
    if-gtz v14, :cond_10

    .line 601
    const/4 v14, 0x1

    .line 603
    goto :goto_9

    .line 604
    :cond_10
    move/from16 v14, v17

    .line 605
    :goto_9
    if-eqz v14, :cond_11

    .line 607
    const/4 v14, 0x3

    .line 609
    new-array v14, v14, [D

    .line 610
    aput-wide v18, v14, v17

    .line 612
    const/16 v18, 0x1

    .line 614
    aput-wide v12, v14, v18

    .line 616
    const/4 v12, 0x2

    .line 618
    aput-wide v15, v14, v12

    .line 619
    goto :goto_b

    .line 621
    :cond_11
    const/4 v12, 0x3

    .line 622
    new-array v14, v12, [D

    .line 623
    fill-array-data v14, :array_2

    .line 625
    goto :goto_b

    .line 628
    :cond_12
    mul-double v30, v30, v15

    .line 629
    sub-double v36, v0, v30

    .line 631
    move-wide/from16 v32, v13

    .line 633
    move-wide/from16 v34, v18

    .line 635
    invoke-static/range {v32 .. v39}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticOutline0;->m(DDDD)D

    .line 637
    move-result-wide v12

    .line 640
    const-wide/16 v24, 0x0

    .line 641
    cmpg-double v14, v24, v12

    .line 643
    if-gtz v14, :cond_13

    .line 645
    cmpg-double v14, v12, v20

    .line 647
    if-gtz v14, :cond_13

    .line 649
    const/4 v14, 0x1

    .line 651
    goto :goto_a

    .line 652
    :cond_13
    move/from16 v14, v17

    .line 653
    :goto_a
    if-eqz v14, :cond_14

    .line 655
    const/4 v14, 0x3

    .line 657
    new-array v14, v14, [D

    .line 658
    aput-wide v15, v14, v17

    .line 660
    const/4 v15, 0x1

    .line 662
    aput-wide v18, v14, v15

    .line 663
    const/4 v15, 0x2

    .line 665
    aput-wide v12, v14, v15

    .line 666
    goto :goto_b

    .line 668
    :cond_14
    const/4 v12, 0x3

    .line 669
    new-array v14, v12, [D

    .line 670
    fill-array-data v14, :array_3

    .line 672
    :goto_b
    aget-wide v12, v14, v17

    .line 675
    const-wide/16 v15, 0x0

    .line 677
    cmpg-double v12, v12, v15

    .line 679
    if-gez v12, :cond_15

    .line 681
    goto :goto_d

    .line 683
    :cond_15
    invoke-static {v14}, Lcom/miui/clock/hct/HctSolver;->hueOf([D)D

    .line 684
    move-result-wide v12

    .line 687
    if-nez v11, :cond_16

    .line 688
    const/4 v11, 0x1

    .line 690
    move-wide v4, v12

    .line 691
    move-wide v7, v4

    .line 692
    move-object v2, v14

    .line 693
    move-object v3, v2

    .line 694
    goto :goto_d

    .line 695
    :cond_16
    if-nez v6, :cond_17

    .line 696
    move-wide/from16 p0, v7

    .line 698
    move-wide/from16 p2, v12

    .line 700
    move-wide/from16 p4, v4

    .line 702
    invoke-static/range {p0 .. p5}, Lcom/miui/clock/hct/HctSolver;->areInCyclicOrder(DDD)Z

    .line 704
    move-result v15

    .line 707
    if-eqz v15, :cond_19

    .line 708
    :cond_17
    move-wide/from16 p0, v7

    .line 710
    move-wide/from16 p2, v22

    .line 712
    move-wide/from16 p4, v12

    .line 714
    invoke-static/range {p0 .. p5}, Lcom/miui/clock/hct/HctSolver;->areInCyclicOrder(DDD)Z

    .line 716
    move-result v6

    .line 719
    if-eqz v6, :cond_18

    .line 720
    move-wide v4, v12

    .line 722
    move-object v2, v14

    .line 723
    goto :goto_c

    .line 724
    :cond_18
    move-wide v7, v12

    .line 725
    move-object v3, v14

    .line 726
    :goto_c
    move/from16 v6, v17

    .line 727
    :cond_19
    :goto_d
    add-int/lit8 v9, v9, 0x1

    .line 729
    goto/16 :goto_5

    .line 731
    :cond_1a
    filled-new-array {v3, v2}, [[D

    .line 733
    move-result-object v0

    .line 736
    aget-object v1, v0, v17

    .line 737
    invoke-static {v1}, Lcom/miui/clock/hct/HctSolver;->hueOf([D)D

    .line 739
    move-result-wide v2

    .line 742
    const/4 v4, 0x1

    .line 743
    aget-object v0, v0, v4

    .line 744
    move/from16 v4, v17

    .line 746
    :goto_e
    const/4 v5, 0x3

    .line 748
    if-ge v4, v5, :cond_1f

    .line 749
    aget-wide v5, v1, v4

    .line 751
    aget-wide v7, v0, v4

    .line 753
    cmpl-double v9, v5, v7

    .line 755
    if-eqz v9, :cond_1e

    .line 757
    cmpg-double v7, v5, v7

    .line 759
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 761
    if-gez v7, :cond_1b

    .line 763
    invoke-static {v5, v6}, Lcom/miui/clock/hct/HctSolver;->trueDelinearized(D)D

    .line 765
    move-result-wide v5

    .line 768
    sub-double/2addr v5, v8

    .line 769
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 770
    move-result-wide v5

    .line 773
    double-to-int v5, v5

    .line 774
    aget-wide v6, v0, v4

    .line 775
    invoke-static {v6, v7}, Lcom/miui/clock/hct/HctSolver;->trueDelinearized(D)D

    .line 777
    move-result-wide v6

    .line 780
    sub-double/2addr v6, v8

    .line 781
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 782
    move-result-wide v6

    .line 785
    goto :goto_f

    .line 786
    :cond_1b
    invoke-static {v5, v6}, Lcom/miui/clock/hct/HctSolver;->trueDelinearized(D)D

    .line 787
    move-result-wide v5

    .line 790
    sub-double/2addr v5, v8

    .line 791
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 792
    move-result-wide v5

    .line 795
    double-to-int v5, v5

    .line 796
    aget-wide v6, v0, v4

    .line 797
    invoke-static {v6, v7}, Lcom/miui/clock/hct/HctSolver;->trueDelinearized(D)D

    .line 799
    move-result-wide v6

    .line 802
    sub-double/2addr v6, v8

    .line 803
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 804
    move-result-wide v6

    .line 807
    :goto_f
    double-to-int v6, v6

    .line 808
    move/from16 v7, v17

    .line 809
    :goto_10
    const/16 v8, 0x8

    .line 811
    if-ge v7, v8, :cond_1e

    .line 813
    sub-int v8, v6, v5

    .line 815
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 817
    move-result v8

    .line 820
    const/4 v9, 0x1

    .line 821
    if-gt v8, v9, :cond_1c

    .line 822
    goto :goto_12

    .line 824
    :cond_1c
    add-int v8, v5, v6

    .line 825
    int-to-double v8, v8

    .line 827
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 828
    div-double/2addr v8, v10

    .line 830
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 831
    move-result-wide v8

    .line 834
    double-to-int v8, v8

    .line 835
    sget-object v9, Lcom/miui/clock/hct/HctSolver;->CRITICAL_PLANES:[D

    .line 836
    aget-wide v9, v9, v8

    .line 838
    aget-wide v11, v1, v4

    .line 840
    aget-wide v13, v0, v4

    .line 842
    sub-double/2addr v9, v11

    .line 844
    sub-double/2addr v13, v11

    .line 845
    div-double/2addr v9, v13

    .line 846
    const/4 v11, 0x3

    .line 847
    new-array v11, v11, [D

    .line 848
    aget-wide v12, v1, v17

    .line 850
    aget-wide v14, v0, v17

    .line 852
    sub-double/2addr v14, v12

    .line 854
    mul-double/2addr v14, v9

    .line 855
    add-double/2addr v14, v12

    .line 856
    aput-wide v14, v11, v17

    .line 857
    const/4 v12, 0x1

    .line 859
    aget-wide v13, v1, v12

    .line 860
    aget-wide v15, v0, v12

    .line 862
    sub-double/2addr v15, v13

    .line 864
    mul-double/2addr v15, v9

    .line 865
    add-double/2addr v15, v13

    .line 866
    aput-wide v15, v11, v12

    .line 867
    const/4 v12, 0x2

    .line 869
    aget-wide v13, v1, v12

    .line 870
    aget-wide v15, v0, v12

    .line 872
    sub-double/2addr v15, v13

    .line 874
    mul-double/2addr v15, v9

    .line 875
    add-double/2addr v15, v13

    .line 876
    aput-wide v15, v11, v12

    .line 877
    invoke-static {v11}, Lcom/miui/clock/hct/HctSolver;->hueOf([D)D

    .line 879
    move-result-wide v9

    .line 882
    move-wide/from16 p0, v2

    .line 883
    move-wide/from16 p2, v22

    .line 885
    move-wide/from16 p4, v9

    .line 887
    invoke-static/range {p0 .. p5}, Lcom/miui/clock/hct/HctSolver;->areInCyclicOrder(DDD)Z

    .line 889
    move-result v12

    .line 892
    if-eqz v12, :cond_1d

    .line 893
    move v6, v8

    .line 895
    move-object v0, v11

    .line 896
    goto :goto_11

    .line 897
    :cond_1d
    move v5, v8

    .line 898
    move-wide v2, v9

    .line 899
    move-object v1, v11

    .line 900
    :goto_11
    add-int/lit8 v7, v7, 0x1

    .line 901
    goto :goto_10

    .line 903
    :cond_1e
    :goto_12
    add-int/lit8 v4, v4, 0x1

    .line 904
    goto/16 :goto_e

    .line 906
    :cond_1f
    new-array v2, v5, [D

    .line 908
    aget-wide v3, v1, v17

    .line 910
    aget-wide v5, v0, v17

    .line 912
    add-double/2addr v3, v5

    .line 914
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 915
    div-double/2addr v3, v5

    .line 917
    aput-wide v3, v2, v17

    .line 918
    const/4 v7, 0x1

    .line 920
    aget-wide v8, v1, v7

    .line 921
    aget-wide v10, v0, v7

    .line 923
    add-double/2addr v8, v10

    .line 925
    div-double/2addr v8, v5

    .line 926
    aput-wide v8, v2, v7

    .line 927
    const/4 v8, 0x2

    .line 929
    aget-wide v9, v1, v8

    .line 930
    aget-wide v0, v0, v8

    .line 932
    add-double/2addr v9, v0

    .line 934
    div-double/2addr v9, v5

    .line 935
    aput-wide v9, v2, v8

    .line 936
    invoke-static {v3, v4}, Lcom/miui/clock/hct/ColorUtils;->delinearized(D)I

    .line 938
    move-result v0

    .line 941
    aget-wide v3, v2, v7

    .line 942
    invoke-static {v3, v4}, Lcom/miui/clock/hct/ColorUtils;->delinearized(D)I

    .line 944
    move-result v1

    .line 947
    aget-wide v2, v2, v8

    .line 948
    invoke-static {v2, v3}, Lcom/miui/clock/hct/ColorUtils;->delinearized(D)I

    .line 950
    move-result v2

    .line 953
    and-int/lit16 v0, v0, 0xff

    .line 954
    shl-int/lit8 v0, v0, 0x10

    .line 956
    const/high16 v3, -0x1000000

    .line 958
    or-int/2addr v0, v3

    .line 960
    and-int/lit16 v1, v1, 0xff

    .line 961
    shl-int/lit8 v1, v1, 0x8

    .line 963
    or-int/2addr v0, v1

    .line 965
    and-int/lit16 v1, v2, 0xff

    .line 966
    :goto_13
    or-int/2addr v0, v1

    .line 968
    return v0

    .line 969
    :cond_20
    :goto_14
    invoke-static/range {p4 .. p5}, Lcom/miui/clock/hct/ColorUtils;->yFromLstar(D)D

    .line 970
    move-result-wide v0

    .line 973
    invoke-static {v0, v1}, Lcom/miui/clock/hct/ColorUtils;->delinearized(D)I

    .line 974
    move-result v0

    .line 977
    and-int/lit16 v0, v0, 0xff

    .line 978
    shl-int/lit8 v1, v0, 0x10

    .line 980
    const/high16 v2, -0x1000000

    .line 982
    or-int/2addr v1, v2

    .line 984
    shl-int/lit8 v2, v0, 0x8

    .line 985
    or-int/2addr v1, v2

    .line 987
    goto :goto_13

    .line 988
    nop

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_1
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_2
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_3
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public static trueDelinearized(D)D
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 2
    div-double/2addr p0, v0

    .line 4
    const-wide v0, 0x3f69a5c37387b719L    # 0.0031308

    .line 5
    cmpg-double v0, p0, v0

    .line 10
    if-gtz v0, :cond_0

    .line 12
    const-wide v0, 0x4029d70a3d70a3d7L    # 12.92

    .line 14
    mul-double/2addr p0, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide v0, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    .line 21
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 26
    move-result-wide p0

    .line 29
    const-wide v0, 0x3ff0e147ae147ae1L    # 1.055

    .line 30
    mul-double/2addr p0, v0

    .line 35
    const-wide v0, 0x3fac28f5c28f5c29L    # 0.055

    .line 36
    sub-double/2addr p0, v0

    .line 41
    :goto_0
    const-wide v0, 0x406fe00000000000L    # 255.0

    .line 42
    mul-double/2addr p0, v0

    .line 47
    return-wide p0
    .line 48
.end method
