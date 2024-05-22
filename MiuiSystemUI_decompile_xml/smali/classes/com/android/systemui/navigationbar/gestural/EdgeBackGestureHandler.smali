.class public final Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/shared/tracing/ProtoTraceable;


# static fields
.field public static final MAX_LONG_PRESS_TIMEOUT:I


# instance fields
.field public mAllowGesture:Z

.field public mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

.field public final mBackCallback:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;

.field public mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

.field public final mBackGestureTfClassifierProviderProvider:Ljavax/inject/Provider;

.field public final mBackPanelControllerFactory:Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;

.field public mBackSwipeLinearThreshold:F

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public mBottomGestureHeight:F

.field public mButtonForcedVisibleCallback:Ljava/util/function/Consumer;

.field public final mContext:Landroid/content/Context;

.field public final mDesktopCornersChangedListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;

.field public final mDesktopModeExcludeRegion:Landroid/graphics/Region;

.field public final mDesktopModeOptional:Ljava/util/Optional;

.field public mDisabledForQuickstep:Z

.field public final mDisplayId:I

.field public final mDisplaySize:Landroid/graphics/Point;

.field public final mDownPoint:Landroid/graphics/PointF;

.field public mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

.field public mEdgeWidthLeft:I

.field public mEdgeWidthRight:I

.field public final mEndPoint:Landroid/graphics/PointF;

.field public final mExcludeRegion:Landroid/graphics/Region;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mGestureBlockingActivities:Ljava/util/List;

.field public mGestureBlockingActivityRunning:Z

.field public final mGestureExclusionListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$1;

.field public final mGestureLogInsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

.field public final mGestureLogOutsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

.field public final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field public mInRejectedExclusion:Z

.field public mIsAttached:Z

.field public mIsBackGestureAllowed:Z

.field public mIsButtonForcedVisible:Z

.field public mIsGesturalModeEnabled:Z

.field public mIsInPip:Z

.field public mIsNavBarShownTransiently:Z

.field public mIsNewBackAffordanceEnabled:Z

.field public mIsOnLeftEdge:Z

.field public final mLastReportedConfig:Landroid/content/res/Configuration;

.field public mLeftInset:I

.field public final mLightBarControllerProvider:Ljavax/inject/Provider;

.field public final mLogDateFormat:Landroid/icu/text/SimpleDateFormat;

.field public mLogGesture:Z

.field public final mLongPressTimeout:I

.field public mMLEnableWidth:I

.field public mMLModelIsLoading:Z

.field public mMLModelThreshold:F

.field public mMLResults:F

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNavBarEdgePanelProvider:Ljavax/inject/Provider;

.field public final mNavBarOverlayExcludedBounds:Landroid/graphics/Rect;

.field public final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public mNonLinearFactor:F

.field public final mOnIsInPipStateChangedListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;

.field public final mOnPropertiesChangedListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$4;

.field public final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field public mPackageName:Ljava/lang/String;

.field public final mPipExcludedBounds:Landroid/graphics/Rect;

.field public final mPipOptional:Ljava/util/Optional;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final mPredictionLog:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

.field public final mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

.field public final mQuickSwitchListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;

.field public mRightInset:I

.field public mStartingQuickstepRotation:I

.field public mSysUiFlags:I

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public final mSysUiStateCallback:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;

.field public final mTaskStackListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;

.field public mThresholdCrossed:Z

.field public final mTmpLogDate:Ljava/util/Date;

.field public mTouchSlop:F

.field public final mUnrestrictedExcludeRegion:Landroid/graphics/Region;

.field public mUseMLModel:Z

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mViewConfiguration:Landroid/view/ViewConfiguration;

.field public mVocab:Ljava/util/Map;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public static -$$Nest$msendEvent(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V
    .locals 14

    .line 1
    const/4 v6, 0x4

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    move-result-wide v3

    .line 9
    new-instance v13, Landroid/view/KeyEvent;

    .line 10
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, -0x1

    .line 14
    const/4 v10, 0x0

    .line 15
    const/16 v11, 0x48

    .line 16
    const/16 v12, 0x101

    .line 18
    move-object v0, v13

    .line 20
    move-wide v1, v3

    .line 21
    move v5, p1

    .line 22
    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 23
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 28
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 32
    move-result p1

    .line 35
    invoke-virtual {v13, p1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 36
    const-class p1, Landroid/hardware/input/InputManager;

    .line 39
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 44
    check-cast p0, Landroid/hardware/input/InputManager;

    .line 45
    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, v13, p1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 48
    return-void
    .line 51
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "gestures.back_timeout"

    .line 2
    const/16 v1, 0xfa

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    move-result v0

    .line 9
    sput v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    .line 10
    return-void
    .line 12
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/plugins/PluginManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/tracing/ProtoTracer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;Landroid/view/ViewConfiguration;Landroid/view/WindowManager;Landroid/view/IWindowManager;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/plugins/FalsingManager;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/flags/FeatureFlags;Ljavax/inject/Provider;)V
    .locals 8

    move-object v1, p0

    move-object v0, p1

    const-string v2, "EdgeBackGestureHandler"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v3, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$1;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureExclusionListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$1;

    .line 3
    new-instance v3, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;

    .line 4
    new-instance v3, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTaskStackListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;

    .line 5
    new-instance v3, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$4;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOnPropertiesChangedListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$4;

    .line 6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLastReportedConfig:Landroid/content/res/Configuration;

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    .line 9
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 10
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipExcludedBounds:Landroid/graphics/Rect;

    .line 11
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarOverlayExcludedBounds:Landroid/graphics/Rect;

    .line 12
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    .line 13
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDesktopModeExcludeRegion:Landroid/graphics/Region;

    .line 14
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    const/4 v4, -0x1

    .line 15
    iput v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    .line 16
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 17
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    const/4 v4, 0x0

    .line 18
    iput-boolean v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 19
    iput-boolean v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 20
    iput-boolean v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 21
    iput-boolean v4, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 22
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    invoke-direct {v5}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;-><init>()V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    .line 23
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    invoke-direct {v5}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;-><init>()V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLogInsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    .line 24
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    invoke-direct {v5}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;-><init>()V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLogOutsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    .line 25
    new-instance v5, Landroid/icu/text/SimpleDateFormat;

    const-string v6, "HH:mm:ss.SSS"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogDateFormat:Landroid/icu/text/SimpleDateFormat;

    .line 26
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTmpLogDate:Ljava/util/Date;

    .line 27
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackCallback:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;

    .line 28
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiStateCallback:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;

    .line 29
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOnIsInPipStateChangedListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;

    .line 30
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDesktopCornersChangedListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;

    .line 31
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$7;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 32
    iput-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v5

    iput v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    move-object v5, p5

    .line 34
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object v5, p6

    .line 35
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object v5, p7

    .line 36
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object v5, p2

    .line 37
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    move-object v5, p3

    .line 38
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    move-object v5, p4

    .line 39
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    move-object/from16 v5, p8

    .line 40
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    move-object/from16 v5, p9

    .line 41
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    move-object/from16 v5, p10

    .line 42
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackPanelControllerFactory:Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;

    move-object/from16 v5, p11

    .line 43
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mViewConfiguration:Landroid/view/ViewConfiguration;

    move-object/from16 v5, p12

    .line 44
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v5, p13

    .line 45
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mWindowManagerService:Landroid/view/IWindowManager;

    move-object/from16 v5, p14

    .line 46
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipOptional:Ljava/util/Optional;

    move-object/from16 v5, p15

    .line 47
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDesktopModeOptional:Ljava/util/Optional;

    move-object/from16 v5, p16

    .line 48
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v5, p17

    .line 49
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarEdgePanelProvider:Ljavax/inject/Provider;

    move-object/from16 v5, p18

    .line 50
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProviderProvider:Ljavax/inject/Provider;

    move-object/from16 v5, p19

    .line 51
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v5, p20

    .line 52
    iput-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLightBarControllerProvider:Ljavax/inject/Provider;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    const v3, 0x10402d0    # @android:string/data_usage_mobile_limit_title

    .line 54
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 56
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v5, 0x2600

    .line 58
    :try_start_0
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 59
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "gesture_blocking_activities"

    const-string v6, "array"

    .line 60
    invoke-virtual {v0, v5, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "No resource found for gesture-blocking activities"

    .line 61
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 63
    array-length v3, v0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v0, v5

    .line 64
    iget-object v7, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    .line 65
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 66
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Failed to add gesture blocking activities"

    .line 67
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_1
    :goto_1
    sget v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    .line 69
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 70
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLongPressTimeout:I

    .line 71
    new-instance v0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    iget-object v2, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V

    invoke-direct {v0, v2, v3, v5}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V

    return-void
.end method


# virtual methods
.method public final createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 8
    const v1, 0x7f070d3a    # @dimen/navigation_edge_panel_width '105.0dp'

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result v2

    .line 16
    const v1, 0x7f070d38    # @dimen/navigation_edge_panel_height '268.0dp'

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v3

    .line 23
    const/16 v4, 0x7e8

    .line 24
    const/16 v5, 0x118

    .line 26
    const/4 v6, -0x3

    .line 28
    move-object v1, v7

    .line 29
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 30
    const v0, 0x7f13084d    # @string/nav_bar_edge_panel 'Navigation bar Edge Panel'

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    iput-object v0, v7, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 40
    const/4 v0, 0x0

    .line 42
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 43
    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 45
    const v2, 0x200010

    .line 47
    or-int/2addr v1, v2

    .line 50
    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    const-string v2, "EdgeBackGestureHandler"

    .line 55
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 60
    move-result p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v7, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 74
    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    .line 77
    return-object v7
    .line 80
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "EdgeBackGestureHandler:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string v0, "  mIsEnabled=false"

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "  mIsAttached="

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    .line 19
    const-string v2, "  mIsBackGestureAllowed="

    .line 21
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v0

    .line 26
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    .line 27
    const-string v2, "  mIsGesturalModeEnabled="

    .line 29
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v0

    .line 34
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    .line 35
    const-string v2, "  mIsNavBarShownTransiently="

    .line 37
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v0

    .line 42
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    .line 43
    const-string v2, "  mGestureBlockingActivityRunning="

    .line 45
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    move-result-object v0

    .line 50
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Z

    .line 51
    const-string v2, "  mAllowGesture="

    .line 53
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object v0

    .line 58
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 59
    const-string v2, "  mUseMLModel="

    .line 61
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    move-result-object v0

    .line 66
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    .line 67
    const-string v2, "  mDisabledForQuickstep="

    .line 69
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object v0

    .line 74
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    .line 75
    const-string v2, "  mStartingQuickstepRotation="

    .line 77
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    move-result-object v0

    .line 82
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    .line 83
    const-string v2, "  mInRejectedExclusion="

    .line 85
    invoke-static {v0, v1, p1, v2}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object v0

    .line 90
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 91
    const-string v2, "  mExcludeRegion="

    .line 93
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "  mUnrestrictedExcludeRegion="

    .line 113
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "  mIsInPip="

    .line 132
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsInPip:Z

    .line 137
    const-string v2, "  mPipExcludedBounds="

    .line 139
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipExcludedBounds:Landroid/graphics/Rect;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "  mDesktopModeExclusionRegion="

    .line 159
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDesktopModeExcludeRegion:Landroid/graphics/Region;

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 172
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "  mNavBarOverlayExcludedBounds="

    .line 178
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarOverlayExcludedBounds:Landroid/graphics/Rect;

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 191
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "  mEdgeWidthLeft="

    .line 197
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    .line 202
    const-string v2, "  mEdgeWidthRight="

    .line 204
    invoke-static {v0, v1, p1, v2}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    move-result-object v0

    .line 209
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    .line 210
    const-string v2, "  mLeftInset="

    .line 212
    invoke-static {v0, v1, p1, v2}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    move-result-object v0

    .line 217
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    .line 218
    const-string v2, "  mRightInset="

    .line 220
    invoke-static {v0, v1, p1, v2}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    move-result-object v0

    .line 225
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    .line 226
    const-string v2, "  mMLEnableWidth="

    .line 228
    invoke-static {v0, v1, p1, v2}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    move-result-object v0

    .line 233
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    .line 234
    const-string v2, "  mMLModelThreshold="

    .line 236
    invoke-static {v0, v1, p1, v2}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    move-result-object v0

    .line 241
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLModelThreshold:F

    .line 242
    const-string v2, "  mTouchSlop="

    .line 244
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    move-result-object v0

    .line 249
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    .line 250
    const-string v2, "  mBottomGestureHeight="

    .line 252
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    move-result-object v0

    .line 257
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBottomGestureHeight:F

    .line 258
    const-string v2, "  mPredictionLog="

    .line 260
    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    .line 266
    const-string v2, "\n"

    .line 268
    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 270
    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    move-result-object v0

    .line 280
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    .line 284
    const-string v1, "  mGestureLogInsideInsets="

    .line 286
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLogInsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    .line 291
    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 293
    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object v0

    .line 303
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    .line 307
    const-string v1, "  mGestureLogOutsideInsets="

    .line 309
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLogOutsideInsets:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;

    .line 314
    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 316
    move-result-object v1

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    move-result-object v0

    .line 326
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    .line 330
    const-string v1, "  mEdgeBackPlugin="

    .line 332
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v0

    .line 345
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 349
    if-eqz p0, :cond_0

    .line 351
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->dump(Ljava/io/PrintWriter;)V

    .line 353
    :cond_0
    return-void
    .line 356
.end method

.method public final logGesture(I)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 8
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVocab:Ljava/util/Map;

    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    .line 12
    if-eqz v1, :cond_1

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    .line 26
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Integer;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v0

    .line 37
    const/16 v1, 0x64

    .line 38
    if-ge v0, v1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    const-string v0, ""

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 47
    iget v2, v1, Landroid/graphics/PointF;->y:F

    .line 49
    float-to-int v3, v2

    .line 51
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    .line 52
    if-eqz v4, :cond_2

    .line 54
    const/4 v4, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v4, 0x2

    .line 58
    :goto_1
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 59
    float-to-int v1, v1

    .line 61
    float-to-int v2, v2

    .line 62
    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    .line 63
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 65
    float-to-int v6, v6

    .line 67
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 68
    float-to-int v5, v5

    .line 70
    iget v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    .line 71
    iget v8, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    .line 73
    add-int/2addr v7, v8

    .line 75
    iget-object v8, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 76
    iget v8, v8, Landroid/graphics/Point;->x:I

    .line 78
    iget v9, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    .line 80
    iget v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    .line 82
    add-int/2addr v9, v10

    .line 84
    sub-int/2addr v8, v9

    .line 85
    iget-boolean v9, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    .line 86
    if-eqz v9, :cond_3

    .line 88
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLResults:F

    .line 90
    goto :goto_2

    .line 92
    :cond_3
    const/high16 p0, -0x40000000    # -2.0f

    .line 93
    :goto_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 95
    move-result-object v9

    .line 98
    const/16 v10, 0xe0

    .line 99
    invoke-virtual {v9, v10}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 101
    invoke-virtual {v9, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 104
    invoke-virtual {v9, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 107
    invoke-virtual {v9, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 110
    invoke-virtual {v9, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 113
    invoke-virtual {v9, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 116
    invoke-virtual {v9, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 119
    invoke-virtual {v9, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 122
    invoke-virtual {v9, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 125
    invoke-virtual {v9, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 128
    invoke-virtual {v9, p0}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 131
    invoke-virtual {v9, v0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 134
    invoke-virtual {v9}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 137
    invoke-virtual {v9}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 140
    move-result-object p0

    .line 143
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 144
    return-void
    .line 147
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-le v0, v1, :cond_1

    .line 5
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 9
    move-result v0

    .line 12
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    .line 13
    if-le v2, v1, :cond_0

    .line 15
    if-eq v2, v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "Config changed: newConfig="

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, " lastReportedConfig="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLastReportedConfig:Landroid/content/res/Configuration;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 47
    const-string v2, "NoBackGesture"

    .line 48
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisplaySize()V

    .line 56
    return-void
    .line 59
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->resetEdgeBackPlugin()V

    .line 4
    return-void
    .line 7
.end method

.method public final resetEdgeBackPlugin()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNewBackAffordanceEnabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 6
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackPanelControllerFactory:Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;

    .line 10
    iget-object v3, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->windowManager:Landroid/view/WindowManager;

    .line 12
    iget-object v4, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->viewConfiguration:Landroid/view/ViewConfiguration;

    .line 14
    iget-object v5, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->mainHandler:Landroid/os/Handler;

    .line 16
    iget-object v6, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 18
    iget-object v7, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 20
    iget-object v8, v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 22
    move-object v1, v0

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/navigationbar/gestural/BackPanelController;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/ViewConfiguration;Landroid/os/Handler;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/util/LatencyTracker;)V

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavBarEdgePanelProvider:Ljavax/inject/Provider;

    .line 35
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    .line 43
    :goto_0
    return-void
    .line 46
.end method

.method public final setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V
    .locals 1

    .line 1
    :try_start_0
    const-string/jumbo v0, "setEdgeBackPlugin"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackCallback:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;

    .line 10
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setBackCallback(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;)V

    .line 12
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    .line 17
    move-result-object v0

    .line 20
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisplaySize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 27
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 32
    throw p0
    .line 35
.end method

.method public final updateBackAnimationThresholds()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 7
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 9
    int-to-float v0, v0

    .line 11
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackSwipeLinearThreshold:F

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 14
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    .line 18
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNonLinearFactor:F

    .line 20
    iget-object v3, v2, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;->this$0:Lcom/android/wm/shell/back/BackAnimationController;

    .line 22
    iget-object v3, v3, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 24
    new-instance v4, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0;

    .line 26
    invoke-direct {v4, v2, v1, v0, p0}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;FFF)V

    .line 28
    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 31
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 33
    return-void
    .line 36
.end method

.method public final updateCurrentUserResources()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 12
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    .line 14
    move-result v2

    .line 17
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    .line 18
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    .line 20
    move-result v2

    .line 23
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    .line 24
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsButtonForcedVisible:Z

    .line 26
    invoke-virtual {v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    .line 28
    move-result v1

    .line 31
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsButtonForcedVisible:Z

    .line 32
    if-eq v2, v1, :cond_0

    .line 34
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mButtonForcedVisibleCallback:Ljava/util/function/Consumer;

    .line 36
    if-eqz v2, :cond_0

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object v1

    .line 43
    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 44
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsButtonForcedVisible:Z

    .line 47
    const/4 v2, 0x1

    .line 49
    xor-int/2addr v1, v2

    .line 50
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    .line 51
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 53
    move-result-object v1

    .line 56
    const v3, 0x10501f4    # @android:dimen/notification_alerted_size

    .line 57
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 60
    move-result v3

    .line 63
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    .line 64
    div-float/2addr v3, v4

    .line 66
    const-string v4, "back_gesture_bottom_height"

    .line 67
    const-string/jumbo v5, "systemui"

    .line 69
    invoke-static {v5, v4, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 72
    move-result v3

    .line 75
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 76
    move-result v3

    .line 79
    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBottomGestureHeight:F

    .line 80
    const/high16 v3, 0x41400000    # 12.0f

    .line 82
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 84
    move-result v1

    .line 87
    float-to-int v1, v1

    .line 88
    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    .line 89
    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    .line 91
    if-le v1, v3, :cond_1

    .line 93
    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    .line 95
    :cond_1
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    .line 97
    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    .line 99
    if-le v1, v3, :cond_2

    .line 101
    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    .line 103
    :cond_2
    const-string v1, "back_gesture_slop_multiplier"

    .line 105
    const/high16 v3, 0x3f400000    # 0.75f

    .line 107
    invoke-static {v5, v1, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 109
    move-result v1

    .line 112
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 113
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 115
    move-result v3

    .line 118
    int-to-float v3, v3

    .line 119
    mul-float/2addr v3, v1

    .line 120
    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    .line 121
    const v1, 0x7f070d19    # @dimen/navigation_edge_action_progress_threshold '412.0dp'

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 126
    move-result v1

    .line 129
    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackSwipeLinearThreshold:F

    .line 130
    new-instance v1, Landroid/util/TypedValue;

    .line 132
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 134
    const v3, 0x7f0700ad    # @dimen/back_progress_non_linear_factor '0.2'

    .line 137
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 140
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    .line 143
    move-result v0

    .line 146
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNonLinearFactor:F

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateBackAnimationThresholds()V

    .line 149
    return-void
    .line 152
.end method

.method public final updateDisplaySize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 12
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 16
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 21
    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setDisplaySize(Landroid/graphics/Point;)V

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateBackAnimationThresholds()V

    .line 28
    return-void
    .line 31
.end method

.method public final updateIsEnabled()V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "EdgeBackGestureHandler#updateIsEnabled"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabledTraced()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 15
    throw p0
    .line 18
.end method

.method public final updateIsEnabledTraced()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->register()V

    .line 17
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->unregister()V

    .line 21
    :goto_1
    return-void
.end method

.method public final updateMLModelState()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-string/jumbo v0, "systemui"

    .line 8
    const-string/jumbo v3, "use_back_gesture_ml_model"

    .line 11
    invoke-static {v0, v3, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    move v1, v2

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    .line 21
    if-ne v1, v0, :cond_1

    .line 23
    return-void

    .line 25
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    .line 26
    if-eqz v1, :cond_3

    .line 28
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLModelIsLoading:Z

    .line 33
    if-eqz v0, :cond_2

    .line 35
    const-string p0, "EdgeBackGestureHandler"

    .line 37
    const-string v0, "Model tried to load while already loading."

    .line 39
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void

    .line 44
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLModelIsLoading:Z

    .line 45
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda1;

    .line 47
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V

    .line 49
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 52
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54
    goto :goto_0

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    .line 58
    if-eqz v0, :cond_4

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    .line 66
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVocab:Ljava/util/Map;

    .line 68
    :cond_4
    :goto_0
    return-void
.end method

.method public final writeToProto(Lcom/android/systemui/tracing/nano/SystemUiTraceProto;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    .line 6
    invoke-direct {v0}, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;-><init>()V

    .line 8
    iput-object v0, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    .line 11
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    .line 13
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 15
    iput-boolean p0, p1, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;->allowGesture:Z

    .line 17
    return-void
    .line 19
.end method
