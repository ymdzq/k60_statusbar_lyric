.class public final Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationShadeWindowController;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public mBgBlurRadiusListener:Ljava/util/function/Consumer;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mBoostRunnable:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

.field public mDeferWindowLayoutParams:I

.field public mFakeClockShow:Z

.field public mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;

.field public mHasTopUi:Z

.field public mHasTopUiChanged:Z

.field public mHasTopUiWithoutStartingWindow:Z

.field public mHasTopUiWithoutStartingWindowChanged:Z

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardMaxRefreshRate:F

.field public final mKeyguardPreferredRefreshRate:F

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public mLastKeyguardRotationAllowed:Z

.field public mListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

.field public final mLockScreenDisplayTimeout:J

.field public final mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field public mNotificationShadeView:Landroid/view/ViewGroup;

.field public mScreenBrightnessDoze:F

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public mScrimsVisibilityListener:Ljava/util/function/Consumer;

.field public final mStateBuffer:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

.field public final mStateListener:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;

.field public mSwitchedToControl:Z

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/shade/ShadeWindowLogger;Landroid/os/Handler;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p11

    .line 3
    move-object/from16 v2, p14

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v3, Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 10
    invoke-direct {v3}, Lcom/android/systemui/shade/NotificationShadeWindowState;-><init>()V

    .line 12
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 22
    new-instance v3, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

    .line 24
    invoke-direct {v3}, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;-><init>()V

    .line 26
    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mStateBuffer:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

    .line 29
    const/4 v3, 0x0

    .line 31
    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mSwitchedToControl:Z

    .line 32
    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mFakeClockShow:Z

    .line 34
    new-instance v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0;

    .line 36
    invoke-direct {v4, p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V

    .line 38
    iput-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mBoostRunnable:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0;

    .line 41
    new-instance v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;

    .line 43
    invoke-direct {v4, p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V

    .line 45
    iput-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mStateListener:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$2;

    .line 48
    move-object v5, p1

    .line 50
    iput-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    .line 51
    move-object v6, p2

    .line 53
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 54
    move-object v6, p3

    .line 56
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    .line 57
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 59
    move-object/from16 v6, p15

    .line 61
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    .line 63
    move-object/from16 v6, p4

    .line 65
    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 67
    const v7, 0x10e00f1    # @android:integer/config_shortPressOnPowerBehavior

    .line 69
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    .line 72
    move-result v6

    .line 75
    int-to-float v6, v6

    .line 76
    const/high16 v7, 0x437f0000    # 255.0f

    .line 77
    div-float/2addr v6, v7

    .line 79
    iput v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    .line 80
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 82
    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 84
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 87
    move-object/from16 v6, p7

    .line 89
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 91
    move-object/from16 v6, p8

    .line 93
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 95
    move-object/from16 v6, p9

    .line 97
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 99
    move-object/from16 v6, p12

    .line 101
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 103
    const-class v6, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 105
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 107
    move-result-object v6

    .line 110
    move-object/from16 v7, p10

    .line 111
    invoke-virtual {v7, v6, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 113
    move-object/from16 v6, p13

    .line 116
    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 118
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 120
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isKeyguardScreenRotationAllowed()Z

    .line 122
    move-result v1

    .line 125
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLastKeyguardRotationAllowed:Z

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    move-result-object v1

    .line 131
    const v6, 0x7f0b003d    # @integer/config_lockScreenDisplayTimeout '10000'

    .line 132
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 135
    move-result v1

    .line 138
    int-to-long v6, v1

    .line 139
    iput-wide v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLockScreenDisplayTimeout:J

    .line 140
    move-object/from16 v1, p5

    .line 142
    check-cast v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 144
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 146
    iget-object v6, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 148
    monitor-enter v6

    .line 150
    const/4 v7, 0x1

    .line 151
    :try_start_0
    invoke-virtual {v1, v4, v7}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addListenerInternalLocked(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 152
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    move-object/from16 v1, p6

    .line 156
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 158
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 160
    new-instance v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;

    .line 163
    invoke-direct {v1, p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V

    .line 165
    invoke-virtual {v2, v1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addQsExpansionListener(Lcom/android/systemui/shade/ShadeQsExpansionListener;)V

    .line 168
    new-instance v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda2;

    .line 171
    invoke-direct {v1, p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V

    .line 173
    invoke-virtual {v2, v1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addFullExpansionListener(Lcom/android/systemui/shade/ShadeFullExpansionListener;)V

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    move-result-object v1

    .line 182
    const v2, 0x7f0b003b    # @integer/config_keyguardRefreshRate '-1'

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 186
    move-result v1

    .line 189
    int-to-float v1, v1

    .line 190
    const/high16 v2, -0x40800000    # -1.0f

    .line 191
    cmpl-float v4, v1, v2

    .line 193
    if-lez v4, :cond_1

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 197
    move-result-object v4

    .line 200
    invoke-virtual {v4}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    .line 201
    move-result-object v4

    .line 204
    array-length v6, v4

    .line 205
    :goto_0
    if-ge v3, v6, :cond_1

    .line 206
    aget-object v7, v4, v3

    .line 208
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 210
    move-result v8

    .line 213
    sub-float/2addr v8, v1

    .line 214
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 215
    move-result v8

    .line 218
    float-to-double v8, v8

    .line 219
    const-wide v10, 0x3fb999999999999aL    # 0.1

    .line 220
    cmpg-double v8, v8, v10

    .line 225
    if-gtz v8, :cond_0

    .line 227
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 229
    move-result v2

    .line 232
    goto :goto_1

    .line 233
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 234
    goto :goto_0

    .line 236
    :cond_1
    :goto_1
    iput v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 239
    move-result-object v1

    .line 242
    const v2, 0x7f0b003a    # @integer/config_keyguardMaxRefreshRate '-1'

    .line 243
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 246
    move-result v1

    .line 249
    int-to-float v1, v1

    .line 250
    iput v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    .line 251
    move-object/from16 v1, p16

    .line 253
    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 255
    return-void

    .line 257
    :catchall_0
    move-exception v0

    .line 258
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    throw v0
    .line 260
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 6
    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    .line 8
    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    .line 10
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    .line 12
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    .line 14
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    .line 16
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 18
    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    .line 20
    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    .line 22
    iget-boolean v11, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    .line 24
    iget-boolean v12, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    .line 26
    iget-boolean v13, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->lightRevealScrimOpaque:Z

    .line 28
    iget-boolean v14, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    .line 30
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    .line 32
    move/from16 v16, v15

    .line 34
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceUserActivity:Z

    .line 36
    move/from16 v17, v15

    .line 38
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    .line 40
    move/from16 v18, v15

    .line 42
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->mediaBackdropShowing:Z

    .line 44
    move/from16 v19, v15

    .line 46
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->wallpaperSupportsAmbientMode:Z

    .line 48
    move/from16 v20, v15

    .line 50
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->windowNotTouchable:Z

    .line 52
    move/from16 v21, v15

    .line 54
    iget v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 56
    move/from16 v22, v15

    .line 58
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    .line 60
    move/from16 v23, v15

    .line 62
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 64
    move/from16 v24, v15

    .line 66
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 68
    move/from16 v25, v15

    .line 70
    iget v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->scrimsVisibility:I

    .line 72
    move/from16 v26, v15

    .line 74
    iget v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    .line 76
    move/from16 v27, v15

    .line 78
    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardTransparent:Z

    .line 80
    move/from16 v28, v15

    .line 82
    iget-object v15, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mStateBuffer:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

    .line 84
    iget-object v15, v15, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 86
    invoke-virtual {v15}, Lcom/android/systemui/common/buffer/RingBuffer;->advance()Ljava/lang/Object;

    .line 88
    move-result-object v15

    .line 91
    check-cast v15, Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 92
    iput-boolean v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 94
    iput-boolean v3, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    .line 96
    iput-boolean v4, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    .line 98
    iput-boolean v5, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    .line 100
    iput-boolean v6, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    .line 102
    iput-boolean v7, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    .line 104
    iput-boolean v8, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 106
    iput-boolean v9, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    .line 108
    iput-boolean v10, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    .line 110
    iput-boolean v11, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    .line 112
    iput-boolean v12, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    .line 114
    iput-boolean v13, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->lightRevealScrimOpaque:Z

    .line 116
    iput-boolean v14, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    .line 118
    move/from16 v2, v16

    .line 120
    iput-boolean v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    .line 122
    move/from16 v2, v17

    .line 124
    iput-boolean v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceUserActivity:Z

    .line 126
    move/from16 v2, v18

    .line 128
    iput-boolean v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    .line 130
    move/from16 v2, v19

    .line 132
    iput-boolean v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->mediaBackdropShowing:Z

    .line 134
    move/from16 v2, v20

    .line 136
    iput-boolean v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->wallpaperSupportsAmbientMode:Z

    .line 138
    move/from16 v2, v21

    .line 140
    iput-boolean v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->windowNotTouchable:Z

    .line 142
    iget-object v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    .line 144
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 146
    iget-object v3, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    .line 149
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    .line 154
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 156
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    .line 159
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 161
    move/from16 v2, v22

    .line 164
    iput v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 166
    move/from16 v2, v23

    .line 168
    iput-boolean v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    .line 170
    move/from16 v2, v24

    .line 172
    iput-boolean v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 174
    move/from16 v2, v25

    .line 176
    iput-boolean v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 178
    move/from16 v2, v26

    .line 180
    iput v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->scrimsVisibility:I

    .line 182
    move/from16 v2, v27

    .line 184
    iput v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    .line 186
    move/from16 v2, v28

    .line 188
    iput-boolean v2, v15, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardTransparent:Z

    .line 190
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 192
    move-result v2

    .line 195
    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 196
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 198
    const/high16 v6, 0x100000

    .line 200
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mContext:Landroid/content/Context;

    .line 202
    const v8, -0x100001

    .line 204
    if-eqz v4, :cond_1

    .line 207
    if-nez v2, :cond_0

    .line 209
    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->wallpaperSupportsAmbientMode:Z

    .line 211
    if-nez v4, :cond_0

    .line 213
    invoke-static {v7}, Lcom/miui/systemui/util/CommonUtil;->isTopActivityLauncher(Landroid/content/Context;)Z

    .line 215
    move-result v4

    .line 218
    if-eqz v4, :cond_1

    .line 219
    :cond_0
    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 221
    or-int/2addr v4, v6

    .line 223
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 224
    goto :goto_0

    .line 226
    :cond_1
    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 227
    and-int/2addr v4, v8

    .line 229
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 230
    :goto_0
    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 232
    if-eqz v4, :cond_2

    .line 234
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 236
    and-int/2addr v2, v8

    .line 238
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 239
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 241
    const/high16 v4, 0x80000

    .line 243
    or-int/2addr v2, v4

    .line 245
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 246
    goto :goto_1

    .line 248
    :cond_2
    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 249
    if-eqz v4, :cond_4

    .line 251
    if-nez v2, :cond_3

    .line 253
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->wallpaperSupportsAmbientMode:Z

    .line 255
    if-nez v2, :cond_3

    .line 257
    invoke-static {v7}, Lcom/miui/systemui/util/CommonUtil;->isTopActivityLauncher(Landroid/content/Context;)Z

    .line 259
    move-result v2

    .line 262
    if-eqz v2, :cond_4

    .line 263
    :cond_3
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 265
    or-int/2addr v2, v6

    .line 267
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 268
    :cond_4
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 270
    const v4, -0x80001

    .line 272
    and-int/2addr v2, v4

    .line 275
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 276
    :goto_1
    iget v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    .line 278
    const/4 v4, 0x0

    .line 280
    cmpl-float v6, v2, v4

    .line 281
    const/4 v9, 0x0

    .line 283
    const/4 v10, 0x1

    .line 284
    if-lez v6, :cond_7

    .line 285
    iget v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 287
    if-ne v6, v10, :cond_5

    .line 289
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    .line 291
    if-nez v6, :cond_5

    .line 293
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    .line 295
    if-nez v6, :cond_5

    .line 297
    move v6, v10

    .line 299
    goto :goto_2

    .line 300
    :cond_5
    move v6, v9

    .line 301
    :goto_2
    if-eqz v6, :cond_6

    .line 302
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 304
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 306
    move-result v11

    .line 309
    invoke-virtual {v6, v11}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    .line 310
    move-result v6

    .line 313
    if-eqz v6, :cond_6

    .line 314
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 316
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 318
    goto :goto_3

    .line 320
    :cond_6
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 321
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    .line 323
    :goto_3
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 325
    float-to-long v11, v2

    .line 327
    const-string v2, "display_set_preferred_refresh_rate"

    .line 328
    invoke-static {v2, v11, v12}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 330
    goto :goto_7

    .line 333
    :cond_7
    iget v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    .line 334
    cmpl-float v6, v2, v4

    .line 336
    if-lez v6, :cond_b

    .line 338
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 340
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 342
    move-result v6

    .line 345
    if-eqz v6, :cond_8

    .line 346
    iget v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 348
    if-ne v6, v10, :cond_8

    .line 350
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    .line 352
    if-nez v6, :cond_8

    .line 354
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    .line 356
    if-nez v6, :cond_8

    .line 358
    move v6, v10

    .line 360
    goto :goto_4

    .line 361
    :cond_8
    move v6, v9

    .line 362
    :goto_4
    iget-boolean v11, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 363
    if-nez v11, :cond_a

    .line 365
    if-eqz v6, :cond_9

    .line 367
    goto :goto_5

    .line 369
    :cond_9
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 370
    goto :goto_6

    .line 372
    :cond_a
    :goto_5
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 373
    :goto_6
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    .line 375
    float-to-long v11, v2

    .line 377
    const-string v2, "display_max_refresh_rate"

    .line 378
    invoke-static {v2, v11, v12}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 380
    :cond_b
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 383
    move-result v2

    .line 386
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 387
    if-nez v2, :cond_c

    .line 389
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    .line 391
    if-eqz v2, :cond_e

    .line 393
    :cond_c
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardTransparent:Z

    .line 395
    if-eqz v2, :cond_e

    .line 397
    invoke-static {v7}, Lcom/miui/systemui/util/CommonUtil;->isTopActivityLauncher(Landroid/content/Context;)Z

    .line 399
    move-result v2

    .line 402
    if-nez v2, :cond_d

    .line 403
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 405
    and-int/2addr v2, v8

    .line 407
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->applyWindowLayoutParams()V

    .line 410
    :cond_d
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 413
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 415
    or-int/lit8 v2, v2, 0x10

    .line 417
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 419
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 421
    if-eqz v2, :cond_f

    .line 423
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 425
    move-result-object v2

    .line 428
    invoke-interface {v2, v9}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->nofifySurfaceFlinger(Z)V

    .line 429
    goto :goto_8

    .line 432
    :cond_e
    const/high16 v2, 0x3f800000    # 1.0f

    .line 433
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 435
    iput-boolean v9, v6, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardTransparent:Z

    .line 437
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 439
    and-int/lit8 v2, v2, -0x11

    .line 441
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 443
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 445
    if-eqz v2, :cond_f

    .line 447
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 449
    move-result-object v2

    .line 452
    invoke-interface {v2, v10}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->nofifySurfaceFlinger(Z)V

    .line 453
    :cond_f
    :goto_8
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 456
    if-eqz v2, :cond_10

    .line 458
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 460
    if-nez v4, :cond_10

    .line 462
    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 464
    or-int/lit16 v4, v4, 0x2000

    .line 466
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 468
    goto :goto_9

    .line 470
    :cond_10
    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 471
    and-int/lit16 v4, v4, -0x2001

    .line 473
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 475
    :goto_9
    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    .line 477
    if-eqz v4, :cond_11

    .line 479
    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    .line 481
    if-eqz v4, :cond_11

    .line 483
    move v4, v10

    .line 485
    goto :goto_a

    .line 486
    :cond_11
    move v4, v9

    .line 487
    :goto_a
    const v7, -0x20001

    .line 488
    if-eqz v2, :cond_12

    .line 491
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    .line 493
    if-nez v2, :cond_14

    .line 495
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    .line 497
    if-nez v2, :cond_14

    .line 499
    :cond_12
    sget-boolean v2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    .line 501
    if-eqz v2, :cond_13

    .line 503
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    .line 505
    if-nez v2, :cond_14

    .line 507
    :cond_13
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 509
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldIgnoreKeyguardTouches()Z

    .line 511
    move-result v2

    .line 514
    if-eqz v2, :cond_15

    .line 515
    :cond_14
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 517
    and-int/lit8 v2, v2, -0x9

    .line 519
    and-int/2addr v2, v7

    .line 521
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 522
    goto :goto_c

    .line 524
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 525
    move-result v2

    .line 528
    if-nez v2, :cond_17

    .line 529
    if-eqz v4, :cond_16

    .line 531
    goto :goto_b

    .line 533
    :cond_16
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 534
    or-int/lit8 v2, v2, 0x8

    .line 536
    and-int/2addr v2, v7

    .line 538
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 539
    goto :goto_c

    .line 541
    :cond_17
    :goto_b
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 542
    and-int/lit8 v2, v2, -0x9

    .line 544
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 546
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    .line 548
    if-eqz v2, :cond_18

    .line 550
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 552
    move-result v2

    .line 555
    if-eqz v2, :cond_18

    .line 556
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 558
    and-int/2addr v2, v7

    .line 560
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 561
    goto :goto_c

    .line 563
    :cond_18
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 564
    const/high16 v4, 0x20000

    .line 566
    or-int/2addr v2, v4

    .line 568
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 569
    :goto_c
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    .line 571
    if-nez v2, :cond_1a

    .line 573
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 575
    if-nez v2, :cond_1a

    .line 577
    sget-boolean v2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    .line 579
    if-eqz v2, :cond_19

    .line 581
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    .line 583
    if-eqz v2, :cond_19

    .line 585
    goto :goto_d

    .line 587
    :cond_19
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 588
    const v4, -0x800001

    .line 590
    and-int/2addr v2, v4

    .line 593
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 594
    goto :goto_e

    .line 596
    :cond_1a
    :goto_d
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 597
    const/high16 v4, 0x800000

    .line 599
    or-int/2addr v2, v4

    .line 601
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 602
    :goto_e
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 604
    const/4 v4, 0x2

    .line 606
    if-nez v2, :cond_1c

    .line 607
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 609
    move-result v2

    .line 612
    if-nez v2, :cond_1c

    .line 613
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 615
    if-eqz v2, :cond_1b

    .line 617
    goto :goto_f

    .line 619
    :cond_1b
    const/4 v2, -0x1

    .line 620
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 621
    goto :goto_10

    .line 623
    :cond_1c
    :goto_f
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 624
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 626
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isKeyguardScreenRotationAllowed()Z

    .line 628
    move-result v2

    .line 631
    if-eqz v2, :cond_1d

    .line 632
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 634
    goto :goto_10

    .line 636
    :cond_1d
    const/4 v2, 0x5

    .line 637
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 638
    :goto_10
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;)Z

    .line 640
    move-result v2

    .line 643
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    .line 644
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 646
    sget-object v8, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 649
    sget-object v11, Lcom/android/systemui/shade/ShadeWindowLogger$logApplyVisibility$2;->INSTANCE:Lcom/android/systemui/shade/ShadeWindowLogger$logApplyVisibility$2;

    .line 651
    const-string/jumbo v12, "systemui.shadewindow"

    .line 653
    iget-object v13, v7, Lcom/android/systemui/shade/ShadeWindowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 656
    const/4 v14, 0x0

    .line 658
    invoke-virtual {v13, v12, v8, v11, v14}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 659
    move-result-object v8

    .line 662
    invoke-interface {v8, v2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 663
    invoke-virtual {v13, v8}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 666
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 669
    if-eqz v8, :cond_1f

    .line 671
    iget-object v8, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 673
    if-eqz v8, :cond_1e

    .line 675
    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 677
    check-cast v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback;

    .line 679
    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback;->this$1:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    .line 681
    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->mOverlays:Landroid/util/ArraySet;

    .line 683
    new-instance v11, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback$$ExternalSyntheticLambda0;

    .line 685
    invoke-direct {v11, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4$Callback$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 687
    invoke-virtual {v8, v11}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 690
    :cond_1e
    const-string v2, "Visibility forced to be true"

    .line 693
    invoke-virtual {v7, v2}, Lcom/android/systemui/shade/ShadeWindowLogger;->d(Ljava/lang/String;)V

    .line 695
    move v2, v10

    .line 698
    :cond_1f
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 699
    if-eqz v7, :cond_21

    .line 701
    if-eqz v2, :cond_20

    .line 703
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 705
    goto :goto_11

    .line 708
    :cond_20
    const/4 v2, 0x4

    .line 709
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 710
    :cond_21
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 713
    move-result v2

    .line 716
    if-eqz v2, :cond_24

    .line 717
    iget v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 719
    if-ne v2, v10, :cond_24

    .line 721
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    .line 723
    if-nez v2, :cond_24

    .line 725
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 727
    if-eqz v2, :cond_23

    .line 729
    const-class v2, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 731
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 733
    move-result-object v2

    .line 736
    check-cast v2, Lcom/android/keyguard/KeyguardEditorHelper;

    .line 737
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 739
    move-result v2

    .line 742
    if-eqz v2, :cond_22

    .line 743
    const-wide/16 v7, 0x1388

    .line 745
    goto :goto_12

    .line 747
    :cond_22
    const-wide/16 v7, 0x2710

    .line 748
    goto :goto_12

    .line 750
    :cond_23
    iget-wide v7, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLockScreenDisplayTimeout:J

    .line 751
    :goto_12
    iput-wide v7, v5, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 753
    goto :goto_13

    .line 755
    :cond_24
    const-wide/16 v7, -0x1

    .line 756
    iput-wide v7, v5, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 758
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 760
    move-result v2

    .line 763
    if-eqz v2, :cond_25

    .line 764
    iget v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 766
    if-ne v2, v10, :cond_25

    .line 768
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->qsExpanded:Z

    .line 770
    if-nez v2, :cond_25

    .line 772
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceUserActivity:Z

    .line 774
    if-nez v2, :cond_25

    .line 776
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 778
    or-int/2addr v2, v4

    .line 780
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 781
    goto :goto_14

    .line 783
    :cond_25
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 784
    and-int/lit8 v2, v2, -0x3

    .line 786
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 788
    :goto_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 790
    move-result v2

    .line 793
    xor-int/2addr v2, v10

    .line 794
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 795
    if-eqz v4, :cond_26

    .line 797
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getFitsSystemWindows()Z

    .line 799
    move-result v4

    .line 802
    if-eq v4, v2, :cond_26

    .line 803
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 805
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 807
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 810
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 812
    :cond_26
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    .line 815
    if-eqz v2, :cond_27

    .line 817
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 819
    or-int/lit8 v2, v2, 0x20

    .line 821
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 823
    goto :goto_15

    .line 825
    :cond_27
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 826
    and-int/lit8 v2, v2, -0x21

    .line 828
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 830
    :goto_15
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    .line 832
    if-eqz v2, :cond_28

    .line 834
    iget v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScreenBrightnessDoze:F

    .line 836
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 838
    goto :goto_16

    .line 840
    :cond_28
    const/high16 v2, -0x40800000    # -1.0f

    .line 841
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 843
    :goto_16
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 845
    move-result v2

    .line 848
    if-eqz v2, :cond_2a

    .line 849
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;)Z

    .line 851
    move-result v2

    .line 854
    if-eqz v2, :cond_29

    .line 855
    goto :goto_17

    .line 857
    :cond_29
    move v2, v9

    .line 858
    goto :goto_18

    .line 859
    :cond_2a
    :goto_17
    move v2, v10

    .line 860
    :goto_18
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    .line 861
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;)Z

    .line 863
    move-result v2

    .line 866
    if-eqz v2, :cond_2b

    .line 867
    goto :goto_19

    .line 869
    :cond_2b
    new-instance v2, Ljava/util/HashSet;

    .line 870
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 872
    const-string v3, "ShellStartingWindow"

    .line 875
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 877
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 880
    move-result v2

    .line 883
    if-nez v2, :cond_2c

    .line 884
    :goto_19
    move v9, v10

    .line 886
    :cond_2c
    iput-boolean v9, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiWithoutStartingWindowChanged:Z

    .line 887
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->windowNotTouchable:Z

    .line 889
    if-eqz v2, :cond_2d

    .line 891
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 893
    or-int/lit8 v2, v2, 0x10

    .line 895
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 897
    goto :goto_1a

    .line 899
    :cond_2d
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 900
    and-int/lit8 v2, v2, -0x11

    .line 902
    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 904
    :goto_1a
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;)Z

    .line 906
    move-result v1

    .line 909
    if-nez v1, :cond_2e

    .line 910
    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 912
    const/high16 v2, 0x1000000

    .line 914
    or-int/2addr v1, v2

    .line 916
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 917
    goto :goto_1b

    .line 919
    :cond_2e
    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 920
    const v2, -0x1000001

    .line 922
    and-int/2addr v1, v2

    .line 925
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 926
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->applyWindowLayoutParams()V

    .line 928
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    .line 931
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    .line 933
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 935
    if-eq v1, v2, :cond_2f

    .line 937
    new-instance v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;

    .line 939
    invoke-direct {v1, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V

    .line 941
    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 944
    :cond_2f
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiWithoutStartingWindow:Z

    .line 947
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiWithoutStartingWindowChanged:Z

    .line 949
    if-eq v1, v2, :cond_31

    .line 951
    if-eqz v2, :cond_30

    .line 953
    iget v1, v6, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 955
    if-nez v1, :cond_30

    .line 957
    iget-boolean v1, v6, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 959
    if-nez v1, :cond_30

    .line 961
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mBoostRunnable:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0;

    .line 963
    invoke-virtual {v3, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 965
    move-result v2

    .line 968
    if-nez v2, :cond_30

    .line 969
    const-wide/16 v4, 0xa

    .line 971
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 973
    :cond_30
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiWithoutStartingWindowChanged:Z

    .line 976
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHasTopUiWithoutStartingWindow:Z

    .line 978
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->notifyStateChangedCallbacks()V

    .line 980
    return-void
    .line 983
.end method

.method public final applyWindowLayoutParams()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 18
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 25
    sget-object v3, Lcom/android/systemui/shade/ShadeWindowLogger$logApplyingWindowLayoutParams$2;->INSTANCE:Lcom/android/systemui/shade/ShadeWindowLogger$logApplyingWindowLayoutParams$2;

    .line 27
    const-string/jumbo v4, "systemui.shadewindow"

    .line 29
    iget-object v1, v1, Lcom/android/systemui/shade/ShadeWindowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 32
    const/4 v5, 0x0

    .line 34
    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 35
    move-result-object v2

    .line 38
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    invoke-interface {v2, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 46
    const-string/jumbo v0, "updateViewLayout"

    .line 49
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 55
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 57
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 59
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    :cond_0
    return-void
    .line 67
.end method

.method public final batchApplyWindowLayoutParams(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    .line 2
    add-int/lit8 v0, v0, 0x1

    .line 4
    iput v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    .line 6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 8
    iget p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 13
    iput p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->applyWindowLayoutParams()V

    .line 17
    return-void
    .line 20
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p2, "NotificationShadeWindowController:"

    .line 2
    const-string v0, "  mKeyguardMaxRefreshRate="

    .line 4
    invoke-static {p1, p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p2

    .line 9
    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardMaxRefreshRate:F

    .line 10
    const-string v1, "  mKeyguardPreferredRefreshRate="

    .line 12
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object p2

    .line 17
    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardPreferredRefreshRate:F

    .line 18
    const-string v1, "  mDeferWindowLayoutParams="

    .line 20
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object p2

    .line 25
    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mDeferWindowLayoutParams:I

    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 38
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 40
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 43
    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 47
    move-result-object p2

    .line 50
    if-eqz p2, :cond_0

    .line 51
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 53
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 55
    move-result-object p2

    .line 58
    const-string v0, "  "

    .line 59
    invoke-virtual {p2, v0, p1}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 61
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 64
    if-eqz p2, :cond_1

    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    .line 68
    const-string v0, "  mNotificationShadeView visibility ="

    .line 70
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 77
    move-result v0

    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    const-string v0, "  mNotificationShadeView alpha ="

    .line 93
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 98
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    .line 100
    move-result v0

    .line 103
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p2

    .line 110
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 114
    const-string v0, " mFakeClockShow="

    .line 116
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mFakeClockShow:Z

    .line 121
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p2

    .line 129
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    new-instance p2, Lcom/android/systemui/dump/DumpsysTableLogger;

    .line 133
    sget-object v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->TABLE_HEADERS:Ljava/util/List;

    .line 135
    new-instance v1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 137
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mStateBuffer:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;

    .line 139
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    .line 141
    invoke-direct {v1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 143
    sget-object p0, Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer$toList$1;->INSTANCE:Lcom/android/systemui/shade/NotificationShadeWindowState$Buffer$toList$1;

    .line 146
    new-instance v2, Lkotlin/sequences/TransformingSequence;

    .line 148
    invoke-direct {v2, v1, p0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 150
    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 153
    move-result-object p0

    .line 156
    const-string v1, "NotificationShadeWindowController"

    .line 157
    invoke-direct {p2, v1, v0, p0}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 159
    invoke-virtual {p2, p1}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    .line 162
    return-void
    .line 165
.end method

.method public final isExpanded(Lcom/android/systemui/shade/NotificationShadeWindowState;)Z
    .locals 13

    .line 1
    iget-boolean v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    iget-boolean v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    .line 14
    if-nez v0, :cond_3

    .line 16
    iget-boolean v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    .line 18
    if-nez v0, :cond_3

    .line 20
    iget-boolean v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 22
    if-nez v0, :cond_3

    .line 24
    iget-boolean v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    .line 26
    if-nez v0, :cond_3

    .line 28
    :cond_0
    iget v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    .line 30
    if-lez v0, :cond_1

    .line 32
    iget v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    .line 34
    if-eqz v0, :cond_3

    .line 36
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    .line 38
    if-nez v0, :cond_3

    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mFakeClockShow:Z

    .line 42
    if-nez v0, :cond_3

    .line 44
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mSwitchedToControl:Z

    .line 46
    if-eqz v0, :cond_2

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    move v0, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    :goto_0
    move v0, v2

    .line 53
    :goto_1
    iget-boolean v3, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceWindowCollapsed:Z

    .line 54
    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationShadeWindowState;->isKeyguardShowingAndNotOccluded()Z

    .line 56
    move-result v4

    .line 59
    iget-boolean v5, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    .line 60
    iget-boolean v6, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    .line 62
    iget-boolean v7, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 64
    iget-boolean v8, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->headsUpNotificationShowing:Z

    .line 66
    iget v9, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->scrimsVisibility:I

    .line 68
    if-eqz v9, :cond_4

    .line 70
    move v9, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move v9, v1

    .line 74
    :goto_2
    iget v10, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->backgroundBlurRadius:I

    .line 75
    if-lez v10, :cond_5

    .line 77
    move v1, v2

    .line 79
    :cond_5
    iget-boolean p1, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    .line 80
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 87
    sget-object v10, Lcom/android/systemui/shade/ShadeWindowLogger$logIsExpanded$2;->INSTANCE:Lcom/android/systemui/shade/ShadeWindowLogger$logIsExpanded$2;

    .line 89
    const-string/jumbo v11, "systemui.shadewindow"

    .line 91
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeWindowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 94
    const/4 v12, 0x0

    .line 96
    invoke-virtual {p0, v11, v2, v10, v12}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 97
    move-result-object v2

    .line 100
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 101
    move-result-object v10

    .line 104
    invoke-interface {v2, v10}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 105
    invoke-interface {v2, v3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 108
    invoke-interface {v2, v4}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 111
    invoke-interface {v2, v5}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 114
    invoke-interface {v2, v6}, Lcom/android/systemui/log/LogMessage;->setBool4(Z)V

    .line 117
    invoke-interface {v2, v7}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 120
    invoke-interface {v2, v8}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 123
    const-wide/16 v3, 0x1

    .line 126
    const-wide/16 v5, 0x0

    .line 128
    if-eqz v9, :cond_6

    .line 130
    move-wide v7, v3

    .line 132
    goto :goto_3

    .line 133
    :cond_6
    move-wide v7, v5

    .line 134
    :goto_3
    invoke-interface {v2, v7, v8}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 135
    if-eqz v1, :cond_7

    .line 138
    goto :goto_4

    .line 140
    :cond_7
    move-wide v3, v5

    .line 141
    :goto_4
    invoke-interface {v2, v3, v4}, Lcom/android/systemui/log/LogMessage;->setLong2(J)V

    .line 142
    if-eqz p1, :cond_8

    .line 145
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 147
    goto :goto_5

    .line 149
    :cond_8
    const-wide/16 v3, 0x0

    .line 150
    :goto_5
    invoke-interface {v2, v3, v4}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 152
    invoke-virtual {p0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 155
    return v0
    .line 158
.end method

.method public final notifyStateChangedCallbacks()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;

    .line 8
    invoke-direct {v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;-><init>()V

    .line 10
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 13
    move-result-object v0

    .line 16
    new-instance v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;

    .line 17
    invoke-direct {v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda4;-><init>()V

    .line 19
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 22
    move-result-object v0

    .line 25
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 26
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Ljava/util/List;

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v0

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 49
    move-object v2, v1

    .line 50
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 53
    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    .line 55
    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    .line 57
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    .line 59
    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    .line 61
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    .line 63
    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    .line 65
    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dreaming:Z

    .line 67
    invoke-interface/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;->onStateChanged(ZZZZZZZ)V

    .line 69
    goto :goto_0

    .line 72
    :cond_0
    return-void
    .line 73
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isKeyguardScreenRotationAllowed()Z

    .line 6
    move-result p1

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLastKeyguardRotationAllowed:Z

    .line 10
    if-eq v0, p1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLastKeyguardRotationAllowed:Z

    .line 19
    :cond_0
    return-void
    .line 21
.end method

.method public final onRemoteInputActive(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 2
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->remoteInputActive:Z

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 6
    return-void
    .line 9
.end method

.method public onShadeExpansionFullyChanged(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result v2

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result p1

    .line 15
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelExpanded:Z

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final onThemeChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 7
    iget-boolean v1, v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mHasMediaArtwork:Z

    .line 9
    if-eqz v1, :cond_1

    .line 11
    iget-object v0, v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mBackdropColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mNeutralColorsLock:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 16
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    .line 18
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    .line 24
    move-result v1

    .line 27
    if-eqz v0, :cond_2

    .line 28
    or-int/lit8 v0, v1, 0x10

    .line 30
    or-int/lit16 v0, v0, 0x2000

    .line 32
    goto :goto_1

    .line 34
    :cond_2
    and-int/lit8 v0, v1, -0x11

    .line 35
    and-int/lit16 v0, v0, -0x2001

    .line 37
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mNotificationShadeView:Landroid/view/ViewGroup;

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 41
    return-void
    .line 44
.end method

.method public final registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 15
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    if-ne v1, p1, :cond_0

    .line 21
    return-void

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
    .line 35
.end method

.method public final setForcePluginOpen(Ljava/lang/Object;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 2
    if-eqz p2, :cond_0

    .line 4
    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    .line 6
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    .line 12
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 14
    :goto_0
    iget-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 17
    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceOpenTokens:Ljava/util/Set;

    .line 19
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 21
    move-result p2

    .line 24
    xor-int/lit8 p2, p2, 0x1

    .line 25
    iput-boolean p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 27
    iget-boolean p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 29
    if-eq p1, p2, :cond_1

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 33
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;

    .line 36
    if-eqz p0, :cond_1

    .line 38
    iget-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateTouchableRegion()V

    .line 44
    :cond_1
    return-void
    .line 47
.end method

.method public final setNotificationShadeFocusable(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 7
    sget-object v2, Lcom/android/systemui/shade/ShadeWindowLogger$logShadeFocusable$2;->INSTANCE:Lcom/android/systemui/shade/ShadeWindowLogger$logShadeFocusable$2;

    .line 9
    const/4 v3, 0x0

    .line 11
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeWindowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 12
    const-string/jumbo v4, "systemui.shadewindow"

    .line 14
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 17
    move-result-object v1

    .line 20
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 27
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 31
    return-void
    .line 34
.end method

.method public final setPanelVisible(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    .line 4
    if-ne v1, p1, :cond_0

    .line 6
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    .line 8
    if-ne v1, p1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLogger:Lcom/android/systemui/shade/ShadeWindowLogger;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 18
    sget-object v3, Lcom/android/systemui/shade/ShadeWindowLogger$logShadeVisibleAndFocusable$2;->INSTANCE:Lcom/android/systemui/shade/ShadeWindowLogger$logShadeVisibleAndFocusable$2;

    .line 20
    const/4 v4, 0x0

    .line 22
    iget-object v1, v1, Lcom/android/systemui/shade/ShadeWindowLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 23
    const-string/jumbo v5, "systemui.shadewindow"

    .line 25
    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 28
    move-result-object v2

    .line 31
    invoke-interface {v2, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 32
    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 35
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->panelVisible:Z

    .line 38
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->notificationShadeFocusable:Z

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 42
    return-void
    .line 45
.end method

.method public final setRequestTopUi(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 2
    if-eqz p2, :cond_0

    .line 4
    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    .line 6
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->componentsForcingTopUi:Ljava/util/Set;

    .line 12
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 14
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 17
    return-void
    .line 20
.end method
