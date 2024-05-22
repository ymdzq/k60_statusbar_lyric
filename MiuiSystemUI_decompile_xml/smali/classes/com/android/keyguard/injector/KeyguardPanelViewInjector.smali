.class public final Lcom/android/keyguard/injector/KeyguardPanelViewInjector;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/KeyguardMoveHelper$Callback;
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;
.implements Lcom/miui/systemui/controller/ForceBlackObserver$Callback;


# instance fields
.field public volatile constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

.field public mBarState:I

.field public mBouncerShowing:Z

.field public mColorRibbonsContainer:Lcom/android/keyguard/widget/ColorRibbonsContainer;

.field public final mConstantLockscreenInfoObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1;

.field public final mContext:Landroid/content/Context;

.field public mCurrentLockScreenInfo:Ljava/lang/String;

.field public volatile mDepthEffectEnable:Z

.field public mDoodleBgView:Landroid/view/View;

.field public mDoodleTextView:Lcom/miui/keyguardtemplate/doodle/DoodleView;

.field public mDoubleTapHelper:Lcom/android/keyguard/DoubleTapHelper;

.field public final mDoubleTapMinimumValidThresholdBottom:I

.field public final mDoubleTapMinimumValidThresholdTop:I

.field public final mDoubleTapMinimumWidthThreshold:I

.field public final mDualClockChangeListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mDualClockChangeListener$1;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mFaceUnlockApplyForKeyguardObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$2;

.field public mForceBlack:Z

.field public mHasNotification:Z

.field public mHorizontalMoveDistance:F

.field public mHorizontalMovePer:F

.field public volatile mIsActualDisplayDepth:Z

.field public mIsDefaultTheme:Z

.field public mIsOccludedByLeftScreenActivity:Z

.field public mIsShowDualClock:Z

.field public mIsSuperSavePowerMode:Z

.field public mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

.field public final mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

.field public mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

.field public final mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field public mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

.field public mKeyguardShowing:Z

.field public mKeyguardSignatureView:Lcom/miui/lockscreeninfo/LockScreenInfoLayout;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mKeyguardUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

.field public mLeftViewBackgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

.field public mLongClickDownTime:J

.field public mLongClickX:F

.field public mLongClickY:F

.field public final mMainHandler:Landroid/os/Handler;

.field public mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

.field public mMiuiWallpaperMattingSupportObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$3;

.field public final mMobileKeyGuardViews:Ljava/util/List;

.field public mNeedAlpha:Z

.field public mNegative1PageController:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

.field public mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

.field public mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mQsExpanded:Z

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSltObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSltObserver$1;

.field public mSmartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mSuperSaveModeChangeListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSuperSaveModeChangeListener$1;

.field public mSupportGestureWakeup:Z

.field public final mTouchScope:F

.field public final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWakeObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mWakeObserver$1;

.field public mWallpaperEffectTypeObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$1;

.field public mWallpaperMattingSupport:Z

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/UiOffloadThread;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p8

    .line 3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 5
    move-object v2, p1

    .line 8
    iput-object v2, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 9
    move-object v3, p3

    .line 11
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 12
    move-object v3, p4

    .line 14
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 15
    move-object/from16 v3, p5

    .line 17
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 19
    move-object/from16 v3, p6

    .line 21
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 23
    move-object/from16 v3, p9

    .line 25
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mExecutor:Ljava/util/concurrent/Executor;

    .line 27
    move-object/from16 v3, p10

    .line 29
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 31
    move-object/from16 v3, p11

    .line 33
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 35
    move-object/from16 v3, p12

    .line 37
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMobileKeyGuardViews:Ljava/util/List;

    .line 46
    move-object/from16 v3, p7

    .line 48
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 50
    iput-object v1, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMainHandler:Landroid/os/Handler;

    .line 52
    const-string v3, ""

    .line 54
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mCurrentLockScreenInfo:Ljava/lang/String;

    .line 56
    new-instance v3, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 58
    const/4 v5, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    const/16 v9, 0xf

    .line 64
    const/4 v10, 0x0

    .line 66
    move-object v4, v3

    .line 67
    invoke-direct/range {v4 .. v10}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;-><init>(Lcom/android/keyguard/wallpaper/entity/ClockInfo;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;Lcom/android/keyguard/wallpaper/entity/DoodleInfo;Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 71
    const/4 v3, 0x1

    .line 73
    iput-boolean v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsDefaultTheme:Z

    .line 74
    const/high16 v3, 0x41700000    # 15.0f

    .line 76
    iput v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mTouchScope:F

    .line 78
    new-instance v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mWakeObserver$1;

    .line 80
    invoke-direct {v3, p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mWakeObserver$1;-><init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;)V

    .line 82
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mWakeObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mWakeObserver$1;

    .line 85
    new-instance v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1;

    .line 87
    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1;-><init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Landroid/os/Handler;)V

    .line 89
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mConstantLockscreenInfoObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1;

    .line 92
    new-instance v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSuperSaveModeChangeListener$1;

    .line 94
    invoke-direct {v3, p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSuperSaveModeChangeListener$1;-><init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;)V

    .line 96
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSuperSaveModeChangeListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSuperSaveModeChangeListener$1;

    .line 99
    new-instance v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mDualClockChangeListener$1;

    .line 101
    invoke-direct {v3, p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mDualClockChangeListener$1;-><init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;)V

    .line 103
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDualClockChangeListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mDualClockChangeListener$1;

    .line 106
    new-instance v3, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSltObserver$1;

    .line 108
    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSltObserver$1;-><init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Landroid/os/Handler;)V

    .line 110
    iput-object v3, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSltObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mSltObserver$1;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    move-result-object v1

    .line 118
    const v3, 0x7f0702de    # @dimen/double_tap_sleep_valid_minimum_top '64.0dp'

    .line 119
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 122
    move-result v1

    .line 125
    iput v1, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoubleTapMinimumValidThresholdTop:I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    move-result-object v1

    .line 131
    const v3, 0x7f0702dd    # @dimen/double_tap_sleep_valid_minimum_bottom '54.0dp'

    .line 132
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 135
    move-result v1

    .line 138
    iput v1, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoubleTapMinimumValidThresholdBottom:I

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    move-result-object v1

    .line 144
    const v2, 0x7f0702df    # @dimen/double_tap_sleep_valid_minimum_width '40.5dp'

    .line 145
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 148
    move-result v1

    .line 151
    iput v1, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoubleTapMinimumWidthThreshold:I

    .line 152
    return-void
    .line 154
.end method

.method public static final access$updateKeyguardLayersLevel(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move-object v0, v1

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 8
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 10
    if-nez v2, :cond_1

    .line 12
    move-object v3, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move-object v3, v2

    .line 16
    :goto_0
    iget-object v3, v3, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 17
    if-nez v2, :cond_2

    .line 19
    goto :goto_1

    .line 21
    :cond_2
    move-object v1, v2

    .line 22
    :goto_1
    iget-object v1, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardForegroundLayer:Landroid/widget/FrameLayout;

    .line 23
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 25
    invoke-virtual {v2}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->getClockInfo()Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 27
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->getTemplateId()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 34
    const-string v4, "magazine_a"

    .line 35
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v4

    .line 40
    const/high16 v5, 0x3f800000    # 1.0f

    .line 41
    const/4 v6, 0x0

    .line 43
    if-eqz v4, :cond_6

    .line 44
    iget-boolean p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsShowDualClock:Z

    .line 46
    if-nez p0, :cond_6

    .line 48
    if-nez v1, :cond_3

    .line 50
    goto :goto_2

    .line 52
    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 53
    :goto_2
    if-nez v0, :cond_4

    .line 56
    goto :goto_3

    .line 58
    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 59
    :goto_3
    if-nez v3, :cond_5

    .line 62
    goto :goto_8

    .line 64
    :cond_5
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 65
    goto :goto_8

    .line 68
    :cond_6
    const-string p0, "magazine_b"

    .line 69
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    move-result p0

    .line 74
    if-eqz p0, :cond_a

    .line 75
    if-nez v1, :cond_7

    .line 77
    goto :goto_4

    .line 79
    :cond_7
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 80
    :goto_4
    if-nez v0, :cond_8

    .line 83
    goto :goto_5

    .line 85
    :cond_8
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 86
    :goto_5
    if-nez v3, :cond_9

    .line 89
    goto :goto_8

    .line 91
    :cond_9
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 92
    goto :goto_8

    .line 95
    :cond_a
    if-nez v1, :cond_b

    .line 96
    goto :goto_6

    .line 98
    :cond_b
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 99
    :goto_6
    if-nez v0, :cond_c

    .line 102
    goto :goto_7

    .line 104
    :cond_c
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 105
    :goto_7
    if-nez v3, :cond_d

    .line 108
    goto :goto_8

    .line 110
    :cond_d
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 111
    :goto_8
    return-void
    .line 114
.end method

.method public static getDoodleOrSmartFrameColors(IZLjava/util/Map;)Lkotlin/Triple;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "primary70"

    .line 3
    if-eq p0, v0, :cond_2

    .line 5
    const/4 v0, 0x2

    .line 7
    const-string/jumbo v2, "secondary60"

    .line 8
    if-eq p0, v0, :cond_1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    const-string/jumbo p0, "secondary10"

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo p0, "secondary20"

    .line 19
    :goto_0
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/Integer;

    .line 26
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Integer;

    .line 32
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Integer;

    .line 38
    const-string v1, "primary40"

    .line 40
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p2

    .line 45
    check-cast p2, Ljava/lang/Integer;

    .line 46
    goto :goto_2

    .line 48
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 52
    check-cast p0, Ljava/lang/Integer;

    .line 53
    const-string p1, "primary18"

    .line 55
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 60
    check-cast p1, Ljava/lang/Integer;

    .line 61
    const-string v0, "primary85"

    .line 63
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/Integer;

    .line 69
    const-string v1, "primary60"

    .line 71
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object p2

    .line 76
    check-cast p2, Ljava/lang/Integer;

    .line 77
    goto :goto_2

    .line 79
    :cond_2
    if-eqz p1, :cond_3

    .line 80
    const-string p0, "primary97"

    .line 82
    goto :goto_1

    .line 84
    :cond_3
    const-string/jumbo p0, "secondary97"

    .line 85
    :goto_1
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object p0

    .line 91
    check-cast p0, Ljava/lang/Integer;

    .line 92
    const-string p1, "primary7"

    .line 94
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 99
    check-cast p1, Ljava/lang/Integer;

    .line 100
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    move-result-object v0

    .line 105
    check-cast v0, Ljava/lang/Integer;

    .line 106
    const-string v1, "primary30"

    .line 108
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-result-object p2

    .line 113
    check-cast p2, Ljava/lang/Integer;

    .line 114
    :goto_2
    new-instance v1, Lkotlin/Triple;

    .line 116
    new-instance v2, Lkotlin/Pair;

    .line 118
    invoke-direct {v2, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-direct {v1, p0, p1, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    return-object v1
    .line 126
.end method


# virtual methods
.method public final initKeyguardViewCollection()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMobileKeyGuardViews:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 9
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    move-object v1, v2

    .line 14
    :cond_0
    iget-object v1, v1, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 15
    const/4 v3, 0x4

    .line 17
    if-eqz v1, :cond_1

    .line 18
    new-instance v4, Lcom/android/keyguard/widget/MobileView;

    .line 20
    iget-boolean v5, v1, Lcom/android/keyguard/clock/KeyguardClockContainer;->mClockCanScale:Z

    .line 22
    invoke-direct {v4, v1, v5, v3}, Lcom/android/keyguard/widget/MobileView;-><init>(Landroid/view/View;ZI)V

    .line 24
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 30
    if-nez v1, :cond_2

    .line 32
    move-object v1, v2

    .line 34
    :cond_2
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTranslationInfo:Landroid/widget/FrameLayout;

    .line 35
    const/4 v4, 0x6

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eqz v1, :cond_3

    .line 39
    new-instance v6, Lcom/android/keyguard/widget/MobileView;

    .line 41
    invoke-direct {v6, v1, v5, v4}, Lcom/android/keyguard/widget/MobileView;-><init>(Landroid/view/View;ZI)V

    .line 43
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 49
    if-nez v1, :cond_4

    .line 51
    goto :goto_0

    .line 53
    :cond_4
    move-object v2, v1

    .line 54
    :goto_0
    iget-object v1, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 55
    if-eqz v1, :cond_5

    .line 57
    new-instance v2, Lcom/android/keyguard/widget/MobileView;

    .line 59
    invoke-direct {v2, v1, v5, v4}, Lcom/android/keyguard/widget/MobileView;-><init>(Landroid/view/View;ZI)V

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleTextView:Lcom/miui/keyguardtemplate/doodle/DoodleView;

    .line 67
    if-eqz v1, :cond_6

    .line 69
    new-instance v2, Lcom/android/keyguard/widget/MobileView;

    .line 71
    invoke-direct {v2, v1, v5, v3}, Lcom/android/keyguard/widget/MobileView;-><init>(Landroid/view/View;ZI)V

    .line 73
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_6
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mColorRibbonsContainer:Lcom/android/keyguard/widget/ColorRibbonsContainer;

    .line 79
    if-eqz p0, :cond_7

    .line 81
    new-instance v1, Lcom/android/keyguard/widget/MobileView;

    .line 83
    invoke-direct {v1, p0, v5, v3}, Lcom/android/keyguard/widget/MobileView;-><init>(Landroid/view/View;ZI)V

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_7
    return-void
    .line 91
.end method

.method public final initScreenSize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 2
    const-string v1, "display"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 13
    move-result-object v0

    .line 16
    new-instance v1, Landroid/graphics/Point;

    .line 17
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 22
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 25
    iput v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mScreenWidth:I

    .line 27
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 29
    iput v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mScreenHeight:I

    .line 31
    return-void
    .line 33
.end method

.method public final isDoodleTemplate()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->getClockInfo()Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->getTemplateId()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    const-string v0, "doodle"

    .line 12
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public final onForceBlackChange(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mForceBlack:Z

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mForceBlack:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateForceBlackVisibility()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final onHorizontalMove(FZ)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mHorizontalMoveDistance:F

    .line 2
    cmpg-float v0, v0, p1

    .line 4
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mNeedAlpha:Z

    .line 15
    if-eq v0, p2, :cond_f

    .line 17
    :cond_1
    iput p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mHorizontalMoveDistance:F

    .line 19
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 21
    move-result p1

    .line 24
    const/high16 v0, 0x43870000    # 270.0f

    .line 25
    div-float/2addr p1, v0

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    cmpl-float v3, p1, v0

    .line 30
    if-lez v3, :cond_2

    .line 32
    move p1, v0

    .line 34
    :cond_2
    iget v3, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mHorizontalMovePer:F

    .line 35
    cmpg-float v3, v3, p1

    .line 37
    if-nez v3, :cond_3

    .line 39
    move v3, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move v3, v1

    .line 43
    :goto_1
    if-eqz v3, :cond_4

    .line 44
    iget-boolean v3, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mNeedAlpha:Z

    .line 46
    if-ne v3, p2, :cond_4

    .line 48
    return-void

    .line 50
    :cond_4
    iput-boolean p2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mNeedAlpha:Z

    .line 51
    iput p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mHorizontalMovePer:F

    .line 53
    const/4 v3, 0x0

    .line 55
    cmpg-float v3, p1, v3

    .line 56
    if-nez v3, :cond_5

    .line 58
    move v3, v2

    .line 60
    goto :goto_2

    .line 61
    :cond_5
    move v3, v1

    .line 62
    :goto_2
    if-nez v3, :cond_7

    .line 63
    cmpg-float v3, p1, v0

    .line 65
    if-nez v3, :cond_6

    .line 67
    move v3, v2

    .line 69
    goto :goto_3

    .line 70
    :cond_6
    move v3, v1

    .line 71
    :goto_3
    if-eqz v3, :cond_8

    .line 72
    :cond_7
    iget v3, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mHorizontalMoveDistance:F

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    const-string v5, "onHorizontalMove mHorizontalMoveDistance"

    .line 78
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 83
    const-string v3, ", per = "

    .line 86
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 91
    const-string v3, ", needAlpha = "

    .line 94
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 105
    const-string v4, "PanelView"

    .line 106
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_8
    iget-object v3, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMobileKeyGuardViews:Ljava/util/List;

    .line 111
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object v3

    .line 116
    :cond_9
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v4

    .line 120
    if-eqz v4, :cond_f

    .line 121
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object v4

    .line 126
    check-cast v4, Lcom/android/keyguard/widget/MobileView;

    .line 127
    if-eqz p2, :cond_e

    .line 129
    iget-boolean v5, v4, Lcom/android/keyguard/widget/MobileView;->needAlpha:Z

    .line 131
    if-eqz v5, :cond_e

    .line 133
    iget-object v5, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 135
    const/4 v6, 0x0

    .line 137
    if-nez v5, :cond_a

    .line 138
    move-object v5, v6

    .line 140
    :cond_a
    iget-object v5, v5, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 141
    if-eqz v5, :cond_b

    .line 143
    invoke-virtual {v5}, Lcom/android/keyguard/clock/KeyguardClockContainer;->getMHasNotification()Z

    .line 145
    move-result v5

    .line 148
    if-ne v5, v2, :cond_b

    .line 149
    move v5, v2

    .line 151
    goto :goto_5

    .line 152
    :cond_b
    move v5, v1

    .line 153
    :goto_5
    iget-object v7, v4, Lcom/android/keyguard/widget/MobileView;->view:Landroid/view/View;

    .line 154
    if-eqz v5, :cond_d

    .line 156
    iget-object v5, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 158
    if-nez v5, :cond_c

    .line 160
    goto :goto_6

    .line 162
    :cond_c
    move-object v6, v5

    .line 163
    :goto_6
    iget-object v5, v6, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 164
    if-ne v7, v5, :cond_d

    .line 166
    move v5, v2

    .line 168
    goto :goto_7

    .line 169
    :cond_d
    move v5, v1

    .line 170
    :goto_7
    if-nez v5, :cond_e

    .line 171
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->isDoodleTemplate()Z

    .line 173
    move-result v5

    .line 176
    if-nez v5, :cond_e

    .line 177
    int-to-float v5, v2

    .line 179
    sub-float/2addr v5, p1

    .line 180
    invoke-virtual {v7, v5}, Landroid/view/View;->setAlpha(F)V

    .line 181
    :cond_e
    iget-boolean v5, v4, Lcom/android/keyguard/widget/MobileView;->needTranslation:Z

    .line 184
    if-eqz v5, :cond_9

    .line 186
    const v5, 0x3dcccccd    # 0.1f

    .line 188
    mul-float/2addr v5, p1

    .line 191
    sub-float v5, v0, v5

    .line 192
    iget-object v4, v4, Lcom/android/keyguard/widget/MobileView;->view:Landroid/view/View;

    .line 194
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    .line 196
    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleY(F)V

    .line 199
    goto :goto_4

    .line 202
    :cond_f
    return-void
    .line 203
.end method

.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mBouncerShowing:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateKeyguardElementsVisibility()V

    .line 4
    return-void
    .line 7
.end method

.method public final onKeyguardOccludedChanged(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsOccludedByLeftScreenActivity:Z

    .line 2
    const-class v1, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    if-nez p1, :cond_4

    .line 9
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 11
    if-nez v0, :cond_0

    .line 13
    move-object v0, v2

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 22
    if-nez v0, :cond_1

    .line 24
    move-object v0, v2

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isOnShade()Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 33
    if-nez v0, :cond_3

    .line 35
    goto :goto_0

    .line 37
    :cond_3
    move-object v2, v0

    .line 38
    :goto_0
    invoke-virtual {v2, p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->resetViews(Z)V

    .line 39
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 45
    check-cast p1, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 46
    const-string/jumbo v0, "\u9501\u5c4f\u8d1f\u4e00\u5c4f\u8fd4\u56de"

    .line 48
    invoke-virtual {p1, v0}, Lcom/miui/systemui/analytics/SystemUIStat;->handleMainLockscreenExposeEvent(Ljava/lang/String;)V

    .line 51
    goto :goto_2

    .line 54
    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsOccludedByLeftScreenActivity:Z

    .line 55
    if-nez v0, :cond_8

    .line 57
    if-nez p1, :cond_8

    .line 59
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 61
    if-nez p1, :cond_5

    .line 63
    move-object p1, v2

    .line 65
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 66
    move-result p1

    .line 69
    if-nez p1, :cond_7

    .line 70
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 72
    if-nez p1, :cond_6

    .line 74
    goto :goto_1

    .line 76
    :cond_6
    move-object v2, p1

    .line 77
    :goto_1
    invoke-virtual {v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isOnShade()Z

    .line 78
    move-result p1

    .line 81
    if-eqz p1, :cond_8

    .line 82
    :cond_7
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 87
    check-cast p1, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 88
    const-string/jumbo v0, "\u76f8\u673a\u8fd4\u56de"

    .line 90
    invoke-virtual {p1, v0}, Lcom/miui/systemui/analytics/SystemUIStat;->handleMainLockscreenExposeEvent(Ljava/lang/String;)V

    .line 93
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 96
    const/4 v0, 0x0

    .line 98
    if-eqz p1, :cond_a

    .line 99
    iget p1, p1, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 101
    const/4 v1, 0x1

    .line 103
    if-nez p1, :cond_9

    .line 104
    move p1, v1

    .line 106
    goto :goto_3

    .line 107
    :cond_9
    move p1, v0

    .line 108
    :goto_3
    if-ne p1, v1, :cond_a

    .line 109
    move v0, v1

    .line 111
    :cond_a
    iput-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsOccludedByLeftScreenActivity:Z

    .line 112
    return-void
    .line 114
.end method

.method public final onKeyguardShowingChanged(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardShowing:Z

    .line 2
    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateKeyguardElementsVisibility()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 9
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    move-object v0, v1

    .line 14
    :cond_1
    if-nez p1, :cond_2

    .line 15
    iget-object v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    .line 17
    invoke-static {}, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->isGlobalNeedFeature()Z

    .line 19
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    :goto_0
    if-nez p1, :cond_4

    .line 26
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 28
    if-eqz v0, :cond_3

    .line 30
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 32
    const/4 v2, 0x1

    .line 34
    if-ne v0, v2, :cond_3

    .line 35
    goto :goto_1

    .line 37
    :cond_3
    const/4 v2, 0x0

    .line 38
    :goto_1
    if-eqz v2, :cond_4

    .line 39
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->resetKeyguardMoveHelper()V

    .line 41
    :cond_4
    if-eqz p1, :cond_6

    .line 44
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSmartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 46
    if-eqz p1, :cond_5

    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 55
    :cond_5
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 58
    if-eqz p1, :cond_6

    .line 60
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateShowDepthState()V

    .line 62
    :cond_6
    return-void
    .line 65
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    return-void
    .line 10
.end method

.method public final onLockScreenInfoChange(Ljava/lang/String;Lcom/miui/clock/module/ClockBean;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mCurrentLockScreenInfo:Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    .line 11
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 13
    const-class v1, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 22
    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 24
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mCurrentLockScreenInfo:Ljava/lang/String;

    .line 26
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 28
    invoke-virtual {p1}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->getClockInfo()Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->getTemplateId()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    const-string/jumbo v0, "smart_frame"

    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    move-result-object p2

    .line 52
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 53
    move-object v0, p0

    .line 55
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 56
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 58
    move-result v0

    .line 61
    const-string v1, "miui_15_default_lockscreen_info"

    .line 62
    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    move-result-object p1

    .line 71
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 74
    move-result p0

    .line 77
    const-string v0, "constant_lockscreen_info"

    .line 78
    invoke-static {p1, v0, p2, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 80
    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMainHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onLockScreenInfoChange$1;

    .line 86
    invoke-direct {v0, p2, p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onLockScreenInfoChange$1;-><init>(Lcom/miui/clock/module/ClockBean;Lcom/android/keyguard/injector/KeyguardPanelViewInjector;)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 94
    :catch_0
    move-exception p0

    .line 95
    const-string p1, "ConstantLockscreenInfoObserver change error "

    .line 96
    const-string p2, "KeyguardPanelViewInjector"

    .line 98
    invoke-static {p1, p0, p2}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void
    .line 103
.end method

.method public final onLockWallpaperChange(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 2
    move-result p1

    .line 5
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsDefaultTheme:Z

    .line 6
    if-eq p1, v0, :cond_0

    .line 8
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsDefaultTheme:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateKeyguardElementsVisibility()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onPartColorComputeComplete(Ljava/util/Map;IZZZZZ)V
    .locals 0

    .line 1
    const-string p3, "clock_style_rect"

    .line 2
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p3

    .line 7
    invoke-static {p3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 8
    move-result-object p3

    .line 11
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateDoodleInfo(ILjava/util/Map;)V

    .line 12
    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateSmartFrameInfo(ILjava/util/Map;)V

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardSignatureView:Lcom/miui/lockscreeninfo/LockScreenInfoLayout;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    xor-int/lit8 p2, p7, 0x1

    .line 22
    const-string p3, "magazine_script_rect"

    .line 24
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p0, p2, p1}, Lcom/miui/lockscreeninfo/LockScreenInfoLayout;->setClockPalette(ZLjava/util/Map;)V

    .line 34
    :cond_0
    return-void
    .line 37
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;IFFZZZZ)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v2, p1

    .line 4
    move/from16 v3, p7

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    move-result v0

    .line 11
    const-class v4, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 12
    const/4 v5, 0x3

    .line 14
    const/4 v6, 0x2

    .line 15
    const/4 v7, 0x1

    .line 16
    if-eqz v0, :cond_3

    .line 17
    const-wide/16 v8, 0x0

    .line 19
    if-eq v0, v7, :cond_2

    .line 21
    if-eq v0, v6, :cond_0

    .line 23
    if-eq v0, v5, :cond_2

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 28
    move-result v0

    .line 31
    iget v10, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLongClickX:F

    .line 32
    sub-float/2addr v0, v10

    .line 34
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 35
    move-result v0

    .line 38
    iget v10, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mTouchScope:F

    .line 39
    cmpl-float v0, v0, v10

    .line 41
    if-gtz v0, :cond_1

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 45
    move-result v0

    .line 48
    iget v11, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLongClickY:F

    .line 49
    sub-float/2addr v0, v11

    .line 51
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 52
    move-result v0

    .line 55
    cmpl-float v0, v0, v10

    .line 56
    if-lez v0, :cond_4

    .line 58
    :cond_1
    iput-wide v8, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLongClickDownTime:J

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    iget-wide v10, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLongClickDownTime:J

    .line 63
    cmp-long v0, v10, v8

    .line 65
    if-lez v0, :cond_4

    .line 67
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 72
    check-cast v0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 75
    move-result-wide v10

    .line 78
    iget-wide v12, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLongClickDownTime:J

    .line 79
    sub-long/2addr v10, v12

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    new-instance v12, Lcom/android/keyguard/event/KeyguardLongClickEvent;

    .line 85
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    move-result-object v10

    .line 90
    const v11, 0x15fde84

    .line 91
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v11

    .line 97
    invoke-direct {v12, v10, v11}, Lcom/android/keyguard/event/KeyguardLongClickEvent;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 98
    iget-object v0, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 101
    invoke-interface {v0, v12}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 103
    iput-wide v8, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLongClickDownTime:J

    .line 106
    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 109
    move-result v0

    .line 112
    iput v0, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLongClickX:F

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 115
    move-result v0

    .line 118
    iput v0, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLongClickY:F

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 121
    move-result-wide v8

    .line 124
    iput-wide v8, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLongClickDownTime:J

    .line 125
    :cond_4
    :goto_0
    iput-boolean v3, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mQsExpanded:Z

    .line 127
    iget-boolean v0, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsDefaultTheme:Z

    .line 129
    if-nez v0, :cond_5

    .line 131
    return v7

    .line 133
    :cond_5
    const/4 v0, 0x0

    .line 134
    const/4 v8, 0x0

    .line 135
    if-eqz p5, :cond_c

    .line 136
    if-nez p6, :cond_c

    .line 138
    iget-object v9, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 140
    if-eqz v9, :cond_a

    .line 142
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardMoveHelper;->isInCenterScreen()Z

    .line 144
    move-result v10

    .line 147
    if-eqz v10, :cond_6

    .line 148
    iget-boolean v10, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 150
    if-nez v10, :cond_8

    .line 152
    :cond_6
    iget v9, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 154
    if-nez v9, :cond_7

    .line 156
    move v9, v7

    .line 158
    goto :goto_1

    .line 159
    :cond_7
    move v9, v0

    .line 160
    :goto_1
    if-eqz v9, :cond_9

    .line 161
    :cond_8
    move v9, v7

    .line 163
    goto :goto_2

    .line 164
    :cond_9
    move v9, v0

    .line 165
    :goto_2
    if-ne v9, v7, :cond_a

    .line 166
    move v9, v7

    .line 168
    goto :goto_3

    .line 169
    :cond_a
    move v9, v0

    .line 170
    :goto_3
    if-nez v9, :cond_c

    .line 171
    iget-object v9, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 173
    if-eqz v9, :cond_b

    .line 175
    iget-boolean v9, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsCameraPreviewMoving:Z

    .line 177
    if-ne v9, v7, :cond_b

    .line 179
    move v9, v7

    .line 181
    goto :goto_4

    .line 182
    :cond_b
    move v9, v0

    .line 183
    :goto_4
    if-eqz v9, :cond_3d

    .line 184
    :cond_c
    if-nez v3, :cond_3d

    .line 186
    if-nez p8, :cond_3d

    .line 188
    iget-boolean v9, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mBouncerShowing:Z

    .line 190
    if-nez v9, :cond_3d

    .line 192
    iget-object v9, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 194
    if-nez v9, :cond_d

    .line 196
    move-object v9, v8

    .line 198
    :cond_d
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 199
    move-result v9

    .line 202
    if-nez v9, :cond_3d

    .line 203
    iget-object v9, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 205
    if-eqz v9, :cond_3d

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 209
    move-result v10

    .line 212
    iget-boolean v11, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mMotionCancelled:Z

    .line 213
    const-class v12, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 215
    if-eqz v11, :cond_e

    .line 217
    if-nez v10, :cond_39

    .line 219
    :cond_e
    invoke-static {v12}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 221
    move-result-object v11

    .line 224
    check-cast v11, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 225
    iget-boolean v11, v11, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePreViewVisible:Z

    .line 227
    if-nez v11, :cond_39

    .line 229
    sget-boolean v11, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 231
    if-eqz v11, :cond_f

    .line 233
    goto/16 :goto_17

    .line 235
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 237
    move-result v11

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 241
    move-result v12

    .line 244
    iput v12, v9, Lcom/android/keyguard/KeyguardMoveHelper;->y:F

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 247
    move-result v12

    .line 250
    iput v12, v9, Lcom/android/keyguard/KeyguardMoveHelper;->x:F

    .line 251
    if-eqz v11, :cond_11

    .line 253
    if-eq v11, v7, :cond_10

    .line 255
    if-eq v11, v6, :cond_10

    .line 257
    if-eq v11, v5, :cond_10

    .line 259
    goto :goto_5

    .line 261
    :cond_10
    iget-object v11, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 262
    if-eqz v11, :cond_13

    .line 264
    invoke-virtual {v11, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 266
    goto :goto_5

    .line 269
    :cond_11
    iput v12, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mInitialTouchX:F

    .line 270
    iget v11, v9, Lcom/android/keyguard/KeyguardMoveHelper;->y:F

    .line 272
    iput v11, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mInitialTouchY:F

    .line 274
    iget-object v11, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 276
    if-eqz v11, :cond_12

    .line 278
    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 280
    :cond_12
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 283
    move-result-object v11

    .line 286
    iput-object v11, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 287
    if-eqz v11, :cond_13

    .line 289
    invoke-virtual {v11, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 291
    :cond_13
    :goto_5
    if-eqz v10, :cond_38

    .line 294
    if-eq v10, v7, :cond_36

    .line 296
    if-eq v10, v6, :cond_16

    .line 298
    if-eq v10, v5, :cond_15

    .line 300
    const/4 v5, 0x5

    .line 302
    if-eq v10, v5, :cond_14

    .line 303
    goto/16 :goto_16

    .line 305
    :cond_14
    iput-boolean v7, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mMotionCancelled:Z

    .line 307
    iput-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 309
    iget v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->x:F

    .line 311
    invoke-virtual {v9, v0, v7}, Lcom/android/keyguard/KeyguardMoveHelper;->endMotion(FZ)V

    .line 313
    goto/16 :goto_16

    .line 316
    :cond_15
    iput-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 318
    iget v5, v9, Lcom/android/keyguard/KeyguardMoveHelper;->x:F

    .line 320
    iget v10, v9, Lcom/android/keyguard/KeyguardMoveHelper;->y:F

    .line 322
    invoke-virtual {v9, v5, v10, v0}, Lcom/android/keyguard/KeyguardMoveHelper;->finishAction(FFZ)V

    .line 324
    goto/16 :goto_16

    .line 327
    :cond_16
    iget v5, v9, Lcom/android/keyguard/KeyguardMoveHelper;->x:F

    .line 329
    iget v10, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mInitialTouchX:F

    .line 331
    sub-float/2addr v5, v10

    .line 333
    iget v10, v9, Lcom/android/keyguard/KeyguardMoveHelper;->y:F

    .line 334
    iget v11, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mInitialTouchY:F

    .line 336
    sub-float/2addr v10, v11

    .line 338
    const/4 v11, 0x0

    .line 339
    cmpl-float v12, v5, v11

    .line 340
    if-lez v12, :cond_17

    .line 342
    move v0, v7

    .line 344
    :cond_17
    iput-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 345
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 347
    move-result v0

    .line 350
    iget v12, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mCenterScreenTouchSlopTranslation:F

    .line 351
    sub-float/2addr v0, v12

    .line 353
    cmpg-float v12, v0, v11

    .line 354
    if-gez v12, :cond_18

    .line 356
    move v12, v11

    .line 358
    goto :goto_6

    .line 359
    :cond_18
    move v12, v0

    .line 360
    :goto_6
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 361
    move-result v0

    .line 364
    iget v13, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mCenterScreenTouchSlopTranslation:F

    .line 365
    sub-float/2addr v0, v13

    .line 367
    cmpg-float v14, v0, v11

    .line 368
    if-gez v14, :cond_19

    .line 370
    goto :goto_7

    .line 372
    :cond_19
    move v11, v0

    .line 373
    :goto_7
    iget-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 374
    const-string v14, "com.android.keyguard.negative.IKeyguardOverlay"

    .line 376
    const-string v15, "LockScreenMagazineClient"

    .line 378
    if-eqz v0, :cond_25

    .line 380
    iget-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsCameraPreviewMoving:Z

    .line 382
    if-eqz v0, :cond_1a

    .line 384
    iget-object v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mRightMoveController:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 386
    iget v5, v9, Lcom/android/keyguard/KeyguardMoveHelper;->x:F

    .line 388
    add-float/2addr v5, v13

    .line 390
    iget v9, v9, Lcom/android/keyguard/KeyguardMoveHelper;->y:F

    .line 391
    add-float/2addr v9, v13

    .line 393
    invoke-virtual {v0, v5, v9}, Lcom/android/keyguard/KeyguardMoveRightController;->onTouchMove(FF)Z

    .line 394
    goto/16 :goto_16

    .line 397
    :cond_1a
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardMoveHelper;->isInCenterScreen()Z

    .line 399
    move-result v0

    .line 402
    if-eqz v0, :cond_1b

    .line 403
    iget-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 405
    if-nez v0, :cond_1d

    .line 407
    :cond_1b
    iget v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 409
    if-nez v0, :cond_1c

    .line 411
    move v0, v7

    .line 413
    goto :goto_8

    .line 414
    :cond_1c
    const/4 v0, 0x0

    .line 415
    :goto_8
    if-eqz v0, :cond_1e

    .line 416
    :cond_1d
    move v0, v7

    .line 418
    goto :goto_9

    .line 419
    :cond_1e
    const/4 v0, 0x0

    .line 420
    :goto_9
    if-eqz v0, :cond_24

    .line 421
    iget-object v5, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftMoveController:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 423
    iget v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->x:F

    .line 425
    iget v10, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mCenterScreenTouchSlopTranslation:F

    .line 427
    add-float/2addr v0, v10

    .line 429
    iget-boolean v10, v5, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mTouchDownInitial:Z

    .line 430
    if-eqz v10, :cond_22

    .line 432
    invoke-static {}, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->isLeftViewLaunchActivity()Z

    .line 434
    move-result v10

    .line 437
    if-nez v10, :cond_22

    .line 438
    iget v10, v5, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mInitialTouchX:F

    .line 440
    sub-float/2addr v0, v10

    .line 442
    iget-object v10, v5, Lcom/android/keyguard/BaseKeyguardMoveController;->mScreenPoint:Landroid/graphics/Point;

    .line 443
    iget v10, v10, Landroid/graphics/Point;->x:I

    .line 445
    int-to-float v10, v10

    .line 447
    div-float/2addr v0, v10

    .line 448
    iget-object v10, v5, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 449
    iget-object v11, v5, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 451
    iget-object v11, v11, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 453
    iget-boolean v11, v11, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 455
    if-eqz v11, :cond_1f

    .line 457
    goto :goto_a

    .line 459
    :cond_1f
    neg-float v0, v0

    .line 460
    :goto_a
    invoke-virtual {v10}, Lcom/android/keyguard/negative/LockScreenMagazineClient;->isConnected()Z

    .line 461
    move-result v11

    .line 464
    if-nez v11, :cond_20

    .line 465
    goto :goto_b

    .line 467
    :cond_20
    :try_start_0
    iget-object v10, v10, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mOverlay:Lcom/android/keyguard/negative/IKeyguardOverlay;

    .line 468
    check-cast v10, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;

    .line 470
    iget-object v11, v10, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 472
    invoke-static {v11}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 474
    move-result-object v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :try_start_1
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 481
    iget-object v0, v10, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 484
    invoke-interface {v0, v6, v11, v8, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    :try_start_2
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 489
    goto :goto_b

    .line 492
    :catchall_0
    move-exception v0

    .line 493
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 494
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    new-instance v10, Ljava/lang/StringBuilder;

    .line 499
    const-string/jumbo v11, "updateMove "

    .line 501
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 507
    move-result-object v0

    .line 510
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    move-result-object v0

    .line 517
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_b
    iget v0, v5, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mScrollProgress:F

    .line 521
    const/4 v10, 0x0

    .line 523
    cmpl-float v0, v0, v10

    .line 524
    if-eqz v0, :cond_21

    .line 526
    iget-object v0, v5, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 528
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    const/4 v0, 0x0

    .line 533
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateCanShowGxzw(Z)V

    .line 534
    :cond_21
    move v0, v7

    .line 537
    goto :goto_c

    .line 538
    :cond_22
    const/4 v0, 0x0

    .line 539
    :goto_c
    if-nez v0, :cond_37

    .line 540
    iget-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 542
    if-eqz v0, :cond_23

    .line 544
    move v11, v12

    .line 546
    goto :goto_d

    .line 547
    :cond_23
    neg-float v0, v12

    .line 548
    move v11, v0

    .line 549
    :goto_d
    const/4 v14, 0x0

    .line 550
    const/4 v12, 0x0

    .line 551
    const/4 v13, 0x0

    .line 552
    const/4 v15, 0x0

    .line 553
    move-object v10, v9

    .line 554
    invoke-virtual/range {v10 .. v15}, Lcom/android/keyguard/KeyguardMoveHelper;->setTranslation(FZZZZ)V

    .line 555
    goto/16 :goto_16

    .line 558
    :cond_24
    iget-object v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mRightMoveController:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 560
    iget v5, v9, Lcom/android/keyguard/KeyguardMoveHelper;->x:F

    .line 562
    iget v10, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mCenterScreenTouchSlopTranslation:F

    .line 564
    add-float/2addr v5, v10

    .line 566
    iget v11, v9, Lcom/android/keyguard/KeyguardMoveHelper;->y:F

    .line 567
    add-float/2addr v11, v10

    .line 569
    invoke-virtual {v0, v5, v11}, Lcom/android/keyguard/KeyguardMoveRightController;->onTouchMove(FF)Z

    .line 570
    move-result v0

    .line 573
    iput-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsCameraPreviewMoving:Z

    .line 574
    goto/16 :goto_16

    .line 576
    :cond_25
    const/4 v0, 0x0

    .line 578
    cmpl-float v12, v12, v0

    .line 579
    if-gtz v12, :cond_27

    .line 581
    cmpl-float v0, v11, v0

    .line 583
    if-gtz v0, :cond_27

    .line 585
    iget-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsTouchRightIcon:Z

    .line 587
    if-eqz v0, :cond_26

    .line 589
    goto :goto_e

    .line 591
    :cond_26
    const/4 v0, 0x0

    .line 592
    goto :goto_f

    .line 593
    :cond_27
    :goto_e
    move v0, v7

    .line 594
    :goto_f
    if-eqz v0, :cond_37

    .line 595
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 597
    move-result v0

    .line 600
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 601
    move-result v5

    .line 604
    cmpl-float v0, v0, v5

    .line 605
    if-lez v0, :cond_28

    .line 607
    move v0, v7

    .line 609
    goto :goto_10

    .line 610
    :cond_28
    const/4 v0, 0x0

    .line 611
    :goto_10
    if-eqz v0, :cond_2b

    .line 612
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardMoveHelper;->isInCenterScreen()Z

    .line 614
    move-result v0

    .line 617
    if-eqz v0, :cond_2d

    .line 618
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardMoveHelper;->isInCenterScreen()Z

    .line 620
    move-result v0

    .line 623
    if-eqz v0, :cond_29

    .line 624
    iget-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 626
    if-eqz v0, :cond_29

    .line 628
    iget-object v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftIconLayout:Landroid/view/ViewGroup;

    .line 630
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 632
    move-result v0

    .line 635
    if-nez v0, :cond_29

    .line 636
    move v0, v7

    .line 638
    goto :goto_11

    .line 639
    :cond_29
    const/4 v0, 0x0

    .line 640
    :goto_11
    if-nez v0, :cond_2d

    .line 641
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardMoveHelper;->isInCenterScreen()Z

    .line 643
    move-result v0

    .line 646
    if-eqz v0, :cond_2a

    .line 647
    iget-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 649
    if-nez v0, :cond_2a

    .line 651
    iget-object v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mRightIconLayout:Landroid/view/ViewGroup;

    .line 653
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 655
    move-result v0

    .line 658
    if-nez v0, :cond_2a

    .line 659
    iget-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsTouchRightIcon:Z

    .line 661
    if-nez v0, :cond_2a

    .line 663
    move v0, v7

    .line 665
    goto :goto_12

    .line 666
    :cond_2a
    const/4 v0, 0x0

    .line 667
    :goto_12
    if-nez v0, :cond_2d

    .line 668
    :cond_2b
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardMoveHelper;->isInCenterScreen()Z

    .line 670
    move-result v0

    .line 673
    if-eqz v0, :cond_2c

    .line 674
    iget-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 676
    if-nez v0, :cond_2c

    .line 678
    iget-object v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mRightIconLayout:Landroid/view/ViewGroup;

    .line 680
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 682
    move-result v0

    .line 685
    if-nez v0, :cond_2c

    .line 686
    iget-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsTouchRightIcon:Z

    .line 688
    if-eqz v0, :cond_2c

    .line 690
    move v0, v7

    .line 692
    goto :goto_13

    .line 693
    :cond_2c
    const/4 v0, 0x0

    .line 694
    :goto_13
    if-eqz v0, :cond_2e

    .line 695
    :cond_2d
    move v0, v7

    .line 697
    goto :goto_14

    .line 698
    :cond_2e
    const/4 v0, 0x0

    .line 699
    :goto_14
    if-eqz v0, :cond_35

    .line 700
    iget-object v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mCallback:Lcom/android/keyguard/KeyguardMoveHelper$Callback;

    .line 702
    check-cast v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 704
    iget-object v5, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 706
    if-eqz v5, :cond_2f

    .line 708
    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 710
    :cond_2f
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 713
    if-nez v0, :cond_30

    .line 715
    move-object v0, v8

    .line 717
    :cond_30
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 718
    const/4 v5, 0x0

    .line 720
    iput-boolean v5, v0, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 721
    iput-boolean v7, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 723
    iget-object v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mRightMoveController:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 725
    iget v5, v9, Lcom/android/keyguard/KeyguardMoveHelper;->x:F

    .line 727
    iget v10, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mCenterScreenTouchSlopTranslation:F

    .line 729
    add-float/2addr v5, v10

    .line 731
    iget v11, v9, Lcom/android/keyguard/KeyguardMoveHelper;->y:F

    .line 732
    add-float/2addr v11, v10

    .line 734
    iget-boolean v10, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsTouchRightIcon:Z

    .line 735
    invoke-virtual {v0, v5, v11, v10}, Lcom/android/keyguard/KeyguardMoveRightController;->onTouchDown(FFZ)V

    .line 737
    iget-object v5, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftMoveController:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 740
    iget v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->x:F

    .line 742
    iget v10, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mCenterScreenTouchSlopTranslation:F

    .line 744
    add-float/2addr v0, v10

    .line 746
    iget-object v10, v5, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 747
    iget-object v10, v10, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 749
    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardMoveHelper;->isInCenterScreen()Z

    .line 751
    move-result v10

    .line 754
    if-eqz v10, :cond_33

    .line 755
    iget-object v10, v5, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 757
    iget-object v10, v10, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 759
    iget-boolean v10, v10, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 761
    if-eqz v10, :cond_33

    .line 763
    invoke-static {}, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->isLeftViewLaunchActivity()Z

    .line 765
    move-result v10

    .line 768
    if-nez v10, :cond_33

    .line 769
    iput v0, v5, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mInitialTouchX:F

    .line 771
    iget-object v0, v5, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 773
    invoke-virtual {v0}, Lcom/android/keyguard/negative/LockScreenMagazineClient;->isConnected()Z

    .line 775
    move-result v10

    .line 778
    if-nez v10, :cond_31

    .line 779
    goto :goto_15

    .line 781
    :cond_31
    :try_start_3
    iget-object v0, v0, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mOverlay:Lcom/android/keyguard/negative/IKeyguardOverlay;

    .line 782
    check-cast v0, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;

    .line 784
    iget-object v10, v0, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 786
    invoke-static {v10}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 788
    move-result-object v10
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 791
    :try_start_4
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 792
    iget-object v0, v0, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 795
    invoke-interface {v0, v7, v10, v8, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 797
    :try_start_5
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 800
    goto :goto_15

    .line 803
    :catchall_1
    move-exception v0

    .line 804
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 805
    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 808
    :catch_1
    move-exception v0

    .line 809
    new-instance v10, Ljava/lang/StringBuilder;

    .line 810
    const-string/jumbo v11, "startMove "

    .line 812
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 818
    move-result-object v0

    .line 821
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 825
    move-result-object v0

    .line 828
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :goto_15
    iget v0, v5, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mScrollProgress:F

    .line 832
    const/4 v10, 0x0

    .line 834
    cmpl-float v0, v0, v10

    .line 835
    if-eqz v0, :cond_32

    .line 837
    iget-object v0, v5, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 839
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    const/4 v0, 0x0

    .line 844
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateCanShowGxzw(Z)V

    .line 845
    :cond_32
    iput-boolean v7, v5, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mTouchDownInitial:Z

    .line 848
    :cond_33
    const/4 v14, 0x0

    .line 850
    const/4 v12, 0x0

    .line 851
    const/4 v13, 0x0

    .line 852
    const/4 v15, 0x0

    .line 853
    const/4 v11, 0x0

    .line 854
    move-object v10, v9

    .line 855
    invoke-virtual/range {v10 .. v15}, Lcom/android/keyguard/KeyguardMoveHelper;->setTranslation(FZZZZ)V

    .line 856
    iget-object v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mRightMoveController:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 859
    iget-boolean v0, v0, Lcom/android/keyguard/BaseKeyguardMoveController;->mIsNoMistakeTouch:Z

    .line 861
    if-nez v0, :cond_34

    .line 863
    iget-object v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mLeftMoveController:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 865
    iget-boolean v0, v0, Lcom/android/keyguard/BaseKeyguardMoveController;->mIsNoMistakeTouch:Z

    .line 867
    if-eqz v0, :cond_37

    .line 869
    :cond_34
    iget-object v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 871
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 873
    sget-object v5, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 876
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace(Lcom/android/keyguard/FaceAuthUiEvent;)V

    .line 878
    goto :goto_16

    .line 881
    :cond_35
    iput-boolean v7, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mMotionCancelled:Z

    .line 882
    goto :goto_18

    .line 884
    :cond_36
    iput-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 885
    iget v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->x:F

    .line 887
    iget v5, v9, Lcom/android/keyguard/KeyguardMoveHelper;->y:F

    .line 889
    invoke-virtual {v9, v0, v5, v7}, Lcom/android/keyguard/KeyguardMoveHelper;->finishAction(FFZ)V

    .line 891
    :cond_37
    :goto_16
    move v0, v7

    .line 894
    goto :goto_19

    .line 895
    :cond_38
    iput-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mMotionCancelled:Z

    .line 896
    iput-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 898
    iget-object v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 900
    iget v5, v9, Lcom/android/keyguard/KeyguardMoveHelper;->x:F

    .line 902
    iget v10, v9, Lcom/android/keyguard/KeyguardMoveHelper;->y:F

    .line 904
    invoke-static {v0, v5, v10}, Lcom/android/keyguard/KeyguardMoveHelper;->isOnIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FF)Z

    .line 906
    move-result v0

    .line 909
    iput-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mIsTouchRightIcon:Z

    .line 910
    goto :goto_18

    .line 912
    :cond_39
    :goto_17
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_KEYGUARD:Z

    .line 913
    if-eqz v0, :cond_3a

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    .line 917
    const-string v5, " horizontalMoveEvent is discarded Cancelled\uff1a"

    .line 919
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 921
    iget-boolean v5, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mMotionCancelled:Z

    .line 924
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 926
    const-string v5, " isMagazinePreview:"

    .line 929
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    invoke-static {v12}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 934
    move-result-object v5

    .line 937
    check-cast v5, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 938
    iget-boolean v5, v5, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePreViewVisible:Z

    .line 940
    const-string v11, "KeyguardMoveHelper"

    .line 942
    invoke-static {v0, v5, v11}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 944
    :cond_3a
    const/4 v0, 0x3

    .line 947
    if-eq v10, v0, :cond_3b

    .line 948
    if-ne v10, v7, :cond_3c

    .line 950
    :cond_3b
    const/4 v0, 0x0

    .line 952
    iput-boolean v0, v9, Lcom/android/keyguard/KeyguardMoveHelper;->mMotionCancelled:Z

    .line 953
    :cond_3c
    :goto_18
    const/4 v0, 0x0

    .line 955
    :goto_19
    if-ne v0, v7, :cond_3d

    .line 956
    move v0, v7

    .line 958
    goto :goto_1a

    .line 959
    :cond_3d
    const/4 v0, 0x0

    .line 960
    :goto_1a
    iget-object v5, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 961
    if-eqz v5, :cond_3e

    .line 963
    iget-boolean v9, v5, Lcom/android/keyguard/KeyguardMoveHelper;->mIsCameraPreviewMoving:Z

    .line 965
    if-ne v9, v7, :cond_3e

    .line 967
    move v9, v7

    .line 969
    goto :goto_1b

    .line 970
    :cond_3e
    const/4 v9, 0x0

    .line 971
    :goto_1b
    if-nez v9, :cond_64

    .line 972
    if-eqz v5, :cond_40

    .line 974
    iget v5, v5, Lcom/android/keyguard/KeyguardMoveHelper;->mCurrentScreen:I

    .line 976
    if-nez v5, :cond_3f

    .line 978
    move v5, v7

    .line 980
    goto :goto_1c

    .line 981
    :cond_3f
    const/4 v5, 0x0

    .line 982
    :goto_1c
    if-ne v5, v7, :cond_40

    .line 983
    move v5, v7

    .line 985
    goto :goto_1d

    .line 986
    :cond_40
    const/4 v5, 0x0

    .line 987
    :goto_1d
    if-eqz v5, :cond_41

    .line 988
    goto/16 :goto_27

    .line 990
    :cond_41
    iget-object v5, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 992
    if-nez v5, :cond_42

    .line 994
    move-object v5, v8

    .line 996
    :cond_42
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 997
    move-result v5

    .line 1000
    if-nez v5, :cond_51

    .line 1001
    iget-boolean v5, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSupportGestureWakeup:Z

    .line 1003
    if-eqz v5, :cond_51

    .line 1005
    iget-object v5, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 1007
    iget-boolean v5, v5, Lcom/android/keyguard/KeyguardCommonSettingObserver;->doubleTapToSleep:Z

    .line 1009
    if-eqz v5, :cond_51

    .line 1011
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1013
    move-result v5

    .line 1016
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1017
    move-result v9

    .line 1020
    iget v10, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoubleTapMinimumWidthThreshold:I

    .line 1021
    int-to-float v11, v10

    .line 1023
    cmpl-float v11, v5, v11

    .line 1024
    if-ltz v11, :cond_43

    .line 1026
    iget v11, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mScreenWidth:I

    .line 1028
    sub-int/2addr v11, v10

    .line 1030
    int-to-float v10, v11

    .line 1031
    cmpg-float v5, v5, v10

    .line 1032
    if-gtz v5, :cond_43

    .line 1034
    iget v5, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoubleTapMinimumValidThresholdTop:I

    .line 1036
    int-to-float v5, v5

    .line 1038
    cmpl-float v5, v9, v5

    .line 1039
    if-ltz v5, :cond_43

    .line 1041
    iget v5, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mScreenHeight:I

    .line 1043
    iget v10, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoubleTapMinimumValidThresholdBottom:I

    .line 1045
    sub-int/2addr v5, v10

    .line 1047
    int-to-float v5, v5

    .line 1048
    cmpg-float v5, v9, v5

    .line 1049
    if-gtz v5, :cond_43

    .line 1051
    move v5, v7

    .line 1053
    goto :goto_1e

    .line 1054
    :cond_43
    const/4 v5, 0x0

    .line 1055
    :goto_1e
    if-eqz v5, :cond_51

    .line 1056
    iget-object v5, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoubleTapHelper:Lcom/android/keyguard/DoubleTapHelper;

    .line 1058
    if-nez v5, :cond_44

    .line 1060
    move-object v5, v8

    .line 1062
    :cond_44
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1063
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1066
    move-result v9

    .line 1069
    if-eqz v9, :cond_4f

    .line 1070
    if-eq v9, v7, :cond_47

    .line 1072
    if-eq v9, v6, :cond_46

    .line 1074
    const/4 v4, 0x3

    .line 1076
    if-eq v9, v4, :cond_45

    .line 1077
    goto/16 :goto_21

    .line 1079
    :cond_45
    invoke-virtual {v5}, Lcom/android/keyguard/DoubleTapHelper;->makeInactive()V

    .line 1081
    goto/16 :goto_21

    .line 1084
    :cond_46
    invoke-virtual {v5, v2}, Lcom/android/keyguard/DoubleTapHelper;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    .line 1086
    move-result v4

    .line 1089
    if-nez v4, :cond_51

    .line 1090
    invoke-virtual {v5}, Lcom/android/keyguard/DoubleTapHelper;->makeInactive()V

    .line 1092
    goto/16 :goto_21

    .line 1095
    :cond_47
    invoke-virtual {v5, v2}, Lcom/android/keyguard/DoubleTapHelper;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    .line 1097
    move-result v9

    .line 1100
    if-eqz v9, :cond_4e

    .line 1101
    iget-boolean v9, v5, Lcom/android/keyguard/DoubleTapHelper;->mTouchOnFod:Z

    .line 1103
    if-nez v9, :cond_4e

    .line 1105
    iget-boolean v9, v5, Lcom/android/keyguard/DoubleTapHelper;->mActivated:Z

    .line 1107
    if-nez v9, :cond_49

    .line 1109
    if-nez v9, :cond_48

    .line 1111
    iput-boolean v7, v5, Lcom/android/keyguard/DoubleTapHelper;->mActivated:Z

    .line 1113
    iget-object v4, v5, Lcom/android/keyguard/DoubleTapHelper;->mActivationListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$1;

    .line 1115
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1117
    :cond_48
    iget-object v4, v5, Lcom/android/keyguard/DoubleTapHelper;->mTapTimeoutRunnable:Lcom/android/keyguard/DoubleTapHelper$$ExternalSyntheticLambda0;

    .line 1120
    iget-wide v9, v5, Lcom/android/keyguard/DoubleTapHelper;->mDoubleTapTimeOutMs:J

    .line 1122
    iget-object v11, v5, Lcom/android/keyguard/DoubleTapHelper;->mView:Landroid/view/View;

    .line 1124
    invoke-virtual {v11, v4, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1126
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 1129
    move-result v4

    .line 1132
    iput v4, v5, Lcom/android/keyguard/DoubleTapHelper;->mActivationX:F

    .line 1133
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 1135
    move-result v4

    .line 1138
    iput v4, v5, Lcom/android/keyguard/DoubleTapHelper;->mActivationY:F

    .line 1139
    goto :goto_21

    .line 1141
    :cond_49
    if-nez v9, :cond_4a

    .line 1142
    goto :goto_1f

    .line 1144
    :cond_4a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 1145
    move-result v9

    .line 1148
    iget v10, v5, Lcom/android/keyguard/DoubleTapHelper;->mActivationX:F

    .line 1149
    sub-float/2addr v9, v10

    .line 1151
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 1152
    move-result v9

    .line 1155
    iget v10, v5, Lcom/android/keyguard/DoubleTapHelper;->mDoubleTapSlop:F

    .line 1156
    cmpg-float v9, v9, v10

    .line 1158
    if-gez v9, :cond_4b

    .line 1160
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 1162
    move-result v9

    .line 1165
    iget v11, v5, Lcom/android/keyguard/DoubleTapHelper;->mActivationY:F

    .line 1166
    sub-float/2addr v9, v11

    .line 1168
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 1169
    move-result v9

    .line 1172
    cmpg-float v9, v9, v10

    .line 1173
    if-gez v9, :cond_4b

    .line 1175
    :goto_1f
    move v9, v7

    .line 1177
    goto :goto_20

    .line 1178
    :cond_4b
    const/4 v9, 0x0

    .line 1179
    :goto_20
    if-eqz v9, :cond_4d

    .line 1180
    invoke-virtual {v5}, Lcom/android/keyguard/DoubleTapHelper;->makeInactive()V

    .line 1182
    iget-object v5, v5, Lcom/android/keyguard/DoubleTapHelper;->mDoubleTapListener:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$2;

    .line 1185
    iget-object v5, v5, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$init$2;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 1187
    iget-object v5, v5, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPowerManager:Landroid/os/PowerManager;

    .line 1189
    if-nez v5, :cond_4c

    .line 1191
    move-object v5, v8

    .line 1193
    :cond_4c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1194
    move-result-wide v9

    .line 1197
    invoke-virtual {v5, v9, v10}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1198
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1201
    move-result-object v4

    .line 1204
    check-cast v4, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 1205
    const-string/jumbo v5, "\u53cc\u51fb\u606f\u5c4f"

    .line 1207
    invoke-virtual {v4, v5}, Lcom/miui/systemui/analytics/SystemUIStat;->handleKeyguardActionEvent(Ljava/lang/String;)V

    .line 1210
    goto :goto_21

    .line 1213
    :cond_4d
    invoke-virtual {v5}, Lcom/android/keyguard/DoubleTapHelper;->makeInactive()V

    .line 1214
    goto :goto_21

    .line 1217
    :cond_4e
    invoke-virtual {v5}, Lcom/android/keyguard/DoubleTapHelper;->makeInactive()V

    .line 1218
    goto :goto_21

    .line 1221
    :cond_4f
    iget-boolean v4, v5, Lcom/android/keyguard/DoubleTapHelper;->mTouchOnFod:Z

    .line 1222
    if-eqz v4, :cond_50

    .line 1224
    goto :goto_21

    .line 1226
    :cond_50
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 1227
    move-result v4

    .line 1230
    iput v4, v5, Lcom/android/keyguard/DoubleTapHelper;->mDownX:F

    .line 1231
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 1233
    move-result v4

    .line 1236
    iput v4, v5, Lcom/android/keyguard/DoubleTapHelper;->mDownY:F

    .line 1237
    :cond_51
    :goto_21
    iget-boolean v4, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mQsExpanded:Z

    .line 1239
    if-nez v4, :cond_53

    .line 1241
    iget-object v4, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 1243
    if-nez v4, :cond_52

    .line 1245
    move-object v4, v8

    .line 1247
    :cond_52
    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardEditorHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1248
    :cond_53
    if-nez v3, :cond_5f

    .line 1251
    iget-object v3, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 1253
    if-nez v3, :cond_54

    .line 1255
    move-object v3, v8

    .line 1257
    :cond_54
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 1258
    move-result v3

    .line 1261
    if-nez v3, :cond_5f

    .line 1262
    iget-object v3, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 1264
    if-nez v3, :cond_55

    .line 1266
    move-object v3, v8

    .line 1268
    :cond_55
    iget-boolean v4, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsKeyguardSupportDisplayMagazine:Z

    .line 1269
    if-nez v4, :cond_56

    .line 1271
    const/4 v3, 0x0

    .line 1273
    goto/16 :goto_24

    .line 1274
    :cond_56
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1276
    move-result v4

    .line 1279
    if-nez v4, :cond_57

    .line 1280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1282
    move-result-wide v4

    .line 1285
    iput-wide v4, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mCurrentTouchDownTime:J

    .line 1286
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1288
    move-result v4

    .line 1291
    iput v4, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mInitialTouchX:F

    .line 1292
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1294
    move-result v4

    .line 1297
    iput v4, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mInitialTouchY:F

    .line 1298
    goto/16 :goto_22

    .line 1300
    :cond_57
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1302
    move-result v4

    .line 1305
    if-ne v4, v7, :cond_5c

    .line 1306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1308
    move-result-wide v4

    .line 1311
    iget-wide v9, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mCurrentTouchDownTime:J

    .line 1312
    sub-long/2addr v4, v9

    .line 1314
    const-wide/16 v9, 0x1f4

    .line 1315
    cmp-long v4, v4, v9

    .line 1317
    if-lez v4, :cond_58

    .line 1319
    goto/16 :goto_22

    .line 1321
    :cond_58
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1323
    move-result v4

    .line 1326
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1327
    move-result v5

    .line 1330
    iget v9, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mInitialTouchX:F

    .line 1331
    sub-float/2addr v9, v4

    .line 1333
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 1334
    move-result v9

    .line 1337
    iget v10, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mScaledTouchSlop:I

    .line 1338
    int-to-float v10, v10

    .line 1340
    cmpl-float v9, v9, v10

    .line 1341
    if-gtz v9, :cond_5c

    .line 1343
    iget v9, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mInitialTouchY:F

    .line 1345
    sub-float/2addr v9, v5

    .line 1347
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 1348
    move-result v9

    .line 1351
    iget v10, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mScaledTouchSlop:I

    .line 1352
    int-to-float v10, v10

    .line 1354
    cmpl-float v9, v9, v10

    .line 1355
    if-lez v9, :cond_59

    .line 1357
    goto :goto_22

    .line 1359
    :cond_59
    iget v9, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUninvalidStartEndAreaWidth:I

    .line 1360
    int-to-float v9, v9

    .line 1362
    cmpg-float v10, v4, v9

    .line 1363
    if-ltz v10, :cond_5c

    .line 1365
    iget v10, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mScreenWidth:F

    .line 1367
    sub-float/2addr v10, v9

    .line 1369
    cmpl-float v9, v4, v10

    .line 1370
    if-gtz v9, :cond_5c

    .line 1372
    iget v9, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUninvalidTopAreaHeight:I

    .line 1374
    int-to-float v9, v9

    .line 1376
    cmpg-float v9, v5, v9

    .line 1377
    if-ltz v9, :cond_5c

    .line 1379
    iget v9, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mScreenHeight:F

    .line 1381
    iget v10, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUninvalidBottomAreaHeight:I

    .line 1383
    int-to-float v10, v10

    .line 1385
    sub-float/2addr v9, v10

    .line 1386
    cmpl-float v9, v5, v9

    .line 1387
    if-lez v9, :cond_5a

    .line 1389
    goto :goto_22

    .line 1391
    :cond_5a
    sget-boolean v9, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 1392
    if-eqz v9, :cond_5b

    .line 1394
    iget-boolean v9, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUnlockWithFingerprintPossible:Z

    .line 1396
    if-eqz v9, :cond_5b

    .line 1398
    iget-boolean v9, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreViewShowing:Z

    .line 1400
    if-nez v9, :cond_5b

    .line 1402
    float-to-int v4, v4

    .line 1404
    float-to-int v5, v5

    .line 1405
    iget v9, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mGXZWIconCenterX:I

    .line 1406
    iget v10, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mGXZWIconCenterY:I

    .line 1408
    sub-int/2addr v4, v9

    .line 1410
    int-to-double v11, v4

    .line 1411
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 1412
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 1414
    move-result-wide v11

    .line 1417
    sub-int/2addr v5, v10

    .line 1418
    int-to-double v4, v5

    .line 1419
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 1420
    move-result-wide v4

    .line 1423
    add-double/2addr v4, v11

    .line 1424
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 1425
    move-result-wide v4

    .line 1428
    double-to-int v4, v4

    .line 1429
    iget v5, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUninvalidGXZWAreaRadius:I

    .line 1430
    if-ge v4, v5, :cond_5b

    .line 1432
    goto :goto_22

    .line 1434
    :cond_5b
    const/4 v4, 0x0

    .line 1435
    goto :goto_23

    .line 1436
    :cond_5c
    :goto_22
    move v4, v7

    .line 1437
    :goto_23
    if-nez v4, :cond_5e

    .line 1438
    iget-boolean v4, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSupportGestureWakeup:Z

    .line 1440
    if-eqz v4, :cond_5d

    .line 1442
    iget-object v4, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 1444
    iget-boolean v4, v4, Lcom/android/keyguard/KeyguardCommonSettingObserver;->doubleTapToSleep:Z

    .line 1446
    if-eqz v4, :cond_5d

    .line 1448
    iget-object v4, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHandler:Lcom/android/keyguard/magazine/LockScreenMagazineController$1;

    .line 1450
    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1452
    iget-object v3, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHandler:Lcom/android/keyguard/magazine/LockScreenMagazineController$1;

    .line 1455
    const-wide/16 v4, 0x190

    .line 1457
    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1459
    move v3, v7

    .line 1462
    goto :goto_24

    .line 1463
    :cond_5d
    invoke-virtual {v3}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->handleSingleClickEvent()Z

    .line 1464
    move-result v3

    .line 1467
    goto :goto_24

    .line 1468
    :cond_5e
    iget-boolean v3, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePreViewVisible:Z

    .line 1469
    :goto_24
    if-eqz v3, :cond_5f

    .line 1471
    return v7

    .line 1473
    :cond_5f
    iget-object v3, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1474
    iget-object v4, v3, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 1476
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 1478
    move-result-object v4

    .line 1481
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1482
    move-result v5

    .line 1485
    if-nez v5, :cond_60

    .line 1486
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->clearUpArrowAnimation()V

    .line 1488
    goto :goto_25

    .line 1491
    :cond_60
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 1492
    move-result v5

    .line 1495
    if-ne v5, v7, :cond_61

    .line 1496
    move/from16 v5, p2

    .line 1498
    if-ne v5, v7, :cond_61

    .line 1500
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 1502
    move-result v4

    .line 1505
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 1506
    move-result v5

    .line 1509
    sub-float v5, p3, v5

    .line 1510
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 1512
    move-result v5

    .line 1515
    int-to-float v4, v4

    .line 1516
    cmpg-float v5, v5, v4

    .line 1517
    if-gez v5, :cond_61

    .line 1519
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 1521
    move-result v2

    .line 1524
    sub-float v2, p4, v2

    .line 1525
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 1527
    move-result v2

    .line 1530
    cmpg-float v2, v2, v4

    .line 1531
    if-gez v2, :cond_61

    .line 1533
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    .line 1535
    if-eqz v2, :cond_61

    .line 1537
    iget-boolean v2, v3, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    .line 1539
    if-nez v2, :cond_61

    .line 1541
    const/4 v2, 0x0

    .line 1543
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    .line 1544
    :cond_61
    :goto_25
    iget-object v1, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 1547
    if-nez v1, :cond_62

    .line 1549
    goto :goto_26

    .line 1551
    :cond_62
    move-object v8, v1

    .line 1552
    :goto_26
    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 1553
    move-result v1

    .line 1556
    if-eqz v1, :cond_63

    .line 1557
    return v7

    .line 1559
    :cond_63
    return v0

    .line 1560
    :cond_64
    :goto_27
    return v7
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mConstantLockscreenInfoObserver:Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$mConstantLockscreenInfoObserver$1;->onChange(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final resetKeyguardMoveHelper()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardMoveHelper:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/keyguard/KeyguardMoveHelper;->reset(ZZZ)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final updateDeductedImageView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    const-string v1, "KeyguardPanelViewInjector"

    .line 4
    if-nez v0, :cond_0

    .line 6
    const-string/jumbo p0, "updateDeductedImageView: mPanelViewController not initialised"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void

    .line 14
    :cond_0
    const-string/jumbo v0, "updateDeductedImageView: start parse depth file"

    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 21
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_1

    .line 24
    move-object v0, v1

    .line 26
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    .line 27
    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDepthEffectEnable:Z

    .line 34
    if-eqz v1, :cond_3

    .line 36
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 38
    new-instance v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$updateDeductedImageView$2;

    .line 40
    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$updateDeductedImageView$2;-><init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Landroid/widget/ImageView;)V

    .line 42
    invoke-virtual {v1, v2}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 45
    :cond_3
    return-void
    .line 48
.end method

.method public final updateDoodleInfo(ILjava/util/Map;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleTextView:Lcom/miui/keyguardtemplate/doodle/DoodleView;

    .line 2
    if-eqz v0, :cond_8

    .line 4
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 6
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->getDoodle()Lcom/android/keyguard/wallpaper/entity/DoodleInfo;

    .line 8
    move-result-object v1

    .line 11
    if-eqz v1, :cond_8

    .line 12
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/DoodleInfo;->isAutoSolidColor()Z

    .line 14
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 18
    invoke-virtual {v3}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->getClockInfo()Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 20
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->isAutoPrimaryColor()Z

    .line 24
    move-result v3

    .line 27
    iget-object v4, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 28
    invoke-virtual {v4}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->getClockInfo()Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 30
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->getPrimaryColor()I

    .line 34
    move-result v4

    .line 37
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/DoodleInfo;->getSolidColor()I

    .line 38
    move-result v5

    .line 41
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/DoodleInfo;->getRibbonColor1()I

    .line 42
    move-result v6

    .line 45
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/DoodleInfo;->getRibbonColor2()I

    .line 46
    move-result v1

    .line 49
    const/4 v7, 0x0

    .line 50
    if-eqz p2, :cond_0

    .line 51
    const/4 v8, 0x1

    .line 53
    invoke-static {p1, v8, p2}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->getDoodleOrSmartFrameColors(IZLjava/util/Map;)Lkotlin/Triple;

    .line 54
    move-result-object p1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object p1, v7

    .line 59
    :goto_0
    iget-object p2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleBgView:Landroid/view/View;

    .line 60
    if-eqz p2, :cond_2

    .line 62
    if-eqz v2, :cond_1

    .line 64
    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 71
    check-cast v2, Ljava/lang/Integer;

    .line 72
    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v5

    .line 79
    :cond_1
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    :cond_2
    if-eqz v3, :cond_3

    .line 83
    if-eqz p1, :cond_3

    .line 85
    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 87
    move-result-object p2

    .line 90
    check-cast p2, Ljava/lang/Integer;

    .line 91
    if-eqz p2, :cond_3

    .line 93
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 95
    move-result v4

    .line 98
    :cond_3
    invoke-virtual {v0, v4}, Lcom/miui/keyguardtemplate/doodle/DoodleView;->setDoodleColor(I)V

    .line 99
    iget-object p2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mColorRibbonsContainer:Lcom/android/keyguard/widget/ColorRibbonsContainer;

    .line 102
    if-eqz p2, :cond_8

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 106
    if-nez v0, :cond_4

    .line 108
    move-object v0, v7

    .line 110
    :cond_4
    iget-boolean v0, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mWallpaperUpdateColor:Z

    .line 111
    if-eqz v0, :cond_5

    .line 113
    if-eqz p1, :cond_5

    .line 115
    invoke-virtual {p1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    .line 117
    move-result-object v0

    .line 120
    check-cast v0, Lkotlin/Pair;

    .line 121
    if-eqz v0, :cond_5

    .line 123
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 125
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/Integer;

    .line 129
    if-eqz v0, :cond_5

    .line 131
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 133
    move-result v6

    .line 136
    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 137
    if-nez p0, :cond_6

    .line 139
    goto :goto_1

    .line 141
    :cond_6
    move-object v7, p0

    .line 142
    :goto_1
    iget-boolean p0, v7, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mWallpaperUpdateColor:Z

    .line 143
    if-eqz p0, :cond_7

    .line 145
    if-eqz p1, :cond_7

    .line 147
    invoke-virtual {p1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    .line 149
    move-result-object p0

    .line 152
    check-cast p0, Lkotlin/Pair;

    .line 153
    if-eqz p0, :cond_7

    .line 155
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 157
    move-result-object p0

    .line 160
    check-cast p0, Ljava/lang/Integer;

    .line 161
    if-eqz p0, :cond_7

    .line 163
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 165
    move-result v1

    .line 168
    :cond_7
    invoke-virtual {p2, v6, v1}, Lcom/android/keyguard/widget/ColorRibbonsContainer;->setRibbonsColors(II)V

    .line 169
    :cond_8
    return-void
    .line 172
.end method

.method public final updateForceBlackVisibility()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-string p0, "KeyguardPanelViewInjector"

    .line 6
    const-string/jumbo v0, "updateForceBlackVisibility: mPanelViewController is not init"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    move-object v2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-object v2, v0

    .line 20
    :goto_0
    iget-object v2, v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mForceBlackImageView:Landroid/widget/ImageView;

    .line 21
    if-nez v0, :cond_2

    .line 23
    move-object v0, v1

    .line 25
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardForegroundLayer:Landroid/widget/FrameLayout;

    .line 26
    if-nez v2, :cond_3

    .line 28
    goto :goto_3

    .line 30
    :cond_3
    iget-boolean p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mForceBlack:Z

    .line 31
    if-eqz p0, :cond_5

    .line 33
    const/4 p0, 0x0

    .line 35
    if-eqz v0, :cond_4

    .line 36
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 38
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    const/4 v0, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_4
    move v0, p0

    .line 46
    :goto_1
    if-eqz v0, :cond_5

    .line 47
    goto :goto_2

    .line 49
    :cond_5
    const/4 p0, 0x4

    .line 50
    :goto_2
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    :goto_3
    return-void
    .line 54
.end method

.method public final updateKeyguardElementsVisibility()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    const-string v1, "KeyguardPanelViewInjector"

    .line 4
    if-nez v0, :cond_0

    .line 6
    const-string/jumbo p0, "updateKeyguardElementsVisibility: mPanelViewController is not init"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void

    .line 14
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 15
    iget-object v3, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardForegroundLayer:Landroid/widget/FrameLayout;

    .line 17
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    .line 19
    iget-object v4, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mNegative1PageController:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 21
    const/4 v5, 0x0

    .line 23
    if-nez v4, :cond_1

    .line 24
    move-object v4, v5

    .line 26
    :cond_1
    iget-object v4, v4, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    .line 27
    iget-boolean v6, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsDefaultTheme:Z

    .line 29
    const/16 v7, 0x8

    .line 31
    if-nez v6, :cond_8

    .line 33
    if-nez v4, :cond_2

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 38
    :goto_0
    if-nez v2, :cond_3

    .line 41
    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 44
    :goto_1
    if-nez v3, :cond_4

    .line 47
    goto :goto_2

    .line 49
    :cond_4
    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 50
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleTextView:Lcom/miui/keyguardtemplate/doodle/DoodleView;

    .line 53
    if-nez v0, :cond_5

    .line 55
    goto :goto_3

    .line 57
    :cond_5
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleBgView:Landroid/view/View;

    .line 61
    if-nez v0, :cond_6

    .line 63
    goto :goto_4

    .line 65
    :cond_6
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :goto_4
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSmartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 69
    if-nez p0, :cond_7

    .line 71
    goto :goto_5

    .line 73
    :cond_7
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :goto_5
    return-void

    .line 77
    :cond_8
    iget v6, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mBarState:I

    .line 78
    const/4 v8, 0x0

    .line 80
    const/4 v9, 0x1

    .line 81
    if-ne v6, v9, :cond_9

    .line 82
    move v10, v9

    .line 84
    goto :goto_6

    .line 85
    :cond_9
    move v10, v8

    .line 86
    :goto_6
    const/4 v11, 0x2

    .line 87
    if-ne v6, v11, :cond_a

    .line 88
    move v6, v9

    .line 90
    goto :goto_7

    .line 91
    :cond_a
    move v6, v8

    .line 92
    :goto_7
    iget-boolean v11, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardShowing:Z

    .line 93
    if-eqz v11, :cond_c

    .line 95
    iget-object v11, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 97
    if-nez v11, :cond_b

    .line 99
    goto :goto_8

    .line 101
    :cond_b
    move-object v5, v11

    .line 102
    :goto_8
    iget-object v5, v5, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 103
    sget-object v11, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITING:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 105
    if-ne v5, v11, :cond_c

    .line 107
    move v5, v9

    .line 109
    goto :goto_9

    .line 110
    :cond_c
    move v5, v8

    .line 111
    :goto_9
    iget-boolean v11, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mWallpaperMattingSupport:Z

    .line 112
    const-string/jumbo v12, "updateKeyguardElementsVisibility isExitingToKeyguard = "

    .line 114
    const-string v13, ", isOnKeyguard = "

    .line 117
    const-string v14, ", isOnShadeLocked = "

    .line 119
    invoke-static {v12, v5, v13, v10, v14}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    move-result-object v12

    .line 124
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    const-string v13, ", isWallpaperMattingSupport = "

    .line 128
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v11

    .line 139
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x4

    .line 143
    if-nez v10, :cond_10

    .line 144
    if-eqz v5, :cond_d

    .line 146
    goto :goto_b

    .line 148
    :cond_d
    if-nez v2, :cond_e

    .line 149
    goto :goto_a

    .line 151
    :cond_e
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 152
    :goto_a
    if-nez v4, :cond_f

    .line 155
    goto :goto_e

    .line 157
    :cond_f
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 158
    goto :goto_e

    .line 161
    :cond_10
    :goto_b
    if-nez v2, :cond_11

    .line 162
    goto :goto_d

    .line 164
    :cond_11
    iget-boolean v11, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsShowDualClock:Z

    .line 165
    if-eqz v11, :cond_12

    .line 167
    move v11, v1

    .line 169
    goto :goto_c

    .line 170
    :cond_12
    move v11, v8

    .line 171
    :goto_c
    invoke-virtual {v2, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 172
    :goto_d
    if-nez v4, :cond_13

    .line 175
    goto :goto_e

    .line 177
    :cond_13
    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 178
    :goto_e
    if-nez v3, :cond_14

    .line 181
    goto :goto_11

    .line 183
    :cond_14
    if-nez v10, :cond_15

    .line 184
    if-nez v5, :cond_15

    .line 186
    if-eqz v6, :cond_17

    .line 188
    :cond_15
    iget-boolean v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mWallpaperMattingSupport:Z

    .line 190
    if-eqz v2, :cond_17

    .line 192
    iget-boolean v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDepthEffectEnable:Z

    .line 194
    if-eqz v2, :cond_16

    .line 196
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->isDoodleTemplate()Z

    .line 198
    move-result v2

    .line 201
    if-nez v2, :cond_16

    .line 202
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 204
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 206
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 208
    if-eqz v2, :cond_16

    .line 210
    move v2, v9

    .line 212
    goto :goto_f

    .line 213
    :cond_16
    move v2, v8

    .line 214
    :goto_f
    if-nez v2, :cond_17

    .line 215
    move v2, v8

    .line 217
    goto :goto_10

    .line 218
    :cond_17
    move v2, v1

    .line 219
    :goto_10
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 220
    :goto_11
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateForceBlackVisibility()V

    .line 223
    if-eqz v3, :cond_18

    .line 226
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 228
    move-result v2

    .line 231
    if-nez v2, :cond_18

    .line 232
    goto :goto_12

    .line 234
    :cond_18
    move v9, v8

    .line 235
    :goto_12
    if-eqz v9, :cond_1b

    .line 236
    if-nez v0, :cond_19

    .line 238
    goto :goto_14

    .line 240
    :cond_19
    iget-boolean v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsActualDisplayDepth:Z

    .line 241
    if-eqz v2, :cond_1a

    .line 243
    move v2, v8

    .line 245
    goto :goto_13

    .line 246
    :cond_1a
    move v2, v1

    .line 247
    :goto_13
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    :cond_1b
    :goto_14
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 251
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->getClockInfo()Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 253
    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->getTemplateId()Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 260
    iget-boolean v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsShowDualClock:Z

    .line 261
    if-eqz v2, :cond_1f

    .line 263
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleTextView:Lcom/miui/keyguardtemplate/doodle/DoodleView;

    .line 265
    if-nez v2, :cond_1c

    .line 267
    goto :goto_15

    .line 269
    :cond_1c
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :goto_15
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleBgView:Landroid/view/View;

    .line 273
    if-nez v2, :cond_1d

    .line 275
    goto :goto_16

    .line 277
    :cond_1d
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :goto_16
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mColorRibbonsContainer:Lcom/android/keyguard/widget/ColorRibbonsContainer;

    .line 281
    if-nez v2, :cond_1e

    .line 283
    goto/16 :goto_25

    .line 285
    :cond_1e
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 287
    goto/16 :goto_25

    .line 290
    :cond_1f
    const-string v2, "doodle"

    .line 292
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    move-result v2

    .line 297
    if-eqz v2, :cond_2f

    .line 298
    if-eqz v6, :cond_24

    .line 300
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleTextView:Lcom/miui/keyguardtemplate/doodle/DoodleView;

    .line 302
    if-nez v2, :cond_20

    .line 304
    goto :goto_17

    .line 306
    :cond_20
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    :goto_17
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleBgView:Landroid/view/View;

    .line 310
    if-nez v2, :cond_21

    .line 312
    goto :goto_19

    .line 314
    :cond_21
    iget-boolean v3, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsActualDisplayDepth:Z

    .line 315
    if-eqz v3, :cond_22

    .line 317
    move v3, v8

    .line 319
    goto :goto_18

    .line 320
    :cond_22
    move v3, v1

    .line 321
    :goto_18
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :goto_19
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mColorRibbonsContainer:Lcom/android/keyguard/widget/ColorRibbonsContainer;

    .line 325
    if-nez v2, :cond_23

    .line 327
    goto/16 :goto_23

    .line 329
    :cond_23
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 331
    goto/16 :goto_23

    .line 334
    :cond_24
    if-nez v10, :cond_29

    .line 336
    if-eqz v5, :cond_25

    .line 338
    goto :goto_1c

    .line 340
    :cond_25
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleTextView:Lcom/miui/keyguardtemplate/doodle/DoodleView;

    .line 341
    if-nez v2, :cond_26

    .line 343
    goto :goto_1a

    .line 345
    :cond_26
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :goto_1a
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleBgView:Landroid/view/View;

    .line 349
    if-nez v2, :cond_27

    .line 351
    goto :goto_1b

    .line 353
    :cond_27
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :goto_1b
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mColorRibbonsContainer:Lcom/android/keyguard/widget/ColorRibbonsContainer;

    .line 357
    if-nez v2, :cond_28

    .line 359
    goto :goto_23

    .line 361
    :cond_28
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 362
    goto :goto_23

    .line 365
    :cond_29
    :goto_1c
    iget-boolean v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsSuperSavePowerMode:Z

    .line 366
    if-eqz v2, :cond_2a

    .line 368
    move v2, v1

    .line 370
    goto :goto_1d

    .line 371
    :cond_2a
    move v2, v8

    .line 372
    :goto_1d
    iget-object v3, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleTextView:Lcom/miui/keyguardtemplate/doodle/DoodleView;

    .line 373
    if-nez v3, :cond_2b

    .line 375
    goto :goto_1e

    .line 377
    :cond_2b
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :goto_1e
    iget-object v3, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mColorRibbonsContainer:Lcom/android/keyguard/widget/ColorRibbonsContainer;

    .line 381
    if-nez v3, :cond_2c

    .line 383
    goto :goto_1f

    .line 385
    :cond_2c
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 386
    :goto_1f
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleBgView:Landroid/view/View;

    .line 389
    if-nez v2, :cond_2d

    .line 391
    goto :goto_23

    .line 393
    :cond_2d
    iget-boolean v3, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsActualDisplayDepth:Z

    .line 394
    if-eqz v3, :cond_2e

    .line 396
    move v3, v8

    .line 398
    goto :goto_20

    .line 399
    :cond_2e
    move v3, v1

    .line 400
    :goto_20
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 401
    goto :goto_23

    .line 404
    :cond_2f
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleTextView:Lcom/miui/keyguardtemplate/doodle/DoodleView;

    .line 405
    if-nez v2, :cond_30

    .line 407
    goto :goto_21

    .line 409
    :cond_30
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :goto_21
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleBgView:Landroid/view/View;

    .line 413
    if-nez v2, :cond_31

    .line 415
    goto :goto_22

    .line 417
    :cond_31
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :goto_22
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mColorRibbonsContainer:Lcom/android/keyguard/widget/ColorRibbonsContainer;

    .line 421
    if-nez v2, :cond_32

    .line 423
    goto :goto_23

    .line 425
    :cond_32
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 426
    :goto_23
    iget-boolean v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mWallpaperMattingSupport:Z

    .line 429
    if-nez v2, :cond_35

    .line 431
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleTextView:Lcom/miui/keyguardtemplate/doodle/DoodleView;

    .line 433
    if-nez v2, :cond_33

    .line 435
    goto :goto_24

    .line 437
    :cond_33
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :goto_24
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleBgView:Landroid/view/View;

    .line 441
    if-nez v2, :cond_34

    .line 443
    goto :goto_25

    .line 445
    :cond_34
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 446
    :cond_35
    :goto_25
    const-string/jumbo v2, "smart_frame"

    .line 449
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 452
    move-result v0

    .line 455
    if-eqz v0, :cond_39

    .line 456
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSmartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 458
    if-nez v0, :cond_36

    .line 460
    goto :goto_27

    .line 462
    :cond_36
    iget-boolean v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsSuperSavePowerMode:Z

    .line 463
    if-nez v2, :cond_37

    .line 465
    iget-boolean p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mBouncerShowing:Z

    .line 467
    if-nez p0, :cond_38

    .line 469
    if-nez v10, :cond_38

    .line 471
    if-nez v5, :cond_38

    .line 473
    if-eqz v6, :cond_37

    .line 475
    goto :goto_26

    .line 477
    :cond_37
    move v8, v1

    .line 478
    :cond_38
    :goto_26
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 479
    goto :goto_27

    .line 482
    :cond_39
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSmartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 483
    if-nez p0, :cond_3a

    .line 485
    goto :goto_27

    .line 487
    :cond_3a
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 488
    :goto_27
    return-void
    .line 491
.end method

.method public final updateKeyguardSignature()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move-object v0, v1

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    .line 8
    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 12
    iput-object v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardSignatureView:Lcom/miui/lockscreeninfo/LockScreenInfoLayout;

    .line 15
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 17
    invoke-virtual {v2}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->getClockInfo()Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 19
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->getTemplateId()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 26
    const-string v3, "magazine_a"

    .line 27
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v3

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v3, :cond_1

    .line 34
    move v2, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v3, "magazine_b"

    .line 38
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 43
    :goto_0
    if-eqz v2, :cond_5

    .line 44
    new-instance v2, Lcom/miui/lockscreeninfo/LockScreenInfoLayout;

    .line 46
    iget-object v3, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {v2, v3}, Lcom/miui/lockscreeninfo/LockScreenInfoLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardSignatureView:Lcom/miui/lockscreeninfo/LockScreenInfoLayout;

    .line 53
    invoke-virtual {v2}, Lcom/miui/lockscreeninfo/LockScreenInfoLayout;->buildFromSetting()V

    .line 55
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 58
    if-nez v2, :cond_2

    .line 60
    move-object v3, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v3, v2

    .line 64
    :goto_1
    iget-boolean v3, v3, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMagazineScriptIsDeep:Z

    .line 65
    xor-int/2addr v3, v4

    .line 67
    if-nez v2, :cond_3

    .line 68
    move-object v2, v1

    .line 70
    :cond_3
    iget-object v2, v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFilterColorMap:Ljava/util/Map;

    .line 71
    if-eqz v2, :cond_4

    .line 73
    const-string v1, "magazine_script_rect"

    .line 75
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 80
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 81
    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardSignatureView:Lcom/miui/lockscreeninfo/LockScreenInfoLayout;

    .line 85
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v2, v3, v1}, Lcom/miui/lockscreeninfo/LockScreenInfoLayout;->setClockPalette(ZLjava/util/Map;)V

    .line 90
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardSignatureView:Lcom/miui/lockscreeninfo/LockScreenInfoLayout;

    .line 93
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 95
    :cond_5
    return-void
    .line 98
.end method

.method public final updateShowDepthState()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDepthEffectEnable:Z

    .line 2
    if-eqz v0, :cond_9

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 6
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->getWallpaperInfo()Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->getLargeScreenHierarchyEnable()Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;

    .line 14
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_a

    .line 21
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 23
    if-eqz v2, :cond_8

    .line 25
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 33
    move-result-object v2

    .line 36
    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 37
    const/16 v3, 0x258

    .line 39
    if-lt v2, v3, :cond_6

    .line 41
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 49
    move-result-object v2

    .line 52
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 53
    if-ne v2, v1, :cond_3

    .line 55
    iget-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsShowDualClock:Z

    .line 57
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;->getLargeScreenPortHierarchyEnableInDualClock()Z

    .line 61
    move-result v1

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mHasNotification:Z

    .line 66
    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;->getLargeScreenPortWithNotificationHierarchyEnable()Z

    .line 70
    move-result v1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;->getLargeScreenPortHierarchyEnable()Z

    .line 75
    move-result v1

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsShowDualClock:Z

    .line 80
    if-eqz v1, :cond_4

    .line 82
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;->getLargeScreenLandHierarchyEnableInDualClock()Z

    .line 84
    move-result v1

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mHasNotification:Z

    .line 89
    if-eqz v1, :cond_5

    .line 91
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;->getLargeScreenLandWithNotificationHierarchyEnable()Z

    .line 93
    move-result v1

    .line 96
    goto :goto_1

    .line 97
    :cond_5
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;->getLargeScreenLandHierarchyEnable()Z

    .line 98
    move-result v1

    .line 101
    goto :goto_1

    .line 102
    :cond_6
    iget-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsShowDualClock:Z

    .line 103
    if-eqz v1, :cond_7

    .line 105
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;->getSmallScreenHierarchyEnableInDualClock()Z

    .line 107
    move-result v1

    .line 110
    goto :goto_1

    .line 111
    :cond_7
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;->getSmallScreenHierarchyEnable()Z

    .line 112
    move-result v1

    .line 115
    goto :goto_1

    .line 116
    :cond_8
    iget-boolean v2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsShowDualClock:Z

    .line 117
    if-eqz v2, :cond_a

    .line 119
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;->getSmallScreenHierarchyEnableInDualClock()Z

    .line 121
    move-result v1

    .line 124
    goto :goto_1

    .line 125
    :cond_9
    const/4 v1, 0x0

    .line 126
    :cond_a
    :goto_1
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsActualDisplayDepth:Z

    .line 127
    if-eq v0, v1, :cond_b

    .line 129
    iput-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mIsActualDisplayDepth:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateKeyguardElementsVisibility()V

    .line 133
    :cond_b
    return-void
    .line 136
.end method

.method public final updateSmartFrameInfo(ILjava/util/Map;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mSmartFrameView:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 2
    if-eqz v0, :cond_6

    .line 4
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->constantLockscreenInfo:Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 6
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->getSmartFrame()Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;

    .line 8
    move-result-object v1

    .line 11
    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;->getSolidColor()I

    .line 14
    move-result v2

    .line 17
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;->isAutoSolidColor()Z

    .line 18
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_2

    .line 23
    if-eqz p2, :cond_4

    .line 25
    const/4 v3, 0x0

    .line 27
    invoke-static {p1, v3, p2}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->getDoodleOrSmartFrameColors(IZLjava/util/Map;)Lkotlin/Triple;

    .line 28
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Integer;

    .line 36
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v2

    .line 43
    :cond_0
    invoke-virtual {v0, v2}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setFillColor(I)V

    .line 44
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 47
    if-nez p1, :cond_1

    .line 49
    move-object p1, v4

    .line 51
    :cond_1
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 52
    if-eqz p1, :cond_4

    .line 54
    invoke-virtual {v0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getFillColor()I

    .line 56
    move-result p2

    .line 59
    invoke-virtual {p1, p2}, Lcom/android/keyguard/clock/KeyguardClockContainer;->setSmartFrameViewFillColor(I)V

    .line 60
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v0, v2}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setFillColor(I)V

    .line 64
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 67
    if-nez p1, :cond_3

    .line 69
    move-object p1, v4

    .line 71
    :cond_3
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 72
    if-eqz p1, :cond_4

    .line 74
    invoke-virtual {v0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->getFillColor()I

    .line 76
    move-result p2

    .line 79
    invoke-virtual {p1, p2}, Lcom/android/keyguard/clock/KeyguardClockContainer;->setSmartFrameViewFillColor(I)V

    .line 80
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;->getShape()I

    .line 83
    move-result p1

    .line 86
    invoke-virtual {v0, p1}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setShape(I)V

    .line 87
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 90
    if-nez p0, :cond_5

    .line 92
    goto :goto_1

    .line 94
    :cond_5
    move-object v4, p0

    .line 95
    :goto_1
    iget-object p0, v4, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 96
    if-eqz p0, :cond_6

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/keyguard/clock/KeyguardClockContainer;->setSmartFrameView(Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;)V

    .line 100
    :cond_6
    return-void
    .line 103
.end method
