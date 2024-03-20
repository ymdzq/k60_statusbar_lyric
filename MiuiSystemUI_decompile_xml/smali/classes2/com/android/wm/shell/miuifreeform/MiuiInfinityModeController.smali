.class public Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$TransitionObserver;


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "MiuiInfinityModeController"


# instance fields
.field private final mBGExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDisplayHeight:I

.field public mDisplayWidth:I

.field private mHandleTouchEvents:Z

.field private mHasNavBar:Z

.field private final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

.field private mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

.field private final mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private final mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

.field private final mMiuiInfinityModeSizesPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

.field private final mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

.field private final mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

.field private final mMiuiInfinityModeTransitionCoordinator:Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;

.field private mNavBarHeight:I

.field private final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private mSettingsObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;

.field private final mShellCommandActionHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$ShellCommandActionHandler;

.field private final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field private final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mSplitScreenController:Ljava/util/Optional;

.field private mStartRemoteTTimeout:Ljava/lang/Runnable;

.field private mStatusBarHeight:I

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private mUiMode:I

.field private final mWindowBoundsPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

.field private final mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public static synthetic $r8$lambda$5sw4HIKMFnxHadxzFpj7zNR0hxQ(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->onInit()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$QmAS5ibMIyMRX1k2J5Xr3Km84vI(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->lambda$new$0()V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mdisplayModeChanged(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->displayModeChanged()V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mupdateGestureLineState(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->updateGestureLineState()V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mupdateNavBarState(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->updateNavBarState()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p1

    .line 4
    move-object/from16 v10, p8

    .line 6
    move-object/from16 v11, p12

    .line 8
    move-object/from16 v7, p14

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$$ExternalSyntheticLambda0;

    .line 15
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, v8, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;I)V

    .line 18
    iput-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mStartRemoteTTimeout:Ljava/lang/Runnable;

    .line 21
    iput-object v9, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mContext:Landroid/content/Context;

    .line 23
    move-object/from16 v0, p2

    .line 25
    iput-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 27
    move-object/from16 v0, p4

    .line 29
    iput-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 31
    move-object/from16 v12, p5

    .line 33
    iput-object v12, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 35
    move-object/from16 v13, p9

    .line 37
    iput-object v13, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 39
    move-object/from16 v4, p10

    .line 41
    iput-object v4, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 43
    move-object/from16 v2, p13

    .line 45
    iput-object v2, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 47
    iput-object v11, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMainHandler:Landroid/os/Handler;

    .line 49
    iput-object v7, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mBGExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 51
    move-object/from16 v0, p6

    .line 53
    iput-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 55
    move-object/from16 v0, p11

    .line 57
    iput-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mSplitScreenController:Ljava/util/Optional;

    .line 59
    iput-object v10, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 61
    move-object/from16 v0, p7

    .line 63
    iput-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 65
    move-object/from16 v14, p15

    .line 67
    iput-object v14, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 69
    move-object/from16 v0, p16

    .line 71
    iput-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 73
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$ShellCommandActionHandler;

    .line 75
    invoke-direct {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$ShellCommandActionHandler;-><init>()V

    .line 77
    iput-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mShellCommandActionHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$ShellCommandActionHandler;

    .line 80
    new-instance v15, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;

    .line 82
    move-object v0, v15

    .line 84
    move-object/from16 v1, p1

    .line 85
    move-object/from16 v3, p5

    .line 87
    move-object/from16 v5, p0

    .line 89
    move-object/from16 v6, p15

    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)V

    .line 93
    iput-object v15, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeTransitionCoordinator:Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;

    .line 96
    new-instance v6, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 98
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;

    .line 100
    invoke-direct {v0, v9, v11, v7}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    .line 102
    invoke-direct {v6, v8, v10, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevelConfig;)V

    .line 105
    iput-object v6, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeSizesPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 108
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 110
    invoke-direct {v0, v8, v6}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;)V

    .line 112
    iput-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mWindowBoundsPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 115
    new-instance v7, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 117
    move-object v0, v7

    .line 119
    move-object/from16 v2, p5

    .line 120
    move-object/from16 v3, p0

    .line 122
    move-object v4, v15

    .line 124
    move-object/from16 v5, p8

    .line 125
    move-object v12, v6

    .line 127
    move-object/from16 v6, p9

    .line 128
    move-object v13, v7

    .line 130
    move-object/from16 v7, p15

    .line 131
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)V

    .line 133
    iput-object v13, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 136
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 138
    invoke-direct {v0, v10, v12, v13, v8}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea$GestureDragCallback;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V

    .line 140
    iput-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 143
    invoke-virtual {v15, v8}, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;->addTransitionCallback(Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator$TransitionObserver;)V

    .line 145
    invoke-virtual {v13, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->addAnimatorStateCallback(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V

    .line 148
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;

    .line 151
    invoke-direct {v0, v8, v9, v11}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Landroid/content/Context;Landroid/os/Handler;)V

    .line 153
    iput-object v0, v8, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mSettingsObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->updateNavBarState()V

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->updateGestureLineState()V

    .line 161
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$$ExternalSyntheticLambda0;

    .line 164
    const/4 v1, 0x1

    .line 166
    invoke-direct {v0, v8, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;I)V

    .line 167
    move-object/from16 v1, p3

    .line 170
    invoke-virtual {v1, v8, v0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 172
    return-void
    .line 175
.end method

.method private displayModeChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method private isFullscreenNavBar()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 7
    const-string v0, "force_fsg_nav_bar"

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 17
    :cond_0
    return v1
    .line 18
.end method

.method private isHideGestureLine()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 7
    const-string v0, "hide_gesture_line"

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 17
    :cond_0
    return v1
    .line 18
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->onTransitionFail()V

    .line 2
    return-void
    .line 5
.end method

.method private onDisplayChanged(I)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 8
    move-result-object p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    return-void

    .line 14
    :cond_1
    iget v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 15
    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 17
    iget v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayWidth:I

    .line 19
    if-eq v1, v3, :cond_3

    .line 21
    iget v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayHeight:I

    .line 23
    if-ne v2, v3, :cond_2

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayWidth:I

    .line 28
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayHeight:I

    .line 30
    iget v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mNavBarFrameHeight:I

    .line 32
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mNavBarHeight:I

    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mContext:Landroid/content/Context;

    .line 36
    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 38
    invoke-static {v1, v2}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeightForRotation(Landroid/content/Context;I)I

    .line 40
    move-result v1

    .line 43
    iput v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mStatusBarHeight:I

    .line 44
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 46
    new-instance v2, Landroid/graphics/Rect;

    .line 48
    iget v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayWidth:I

    .line 50
    iget v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayHeight:I

    .line 52
    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 54
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->setGlobalThermalArea(Landroid/graphics/Rect;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->updateDraggableAreas()V

    .line 60
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeSizesPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->policyUpdateByDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 65
    :cond_3
    :goto_0
    return-void
    .line 68
.end method

.method private onInit()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->isMiuiInfiniteRadioFeatureEnable()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sysui/ShellController;->addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    .line 25
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 28
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mSplitScreenController:Ljava/util/Optional;

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->setSplitScreenController(Ljava/util/Optional;)V

    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 35
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->setMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 42
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeSizesPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->setDynamicStrategy(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;)V

    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 49
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->addActiveTaskListener(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V

    .line 53
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 56
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mWindowBoundsPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->setTaskBoundsPositioner(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;)V

    .line 60
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 63
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->onInit()V

    .line 65
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mSettingsObserver:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;

    .line 68
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$SettingsObserver;->observe()V

    .line 70
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 73
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$$ExternalSyntheticLambda1;

    .line 75
    invoke-direct {v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V

    .line 77
    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 83
    const-string v1, "freeform_cvw"

    .line 85
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mShellCommandActionHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$ShellCommandActionHandler;

    .line 87
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addCommandCallback(Ljava/lang/String;Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-void
    .line 92
.end method

.method private updateGestureLineState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 2
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->isHideGestureLine()Z

    .line 4
    move-result p0

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->updateGestureLineState(Z)V

    .line 8
    return-void
    .line 11
.end method

.method private updateNavBarState()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->isFullscreenNavBar()Z

    .line 2
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mHasNavBar:Z

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->setForceFsgNavBar(Z)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public cancelGesture()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->setTransitionSuspend()V

    .line 4
    return-void
    .line 7
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->TAG:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 13
    return-void
    .line 16
.end method

.method public gestureReady()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 2
    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->setTransitionState(I)V

    .line 6
    return-void
    .line 9
.end method

.method public getAnimExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    return-object p0
    .line 6
.end method

.method public getAnimatorStateCallback()Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 2
    return-object p0
    .line 4
.end method

.method public getBGExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mBGExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    return-object p0
    .line 4
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDisplayAreaOrganizer()Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 2
    return-object p0
    .line 4
.end method

.method public getDisplayHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getDisplayID()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getDisplayWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public getIconProvider()Lcom/android/launcher3/icons/IconProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMainHandler:Landroid/os/Handler;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMaxRealHeight(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeSizesPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->getMaxRealHeight(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getMaxRealWidth(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeSizesPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->getMaxRealWidth(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getMiuiFreeformModeAvoidAlgorithm()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiInfinityModeDragHandler()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiInfinityModeLevelPolicyCompat()Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeSizesPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiInfinityModeTaskRepository()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiInfinityModeThermalArea()Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 2
    return-object p0
    .line 4
.end method

.method public getNavBarHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mNavBarHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getShellTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSizeLevelByTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeSizesPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->getSizeLevelByTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getSizeLevelEnteringDesktop(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeSizesPolicy:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mWindowBoundsPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 4
    invoke-virtual {v0, p1, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeLevelPolicyCompat;->getSizeLevelEnteringDesktop(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeSizeLevel;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public getStatusBarHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mStatusBarHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getTransitions()Lcom/android/wm/shell/transition/Transitions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 2
    return-object p0
    .line 4
.end method

.method public getWindowPositioner()Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mWindowBoundsPositioner:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModePositionerCompat;

    .line 2
    return-object p0
    .line 4
.end method

.method public hasNavBar()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mHasNavBar:Z

    .line 2
    return p0
    .line 4
.end method

.method public isInDragTaskResizing(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->hasTaskDragResizing(I)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public isKeyguardLocked()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->isKeyguardLocked()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public isMiuiInfiniteRadioFeatureEnable()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->isMiuiInfiniteRadioFeatureEnable()Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 2
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mUiMode:I

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mUiMode:I

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->onUiModeChanged(I)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public bridge synthetic onDensityOrFontScaleChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onDesktopModeChange(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->updateDraggableAreas()V

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->onDesktopModeChange(Z)V

    .line 7
    return-void
    .line 10
.end method

.method public onDisplayAdded(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->onDisplayChanged(I)V

    .line 2
    return-void
    .line 5
.end method

.method public onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    sget-object p4, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->TAG:Ljava/lang/String;

    .line 2
    new-instance p5, Ljava/lang/StringBuilder;

    .line 4
    const-string v0, "onDisplayChange fromRotation:"

    .line 6
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v0, ",toRotation:"

    .line 14
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p5

    .line 25
    invoke-static {p4, p5}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    if-eq p2, p3, :cond_0

    .line 29
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 31
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->getAnimatorStateListener()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;

    .line 33
    move-result-object p2

    .line 36
    const-string p3, "default"

    .line 37
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$GestureAnimatorStateListener;->setFinishAnimationType(Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->onDisplayChanged(I)V

    .line 42
    return-void
    .line 45
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->onDisplayChanged(I)V

    .line 2
    return-void
    .line 5
.end method

.method public bridge synthetic onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onFixedRotationFinished(I)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->TAG:Ljava/lang/String;

    .line 2
    const-string p1, "onFixedRotationFinished"

    .line 4
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public onFixedRotationStarted(II)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->TAG:Ljava/lang/String;

    .line 2
    const-string p1, "onFixedRotationStarted"

    .line 4
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public onKeepClearAreasChanged(ILjava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->TAG:Ljava/lang/String;

    .line 2
    const-string p1, "onKeepClearAreasChanged"

    .line 4
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public bridge synthetic onKeyguardDismissAnimationFinished()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onKeyguardVisibilityChanged(ZZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->onKeyguardVisibilityChanged(ZZZ)V

    .line 4
    return-void
    .line 7
.end method

.method public bridge synthetic onLocaleOrLayoutDirectionChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMaximizeModeTransitionFinished(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onSmallestScreenWidthChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onThemeChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/view/InputMonitor;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->onTouchEvent(Landroid/view/MotionEvent;Landroid/view/InputMonitor;)Z

    .line 10
    move-result p1

    .line 13
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mHandleTouchEvents:Z

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->onTouchEvent(Landroid/view/MotionEvent;Landroid/view/InputMonitor;)Z

    .line 19
    :goto_0
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mHandleTouchEvents:Z

    .line 22
    return p0
    .line 24
.end method

.method public onTransactionFinished()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->TAG:Ljava/lang/String;

    .line 2
    const-string v1, "onTransactionFinished "

    .line 4
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 9
    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->setTransitionState(I)V

    .line 12
    return-void
    .line 15
.end method

.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->TAG:Ljava/lang/String;

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    const-string v0, "onTransactionReady : "

    .line 6
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 17
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
    .line 21
.end method

.method public onTransitionFail()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->onTransactionFinished()V

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->onGestureDragFailed(Z)V

    .line 8
    return-void
    .line 11
.end method

.method public onTransitionMergeByBoundsChange(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->animatorMergedByBoundsChange(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;)V

    .line 4
    return-void
    .line 7
.end method

.method public onTransitionMergeByModeChange([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->getAnimatingTaskInfo()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeTransitionCoordinator:Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;

    .line 8
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 10
    move-result v2

    .line 13
    invoke-virtual {v1, p1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;->checkForConsistency([Landroid/view/RemoteAnimationTarget;I)Landroid/view/RemoteAnimationTarget;

    .line 14
    move-result-object v1

    .line 17
    sget-object v2, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->TAG:Ljava/lang/String;

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    const-string v4, "onTransitionMergeByModeChange  animationTarget:"

    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 33
    invoke-static {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    if-eqz v1, :cond_0

    .line 37
    iget-object p1, v1, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 39
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->updateTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 44
    invoke-virtual {p0, v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->animatorMergedByModeChange(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 46
    goto :goto_0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    const-string p2, "onTransitionMergeByModeChange fail:"

    .line 52
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    invoke-static {v2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void
    .line 67
.end method

.method public onTransitionStart([Landroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "onTransitionStart : apps:"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 21
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mStartRemoteTTimeout:Ljava/lang/Runnable;

    .line 23
    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 25
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 30
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->isTransitionIdle()Z

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 38
    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->onGestureDragFailed(Z)V

    .line 41
    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 45
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->getAnimatingTaskInfo()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 47
    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeTransitionCoordinator:Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;

    .line 51
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 53
    move-result v3

    .line 56
    invoke-virtual {v2, p1, v3}, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;->checkForConsistency([Landroid/view/RemoteAnimationTarget;I)Landroid/view/RemoteAnimationTarget;

    .line 57
    move-result-object v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 63
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->gestureStarted()Z

    .line 65
    move-result p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 71
    invoke-virtual {p1, v1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->animationStarted(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Z

    .line 73
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 79
    const/16 p1, 0x8

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->setTransitionState(I)V

    .line 83
    goto :goto_0

    .line 86
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->backToFSTask(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 89
    const-string p0, "interrupt transition because an event has ended the loop!"

    .line 92
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    goto :goto_0

    .line 97
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 98
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->backToFSTask(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    .line 103
    const-string p2, "onTransitionStart fail:"

    .line 105
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 116
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void
    .line 120
.end method

.method public onTransitionSuspend()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->setTransitionSuspend()V

    .line 4
    return-void
    .line 7
.end method

.method public runInMainExecutor(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 6
    return-void
    .line 9
.end method

.method public setMiuiFreeformModeAvoidAlgorithm(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiFreeformModeAvoidAlgorithm:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->setMiuiFreeformModeAvoidAlgorithm(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)V

    .line 6
    return-void
    .line 9
.end method

.method public setMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getMiuiFreeformModeGestureHandler()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreeformModeCornerTipHandler()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->setMiuiFreeformModeCornerTipHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeCornerTipHandler;)V

    .line 14
    return-void
    .line 17
.end method

.method public startRemoteAnimation()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 2
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->setTransitionState(I)V

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mStartRemoteTTimeout:Ljava/lang/Runnable;

    .line 10
    const-wide/16 v2, 0x3e8

    .line 12
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeTransitionCoordinator:Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeThermalArea:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeThermalArea;->getDownUpTime()J

    .line 23
    move-result-wide v1

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/transition/MiuiInfinityModeTransitionCoordinator;->startHomeTransition(J)Z

    .line 27
    move-result p0

    .line 30
    return p0
    .line 31
.end method

.method public updateDraggableAreas()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayWidth:I

    .line 4
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mDisplayHeight:I

    .line 6
    iget v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mNavBarHeight:I

    .line 8
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->mStatusBarHeight:I

    .line 10
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->updateDraggableAreas(IIII)V

    .line 12
    return-void
    .line 15
.end method
