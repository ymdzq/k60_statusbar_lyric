.class public final synthetic Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_b

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 11
    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 13
    return-void

    .line 16
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 17
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v1

    .line 24
    const v2, 0x7f0500b2    # @bool/support_round_corner 'true'

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 28
    move-result v1

    .line 31
    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mSupportRoundCorner:Z

    .line 32
    const-class v1, Landroid/view/WindowManager;

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Landroid/view/WindowManager;

    .line 40
    iput-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 42
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 50
    iput-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 54
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    .line 58
    move-result v1

    .line 61
    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 68
    move-result-object v1

    .line 71
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 72
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 78
    move-result v2

    .line 81
    iput v2, p0, Lcom/android/systemui/ScreenDecorations;->mScreenWidth:I

    .line 82
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 84
    move-result v1

    .line 87
    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mScreenHeight:I

    .line 88
    new-instance v1, Lcom/miui/utils/OverlayManagerWrapper;

    .line 90
    invoke-direct {v1}, Lcom/miui/utils/OverlayManagerWrapper;-><init>()V

    .line 92
    iput-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlayManager:Lcom/miui/utils/OverlayManagerWrapper;

    .line 95
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mShellTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    .line 97
    invoke-interface {v1, p0}, Lcom/android/wm/shell/transition/ShellTransitions;->registerTransitionObserver(Lcom/android/systemui/ScreenDecorations;)V

    .line 99
    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    .line 102
    const/4 v2, 0x0

    .line 104
    const/4 v3, 0x1

    .line 105
    const/4 v4, 0x0

    .line 106
    if-eqz v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlayManager:Lcom/miui/utils/OverlayManagerWrapper;

    .line 109
    if-eqz v1, :cond_2

    .line 111
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mCurrentUserId:I

    .line 113
    iget-object v1, v1, Lcom/miui/utils/OverlayManagerWrapper;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 115
    const-string v6, "com.android.systemui.notch.overlay"

    .line 117
    if-eqz v1, :cond_0

    .line 119
    :try_start_0
    invoke-interface {v1, v6, v5}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    .line 121
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    .line 127
    const-string v8, "isOverlayEnable: getOverlayInfo fail. overlay = com.android.systemui.notch.overlay, userId = "

    .line 129
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v5

    .line 140
    const-string v7, "OverlayManagerWrapper"

    .line 141
    invoke-static {v7, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :cond_0
    move-object v1, v2

    .line 146
    :goto_0
    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    .line 149
    move-result v1

    .line 152
    if-eqz v1, :cond_1

    .line 153
    move v1, v3

    .line 155
    goto :goto_1

    .line 156
    :cond_1
    move v1, v4

    .line 157
    :goto_1
    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlayManager:Lcom/miui/utils/OverlayManagerWrapper;

    .line 160
    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mCurrentUserId:I

    .line 162
    invoke-virtual {v1, v5, v6}, Lcom/miui/utils/OverlayManagerWrapper;->setEnabled(ILjava/lang/String;)V

    .line 164
    :cond_2
    new-instance v1, Lcom/android/systemui/ScreenDecorations$2;

    .line 167
    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 169
    invoke-direct {v1, p0, v5}, Lcom/android/systemui/ScreenDecorations$2;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/os/Handler;)V

    .line 171
    iput-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mForceBlackObserver:Lcom/android/systemui/ScreenDecorations$2;

    .line 174
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 176
    move-result-object v1

    .line 179
    const-string v5, "force_black"

    .line 180
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 182
    move-result-object v5

    .line 185
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mForceBlackObserver:Lcom/android/systemui/ScreenDecorations$2;

    .line 186
    const/4 v7, -0x1

    .line 188
    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mForceBlackObserver:Lcom/android/systemui/ScreenDecorations$2;

    .line 192
    invoke-virtual {v1, v4}, Lcom/android/systemui/ScreenDecorations$2;->onChange(Z)V

    .line 194
    :cond_3
    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 197
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 199
    move-result-object v1

    .line 202
    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 203
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 205
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 207
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mSupportRoundCorner:Z

    .line 210
    const/4 v5, 0x4

    .line 212
    if-eqz v1, :cond_d

    .line 213
    move v1, v4

    .line 215
    :goto_2
    if-ge v1, v5, :cond_12

    .line 216
    iget-boolean v6, p0, Lcom/android/systemui/ScreenDecorations;->mSupportRoundCorner:Z

    .line 218
    if-nez v6, :cond_4

    .line 220
    goto :goto_3

    .line 222
    :cond_4
    if-eq v1, v3, :cond_6

    .line 223
    const/4 v6, 0x3

    .line 225
    if-ne v1, v6, :cond_5

    .line 226
    goto :goto_4

    .line 228
    :cond_5
    :goto_3
    move v6, v4

    .line 229
    goto :goto_5

    .line 230
    :cond_6
    :goto_4
    move v6, v3

    .line 231
    :goto_5
    if-eqz v6, :cond_a

    .line 232
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 234
    if-nez v6, :cond_7

    .line 236
    new-array v6, v5, [Landroid/view/View;

    .line 238
    iput-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 240
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 242
    aget-object v7, v6, v1

    .line 244
    if-eqz v7, :cond_8

    .line 246
    goto :goto_6

    .line 248
    :cond_8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 249
    move-result-object v7

    .line 252
    const v8, 0x7f0d01d5    # @layout/miui_round_corner 'res/layout/miui_round_corner.xml'

    .line 253
    invoke-virtual {v7, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 256
    move-result-object v7

    .line 259
    aput-object v7, v6, v1

    .line 260
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 262
    aget-object v6, v6, v1

    .line 264
    instance-of v7, v6, Lcom/android/systemui/statusbar/views/MiuiRoundCornerContainer;

    .line 266
    if-eqz v7, :cond_9

    .line 268
    check-cast v6, Lcom/android/systemui/statusbar/views/MiuiRoundCornerContainer;

    .line 270
    invoke-virtual {v6, p0}, Lcom/android/systemui/statusbar/views/MiuiRoundCornerContainer;->setController(Lcom/android/systemui/ScreenDecorations;)V

    .line 272
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 275
    aget-object v6, v6, v1

    .line 277
    const/16 v7, 0x100

    .line 279
    invoke-virtual {v6, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 281
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 284
    aget-object v6, v6, v1

    .line 286
    invoke-virtual {v6, v4}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 288
    invoke-virtual {p0, v1}, Lcom/android/systemui/ScreenDecorations;->updateView(I)V

    .line 291
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 294
    iget-object v7, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 296
    aget-object v7, v7, v1

    .line 298
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    .line 300
    move-result-object v8

    .line 303
    invoke-interface {v6, v7, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    goto :goto_6

    .line 307
    :cond_a
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 308
    if-eqz v6, :cond_c

    .line 310
    aget-object v6, v6, v1

    .line 312
    if-nez v6, :cond_b

    .line 314
    goto :goto_6

    .line 316
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 317
    invoke-interface {v7, v6}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 319
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 322
    aput-object v2, v6, v1

    .line 324
    :cond_c
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 326
    goto :goto_2

    .line 328
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 329
    if-nez v1, :cond_e

    .line 331
    goto :goto_9

    .line 333
    :cond_e
    move v1, v4

    .line 334
    :goto_7
    if-ge v1, v5, :cond_11

    .line 335
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 337
    aget-object v7, v6, v1

    .line 339
    if-eqz v7, :cond_10

    .line 341
    if-eqz v6, :cond_10

    .line 343
    if-nez v7, :cond_f

    .line 345
    goto :goto_8

    .line 347
    :cond_f
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 348
    invoke-interface {v6, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 350
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 353
    aput-object v2, v6, v1

    .line 355
    :cond_10
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 357
    goto :goto_7

    .line 359
    :cond_11
    iput-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    .line 360
    :cond_12
    :goto_9
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hasOverlays()Z

    .line 362
    move-result v1

    .line 365
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mUserSwitchIntentReceiver:Lcom/android/systemui/ScreenDecorations$5;

    .line 366
    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 368
    if-eqz v1, :cond_15

    .line 370
    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    .line 372
    if-eqz v1, :cond_13

    .line 374
    goto :goto_a

    .line 376
    :cond_13
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 377
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 379
    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 382
    invoke-virtual {v5, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 384
    move-result-object v5

    .line 387
    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 388
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$3;

    .line 391
    if-nez v1, :cond_14

    .line 393
    new-instance v1, Lcom/android/systemui/ScreenDecorations$3;

    .line 395
    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 397
    iget v7, p0, Lcom/android/systemui/ScreenDecorations;->mCurrentUserId:I

    .line 399
    iget-object v8, p0, Lcom/android/systemui/ScreenDecorations;->mSecureSetting:Lcom/android/systemui/util/settings/SecureSettings;

    .line 401
    invoke-direct {v1, p0, v8, v5, v7}, Lcom/android/systemui/ScreenDecorations$3;-><init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;I)V

    .line 403
    iput-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$3;

    .line 406
    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 408
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$3;

    .line 411
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/SettingObserver;->onChange(Z)V

    .line 413
    :cond_14
    new-instance v1, Landroid/content/IntentFilter;

    .line 416
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 418
    const-string v5, "android.intent.action.USER_SWITCHED"

    .line 421
    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    new-instance v5, Landroid/os/HandlerExecutor;

    .line 426
    iget-object v7, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 428
    invoke-direct {v5, v7}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 430
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 433
    invoke-virtual {v6, v2, v1, v5, v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 435
    iput-boolean v3, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    .line 438
    goto :goto_a

    .line 440
    :cond_15
    new-instance v1, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;

    .line 441
    invoke-direct {v1, p0, v5}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    .line 443
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mMainHandler:Landroid/os/Handler;

    .line 446
    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$3;

    .line 451
    if-eqz v1, :cond_16

    .line 453
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 455
    :cond_16
    invoke-virtual {v6, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 458
    iput-boolean v4, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    .line 461
    :goto_a
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->setupForceBlackTopView()V

    .line 463
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 466
    move-result-object v0

    .line 469
    const v1, 0x7f050020    # @bool/config_enableDisplayCutoutProtection 'false'

    .line 470
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->mayConfigChange()V

    .line 476
    new-instance p0, Lcom/miui/utils/OverlayManagerWrapper;

    .line 479
    invoke-direct {p0}, Lcom/miui/utils/OverlayManagerWrapper;-><init>()V

    .line 481
    const-string v0, "com.android.internal.display.cutout.emulation.corner"

    .line 484
    invoke-virtual {p0, v4, v0}, Lcom/miui/utils/OverlayManagerWrapper;->setEnabled(ILjava/lang/String;)V

    .line 486
    const-string v0, "com.android.internal.display.cutout.emulation.double"

    .line 489
    invoke-virtual {p0, v4, v0}, Lcom/miui/utils/OverlayManagerWrapper;->setEnabled(ILjava/lang/String;)V

    .line 491
    const-string v0, "com.android.internal.display.cutout.emulation.waterfall"

    .line 494
    invoke-virtual {p0, v4, v0}, Lcom/miui/utils/OverlayManagerWrapper;->setEnabled(ILjava/lang/String;)V

    .line 496
    const-string v0, "com.android.internal.display.cutout.emulation.hole"

    .line 499
    invoke-virtual {p0, v4, v0}, Lcom/miui/utils/OverlayManagerWrapper;->setEnabled(ILjava/lang/String;)V

    .line 501
    const-string v0, "com.android.internal.display.cutout.emulation.tall"

    .line 504
    invoke-virtual {p0, v4, v0}, Lcom/miui/utils/OverlayManagerWrapper;->setEnabled(ILjava/lang/String;)V

    .line 506
    return-void

    .line 509
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 510
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->mayConfigChange()V

    .line 512
    return-void

    .line 515
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 516
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateTransparentParams()V

    .line 518
    return-void

    .line 521
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 522
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->mayConfigChange()V

    .line 524
    return-void

    .line 527
    :goto_b
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ScreenDecorations;

    .line 528
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateTransparentParams()V

    .line 530
    return-void

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 534
.end method
