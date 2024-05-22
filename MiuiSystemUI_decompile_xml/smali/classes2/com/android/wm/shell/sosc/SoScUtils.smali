.class public Lcom/android/wm/shell/sosc/SoScUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEBUG:Z

.field public static final FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

.field public static final INPUT_CONSUMER_SOSC:Ljava/lang/String; = "sosc_input_consumer"

.field static INSTANCE:Lcom/android/wm/shell/sosc/SoScUtils; = null

.field private static final IS_FOLD:Z

.field private static final IS_TABLET:Z

.field public static final KEY_EXTRA_SHELL_SOSC_SPLIT_SCREEN:Ljava/lang/String; = "extra_shell_sosc_split_screen"

.field public static final MONITORED_TRANSITION_TYPE_ORIENTATION_CHANGE:I = 0x3

.field public static final MONITORED_TRANSITION_TYPE_PAIRS_OPEN:I = 0x2

.field public static final MONITORED_TRANSITION_TYPE_REQUEST_CLOSE:I = 0x0

.field public static final MONITORED_TRANSITION_TYPE_REQUEST_OPEN:I = 0x1

.field public static final MONITORED_TRANSITION_TYPE_REQUEST_OPEN_FULL_SCREEN:I = 0x4

.field public static final SOSC_ENTER_BY_3RD:I = 0x9

.field public static final SOSC_ENTER_BY_CLICK_APP_ICON:I = 0xc

.field public static final SOSC_ENTER_BY_CONTROLLER:I = 0xa

.field public static final SOSC_ENTER_BY_DRAGDROP:I = 0x0

.field public static final SOSC_ENTER_BY_DRAGDROP_FROM_DOCK:I = 0x1

.field public static final SOSC_ENTER_BY_DRAGDROP_FROM_QUICKSEARCH:I = 0x3

.field public static final SOSC_ENTER_BY_DRAGDROP_FROM_SIDEBAR:I = 0x2

.field public static final SOSC_ENTER_BY_HOME:I = 0x6

.field public static final SOSC_ENTER_BY_KEYBOARD:I = 0x5

.field public static final SOSC_ENTER_BY_PAIR_SHORTCUT:I = 0x8

.field public static final SOSC_ENTER_BY_RECENT:I = 0x7

.field public static final SOSC_ENTER_BY_RECOMMEND:I = 0xb

.field public static final SOSC_ENTER_BY_THREE_GESTURE:I = 0x4

.field public static final SOSC_ENTER_UNKNOWN:I = -0x1

.field public static final SOSC_FAILED_BY_APP_NOT_SUPPORT:I = 0x0

.field public static final SOSC_INFO_KEY_IS_MINIMIZED:Ljava/lang/String; = "Minimized"

.field public static final SOSC_INFO_KEY_LOT_BOUNDS:Ljava/lang/String; = "LeftOrTopBounds"

.field public static final SOSC_INFO_KEY_LOT_TOP_TASKINFO:Ljava/lang/String; = "LeftOrTopTopTaskInfo"

.field public static final SOSC_INFO_KEY_MINIMIZED_POSTION:Ljava/lang/String; = "mMinimizedPostion"

.field public static final SOSC_INFO_KEY_MINIMIZED_SIZE:Ljava/lang/String; = "MinimizedSize"

.field public static final SOSC_INFO_KEY_PRELOAD_BOUNDS_LAND11_LOT_FOLD:Ljava/lang/String; = "FoldPreloadLandLeftOrTopBounds1_1"

.field public static final SOSC_INFO_KEY_PRELOAD_BOUNDS_LAND11_LOT_PAD:Ljava/lang/String; = "PadPreloadLandLeftOrTopBounds1_1"

.field public static final SOSC_INFO_KEY_PRELOAD_BOUNDS_LAND11_ROB_FOLD:Ljava/lang/String; = "FoldPreloadLandRightOrBottomBounds1_1"

.field public static final SOSC_INFO_KEY_PRELOAD_BOUNDS_LAND11_ROB_PAD:Ljava/lang/String; = "PadPreloadLandRightOrBottomBounds1_1"

.field public static final SOSC_INFO_KEY_PRELOAD_BOUNDS_LAND12_LOT_PAD:Ljava/lang/String; = "PadPreloadLandLeftOrTopBounds1_2"

.field public static final SOSC_INFO_KEY_PRELOAD_BOUNDS_LAND12_ROB_PAD:Ljava/lang/String; = "PadPreloadLandRightOrBottomBounds1_2"

.field public static final SOSC_INFO_KEY_PRELOAD_BOUNDS_LAND21_LOT_PAD:Ljava/lang/String; = "PadPreloadLandLeftOrTopBounds2_1"

.field public static final SOSC_INFO_KEY_PRELOAD_BOUNDS_LAND21_ROB_PAD:Ljava/lang/String; = "PadPreloadLandRightOrBottomBounds2_1"

.field public static final SOSC_INFO_KEY_PRELOAD_BOUNDS_PORT11_LOT_FOLD:Ljava/lang/String; = "FoldPreloadPortLeftOrTopBounds1_1"

.field public static final SOSC_INFO_KEY_PRELOAD_BOUNDS_PORT11_LOT_PAD:Ljava/lang/String; = "PadPreloadPortLeftOrTopBounds1_1"

.field public static final SOSC_INFO_KEY_PRELOAD_BOUNDS_PORT11_ROB_FOLD:Ljava/lang/String; = "FoldPreloadPortRightOrBottomBounds1_1"

.field public static final SOSC_INFO_KEY_PRELOAD_BOUNDS_PORT11_ROB_PAD:Ljava/lang/String; = "PadPreloadPortRightOrBottomBounds1_1"

.field public static final SOSC_INFO_KEY_PRELOAD_MINIMIZED_SIZE:Ljava/lang/String; = "PreloadMinimizedSize"

.field public static final SOSC_INFO_KEY_ROB_BOUNDS:Ljava/lang/String; = "RightOrBottomBounds"

.field public static final SOSC_INFO_KEY_ROB_TOP_TASKINFO:Ljava/lang/String; = "RightOrBottomTopTaskInfo"

.field public static final SOSC_INFO_KEY_ROOT_BOUNDS:Ljava/lang/String; = "RootBounds"

.field public static final SOSC_INFO_KEY_SOSCSTATE:Ljava/lang/String; = "SoScState"

.field public static final SOSC_MINIMIZED_POSTION_BOTTOM:I = 0x3

.field public static final SOSC_MINIMIZED_POSTION_LEFT:I = 0x0

.field public static final SOSC_MINIMIZED_POSTION_RIGHT:I = 0x2

.field public static final SOSC_MINIMIZED_POSTION_TOP:I = 0x1

.field public static final SOSC_QUIT_BY_FULL_GESTURE_CLOSE:I = 0x0

.field public static final SOSC_QUIT_BY_OTHER:I = 0x6

.field public static final SOSC_QUIT_BY_SINGLE_CONTROLLER_CLOSE:I = 0x3

.field public static final SOSC_QUIT_BY_SINGLE_CONTROLLER_FREEFORM:I = 0x5

.field public static final SOSC_QUIT_BY_SINGLE_CONTROLLER_FULLSCREEN:I = 0x4

.field public static final SOSC_QUIT_BY_SINGLE_GESTURE_CLOSE:I = 0x1

.field public static final SOSC_QUIT_BY_SINGLE_REPLACE:I = 0x2

.field public static final SOSC_RESIZE_ENTER_RECENT:I = 0x0

.field public static final SOSC_RESIZE_ENTER_SHORTCUT:I = 0x1

.field public static final SOSC_SETTINGS_KEY:Ljava/lang/String; = "wmshell.sosc_enable"

.field public static final SOSC_STATE_FULL_OPEN:I = 0x2

.field public static final SOSC_STATE_SINGLE_OPEN_LOT:I = 0x0

.field public static final SOSC_STATE_SINGLE_OPEN_ROB:I = 0x1

.field public static final SOSC_STATE_UNACTIVIE:I = -0x1

.field public static final TRANSIT_SOSC_EXIT_ALL:I = 0x450

.field public static final TRANSIT_SOSC_EXIT_LOT:I = 0x44e

.field public static final TRANSIT_SOSC_EXIT_ROB:I = 0x44f

.field public static final TRANSIT_SOSC_OPEN_PAIRS:I = 0x44d

.field public static final TRANSIT_SOSC_RESIZING_ENTER:I = 0x451

.field public static final TRANSIT_SOSC_SCREEN_OPEN_TO_LOT:I = 0x44b

.field public static final TRANSIT_SOSC_SCREEN_OPEN_TO_ROB:I = 0x44c

.field public static final TRANSIT_SOSC_TO_BACK:I = 0x45c


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "persist.wm.debug.sosc"

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/wm/shell/sosc/SoScUtils;->DEBUG:Z

    .line 9
    const-string v0, "ro.build.characteristics"

    .line 11
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string/jumbo v2, "tablet"

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 23
    sput-boolean v0, Lcom/android/wm/shell/sosc/SoScUtils;->IS_TABLET:Z

    .line 24
    const-string v0, "persist.sys.muiltdisplay_type"

    .line 26
    const/4 v2, 0x0

    .line 28
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 29
    move-result v0

    .line 32
    const/4 v3, 0x2

    .line 33
    if-ne v0, v3, :cond_0

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    move v1, v2

    .line 37
    :goto_0
    sput-boolean v1, Lcom/android/wm/shell/sosc/SoScUtils;->IS_FOLD:Z

    .line 38
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 40
    const v1, 0x3f19999a    # 0.6f

    .line 42
    const/high16 v2, 0x3f800000    # 1.0f

    .line 45
    const v3, 0x3f4ccccd    # 0.8f

    .line 47
    const/4 v4, 0x0

    .line 50
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 51
    sput-object v0, Lcom/android/wm/shell/sosc/SoScUtils;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 54
    const-class v0, Lcom/android/wm/shell/sosc/SoScUtils;

    .line 56
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 61
    check-cast v0, Lcom/android/wm/shell/sosc/SoScUtils;

    .line 62
    sput-object v0, Lcom/android/wm/shell/sosc/SoScUtils;->INSTANCE:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 64
    return-void
    .line 66
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/wm/shell/sosc/SoScUtils;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/sosc/SoScUtils;->INSTANCE:Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2
    return-object v0
    .line 4
.end method


# virtual methods
.method public adjustSplitImePositionInSoSc(Landroid/window/TransitionInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public adjustSurfaceForMinimizedMode(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public buildRequestHomeFocusWct(Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public canUpdateSurface(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public getDividerOriginPosition()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method

.method public getFullModeRunningDuration()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getMinimizedPoint()Landroid/graphics/Point;
    .locals 0

    .line 1
    new-instance p0, Landroid/graphics/Point;

    .line 2
    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public getPackageName(Landroid/app/TaskInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public getSingleModeRunningDuration()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getSoScState()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method

.method public getTaskFromRecentTasks(I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public hideDimForIme()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public inSoScFullMode()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public inSoScMinimizedMode()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public inSoScSingleMode()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public injectDependencies(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public isDividerFixed()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isFold()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/wm/shell/sosc/SoScUtils;->IS_FOLD:Z

    .line 2
    return p0
    .line 4
.end method

.method public isHome(Landroid/app/TaskInfo;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isInMultiWinSwitch()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isInPausingTask(Landroid/content/ComponentName;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isLandscape()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isMonitoredTransitonFinsihed(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public isPad()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/android/wm/shell/sosc/SoScUtils;->IS_TABLET:Z

    .line 2
    return p0
    .line 4
.end method

.method public isRecentsFinished()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isRecentsStarted()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isRequestOpenTransition(Landroid/os/IBinder;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isRotationLockDefault()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isSingleCloseInFullMode()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isSoScRootTask(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isSoScShownTask(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isSoScStageRootTask(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isSoScSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isSoscActive()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isWideScreen()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public monitorOrientarionTransitionStart(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public monitorPairsOpenTransitionStart(Landroid/os/IBinder;II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public monitorTransitionFinished(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public monitorTransitionRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public needAdjustSurfaceForMinimizedMode(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public needResingToEnterSoSc()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public needSupportNavigationHandle()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public needUnpaired(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public offsetSurfaceInMinimizedMode()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onPreExitSoScState()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onPreSoScBoundsChanged(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onRecentsTransitionFinished(ZZZ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onRecentsTransitionStart(Landroid/window/TransitionInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onRecentsTransitionStarting()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setMixedHandler(Lcom/android/wm/shell/transition/SoScMixedHandler;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setRotationLock(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setSplitScreenResizing(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setTaskStackListener(Lcom/android/wm/shell/common/TaskStackListenerImpl;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public showSplitGuideIfNeed()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public supportSoScMinimizedMode()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public updateDividerOriPosition(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateIsInMultiWinSwitch(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateKeyguardState(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateLaunchAdjacentRootWhenRecentFinished(ILandroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateRecentsOnTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateRecentsWhenExitPip(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateSoScSurfaceForMultiWinSwitch()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
