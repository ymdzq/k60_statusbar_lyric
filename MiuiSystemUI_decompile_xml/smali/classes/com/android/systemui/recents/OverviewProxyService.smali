.class public final Lcom/android/systemui/recents/OverviewProxyService;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field static final ACTION_QUICKSTEP:Ljava/lang/String; = "android.intent.action.QUICKSTEP_SERVICE"


# instance fields
.field public mActiveNavBarRegion:Landroid/graphics/Region;

.field public mBound:Z

.field public final mCentralSurfacesOptionalLazy:Ldagger/Lazy;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public mConnectionBackoffAttempts:I

.field public final mConnectionCallbacks:Ljava/util/List;

.field public final mConnectionRunnable:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBoundedUserId:I

.field public final mDeferredConnectionCallback:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

.field public mDisabledFlags:I

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mHandler:Landroid/os/Handler;

.field public mInputFocusTransferStartMillis:J

.field public mInputFocusTransferStartY:F

.field public mInputFocusTransferStarted:Z

.field public mIsEnabled:Z

.field public mLatchForOnUserChanging:Ljava/util/concurrent/CountDownLatch;

.field public final mLauncherStateChangedReceiver:Lcom/android/systemui/recents/OverviewProxyService$2;

.field public mMiuiSysUiProxy:Lcom/android/systemui/recents/MiuiOverviewProxy;

.field public final mNavBarControllerLazy:Ldagger/Lazy;

.field public mNavBarMode:I

.field public mNavigationBarSurface:Landroid/view/SurfaceControl;

.field public mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

.field public final mOverviewServiceConnection:Lcom/android/systemui/recents/OverviewProxyService$3;

.field public final mOverviewServiceDeathRcpt:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda2;

.field public final mQuickStepIntent:Landroid/content/Intent;

.field public final mRecentsComponentName:Landroid/content/ComponentName;

.field public final mScreenLifecycleObserver:Lcom/android/systemui/recents/OverviewProxyService$7;

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public final mShellInterface:Lcom/android/wm/shell/sysui/ShellInterface;

.field public final mStatusBarWinController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

.field public final mSupportsRoundedCornersOnWindows:Z

.field public mSyncDisableFlag:Z

.field public mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public final mSysuiUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUnfoldTransitionProgressForwarder:Ljava/util/Optional;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVoiceInteractionSessionListener:Lcom/android/systemui/recents/OverviewProxyService$4;

.field public final mWakefulnessLifecycleObserver:Lcom/android/systemui/recents/OverviewProxyService$8;

.field public final mWindowCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/wm/shell/sysui/ShellInterface;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/dump/DumpManager;Ljava/util/Optional;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p3

    .line 6
    move-object/from16 v3, p8

    .line 8
    move-object/from16 v4, p9

    .line 10
    move-object/from16 v5, p10

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v6, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    .line 17
    const/4 v7, 0x0

    .line 19
    invoke-direct {v6, v0, v7}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService;I)V

    .line 20
    iput-object v6, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    .line 23
    new-instance v6, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iput-object v6, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    .line 30
    const/4 v6, -0x1

    .line 32
    iput v6, v0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    .line 33
    iput v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 35
    new-instance v6, Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 37
    invoke-direct {v6, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 39
    iput-object v6, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 42
    new-instance v6, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    .line 44
    const/4 v8, 0x1

    .line 46
    invoke-direct {v6, v0, v8}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService;I)V

    .line 47
    iput-object v6, v0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    .line 50
    new-instance v6, Lcom/android/systemui/recents/OverviewProxyService$2;

    .line 52
    invoke-direct {v6, v0}, Lcom/android/systemui/recents/OverviewProxyService$2;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 54
    iput-object v6, v0, Lcom/android/systemui/recents/OverviewProxyService;->mLauncherStateChangedReceiver:Lcom/android/systemui/recents/OverviewProxyService$2;

    .line 57
    new-instance v8, Lcom/android/systemui/recents/OverviewProxyService$3;

    .line 59
    invoke-direct {v8, v0}, Lcom/android/systemui/recents/OverviewProxyService$3;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 61
    iput-object v8, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Lcom/android/systemui/recents/OverviewProxyService$3;

    .line 64
    new-instance v8, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda1;

    .line 66
    invoke-direct {v8, v0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 68
    iput-object v8, v0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    .line 71
    new-instance v9, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda2;

    .line 73
    invoke-direct {v9, v0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 75
    iput-object v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda2;

    .line 78
    new-instance v9, Lcom/android/systemui/recents/OverviewProxyService$4;

    .line 80
    invoke-direct {v9, v0}, Lcom/android/systemui/recents/OverviewProxyService$4;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 82
    iput-object v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mVoiceInteractionSessionListener:Lcom/android/systemui/recents/OverviewProxyService$4;

    .line 85
    new-instance v10, Lcom/android/systemui/recents/OverviewProxyService$5;

    .line 87
    invoke-direct {v10, v0}, Lcom/android/systemui/recents/OverviewProxyService$5;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 89
    iput-object v10, v0, Lcom/android/systemui/recents/OverviewProxyService;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 92
    new-instance v11, Lcom/android/systemui/recents/OverviewProxyService$7;

    .line 94
    invoke-direct {v11, v0}, Lcom/android/systemui/recents/OverviewProxyService$7;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 96
    iput-object v11, v0, Lcom/android/systemui/recents/OverviewProxyService;->mScreenLifecycleObserver:Lcom/android/systemui/recents/OverviewProxyService$7;

    .line 99
    new-instance v12, Lcom/android/systemui/recents/OverviewProxyService$8;

    .line 101
    invoke-direct {v12, v0}, Lcom/android/systemui/recents/OverviewProxyService$8;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 103
    iput-object v12, v0, Lcom/android/systemui/recents/OverviewProxyService;->mWakefulnessLifecycleObserver:Lcom/android/systemui/recents/OverviewProxyService$8;

    .line 106
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 108
    move-result-object v13

    .line 111
    sget-object v14, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 112
    invoke-virtual {v13, v14}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v13

    .line 117
    const-string v14, "OverviewProxyService"

    .line 118
    if-nez v13, :cond_0

    .line 120
    new-instance v13, Ljava/lang/Throwable;

    .line 122
    invoke-direct {v13}, Ljava/lang/Throwable;-><init>()V

    .line 124
    const-string v15, "Unexpected initialization for non-primary user"

    .line 127
    invoke-static {v14, v15, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :cond_0
    iput-object v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 132
    move-object/from16 v13, p4

    .line 134
    iput-object v13, v0, Lcom/android/systemui/recents/OverviewProxyService;->mShellInterface:Lcom/android/wm/shell/sysui/ShellInterface;

    .line 136
    move-object/from16 v13, p6

    .line 138
    iput-object v13, v0, Lcom/android/systemui/recents/OverviewProxyService;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 140
    new-instance v13, Landroid/os/Handler;

    .line 142
    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    .line 144
    iput-object v13, v0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 147
    move-object/from16 v13, p5

    .line 149
    iput-object v13, v0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarControllerLazy:Ldagger/Lazy;

    .line 151
    iput-object v3, v0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWinController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 153
    iput-object v5, v0, Lcom/android/systemui/recents/OverviewProxyService;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 155
    iput v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 157
    const v13, 0x10402d0    # @android:string/data_usage_mobile_limit_title

    .line 159
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 162
    move-result-object v13

    .line 165
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 166
    move-result-object v13

    .line 169
    iput-object v13, v0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 170
    new-instance v15, Landroid/content/Intent;

    .line 172
    const-string v7, "android.intent.action.QUICKSTEP_SERVICE"

    .line 174
    invoke-direct {v15, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 179
    move-result-object v7

    .line 182
    invoke-virtual {v15, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    move-result-object v7

    .line 186
    iput-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    .line 187
    invoke-static/range {p1 .. p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    .line 189
    move-result v7

    .line 192
    iput v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowCornerRadius:F

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 195
    move-result-object v7

    .line 198
    invoke-static {v7}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    .line 199
    move-result v7

    .line 202
    iput-boolean v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSupportsRoundedCornersOnWindows:Z

    .line 203
    iput-object v4, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 205
    new-instance v7, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda3;

    .line 207
    invoke-direct {v7, v0}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    .line 209
    iget-object v15, v4, Lcom/android/systemui/model/SysUiState;->mCallbacks:Ljava/util/List;

    .line 212
    check-cast v15, Ljava/util/ArrayList;

    .line 214
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget v15, v4, Lcom/android/systemui/model/SysUiState;->mFlags:I

    .line 219
    invoke-virtual {v7, v15}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda3;->onSystemUiStateChanged(I)V

    .line 221
    move-object/from16 v7, p13

    .line 224
    iput-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 226
    move-object/from16 v7, p14

    .line 228
    iput-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 230
    move-object/from16 v7, p18

    .line 232
    iput-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mUnfoldTransitionProgressForwarder:Ljava/util/Optional;

    .line 234
    move-object/from16 v7, p15

    .line 236
    iput-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysuiUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 238
    move-object/from16 v7, p17

    .line 240
    invoke-virtual {v7, v14, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 242
    move-object/from16 v7, p7

    .line 245
    invoke-virtual {v7, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    .line 247
    move-result v7

    .line 250
    iput v7, v0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 251
    new-instance v7, Landroid/content/IntentFilter;

    .line 253
    const-string v14, "android.intent.action.PACKAGE_ADDED"

    .line 255
    invoke-direct {v7, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 257
    const-string v14, "package"

    .line 260
    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 265
    move-result-object v13

    .line 268
    const/4 v14, 0x0

    .line 269
    invoke-virtual {v7, v13, v14}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 270
    const-string v13, "android.intent.action.PACKAGE_CHANGED"

    .line 273
    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    check-cast v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 281
    invoke-virtual {v3, v8}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V

    .line 283
    new-instance v3, Lcom/android/internal/util/ScreenshotHelper;

    .line 286
    invoke-direct {v3, v1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    .line 288
    iput-object v3, v0, Lcom/android/systemui/recents/OverviewProxyService;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 291
    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$6;

    .line 293
    invoke-direct {v1, v0, v4}, Lcom/android/systemui/recents/OverviewProxyService$6;-><init>(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;)V

    .line 295
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 298
    iput-object v2, v0, Lcom/android/systemui/recents/OverviewProxyService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 301
    move-object v1, v5

    .line 303
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 304
    move-object/from16 v2, p2

    .line 306
    invoke-virtual {v1, v10, v2}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 308
    move-object/from16 v1, p11

    .line 311
    iget-object v1, v1, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 313
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    move-object/from16 v1, p12

    .line 318
    iget-object v1, v1, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 320
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/OverviewProxyService;->updateEnabledAndBinding()V

    .line 325
    move-object/from16 v0, p16

    .line 328
    invoke-virtual {v0, v9}, Lcom/android/internal/app/AssistUtils;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    .line 330
    return-void
    .line 333
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    return-void
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method public final disconnectFromLauncherService(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "disconnectFromLauncherService bound?: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " currentProxy: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " disconnectReason: "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 35
    new-instance v0, Ljava/lang/Throwable;

    .line 36
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 38
    const-string v1, "OverviewProxyService"

    .line 41
    invoke-static {v1, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    iget-boolean p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    .line 46
    const/4 v0, 0x0

    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Lcom/android/systemui/recents/OverviewProxyService$3;

    .line 53
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 60
    if-eqz p1, :cond_1

    .line 62
    check-cast p1, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 64
    iget-object p1, p1, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 66
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda2;

    .line 68
    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 70
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyConnectionChanged()V

    .line 76
    :cond_1
    return-void
    .line 79
.end method

.method public final dispatchNavButtonBounds()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    :try_start_0
    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 10
    iget-object v1, v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 12
    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 14
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    const-string v2, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 20
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, p0, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 24
    iget-object p0, v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    const/4 v0, 0x1

    .line 29
    const/16 v2, 0xc

    .line 30
    const/4 v3, 0x0

    .line 32
    invoke-interface {p0, v2, v1, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 43
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    :goto_0
    const-string v0, "OverviewProxyService"

    .line 47
    const-string v1, "Failed to call onActiveNavBarRegionChanges()"

    .line 49
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    :cond_0
    :goto_1
    return-void
    .line 54
.end method

.method public final dispatchNavigationBarSurface()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavigationBarSurface:Landroid/view/SurfaceControl;

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavigationBarSurface:Landroid/view/SurfaceControl;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 19
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavigationBarSurface:Landroid/view/SurfaceControl;

    .line 21
    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 23
    iget-object v2, v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 25
    invoke-static {v2}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 27
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    const-string v3, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 31
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 33
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v2, p0, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    iget-object p0, v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 40
    const/4 v0, 0x1

    .line 42
    const/16 v3, 0x1b

    .line 43
    invoke-interface {p0, v3, v2, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 48
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 53
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    const-string v0, "OverviewProxyService"

    .line 58
    const-string v1, "Failed to notify back action"

    .line 60
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :cond_1
    :goto_0
    return-void
    .line 65
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "OverviewProxyService state:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string v0, "  isConnected="

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 19
    const-string v0, "  mIsEnabled="

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    .line 27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 29
    const-string v0, "  mRecentsComponentName="

    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 37
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 39
    const-string v0, "  mQuickStepIntent="

    .line 42
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    .line 47
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 49
    const-string v0, "  mBound="

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    .line 57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 59
    const-string v0, "  mCurrentBoundedUserId="

    .line 62
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    .line 67
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 69
    const-string v0, "  mConnectionBackoffAttempts="

    .line 72
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 77
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 79
    const-string v0, "  mInputFocusTransferStarted="

    .line 82
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    .line 87
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 89
    const-string v0, "  mInputFocusTransferStartY="

    .line 92
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartY:F

    .line 97
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 99
    const-string v0, "  mInputFocusTransferStartMillis="

    .line 102
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    iget-wide v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartMillis:J

    .line 107
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 109
    const-string v0, "  mWindowCornerRadius="

    .line 112
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowCornerRadius:F

    .line 117
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 119
    const-string v0, "  mSupportsRoundedCornersOnWindows="

    .line 122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSupportsRoundedCornersOnWindows:Z

    .line 127
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 129
    const-string v0, "  mActiveNavBarRegion="

    .line 132
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    .line 137
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 139
    const-string v0, "  mNavigationBarSurface="

    .line 142
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavigationBarSurface:Landroid/view/SurfaceControl;

    .line 147
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 149
    const-string v0, "  mNavBarMode="

    .line 152
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 157
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 159
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/model/SysUiState;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 164
    return-void
    .line 167
.end method

.method public final internalConnectToCurrentUser(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->disconnectFromLauncherService(Ljava/lang/String;)V

    .line 2
    iget-boolean p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    .line 5
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 10
    move-result p1

    .line 13
    const/16 v0, 0x3e8

    .line 14
    if-eq p1, v0, :cond_1

    .line 16
    return-void

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    .line 28
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Lcom/android/systemui/recents/OverviewProxyService$3;

    .line 30
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 32
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 34
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 36
    move-result v3

    .line 39
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 40
    move-result-object v3

    .line 43
    const v4, 0x2000001

    .line 44
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 47
    move-result v0

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "OverviewProxyService"

    .line 55
    const-string v2, "Unable to bind because of security error"

    .line 57
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    .line 62
    if-eqz v0, :cond_2

    .line 64
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    .line 66
    const-wide/16 v0, 0x1388

    .line 68
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    .line 74
    :goto_1
    return-void
    .line 77
.end method

.method public final notifyAssistantGestureCompletion(F)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    .line 2
    move-object v0, p0

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    :goto_0
    if-ltz v0, :cond_0

    .line 13
    move-object v1, p0

    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 22
    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onAssistantGestureCompletion(F)V

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    return-void
    .line 30
.end method

.method public final notifyConnectionChanged()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    if-ltz v1, :cond_1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 16
    iget-object v4, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 18
    if-eqz v4, :cond_0

    .line 20
    move v4, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v4, 0x0

    .line 24
    :goto_1
    invoke-interface {v3, v4}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    return-void
    .line 31
.end method

.method public final notifySystemUiStateFlags(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 8
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 10
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 22
    const/4 p1, 0x1

    .line 24
    const/16 v1, 0x11

    .line 25
    const/4 v2, 0x0

    .line 27
    invoke-interface {p0, v1, v0, v2, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 31
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 36
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    const-string p1, "OverviewProxyService"

    .line 41
    const-string v0, "Failed to notify sysui state change"

    .line 43
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_0
    :goto_0
    return-void
    .line 48
.end method

.method public final onFocusedNotifUpdate(Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    const-string v0, "OverviewProxyService"

    .line 2
    const-string v1, "onFocusedNotifUpdate: packageName="

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 6
    if-eqz v2, :cond_0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", icon="

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", rect="

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 41
    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 43
    iget-object v1, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 45
    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 47
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    const-string v2, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 51
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 p1, 0x0

    .line 59
    invoke-virtual {v1, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 60
    invoke-virtual {v1, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 63
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 66
    const/4 p1, 0x1

    .line 68
    const/16 p2, 0x35

    .line 69
    const/4 p3, 0x0

    .line 71
    invoke-interface {p0, p2, v1, p3, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 75
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 80
    throw p0

    .line 83
    :cond_0
    const-string p0, "Failed to get overview proxy to notify focused notification update."

    .line 84
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    goto :goto_0

    .line 89
    :catch_0
    move-exception p0

    .line 90
    const-string p1, "Failed to call onFocusedNotifUpdate()"

    .line 91
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :goto_0
    return-void
    .line 96
.end method

.method public final onNavigationModeChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 2
    return-void
    .line 4
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    .line 4
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public final retryConnectionWithBackoff()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 13
    iget v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Math;->scalb(FI)F

    .line 17
    move-result v2

    .line 20
    const v3, 0x49127c00    # 600000.0f

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 24
    move-result v2

    .line 27
    float-to-long v2, v2

    .line 28
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 34
    iput v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    const-string v1, "Failed to connect on attempt "

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string p0, " will try again in "

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    const-string p0, "ms"

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    const-string v0, "OverviewProxyService"

    .line 67
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
    .line 72
.end method

.method public final shouldShowSwipeUpUI()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 7
    sget-boolean v0, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    .line 9
    const/4 v0, 0x1

    .line 11
    if-nez p0, :cond_0

    .line 12
    move p0, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p0, v1

    .line 16
    :goto_0
    if-nez p0, :cond_1

    .line 17
    move v1, v0

    .line 19
    :cond_1
    return v1
    .line 20
.end method

.method public shutdownForTest()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mLauncherStateChangedReceiver:Lcom/android/systemui/recents/OverviewProxyService$2;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    .line 10
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    const-string v0, "Shutdown for test"

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService;->disconnectFromLauncherService(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public final startConnectionToCurrentUser()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    move-result-object v2

    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    .line 14
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo v0, "startConnectionToCurrentUser"

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser(Ljava/lang/String;)V

    .line 23
    :goto_0
    return-void
    .line 26
.end method

.method public final updateDisabledSystemUiStateFlags(Lcom/android/systemui/model/SysUiState;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 4
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDisabledFlags:I

    .line 8
    const/high16 v2, 0x1000000

    .line 10
    and-int/2addr v1, v2

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v3

    .line 19
    :goto_0
    const/16 v4, 0x80

    .line 20
    invoke-virtual {p1, v4, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 22
    iget v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDisabledFlags:I

    .line 25
    const/high16 v4, 0x200000

    .line 27
    and-int/2addr v1, v4

    .line 29
    if-eqz v1, :cond_1

    .line 30
    move v1, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v3

    .line 34
    :goto_1
    const/16 v4, 0x100

    .line 35
    invoke-virtual {p1, v4, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 37
    iget v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDisabledFlags:I

    .line 40
    const/high16 v4, 0x2000000

    .line 42
    and-int/2addr v1, v4

    .line 44
    if-eqz v1, :cond_2

    .line 45
    goto :goto_2

    .line 47
    :cond_2
    move v2, v3

    .line 48
    :goto_2
    const/16 v1, 0x400

    .line 49
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)V

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v0, "updateDisabledSystemUiStateFlags: "

    .line 59
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDisabledFlags:I

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    const-string p1, "OverviewProxyService"

    .line 78
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
    .line 83
.end method

.method public final updateEnabledAndBinding()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    .line 16
    const/high16 v3, 0x100000

    .line 18
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 20
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->startConnectionToCurrentUser()V

    .line 31
    return-void
    .line 34
.end method
