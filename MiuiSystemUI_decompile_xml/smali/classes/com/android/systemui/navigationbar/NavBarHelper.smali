.class public final Lcom/android/systemui/navigationbar/NavBarHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;
.implements Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver$ModeChangedListener;
.implements Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver$TargetsChangedListener;
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public mA11yButtonState:I

.field public final mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

.field public final mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mAssistContentObserver:Lcom/android/systemui/navigationbar/NavBarHelper$1;

.field public final mAssistManagerLazy:Ldagger/Lazy;

.field public mAssistantAvailable:Z

.field public mAssistantTouchGestureEnabled:Z

.field public final mCentralSurfacesOptionalLazy:Ldagger/Lazy;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mLongPressHomeEnabled:Z

.field public mNavBarMode:I

.field public final mRotationWatcher:Lcom/android/systemui/navigationbar/NavBarHelper$3;

.field public mRotationWatcherRotation:I

.field public final mStateListeners:Ljava/util/List;

.field public final mSystemActionRegistration:[Z

.field public final mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWallpaperVisibilityListener:Lcom/android/systemui/navigationbar/NavBarHelper$2;

.field public mWallpaperVisible:Z

.field public mWindowState:I

.field public mWindowStateDisplayId:I

.field public final mWm:Landroid/view/IWindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;Lcom/android/systemui/accessibility/SystemActions;Lcom/android/systemui/recents/OverviewProxyService;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;Landroid/view/IWindowManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p11

    .line 4
    move-object/from16 v2, p16

    .line 6
    move-object/from16 v4, p1

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v3, Landroid/os/Handler;

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    move-result-object v5

    .line 18
    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mHandler:Landroid/os/Handler;

    .line 22
    new-instance v5, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    .line 29
    const/16 v5, 0x20

    .line 31
    new-array v5, v5, [Z

    .line 33
    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mSystemActionRegistration:[Z

    .line 35
    new-instance v5, Lcom/android/systemui/navigationbar/NavBarHelper$1;

    .line 37
    invoke-direct {v5, v0, v3}, Lcom/android/systemui/navigationbar/NavBarHelper$1;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;Landroid/os/Handler;)V

    .line 39
    iput-object v5, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistContentObserver:Lcom/android/systemui/navigationbar/NavBarHelper$1;

    .line 42
    new-instance v3, Lcom/android/systemui/navigationbar/NavBarHelper$2;

    .line 44
    invoke-direct {v3, v0}, Lcom/android/systemui/navigationbar/NavBarHelper$2;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;)V

    .line 46
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWallpaperVisibilityListener:Lcom/android/systemui/navigationbar/NavBarHelper$2;

    .line 49
    new-instance v3, Lcom/android/systemui/navigationbar/NavBarHelper$3;

    .line 51
    invoke-direct {v3, v0}, Lcom/android/systemui/navigationbar/NavBarHelper$3;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;)V

    .line 53
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mRotationWatcher:Lcom/android/systemui/navigationbar/NavBarHelper$3;

    .line 56
    move-object/from16 v3, p1

    .line 58
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContext:Landroid/content/Context;

    .line 60
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    move-result-object v3

    .line 67
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 68
    move-object/from16 v3, p2

    .line 70
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 72
    move-object/from16 v3, p7

    .line 74
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistManagerLazy:Ldagger/Lazy;

    .line 76
    move-object/from16 v3, p8

    .line 78
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 80
    move-object/from16 v3, p9

    .line 82
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 84
    move-object/from16 v3, p13

    .line 86
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 88
    move-object/from16 v3, p5

    .line 90
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    .line 92
    move-object/from16 v3, p3

    .line 94
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    .line 96
    move-object/from16 v3, p4

    .line 98
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    .line 100
    move-object/from16 v3, p12

    .line 102
    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWm:Landroid/view/IWindowManager;

    .line 104
    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    new-instance v15, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 112
    move-object v3, v15

    .line 114
    iget-object v5, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 115
    iget-object v6, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 117
    iget-object v7, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 119
    iget-object v8, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mExecutor:Ljava/util/concurrent/Executor;

    .line 121
    iget-object v9, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 123
    iget-object v10, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 125
    iget-object v11, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    .line 127
    iget-object v12, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 129
    iget-object v13, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mBackPanelControllerFactory:Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;

    .line 131
    iget-object v14, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 133
    move-object/from16 p1, v15

    .line 135
    iget-object v15, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mWindowManager:Landroid/view/WindowManager;

    .line 137
    move-object/from16 v2, p1

    .line 139
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 141
    move-object/from16 v16, v0

    .line 143
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mPipOptional:Ljava/util/Optional;

    .line 145
    move-object/from16 v17, v0

    .line 147
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mDesktopModeOptional:Ljava/util/Optional;

    .line 149
    move-object/from16 v18, v0

    .line 151
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 153
    move-object/from16 v19, v0

    .line 155
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mNavBarEdgePanelProvider:Ljavax/inject/Provider;

    .line 157
    move-object/from16 v20, v0

    .line 159
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mBackGestureTfClassifierProviderProvider:Ljavax/inject/Provider;

    .line 161
    move-object/from16 v21, v0

    .line 163
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 165
    move-object/from16 v22, v0

    .line 167
    iget-object v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$Factory;->mLightBarControllerProvider:Ljavax/inject/Provider;

    .line 169
    move-object/from16 v23, v0

    .line 171
    invoke-direct/range {v3 .. v23}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/plugins/PluginManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/tracing/ProtoTracer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/navigationbar/gestural/BackPanelController$Factory;Landroid/view/ViewConfiguration;Landroid/view/WindowManager;Landroid/view/IWindowManager;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/plugins/FalsingManager;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/flags/FeatureFlags;Ljavax/inject/Provider;)V

    .line 173
    move-object/from16 v0, p0

    .line 176
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 178
    move-object/from16 v1, p10

    .line 180
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    .line 182
    move-result v1

    .line 185
    iput v1, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNavBarMode:I

    .line 186
    move-object/from16 v1, p16

    .line 188
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 190
    move-object/from16 v1, p6

    .line 193
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 195
    move-object/from16 v1, p15

    .line 198
    invoke-virtual {v1, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 200
    return-void
    .line 203
.end method

.method public static transitionMode(IZ)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    and-int/lit8 p1, p0, 0x6

    .line 6
    const/4 v1, 0x6

    .line 8
    if-ne p1, v1, :cond_1

    .line 9
    const/4 p0, 0x3

    .line 11
    return p0

    .line 12
    :cond_1
    and-int/lit8 p1, p0, 0x4

    .line 13
    if-eqz p1, :cond_2

    .line 15
    return v1

    .line 17
    :cond_2
    and-int/lit8 p1, p0, 0x2

    .line 18
    if-eqz p1, :cond_3

    .line 20
    const/4 p0, 0x4

    .line 22
    return p0

    .line 23
    :cond_3
    and-int/lit8 p0, p0, 0x40

    .line 24
    if-eqz p0, :cond_4

    .line 26
    return v0

    .line 28
    :cond_4
    const/4 p0, 0x0

    .line 29
    return p0
    .line 30
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "NavbarTaskbarFriendster"

    .line 2
    const-string v0, "  longPressHomeEnabled="

    .line 4
    invoke-static {p1, p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p2

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mLongPressHomeEnabled:Z

    .line 10
    const-string v1, "  mAssistantTouchGestureEnabled="

    .line 12
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object p2

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistantTouchGestureEnabled:Z

    .line 18
    const-string v1, "  mAssistantAvailable="

    .line 20
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object p2

    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistantAvailable:Z

    .line 26
    const-string v1, "  mNavBarMode="

    .line 28
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object p2

    .line 33
    iget p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNavBarMode:I

    .line 34
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    return-void
    .line 46
.end method

.method public final isImeShown(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 2
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Optional;

    .line 8
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 16
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Optional;

    .line 22
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 28
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 30
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 36
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 38
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 40
    const/4 v1, 0x1

    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 46
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 52
    move-result-object v0

    .line 55
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 56
    move-result v3

    .line 59
    invoke-virtual {v0, v3}, Landroid/view/WindowInsets;->isVisible(I)Z

    .line 60
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    move v0, v1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v0, v2

    .line 68
    :goto_1
    if-nez v0, :cond_3

    .line 69
    if-nez p0, :cond_2

    .line 71
    and-int/lit8 p0, p1, 0x2

    .line 73
    if-eqz p0, :cond_2

    .line 75
    goto :goto_2

    .line 77
    :cond_2
    move v1, v2

    .line 78
    :cond_3
    :goto_2
    return v1
    .line 79
.end method

.method public final onAccessibilityButtonModeChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateA11yState()V

    .line 2
    return-void
    .line 5
.end method

.method public final onAccessibilityButtonTargetsChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateA11yState()V

    .line 2
    return-void
    .line 5
.end method

.method public final onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateA11yState()V

    .line 2
    return-void
    .line 5
.end method

.method public final onConnectionChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateAssistantAvailability()V

    .line 4
    :cond_0
    return-void
    .line 7
.end method

.method public final onNavigationModeChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNavBarMode:I

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateAssistantAvailability()V

    .line 4
    return-void
    .line 7
.end method

.method public final removeNavTaskStateUpdater(Lcom/android/systemui/navigationbar/NavigationBar$2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    .line 9
    check-cast p1, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)Z

    .line 21
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    .line 24
    invoke-virtual {p1, p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->removeListener(Ljava/lang/Object;)V

    .line 26
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityButtonTargetsObserver:Lcom/android/systemui/accessibility/AccessibilityButtonTargetsObserver;

    .line 29
    invoke-virtual {p1, p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->removeListener(Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 34
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistContentObserver:Lcom/android/systemui/navigationbar/NavBarHelper$1;

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 38
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWm:Landroid/view/IWindowManager;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mRotationWatcher:Lcom/android/systemui/navigationbar/NavBarHelper$3;

    .line 43
    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    const-string v0, "NavBarHelper"

    .line 50
    const-string v1, "Failed to unregister rotation watcher"

    .line 52
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :goto_0
    const/4 p1, 0x0

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWm:Landroid/view/IWindowManager;

    .line 58
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWallpaperVisibilityListener:Lcom/android/systemui/navigationbar/NavBarHelper$2;

    .line 60
    invoke-interface {v0, v1, p1}, Landroid/view/IWindowManager;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    goto :goto_1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    const-string v1, "NavBarHelper"

    .line 67
    const-string v2, "Failed to register wallpaper visibility listener"

    .line 69
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    .line 76
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    .line 78
    iget-object p1, p1, Lcom/android/systemui/tracing/ProtoTracer;->mProtoTracer:Lcom/android/systemui/shared/tracing/FrameProtoTracer;

    .line 80
    iget-object v0, p1, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mLock:Ljava/lang/Object;

    .line 82
    monitor-enter v0

    .line 84
    :try_start_2
    iget-object p1, p1, Lcom/android/systemui/shared/tracing/FrameProtoTracer;->mTraceables:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;

    .line 93
    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    .line 95
    check-cast p1, Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiStateCallback:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;

    .line 104
    iget-object p1, p1, Lcom/android/systemui/model/SysUiState;->mCallbacks:Ljava/util/List;

    .line 106
    check-cast p1, Ljava/util/ArrayList;

    .line 108
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 113
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 116
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 118
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 120
    invoke-virtual {p1, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 122
    goto :goto_2

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    throw p0

    .line 128
    :cond_0
    :goto_2
    return-void
    .line 129
.end method

.method public final setWindowState(III)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    return-void

    .line 5
    :cond_0
    iput p1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWindowStateDisplayId:I

    .line 6
    iput p3, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mWindowState:I

    .line 8
    return-void
    .line 10
.end method

.method public final updateA11yState()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mA11yButtonState:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityButtonModeObserver:Lcom/android/systemui/accessibility/AccessibilityButtonModeObserver;

    .line 4
    invoke-virtual {v1}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->getSettingsValue()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    const-string v4, "Invalid string for  "

    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    const-string v3, "A11yButtonModeObserver"

    .line 31
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    move v1, v2

    .line 36
    :goto_0
    const/4 v3, 0x1

    .line 37
    if-ne v1, v3, :cond_0

    .line 38
    iput v2, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mA11yButtonState:I

    .line 40
    move v3, v2

    .line 42
    goto :goto_4

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    .line 46
    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 50
    move-result v1

    .line 53
    if-lt v1, v3, :cond_1

    .line 54
    move v4, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move v4, v2

    .line 58
    :goto_1
    const/4 v5, 0x2

    .line 59
    if-lt v1, v5, :cond_2

    .line 60
    goto :goto_2

    .line 62
    :cond_2
    move v3, v2

    .line 63
    :goto_2
    if-eqz v4, :cond_3

    .line 64
    const/16 v1, 0x10

    .line 66
    goto :goto_3

    .line 68
    :cond_3
    move v1, v2

    .line 69
    :goto_3
    if-eqz v3, :cond_4

    .line 70
    const/16 v2, 0x20

    .line 72
    :cond_4
    or-int/2addr v1, v2

    .line 74
    iput v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mA11yButtonState:I

    .line 75
    move v2, v4

    .line 77
    :goto_4
    iget v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mA11yButtonState:I

    .line 78
    if-eq v0, v1, :cond_5

    .line 80
    const/16 v0, 0xb

    .line 82
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateSystemAction(IZ)V

    .line 84
    const/16 v0, 0xc

    .line 87
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateSystemAction(IZ)V

    .line 89
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    .line 92
    check-cast p0, Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object p0

    .line 99
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v0

    .line 103
    if-eqz v0, :cond_6

    .line 104
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v0

    .line 109
    check-cast v0, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;

    .line 110
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar$2;

    .line 112
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 114
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateAccessibilityStateFlags()V

    .line 116
    goto :goto_5

    .line 119
    :cond_6
    return-void
    .line 120
.end method

.method public final updateAssistantAvailability()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistManagerLazy:Ldagger/Lazy;

    .line 2
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 10
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 12
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 14
    move-result v1

    .line 17
    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    .line 20
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v2

    .line 30
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v3

    .line 36
    const v4, 0x111002e    # @android:bool/config_assistLongPressHomeEnabledDefault

    .line 37
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 40
    move-result v3

    .line 43
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 46
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 48
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 50
    move-result v5

    .line 53
    const-string v6, "assist_long_press_home_enabled"

    .line 54
    invoke-static {v4, v6, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 56
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    move v3, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v3, v2

    .line 64
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mLongPressHomeEnabled:Z

    .line 65
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    move-result-object v3

    .line 72
    const v4, 0x111002f    # @android:bool/config_assistTouchGestureEnabledDefault

    .line 73
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 76
    move-result v3

    .line 79
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 80
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 82
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 84
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 86
    move-result v5

    .line 89
    const-string v6, "assist_touch_gesture_enabled"

    .line 90
    invoke-static {v4, v6, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 92
    move-result v3

    .line 95
    if-eqz v3, :cond_2

    .line 96
    move v3, v1

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    move v3, v2

    .line 100
    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistantTouchGestureEnabled:Z

    .line 101
    if-eqz v0, :cond_3

    .line 103
    if-eqz v3, :cond_3

    .line 105
    iget v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mNavBarMode:I

    .line 107
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    .line 109
    move-result v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    goto :goto_3

    .line 115
    :cond_3
    move v1, v2

    .line 116
    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAssistantAvailable:Z

    .line 117
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mLongPressHomeEnabled:Z

    .line 119
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    .line 121
    check-cast p0, Ljava/util/ArrayList;

    .line 123
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object p0

    .line 128
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v2

    .line 132
    if-eqz v2, :cond_4

    .line 133
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v2

    .line 138
    check-cast v2, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;

    .line 139
    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBar$2;

    .line 141
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/navigationbar/NavigationBar$2;->updateAssistantAvailable(ZZ)V

    .line 143
    goto :goto_4

    .line 146
    :cond_4
    return-void
    .line 147
.end method

.method public final updateSystemAction(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mSystemActionRegistration:[Z

    .line 2
    aget-boolean v1, v0, p1

    .line 4
    if-ne v1, p2, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    aput-boolean p2, v0, p1

    .line 9
    if-eqz p2, :cond_1

    .line 11
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    packed-switch p1, :pswitch_data_0

    .line 18
    :pswitch_0
    goto/16 :goto_1

    .line 21
    :pswitch_1
    const p2, 0x1040106    # @android:string/accessibility_system_action_power_dialog_label

    .line 23
    const-string v0, "SYSTEM_ACTION_DPAD_CENTER"

    .line 26
    goto/16 :goto_0

    .line 28
    :pswitch_2
    const p2, 0x1040109    # @android:string/accessibility_system_action_screenshot_label

    .line 30
    const-string v0, "SYSTEM_ACTION_DPAD_RIGHT"

    .line 33
    goto/16 :goto_0

    .line 35
    :pswitch_3
    const p2, 0x1040108    # @android:string/accessibility_system_action_recents_label

    .line 37
    const-string v0, "SYSTEM_ACTION_DPAD_LEFT"

    .line 40
    goto :goto_0

    .line 42
    :pswitch_4
    const p2, 0x1040107    # @android:string/accessibility_system_action_quick_settings_label

    .line 43
    const-string v0, "SYSTEM_ACTION_DPAD_DOWN"

    .line 46
    goto :goto_0

    .line 48
    :pswitch_5
    const p2, 0x104010a    # @android:string/accessibility_uncheck_legacy_item_warning

    .line 49
    const-string v0, "SYSTEM_ACTION_DPAD_UP"

    .line 52
    goto :goto_0

    .line 54
    :pswitch_6
    const p2, 0x1040105    # @android:string/accessibility_system_action_on_screen_a11y_shortcut_label

    .line 55
    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE"

    .line 58
    goto :goto_0

    .line 60
    :pswitch_7
    const p2, 0x104010b    # @android:string/action_bar_home_description

    .line 61
    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    .line 64
    goto :goto_0

    .line 66
    :pswitch_8
    const p2, 0x1040110    # @android:string/action_mode_done

    .line 67
    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU"

    .line 70
    goto :goto_0

    .line 72
    :pswitch_9
    const p2, 0x1040111    # @android:string/activity_chooser_view_dialog_title_default

    .line 73
    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON"

    .line 76
    goto :goto_0

    .line 78
    :pswitch_a
    const p2, 0x104010c    # @android:string/action_bar_home_description_format

    .line 79
    const-string v0, "SYSTEM_ACTION_HEADSET_HOOK"

    .line 82
    goto :goto_0

    .line 84
    :pswitch_b
    const p2, 0x1040115    # @android:string/activity_resolver_use_once

    .line 85
    const-string v0, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    .line 88
    goto :goto_0

    .line 90
    :pswitch_c
    const p2, 0x104010e    # @android:string/action_bar_up_description

    .line 91
    const-string v0, "SYSTEM_ACTION_LOCK_SCREEN"

    .line 94
    goto :goto_0

    .line 96
    :pswitch_d
    const p2, 0x1040112    # @android:string/activity_chooser_view_see_all

    .line 97
    const-string v0, "SYSTEM_ACTION_POWER_DIALOG"

    .line 100
    goto :goto_0

    .line 102
    :pswitch_e
    const p2, 0x1040113    # @android:string/activity_list_empty

    .line 103
    const-string v0, "SYSTEM_ACTION_QUICK_SETTINGS"

    .line 106
    goto :goto_0

    .line 108
    :pswitch_f
    const p2, 0x104010f    # @android:string/action_menu_overflow_description

    .line 109
    const-string v0, "SYSTEM_ACTION_NOTIFICATIONS"

    .line 112
    goto :goto_0

    .line 114
    :pswitch_10
    const p2, 0x1040114    # @android:string/activity_resolver_use_always

    .line 115
    const-string v0, "SYSTEM_ACTION_RECENTS"

    .line 118
    goto :goto_0

    .line 120
    :pswitch_11
    const p2, 0x104010d    # @android:string/action_bar_home_subtitle_description_format

    .line 121
    const-string v0, "SYSTEM_ACTION_HOME"

    .line 124
    goto :goto_0

    .line 126
    :pswitch_12
    const p2, 0x1040104    # @android:string/accessibility_system_action_on_screen_a11y_shortcut_chooser_label

    .line 127
    const-string v0, "SYSTEM_ACTION_BACK"

    .line 130
    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 132
    move-result-object p2

    .line 135
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 136
    invoke-virtual {p0, p2, p1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 138
    goto :goto_1

    .line 141
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    .line 142
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 144
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->unregisterSystemAction(I)V

    .line 146
    :goto_1
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 150
.end method
