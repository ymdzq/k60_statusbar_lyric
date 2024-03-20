.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScreenshotController;

.field public final synthetic f$1:Lcom/android/systemui/screenshot/ScreenshotData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotData;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/screenshot/ScreenshotData;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_9

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/screenshot/ScreenshotData;

    .line 11
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mMessageContainerController:Lcom/android/systemui/screenshot/MessageContainerController;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    .line 18
    iget-object v2, v0, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileMessageController:Lcom/android/systemui/screenshot/WorkProfileMessageController;

    .line 20
    iget-object v3, v2, Lcom/android/systemui/screenshot/WorkProfileMessageController;->packageManager:Landroid/content/pm/PackageManager;

    .line 22
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    if-nez v1, :cond_0

    .line 26
    goto/16 :goto_1

    .line 28
    :cond_0
    iget-object v6, v2, Lcom/android/systemui/screenshot/WorkProfileMessageController;->userManager:Landroid/os/UserManager;

    .line 30
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 32
    move-result v7

    .line 35
    invoke-virtual {v6, v7}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 36
    move-result v6

    .line 39
    if-eqz v6, :cond_3

    .line 40
    const-string v6, "com.android.systemui.screenshot"

    .line 42
    iget-object v7, v2, Lcom/android/systemui/screenshot/WorkProfileMessageController;->context:Landroid/content/Context;

    .line 44
    invoke-virtual {v7, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 46
    move-result-object v6

    .line 49
    const-string/jumbo v8, "work_profile_first_run"

    .line 50
    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 53
    move-result v6

    .line 56
    if-nez v6, :cond_3

    .line 57
    const v6, 0x7f1302df    # @string/config_sceenshotWorkProfileFilesApp ''

    .line 59
    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v6

    .line 65
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 66
    move-result-object v6

    .line 69
    const v8, 0x7f130a7f    # @string/screenshot_default_files_app_name 'Files'

    .line 70
    if-nez v6, :cond_1

    .line 73
    new-instance v1, Lcom/android/systemui/screenshot/WorkProfileMessageController$WorkProfileFirstRunData;

    .line 75
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 80
    invoke-direct {v1, v3, v5}, Lcom/android/systemui/screenshot/WorkProfileMessageController$WorkProfileFirstRunData;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 81
    goto :goto_2

    .line 84
    :cond_1
    const-wide/16 v9, 0x0

    .line 85
    :try_start_0
    invoke-static {v9, v10}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    .line 87
    move-result-object v9

    .line 90
    invoke-virtual {v3, v6, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    .line 91
    move-result-object v9

    .line 94
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 95
    move-result-object v10

    .line 98
    invoke-virtual {v3, v10, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 99
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :try_start_1
    invoke-virtual {v9, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 103
    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-object v1, v5

    .line 108
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    const-string v9, "Component "

    .line 111
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const-string v6, " not found"

    .line 119
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 127
    const-string v6, "WorkProfileMessageCtrl"

    .line 128
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    move-object v3, v5

    .line 133
    :goto_0
    new-instance v6, Lcom/android/systemui/screenshot/WorkProfileMessageController$WorkProfileFirstRunData;

    .line 134
    if-nez v3, :cond_2

    .line 136
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 138
    move-result-object v3

    .line 141
    :cond_2
    invoke-direct {v6, v3, v1}, Lcom/android/systemui/screenshot/WorkProfileMessageController$WorkProfileFirstRunData;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 142
    move-object v1, v6

    .line 145
    goto :goto_2

    .line 146
    :cond_3
    :goto_1
    move-object v1, v5

    .line 147
    :goto_2
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 148
    sget-object v6, Lcom/android/systemui/flags/Flags;->SCREENSHOT_DETECTION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 150
    iget-object v7, v0, Lcom/android/systemui/screenshot/MessageContainerController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 152
    check-cast v7, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 154
    invoke-virtual {v7, v6}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 156
    move-result v6

    .line 159
    iget-object v7, v0, Lcom/android/systemui/screenshot/MessageContainerController;->screenshotDetectionController:Lcom/android/systemui/screenshot/ScreenshotDetectionController;

    .line 160
    if-eqz v6, :cond_5

    .line 162
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    const/4 v6, 0x3

    .line 167
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    .line 168
    if-ne p0, v6, :cond_4

    .line 170
    goto :goto_4

    .line 172
    :cond_4
    iget-object p0, v7, Lcom/android/systemui/screenshot/ScreenshotDetectionController;->windowManager:Landroid/view/IWindowManager;

    .line 173
    invoke-interface {p0, v4}, Landroid/view/IWindowManager;->notifyScreenshotListeners(I)Ljava/util/List;

    .line 175
    move-result-object p0

    .line 178
    new-instance v3, Ljava/util/ArrayList;

    .line 179
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 181
    move-result v6

    .line 184
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 188
    move-result-object p0

    .line 191
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    move-result v6

    .line 195
    if-eqz v6, :cond_5

    .line 196
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    move-result-object v6

    .line 201
    check-cast v6, Landroid/content/ComponentName;

    .line 202
    const-wide/16 v8, 0x200

    .line 204
    invoke-static {v8, v9}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    .line 206
    move-result-object v8

    .line 209
    iget-object v9, v7, Lcom/android/systemui/screenshot/ScreenshotDetectionController;->packageManager:Landroid/content/pm/PackageManager;

    .line 210
    invoke-virtual {v9, v6, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    .line 212
    move-result-object v6

    .line 215
    invoke-virtual {v6, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 216
    move-result-object v6

    .line 219
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    goto :goto_3

    .line 223
    :cond_5
    :goto_4
    const/16 p0, 0x8

    .line 224
    if-eqz v1, :cond_a

    .line 226
    iget-object v3, v0, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileFirstRunView:Landroid/view/ViewGroup;

    .line 228
    if-nez v3, :cond_6

    .line 230
    move-object v3, v5

    .line 232
    :cond_6
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 233
    iget-object v3, v0, Lcom/android/systemui/screenshot/MessageContainerController;->detectionNoticeView:Landroid/view/ViewGroup;

    .line 236
    if-nez v3, :cond_7

    .line 238
    move-object v3, v5

    .line 240
    :cond_7
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 241
    iget-object p0, v0, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileFirstRunView:Landroid/view/ViewGroup;

    .line 244
    if-nez p0, :cond_8

    .line 246
    goto :goto_5

    .line 248
    :cond_8
    move-object v5, p0

    .line 249
    :goto_5
    new-instance p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$2;

    .line 250
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$2;-><init>(Lcom/android/systemui/screenshot/MessageContainerController;)V

    .line 252
    iget-object v3, v1, Lcom/android/systemui/screenshot/WorkProfileMessageController$WorkProfileFirstRunData;->icon:Landroid/graphics/drawable/Drawable;

    .line 255
    if-eqz v3, :cond_9

    .line 257
    const v4, 0x7f0a0818    # @id/screenshot_message_icon

    .line 259
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 262
    move-result-object v4

    .line 265
    check-cast v4, Landroid/widget/ImageView;

    .line 266
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :cond_9
    const v3, 0x7f0a0817    # @id/screenshot_message_content

    .line 271
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 274
    move-result-object v3

    .line 277
    check-cast v3, Landroid/widget/TextView;

    .line 278
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 280
    move-result-object v4

    .line 283
    iget-object v1, v1, Lcom/android/systemui/screenshot/WorkProfileMessageController$WorkProfileFirstRunData;->appName:Ljava/lang/CharSequence;

    .line 284
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 286
    move-result-object v1

    .line 289
    const v6, 0x7f130a95    # @string/screenshot_work_profile_notification 'Saved in %1$s in the work profile'

    .line 290
    invoke-virtual {v4, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 293
    move-result-object v1

    .line 296
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const v1, 0x7f0a05af    # @id/message_dismiss_button

    .line 300
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 303
    move-result-object v1

    .line 306
    new-instance v3, Lcom/android/systemui/screenshot/WorkProfileMessageController$populateView$1;

    .line 307
    invoke-direct {v3, p0, v2}, Lcom/android/systemui/screenshot/WorkProfileMessageController$populateView$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/screenshot/WorkProfileMessageController;)V

    .line 309
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-virtual {v0}, Lcom/android/systemui/screenshot/MessageContainerController;->animateInMessageContainer()V

    .line 315
    goto :goto_8

    .line 318
    :cond_a
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 319
    move-result v1

    .line 322
    const/4 v2, 0x1

    .line 323
    xor-int/2addr v1, v2

    .line 324
    if-eqz v1, :cond_f

    .line 325
    iget-object v1, v0, Lcom/android/systemui/screenshot/MessageContainerController;->detectionNoticeView:Landroid/view/ViewGroup;

    .line 327
    if-nez v1, :cond_b

    .line 329
    move-object v1, v5

    .line 331
    :cond_b
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 332
    iget-object v1, v0, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileFirstRunView:Landroid/view/ViewGroup;

    .line 335
    if-nez v1, :cond_c

    .line 337
    move-object v1, v5

    .line 339
    :cond_c
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 340
    iget-object p0, v0, Lcom/android/systemui/screenshot/MessageContainerController;->detectionNoticeView:Landroid/view/ViewGroup;

    .line 343
    if-nez p0, :cond_d

    .line 345
    goto :goto_6

    .line 347
    :cond_d
    move-object v5, p0

    .line 348
    :goto_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 352
    const p0, 0x7f0a0810    # @id/screenshot_detection_notice_text

    .line 355
    invoke-virtual {v5, p0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 358
    move-result-object p0

    .line 361
    check-cast p0, Landroid/widget/TextView;

    .line 362
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 364
    move-result v1

    .line 367
    if-ne v1, v2, :cond_e

    .line 368
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 370
    move-result-object v1

    .line 373
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 374
    move-result-object v2

    .line 377
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 378
    move-result-object v2

    .line 381
    const v3, 0x7f130a81    # @string/screenshot_detected_template '%1$s detected this screenshot.'

    .line 382
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 385
    move-result-object v1

    .line 388
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    goto :goto_7

    .line 392
    :cond_e
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 393
    move-result-object v1

    .line 396
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 397
    move-result-object v2

    .line 400
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 401
    move-result-object v2

    .line 404
    const v3, 0x7f130a80    # @string/screenshot_detected_multiple_template '%1$s and other open apps detected this screenshot.'

    .line 405
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 408
    move-result-object v1

    .line 411
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    :goto_7
    invoke-virtual {v0}, Lcom/android/systemui/screenshot/MessageContainerController;->animateInMessageContainer()V

    .line 415
    :cond_f
    :goto_8
    return-void

    .line 418
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 419
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/screenshot/ScreenshotData;

    .line 421
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    .line 426
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 428
    move-result p0

    .line 431
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mUserManager:Landroid/os/UserManager;

    .line 432
    invoke-virtual {v1, p0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 434
    move-result p0

    .line 437
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    .line 438
    if-eqz p0, :cond_10

    .line 440
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 442
    invoke-virtual {v1}, Landroid/window/WindowContext;->getResources()Landroid/content/res/Resources;

    .line 444
    move-result-object v0

    .line 447
    const v1, 0x7f130a90    # @string/screenshot_saving_work_profile_title 'Saving screenshot to work profile…'

    .line 448
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 451
    move-result-object v0

    .line 454
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 455
    goto :goto_a

    .line 458
    :cond_10
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 459
    invoke-virtual {v1}, Landroid/window/WindowContext;->getResources()Landroid/content/res/Resources;

    .line 461
    move-result-object v0

    .line 464
    const v1, 0x7f130a8f    # @string/screenshot_saving_title 'Saving screenshot…'

    .line 465
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 468
    move-result-object v0

    .line 471
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 472
    :goto_a
    return-void

    .line 475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 476
.end method
