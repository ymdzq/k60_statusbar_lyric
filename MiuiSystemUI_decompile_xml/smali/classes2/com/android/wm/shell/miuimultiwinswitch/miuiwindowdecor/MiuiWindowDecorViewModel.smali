.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;
.implements Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# static fields
.field private static final FORCE_BLACK:Ljava/lang/String; = "force_black"

.field private static final KEY_EXTRA_SHELL_MULTIWIN_SWITCH:Ljava/lang/String; = "extra_shell_multiwin_switch"

.field private static final TAG:Ljava/lang/String; = "MiuiWindowDecorViewModel"

.field private static final mMiuiMultiWinTrackStub:Lcom/miui/analytics/MiuiMultiWinTrackStub;


# instance fields
.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private mEventReceiversByDisplay:Landroid/util/SparseArray;

.field private mForceBlack:Z

.field private final mForceBlackObserver:Landroid/database/ContentObserver;

.field private mFullscreenTaskListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

.field private mImePositionProcessor:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$ImePositionProcessor;

.field private final mInputMonitorFactory:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$InputMonitorFactory;

.field mIsDraggingDot:Z

.field mIsDraggingRecents:Z

.field mIsEventHandleByFreeform:Z

.field mIsHandlingEvent:Z

.field mIsImeAnimating:Z

.field mIsImeShowing:Z

.field private mIsInLockTaskMode:Z

.field private final mListeners:Ljava/util/List;

.field private final mMainChoreographer:Landroid/view/Choreographer;

.field private mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

.field private mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

.field private mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private mMiuiFullScreenTaskRepository:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;

.field private final mMiuiMultiWinSwitchConfig:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;

.field private mMiuiMultiWinSwitchController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;

.field private mMiuiMultiWinSwitchUtils:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;

.field private final mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

.field private final mMiuiWindowDecorFactory:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$Factory;

.field mMultiWinSwitchAnimationRunning:Z

.field private final mOnSupportedChanged:Ljava/lang/Runnable;

.field private final mRecentTasks:Ljava/util/Optional;

.field private final mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private mRotation:I

.field private final mRotationAnimationListener:Lcom/android/wm/shell/transition/Transitions$IRotationAnimationListener;

.field mRotationAnimationRunning:Z

.field private final mRotationAnimationTimeoutRunnable:Ljava/lang/Runnable;

.field private final mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

.field private final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field private mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

.field private final mSplitTasks:Landroid/util/SparseArray;

.field private final mStartedGoingToSleepListener:Ljava/lang/Runnable;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

.field private final mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

.field private mTopFocusTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;

.field private mTouchedTaskId:I

.field private final mTransientObserver:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

.field private final mWindowDecorByTaskId:Landroid/util/SparseArray;

.field private final mWindowDecorRectController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public static synthetic $r8$lambda$-fc5ADE0JX6vPGEWNtAxfPIpU04(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->lambda$new$4()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$5xP7TR1IJrrSyhYKFeH9ZtV1Gys(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->lambda$onInit$6()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$6rx02T48i8Po4XOdy7zFwrGQVwA(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->lambda$new$2()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$827BecJZta83H3uzrrcjT2JY9_4(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->lambda$onMultiwinSwitchStart$7(I)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$8in2L8rK8A0dF9mq0NoPNLFqCzw(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic $r8$lambda$9kKdsWNBrPPp6VicxtprbW2zpFw(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->lambda$new$1(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$IFBbbVdmeDGo4NUUGvZYCptWE0o(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->lambda$onSingleOpenDragStart$8()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$W6nNYKEK8iyJrRMmtd2ioF1p8ZQ(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->lambda$new$0()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$Z-liiHC1_qlrRCEmfjGTwtzy1B8(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->lambda$new$3()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$eX5TneYVck4eXecAbOpuK5b0T5o(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->lambda$onSingleOpenDragEnd$9(I)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$pfJDainn5mSu1eGKKnyB0_mOfr8(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$tXGtcY1VBGP2OGWpatJN5fqJepM(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->lambda$onInit$5()V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmForceBlack(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mForceBlack:Z

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmIsInLockTaskMode(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsInLockTaskMode:Z

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiDisplayInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiMultiWinSwitchUtils(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinSwitchUtils:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmRecentTasks(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Ljava/util/Optional;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRecentTasks:Ljava/util/Optional;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmRotation(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotation:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskOperations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskOrganizer(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Lcom/android/wm/shell/ShellTaskOrganizer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowDecorByTaskId(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmForceBlack(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mForceBlack:Z

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmIsInLockTaskMode(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsInLockTaskMode:Z

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmRotation(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotation:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$mcloseSplitBottomHandleMenu(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->closeSplitBottomHandleMenu()V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mhandleReceivedMotionEvent(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Landroid/view/MotionEvent;Landroid/view/InputMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->handleReceivedMotionEvent(Landroid/view/MotionEvent;Landroid/view/InputMonitor;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mrelayoutDecorations(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->relayoutDecorations()V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$msetRotationAnimationRunning(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setRotationAnimationRunning(Z)V

    .line 2
    return-void
    .line 5
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->getInstance()Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 2
    move-result-object v0

    .line 5
    sput-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinTrackStub:Lcom/miui/analytics/MiuiMultiWinTrackStub;

    .line 6
    return-void
    .line 8
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/transition/Transitions;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;Landroid/content/pm/PackageManager;Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;Landroid/view/IWindowManager;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;Ljava/util/Optional;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/TaskStackListenerImpl;)V
    .locals 20

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p3

    move-object/from16 v12, p6

    move-object/from16 v0, p18

    move-object/from16 v1, p20

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 3
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitTasks:Landroid/util/SparseArray;

    const/4 v11, -0x1

    .line 4
    iput v11, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotation:I

    const/4 v10, 0x0

    .line 5
    iput-boolean v10, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotationAnimationRunning:Z

    .line 6
    iput-boolean v10, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMultiWinSwitchAnimationRunning:Z

    .line 7
    iput-boolean v10, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsDraggingDot:Z

    .line 8
    iput-boolean v10, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsDraggingRecents:Z

    .line 9
    iput-boolean v10, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsEventHandleByFreeform:Z

    .line 10
    iput-boolean v10, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsHandlingEvent:Z

    .line 11
    iput v11, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchedTaskId:I

    .line 12
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    .line 13
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 14
    iput-boolean v10, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsImeShowing:Z

    .line 15
    iput-boolean v10, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsImeAnimating:Z

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mListeners:Ljava/util/List;

    .line 17
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v2, v15, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;I)V

    iput-object v2, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mOnSupportedChanged:Ljava/lang/Runnable;

    .line 18
    new-instance v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v3, v15}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V

    iput-object v3, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotationController:Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;

    .line 19
    new-instance v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$2;

    invoke-direct {v9, v15}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V

    iput-object v9, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotationAnimationListener:Lcom/android/wm/shell/transition/Transitions$IRotationAnimationListener;

    .line 20
    new-instance v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$3;

    invoke-direct {v4, v15}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$3;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V

    iput-object v4, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

    .line 21
    new-instance v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda0;

    const/4 v8, 0x1

    invoke-direct {v4, v15, v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;I)V

    iput-object v4, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotationAnimationTimeoutRunnable:Ljava/lang/Runnable;

    .line 22
    new-instance v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v7, v15, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;I)V

    iput-object v7, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mStartedGoingToSleepListener:Ljava/lang/Runnable;

    .line 23
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->getInstance()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    move-result-object v4

    invoke-virtual {v4, v14, v13}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 24
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->getInstance()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->addListener(Ljava/lang/Runnable;)V

    .line 25
    iput-object v14, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 26
    iput-object v13, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v2, p4

    .line 27
    iput-object v2, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    .line 28
    const-class v2, Landroid/app/ActivityTaskManager;

    invoke-virtual {v14, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityTaskManager;

    iput-object v2, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    move-object/from16 v6, p5

    .line 29
    iput-object v6, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 30
    iput-object v12, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object/from16 v5, p7

    .line 31
    iput-object v5, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 32
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$Factory;

    invoke-direct {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$Factory;-><init>()V

    iput-object v2, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiWindowDecorFactory:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$Factory;

    move-object/from16 v4, p8

    .line 33
    iput-object v4, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object/from16 v2, p9

    .line 34
    iput-object v2, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 35
    new-instance v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$InputMonitorFactory;

    invoke-direct {v8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$InputMonitorFactory;-><init>()V

    iput-object v8, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mInputMonitorFactory:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$InputMonitorFactory;

    move-object/from16 v8, p10

    .line 36
    iput-object v8, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v8, p16

    .line 37
    iput-object v8, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinSwitchUtils:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;

    move-object/from16 v10, p17

    .line 38
    iput-object v10, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowManager:Landroid/view/IWindowManager;

    .line 39
    iput-object v0, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorRectController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    .line 40
    invoke-virtual {v0, v15}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->setWindowDecorViewModel(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V

    .line 41
    new-instance v10, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    invoke-direct {v10, v14}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;-><init>(Landroid/content/Context;)V

    iput-object v10, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    move-object/from16 v0, p15

    .line 42
    iput-object v0, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 43
    invoke-virtual {v12, v3}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    .line 44
    new-instance v3, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    invoke-direct {v3, v12, v14}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;-><init>(Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;)V

    iput-object v3, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    move-object/from16 v3, p19

    .line 45
    iput-object v3, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    move-object/from16 v11, p21

    .line 46
    iput-object v11, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiFullScreenTaskRepository:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;

    .line 47
    iput-object v1, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 48
    new-instance v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$ImePositionProcessor;

    invoke-direct {v11, v15}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$ImePositionProcessor;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V

    iput-object v11, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mImePositionProcessor:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$ImePositionProcessor;

    .line 49
    invoke-virtual {v1, v11}, Lcom/android/wm/shell/common/DisplayImeController;->addPositionProcessor(Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;)V

    move-object/from16 v1, p22

    .line 50
    iput-object v1, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRecentTasks:Ljava/util/Optional;

    move-object/from16 v1, p23

    .line 51
    iput-object v1, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object/from16 v1, p24

    .line 52
    iput-object v1, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTransientObserver:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

    .line 53
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;

    invoke-direct {v1, v14, v13}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinSwitchConfig:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;

    .line 54
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinTrackStub:Lcom/miui/analytics/MiuiMultiWinTrackStub;

    move-object/from16 v11, p26

    invoke-virtual {v1, v11, v14}, Lcom/miui/analytics/MiuiMultiWinTrackStub;->init(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;)V

    move-object/from16 v1, p27

    .line 55
    iput-object v1, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 56
    new-instance v11, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;

    iget-object v1, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    move-object v0, v11

    move-object/from16 v16, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p11

    move-object/from16 v3, p8

    move-object/from16 v4, p12

    move-object/from16 v5, p13

    move-object/from16 v6, p14

    move-object/from16 v17, v7

    move-object v7, v10

    const/4 v10, 0x1

    move-object/from16 v8, p9

    move-object/from16 v18, v9

    move-object/from16 v9, p15

    move-object/from16 v10, p16

    move-object/from16 v19, v11

    move-object/from16 v11, v16

    move-object/from16 v12, p19

    move-object/from16 v13, p0

    move-object/from16 v14, p7

    invoke-direct/range {v0 .. v14}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;Landroid/content/pm/PackageManager;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinSwitchController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;

    .line 57
    new-instance v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;

    iget-object v8, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    move-object v0, v12

    move-object/from16 v2, p6

    move-object/from16 v3, p13

    move-object/from16 v4, p9

    move-object/from16 v5, p2

    move-object/from16 v6, p11

    move-object/from16 v7, p16

    move-object/from16 v9, p19

    move-object/from16 v10, p5

    move-object/from16 v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V

    invoke-virtual {v15, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setTaskTransition(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;)V

    move-object/from16 v0, p11

    .line 58
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mRotationAnimationListeners:Ljava/util/List;

    .line 59
    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$1;

    move-object/from16 v1, p3

    invoke-direct {v0, v15, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Landroid/os/Handler;)V

    iput-object v0, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mForceBlackObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "force_black"

    .line 63
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 64
    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    move-object/from16 v0, p25

    move-object/from16 v1, v17

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;->addStartedGoingToSleepListener(Ljava/lang/Runnable;)V

    .line 66
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v15, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;I)V

    move-object/from16 v1, p2

    invoke-virtual {v1, v15, v0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 67
    iget-object v0, v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskStackListenerCallback:Lcom/android/wm/shell/common/TaskStackListenerCallback;

    move-object/from16 v1, p28

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    return-void
.end method

.method private closeHandleMenu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private closeSplitBottomHandleMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->isTopBottomFullSplit()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 8
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 11
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 19
    move-result v1

    .line 22
    if-lez v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 25
    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 27
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 35
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 37
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 42
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 43
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    .line 45
    :cond_0
    return-void
    .line 48
.end method

.method private createEventReceiver(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->createInputChannel(I)V

    .line 13
    :cond_1
    return-void
    .line 16
.end method

.method private createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$IMultiwinSwitchImpl;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V

    .line 4
    return-object v0
    .line 7
.end method

.method private createInputChannel(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 2
    const-class v1, Landroid/hardware/input/InputManager;

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mInputMonitorFactory:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$InputMonitorFactory;

    .line 12
    invoke-virtual {v1, v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$InputMonitorFactory;->create(Landroid/hardware/input/InputManager;I)Landroid/view/InputMonitor;

    .line 14
    move-result-object v0

    .line 17
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$EventReceiver;

    .line 18
    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 20
    move-result-object v2

    .line 23
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 24
    move-result-object v3

    .line 27
    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$EventReceiver;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Landroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 28
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    const-string v0, "createInputChannel displayId="

    .line 38
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    const-string p1, "MiuiWindowDecorViewModel"

    .line 50
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
    .line 55
.end method

.method private createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 17

    .line 1
    move-object/from16 v10, p0

    .line 2
    move-object/from16 v5, p1

    .line 4
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 6
    iget v1, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->close()V

    .line 18
    :cond_0
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiWindowDecorFactory:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$Factory;

    .line 21
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 23
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 25
    iget-object v3, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 27
    iget-object v6, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 29
    iget-object v7, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    .line 31
    iget-object v8, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 33
    iget-object v9, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 35
    iget-object v11, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRootTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 37
    iget-object v12, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinSwitchUtils:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;

    .line 39
    iget-object v13, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowManager:Landroid/view/IWindowManager;

    .line 41
    iget-object v14, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 43
    iget-object v15, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinSwitchConfig:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;

    .line 45
    iget-object v4, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 47
    move-object/from16 v16, v4

    .line 49
    move-object/from16 v4, p1

    .line 51
    move-object/from16 v5, p2

    .line 53
    move-object/from16 v10, p0

    .line 55
    invoke-virtual/range {v0 .. v16}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$Factory;->create(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;Landroid/view/IWindowManager;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchConfig;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 57
    move-result-object v0

    .line 60
    sget-boolean v1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->IS_PHONE:Z

    .line 61
    const/4 v2, 0x0

    .line 63
    if-eqz v1, :cond_1

    .line 64
    move-object/from16 v1, p0

    .line 66
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 68
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 70
    move-result v3

    .line 73
    if-nez v3, :cond_2

    .line 74
    invoke-direct {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->createEventReceiver(I)V

    .line 76
    goto :goto_0

    .line 79
    :cond_1
    move-object/from16 v1, p0

    .line 80
    :cond_2
    :goto_0
    iget-object v3, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 82
    move-object/from16 v4, p1

    .line 84
    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 86
    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    new-instance v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;

    .line 91
    invoke-direct {v3, v1, v4, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$MiuiCaptionTouchEventListener;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 93
    invoke-virtual {v0, v3, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->setCaptionListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 99
    move-result v1

    .line 102
    const/4 v3, 0x5

    .line 103
    if-ne v1, v3, :cond_3

    .line 104
    const/4 v2, 0x1

    .line 106
    :cond_3
    move-object/from16 v1, p3

    .line 107
    move-object/from16 v3, p4

    .line 109
    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 111
    return-void
    .line 114
.end method

.method private disposeInputChannel(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$EventReceiver;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$EventReceiver;->dispose()V

    .line 12
    const-string p0, "disposeInputChannel displayId="

    .line 15
    const-string v0, "MiuiWindowDecorViewModel"

    .line 17
    invoke-static {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "  "

    .line 2
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p2, "WindowDecorViewModel"

    .line 16
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, "mRotationAnimationRunning: "

    .line 36
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotationAnimationRunning:Z

    .line 41
    const-string v2, "mMultiWinSwitchAnimationRunning: "

    .line 43
    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object p2

    .line 48
    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMultiWinSwitchAnimationRunning:Z

    .line 49
    const-string v2, "mIsDraggingDot: "

    .line 51
    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object p2

    .line 56
    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsDraggingDot:Z

    .line 57
    const-string v2, "mIsDraggingRecents: "

    .line 59
    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    move-result-object p2

    .line 64
    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsDraggingRecents:Z

    .line 65
    const-string v2, "WindowDecor size:"

    .line 67
    invoke-static {p2, v1, p1, v0, v2}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    move-result-object p2

    .line 72
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 75
    move-result v1

    .line 78
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p2

    .line 85
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 89
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 91
    move-result p2

    .line 94
    if-lez p2, :cond_1

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "WindowDecor List:"

    .line 105
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 117
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 119
    move-result p2

    .line 122
    :goto_0
    add-int/lit8 p2, p2, -0x1

    .line 123
    if-ltz p2, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 127
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 129
    move-result-object v1

    .line 132
    check-cast v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 133
    const-string v2, "WindowDecor#"

    .line 135
    if-eqz v1, :cond_0

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const-string v2, " : "

    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v2

    .line 161
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 165
    goto :goto_0

    .line 168
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const-string v2, " : null"

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 191
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    goto :goto_0

    .line 195
    :cond_1
    return-void
    .line 196
.end method

.method private getFreeformCaptionHeight()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->IS_TABLET:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p0

    .line 11
    const v0, 0x7f070278    # @dimen/decor_caption_freeform_height_pad '30.0dp'

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result p0

    .line 18
    int-to-float p0, p0

    .line 19
    const v0, 0x3f449ba6    # 0.768f

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p0

    .line 29
    const v0, 0x7f070279    # @dimen/decor_caption_freeform_height_phone '26.0dp'

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result p0

    .line 36
    int-to-float p0, p0

    .line 37
    const v0, 0x3f333333    # 0.7f

    .line 38
    :goto_0
    div-float/2addr p0, v0

    .line 41
    float-to-int p0, p0

    .line 42
    return p0
    .line 43
.end method

.method private handleReceivedMotionEvent(Landroid/view/MotionEvent;Landroid/view/InputMonitor;)V
    .locals 9

    .line 1
    const-string v0, "MiuiWindowDecorViewModel"

    .line 2
    if-nez p2, :cond_0

    .line 4
    const-string p0, "handleReceivedMotionEvent: inputMonitor == null"

    .line 6
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 12
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getMiuiFreeformModeGestureHandler()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreeformCursorHandler()Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->handleMotionEvents(Landroid/view/MotionEvent;)V

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 25
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, -0x1

    .line 31
    if-nez v1, :cond_a

    .line 32
    iput-boolean v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsHandlingEvent:Z

    .line 34
    iput-boolean v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsEventHandleByFreeform:Z

    .line 36
    iput v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchedTaskId:I

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->handleTouchedOutsideHandleMenu(Landroid/view/MotionEvent;)Z

    .line 40
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    const-string p0, "handleReceivedMotionEvent: handleTouchedOutsideHandleMenu"

    .line 46
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 52
    move-result v1

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 56
    move-result v2

    .line 59
    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->isInExcludeRegion(FF)Z

    .line 60
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    const-string p0, "handleReceivedMotionEvent: isInExcludeRegion"

    .line 66
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinSwitchController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;

    .line 72
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->getmMiuiMultiWinGestureHandler()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isHandlingFreeformUp()Z

    .line 78
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    const-string p0, "handleReceivedMotionEvent: ACTION_DOWN while handling freeform up event"

    .line 84
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 90
    if-eqz v1, :cond_4

    .line 92
    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/InputMonitor;)Z

    .line 94
    move-result p2

    .line 97
    iput-boolean p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsEventHandleByFreeform:Z

    .line 98
    if-eqz p2, :cond_4

    .line 100
    const-string p1, "handleReceivedMotionEvent: ACTION_DOWN is handled by Freeform"

    .line 102
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-boolean v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsHandlingEvent:Z

    .line 107
    return-void

    .line 109
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->isTouchedInFreeformWindow(Landroid/view/MotionEvent;)Z

    .line 110
    move-result p2

    .line 113
    if-eqz p2, :cond_5

    .line 114
    const-string p0, "handleReceivedMotionEvent: isTouchedInFreeformWindow"

    .line 116
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 121
    :cond_5
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTransientObserver:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

    .line 122
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;->isTransientShowing()Z

    .line 124
    move-result p2

    .line 127
    if-eqz p2, :cond_6

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 130
    move-result p2

    .line 133
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 134
    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 136
    move-result v1

    .line 139
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    move-result-object v2

    .line 145
    const v5, 0x7f070277    # @dimen/decor_caption_bottom_padding '6.0dp'

    .line 146
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 149
    move-result v2

    .line 152
    add-int/2addr v2, v1

    .line 153
    int-to-float v1, v2

    .line 154
    cmpg-float p2, p2, v1

    .line 155
    if-gtz p2, :cond_6

    .line 157
    const-string p0, "handleReceivedMotionEvent: ACTION_DOWN in transient showing status bar"

    .line 159
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 164
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->touchedInSplitOrFullTaskId(Landroid/view/MotionEvent;)I

    .line 165
    move-result p2

    .line 168
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->touchedWindowHasCaption(I)Z

    .line 169
    move-result v1

    .line 172
    if-eqz v1, :cond_8

    .line 173
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->isImeShowing()Z

    .line 175
    move-result v1

    .line 178
    if-eqz v1, :cond_7

    .line 179
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->hideCurrentInputMethod()V

    .line 181
    const-string p0, "handleReceivedMotionEvent: isImeShowing"

    .line 184
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 189
    :cond_7
    iput p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchedTaskId:I

    .line 190
    :cond_8
    iget p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchedTaskId:I

    .line 192
    if-eq p2, v4, :cond_1b

    .line 194
    iput-boolean v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsHandlingEvent:Z

    .line 196
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    .line 198
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->reset()V

    .line 200
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    .line 203
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->handleEvent(Landroid/view/MotionEvent;)V

    .line 205
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 208
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchedTaskId:I

    .line 210
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 212
    move-result-object p2

    .line 215
    check-cast p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 216
    if-eqz p2, :cond_1b

    .line 218
    iget-object v1, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 220
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 222
    move-result v1

    .line 225
    const/4 v2, 0x6

    .line 226
    if-ne v1, v2, :cond_9

    .line 227
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 229
    iget-object v2, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 231
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 233
    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->requestSplitFocus(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 235
    goto :goto_0

    .line 238
    :cond_9
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 239
    iget-object v2, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 241
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->requestFocus(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 243
    :goto_0
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 246
    move-result v1

    .line 249
    if-nez v1, :cond_1b

    .line 250
    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsInLockTaskMode:Z

    .line 252
    if-nez v1, :cond_1b

    .line 254
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 256
    iget-object v2, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 258
    iget-object p2, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 260
    invoke-direct {v1, v2, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 262
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinSwitchController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;

    .line 265
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->setDragTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V

    .line 267
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinSwitchController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->handleMotionEvent(Landroid/view/MotionEvent;)V

    .line 272
    const-string p0, "handleReceivedMotionEvent: ACTION_DOWN is handled by MultiWinSwitch"

    .line 275
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    goto/16 :goto_4

    .line 280
    :cond_a
    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsHandlingEvent:Z

    .line 282
    const/4 v5, 0x2

    .line 284
    if-eqz v1, :cond_14

    .line 285
    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsEventHandleByFreeform:Z

    .line 287
    const-string v6, "handleReceivedMotionEvent: "

    .line 289
    const/4 v7, 0x3

    .line 291
    if-eqz v1, :cond_c

    .line 292
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 294
    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/InputMonitor;)Z

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 299
    move-result p2

    .line 302
    if-eq p2, v3, :cond_b

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 305
    move-result p2

    .line 308
    if-ne p2, v7, :cond_12

    .line 309
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    .line 311
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 316
    move-result v1

    .line 319
    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 320
    move-result-object v1

    .line 323
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, " is handled by Freeform"

    .line 327
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object p2

    .line 335
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    goto/16 :goto_2

    .line 339
    :cond_c
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchedTaskId:I

    .line 341
    if-eq v1, v4, :cond_12

    .line 343
    iget-object v8, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 345
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 347
    move-result-object v1

    .line 350
    check-cast v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 351
    if-nez v1, :cond_d

    .line 353
    new-instance p1, Ljava/lang/StringBuilder;

    .line 355
    const-string p2, "handleReceivedMotionEvent: decoration is null! taskId="

    .line 357
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    iget p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchedTaskId:I

    .line 362
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    move-result-object p1

    .line 370
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iput v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchedTaskId:I

    .line 374
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinSwitchController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;

    .line 376
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->close()V

    .line 378
    return-void

    .line 381
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 382
    move-result v4

    .line 385
    if-ne v4, v5, :cond_e

    .line 386
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    .line 388
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->handleEvent(Landroid/view/MotionEvent;)V

    .line 390
    goto :goto_1

    .line 393
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 394
    move-result v4

    .line 397
    if-ne v4, v3, :cond_f

    .line 398
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    .line 400
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->isMoveOccured()Z

    .line 402
    move-result v4

    .line 405
    if-nez v4, :cond_f

    .line 406
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->handleCaptionClicked()V

    .line 408
    :cond_f
    :goto_1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 411
    move-result v1

    .line 414
    if-nez v1, :cond_12

    .line 415
    iget-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsInLockTaskMode:Z

    .line 417
    if-nez v1, :cond_12

    .line 419
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinSwitchController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;

    .line 421
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->handleMotionEvent(Landroid/view/MotionEvent;)V

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 426
    move-result v1

    .line 429
    if-ne v1, v5, :cond_10

    .line 430
    invoke-virtual {p2}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 432
    goto :goto_2

    .line 435
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 436
    move-result p2

    .line 439
    if-eq p2, v3, :cond_11

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 442
    move-result p2

    .line 445
    if-ne p2, v7, :cond_12

    .line 446
    :cond_11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 448
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 453
    move-result v1

    .line 456
    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    .line 457
    move-result-object v1

    .line 460
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v1, " is handled by MultiWinSwitch"

    .line 464
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    move-result-object p2

    .line 472
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_12
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 476
    move-result p2

    .line 479
    if-eq p2, v3, :cond_13

    .line 480
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 482
    move-result p1

    .line 485
    if-ne p1, v7, :cond_1b

    .line 486
    :cond_13
    iput-boolean v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsHandlingEvent:Z

    .line 488
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 490
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;->getTipsLayout()Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 492
    move-result-object p0

    .line 495
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->hideAllNoAnim()V

    .line 496
    goto/16 :goto_4

    .line 499
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 501
    move-result p2

    .line 504
    const/16 v0, 0x9

    .line 505
    if-ne p2, v0, :cond_19

    .line 507
    iput v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchedTaskId:I

    .line 509
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 511
    const-string v0, "accessibility"

    .line 513
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 515
    move-result-object p2

    .line 518
    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    .line 519
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 521
    move-result v0

    .line 524
    if-eqz v0, :cond_18

    .line 525
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 527
    move-result p2

    .line 530
    if-nez p2, :cond_15

    .line 531
    goto :goto_3

    .line 533
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->handleTouchedOutsideHandleMenu(Landroid/view/MotionEvent;)Z

    .line 534
    move-result p2

    .line 537
    if-eqz p2, :cond_16

    .line 538
    return-void

    .line 540
    :cond_16
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->touchedInSplitOrFullTaskId(Landroid/view/MotionEvent;)I

    .line 541
    move-result p2

    .line 544
    if-eq p2, v4, :cond_17

    .line 545
    iput p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchedTaskId:I

    .line 547
    :cond_17
    iget p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchedTaskId:I

    .line 549
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->touchedWindowHasCaption(I)Z

    .line 551
    move-result p2

    .line 554
    if-eqz p2, :cond_1b

    .line 555
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    .line 557
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->reset()V

    .line 559
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 562
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->handleEvent(Landroid/view/MotionEvent;)V

    .line 567
    goto :goto_4

    .line 570
    :cond_18
    :goto_3
    return-void

    .line 571
    :cond_19
    iget p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchedTaskId:I

    .line 572
    if-eq p2, v4, :cond_1b

    .line 574
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 576
    move-result p2

    .line 579
    const/4 v0, 0x7

    .line 580
    if-ne p2, v0, :cond_1a

    .line 581
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 583
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->handleEvent(Landroid/view/MotionEvent;)V

    .line 588
    goto :goto_4

    .line 591
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 592
    move-result p1

    .line 595
    const/16 p2, 0xa

    .line 596
    if-ne p1, p2, :cond_1b

    .line 598
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    .line 600
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->isMoveOccured()Z

    .line 602
    move-result p1

    .line 605
    if-nez p1, :cond_1b

    .line 606
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 608
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchedTaskId:I

    .line 610
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 612
    move-result-object p0

    .line 615
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 616
    if-eqz p0, :cond_1b

    .line 618
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->handleCaptionClickInTalkback()V

    .line 620
    :cond_1b
    :goto_4
    return-void
    .line 623
.end method

.method private isTouchedInFreeformWindow(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    move-result v2

    .line 14
    if-nez v2, :cond_2

    .line 15
    move v2, v1

    .line 17
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v3

    .line 21
    if-ge v2, v3, :cond_2

    .line 22
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v3

    .line 33
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 34
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 36
    move-result-object v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isInPinMode()Z

    .line 42
    move-result v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 48
    move-result-object v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 54
    move-result-object v4

    .line 57
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 58
    if-eqz v4, :cond_1

    .line 60
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 62
    move-result-object v4

    .line 65
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 66
    iget-boolean v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 68
    if-eqz v4, :cond_1

    .line 70
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 72
    move-result v4

    .line 75
    if-eqz v4, :cond_0

    .line 76
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 78
    move-result v4

    .line 81
    if-eqz v4, :cond_1

    .line 82
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isHideStackFromFullScreen()Z

    .line 84
    move-result v4

    .line 87
    if-nez v4, :cond_1

    .line 88
    :cond_0
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 90
    move-result-object v4

    .line 93
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 94
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 96
    move-result-object v4

    .line 99
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 100
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 102
    move-result-object v4

    .line 105
    new-instance v5, Landroid/graphics/Rect;

    .line 106
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 108
    iget v7, v4, Landroid/graphics/Rect;->top:I

    .line 110
    int-to-float v8, v6

    .line 112
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 113
    move-result v9

    .line 116
    int-to-float v9, v9

    .line 117
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 118
    move-result v10

    .line 121
    mul-float/2addr v10, v9

    .line 122
    add-float/2addr v10, v8

    .line 123
    float-to-int v8, v10

    .line 124
    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 125
    int-to-float v9, v9

    .line 127
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 128
    move-result v4

    .line 131
    int-to-float v4, v4

    .line 132
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 133
    move-result v3

    .line 136
    mul-float/2addr v3, v4

    .line 137
    add-float/2addr v3, v9

    .line 138
    float-to-int v3, v3

    .line 139
    invoke-direct {v5, v6, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 143
    move-result v3

    .line 146
    float-to-int v3, v3

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 148
    move-result v4

    .line 151
    float-to-int v4, v4

    .line 152
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    .line 153
    move-result v3

    .line 156
    if-eqz v3, :cond_1

    .line 157
    const/4 p0, 0x1

    .line 159
    return p0

    .line 160
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 161
    goto/16 :goto_0

    .line 163
    :cond_2
    return v1
    .line 165
.end method

.method private lambda$new$0()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->getInstance()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->isSupported()Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 13
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 18
    iget-object v2, v2, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 22
    move-result v3

    .line 25
    :goto_0
    if-ge v1, v3, :cond_1

    .line 26
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 31
    check-cast v4, Landroid/window/TaskAppearedInfo;

    .line 32
    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 34
    move-result-object v5

    .line 37
    invoke-direct {p0, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 38
    move-result v5

    .line 41
    if-nez v5, :cond_0

    .line 42
    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 45
    move-result-object v5

    .line 48
    invoke-virtual {v4}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 49
    move-result-object v4

    .line 52
    invoke-direct {p0, v5, v4, v0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 53
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 59
    goto :goto_4

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 63
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 65
    move-result v0

    .line 68
    new-array v2, v0, [Landroid/app/ActivityManager$RunningTaskInfo;

    .line 69
    move v3, v1

    .line 71
    :goto_2
    if-ge v3, v0, :cond_3

    .line 72
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 74
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 76
    move-result-object v4

    .line 79
    check-cast v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 80
    iget-object v4, v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 82
    aput-object v4, v2, v3

    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 86
    goto :goto_2

    .line 88
    :cond_3
    :goto_3
    if-ge v1, v0, :cond_4

    .line 89
    aget-object v3, v2, v1

    .line 91
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 96
    goto :goto_3

    .line 98
    :cond_4
    :goto_4
    return-void
    .line 99
.end method

.method private synthetic lambda$new$1(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->closeHandleMenu()V

    .line 2
    return-void
    .line 5
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    .line 1
    const-string v0, "MiuiWindowDecorViewModel"

    .line 2
    const-string v1, "Rotation animation timeout!"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setRotationAnimationRunning(Z)V

    .line 10
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->relayoutDecorations()V

    .line 13
    return-void
    .line 16
.end method

.method private synthetic lambda$new$3()V
    .locals 11

    .line 1
    const-string v0, "MiuiWindowDecorViewModel"

    .line 2
    const-string v1, "mStartedGoingToSleepListener: sending cancel event"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$EventReceiver;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-boolean v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsHandlingEvent:Z

    .line 20
    if-eqz v2, :cond_1

    .line 22
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$EventReceiver;->-$$Nest$fgetmLastMotionEvent(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$EventReceiver;)Landroid/view/MotionEvent;

    .line 24
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$EventReceiver;->-$$Nest$fgetmLastMotionEvent(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$EventReceiver;)Landroid/view/MotionEvent;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    .line 34
    move-result v2

    .line 37
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$EventReceiver;->-$$Nest$fgetmLastMotionEvent(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$EventReceiver;)Landroid/view/MotionEvent;

    .line 38
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    .line 42
    move-result v3

    .line 45
    move v8, v2

    .line 46
    move v9, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 49
    move v8, v2

    .line 50
    move v9, v8

    .line 51
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 52
    move-result-wide v3

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 56
    move-result-wide v5

    .line 59
    const/4 v7, 0x3

    .line 60
    const/4 v10, 0x0

    .line 61
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 62
    move-result-object v2

    .line 65
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$EventReceiver;->-$$Nest$fgetmInputMonitor(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$EventReceiver;)Landroid/view/InputMonitor;

    .line 66
    move-result-object v0

    .line 69
    invoke-direct {p0, v2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->handleReceivedMotionEvent(Landroid/view/MotionEvent;Landroid/view/InputMonitor;)V

    .line 70
    iput-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsHandlingEvent:Z

    .line 73
    :cond_1
    return-void
    .line 75
.end method

.method private synthetic lambda$new$4()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda0;

    .line 4
    const/4 v2, 0x6

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;I)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void
    .line 13
.end method

.method private synthetic lambda$onInit$5()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$onInit$6()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsInLockTaskMode:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->pinModeToast(Landroid/content/Context;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method private synthetic lambda$onMultiwinSwitchStart$7(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mListeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mListeners:Ljava/util/List;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/wm/shell/miuimultiwinswitch/MultiwinSwitchListener;

    .line 18
    invoke-interface {v1, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MultiwinSwitchListener;->onMultiwinSwitchStart(I)V

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    return-void
    .line 26
.end method

.method private synthetic lambda$onSingleOpenDragEnd$9(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mListeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mListeners:Ljava/util/List;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/wm/shell/miuimultiwinswitch/MultiwinSwitchListener;

    .line 18
    invoke-interface {v1, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MultiwinSwitchListener;->onSingleOpenDragEnd(I)V

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    return-void
    .line 26
.end method

.method private synthetic lambda$onSingleOpenDragStart$8()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mListeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mListeners:Ljava/util/List;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/wm/shell/miuimultiwinswitch/MultiwinSwitchListener;

    .line 18
    invoke-interface {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MultiwinSwitchListener;->onSingleOpenDragStart()V

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    return-void
    .line 26
.end method

.method private relayoutDecorations()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 17
    if-eqz v2, :cond_0

    .line 19
    iget-object v3, v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    return-void
    .line 29
.end method

.method private removeEventReceiver(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$EventReceiver;

    .line 17
    if-nez v0, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->disposeInputChannel(I)V

    .line 22
    return-void
    .line 25
.end method

.method private setRotationAnimationRunning(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotationAnimationRunning:Z

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotationAnimationTimeoutRunnable:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotationAnimationTimeoutRunnable:Ljava/lang/Runnable;

    .line 15
    const-wide/16 v0, 0x1388

    .line 17
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method private shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->getInstance()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->isSupported()Z

    .line 6
    move-result p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    return v0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 14
    move-result p0

    .line 17
    const/4 v1, 0x5

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq p0, v1, :cond_5

    .line 20
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 22
    move-result p0

    .line 25
    const/4 v1, 0x6

    .line 26
    if-ne p0, v1, :cond_1

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 30
    move-result p0

    .line 33
    if-ne p0, v2, :cond_4

    .line 34
    sget-boolean p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->IS_TABLET:Z

    .line 36
    if-nez p0, :cond_3

    .line 38
    sget-boolean p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->IS_FOLD_SCREEN_DEVICE:Z

    .line 40
    if-eqz p0, :cond_2

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    return v0

    .line 45
    :cond_3
    :goto_0
    return v2

    .line 46
    :cond_4
    return v0

    .line 47
    :cond_5
    :goto_1
    return v2
    .line 48
.end method

.method private touchedInSplitOrFullTaskId(Landroid/view/MotionEvent;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiFullScreenTaskRepository:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->getTopVisibleTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 8
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, -0x1

    .line 15
    if-eqz v1, :cond_9

    .line 16
    const/4 v1, 0x6

    .line 18
    const/4 v4, 0x1

    .line 19
    if-nez v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 24
    move-result v0

    .line 27
    sub-int/2addr v0, v4

    .line 28
    :goto_0
    if-ltz v0, :cond_b

    .line 29
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 36
    check-cast v5, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 37
    iget-object v5, v5, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 39
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 41
    move-result v5

    .line 44
    if-eq v5, v1, :cond_0

    .line 45
    goto :goto_2

    .line 47
    :cond_0
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 48
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 53
    check-cast v5, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 54
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 56
    iget-object v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 58
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 60
    move-result-object v7

    .line 63
    check-cast v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 64
    iget-object v7, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 66
    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 68
    invoke-virtual {v6, v7}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSplitPosition(I)I

    .line 70
    move-result v6

    .line 73
    if-eq v6, v3, :cond_1

    .line 74
    move v6, v4

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move v6, v2

    .line 78
    :goto_1
    invoke-virtual {v5, p1, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->isTouchedInCaption(Landroid/view/MotionEvent;Z)Z

    .line 79
    move-result v5

    .line 82
    if-eqz v5, :cond_2

    .line 83
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 87
    move-result p0

    .line 90
    return p0

    .line 91
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 92
    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 95
    move-result v5

    .line 98
    const/4 v6, 0x2

    .line 99
    if-eq v5, v6, :cond_5

    .line 100
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 102
    move-result v5

    .line 105
    const/4 v6, 0x3

    .line 106
    if-ne v5, v6, :cond_4

    .line 107
    goto :goto_3

    .line 109
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 110
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 112
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 114
    move-result-object p0

    .line 117
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 118
    if-eqz p0, :cond_b

    .line 120
    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->isTouchedInCaption(Landroid/view/MotionEvent;Z)Z

    .line 122
    move-result p0

    .line 125
    if-eqz p0, :cond_b

    .line 126
    iget p0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 128
    return p0

    .line 130
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 131
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 133
    move-result v0

    .line 136
    sub-int/2addr v0, v4

    .line 137
    :goto_4
    if-ltz v0, :cond_b

    .line 138
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 140
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 142
    move-result-object v5

    .line 145
    check-cast v5, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 146
    iget-object v5, v5, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 148
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 150
    move-result v5

    .line 153
    if-eq v5, v1, :cond_6

    .line 154
    goto :goto_6

    .line 156
    :cond_6
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 157
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 159
    move-result-object v5

    .line 162
    check-cast v5, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 163
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 165
    iget-object v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 167
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 169
    move-result-object v7

    .line 172
    check-cast v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 173
    iget-object v7, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 175
    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 177
    invoke-virtual {v6, v7}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSplitPosition(I)I

    .line 179
    move-result v6

    .line 182
    if-eq v6, v3, :cond_7

    .line 183
    move v6, v4

    .line 185
    goto :goto_5

    .line 186
    :cond_7
    move v6, v2

    .line 187
    :goto_5
    invoke-virtual {v5, p1, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->isTouchedInCaption(Landroid/view/MotionEvent;Z)Z

    .line 188
    move-result v5

    .line 191
    if-eqz v5, :cond_8

    .line 192
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 194
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 196
    move-result p0

    .line 199
    return p0

    .line 200
    :cond_8
    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 201
    goto :goto_4

    .line 203
    :cond_9
    if-nez v0, :cond_a

    .line 204
    const-string p0, "MiuiWindowDecorViewModel"

    .line 206
    const-string/jumbo p1, "touchedInSplitOrFullTaskId   split rootTask is null"

    .line 208
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    goto :goto_7

    .line 214
    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 215
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 217
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 219
    move-result-object p0

    .line 222
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 223
    if-eqz p0, :cond_b

    .line 225
    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->isTouchedInCaption(Landroid/view/MotionEvent;Z)Z

    .line 227
    move-result p0

    .line 230
    if-eqz p0, :cond_b

    .line 231
    iget p0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 233
    return p0

    .line 235
    :cond_b
    :goto_7
    return v3
    .line 236
.end method

.method private touchedWindowHasCaption(I)Z
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getScreenType(Landroid/content/Context;)I

    .line 17
    move-result v0

    .line 20
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 26
    check-cast p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 27
    iget-object p1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    const/4 v2, 0x1

    .line 31
    if-eq v0, v2, :cond_1

    .line 32
    if-nez v0, :cond_2

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 36
    move-result v0

    .line 39
    if-eq v0, v2, :cond_3

    .line 40
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 42
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 44
    move-result v0

    .line 47
    const/4 v3, 0x2

    .line 48
    if-eq v0, v3, :cond_2

    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 51
    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 53
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 55
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 61
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 65
    move-result p0

    .line 68
    if-nez p0, :cond_3

    .line 69
    :cond_2
    move v1, v2

    .line 71
    :cond_3
    :goto_0
    return v1
    .line 72
.end method

.method private updateSampling()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 17
    if-eqz v2, :cond_0

    .line 19
    iget-object v3, v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 23
    if-eqz v3, :cond_0

    .line 25
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateSampling()V

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    return-void
    .line 33
.end method

.method private updateSamplingAndVisibility()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 17
    iget-object v3, v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 19
    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 21
    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateSampling()V

    .line 25
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateVisibility()V

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    return-void
    .line 34
.end method


# virtual methods
.method public closeHandleMenu(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->closeHandleMenu()V

    :cond_0
    return-void
.end method

.method public destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 10
    sget-boolean v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->IS_PHONE:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->removeEventReceiver(I)V

    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 28
    return-void

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->close()V

    .line 31
    return-void
    .line 34
.end method

.method public freeformFullscreenTask(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 10
    invoke-virtual {v0, p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchFullscreenToFreeform(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer;)V

    .line 12
    return-void
    .line 15
.end method

.method public getBottomCaptionHeight()I
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getBottomCaptionHeight(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getBottomCaptionHeight(I)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    return p0
.end method

.method public getBottomCaptionHeight(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/sosc/SoScUtils;->isHome(Landroid/app/TaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "dimen"

    const-string v0, "android"

    const-string v1, "navigation_bar_height"

    .line 5
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    .line 7
    :cond_1
    sget-boolean p1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->IS_TABLET:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0700fd    # @dimen/bottom_caption_height_pad '24.0dp'

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3f449ba6    # 0.768f

    goto :goto_0

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0700fe    # @dimen/bottom_caption_height_phone '16.0dp'

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3f333333    # 0.7f

    :goto_0
    div-float/2addr p0, p1

    float-to-int p0, p0

    :goto_1
    return p0
.end method

.method public getCaptionHeight(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getFreeformCaptionHeight()I

    .line 4
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {p0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 11
    move-result p0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiFullScreenTaskRepository()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiFullScreenTaskRepository:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMiuiWindowDecoration(I)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    return-object p0
    .line 10
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    return-object p0
    .line 4
.end method

.method public getmMiuiMultiWinSwitchController()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinSwitchController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;

    .line 2
    return-object p0
    .line 4
.end method

.method public handleTouchedOutsideHandleMenu(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 26
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->isTouchedInHandleMenu(Landroid/view/MotionEvent;)Z

    .line 28
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    :goto_1
    if-nez v1, :cond_2

    .line 39
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->closeHandleMenu()V

    .line 41
    :cond_2
    return v1
    .line 44
.end method

.method public hideCurrentInputMethod()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsImeShowing:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowManager:Landroid/view/IWindowManager;

    .line 6
    invoke-interface {p0}, Landroid/view/IWindowManager;->hideCurrentInputMethod()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 13
    :cond_0
    :goto_0
    return-void
    .line 16
.end method

.method public isForceBlack()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mForceBlack:Z

    .line 2
    return p0
    .line 4
.end method

.method public isImeShowing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsImeShowing:Z

    .line 2
    return p0
    .line 4
.end method

.method public isInExcludeRegion(FF)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 2
    float-to-int p1, p1

    .line 4
    float-to-int p2, p2

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public isTopBottomFullSplit()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 17
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 19
    move-result p0

    .line 22
    const/4 v0, 0x2

    .line 23
    if-ne p0, v0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
    .line 29
.end method

.method public minimizeTask(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->minimizeTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 4
    return-void
    .line 7
.end method

.method public onDisplayAdded(I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->IS_PHONE:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->createEventReceiver(I)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public bridge synthetic onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->removeEventReceiver(I)V

    .line 2
    return-void
    .line 5
.end method

.method public onDoubleTappedDivider()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitTasks:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitTasks:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 14
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 24
    if-nez v1, :cond_0

    .line 26
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->hideCaption()V

    .line 29
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    return-void
    .line 35
.end method

.method public bridge synthetic onFixedRotationFinished(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onFixedRotationStarted(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onFreeformCaptionClicked(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->handleCaptionClicked()V

    .line 13
    return-void
    .line 16
.end method

.method public onGestureEnd(I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onGestureEnd::predictState = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiWindowDecorViewModel"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setIsDraggingRecents(Z)V

    .line 22
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 25
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 27
    move-result-object v2

    .line 30
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 31
    const/4 v4, 0x1

    .line 33
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 34
    move-result-object v3

    .line 37
    const/4 v4, -0x1

    .line 38
    if-ne p1, v4, :cond_3

    .line 39
    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p0, v2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 43
    :cond_0
    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {p0, v3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 48
    :cond_1
    if-eqz v2, :cond_2

    .line 51
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 53
    move-result-object v5

    .line 56
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 57
    invoke-interface {v5, v2, v0}, Landroid/app/IActivityTaskManager;->screenshotTask(IZ)Landroid/window/TaskSnapshot;

    .line 59
    goto :goto_0

    .line 62
    :catch_0
    move-exception v2

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 65
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 67
    move-result-object v2

    .line 70
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 71
    invoke-interface {v2, v3, v0}, Landroid/app/IActivityTaskManager;->screenshotTask(IZ)Landroid/window/TaskSnapshot;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_2

    .line 76
    :goto_1
    const-string v3, "ScreenShotTask fail: "

    .line 77
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :cond_3
    :goto_2
    if-ne p1, v4, :cond_5

    .line 82
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 84
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTasks(I)Ljava/util/ArrayList;

    .line 86
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object p1

    .line 93
    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v1

    .line 103
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 104
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 106
    move-result-object v2

    .line 109
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/sosc/SoScUtils;->isHome(Landroid/app/TaskInfo;)Z

    .line 110
    move-result v2

    .line 113
    if-eqz v2, :cond_4

    .line 114
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 116
    goto :goto_3

    .line 119
    :cond_5
    return-void
    .line 120
.end method

.method public onGestureStart(I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setIsDraggingRecents(Z)V

    .line 3
    return-void
    .line 6
.end method

.method public onInfiniteModeResizing(ILandroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const-string v0, "MiuiWindowDecorViewModel"

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "onInfiniteModeResizing taskId="

    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, ", taskBounds="

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->deferRelayout()V

    .line 40
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->mRelayoutTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 43
    monitor-enter p1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->mRelayoutTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 46
    invoke-virtual {p0, v0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->relayoutWhileInfiniteModeResizing(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V

    .line 48
    monitor-exit p1

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
    .line 55
.end method

.method public onInfiniteModeResizingFinished(IF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "onInfiniteModeResizingFinished taskId="

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, ", scale="

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 34
    const-string v2, "MiuiWindowDecorViewModel"

    .line 35
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->continueRelayout()V

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMiuiFreeformScaleChanged(IF)V

    .line 43
    return-void
    .line 46
.end method

.method public onInit()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda3;

    .line 4
    invoke-direct {v1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V

    .line 6
    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 12
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->registerSplitScreenListener(Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 17
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda4;

    .line 19
    invoke-direct {v1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V

    .line 21
    const-string v2, "extra_shell_multiwin_switch"

    .line 24
    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 29
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda0;

    .line 31
    const/4 v2, 0x5

    .line 33
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;I)V

    .line 34
    const-wide/16 v2, 0x0

    .line 37
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 41
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    .line 44
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda5;

    .line 46
    invoke-direct {v1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->addMoveListener(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus$MultiwinMoveListener;)V

    .line 51
    return-void
    .line 54
.end method

.method public bridge synthetic onKeepClearAreasChanged(ILjava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onMiuiFreeformAvoidEnd(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const-string v0, "onMiuiShowFreeform taskId="

    .line 13
    const-string v1, "MiuiWindowDecorViewModel"

    .line 15
    invoke-static {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformAvoid:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateSampling()V

    .line 23
    return-void
    .line 26
.end method

.method public onMiuiFreeformAvoidStart(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const-string v0, "onMiuiHideFreeform taskId="

    .line 13
    const-string v1, "MiuiWindowDecorViewModel"

    .line 15
    invoke-static {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformAvoid:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateSampling()V

    .line 23
    return-void
    .line 26
.end method

.method public onMiuiFreeformBottomDragEnd(IZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "onMiuiFreeformBottomDragEnd taskId="

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string p1, ", reset="

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 34
    const-string v0, "MiuiWindowDecorViewModel"

    .line 35
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformIsHandlingEvent:Z

    .line 41
    if-eqz p2, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateSampling()V

    .line 45
    :cond_1
    return-void
    .line 48
.end method

.method public onMiuiFreeformBottomDragStart(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const-string v0, "onMiuiFreeformBottomDragStart taskId="

    .line 13
    const-string v1, "MiuiWindowDecorViewModel"

    .line 15
    invoke-static {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformIsHandlingEvent:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateSampling()V

    .line 23
    return-void
    .line 26
.end method

.method public onMiuiFreeformHandleEventEnd(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const-string v0, "onMiuiFreeformHandleEventEnd taskId="

    .line 13
    const-string v1, "MiuiWindowDecorViewModel"

    .line 15
    invoke-static {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformIsHandlingEvent:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateSampling()V

    .line 23
    return-void
    .line 26
.end method

.method public onMiuiFreeformHide(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const-string v0, "onMiuiHideFreeform taskId="

    .line 13
    const-string v1, "MiuiWindowDecorViewModel"

    .line 15
    invoke-static {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformHideEvent:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateSampling()V

    .line 23
    return-void
    .line 26
.end method

.method public onMiuiFreeformMiniTapEnd(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const-string v0, "onMiuiFreeformMiniTapEnd taskId="

    .line 13
    const-string v1, "MiuiWindowDecorViewModel"

    .line 15
    invoke-static {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformIsHandlingEvent:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateSampling()V

    .line 23
    return-void
    .line 26
.end method

.method public onMiuiFreeformMiniTapStart(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const-string v0, "onMiuiFreeformMiniTapStart taskId="

    .line 13
    const-string v1, "MiuiWindowDecorViewModel"

    .line 15
    invoke-static {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformIsHandlingEvent:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateSampling()V

    .line 23
    return-void
    .line 26
.end method

.method public onMiuiFreeformMoveEnd(IZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "onMiuiFreeformMoveEnd taskId="

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string p1, ", boundsChanged="

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 34
    const-string v0, "MiuiWindowDecorViewModel"

    .line 35
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformIsHandlingEvent:Z

    .line 41
    if-nez p2, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateSampling()V

    .line 45
    :cond_1
    return-void
    .line 48
.end method

.method public onMiuiFreeformMoveStart(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const-string v0, "onMiuiFreeformMoveStart taskId="

    .line 13
    const-string v1, "MiuiWindowDecorViewModel"

    .line 15
    invoke-static {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformIsHandlingEvent:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateSampling()V

    .line 23
    return-void
    .line 26
.end method

.method public onMiuiFreeformResizeEnd(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const-string v0, "onMiuiFreeformResizeEnd taskId="

    .line 13
    const-string v1, "MiuiWindowDecorViewModel"

    .line 15
    invoke-static {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformIsHandlingEvent:Z

    .line 21
    return-void
    .line 23
.end method

.method public onMiuiFreeformResizeStart(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const-string v0, "onMiuiFreeformResizeStart taskId="

    .line 13
    const-string v1, "MiuiWindowDecorViewModel"

    .line 15
    invoke-static {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformIsHandlingEvent:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateSampling()V

    .line 23
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->onMiuiFreeformResizeStart()V

    .line 26
    return-void
    .line 29
.end method

.method public onMiuiFreeformScaleChanged(IF)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "onMiuiFreeformScaleChanged taskId="

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string p1, ", scale="

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 34
    const-string v0, "MiuiWindowDecorViewModel"

    .line 35
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->onMiuiFreeformScaleChanged(F)V

    .line 40
    return-void
    .line 43
.end method

.method public onMiuiFreeformShow(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const-string v0, "onMiuiShowFreeform taskId="

    .line 13
    const-string v1, "MiuiWindowDecorViewModel"

    .line 15
    invoke-static {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mFreeformHideEvent:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->updateSampling()V

    .line 23
    return-void
    .line 26
.end method

.method public onMultiwinSwitchStart(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onMultiwinSwitchStart  type: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiWindowDecorViewModel"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 21
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda2;

    .line 23
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;II)V

    .line 26
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 31
    return-void
    .line 34
.end method

.method public onSingleOpenDragEnd(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onSingleOpenDragEnd  targetType: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiWindowDecorViewModel"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 21
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda2;

    .line 23
    const/4 v2, 0x1

    .line 25
    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;II)V

    .line 26
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 31
    return-void
    .line 34
.end method

.method public onSingleOpenDragStart()V
    .locals 3

    .line 1
    const-string v0, "MiuiWindowDecorViewModel"

    .line 2
    const-string v1, "onSingleOpenDragStart"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 9
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda0;

    .line 11
    const/4 v2, 0x4

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;I)V

    .line 14
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    return-void
    .line 22
.end method

.method public onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
    .locals 3

    .line 1
    const-string p8, "onSoScStateChanged::state = "

    .line 2
    const-string v0, "MiuiWindowDecorViewModel"

    .line 4
    invoke-static {p8, p4, v0}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    const/4 p8, -0x1

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq p4, p8, :cond_6

    .line 12
    if-eqz p4, :cond_4

    .line 14
    if-eq p4, v1, :cond_2

    .line 16
    const/4 p8, 0x2

    .line 18
    if-eq p4, p8, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    if-eqz p5, :cond_1

    .line 22
    invoke-virtual {p0, p5, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 24
    :cond_1
    if-eqz p6, :cond_8

    .line 27
    invoke-virtual {p0, p6, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 29
    goto :goto_0

    .line 32
    :cond_2
    if-eqz p5, :cond_3

    .line 33
    invoke-virtual {p0, p5, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 35
    :cond_3
    if-eqz p6, :cond_8

    .line 38
    invoke-virtual {p0, p6, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 40
    goto :goto_0

    .line 43
    :cond_4
    if-eqz p5, :cond_5

    .line 44
    invoke-virtual {p0, p5, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 46
    :cond_5
    if-eqz p6, :cond_8

    .line 49
    invoke-virtual {p0, p5, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 51
    goto :goto_0

    .line 54
    :cond_6
    if-eqz p5, :cond_7

    .line 55
    invoke-virtual {p0, p5, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 57
    :cond_7
    if-eqz p6, :cond_8

    .line 60
    invoke-virtual {p0, p6, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 62
    :cond_8
    :goto_0
    iget-object p5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 65
    invoke-virtual {p5, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTasks(I)Ljava/util/ArrayList;

    .line 67
    move-result-object p5

    .line 70
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object p5

    .line 74
    :cond_9
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result p6

    .line 78
    if-eqz p6, :cond_e

    .line 79
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object p6

    .line 84
    check-cast p6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 85
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 87
    move-result-object p8

    .line 90
    invoke-virtual {p8, p6}, Lcom/android/wm/shell/sosc/SoScUtils;->isHome(Landroid/app/TaskInfo;)Z

    .line 91
    move-result p8

    .line 94
    if-eqz p8, :cond_9

    .line 95
    if-eqz p4, :cond_c

    .line 97
    if-eq p4, v1, :cond_a

    .line 99
    invoke-virtual {p0, p6, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 101
    goto :goto_1

    .line 104
    :cond_a
    if-eqz p7, :cond_b

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 107
    move-result p8

    .line 110
    sub-int/2addr p8, p9

    .line 111
    invoke-virtual {p0, p6, p8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionHomeWidth(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 112
    goto :goto_2

    .line 115
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 116
    move-result p8

    .line 119
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 120
    move-result v2

    .line 123
    sub-int/2addr p8, v2

    .line 124
    invoke-virtual {p0, p6, p8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionHomeWidth(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 125
    :goto_2
    invoke-virtual {p0, p6, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 128
    goto :goto_1

    .line 131
    :cond_c
    if-eqz p7, :cond_d

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 134
    move-result p8

    .line 137
    sub-int/2addr p8, p9

    .line 138
    invoke-virtual {p0, p6, p8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionHomeWidth(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 139
    goto :goto_3

    .line 142
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 143
    move-result p8

    .line 146
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 147
    move-result v2

    .line 150
    sub-int/2addr p8, v2

    .line 151
    invoke-virtual {p0, p6, p8}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionHomeWidth(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 152
    :goto_3
    invoke-virtual {p0, p6, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 155
    goto :goto_1

    .line 158
    :cond_e
    return-void
    .line 159
.end method

.method public onSplitTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 2
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    .line 7
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 10
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitTasks:Landroid/util/SparseArray;

    .line 13
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 15
    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorRectController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitTasks:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->dispatchSplitScreenWindowDecorRect(Landroid/util/SparseArray;)V

    .line 24
    return-void
    .line 27
.end method

.method public onSplitTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitTasks:Landroid/util/SparseArray;

    .line 5
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorRectController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitTasks:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->dispatchSplitScreenWindowDecorRect(Landroid/util/SparseArray;)V

    .line 16
    return-void
    .line 19
.end method

.method public onSplitTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitTasks:Landroid/util/SparseArray;

    .line 5
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorRectController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitTasks:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->dispatchSplitScreenWindowDecorRect(Landroid/util/SparseArray;)V

    .line 16
    return-void
    .line 19
.end method

.method public onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 10
    if-nez v0, :cond_0

    .line 12
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x1

    .line 24
    invoke-virtual {v0, p1, p3, p4, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 25
    :cond_1
    :goto_0
    return-void
    .line 28
.end method

.method public onTaskClosing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 10
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 15
    return-void
    .line 18
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 10
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 15
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 17
    move-result-object v1

    .line 20
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 21
    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 23
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 25
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 27
    move-result v2

    .line 30
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 31
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 33
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 35
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 37
    move-result v3

    .line 40
    if-eq v2, v3, :cond_1

    .line 41
    iget-boolean v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotationAnimationRunning:Z

    .line 43
    if-nez v2, :cond_1

    .line 45
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotation:I

    .line 47
    if-eq v2, v1, :cond_1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    const-string v3, "onTaskInfoChanged, mRotationAnimationRunning=true, oldRotation="

    .line 53
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    iget v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotation:I

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v3, ", newRotation="

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 74
    const-string v3, "MiuiWindowDecorViewModel"

    .line 75
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v2, 0x1

    .line 80
    invoke-direct {p0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setRotationAnimationRunning(Z)V

    .line 81
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mRotation:I

    .line 84
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 86
    return-void
    .line 89
.end method

.method public onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 10
    const/4 p0, 0x1

    .line 13
    return p0
    .line 14
.end method

.method public bridge synthetic onTransitionFinished(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public registerMultiwinSwitchListener(Lcom/android/wm/shell/miuimultiwinswitch/MultiwinSwitchListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mListeners:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mListeners:Ljava/util/List;

    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
    .line 16
.end method

.method public setBottomCaptionHomeWidth(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 5
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 13
    if-nez p0, :cond_1

    .line 15
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->setSoScHomeWidth(I)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 21
    return-void
    .line 24
.end method

.method public setBottomCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 5
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 13
    if-nez p0, :cond_1

    .line 15
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->setBottomCaptionVisibility(Z)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 21
    return-void
    .line 24
.end method

.method public setCaptionVisibility(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 5
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 13
    if-nez p0, :cond_1

    .line 15
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->setCaptionVisibility(Z)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 21
    return-void
    .line 24
.end method

.method public setFreeformTaskTransitionStarter(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setFullscreenTaskListener(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mFullscreenTaskListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinSwitchController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitchController;->setFullscreenTaskListener(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V

    .line 6
    return-void
    .line 9
.end method

.method public setIsDraggingDot(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsDraggingDot:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "setIsDraggingDot isDraggingDot="

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    const-string v1, "MiuiWindowDecorViewModel"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsDraggingDot:Z

    .line 26
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->updateSampling()V

    .line 28
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 31
    move-result-object p0

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScUtils;->updateIsInMultiWinSwitch(Z)V

    .line 35
    return-void
    .line 38
.end method

.method public setIsDraggingRecents(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsDraggingRecents:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "setIsDraggingRecents isDraggingRecents="

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    const-string v1, "MiuiWindowDecorViewModel"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mIsDraggingRecents:Z

    .line 26
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->updateSampling()V

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public setMiuiFreeFormTouchExcludeRegion(Landroid/graphics/Region;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 4
    return-void
    .line 7
.end method

.method public setMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 2
    return-void
    .line 4
.end method

.method public setMultiWinSwitchAnimationRunning(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMultiWinSwitchAnimationRunning:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "setMultiWinSwitchAnimationRunning "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    const-string v1, "MiuiWindowDecorViewModel"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMultiWinSwitchAnimationRunning:Z

    .line 26
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->updateSamplingAndVisibility()V

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public setTaskTransition(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mContext:Landroid/content/Context;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 6
    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 11
    return-void
    .line 13
.end method

.method public startFreeformFillSplit(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->startFreeformFillSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 6
    return-void
    .line 9
.end method

.method public startFreeformReplaceSplit(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 10
    invoke-virtual {v1, p0, p1, v0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->startFreeformReplaceSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 12
    return-void
    .line 15
.end method

.method public switchFreeformToSingleOpen(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchFreeformToSingleOpen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 6
    return-void
    .line 9
.end method

.method public switchFreeformToSplit(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 4
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchFreeformToSplit(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 6
    return-void
    .line 9
.end method

.method public switchFullToSingleOpen(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchFullToSingleOpen(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 6
    return-void
    .line 9
.end method

.method public switchSplitToDesktop(IILjava/util/List;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-eqz p1, :cond_1

    .line 10
    const/4 v0, 0x0

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 13
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->animateDividerVisibility(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 18
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 20
    move-result v0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 32
    check-cast p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 33
    if-eqz p2, :cond_1

    .line 35
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 37
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 39
    iget-object v2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    iget-object v3, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 43
    iget-object v4, p2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 45
    move-object v5, p3

    .line 47
    move v6, p4

    .line 48
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchSplitToDesktop(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/List;Z)V

    .line 49
    goto :goto_0

    .line 52
    :cond_0
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 53
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 55
    iget-object v7, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 57
    iget-object v8, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    .line 59
    move-object v9, p3

    .line 61
    move v10, p4

    .line 62
    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchSingleOpenToDesktop(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Ljava/util/List;Z)V

    .line 63
    :cond_1
    :goto_0
    return-void
    .line 66
.end method

.method public switchSplitToFreeform(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mMiuiMultiWinSwitchUtils:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;

    .line 8
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->isSupportFreeform(I)Z

    .line 10
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 18
    move-result p1

    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne p1, v1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 25
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 27
    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchSplitToFreeform(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;

    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 35
    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskOperations;->switchSingleOpenToFreeform(Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 37
    :cond_1
    :goto_0
    return-void
    .line 40
.end method

.method public syncBoundsChange(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const-string v0, "MiuiWindowDecorViewModel"

    .line 13
    const-string/jumbo v1, "syncBoundsChange taskId="

    .line 15
    invoke-static {v1, p1, v0}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->mRelayoutTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 21
    monitor-enter p1

    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;->mRelayoutTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 24
    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 26
    monitor-exit p1

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
    .line 33
.end method

.method public unregisterMultiwinSwitchListener(Lcom/android/wm/shell/miuimultiwinswitch/MultiwinSwitchListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->mListeners:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method
