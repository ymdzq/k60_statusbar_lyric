.class final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 6
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 10
    move-result v4

    .line 13
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 14
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 16
    move-result-object v1

    .line 19
    new-instance v2, Ljava/util/HashSet;

    .line 20
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 22
    iget-object v5, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 25
    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 27
    move-result-object v6

    .line 30
    invoke-static {v6, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    .line 31
    move-result v8

    .line 34
    invoke-virtual {v1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 35
    move-result-object v6

    .line 38
    invoke-static {v6, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    .line 39
    move-result v9

    .line 42
    const-string v6, "android.largeIcon.big"

    .line 43
    invoke-static {v5, v6, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    .line 45
    move-result v6

    .line 48
    const-string v7, "android.picture"

    .line 49
    invoke-static {v5, v7, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    .line 51
    move-result v7

    .line 54
    const-string v10, "android.pictureIcon"

    .line 55
    invoke-static {v5, v10, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    .line 57
    move-result v10

    .line 60
    add-int v13, v10, v7

    .line 61
    const-string v7, "android.people.list"

    .line 63
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 65
    move-result-object v7

    .line 68
    const/16 v16, 0x0

    .line 69
    if-eqz v7, :cond_0

    .line 71
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object v7

    .line 76
    move/from16 v10, v16

    .line 77
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v11

    .line 82
    if-eqz v11, :cond_1

    .line 83
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v11

    .line 88
    check-cast v11, Landroid/app/Person;

    .line 89
    invoke-virtual {v11}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    .line 91
    move-result-object v11

    .line 94
    invoke-static {v11, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    .line 95
    move-result v11

    .line 98
    add-int/2addr v10, v11

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move/from16 v10, v16

    .line 101
    :cond_1
    const-string v7, "android.callPerson"

    .line 103
    invoke-static {v5, v7, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    .line 105
    move-result v7

    .line 108
    const-string v11, "android.verificationIcon"

    .line 109
    invoke-static {v5, v11, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    .line 111
    move-result v11

    .line 114
    const-string v12, "android.messages"

    .line 115
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 117
    move-result-object v12

    .line 120
    invoke-static {v12}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    .line 121
    move-result-object v12

    .line 124
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object v12

    .line 128
    move/from16 v14, v16

    .line 129
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    move-result v15

    .line 134
    const/16 v17, 0x0

    .line 135
    if-eqz v15, :cond_3

    .line 137
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    move-result-object v15

    .line 142
    check-cast v15, Landroid/app/Notification$MessagingStyle$Message;

    .line 143
    invoke-virtual {v15}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    .line 145
    move-result-object v15

    .line 148
    if-eqz v15, :cond_2

    .line 149
    invoke-virtual {v15}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    .line 151
    move-result-object v17

    .line 154
    :cond_2
    move-object/from16 v15, v17

    .line 155
    invoke-static {v15, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    .line 157
    move-result v15

    .line 160
    add-int/2addr v14, v15

    .line 161
    goto :goto_1

    .line 162
    :cond_3
    const-string v12, "android.messages.historic"

    .line 163
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 165
    move-result-object v12

    .line 168
    invoke-static {v12}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    .line 169
    move-result-object v12

    .line 172
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 173
    move-result-object v12

    .line 176
    move/from16 v15, v16

    .line 177
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    move-result v18

    .line 182
    if-eqz v18, :cond_5

    .line 183
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    move-result-object v18

    .line 188
    check-cast v18, Landroid/app/Notification$MessagingStyle$Message;

    .line 189
    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    .line 191
    move-result-object v18

    .line 194
    if-eqz v18, :cond_4

    .line 195
    invoke-virtual/range {v18 .. v18}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    .line 197
    move-result-object v18

    .line 200
    move-object/from16 p0, v12

    .line 201
    move-object/from16 v12, v18

    .line 203
    goto :goto_3

    .line 205
    :cond_4
    move-object/from16 p0, v12

    .line 206
    move-object/from16 v12, v17

    .line 208
    :goto_3
    invoke-static {v12, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeIconUse(Landroid/graphics/drawable/Icon;Ljava/util/HashSet;)I

    .line 210
    move-result v12

    .line 213
    add-int/2addr v15, v12

    .line 214
    move-object/from16 v12, p0

    .line 215
    goto :goto_2

    .line 217
    :cond_5
    const-string v12, "android.car.EXTENSIONS"

    .line 218
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 220
    move-result-object v12

    .line 223
    if-eqz v12, :cond_6

    .line 224
    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBundleSize(Landroid/os/Bundle;)I

    .line 226
    move-result v18

    .line 229
    move/from16 p0, v4

    .line 230
    goto :goto_4

    .line 232
    :cond_6
    move/from16 p0, v4

    .line 233
    move/from16 v18, v16

    .line 235
    :goto_4
    const-string v4, "large_icon"

    .line 237
    invoke-static {v12, v4, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    .line 239
    move-result v4

    .line 242
    const-string v12, "android.tv.EXTENSIONS"

    .line 243
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 245
    move-result-object v12

    .line 248
    if-eqz v12, :cond_7

    .line 249
    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBundleSize(Landroid/os/Bundle;)I

    .line 251
    move-result v12

    .line 254
    move-object/from16 p1, v3

    .line 255
    goto :goto_5

    .line 257
    :cond_7
    move-object/from16 p1, v3

    .line 258
    move/from16 v12, v16

    .line 260
    :goto_5
    const-string v3, "android.wearable.EXTENSIONS"

    .line 262
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 264
    move-result-object v3

    .line 267
    if-eqz v3, :cond_8

    .line 268
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBundleSize(Landroid/os/Bundle;)I

    .line 270
    move-result v19

    .line 273
    move-object/from16 v20, v0

    .line 274
    goto :goto_6

    .line 276
    :cond_8
    move-object/from16 v20, v0

    .line 277
    move/from16 v19, v16

    .line 279
    :goto_6
    const-string v0, "background"

    .line 281
    invoke-static {v3, v0, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeParcelableUse(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/HashSet;)I

    .line 283
    move-result v0

    .line 286
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 287
    move-result-object v2

    .line 290
    const-string v3, "ranker_group"

    .line 291
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    move-result v2

    .line 296
    const/16 v21, 0x5

    .line 297
    const/16 v22, 0x2

    .line 299
    if-eqz v2, :cond_9

    .line 301
    const/16 v2, 0x8

    .line 303
    goto/16 :goto_8

    .line 305
    :cond_9
    invoke-virtual {v1}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    .line 307
    move-result-object v2

    .line 310
    if-eqz v2, :cond_a

    .line 311
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 313
    move-result-object v2

    .line 316
    goto :goto_7

    .line 317
    :cond_a
    move-object/from16 v2, v17

    .line 318
    :goto_7
    if-nez v2, :cond_b

    .line 320
    move/from16 v2, v16

    .line 322
    goto/16 :goto_8

    .line 324
    :cond_b
    const-class v23, Landroid/app/Notification$BigTextStyle;

    .line 326
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 328
    move-result-object v3

    .line 331
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 332
    move-result v3

    .line 335
    if-eqz v3, :cond_c

    .line 336
    move/from16 v2, v22

    .line 338
    goto :goto_8

    .line 340
    :cond_c
    const-class v3, Landroid/app/Notification$BigPictureStyle;

    .line 341
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 343
    move-result-object v3

    .line 346
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 347
    move-result v3

    .line 350
    if-eqz v3, :cond_d

    .line 351
    const/4 v2, 0x1

    .line 353
    goto :goto_8

    .line 354
    :cond_d
    const-class v3, Landroid/app/Notification$InboxStyle;

    .line 355
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 357
    move-result-object v3

    .line 360
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 361
    move-result v3

    .line 364
    if-eqz v3, :cond_e

    .line 365
    move/from16 v2, v21

    .line 367
    goto :goto_8

    .line 369
    :cond_e
    const-class v3, Landroid/app/Notification$MediaStyle;

    .line 370
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 372
    move-result-object v3

    .line 375
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 376
    move-result v3

    .line 379
    if-eqz v3, :cond_f

    .line 380
    const/4 v2, 0x6

    .line 382
    goto :goto_8

    .line 383
    :cond_f
    const-class v3, Landroid/app/Notification$DecoratedCustomViewStyle;

    .line 384
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 386
    move-result-object v3

    .line 389
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 390
    move-result v3

    .line 393
    if-eqz v3, :cond_10

    .line 394
    const/4 v2, 0x4

    .line 396
    goto :goto_8

    .line 397
    :cond_10
    const-class v3, Landroid/app/Notification$MessagingStyle;

    .line 398
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 400
    move-result-object v3

    .line 403
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 404
    move-result v3

    .line 407
    if-eqz v3, :cond_11

    .line 408
    const/4 v2, 0x7

    .line 410
    goto :goto_8

    .line 411
    :cond_11
    const-class v3, Landroid/app/Notification$CallStyle;

    .line 412
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 414
    move-result-object v3

    .line 417
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 418
    move-result v2

    .line 421
    if-eqz v2, :cond_12

    .line 422
    const/4 v2, 0x3

    .line 424
    goto :goto_8

    .line 425
    :cond_12
    const/16 v2, -0x3e8

    .line 426
    :goto_8
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 428
    if-nez v3, :cond_14

    .line 430
    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 432
    if-eqz v1, :cond_13

    .line 434
    goto :goto_9

    .line 436
    :cond_13
    move/from16 v1, v16

    .line 437
    goto :goto_a

    .line 439
    :cond_14
    :goto_9
    const/4 v1, 0x1

    .line 440
    :goto_a
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter;->computeBundleSize(Landroid/os/Bundle;)I

    .line 441
    move-result v3

    .line 444
    new-instance v23, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;

    .line 445
    add-int/2addr v6, v10

    .line 447
    add-int/2addr v6, v7

    .line 448
    add-int/2addr v6, v11

    .line 449
    add-int/2addr v6, v14

    .line 450
    add-int v5, v6, v15

    .line 451
    add-int v18, v18, v4

    .line 453
    add-int v18, v18, v12

    .line 455
    add-int v18, v18, v19

    .line 457
    add-int v14, v18, v0

    .line 459
    move-object/from16 v7, v23

    .line 461
    move v10, v3

    .line 463
    move v11, v2

    .line 464
    move v12, v5

    .line 465
    move v15, v1

    .line 466
    invoke-direct/range {v7 .. v15}, Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;-><init>(IIIIIIIZ)V

    .line 467
    move-object/from16 v0, v20

    .line 470
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 472
    if-nez v1, :cond_15

    .line 474
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 476
    move-object v8, v1

    .line 478
    goto/16 :goto_18

    .line 479
    :cond_15
    const/4 v2, 0x4

    .line 481
    new-array v3, v2, [Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 482
    sget-object v2, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PRIVATE_EXPANDED_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 484
    const/4 v4, 0x1

    .line 486
    new-array v5, v4, [Landroid/view/View;

    .line 487
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 489
    move-result-object v6

    .line 492
    if-eqz v6, :cond_16

    .line 493
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    .line 495
    move-result-object v6

    .line 498
    goto :goto_b

    .line 499
    :cond_16
    move-object/from16 v6, v17

    .line 500
    :goto_b
    aput-object v6, v5, v16

    .line 502
    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage$default(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 504
    move-result-object v2

    .line 507
    aput-object v2, v3, v16

    .line 508
    sget-object v2, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PRIVATE_CONTRACTED_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 510
    new-array v5, v4, [Landroid/view/View;

    .line 512
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 514
    move-result-object v6

    .line 517
    if-eqz v6, :cond_17

    .line 518
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    .line 520
    move-result-object v6

    .line 523
    goto :goto_c

    .line 524
    :cond_17
    move-object/from16 v6, v17

    .line 525
    :goto_c
    aput-object v6, v5, v16

    .line 527
    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage$default(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 529
    move-result-object v2

    .line 532
    aput-object v2, v3, v4

    .line 533
    sget-object v2, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PRIVATE_HEADS_UP_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 535
    new-array v5, v4, [Landroid/view/View;

    .line 537
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 539
    move-result-object v4

    .line 542
    if-eqz v4, :cond_18

    .line 543
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    .line 545
    move-result-object v4

    .line 548
    goto :goto_d

    .line 549
    :cond_18
    move-object/from16 v4, v17

    .line 550
    :goto_d
    aput-object v4, v5, v16

    .line 552
    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage$default(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 554
    move-result-object v2

    .line 557
    aput-object v2, v3, v22

    .line 558
    sget-object v2, Lcom/android/systemui/statusbar/notification/logging/ViewType;->PUBLIC_VIEW:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 560
    const/4 v4, 0x3

    .line 562
    new-array v5, v4, [Landroid/view/View;

    .line 563
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 565
    move-result-object v4

    .line 568
    if-eqz v4, :cond_19

    .line 569
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    .line 571
    move-result-object v4

    .line 574
    goto :goto_e

    .line 575
    :cond_19
    move-object/from16 v4, v17

    .line 576
    :goto_e
    aput-object v4, v5, v16

    .line 578
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 580
    move-result-object v4

    .line 583
    if-eqz v4, :cond_1a

    .line 584
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    .line 586
    move-result-object v4

    .line 589
    goto :goto_f

    .line 590
    :cond_1a
    move-object/from16 v4, v17

    .line 591
    :goto_f
    const/4 v6, 0x1

    .line 593
    aput-object v4, v5, v6

    .line 594
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 596
    move-result-object v4

    .line 599
    if-eqz v4, :cond_1b

    .line 600
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    .line 602
    move-result-object v4

    .line 605
    goto :goto_10

    .line 606
    :cond_1b
    move-object/from16 v4, v17

    .line 607
    :goto_10
    aput-object v4, v5, v22

    .line 609
    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage$default(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 611
    move-result-object v2

    .line 614
    const/4 v4, 0x3

    .line 615
    aput-object v2, v3, v4

    .line 616
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 618
    move-result-object v2

    .line 621
    new-instance v3, Ljava/util/ArrayList;

    .line 622
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 624
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 627
    move-result-object v2

    .line 630
    :cond_1c
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 631
    move-result v4

    .line 634
    if-eqz v4, :cond_1d

    .line 635
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 637
    move-result-object v4

    .line 640
    if-eqz v4, :cond_1c

    .line 641
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    goto :goto_11

    .line 646
    :cond_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 647
    move-result v2

    .line 650
    const/4 v4, 0x1

    .line 651
    xor-int/2addr v2, v4

    .line 652
    if-eqz v2, :cond_25

    .line 653
    new-instance v2, Ljava/util/HashSet;

    .line 655
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 657
    sget-object v4, Lcom/android/systemui/statusbar/notification/logging/ViewType;->TOTAL:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    .line 660
    const/4 v5, 0x6

    .line 662
    new-array v5, v5, [Landroid/view/View;

    .line 663
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 665
    move-result-object v6

    .line 668
    if-eqz v6, :cond_1e

    .line 669
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    .line 671
    move-result-object v6

    .line 674
    goto :goto_12

    .line 675
    :cond_1e
    move-object/from16 v6, v17

    .line 676
    :goto_12
    aput-object v6, v5, v16

    .line 678
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 680
    move-result-object v6

    .line 683
    if-eqz v6, :cond_1f

    .line 684
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    .line 686
    move-result-object v6

    .line 689
    goto :goto_13

    .line 690
    :cond_1f
    move-object/from16 v6, v17

    .line 691
    :goto_13
    const/4 v7, 0x1

    .line 693
    aput-object v6, v5, v7

    .line 694
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 696
    move-result-object v6

    .line 699
    if-eqz v6, :cond_20

    .line 700
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    .line 702
    move-result-object v6

    .line 705
    goto :goto_14

    .line 706
    :cond_20
    move-object/from16 v6, v17

    .line 707
    :goto_14
    aput-object v6, v5, v22

    .line 709
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 711
    move-result-object v6

    .line 714
    if-eqz v6, :cond_21

    .line 715
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    .line 717
    move-result-object v6

    .line 720
    goto :goto_15

    .line 721
    :cond_21
    move-object/from16 v6, v17

    .line 722
    :goto_15
    const/4 v7, 0x3

    .line 724
    aput-object v6, v5, v7

    .line 725
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 727
    move-result-object v6

    .line 730
    if-eqz v6, :cond_22

    .line 731
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    .line 733
    move-result-object v6

    .line 736
    goto :goto_16

    .line 737
    :cond_22
    move-object/from16 v6, v17

    .line 738
    :goto_16
    const/4 v7, 0x4

    .line 740
    aput-object v6, v5, v7

    .line 741
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 743
    move-result-object v1

    .line 746
    if-eqz v1, :cond_23

    .line 747
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    .line 749
    move-result-object v17

    .line 752
    :cond_23
    aput-object v17, v5, v21

    .line 753
    invoke-static {v4, v5, v2}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryViewWalker;->getViewUsage(Lcom/android/systemui/statusbar/notification/logging/ViewType;[Landroid/view/View;Ljava/util/HashSet;)Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    .line 755
    move-result-object v1

    .line 758
    if-nez v1, :cond_24

    .line 759
    goto :goto_17

    .line 761
    :cond_24
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    .line 762
    move-result-object v3

    .line 765
    goto :goto_17

    .line 766
    :cond_25
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 767
    :goto_17
    move-object v8, v3

    .line 769
    :goto_18
    new-instance v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;

    .line 770
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 772
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 774
    move-result-object v2

    .line 777
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Ljava/lang/String;)Ljava/lang/String;

    .line 778
    move-result-object v5

    .line 781
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 782
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 784
    move-result-object v6

    .line 787
    move-object v2, v1

    .line 788
    move-object/from16 v3, p1

    .line 789
    move/from16 v4, p0

    .line 791
    move-object/from16 v7, v23

    .line 793
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryUsage;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;Lcom/android/systemui/statusbar/notification/logging/NotificationObjectUsage;Ljava/util/List;)V

    .line 795
    return-object v1
    .line 798
.end method
