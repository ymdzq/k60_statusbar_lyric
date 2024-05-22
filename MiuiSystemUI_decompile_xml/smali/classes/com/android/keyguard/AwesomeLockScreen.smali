.class public Lcom/android/keyguard/AwesomeLockScreen;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;


# static fields
.field public static final mRootHolder:Lcom/android/keyguard/RootHolder;

.field public static mThemeChanged:I

.field public static sStartTime:J

.field public static sTotalWakenTime:J


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mBarState:I

.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mFaceUnlockCallback:Lcom/android/keyguard/AwesomeLockScreen$3;

.field public final mInitSuccessful:Z

.field public mIsFocus:Z

.field public mIsInteractive:Z

.field public mIsPaused:Z

.field public mKeyguardBouncerShowing:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockscreenView:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

.field public final mMiuiGxzwCallback:Lcom/android/keyguard/AwesomeLockScreen$4;

.field public final mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public mPasswordMode:I

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/AwesomeLockScreen$2;

.field public mWakeStartTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/keyguard/RootHolder;

    .line 2
    invoke-direct {v0}, Lcom/android/keyguard/RootHolder;-><init>()V

    .line 4
    sput-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p3

    .line 6
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8
    const/4 v3, 0x0

    .line 11
    iput-boolean v3, v0, Lcom/android/keyguard/AwesomeLockScreen;->mIsPaused:Z

    .line 12
    const/4 v4, 0x1

    .line 14
    iput-boolean v4, v0, Lcom/android/keyguard/AwesomeLockScreen;->mIsFocus:Z

    .line 15
    iput-boolean v3, v0, Lcom/android/keyguard/AwesomeLockScreen;->mKeyguardBouncerShowing:Z

    .line 17
    new-instance v5, Lcom/android/keyguard/AwesomeLockScreen$2;

    .line 19
    invoke-direct {v5, v0}, Lcom/android/keyguard/AwesomeLockScreen$2;-><init>(Lcom/android/keyguard/AwesomeLockScreen;)V

    .line 21
    iput-object v5, v0, Lcom/android/keyguard/AwesomeLockScreen;->mUpdateMonitorCallback:Lcom/android/keyguard/AwesomeLockScreen$2;

    .line 24
    new-instance v5, Lcom/android/keyguard/AwesomeLockScreen$3;

    .line 26
    invoke-direct {v5}, Lcom/android/keyguard/AwesomeLockScreen$3;-><init>()V

    .line 28
    iput-object v5, v0, Lcom/android/keyguard/AwesomeLockScreen;->mFaceUnlockCallback:Lcom/android/keyguard/AwesomeLockScreen$3;

    .line 31
    new-instance v5, Lcom/android/keyguard/AwesomeLockScreen$4;

    .line 33
    invoke-direct {v5, v0}, Lcom/android/keyguard/AwesomeLockScreen$4;-><init>(Lcom/android/keyguard/AwesomeLockScreen;)V

    .line 35
    iput-object v5, v0, Lcom/android/keyguard/AwesomeLockScreen;->mMiuiGxzwCallback:Lcom/android/keyguard/AwesomeLockScreen$4;

    .line 38
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    .line 40
    invoke-direct {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v5, v0, Lcom/android/keyguard/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 45
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 47
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 50
    const-string v6, "audio"

    .line 53
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    move-result-object v6

    .line 58
    check-cast v6, Landroid/media/AudioManager;

    .line 59
    iput-object v6, v0, Lcom/android/keyguard/AwesomeLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object v6

    .line 66
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 67
    move-result-object v6

    .line 70
    iget-object v6, v6, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/IMiuiConfiguration;

    .line 71
    check-cast v6, Landroid/content/res/MiuiConfiguration;

    .line 73
    iget v6, v6, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 75
    sget v7, Lcom/android/keyguard/AwesomeLockScreen;->mThemeChanged:I

    .line 77
    const/4 v8, 0x0

    .line 79
    if-le v6, v7, :cond_2

    .line 80
    sget-object v7, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 82
    iput-object v8, v7, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 84
    iput-object v8, v7, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 86
    iget-object v9, v7, Lcom/android/keyguard/RootHolder;->mResourceMgr:Lcom/miui/maml/LifecycleResourceManager;

    .line 88
    if-eqz v9, :cond_0

    .line 90
    invoke-virtual {v9, v3}, Lcom/miui/maml/LifecycleResourceManager;->finish(Z)V

    .line 92
    iput-object v8, v7, Lcom/android/keyguard/RootHolder;->mResourceMgr:Lcom/miui/maml/LifecycleResourceManager;

    .line 95
    :cond_0
    iget-object v9, v7, Lcom/android/keyguard/RootHolder;->mTempCachePath:Ljava/lang/String;

    .line 97
    if-eqz v9, :cond_1

    .line 99
    new-instance v9, Ljava/io/File;

    .line 101
    iget-object v7, v7, Lcom/android/keyguard/RootHolder;->mTempCachePath:Ljava/lang/String;

    .line 103
    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 108
    :cond_1
    sput v6, Lcom/android/keyguard/AwesomeLockScreen;->mThemeChanged:I

    .line 111
    :cond_2
    sget-object v6, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 113
    iget-object v7, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 115
    iget-object v9, v6, Lcom/android/keyguard/RootHolder;->mTempCachePath:Ljava/lang/String;

    .line 117
    if-nez v9, :cond_3

    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 126
    move-result-object v10

    .line 129
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    .line 133
    const-string v11, "lockscreen_cache"

    .line 135
    invoke-static {v9, v10, v11}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object v9

    .line 140
    iput-object v9, v6, Lcom/android/keyguard/RootHolder;->mTempCachePath:Ljava/lang/String;

    .line 141
    :cond_3
    iget-object v9, v6, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 143
    const-string v10, "RootHolder"

    .line 145
    if-nez v9, :cond_6

    .line 147
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    .line 149
    move-result-object v9

    .line 152
    invoke-virtual {v9}, Lmiui/content/res/ThemeResourcesSystem;->resetLockscreen()V

    .line 153
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    .line 156
    move-result-object v9

    .line 159
    invoke-virtual {v9}, Lmiui/content/res/ThemeResourcesSystem;->hasSuperWallpaperLockscreen()Z

    .line 160
    move-result v9

    .line 163
    if-eqz v9, :cond_4

    .line 164
    const-string v9, "create SuperWallpaperLockScreenResourceLoader"

    .line 166
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v9, Lcom/android/keyguard/AwesomeLockScreenImp/SuperWallpaperLockScreenResourceLoader;

    .line 171
    invoke-direct {v9}, Lcom/android/keyguard/AwesomeLockScreenImp/SuperWallpaperLockScreenResourceLoader;-><init>()V

    .line 173
    iput-object v9, v6, Lcom/android/keyguard/RootHolder;->mLockScreenResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 176
    goto :goto_0

    .line 178
    :cond_4
    const-string v9, "create LockScreenResourceLoader"

    .line 179
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v9, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenResourceLoader;

    .line 184
    invoke-direct {v9}, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenResourceLoader;-><init>()V

    .line 186
    iput-object v9, v6, Lcom/android/keyguard/RootHolder;->mLockScreenResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 189
    :goto_0
    new-instance v9, Lcom/miui/maml/LifecycleResourceManager;

    .line 191
    iget-object v11, v6, Lcom/android/keyguard/RootHolder;->mLockScreenResourceLoader:Lcom/miui/maml/ResourceLoader;

    .line 193
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 195
    move-result-object v12

    .line 198
    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 199
    move-result-object v12

    .line 202
    iget-object v12, v12, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 203
    invoke-virtual {v11, v12}, Lcom/miui/maml/ResourceLoader;->setLocal(Ljava/util/Locale;)Lcom/miui/maml/ResourceLoader;

    .line 205
    move-result-object v12

    .line 208
    const-wide/32 v13, 0x5265c00

    .line 209
    const-wide/32 v15, 0x36ee80

    .line 212
    move-object v11, v9

    .line 215
    invoke-direct/range {v11 .. v16}, Lcom/miui/maml/LifecycleResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;JJ)V

    .line 216
    iput-object v9, v6, Lcom/android/keyguard/RootHolder;->mResourceMgr:Lcom/miui/maml/LifecycleResourceManager;

    .line 219
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 221
    move-result-object v9

    .line 224
    invoke-virtual {v9}, Ljava/lang/Runtime;->maxMemory()J

    .line 225
    move-result-wide v11

    .line 228
    iget-object v9, v6, Lcom/android/keyguard/RootHolder;->mResourceMgr:Lcom/miui/maml/LifecycleResourceManager;

    .line 229
    long-to-int v11, v11

    .line 231
    div-int/lit8 v11, v11, 0x2

    .line 232
    invoke-virtual {v9, v11}, Lcom/miui/maml/ResourceManager;->setCacheSize(I)V

    .line 234
    new-instance v9, Lcom/miui/maml/ScreenContext;

    .line 237
    iget-object v11, v6, Lcom/android/keyguard/RootHolder;->mResourceMgr:Lcom/miui/maml/LifecycleResourceManager;

    .line 239
    new-instance v12, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenElementFactory;

    .line 241
    invoke-direct {v12}, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenElementFactory;-><init>()V

    .line 243
    invoke-direct {v9, v7, v11, v12}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/ScreenElementFactory;)V

    .line 246
    iput-object v9, v6, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 249
    new-instance v7, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 251
    invoke-direct {v7, v9}, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    .line 253
    iput-object v7, v6, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 256
    const-string v9, "/data/system/theme/config.config"

    .line 258
    invoke-virtual {v7, v9}, Lcom/miui/maml/ScreenElementRoot;->setConfig(Ljava/lang/String;)V

    .line 260
    iget-object v7, v6, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 263
    iget-object v9, v6, Lcom/android/keyguard/RootHolder;->mTempCachePath:Ljava/lang/String;

    .line 265
    invoke-virtual {v7, v9}, Lcom/miui/maml/ScreenElementRoot;->setCacheDir(Ljava/lang/String;)V

    .line 267
    iget-object v7, v6, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 270
    invoke-virtual {v7}, Lcom/miui/maml/ScreenElementRoot;->load()Z

    .line 272
    move-result v7

    .line 275
    if-nez v7, :cond_5

    .line 276
    const-string v7, "fail to load element root"

    .line 278
    invoke-static {v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iput-object v8, v6, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 283
    move v7, v3

    .line 285
    goto :goto_2

    .line 286
    :cond_5
    iget-object v7, v6, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 287
    invoke-virtual {v7, v4}, Lcom/miui/maml/ScreenElementRoot;->setAutoDarkenWallpaper(Z)V

    .line 289
    const-string v7, "create root"

    .line 292
    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    goto :goto_1

    .line 297
    :cond_6
    iget-object v9, v6, Lcom/android/keyguard/RootHolder;->mResourceMgr:Lcom/miui/maml/LifecycleResourceManager;

    .line 298
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 300
    move-result-object v7

    .line 303
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 304
    move-result-object v7

    .line 307
    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 308
    invoke-virtual {v9, v7}, Lcom/miui/maml/ResourceManager;->setLocal(Ljava/util/Locale;)V

    .line 310
    :goto_1
    iget-object v7, v6, Lcom/android/keyguard/RootHolder;->mViewList:Ljava/util/Stack;

    .line 313
    invoke-virtual {v7, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v7, Ljava/lang/StringBuilder;

    .line 318
    const-string v9, "init:"

    .line 320
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    .line 325
    move-result-object v9

    .line 328
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v7

    .line 335
    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    move v7, v4

    .line 339
    :goto_2
    if-nez v7, :cond_7

    .line 340
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 342
    move-result-object v1

    .line 345
    const-string v3, "awesome_lockscreen_init_failed"

    .line 346
    invoke-virtual {v1, v3}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;)V

    .line 348
    const-string v1, "AwesomeLockScreen"

    .line 351
    const-string v3, "fail to init RootHolder"

    .line 353
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    goto/16 :goto_3

    .line 358
    :cond_7
    new-instance v7, Landroid/security/MiuiLockPatternUtils;

    .line 360
    invoke-direct {v7, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 362
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 365
    move-result v1

    .line 368
    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    .line 369
    move-result v1

    .line 372
    if-eqz v1, :cond_8

    .line 373
    invoke-virtual {v7}, Landroid/security/MiuiLockPatternUtils;->getOwnerInfo()Ljava/lang/String;

    .line 375
    move-result-object v8

    .line 378
    :cond_8
    iget-object v1, v6, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 379
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 381
    const-string v5, "owner_info"

    .line 383
    invoke-static {v5, v1, v8}, Lcom/miui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 385
    new-instance v1, Lcom/android/keyguard/HeiHeiGestureView;

    .line 388
    iget-object v5, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 390
    invoke-direct {v1, v5}, Lcom/android/keyguard/HeiHeiGestureView;-><init>(Landroid/content/Context;)V

    .line 392
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 395
    const/4 v7, -0x1

    .line 397
    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 398
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    new-instance v5, Lcom/android/keyguard/AwesomeLockScreen$1;

    .line 404
    invoke-direct {v5, v0}, Lcom/android/keyguard/AwesomeLockScreen$1;-><init>(Lcom/android/keyguard/AwesomeLockScreen;)V

    .line 406
    invoke-virtual {v1, v5}, Lcom/android/keyguard/HeiHeiGestureView;->setOnTriggerListener(Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;)V

    .line 409
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/AwesomeLockScreen;->getPasswordMode()I

    .line 415
    move-result v5

    .line 418
    iput v5, v0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    .line 419
    iget-object v8, v6, Lcom/android/keyguard/RootHolder;->mContext:Lcom/miui/maml/ScreenContext;

    .line 421
    iget-object v8, v8, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 423
    const-string v9, "__password_mode"

    .line 425
    int-to-double v11, v5

    .line 427
    invoke-virtual {v8, v9, v11, v12}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 428
    iget-object v5, v6, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 431
    iput-object v0, v5, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 433
    iget-object v8, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 435
    new-instance v9, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 437
    invoke-direct {v9, v8, v5}, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;-><init>(Landroid/content/Context;Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;)V

    .line 439
    const-string v5, "createView"

    .line 442
    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iput-object v9, v0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 447
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 449
    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 451
    invoke-virtual {v1, v9, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    iput-boolean v4, v0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    .line 457
    sget-wide v4, Lcom/android/keyguard/AwesomeLockScreen;->sStartTime:J

    .line 459
    const-wide/16 v7, 0x0

    .line 461
    cmp-long v1, v4, v7

    .line 463
    const-wide/16 v4, 0x3e8

    .line 465
    if-nez v1, :cond_9

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 469
    move-result-wide v7

    .line 472
    div-long/2addr v7, v4

    .line 473
    sput-wide v7, Lcom/android/keyguard/AwesomeLockScreen;->sStartTime:J

    .line 474
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 476
    move-result-wide v7

    .line 479
    div-long/2addr v7, v4

    .line 480
    iput-wide v7, v0, Lcom/android/keyguard/AwesomeLockScreen;->mWakeStartTime:J

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/AwesomeLockScreen;->updatePauseResumeStatus()V

    .line 483
    iget-object v1, v6, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 486
    iget v4, v0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    .line 488
    if-eqz v4, :cond_a

    .line 490
    const/high16 v3, -0x1000000

    .line 492
    :cond_a
    invoke-virtual {v1, v3}, Lcom/miui/maml/ScreenElementRoot;->setBgColor(I)V

    .line 494
    :goto_3
    move-object/from16 v1, p2

    .line 497
    iput-object v1, v0, Lcom/android/keyguard/AwesomeLockScreen;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 499
    iput-object v2, v0, Lcom/android/keyguard/AwesomeLockScreen;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 501
    iget-object v1, v0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 503
    if-eqz v1, :cond_b

    .line 505
    invoke-virtual {v1, v2}, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->setPanelView(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 507
    :cond_b
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 510
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 512
    move-result-object v1

    .line 515
    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 516
    iput-object v1, v0, Lcom/android/keyguard/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 518
    return-void
    .line 520
.end method


# virtual methods
.method public final disableLockScreenFaceUnlockAnim(Z)V
    .locals 2

    .line 1
    const-class p0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 2
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 8
    check-cast p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 10
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mDisableLockScreenFaceUnlockAnim:Z

    .line 12
    if-eq p1, v0, :cond_1

    .line 14
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mDisableLockScreenFaceUnlockAnim:Z

    .line 16
    const-class p1, Lmiui/stub/MiuiStub$3;

    .line 18
    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 23
    check-cast p1, Lmiui/stub/MiuiStub$3;

    .line 24
    invoke-virtual {p1}, Lmiui/stub/MiuiStub$3;->isPrimaryBouncerIsOrWillBeShowing()Z

    .line 26
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    const/4 p1, 0x0

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceViewList:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v1

    .line 38
    if-ge p1, v1, :cond_1

    .line 39
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 45
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 51
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;->updateFaceUnlockIconStatus()V

    .line 55
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 58
    goto :goto_0

    .line 60
    :cond_1
    return-void
    .line 61
.end method

.method public getPasswordMode()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    .line 8
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_0
    const/high16 v0, 0x20000

    .line 16
    if-eq p0, v0, :cond_2

    .line 18
    const/high16 v0, 0x30000

    .line 20
    if-ne p0, v0, :cond_1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    const/16 p0, 0xa

    .line 25
    return p0

    .line 27
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 28
    return p0
    .line 29
.end method

.method public final isSoundEnable()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 8
    move-result v1

    .line 11
    const-string v2, "lockscreen_sounds_enabled"

    .line 12
    const/4 v3, 0x1

    .line 14
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 15
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    move v0, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 25
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    .line 27
    move-result p0

    .line 30
    const/4 v2, 0x2

    .line 31
    if-ne p0, v2, :cond_1

    .line 32
    if-eqz v0, :cond_1

    .line 34
    goto :goto_1

    .line 36
    :cond_1
    move v3, v1

    .line 37
    :goto_1
    return v3
    .line 38
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mUpdateMonitorCallback:Lcom/android/keyguard/AwesomeLockScreen$2;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 16
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mMiuiGxzwCallback:Lcom/android/keyguard/AwesomeLockScreen$4;

    .line 20
    invoke-interface {v0, v1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->registerCallback(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwCallback;)V

    .line 22
    :cond_0
    const-class v0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 25
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 31
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mFaceUnlockCallback:Lcom/android/keyguard/AwesomeLockScreen$3;

    .line 33
    check-cast v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 35
    invoke-virtual {v0, p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->registerFaceUnlockCallback(Lcom/miui/interfaces/keyguard/FaceUnlockCallback;)V

    .line 37
    return-void
    .line 40
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    return-void
    .line 5
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mUpdateMonitorCallback:Lcom/android/keyguard/AwesomeLockScreen$2;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 9
    iget-object v1, v0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 11
    if-nez v1, :cond_0

    .line 13
    goto :goto_1

    .line 15
    :cond_0
    iget-object v1, v0, Lcom/android/keyguard/RootHolder;->mViewList:Ljava/util/Stack;

    .line 16
    invoke-virtual {v1, p0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 18
    iget-boolean v2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    .line 21
    if-nez v2, :cond_1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 26
    invoke-virtual {v2}, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->finishRoot()V

    .line 28
    iget-object v2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 31
    invoke-virtual {v2}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    .line 33
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    const-string v3, "cleanUp: "

    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v3, " size:"

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    .line 55
    move-result v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 65
    const-string v3, "RootHolder"

    .line 66
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    .line 71
    move-result v2

    .line 74
    if-nez v2, :cond_2

    .line 75
    iget-object v1, v0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 77
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 79
    move-result-object v1

    .line 82
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 83
    invoke-virtual {v1}, Lcom/miui/maml/data/Variables;->reset()V

    .line 85
    const/4 v1, 0x0

    .line 88
    iput-object v1, v0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 89
    const-string v0, "cleanUp finish"

    .line 91
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 100
    check-cast v1, Lcom/android/keyguard/AwesomeLockScreen;

    .line 101
    iget-boolean v2, v1, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    .line 103
    if-nez v2, :cond_3

    .line 105
    goto :goto_1

    .line 107
    :cond_3
    iget-object v0, v0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 108
    iput-object v1, v0, Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;->mLockscreenCallback:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;

    .line 110
    iget-object v0, v1, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 112
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->init()V

    .line 114
    :goto_1
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 117
    move-result-object v0

    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-interface {v0, v1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->disableLockScreenFodAnim(Z)V

    .line 122
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 125
    move-result-object v0

    .line 128
    invoke-interface {v0, v1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->disableLockScreenFod(Z)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/android/keyguard/AwesomeLockScreen;->disableLockScreenFaceUnlockAnim(Z)V

    .line 132
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 135
    if-eqz v0, :cond_4

    .line 137
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 139
    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mMiuiGxzwCallback:Lcom/android/keyguard/AwesomeLockScreen$4;

    .line 143
    invoke-interface {v0, v1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->removeCallback(Lcom/android/keyguard/AwesomeLockScreen$4;)V

    .line 145
    :cond_4
    const-class v0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 148
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    move-result-object v0

    .line 153
    check-cast v0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 154
    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mFaceUnlockCallback:Lcom/android/keyguard/AwesomeLockScreen$3;

    .line 156
    check-cast v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 158
    invoke-virtual {v0, v1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->removeFaceUnlockCallback(Lcom/miui/interfaces/keyguard/FaceUnlockCallback;)V

    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 163
    return-void
    .line 166
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 6
    const/4 p1, 0x0

    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZ)V

    .line 11
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    move-result p0

    .line 19
    return p0
    .line 20
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mIsFocus:Z

    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/AwesomeLockScreen;->updatePauseResumeStatus()V

    .line 7
    return-void
    .line 10
.end method

.method public setBarState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mBarState:I

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/AwesomeLockScreen;->updatePauseResumeStatus()V

    .line 4
    return-void
    .line 7
.end method

.method public setHidden(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setIsInteractive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mIsInteractive:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/AwesomeLockScreen;->updatePauseResumeStatus()V

    .line 4
    return-void
    .line 7
.end method

.method public final unlocked(Landroid/content/Intent;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "miui.intent.action.TRACK_EVENT"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, "eventId"

    .line 9
    const-string v2, "lockscreen_intent_type"

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    if-nez p1, :cond_0

    .line 16
    const-string p1, ""

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 24
    :goto_0
    const-string v1, "eventObj"

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    new-instance p1, Lcom/android/keyguard/AwesomeLockScreen$5;

    .line 30
    invoke-direct {p1, p0}, Lcom/android/keyguard/AwesomeLockScreen$5;-><init>(Lcom/android/keyguard/AwesomeLockScreen;)V

    .line 32
    int-to-long v0, p2

    .line 35
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    sget-wide p0, Lcom/android/keyguard/AwesomeLockScreen;->sTotalWakenTime:J

    .line 39
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    move-result-object p0

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    move-result-wide p1

    .line 48
    const-wide/16 v0, 0x3e8

    .line 49
    div-long/2addr p1, v0

    .line 51
    sget-wide v0, Lcom/android/keyguard/AwesomeLockScreen;->sStartTime:J

    .line 52
    sub-long/2addr p1, v0

    .line 54
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    move-result-object p1

    .line 58
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 62
    const-string p1, "lockscreen awake time: [%d sec] in time range: [%d sec]"

    .line 63
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    const-string p1, "AwesomeLockScreen"

    .line 69
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
    .line 74
.end method

.method public final updatePauseResumeStatus()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mIsFocus:Z

    .line 7
    const-wide/16 v1, 0x3e8

    .line 9
    const/4 v3, 0x1

    .line 11
    const-string v4, "AwesomeLockScreen"

    .line 12
    if-eqz v0, :cond_4

    .line 14
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mIsInteractive:Z

    .line 16
    if-eqz v0, :cond_4

    .line 18
    iget v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mBarState:I

    .line 20
    if-eq v0, v3, :cond_1

    .line 22
    const/4 v5, 0x2

    .line 24
    if-ne v0, v5, :cond_4

    .line 25
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mKeyguardBouncerShowing:Z

    .line 27
    if-nez v0, :cond_4

    .line 29
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mIsPaused:Z

    .line 31
    if-nez v0, :cond_2

    .line 33
    goto :goto_0

    .line 35
    :cond_2
    const-string v0, "onResume"

    .line 36
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mIsPaused:Z

    .line 42
    sget-object v3, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 44
    iget-object v4, v3, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 46
    if-eqz v4, :cond_3

    .line 48
    invoke-virtual {v4}, Lcom/miui/maml/ScreenElementRoot;->loadConfig()V

    .line 50
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 53
    iput-boolean v0, v4, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mPaused:Z

    .line 55
    invoke-virtual {v4}, Lcom/miui/maml/component/MamlView;->onResume()V

    .line 57
    iget-object v0, v3, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 60
    const-string/jumbo v3, "resume"

    .line 62
    invoke-virtual {v0, v3}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    move-result-wide v3

    .line 71
    div-long/2addr v3, v1

    .line 72
    iput-wide v3, p0, Lcom/android/keyguard/AwesomeLockScreen;->mWakeStartTime:J

    .line 73
    goto :goto_0

    .line 75
    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mIsPaused:Z

    .line 76
    if-eqz v0, :cond_5

    .line 78
    goto :goto_0

    .line 80
    :cond_5
    const-string v0, "onPause"

    .line 81
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-boolean v3, p0, Lcom/android/keyguard/AwesomeLockScreen;->mIsPaused:Z

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 88
    iput-boolean v3, v0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mPaused:Z

    .line 90
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlView;->onPause()V

    .line 92
    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    .line 95
    iget-object v0, v0, Lcom/android/keyguard/RootHolder;->mRoot:Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;

    .line 97
    const-string v3, "pause"

    .line 99
    invoke-virtual {v0, v3}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    move-result-wide v3

    .line 107
    div-long/2addr v3, v1

    .line 108
    iget-wide v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mWakeStartTime:J

    .line 109
    sub-long/2addr v3, v0

    .line 111
    sget-wide v0, Lcom/android/keyguard/AwesomeLockScreen;->sTotalWakenTime:J

    .line 112
    add-long/2addr v0, v3

    .line 114
    sput-wide v0, Lcom/android/keyguard/AwesomeLockScreen;->sTotalWakenTime:J

    .line 115
    :goto_0
    return-void
    .line 117
.end method
