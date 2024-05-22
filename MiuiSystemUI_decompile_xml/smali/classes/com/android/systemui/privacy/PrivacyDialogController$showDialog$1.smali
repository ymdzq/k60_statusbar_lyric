.class public final Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyDialogController;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->$context:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 4
    iget-object v2, v1, Lcom/android/systemui/privacy/PrivacyDialogController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 6
    check-cast v2, Lcom/android/systemui/appops/AppOpsControllerImpl;

    .line 8
    iget-boolean v2, v2, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    .line 10
    iget-object v1, v1, Lcom/android/systemui/privacy/PrivacyDialogController;->permissionManager:Landroid/permission/PermissionManager;

    .line 12
    invoke-virtual {v1, v2}, Landroid/permission/PermissionManager;->getIndicatorAppOpUsageData(Z)Ljava/util/List;

    .line 14
    move-result-object v1

    .line 17
    iget-object v2, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 18
    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyDialogController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 20
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 22
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 24
    move-result-object v2

    .line 27
    iget-object v3, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 28
    iget-object v3, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 30
    invoke-virtual {v3, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logUnfilteredPermGroupUsage(Ljava/util/List;)V

    .line 32
    iget-object v3, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v1

    .line 45
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v5

    .line 49
    if-eqz v5, :cond_19

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v5

    .line 55
    check-cast v5, Landroid/permission/PermissionGroupUsage;

    .line 56
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    .line 58
    move-result-object v6

    .line 61
    const-string v7, "com.mediatek.ims"

    .line 62
    invoke-static {v7, v6}, Lkotlin/text/StringsKt__StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    move-result v6

    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v8, 0x1

    .line 69
    if-nez v6, :cond_2

    .line 70
    const-string v6, "org.codeaurora.ims"

    .line 72
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    .line 74
    move-result-object v9

    .line 77
    invoke-static {v6, v9}, Lkotlin/text/StringsKt__StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    move-result v6

    .line 81
    if-eqz v6, :cond_1

    .line 82
    goto :goto_1

    .line 84
    :cond_1
    move v6, v7

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    :goto_1
    move v6, v8

    .line 87
    :goto_2
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPermissionGroupName()Ljava/lang/String;

    .line 88
    move-result-object v9

    .line 91
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 95
    move-result v10

    .line 98
    sget-object v11, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    .line 99
    sget-object v12, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    .line 101
    sget-object v13, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    .line 103
    const v15, -0x440149cd

    .line 105
    if-eq v10, v15, :cond_7

    .line 108
    const v15, 0x31640343

    .line 110
    if-eq v10, v15, :cond_5

    .line 113
    const v15, 0x5e404d38

    .line 115
    if-eq v10, v15, :cond_3

    .line 118
    goto :goto_3

    .line 120
    :cond_3
    const-string v10, "android.permission-group.MICROPHONE"

    .line 121
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v9

    .line 126
    if-nez v9, :cond_4

    .line 127
    goto :goto_3

    .line 129
    :cond_4
    move-object v9, v11

    .line 130
    goto :goto_4

    .line 131
    :cond_5
    const-string v10, "android.permission-group.LOCATION"

    .line 132
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result v9

    .line 137
    if-nez v9, :cond_6

    .line 138
    goto :goto_3

    .line 140
    :cond_6
    move-object v9, v12

    .line 141
    goto :goto_4

    .line 142
    :cond_7
    const-string v10, "android.permission-group.CAMERA"

    .line 143
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v9

    .line 148
    if-eqz v9, :cond_8

    .line 149
    move-object v9, v13

    .line 151
    goto :goto_4

    .line 152
    :cond_8
    :goto_3
    const/4 v9, 0x0

    .line 153
    :goto_4
    if-eqz v9, :cond_c

    .line 154
    iget-object v10, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 156
    if-eq v9, v13, :cond_9

    .line 158
    if-ne v9, v11, :cond_a

    .line 160
    :cond_9
    iget-object v11, v10, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 162
    iget-boolean v11, v11, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    .line 164
    if-eqz v11, :cond_a

    .line 166
    goto :goto_5

    .line 168
    :cond_a
    if-ne v9, v12, :cond_b

    .line 169
    iget-object v10, v10, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 171
    iget-boolean v10, v10, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    .line 173
    if-eqz v10, :cond_b

    .line 175
    goto :goto_5

    .line 177
    :cond_b
    const/4 v9, 0x0

    .line 178
    :goto_5
    move-object/from16 v16, v9

    .line 179
    goto :goto_6

    .line 181
    :cond_c
    const/16 v16, 0x0

    .line 182
    :goto_6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 184
    move-result-object v9

    .line 187
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    move-result v10

    .line 191
    if-eqz v10, :cond_f

    .line 192
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    move-result-object v10

    .line 197
    move-object v11, v10

    .line 198
    check-cast v11, Landroid/content/pm/UserInfo;

    .line 199
    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    .line 201
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getUid()I

    .line 203
    move-result v12

    .line 206
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    .line 207
    move-result v12

    .line 210
    if-ne v11, v12, :cond_e

    .line 211
    move v11, v8

    .line 213
    goto :goto_7

    .line 214
    :cond_e
    move v11, v7

    .line 215
    :goto_7
    if-eqz v11, :cond_d

    .line 216
    goto :goto_8

    .line 218
    :cond_f
    const/4 v10, 0x0

    .line 219
    :goto_8
    check-cast v10, Landroid/content/pm/UserInfo;

    .line 220
    if-nez v10, :cond_10

    .line 222
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->isPhoneCall()Z

    .line 224
    move-result v9

    .line 227
    if-eqz v9, :cond_18

    .line 228
    :cond_10
    if-eqz v16, :cond_18

    .line 230
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->isPhoneCall()Z

    .line 232
    move-result v9

    .line 235
    const-string v11, "PrivacyDialogController"

    .line 236
    iget-object v12, v3, Lcom/android/systemui/privacy/PrivacyDialogController;->packageManager:Landroid/content/pm/PackageManager;

    .line 238
    if-nez v9, :cond_12

    .line 240
    if-eqz v6, :cond_11

    .line 242
    goto :goto_9

    .line 244
    :cond_11
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    .line 245
    move-result-object v9

    .line 248
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getUid()I

    .line 249
    move-result v13

    .line 252
    :try_start_0
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    .line 253
    move-result v13

    .line 256
    invoke-virtual {v12, v9, v7, v13}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 257
    move-result-object v13

    .line 260
    invoke-virtual {v13, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 261
    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_a

    .line 265
    :catch_0
    const-string v13, "Label not found for: "

    .line 266
    invoke-virtual {v13, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    move-result-object v13

    .line 271
    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    goto :goto_a

    .line 275
    :cond_12
    :goto_9
    const-string v9, ""

    .line 276
    :goto_a
    move-object/from16 v19, v9

    .line 278
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getUid()I

    .line 280
    move-result v9

    .line 283
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 284
    move-result v18

    .line 287
    new-instance v9, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 288
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    .line 290
    move-result-object v17

    .line 293
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getAttributionTag()Ljava/lang/CharSequence;

    .line 294
    move-result-object v20

    .line 297
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getAttributionLabel()Ljava/lang/CharSequence;

    .line 298
    move-result-object v21

    .line 301
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getProxyLabel()Ljava/lang/CharSequence;

    .line 302
    move-result-object v22

    .line 305
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getLastAccessTimeMillis()J

    .line 306
    move-result-wide v23

    .line 309
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->isActive()Z

    .line 310
    move-result v25

    .line 313
    if-eqz v10, :cond_13

    .line 314
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 316
    move-result v10

    .line 319
    move/from16 v26, v10

    .line 320
    goto :goto_b

    .line 322
    :cond_13
    move/from16 v26, v7

    .line 323
    :goto_b
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->isPhoneCall()Z

    .line 325
    move-result v10

    .line 328
    if-nez v10, :cond_15

    .line 329
    if-eqz v6, :cond_14

    .line 331
    goto :goto_c

    .line 333
    :cond_14
    move/from16 v27, v7

    .line 334
    goto :goto_d

    .line 336
    :cond_15
    :goto_c
    move/from16 v27, v8

    .line 337
    :goto_d
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPermissionGroupName()Ljava/lang/String;

    .line 339
    move-result-object v28

    .line 342
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    .line 343
    move-result-object v6

    .line 346
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPermissionGroupName()Ljava/lang/String;

    .line 347
    move-result-object v10

    .line 350
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getAttributionTag()Ljava/lang/CharSequence;

    .line 351
    move-result-object v13

    .line 354
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getAttributionLabel()Ljava/lang/CharSequence;

    .line 355
    move-result-object v15

    .line 358
    if-eqz v15, :cond_16

    .line 359
    move v15, v8

    .line 361
    goto :goto_e

    .line 362
    :cond_16
    move v15, v7

    .line 363
    :goto_e
    if-eqz v13, :cond_17

    .line 364
    if-eqz v15, :cond_17

    .line 366
    new-instance v15, Landroid/content/Intent;

    .line 368
    const-string v14, "android.intent.action.MANAGE_PERMISSION_USAGE"

    .line 370
    invoke-direct {v15, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v15, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v14, "android.intent.extra.PERMISSION_GROUP_NAME"

    .line 378
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 380
    move-result-object v10

    .line 383
    invoke-virtual {v15, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 387
    move-result-object v10

    .line 390
    filled-new-array {v10}, [Ljava/lang/String;

    .line 391
    move-result-object v10

    .line 394
    const-string v13, "android.intent.extra.ATTRIBUTION_TAGS"

    .line 395
    invoke-virtual {v15, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v10, "android.intent.extra.SHOWING_ATTRIBUTION"

    .line 400
    invoke-virtual {v15, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 402
    const-wide/16 v13, 0x0

    .line 405
    invoke-static {v13, v14}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 407
    move-result-object v8

    .line 410
    invoke-virtual {v12, v15, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    .line 411
    move-result-object v8

    .line 414
    if-eqz v8, :cond_17

    .line 415
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 417
    if-eqz v10, :cond_17

    .line 419
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 421
    const-string v13, "android.permission.START_VIEW_PERMISSION_USAGE"

    .line 423
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 425
    move-result v10

    .line 428
    if-eqz v10, :cond_17

    .line 429
    new-instance v10, Landroid/content/ComponentName;

    .line 431
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 433
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 435
    invoke-direct {v10, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v15, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 440
    move-object v8, v15

    .line 443
    goto :goto_f

    .line 444
    :cond_17
    new-instance v8, Landroid/content/Intent;

    .line 445
    const-string v10, "android.intent.action.MANAGE_APP_PERMISSIONS"

    .line 447
    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    const-string v10, "android.intent.extra.PACKAGE_NAME"

    .line 452
    invoke-virtual {v8, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v6, "android.intent.extra.USER"

    .line 457
    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 459
    move-result-object v10

    .line 462
    invoke-virtual {v8, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 463
    :goto_f
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    .line 466
    move-result-object v6

    .line 469
    invoke-virtual {v5}, Landroid/permission/PermissionGroupUsage;->getUid()I

    .line 470
    move-result v5

    .line 473
    :try_start_1
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 474
    move-result v5

    .line 477
    invoke-virtual {v12, v6, v7, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 478
    move-result-object v5

    .line 481
    invoke-virtual {v5, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 482
    move-result-object v14
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 485
    move-object/from16 v30, v14

    .line 486
    goto :goto_10

    .line 488
    :catch_1
    const-string v5, "Icon not found for: "

    .line 489
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 491
    move-result-object v5

    .line 494
    invoke-static {v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/16 v30, 0x0

    .line 498
    :goto_10
    move-object v15, v9

    .line 500
    move-object/from16 v29, v8

    .line 501
    invoke-direct/range {v15 .. v30}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;-><init>(Lcom/android/systemui/privacy/PrivacyType;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JZZZLjava/lang/CharSequence;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;)V

    .line 503
    move-object v14, v9

    .line 506
    goto :goto_11

    .line 507
    :cond_18
    const/4 v14, 0x0

    .line 508
    :goto_11
    if-eqz v14, :cond_0

    .line 509
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    goto/16 :goto_0

    .line 514
    :cond_19
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 516
    iget-object v2, v1, Lcom/android/systemui/privacy/PrivacyDialogController;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 518
    new-instance v3, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;

    .line 520
    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->$context:Landroid/content/Context;

    .line 522
    invoke-direct {v3, v1, v4, v0}, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;Ljava/util/List;Landroid/content/Context;)V

    .line 524
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 527
    return-void
    .line 530
.end method
