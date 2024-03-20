.class public final Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    const/16 v0, 0xa

    .line 4
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq p1, v0, :cond_4

    .line 8
    const/16 v0, 0xb

    .line 10
    if-eq p1, v0, :cond_0

    .line 12
    goto/16 :goto_b

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 16
    iget-object p1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    .line 18
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->hide()V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 23
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    .line 27
    if-eqz v0, :cond_1

    .line 29
    iget-object v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 31
    if-eqz v3, :cond_1

    .line 33
    iget-object v3, v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiuiType:[I

    .line 35
    if-eqz v3, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    move-object v3, v1

    .line 40
    :goto_0
    if-eqz v0, :cond_2

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 43
    if-eqz p0, :cond_2

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mHomeRemoteViews:Landroid/widget/RemoteViews;

    .line 47
    if-eqz p0, :cond_2

    .line 49
    goto :goto_1

    .line 51
    :cond_2
    move-object p0, v1

    .line 52
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    if-nez v3, :cond_3

    .line 56
    if-nez p0, :cond_3

    .line 58
    iput v2, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLastMiuiPromptInfo:I

    .line 60
    iput-object v1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 62
    goto/16 :goto_b

    .line 64
    :cond_3
    invoke-virtual {p1, p0, v3}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->updateLastMiuiPromptInfo(Landroid/widget/RemoteViews;[I)V

    .line 66
    goto/16 :goto_b

    .line 69
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 71
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    .line 75
    if-eqz v0, :cond_5

    .line 77
    iget-object v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 79
    if-eqz v3, :cond_5

    .line 81
    iget v3, v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mDotColor:I

    .line 83
    goto :goto_2

    .line 85
    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mDefaultColor:I

    .line 86
    :goto_2
    if-eqz v0, :cond_6

    .line 88
    iget-object v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 90
    if-eqz v4, :cond_6

    .line 92
    iget-object v4, v4, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mHomeRemoteViews:Landroid/widget/RemoteViews;

    .line 94
    if-eqz v4, :cond_6

    .line 96
    goto :goto_3

    .line 98
    :cond_6
    move-object v4, v1

    .line 99
    :goto_3
    if-eqz v0, :cond_7

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    .line 102
    if-eqz p0, :cond_7

    .line 104
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiuiType:[I

    .line 106
    if-eqz p0, :cond_7

    .line 108
    goto :goto_4

    .line 110
    :cond_7
    move-object p0, v1

    .line 111
    :goto_4
    iget-object v0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mWindowManager:Landroid/view/WindowManager;

    .line 112
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 114
    move-result-object v5

    .line 117
    const-string v6, "MiuiPrivacyFlaresDotController"

    .line 118
    if-eqz v5, :cond_10

    .line 120
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 122
    move-result-object v5

    .line 125
    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    .line 126
    move-result v5

    .line 129
    if-eqz v5, :cond_8

    .line 130
    goto/16 :goto_a

    .line 132
    :cond_8
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 134
    move-result-object v3

    .line 137
    iget-object v5, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mCapsuleParent:Landroid/widget/ImageView;

    .line 138
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 140
    const/4 v3, 0x1

    .line 143
    iget-object v7, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    .line 144
    const/16 v8, 0x8

    .line 146
    iget-object v9, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyContainer:Landroid/widget/FrameLayout;

    .line 148
    if-eqz v4, :cond_c

    .line 150
    if-nez p0, :cond_9

    .line 152
    goto/16 :goto_7

    .line 154
    :cond_9
    :try_start_0
    invoke-virtual {v4, v7, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 156
    move-result-object v10

    .line 159
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    move-result-object v11

    .line 163
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    move-result-object v12

    .line 167
    const v13, 0x7f0710d8    # @dimen/status_bar_home_privacy_icon_height '22.0dp'

    .line 168
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 171
    move-result v12

    .line 174
    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-virtual {v10, v3}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 180
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 183
    move-result-object v3

    .line 186
    const v11, 0x7f0710d9    # @dimen/status_bar_home_prompt_min_width '22.0dp'

    .line 187
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 190
    move-result v3

    .line 193
    invoke-virtual {v10, v3}, Landroid/view/View;->setMinimumWidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    move-object v1, v10

    .line 197
    goto :goto_5

    .line 198
    :catch_0
    move-exception v3

    .line 199
    const-string/jumbo v10, "updateMiuiPrivacyPrompt: something wrong "

    .line 200
    invoke-static {v6, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    :goto_5
    invoke-virtual {p1, v4, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->updateLastMiuiPromptInfo(Landroid/widget/RemoteViews;[I)V

    .line 206
    iget-object p0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->runnable:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda0;

    .line 209
    iget-object v3, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mHandler:Landroid/os/Handler;

    .line 211
    if-eqz v1, :cond_b

    .line 213
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsNewMiuiPromptInfo:Z

    .line 215
    if-eqz v4, :cond_b

    .line 217
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 219
    const/4 v6, -0x1

    .line 221
    const/4 v10, -0x2

    .line 222
    invoke-direct {v4, v10, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 223
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 226
    invoke-virtual {v9, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 232
    move-result v1

    .line 235
    if-nez v1, :cond_a

    .line 236
    goto/16 :goto_6

    .line 238
    :cond_a
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 243
    iget-object v1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyContainerFolme:Lmiuix/animation/IFolme;

    .line 246
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 248
    move-result-object v1

    .line 251
    new-instance v4, Lmiuix/animation/controller/AnimState;

    .line 252
    const-string v5, "new_privacy"

    .line 254
    invoke-direct {v4, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 256
    sget-object v6, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 259
    const-wide/16 v8, 0x0

    .line 261
    invoke-virtual {v4, v6, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 263
    move-result-object v4

    .line 266
    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 267
    move-result-object v1

    .line 270
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 271
    invoke-static {v5, v6, v11, v12}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 273
    move-result-object v4

    .line 276
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 277
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 279
    const/4 v6, 0x2

    .line 282
    new-array v11, v6, [F

    .line 283
    fill-array-data v11, :array_0

    .line 285
    invoke-virtual {v5, v10, v11}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 288
    move-result-object v10

    .line 291
    int-to-long v11, v2

    .line 292
    invoke-virtual {v10, v11, v12}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 293
    filled-new-array {v5}, [Lmiuix/animation/base/AnimConfig;

    .line 296
    move-result-object v5

    .line 299
    invoke-interface {v1, v4, v5}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 300
    iget-object v1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyContainerFolme:Lmiuix/animation/IFolme;

    .line 303
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 305
    move-result-object v1

    .line 308
    new-instance v4, Lmiuix/animation/controller/AnimState;

    .line 309
    const-string v5, "privacy_container"

    .line 311
    invoke-direct {v4, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 313
    sget-object v10, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 316
    invoke-virtual {v4, v10, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 318
    move-result-object v4

    .line 321
    sget-object v13, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 322
    invoke-virtual {v4, v13, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 324
    move-result-object v4

    .line 327
    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 328
    move-result-object v1

    .line 331
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 332
    invoke-static {v5, v10, v8, v9}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    .line 334
    move-result-object v4

    .line 337
    invoke-virtual {v4, v13, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 338
    move-result-object v4

    .line 341
    new-instance v5, Lmiuix/animation/base/AnimConfig;

    .line 342
    invoke-direct {v5}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 344
    new-array v6, v6, [F

    .line 347
    fill-array-data v6, :array_1

    .line 349
    const/4 v8, -0x2

    .line 352
    invoke-virtual {v5, v8, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 353
    move-result-object v6

    .line 356
    invoke-virtual {v6, v11, v12}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 357
    filled-new-array {v5}, [Lmiuix/animation/base/AnimConfig;

    .line 360
    move-result-object v5

    .line 363
    invoke-interface {v1, v4, v5}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 364
    :goto_6
    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    const-wide/16 v4, 0xbb8

    .line 370
    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    goto :goto_8

    .line 375
    :cond_b
    if-nez v1, :cond_d

    .line 376
    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->showPrivacyDot()V

    .line 381
    goto :goto_8

    .line 384
    :cond_c
    :goto_7
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 388
    :cond_d
    :goto_8
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    .line 391
    if-nez p0, :cond_f

    .line 393
    iget-object p0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mResources:Landroid/content/res/Resources;

    .line 395
    const v1, 0x10502bd    # @android:dimen/text_size_menu_header_material

    .line 397
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 400
    move-result p0

    .line 403
    iput p0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    .line 404
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    .line 406
    const/4 v9, -0x2

    .line 408
    iget v10, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    .line 409
    const/16 v11, 0x7e1

    .line 411
    const v12, -0x5e7fffd8

    .line 413
    const/4 v13, -0x3

    .line 416
    move-object v8, p0

    .line 417
    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 418
    iput-object p0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 421
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 423
    const/high16 v3, 0x21000000

    .line 425
    or-int/2addr v1, v3

    .line 427
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 428
    new-instance v1, Landroid/os/Binder;

    .line 430
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 432
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 435
    iget-object p0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 437
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isRTL()Z

    .line 439
    move-result v1

    .line 442
    if-eqz v1, :cond_e

    .line 443
    const v1, 0x800003

    .line 445
    goto :goto_9

    .line 448
    :cond_e
    const v1, 0x800005

    .line 449
    :goto_9
    or-int/lit8 v1, v1, 0x30

    .line 452
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 454
    iget-object p0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 456
    invoke-virtual {p0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 458
    iget-object p0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 461
    const-string v1, "FlaresView"

    .line 463
    invoke-virtual {p0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 465
    iget-object p0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 468
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 470
    move-result-object v1

    .line 473
    iput-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 474
    iget-object p0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 476
    const/4 v1, 0x3

    .line 478
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 479
    iget-object v1, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotView:Landroid/view/ViewGroup;

    .line 481
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    iget-object p0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 486
    iget-object v0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 488
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 490
    :cond_f
    const/4 p0, 0x1

    .line 493
    iput-boolean p0, p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    .line 494
    goto :goto_b

    .line 496
    :cond_10
    :goto_a
    const-string p0, "possible crash by display id error"

    .line 497
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :goto_b
    return-void

    .line 502
    nop

    .line 503
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data

    .line 504
    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3eb33333    # 0.35f
    .end array-data
    .line 512
.end method
