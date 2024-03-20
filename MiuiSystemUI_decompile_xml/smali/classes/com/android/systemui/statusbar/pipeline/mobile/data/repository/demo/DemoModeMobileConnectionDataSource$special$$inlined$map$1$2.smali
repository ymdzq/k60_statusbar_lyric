.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    instance-of v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2$1;

    .line 6
    if-eqz v2, :cond_0

    .line 8
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2$1;

    .line 11
    iget v3, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2$1;->label:I

    .line 13
    const/high16 v4, -0x80000000

    .line 15
    and-int v5, v3, v4

    .line 17
    if-eqz v5, :cond_0

    .line 19
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2$1;->label:I

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2$1;

    .line 25
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 27
    :goto_0
    iget-object v1, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 30
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    iget v4, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2$1;->label:I

    .line 34
    const/4 v5, 0x1

    .line 36
    if-eqz v4, :cond_2

    .line 37
    if-ne v4, v5, :cond_1

    .line 39
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    goto/16 :goto_b

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 46
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0

    .line 53
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    move-object/from16 v1, p1

    .line 57
    check-cast v1, Landroid/os/Bundle;

    .line 59
    iget-object v4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource;

    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    const-string v4, "mobile"

    .line 66
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 71
    const/4 v6, 0x0

    .line 72
    if-nez v4, :cond_3

    .line 73
    goto/16 :goto_a

    .line 75
    :cond_3
    const-string/jumbo v7, "show"

    .line 77
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    move-result v4

    .line 83
    const-string/jumbo v8, "slot"

    .line 84
    if-eqz v4, :cond_20

    .line 87
    const-string v4, "level"

    .line 89
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v4

    .line 94
    if-eqz v4, :cond_4

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    move-result v4

    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v4

    .line 104
    move-object v10, v4

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    move-object v10, v6

    .line 107
    :goto_1
    const-string v4, "datatype"

    .line 108
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v4

    .line 113
    if-eqz v4, :cond_14

    .line 114
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 116
    move-result v9

    .line 119
    sparse-switch v9, :sswitch_data_0

    .line 120
    goto/16 :goto_2

    .line 123
    :sswitch_0
    const-string v9, "lte+"

    .line 125
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v4

    .line 130
    if-nez v4, :cond_5

    .line 131
    goto/16 :goto_2

    .line 133
    :cond_5
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 135
    goto/16 :goto_3

    .line 137
    :sswitch_1
    const-string v9, "not"

    .line 139
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v4

    .line 144
    if-nez v4, :cond_6

    .line 145
    goto/16 :goto_2

    .line 147
    :cond_6
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 149
    goto/16 :goto_3

    .line 151
    :sswitch_2
    const-string v9, "lte"

    .line 153
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    move-result v4

    .line 158
    if-nez v4, :cond_7

    .line 159
    goto/16 :goto_2

    .line 161
    :cond_7
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 163
    goto/16 :goto_3

    .line 165
    :sswitch_3
    const-string v9, "dis"

    .line 167
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v4

    .line 172
    if-nez v4, :cond_8

    .line 173
    goto/16 :goto_2

    .line 175
    :cond_8
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->DATA_DISABLED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 177
    goto/16 :goto_3

    .line 179
    :sswitch_4
    const-string v9, "5ge"

    .line 181
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result v4

    .line 186
    if-nez v4, :cond_9

    .line 187
    goto/16 :goto_2

    .line 189
    :cond_9
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 191
    goto/16 :goto_3

    .line 193
    :sswitch_5
    const-string v9, "5g+"

    .line 195
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    move-result v4

    .line 200
    if-nez v4, :cond_a

    .line 201
    goto/16 :goto_2

    .line 203
    :cond_a
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 205
    goto/16 :goto_3

    .line 207
    :sswitch_6
    const-string v9, "4g+"

    .line 209
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    move-result v4

    .line 214
    if-nez v4, :cond_b

    .line 215
    goto/16 :goto_2

    .line 217
    :cond_b
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 219
    goto/16 :goto_3

    .line 221
    :sswitch_7
    const-string v9, "h+"

    .line 223
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    move-result v4

    .line 228
    if-nez v4, :cond_c

    .line 229
    goto :goto_2

    .line 231
    :cond_c
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 232
    goto :goto_3

    .line 234
    :sswitch_8
    const-string v9, "5g"

    .line 235
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    move-result v4

    .line 240
    if-nez v4, :cond_d

    .line 241
    goto :goto_2

    .line 243
    :cond_d
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 244
    goto :goto_3

    .line 246
    :sswitch_9
    const-string v9, "4g"

    .line 247
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    move-result v4

    .line 252
    if-nez v4, :cond_e

    .line 253
    goto :goto_2

    .line 255
    :cond_e
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 256
    goto :goto_3

    .line 258
    :sswitch_a
    const-string v9, "3g"

    .line 259
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    move-result v4

    .line 264
    if-nez v4, :cond_f

    .line 265
    goto :goto_2

    .line 267
    :cond_f
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 268
    goto :goto_3

    .line 270
    :sswitch_b
    const-string v9, "1x"

    .line 271
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    move-result v4

    .line 276
    if-nez v4, :cond_10

    .line 277
    goto :goto_2

    .line 279
    :cond_10
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 280
    goto :goto_3

    .line 282
    :sswitch_c
    const-string v9, "h"

    .line 283
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    move-result v4

    .line 288
    if-nez v4, :cond_11

    .line 289
    goto :goto_2

    .line 291
    :cond_11
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 292
    goto :goto_3

    .line 294
    :sswitch_d
    const-string v9, "g"

    .line 295
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    move-result v4

    .line 300
    if-nez v4, :cond_12

    .line 301
    goto :goto_2

    .line 303
    :cond_12
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 304
    goto :goto_3

    .line 306
    :sswitch_e
    const-string v9, "e"

    .line 307
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    move-result v4

    .line 312
    if-nez v4, :cond_13

    .line 313
    goto :goto_2

    .line 315
    :cond_13
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 316
    goto :goto_3

    .line 318
    :goto_2
    sget-object v4, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    .line 319
    :goto_3
    move-object v11, v4

    .line 321
    goto :goto_4

    .line 322
    :cond_14
    move-object v11, v6

    .line 323
    :goto_4
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    move-result-object v4

    .line 327
    if-eqz v4, :cond_15

    .line 328
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 330
    move-result v4

    .line 333
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 334
    move-result-object v4

    .line 337
    move-object v12, v4

    .line 338
    goto :goto_5

    .line 339
    :cond_15
    move-object v12, v6

    .line 340
    :goto_5
    const-string v4, "carrierid"

    .line 341
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    move-result-object v4

    .line 346
    if-eqz v4, :cond_16

    .line 347
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 349
    move-result v4

    .line 352
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 353
    move-result-object v4

    .line 356
    move-object v13, v4

    .line 357
    goto :goto_6

    .line 358
    :cond_16
    move-object v13, v6

    .line 359
    :goto_6
    const-string v4, "inflate"

    .line 360
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 362
    move-result-object v4

    .line 365
    if-eqz v4, :cond_17

    .line 366
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 368
    move-result v4

    .line 371
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 372
    move-result-object v4

    .line 375
    move-object v14, v4

    .line 376
    goto :goto_7

    .line 377
    :cond_17
    move-object v14, v6

    .line 378
    :goto_7
    const-string v4, "activity"

    .line 379
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 381
    move-result-object v4

    .line 384
    if-eqz v4, :cond_1e

    .line 385
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 387
    move-result v6

    .line 390
    const/16 v8, 0xd25

    .line 391
    if-eq v6, v8, :cond_1c

    .line 393
    const v8, 0x1af4e

    .line 395
    if-eq v6, v8, :cond_1a

    .line 398
    const v8, 0x5fb5409

    .line 400
    if-eq v6, v8, :cond_18

    .line 403
    goto :goto_8

    .line 405
    :cond_18
    const-string v6, "inout"

    .line 406
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    move-result v4

    .line 411
    if-nez v4, :cond_19

    .line 412
    goto :goto_8

    .line 414
    :cond_19
    const/4 v4, 0x3

    .line 415
    goto :goto_9

    .line 416
    :cond_1a
    const-string v6, "out"

    .line 417
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    move-result v4

    .line 422
    if-nez v4, :cond_1b

    .line 423
    goto :goto_8

    .line 425
    :cond_1b
    const/4 v4, 0x2

    .line 426
    goto :goto_9

    .line 427
    :cond_1c
    const-string v6, "in"

    .line 428
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    move-result v4

    .line 433
    if-nez v4, :cond_1d

    .line 434
    :goto_8
    const/4 v4, 0x0

    .line 436
    goto :goto_9

    .line 437
    :cond_1d
    move v4, v5

    .line 438
    :goto_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    move-result-object v6

    .line 442
    :cond_1e
    move-object v15, v6

    .line 443
    const-string v4, "carriernetworkchange"

    .line 444
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 446
    move-result-object v4

    .line 449
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 450
    move-result v16

    .line 453
    const-string/jumbo v4, "roam"

    .line 454
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 457
    move-result-object v4

    .line 460
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 461
    move-result v17

    .line 464
    const-string v4, "networkname"

    .line 465
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 467
    move-result-object v1

    .line 470
    if-nez v1, :cond_1f

    .line 471
    const-string v1, "demo mode"

    .line 473
    :cond_1f
    move-object/from16 v18, v1

    .line 475
    new-instance v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/model/FakeNetworkEventModel$Mobile;

    .line 477
    move-object v9, v1

    .line 479
    invoke-direct/range {v9 .. v18}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/model/FakeNetworkEventModel$Mobile;-><init>(Ljava/lang/Integer;Lcom/android/settingslib/SignalIcon$MobileIconGroup;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;ZZLjava/lang/String;)V

    .line 480
    move-object v6, v1

    .line 483
    goto :goto_a

    .line 484
    :cond_20
    new-instance v4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/model/FakeNetworkEventModel$MobileDisabled;

    .line 485
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 487
    move-result-object v1

    .line 490
    if-eqz v1, :cond_21

    .line 491
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 493
    move-result v1

    .line 496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    move-result-object v6

    .line 500
    :cond_21
    invoke-direct {v4, v6}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/model/FakeNetworkEventModel$MobileDisabled;-><init>(Ljava/lang/Integer;)V

    .line 501
    move-object v6, v4

    .line 504
    :goto_a
    iput v5, v2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2$1;->label:I

    .line 505
    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoModeMobileConnectionDataSource$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 507
    invoke-interface {v0, v6, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 509
    move-result-object v0

    .line 512
    if-ne v0, v3, :cond_22

    .line 513
    return-object v3

    .line 515
    :cond_22
    :goto_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 516
    return-object v0

    .line 518
    nop

    .line 519
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_e
        0x67 -> :sswitch_d
        0x68 -> :sswitch_c
        0x667 -> :sswitch_b
        0x694 -> :sswitch_a
        0x6b3 -> :sswitch_9
        0x6d2 -> :sswitch_8
        0xcc3 -> :sswitch_7
        0xcfd8 -> :sswitch_6
        0xd399 -> :sswitch_5
        0xd3d3 -> :sswitch_4
        0x1848e -> :sswitch_3
        0x1a3dd -> :sswitch_2
        0x1aad3 -> :sswitch_1
        0x32d7ee -> :sswitch_0
    .end sparse-switch
    .line 520
.end method
