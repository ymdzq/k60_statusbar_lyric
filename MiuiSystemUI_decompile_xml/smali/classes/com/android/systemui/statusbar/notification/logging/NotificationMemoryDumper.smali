.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final notificationPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->notificationPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 7
    return-void
    .line 9
.end method

.method public static toKb(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    const-string p0, "--"

    .line 4
    return-object p0

    .line 6
    :cond_0
    int-to-float p0, p0

    .line 7
    const/high16 v0, 0x44800000    # 1024.0f

    .line 8
    div-float/2addr p0, v0

    .line 10
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    move-result-object p0

    .line 14
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    const-string v0, "%.2f KB"

    .line 24
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    move-object/from16 v1, p0

    .line 4
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->notificationPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 8
    move-result-object v1

    .line 11
    new-instance v2, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 12
    invoke-direct {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 14
    sget-object v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;

    .line 17
    new-instance v3, Lkotlin/sequences/TransformingSequence;

    .line 19
    invoke-direct {v3, v2, v1}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 21
    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 24
    move-result-object v1

    .line 27
    sget-object v2, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dump$memoryUse$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dump$memoryUse$1;

    .line 28
    sget-object v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dump$memoryUse$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dump$memoryUse$2;

    .line 30
    filled-new-array {v2, v3}, [Lkotlin/jvm/functions/Function1;

    .line 32
    move-result-object v2

    .line 35
    invoke-static {v2}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareBy([Lkotlin/jvm/functions/Function1;)Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    .line 36
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 40
    move-result-object v1

    .line 43
    const-string v2, "Package"

    .line 44
    const-string v3, "Small Icon"

    .line 46
    const-string v4, "Large Icon"

    .line 48
    const-string v5, "Style"

    .line 50
    const-string v6, "Style Icon"

    .line 52
    const-string v7, "Big Picture"

    .line 54
    const-string v8, "Extender"

    .line 56
    const-string v9, "Extras"

    .line 58
    const-string v10, "Custom View"

    .line 60
    const-string v11, "Key"

    .line 62
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 67
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 68
    move-result-object v2

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    .line 72
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 74
    move-result v4

    .line 77
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object v4

    .line 84
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v5

    .line 88
    const/4 v6, 0x0

    .line 89
    const/4 v7, 0x1

    .line 90
    if-eqz v5, :cond_1

    .line 91
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object v5

    .line 96
    check-cast v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    .line 97
    const/16 v8, 0xa

    .line 99
    new-array v8, v8, [Ljava/lang/String;

    .line 101
    iget-object v9, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->packageName:Ljava/lang/String;

    .line 103
    aput-object v9, v8, v6

    .line 105
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    .line 107
    iget v9, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->smallIcon:I

    .line 109
    invoke-static {v9}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 111
    move-result-object v9

    .line 114
    aput-object v9, v8, v7

    .line 115
    iget v7, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->largeIcon:I

    .line 117
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 119
    move-result-object v7

    .line 122
    const/4 v9, 0x2

    .line 123
    aput-object v7, v8, v9

    .line 124
    const/16 v7, -0x3e8

    .line 126
    iget v9, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->style:I

    .line 128
    if-eq v9, v7, :cond_0

    .line 130
    packed-switch v9, :pswitch_data_0

    .line 132
    const-string v7, "Unknown"

    .line 135
    goto :goto_1

    .line 137
    :pswitch_0
    const-string v7, "RankerGroup"

    .line 138
    goto :goto_1

    .line 140
    :pswitch_1
    const-string v7, "Messaging"

    .line 141
    goto :goto_1

    .line 143
    :pswitch_2
    const-string v7, "Media"

    .line 144
    goto :goto_1

    .line 146
    :pswitch_3
    const-string v7, "Inbox"

    .line 147
    goto :goto_1

    .line 149
    :pswitch_4
    const-string v7, "DCustomView"

    .line 150
    goto :goto_1

    .line 152
    :pswitch_5
    const-string v7, "Call"

    .line 153
    goto :goto_1

    .line 155
    :pswitch_6
    const-string v7, "BigText"

    .line 156
    goto :goto_1

    .line 158
    :pswitch_7
    const-string v7, "BigPicture"

    .line 159
    goto :goto_1

    .line 161
    :pswitch_8
    const-string v7, "None"

    .line 162
    goto :goto_1

    .line 164
    :cond_0
    const-string v7, "Unspecified"

    .line 165
    :goto_1
    const/4 v9, 0x3

    .line 167
    aput-object v7, v8, v9

    .line 168
    iget v7, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->styleIcon:I

    .line 170
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 172
    move-result-object v7

    .line 175
    const/4 v9, 0x4

    .line 176
    aput-object v7, v8, v9

    .line 177
    iget v7, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->bigPicture:I

    .line 179
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 181
    move-result-object v7

    .line 184
    const/4 v9, 0x5

    .line 185
    aput-object v7, v8, v9

    .line 186
    iget v7, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extender:I

    .line 188
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 190
    move-result-object v7

    .line 193
    const/4 v9, 0x6

    .line 194
    aput-object v7, v8, v9

    .line 195
    iget v7, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extras:I

    .line 197
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 199
    move-result-object v7

    .line 202
    const/4 v9, 0x7

    .line 203
    aput-object v7, v8, v9

    .line 204
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->hasCustomView:Z

    .line 206
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 208
    move-result-object v6

    .line 211
    const/16 v7, 0x8

    .line 212
    aput-object v6, v8, v7

    .line 214
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->notificationKey:Ljava/lang/String;

    .line 216
    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->replace$default(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object v5

    .line 221
    const/16 v6, 0x9

    .line 222
    aput-object v5, v8, v6

    .line 224
    invoke-static {v8}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 226
    move-result-object v5

    .line 229
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    goto/16 :goto_0

    .line 233
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 235
    move-result-object v4

    .line 238
    move v5, v6

    .line 239
    move v8, v5

    .line 240
    move v9, v8

    .line 241
    move v10, v9

    .line 242
    move v11, v10

    .line 243
    move v12, v11

    .line 244
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    move-result v13

    .line 248
    if-eqz v13, :cond_2

    .line 249
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    move-result-object v13

    .line 254
    check-cast v13, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    .line 255
    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->objectUsage:Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    .line 257
    iget v14, v13, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->smallIcon:I

    .line 259
    add-int/2addr v5, v14

    .line 261
    iget v14, v13, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->largeIcon:I

    .line 262
    add-int/2addr v8, v14

    .line 264
    iget v14, v13, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->styleIcon:I

    .line 265
    add-int/2addr v9, v14

    .line 267
    iget v14, v13, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->bigPicture:I

    .line 268
    add-int/2addr v10, v14

    .line 270
    iget v14, v13, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extender:I

    .line 271
    add-int/2addr v11, v14

    .line 273
    iget v13, v13, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;->extras:I

    .line 274
    add-int/2addr v12, v13

    .line 276
    goto :goto_2

    .line 277
    :cond_2
    const-string v13, "TOTALS"

    .line 278
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 280
    move-result-object v14

    .line 283
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 284
    move-result-object v15

    .line 287
    const-string v16, ""

    .line 288
    invoke-static {v9}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 290
    move-result-object v17

    .line 293
    invoke-static {v10}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 294
    move-result-object v18

    .line 297
    invoke-static {v11}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 298
    move-result-object v19

    .line 301
    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 302
    move-result-object v20

    .line 305
    const-string v21, ""

    .line 306
    const-string v22, ""

    .line 308
    filled-new-array/range {v13 .. v22}, [Ljava/lang/String;

    .line 310
    move-result-object v4

    .line 313
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 314
    move-result-object v4

    .line 317
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 318
    move-result-object v4

    .line 321
    new-instance v5, Lcom/android/systemui/dump/DumpsysTableLogger;

    .line 322
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    .line 324
    move-result-object v3

    .line 327
    const-string v4, "Notification Object Usage"

    .line 328
    invoke-direct {v5, v4, v2, v3}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 330
    invoke-virtual {v5, v0}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    .line 333
    const-string v8, "Package"

    .line 336
    const-string v9, "View Type"

    .line 338
    const-string v10, "Small Icon"

    .line 340
    const-string v11, "Large Icon"

    .line 342
    const-string v12, "Style Use"

    .line 344
    const-string v13, "Custom View"

    .line 346
    const-string v14, "Software Bitmaps"

    .line 348
    const-string v15, "Key"

    .line 350
    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    .line 352
    move-result-object v2

    .line 355
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 356
    move-result-object v2

    .line 359
    new-instance v3, Ljava/util/ArrayList;

    .line 360
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 362
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 365
    move-result-object v4

    .line 368
    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    move-result v5

    .line 372
    if-eqz v5, :cond_4

    .line 373
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    move-result-object v5

    .line 378
    move-object v8, v5

    .line 379
    check-cast v8, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    .line 380
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    .line 382
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 384
    move-result v8

    .line 387
    xor-int/2addr v8, v7

    .line 388
    if-eqz v8, :cond_3

    .line 389
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    goto :goto_3

    .line 394
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 395
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 397
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 400
    move-result-object v3

    .line 403
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 404
    move-result v5

    .line 407
    if-eqz v5, :cond_6

    .line 408
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 410
    move-result-object v5

    .line 413
    check-cast v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    .line 414
    iget-object v8, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    .line 416
    new-instance v9, Ljava/util/ArrayList;

    .line 418
    invoke-static {v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 420
    move-result v10

    .line 423
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 424
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 427
    move-result-object v8

    .line 430
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 431
    move-result v10

    .line 434
    if-eqz v10, :cond_5

    .line 435
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 437
    move-result-object v10

    .line 440
    check-cast v10, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 441
    iget-object v11, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->packageName:Ljava/lang/String;

    .line 443
    iget-object v12, v10, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->viewType:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 445
    invoke-virtual {v12}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 447
    move-result-object v12

    .line 450
    iget v13, v10, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->smallIcon:I

    .line 451
    invoke-static {v13}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 453
    move-result-object v13

    .line 456
    iget v14, v10, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->largeIcon:I

    .line 457
    invoke-static {v14}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 459
    move-result-object v14

    .line 462
    iget v15, v10, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->style:I

    .line 463
    invoke-static {v15}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 465
    move-result-object v15

    .line 468
    iget v6, v10, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->customViews:I

    .line 469
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 471
    move-result-object v16

    .line 474
    iget v6, v10, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->softwareBitmapsPenalty:I

    .line 475
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 477
    move-result-object v17

    .line 480
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->notificationKey:Ljava/lang/String;

    .line 481
    invoke-static {v6}, Lkotlin/text/StringsKt__StringsKt;->replace$default(Ljava/lang/String;)Ljava/lang/String;

    .line 483
    move-result-object v18

    .line 486
    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    .line 487
    move-result-object v6

    .line 490
    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 491
    move-result-object v6

    .line 494
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    const/4 v6, 0x0

    .line 498
    goto :goto_5

    .line 499
    :cond_5
    invoke-static {v9, v4}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 500
    const/4 v6, 0x0

    .line 503
    goto :goto_4

    .line 504
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    .line 505
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 507
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 510
    move-result-object v1

    .line 513
    :cond_7
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 514
    move-result v5

    .line 517
    if-eqz v5, :cond_8

    .line 518
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 520
    move-result-object v5

    .line 523
    move-object v6, v5

    .line 524
    check-cast v6, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    .line 525
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    .line 527
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 529
    move-result v6

    .line 532
    xor-int/2addr v6, v7

    .line 533
    if-eqz v6, :cond_7

    .line 534
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    goto :goto_6

    .line 539
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    .line 540
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 542
    move-result v5

    .line 545
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 546
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 549
    move-result-object v3

    .line 552
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 553
    move-result v5

    .line 556
    if-eqz v5, :cond_c

    .line 557
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 559
    move-result-object v5

    .line 562
    check-cast v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    .line 563
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;->viewUsage:Ljava/util/List;

    .line 565
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 567
    move-result-object v5

    .line 570
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 571
    move-result v6

    .line 574
    if-eqz v6, :cond_b

    .line 575
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 577
    move-result-object v6

    .line 580
    move-object v8, v6

    .line 581
    check-cast v8, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 582
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->viewType:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 584
    sget-object v9, Lcom/android/systemui/statusbar/notification/logging/ViewType;->TOTAL:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 586
    if-ne v8, v9, :cond_a

    .line 588
    move v8, v7

    .line 590
    goto :goto_8

    .line 591
    :cond_a
    const/4 v8, 0x0

    .line 592
    :goto_8
    if-eqz v8, :cond_9

    .line 593
    goto :goto_9

    .line 595
    :cond_b
    const/4 v6, 0x0

    .line 596
    :goto_9
    check-cast v6, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 597
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    goto :goto_7

    .line 602
    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    .line 603
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 605
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 608
    move-result-object v1

    .line 611
    :cond_d
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 612
    move-result v5

    .line 615
    if-eqz v5, :cond_e

    .line 616
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 618
    move-result-object v5

    .line 621
    if-eqz v5, :cond_d

    .line 622
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    goto :goto_a

    .line 627
    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 628
    move-result-object v1

    .line 631
    const/4 v3, 0x0

    .line 632
    const/4 v5, 0x0

    .line 633
    const/4 v6, 0x0

    .line 634
    const/4 v7, 0x0

    .line 635
    const/4 v8, 0x0

    .line 636
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 637
    move-result v9

    .line 640
    if-eqz v9, :cond_f

    .line 641
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 643
    move-result-object v9

    .line 646
    check-cast v9, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 647
    iget v10, v9, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->smallIcon:I

    .line 649
    add-int/2addr v6, v10

    .line 651
    iget v10, v9, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->largeIcon:I

    .line 652
    add-int/2addr v3, v10

    .line 654
    iget v10, v9, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->style:I

    .line 655
    add-int/2addr v5, v10

    .line 657
    iget v10, v9, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->customViews:I

    .line 658
    add-int/2addr v7, v10

    .line 660
    iget v9, v9, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->softwareBitmapsPenalty:I

    .line 661
    add-int/2addr v8, v9

    .line 663
    goto :goto_b

    .line 664
    :cond_f
    const-string v9, "TOTALS"

    .line 665
    const-string v10, ""

    .line 667
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 669
    move-result-object v11

    .line 672
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 673
    move-result-object v12

    .line 676
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 677
    move-result-object v13

    .line 680
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 681
    move-result-object v14

    .line 684
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper;->toKb(I)Ljava/lang/String;

    .line 685
    move-result-object v15

    .line 688
    const-string v16, ""

    .line 689
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    .line 691
    move-result-object v1

    .line 694
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 695
    move-result-object v1

    .line 698
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 699
    move-result-object v1

    .line 702
    new-instance v3, Lcom/android/systemui/dump/DumpsysTableLogger;

    .line 703
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    .line 705
    move-result-object v1

    .line 708
    const-string v4, "Notification View Usage"

    .line 709
    invoke-direct {v3, v4, v2, v1}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 711
    invoke-virtual {v3, v0}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    .line 714
    return-void

    .line 717
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 718
.end method
