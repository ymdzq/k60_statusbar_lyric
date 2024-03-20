.class public final Lcom/android/wm/shell/pip/tv/TvPipController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;
.implements Lcom/android/wm/shell/sysui/UserChangeListener;


# instance fields
.field public final mActionBroadcastReceiver:Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;

.field public final mAppOpsListener:Lcom/android/wm/shell/pip/PipAppOpsListener;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mEduTextWindowExitAnimationDuration:I

.field public final mImpl:Lcom/android/wm/shell/pip/tv/TvPipController$TvPipImpl;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public mPinnedTaskId:I

.field public final mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

.field public mPipForceCloseDelay:I

.field public final mPipMediaController:Lcom/android/wm/shell/pip/PipMediaController;

.field public final mPipNotificationController:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

.field public final mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

.field public final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

.field public mResizeAnimationDuration:I

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public mState:I

.field public final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field public final mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

.field public final mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

.field public final mTvPipBoundsController:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

.field public final mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

.field public final mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

.field public final mWmShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/tv/TvPipBoundsController;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/tv/TvPipNotificationController;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellInit;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p14

    move-object/from16 v5, p16

    move-object/from16 v6, p17

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v7, Lcom/android/wm/shell/pip/tv/TvPipController$TvPipImpl;

    invoke-direct {v7}, Lcom/android/wm/shell/pip/tv/TvPipController$TvPipImpl;-><init>()V

    iput-object v7, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mImpl:Lcom/android/wm/shell/pip/tv/TvPipController$TvPipImpl;

    const/4 v7, 0x0

    .line 3
    iput v7, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    const/4 v8, -0x1

    .line 4
    iput v8, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPinnedTaskId:I

    .line 5
    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mContext:Landroid/content/Context;

    move-object v8, p2

    .line 6
    iput-object v8, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mMainHandler:Landroid/os/Handler;

    move-object v8, p5

    .line 7
    iput-object v8, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v8, p18

    .line 8
    iput-object v8, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    move-object v8, p4

    .line 9
    iput-object v8, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 10
    new-instance v8, Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    move-object/from16 v9, p15

    .line 11
    iput-object v9, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 12
    iput-object v2, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 13
    iget-object v9, v2, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 14
    invoke-virtual {v9, v8}, Lcom/android/wm/shell/common/DisplayLayout;->set(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v8

    .line 16
    iput v8, v2, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    move-object/from16 v2, p13

    .line 17
    iput-object v2, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 18
    iput-object v4, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsController:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    .line 19
    iput-object v0, v4, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mListener:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 20
    iput-object v3, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    .line 21
    new-instance v2, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    new-instance v4, Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    invoke-direct {v2, p1, v3, v4}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda0;)V

    iput-object v2, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 22
    iput-object v6, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipNotificationController:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    .line 23
    iput-object v2, v6, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 24
    iget-object v1, v2, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 25
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    iput-object v5, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 27
    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "TvPipMenuController"

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const v4, -0x27c5cf8d

    const-string v6, "%s: setDelegate(), delegate=%s"

    invoke-static {v3, v4, v7, v6, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_1
    iget-object v1, v5, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipController;

    if-nez v1, :cond_2

    .line 30
    iput-object v0, v5, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 31
    iput-object v2, v5, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 32
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mActionBroadcastReceiver:Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;

    move-object/from16 v1, p7

    .line 33
    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mAppOpsListener:Lcom/android/wm/shell/pip/PipAppOpsListener;

    move-object/from16 v1, p11

    .line 34
    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    move-object/from16 v1, p12

    .line 35
    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    move-object/from16 v1, p10

    .line 36
    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    move-object/from16 v1, p6

    .line 37
    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    move-object v1, p3

    .line 38
    iput-object v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mWmShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    .line 39
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v7}, Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;I)V

    move-object/from16 v2, p19

    invoke-virtual {v2, p0, v1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The delegate has already been set and should not change."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPinnedTaskInfo()Landroid/app/TaskInfo;
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    const-string v1, "TvPipController"

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 9
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 11
    move-result-object v3

    .line 14
    const v4, 0x604609ce

    .line 15
    const-string v5, "%s: getPinnedTaskInfo()"

    .line 18
    invoke-static {v0, v4, v2, v5, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 23
    move-result-object v0

    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-interface {v0, v3, v2}, Landroid/app/IActivityTaskManager;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 28
    move-result-object v0

    .line 31
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 32
    if-eqz v3, :cond_1

    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 39
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 40
    const-string v5, "%s: taskInfo=%s"

    .line 42
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 47
    const v6, 0x472e3b84

    .line 48
    invoke-static {v4, v6, v2, v5, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_1
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 56
    if-eqz v3, :cond_2

    .line 58
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 63
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 64
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 69
    const v1, -0x6418039a

    .line 70
    const-string v4, "%s: getRootTaskInfo() failed, %s"

    .line 73
    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_2
    const/4 v0, 0x0

    .line 78
    return-object v0
    .line 79
.end method

.method public static stateToName(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    const-string p0, "PIP_MENU"

    .line 10
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string v1, "Unknown state "

    .line 15
    invoke-static {v1, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0

    .line 24
    :cond_1
    const-string p0, "PIP"

    .line 25
    return-object p0

    .line 27
    :cond_2
    const-string p0, "NO_PIP"

    .line 28
    return-object p0
    .line 30
.end method


# virtual methods
.method public final closeCurrentPiP(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPinnedTaskId:I

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 10
    const-string p1, "TvPipController"

    .line 12
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 17
    const v0, -0x45c7dcdd

    .line 18
    const/4 v1, 0x0

    .line 21
    const-string v2, "%s: PiP has already been closed by custom close action"

    .line 22
    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_0
    return-void

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 28
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removePip()V

    .line 30
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->onPipDisappeared()V

    .line 33
    return-void
    .line 36
.end method

.method public final executeAction(I)V
    .locals 5

    .line 1
    if-eqz p1, :cond_5

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_4

    .line 5
    const/4 v1, 0x2

    .line 7
    if-eq p1, v1, :cond_3

    .line 8
    const/4 v1, 0x3

    .line 10
    if-eq p1, v1, :cond_1

    .line 11
    const/4 v1, 0x5

    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda1;

    .line 17
    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipController;I)V

    .line 19
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipForceCloseDelay:I

    .line 22
    int-to-long v0, v0

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 25
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 27
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 29
    goto :goto_0

    .line 32
    :cond_1
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 33
    if-eqz p1, :cond_2

    .line 35
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 37
    const-string v1, "TvPipController"

    .line 39
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 44
    const/4 v2, 0x0

    .line 45
    const-string v3, "%s: togglePipExpansion()"

    .line 46
    const v4, 0x5de4bf65

    .line 48
    invoke-static {p1, v4, v2, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 54
    iget-boolean v1, p1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 56
    xor-int/2addr v0, v1

    .line 58
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 59
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->updateGravityOnExpansionToggled(Z)V

    .line 61
    xor-int/lit8 v1, v0, 0x1

    .line 64
    iput-boolean v1, p1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipManuallyCollapsed:Z

    .line 66
    iput-boolean v0, p1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 68
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    .line 70
    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->showPictureInPictureMenu(Z)V

    .line 74
    goto :goto_0

    .line 77
    :cond_4
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPinnedTaskId:I

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->closeCurrentPiP(I)V

    .line 80
    goto :goto_0

    .line 83
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->movePipToFullscreen()V

    .line 84
    :goto_0
    return-void
    .line 87
.end method

.method public final movePip(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 7
    const-string v2, "TvPipBoundsAlgorithm"

    .line 9
    if-eqz v1, :cond_0

    .line 11
    int-to-long v3, p1

    .line 13
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    move-result-object v3

    .line 19
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 23
    const-string v4, "%s: updateGravity, keycode: %d"

    .line 24
    const v5, 0x288dbfb6

    .line 26
    const/4 v6, 0x4

    .line 29
    invoke-static {v1, v5, v6, v4, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 33
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 35
    const/4 v3, 0x1

    .line 37
    const/4 v4, 0x0

    .line 38
    if-eqz v1, :cond_2

    .line 39
    iget v1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 41
    if-ne v1, v3, :cond_1

    .line 43
    const/16 v5, 0x13

    .line 45
    if-eq p1, v5, :cond_4

    .line 47
    const/16 v5, 0x14

    .line 49
    if-eq p1, v5, :cond_4

    .line 51
    :cond_1
    const/4 v5, 0x2

    .line 53
    if-ne v1, v5, :cond_2

    .line 54
    const/16 v1, 0x16

    .line 56
    if-eq p1, v1, :cond_4

    .line 58
    const/16 v1, 0x15

    .line 60
    if-ne p1, v1, :cond_2

    .line 62
    goto :goto_1

    .line 64
    :cond_2
    iget v1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 65
    and-int/lit8 v5, v1, 0x7

    .line 67
    and-int/lit8 v6, v1, 0x70

    .line 69
    packed-switch p1, :pswitch_data_0

    .line 71
    goto :goto_0

    .line 74
    :pswitch_0
    const/4 v5, 0x5

    .line 75
    goto :goto_0

    .line 76
    :pswitch_1
    const/4 v5, 0x3

    .line 77
    goto :goto_0

    .line 78
    :pswitch_2
    const/16 v6, 0x50

    .line 79
    goto :goto_0

    .line 81
    :pswitch_3
    const/16 v6, 0x30

    .line 82
    :goto_0
    or-int p1, v5, v6

    .line 84
    if-eq p1, v1, :cond_4

    .line 86
    iput p1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 88
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 90
    if-eqz v0, :cond_3

    .line 92
    invoke-static {p1}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 101
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 102
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 104
    move-result-object p1

    .line 107
    const v1, 0x270d1847

    .line 108
    const-string v2, "%s: updateGravity, new gravity: %s"

    .line 111
    invoke-static {v0, v1, v4, v2, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_3
    move p1, v3

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    :goto_1
    move p1, v4

    .line 118
    :goto_2
    if-eqz p1, :cond_6

    .line 119
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 121
    iget p1, p1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 123
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 125
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 127
    iput p1, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    .line 129
    iget p1, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 131
    if-ne p1, v3, :cond_5

    .line 133
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showMovementHints()V

    .line 135
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    .line 138
    goto :goto_3

    .line 141
    :cond_6
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 142
    if-eqz p0, :cond_7

    .line 144
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 146
    const-string p1, "TvPipController"

    .line 148
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 150
    move-result-object p1

    .line 153
    const v0, 0x6c2695d8

    .line 154
    const-string v1, "%s: Position hasn\'t changed"

    .line 157
    invoke-static {p0, v0, v4, v1, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_7
    :goto_3
    return-void

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 164
.end method

.method public final movePipToFullscreen()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 7
    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 13
    const-string v3, "TvPipController"

    .line 15
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    const v3, -0xff47409

    .line 21
    const-string v4, "%s: movePipToFullscreen(), state=%s"

    .line 24
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 29
    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mResizeAnimationDuration:I

    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->exitPip(IZ)V

    .line 33
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->onPipDisappeared()V

    .line 36
    return-void
    .line 39
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    const/4 v0, 0x0

    .line 4
    const-string v1, "TvPipController"

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 9
    invoke-static {p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 14
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 15
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 20
    const v3, 0xb60a154

    .line 21
    const-string v4, "%s: onConfigurationChanged(), state=%s"

    .line 24
    invoke-static {v2, v3, v0, v4, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 29
    iget v2, p1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDefaultGravity:I

    .line 31
    and-int/lit8 v2, v2, 0x7

    .line 33
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->reloadResources()V

    .line 35
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipNotificationController:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    .line 38
    iget-object v4, v3, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v4

    .line 45
    const v5, 0x7f1308ed    # @string/pip_notification_unknown_title '(No title program)'

    .line 46
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 52
    iput-object v4, v3, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mDefaultTitle:Ljava/lang/String;

    .line 53
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->updateNotificationContent()V

    .line 55
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsAlgorithm:Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 58
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;->onConfigurationChanged(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->updateDefaultGravity()V

    .line 65
    iget v3, p1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDefaultGravity:I

    .line 68
    and-int/lit8 v3, v3, 0x7

    .line 70
    iget v4, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 72
    if-eqz v4, :cond_1

    .line 74
    const/4 v0, 0x1

    .line 76
    :cond_1
    if-eqz v0, :cond_4

    .line 77
    if-eq v2, v3, :cond_4

    .line 79
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 81
    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 85
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 90
    const v2, 0x23b4df2e

    .line 91
    const-string v3, "%s: movePipToOppositeSide"

    .line 94
    invoke-static {v0, v2, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->i(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_2
    iget p1, p1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 99
    and-int/lit8 v0, p1, 0x5

    .line 101
    const/4 v1, 0x5

    .line 103
    if-ne v0, v1, :cond_3

    .line 104
    const/16 p1, 0x15

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->movePip(I)V

    .line 108
    goto :goto_0

    .line 111
    :cond_3
    const/4 v0, 0x3

    .line 112
    and-int/2addr p1, v0

    .line 113
    if-ne p1, v0, :cond_4

    .line 114
    const/16 p1, 0x16

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->movePip(I)V

    .line 118
    :cond_4
    :goto_0
    return-void
    .line 121
.end method

.method public final onKeepClearAreasChanged(ILjava/util/Set;Ljava/util/Set;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 2
    iget v0, v0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    .line 4
    if-ne v0, p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getUnrestrictedKeepClearAreas()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 17
    xor-int/lit8 v0, v0, 0x1

    .line 18
    iget-object v1, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mRestrictedKeepClearAreas:Ljava/util/Set;

    .line 20
    check-cast v1, Landroid/util/ArraySet;

    .line 22
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 24
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 27
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    .line 30
    check-cast p1, Landroid/util/ArraySet;

    .line 32
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 34
    invoke-virtual {p1, p3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 37
    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mResizeAnimationDuration:I

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds(IZ)V

    .line 42
    :cond_0
    return-void
    .line 45
.end method

.method public final onPipDisappeared()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 7
    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 13
    const-string v3, "TvPipController"

    .line 15
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    const v3, -0x631c4125

    .line 21
    const-string v4, "%s: onPipDisappeared() state=%s"

    .line 24
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipNotificationController:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 34
    if-eqz v2, :cond_1

    .line 36
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 38
    const-string v3, "TvPipNotificationController"

    .line 40
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 45
    const v4, -0x3327489e

    .line 46
    const-string v5, "%s: dismiss()"

    .line 49
    invoke-static {v2, v4, v1, v5, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_1
    iput-boolean v1, v0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mIsNotificationShown:Z

    .line 54
    const/4 v2, 0x0

    .line 56
    iput-object v2, v0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mPackageName:Ljava/lang/String;

    .line 57
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 59
    const-string v3, "TvPip"

    .line 61
    const/16 v4, 0x44c

    .line 63
    invoke-virtual {v0, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 65
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mActionBroadcastReceiver:Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;

    .line 68
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->mRegistered:Z

    .line 70
    if-nez v3, :cond_2

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    iget-object v3, v0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 75
    iget-object v3, v3, Lcom/android/wm/shell/pip/tv/TvPipController;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v3, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    iput-boolean v1, v0, Lcom/android/wm/shell/pip/tv/TvPipController$ActionBroadcastReceiver;->mRegistered:Z

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 84
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    .line 86
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 89
    iput v1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 91
    iget v3, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDefaultGravity:I

    .line 93
    iput v3, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 95
    iput v3, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 97
    iput-boolean v1, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipManuallyCollapsed:Z

    .line 99
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsController:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    .line 101
    iput-object v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mCurrentPlacementBounds:Landroid/graphics/Rect;

    .line 103
    iput-object v2, v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->mPipTargetBounds:Landroid/graphics/Rect;

    .line 105
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->cancelScheduledPlacement()V

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipController;->setState(I)V

    .line 110
    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPinnedTaskId:I

    .line 114
    return-void
    .line 116
.end method

.method public final onPipTransitionCanceled(I)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 6
    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 12
    const-string v2, "TvPipController"

    .line 14
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    const v2, 0x3da58982

    .line 20
    const/4 v3, 0x0

    .line 23
    const-string v4, "%s: onPipTransition_Canceled(), state=%s"

    .line 24
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    .line 29
    move-result p1

    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipMenuController$$ExternalSyntheticLambda0;

    .line 38
    invoke-direct {v1, v0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;Z)V

    .line 40
    iget-object p1, v0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    .line 43
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 48
    iget-boolean p1, p1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->updatePipExpansionState(Z)V

    .line 54
    return-void
    .line 57
.end method

.method public final onPipTransitionFinished(I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 8
    if-nez v1, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipController;->setState(I)V

    .line 13
    :cond_0
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 16
    if-eqz v1, :cond_1

    .line 18
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 20
    invoke-static {v1}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    int-to-long v2, p1

    .line 26
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    move-result-object v2

    .line 32
    const-string v3, "TvPipController"

    .line 33
    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    const/16 v2, 0x10

    .line 39
    const-string v3, "%s: onPipTransition_Finished(), state=%s, direction=%d"

    .line 41
    const v4, -0x171d8c74

    .line 43
    invoke-static {p1, v4, v2, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipMenuController$$ExternalSyntheticLambda0;

    .line 54
    invoke-direct {v1, p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;Z)V

    .line 56
    iget-object p1, p1, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMainHandler:Landroid/os/Handler;

    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 64
    iget-boolean p1, p1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvPipExpanded:Z

    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->updatePipExpansionState(Z)V

    .line 70
    return-void
    .line 73
.end method

.method public final onPipTransitionStarted(ILandroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    .line 2
    move-result p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 8
    if-nez p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsState:Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 12
    iget-boolean v0, p2, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvExpandedPipSupported:Z

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget p2, p2, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    .line 18
    const/4 v0, 0x0

    .line 20
    cmpl-float p2, p2, v0

    .line 21
    if-eqz p2, :cond_0

    .line 23
    const/4 p2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p2, 0x0

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 28
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->updateExpansionEnabled(Z)V

    .line 30
    :cond_1
    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 33
    if-eqz p2, :cond_2

    .line 35
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 37
    invoke-static {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    int-to-long p1, p1

    .line 43
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 44
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    move-result-object p1

    .line 49
    const-string p2, "TvPipController"

    .line 50
    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    .line 52
    move-result-object p0

    .line 55
    const/16 p1, 0x10

    .line 56
    const-string p2, "%s: onPipTransition_Started(), state=%s, direction=%d"

    .line 58
    const v1, -0x6d2d5705

    .line 60
    invoke-static {v0, v1, p1, p2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_2
    return-void
.end method

.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 4
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mSessionsChangedListener:Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;

    .line 6
    invoke-virtual {p1, p2}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 8
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 13
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v1, v0, p0, p2}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 16
    return-void
    .line 19
.end method

.method public final reloadResources()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f0b0046    # @integer/config_pipResizeAnimationDuration '425'

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 11
    move-result v1

    .line 14
    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mResizeAnimationDuration:I

    .line 15
    const v1, 0x7f0b0045    # @integer/config_pipForceCloseDelay '1000'

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 20
    move-result v1

    .line 23
    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mPipForceCloseDelay:I

    .line 24
    const v1, 0x7f0b00ec    # @integer/pip_edu_text_window_exit_animation_duration '1000'

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 29
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mEduTextWindowExitAnimationDuration:I

    .line 33
    return-void
    .line 35
.end method

.method public final setState(I)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 10
    invoke-static {v1}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 15
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 16
    const-string v3, "TvPipController"

    .line 18
    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    const v1, 0x591cc2b2

    .line 24
    const/4 v3, 0x0

    .line 27
    const-string v4, "%s: setState(), state=%s, prev=%s"

    .line 28
    invoke-static {v2, v1, v3, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 33
    return-void
    .line 35
.end method

.method public final showPictureInPictureMenu(Z)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    const-string v1, "TvPipController"

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 9
    invoke-static {v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->stateToName(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 15
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    const v4, 0x436c30ce

    .line 21
    const-string v5, "%s: showPictureInPictureMenu(), state=%s"

    .line 24
    invoke-static {v3, v4, v2, v5, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    .line 29
    if-nez v0, :cond_2

    .line 31
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 33
    if-eqz p0, :cond_1

    .line 35
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 37
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 42
    const v0, 0x520f08af

    .line 43
    const-string v1, "%s:  > cannot open Menu from the current state."

    .line 46
    invoke-static {p0, v0, v2, v1, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_1
    return-void

    .line 51
    :cond_2
    const/4 v0, 0x2

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipController;->setState(I)V

    .line 53
    const-string v1, "TvPipMenuController"

    .line 56
    const/4 v3, 0x1

    .line 58
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 59
    if-eqz p1, :cond_4

    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 66
    if-eqz p1, :cond_3

    .line 68
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 70
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 75
    const v1, 0x56bca5f5

    .line 76
    const-string v5, "%s: showMovementMenu()"

    .line 79
    invoke-static {p1, v1, v2, v5, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_3
    invoke-virtual {v4, v3, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->switchToMenuMode(IZ)V

    .line 84
    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 91
    if-eqz p1, :cond_5

    .line 93
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 95
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 100
    const v5, -0x64c2cf9a

    .line 101
    const-string v6, "%s: showMenu()"

    .line 104
    invoke-static {p1, v5, v2, v6, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_5
    invoke-virtual {v4, v0, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->switchToMenuMode(IZ)V

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds()V

    .line 112
    return-void
    .line 115
.end method

.method public final updatePinnedStackBounds()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mResizeAnimationDuration:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipController;->updatePinnedStackBounds(IZ)V

    return-void
.end method

.method public final updatePinnedStackBounds(IZ)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipMenuController:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isInMoveMode()Z

    move-result v0

    .line 4
    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 5
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipController;->mTvPipBoundsController:Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;->recalculatePipBounds(ZZIZ)V

    return-void
.end method
