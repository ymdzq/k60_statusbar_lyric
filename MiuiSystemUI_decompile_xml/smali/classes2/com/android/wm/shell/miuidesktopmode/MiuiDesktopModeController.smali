.class public final Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;
.implements Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFullscreenTaskListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

.field public mKeyguardShowing:Z

.field public final mMiuiDesktopModeAnimation:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;

.field public final mMiuiDesktopTasksController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;

.field public final mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

.field public final mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field public final mRecentTasks:Ljava/util/Optional;

.field public final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public final mSettingsObserver:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$SettingsObserver;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Ljava/util/Optional;Landroid/os/Handler;Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V
    .locals 13

    .line 1
    move-object v9, p0

    .line 2
    move-object v10, p1

    .line 3
    move-object/from16 v11, p4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v10, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mContext:Landroid/content/Context;

    .line 9
    move-object/from16 v0, p3

    .line 11
    iput-object v0, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 13
    iput-object v11, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 15
    move-object/from16 v6, p5

    .line 17
    iput-object v6, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 19
    move-object/from16 v7, p9

    .line 21
    iput-object v7, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 23
    move-object/from16 v8, p10

    .line 25
    iput-object v8, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 27
    move-object/from16 v0, p11

    .line 29
    iput-object v0, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mRecentTasks:Ljava/util/Optional;

    .line 31
    new-instance v12, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;

    .line 33
    move-object v0, v12

    .line 35
    move-object v1, p2

    .line 36
    move-object/from16 v2, p5

    .line 37
    move-object/from16 v3, p6

    .line 39
    move-object/from16 v4, p9

    .line 41
    move-object/from16 v5, p10

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 45
    iput-object v12, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiDesktopModeAnimation:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;

    .line 48
    new-instance v12, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;

    .line 50
    move-object v0, v12

    .line 52
    move-object v1, p1

    .line 53
    move-object/from16 v4, p7

    .line 54
    move-object/from16 v5, p9

    .line 56
    move-object/from16 v6, p10

    .line 58
    move-object/from16 v7, p8

    .line 60
    move-object v8, p0

    .line 62
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;)V

    .line 63
    iput-object v12, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiDesktopTasksController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;

    .line 66
    new-instance v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$SettingsObserver;

    .line 68
    move-object/from16 v1, p12

    .line 70
    invoke-direct {v0, p0, p1, v1}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$SettingsObserver;-><init>(Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;Landroid/content/Context;Landroid/os/Handler;)V

    .line 72
    iput-object v0, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mSettingsObserver:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$SettingsObserver;

    .line 75
    new-instance v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$DesktopTransitionObserver;

    .line 77
    invoke-direct {v0}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$DesktopTransitionObserver;-><init>()V

    .line 79
    sget-boolean v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->IS_SUPPORTED:Z

    .line 82
    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$$ExternalSyntheticLambda0;

    .line 86
    invoke-direct {v1, p0}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;)V

    .line 88
    move-object v2, p2

    .line 91
    invoke-virtual {p2, p0, v1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 92
    move-object/from16 v1, p6

    .line 95
    iget-object v1, v1, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    move-object/from16 v0, p13

    .line 102
    iput-object v0, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mFullscreenTaskListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    .line 104
    invoke-virtual {v11, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->addFocusListener(Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;)V

    .line 106
    return-void
    .line 109
.end method


# virtual methods
.method public final addOrMoveFullTaskToTop(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiDesktopTasksController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiDesktopModeTaskRepository:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;->fullscreenTasksInZOrder:Ljava/util/ArrayList;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    const-string v0, "addOrMoveFullTaskTopTop taskId="

    .line 35
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    const-string p1, "MiuiDesktopModeTaskRepository"

    .line 47
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
    .line 52
.end method

.method public final exitTemporaryFullscreen()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiDesktopTasksController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiDesktopModeTaskRepository:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;

    .line 4
    iget-object v1, v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;->fullscreenTasksInZOrder:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v2

    .line 15
    if-eqz v2, :cond_5

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Integer;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v3

    .line 27
    iget-object v4, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 28
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 34
    move-result v4

    .line 37
    const/4 v5, 0x1

    .line 38
    if-ne v4, v5, :cond_0

    .line 39
    iget-boolean v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 41
    if-eqz v4, :cond_0

    .line 43
    iget-boolean v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

    .line 45
    if-eqz v4, :cond_0

    .line 47
    iget-object v4, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 49
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result v2

    .line 54
    invoke-virtual {v4, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->addToFullscreenToFreeformTaskList(I)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    const-string v4, "fullScreenToFreeformOrToBack "

    .line 63
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 74
    const-string v4, "MiuiDesktopTasksController"

    .line 75
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 80
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getMiuiFreeformModeGestureHandler()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 82
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreefromAnimation()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 86
    move-result-object v2

    .line 89
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 90
    invoke-static {v4}, Lmiui/app/MiuiFreeFormManager;->isFullScreenStrategyNeededInDesktopMode(I)Z

    .line 92
    move-result v5

    .line 95
    iget-object v6, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 96
    const/4 v7, 0x0

    .line 98
    if-eqz v5, :cond_1

    .line 99
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 101
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 103
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    .line 106
    move-result-object v3

    .line 109
    const/4 v8, 0x0

    .line 110
    invoke-virtual {v5, v3, v8}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 111
    iget-object v3, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 114
    const/4 v8, 0x4

    .line 116
    invoke-virtual {v3, v8, v5, v7}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 117
    goto :goto_2

    .line 120
    :cond_1
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformModeTaskInfoList()Ljava/util/List;

    .line 121
    move-result-object v3

    .line 124
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object v3

    .line 128
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v5

    .line 132
    if-eqz v5, :cond_3

    .line 133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v5

    .line 138
    check-cast v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 139
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTaskId()I

    .line 141
    move-result v8

    .line 144
    if-ne v8, v4, :cond_2

    .line 145
    move-object v7, v5

    .line 147
    goto :goto_1

    .line 148
    :cond_3
    if-eqz v7, :cond_4

    .line 149
    const/16 v3, 0x12

    .line 151
    invoke-virtual {v2, v3, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startGestureAnimation(ILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 153
    :cond_4
    :goto_2
    invoke-virtual {v6, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->removeFullScreenApp(I)V

    .line 156
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->showOtherFreeform(I)V

    .line 159
    goto/16 :goto_0

    .line 162
    :cond_5
    return-void
    .line 164
.end method

.method public final notifyVisibility(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiDesktopTasksController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 7
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 9
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v1, v2, :cond_3

    .line 14
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 16
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 18
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getActivityType()I

    .line 20
    move-result v1

    .line 23
    if-ne v1, v2, :cond_3

    .line 24
    iget-object v1, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mTmpFullTaskVisibilityArray:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 31
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    if-nez v3, :cond_0

    .line 34
    iget-boolean p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    .line 36
    if-eqz p0, :cond_3

    .line 38
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 44
    move-result v3

    .line 47
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 48
    move-result v4

    .line 51
    if-eq v3, v4, :cond_3

    .line 52
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 57
    if-nez v0, :cond_3

    .line 59
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 61
    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 71
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->milkLinkPackageName:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v3

    .line 82
    if-nez v3, :cond_2

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    move-result v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    goto :goto_0

    .line 91
    :cond_1
    const/4 v2, 0x0

    .line 92
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 93
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->trackFullscreenQuitEvent(I)V

    .line 97
    :cond_3
    :goto_1
    return-void
    .line 100
.end method

.method public final onFocusTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onFocusTaskChanged newFocus: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiDesktopModeController"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 27
    move-result p1

    .line 30
    const/4 v0, 0x5

    .line 31
    if-eq p1, v0, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->exitTemporaryFullscreen()V

    .line 35
    :cond_1
    :goto_0
    return-void
    .line 38
.end method

.method public final onKeyguardVisibilityChanged(ZZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mKeyguardShowing:Z

    .line 2
    return-void
    .line 4
.end method

.method public final removeFullTask(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiDesktopTasksController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiDesktopModeTaskRepository:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;->fullscreenTasksInZOrder:Ljava/util/ArrayList;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    const-string v0, "removeFullTask taskId="

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    const-string p1, "MiuiDesktopModeTaskRepository"

    .line 39
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
    .line 44
.end method

.method public updateDesktopModeActive(Z)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v3, "updateDesktopModeActive: active="

    .line 8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 20
    const-string v3, "MiuiDesktopModeController"

    .line 21
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sput-boolean v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->mDesktopActive:Z

    .line 26
    iget-object v2, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 28
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onDesktopModeChanged(Z)V

    .line 30
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->resetArraysForAutoLayout()V

    .line 33
    iget-object v4, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 36
    const/4 v5, 0x0

    .line 38
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->updateAutoLayoutModeStatus(Z)V

    .line 39
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->updateMiuiFreeformModeDisplayInfo(Z)V

    .line 42
    iget-object v6, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    .line 47
    move-result v6

    .line 50
    iget-object v7, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 51
    iget-object v7, v7, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v7

    .line 58
    check-cast v7, Landroid/window/DisplayAreaInfo;

    .line 59
    if-nez v7, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v1, "unable to update windowing mode for display "

    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, " display not found"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 82
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 86
    :cond_0
    iget-object v3, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 87
    invoke-virtual {v3, v6}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTasks(I)Ljava/util/ArrayList;

    .line 89
    move-result-object v3

    .line 92
    const/4 v6, 0x5

    .line 93
    const-string v8, "MiuiDesktopTasksController"

    .line 94
    iget-object v9, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiDesktopTasksController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;

    .line 96
    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    const-string v5, "prepareToEnterDesktop"

    .line 103
    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    goto/16 :goto_2

    .line 108
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    const-string v10, "prepareToExitDesktop"

    .line 113
    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v10, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 118
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 120
    move-result-object v11

    .line 123
    new-instance v12, Ljava/util/ArrayList;

    .line 124
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 126
    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 129
    move-result v13

    .line 132
    if-ge v5, v13, :cond_3

    .line 133
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object v13

    .line 138
    check-cast v13, Ljava/lang/Integer;

    .line 139
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 141
    move-result v13

    .line 144
    invoke-virtual {v10, v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 145
    move-result-object v13

    .line 148
    if-eqz v13, :cond_2

    .line 149
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 151
    move-result v14

    .line 154
    if-nez v14, :cond_2

    .line 155
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 160
    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 163
    move-result v5

    .line 166
    if-lez v5, :cond_5

    .line 167
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 169
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 171
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 174
    move-result-object v10

    .line 177
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    move-result v11

    .line 181
    if-eqz v11, :cond_4

    .line 182
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    move-result-object v11

    .line 187
    check-cast v11, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 188
    new-instance v12, Ljava/lang/StringBuilder;

    .line 190
    const-string v13, "prepareToExitDesktop set to WINDOWING_MODE_FREEFORM taskId: "

    .line 192
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 197
    move-result-object v13

    .line 200
    iget-object v13, v13, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 201
    iget v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 203
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v12

    .line 211
    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 215
    move-result-object v11

    .line 218
    iget-object v11, v11, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 219
    iget-object v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 221
    invoke-virtual {v5, v11, v6}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 223
    goto :goto_1

    .line 226
    :cond_4
    iget-object v6, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 227
    invoke-virtual {v6, v5}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 229
    :cond_5
    :goto_2
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 232
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 234
    const/4 v6, -0x1

    .line 237
    const/4 v10, 0x0

    .line 238
    if-eqz v1, :cond_1e

    .line 239
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    const-string v11, "onEnterDesktop"

    .line 244
    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v11, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mFullScreenTasksBehindHome:Landroid/util/ArraySet;

    .line 249
    invoke-virtual {v11}, Landroid/util/ArraySet;->clear()V

    .line 251
    iget-object v12, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mFreeFormTasksInFocussed:Ljava/util/List;

    .line 254
    check-cast v12, Ljava/util/ArrayList;

    .line 256
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object v13, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mPrimarySplitTasks:Ljava/util/List;

    .line 261
    check-cast v13, Ljava/util/ArrayList;

    .line 263
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 265
    iget-object v14, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mSecondSplitTasks:Ljava/util/List;

    .line 268
    check-cast v14, Ljava/util/ArrayList;

    .line 270
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 272
    iput-object v10, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->centralFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 275
    iget-object v10, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 277
    invoke-virtual {v10}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 279
    move-result v15

    .line 282
    if-eq v15, v6, :cond_9

    .line 283
    invoke-virtual {v10}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getRootTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 285
    move-result-object v6

    .line 288
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 289
    invoke-virtual {v10}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getMainStageRoot()Landroid/window/WindowContainerToken;

    .line 291
    move-result-object v15

    .line 294
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 295
    move-result-object v16

    .line 298
    const/16 v17, 0x0

    .line 299
    const/16 v18, 0x0

    .line 301
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    move-result v19

    .line 306
    if-eqz v19, :cond_8

    .line 307
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    move-result-object v19

    .line 312
    move-object/from16 v20, v2

    .line 313
    move-object/from16 v2, v19

    .line 315
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 317
    move-object/from16 v19, v4

    .line 319
    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    .line 321
    if-ne v4, v6, :cond_7

    .line 323
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 325
    if-ne v4, v15, :cond_6

    .line 327
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 329
    move/from16 v17, v2

    .line 331
    goto :goto_4

    .line 333
    :cond_6
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 334
    move/from16 v18, v2

    .line 336
    :cond_7
    :goto_4
    move-object/from16 v4, v19

    .line 338
    move-object/from16 v2, v20

    .line 340
    goto :goto_3

    .line 342
    :cond_8
    move-object/from16 v20, v2

    .line 343
    move-object/from16 v19, v4

    .line 345
    goto :goto_5

    .line 347
    :cond_9
    move-object/from16 v20, v2

    .line 348
    move-object/from16 v19, v4

    .line 350
    const/16 v17, 0x0

    .line 352
    const/16 v18, 0x0

    .line 354
    const/4 v6, 0x0

    .line 356
    :goto_5
    move/from16 v2, v17

    .line 357
    move/from16 v4, v18

    .line 359
    const-string v15, "onEnterDesktop splitRootTaskId: "

    .line 361
    const-string v1, " primarySplitTaskId: "

    .line 363
    const-string v0, " secondarySplitTaskId: "

    .line 365
    invoke-static {v15, v6, v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    move-result-object v0

    .line 370
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    move-result-object v0

    .line 377
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 381
    move-result-object v0

    .line 384
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    move-result v1

    .line 388
    iget-object v3, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 389
    if-eqz v1, :cond_13

    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    move-result-object v1

    .line 396
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 397
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 399
    move-result v15

    .line 402
    move-object/from16 v16, v0

    .line 403
    const/4 v0, 0x1

    .line 405
    if-ne v15, v0, :cond_11

    .line 406
    invoke-virtual {v10}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getRootTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 408
    move-result-object v0

    .line 411
    if-eqz v0, :cond_a

    .line 412
    iget v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 414
    invoke-virtual {v10}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getRootTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 416
    move-result-object v15

    .line 419
    iget v15, v15, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 420
    if-ne v0, v15, :cond_a

    .line 422
    goto/16 :goto_8

    .line 424
    :cond_a
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 426
    move-result v0

    .line 429
    const/4 v15, 0x1

    .line 430
    if-ne v0, v15, :cond_e

    .line 431
    iget v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 433
    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->unSupportedFreeformInDesktop(I)Z

    .line 435
    move-result v0

    .line 438
    const-string v15, "onEnterDesktop unSupportedFreeformInDesktop "

    .line 439
    move-object/from16 v17, v10

    .line 441
    const-string v10, "  taskId: "

    .line 443
    invoke-static {v15, v0, v10}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    move-result-object v10

    .line 448
    iget v15, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 449
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object v10

    .line 457
    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {v1}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->isVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 461
    move-result v10

    .line 464
    if-eqz v10, :cond_c

    .line 465
    if-eqz v0, :cond_b

    .line 467
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 469
    const/4 v10, 0x0

    .line 471
    invoke-virtual {v5, v3, v10}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 472
    move-object/from16 v18, v7

    .line 475
    move-object/from16 v21, v12

    .line 477
    goto/16 :goto_7

    .line 479
    :cond_b
    iget-object v10, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 481
    const/4 v15, 0x1

    .line 483
    invoke-virtual {v5, v10, v15}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 484
    iget-object v10, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 487
    invoke-virtual {v5, v10, v15}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 489
    new-instance v10, Landroid/graphics/Rect;

    .line 492
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 494
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 497
    move-result-object v15

    .line 500
    iget-object v15, v15, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 501
    invoke-virtual {v15}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 503
    move-result-object v15

    .line 506
    invoke-virtual {v3, v1, v10, v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->adjustFreeFormBoundsEnteringDesktop(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 507
    move-result v15

    .line 510
    move-object/from16 v18, v7

    .line 511
    iget-object v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 513
    invoke-virtual {v5, v7, v10}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 515
    new-instance v7, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 518
    invoke-direct {v7}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 520
    invoke-virtual {v7, v15}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 523
    move-object/from16 v21, v12

    .line 526
    iget-object v12, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 528
    invoke-virtual {v5, v12, v7}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 530
    iput-object v1, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->centralFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 533
    iget v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 535
    new-instance v12, Landroid/graphics/Rect;

    .line 537
    invoke-direct {v12, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 539
    invoke-virtual {v3, v7, v12, v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->addFreeformParamsForAutoLayout(ILandroid/graphics/Rect;F)V

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    .line 545
    const-string v7, "moveFullscreenToFreeform taskId: "

    .line 547
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 549
    iget v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 552
    invoke-static {v3, v7, v8}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 554
    iget-object v3, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 557
    iget-object v3, v3, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiDesktopModeAnimation:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;

    .line 559
    iget-object v3, v3, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 561
    iget v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 563
    invoke-virtual {v3, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 565
    goto :goto_7

    .line 568
    :cond_c
    move-object/from16 v18, v7

    .line 569
    move-object/from16 v21, v12

    .line 571
    new-instance v3, Ljava/lang/StringBuilder;

    .line 573
    const-string v7, "onEnterDesktop add to mFullScreenTasksBehindHome taskId: "

    .line 575
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 577
    iget v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 580
    invoke-static {v3, v7, v8}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 582
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 585
    const/4 v7, 0x0

    .line 587
    invoke-virtual {v5, v3, v7}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 588
    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 591
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 593
    move-result-object v3

    .line 596
    invoke-virtual {v11, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 597
    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 600
    invoke-static {v3}, Lmiui/app/MiuiFreeFormManager;->addFullScreenTasksBehindHome(I)V

    .line 602
    :goto_7
    if-eqz v0, :cond_d

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    .line 607
    const-string v3, "onEnterDesktop set to WINDOWING_MODE_FULLSCREEN taskId: "

    .line 609
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 614
    invoke-static {v0, v3, v8}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 616
    iget-object v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 619
    const/4 v1, 0x1

    .line 621
    invoke-virtual {v5, v0, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 622
    goto :goto_9

    .line 625
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 626
    const-string v3, "onEnterDesktop set to WINDOWING_MODE_UNDEFINED taskId: "

    .line 628
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 633
    invoke-static {v0, v3, v8}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 635
    iget-object v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 638
    const/4 v1, 0x0

    .line 640
    invoke-virtual {v5, v0, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 641
    goto :goto_9

    .line 644
    :cond_e
    move-object/from16 v18, v7

    .line 645
    move-object/from16 v17, v10

    .line 647
    move-object/from16 v21, v12

    .line 649
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 651
    move-result v0

    .line 654
    const/4 v3, 0x6

    .line 655
    if-ne v0, v3, :cond_12

    .line 656
    iget v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    .line 658
    if-eq v0, v2, :cond_f

    .line 660
    if-ne v0, v4, :cond_12

    .line 662
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 664
    const-string v3, "onEnterDesktop reparent taskId: "

    .line 666
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 671
    invoke-static {v0, v3, v8}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 673
    iget v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    .line 676
    if-ne v0, v2, :cond_10

    .line 678
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    goto :goto_9

    .line 683
    :cond_10
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    goto :goto_9

    .line 687
    :cond_11
    :goto_8
    move-object/from16 v18, v7

    .line 688
    move-object/from16 v17, v10

    .line 690
    move-object/from16 v21, v12

    .line 692
    :cond_12
    :goto_9
    move-object/from16 v0, v16

    .line 694
    move-object/from16 v10, v17

    .line 696
    move-object/from16 v7, v18

    .line 698
    move-object/from16 v12, v21

    .line 700
    goto/16 :goto_6

    .line 702
    :cond_13
    move-object/from16 v18, v7

    .line 704
    move-object/from16 v21, v12

    .line 706
    if-lez v6, :cond_17

    .line 708
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 710
    move-result-object v0

    .line 713
    :cond_14
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 714
    move-result v1

    .line 717
    if-eqz v1, :cond_15

    .line 718
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 720
    move-result-object v1

    .line 723
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 724
    invoke-static {v1}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->isVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 726
    move-result v2

    .line 729
    if-eqz v2, :cond_14

    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    .line 732
    const-string v4, "onEnterDesktop reorder primary split taskId: "

    .line 734
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 736
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 739
    invoke-static {v2, v4, v8}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 741
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 744
    const/4 v4, 0x1

    .line 746
    invoke-virtual {v5, v2, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 747
    invoke-virtual {v9, v1}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->autoLayoutBeforeEnteringDkt(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 750
    goto :goto_a

    .line 753
    :cond_15
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 754
    move-result-object v0

    .line 757
    :cond_16
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 758
    move-result v1

    .line 761
    if-eqz v1, :cond_17

    .line 762
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 764
    move-result-object v1

    .line 767
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 768
    invoke-static {v1}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->isVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 770
    move-result v2

    .line 773
    if-eqz v2, :cond_16

    .line 774
    invoke-virtual {v9, v1}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->autoLayoutBeforeEnteringDkt(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 776
    goto :goto_b

    .line 779
    :cond_17
    iget-object v0, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 780
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 782
    move-result-object v1

    .line 785
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 786
    move-result v2

    .line 789
    if-nez v2, :cond_1b

    .line 790
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 792
    move-result v2

    .line 795
    add-int/lit8 v2, v2, -0x1

    .line 796
    :goto_c
    if-ltz v2, :cond_1b

    .line 798
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 800
    move-result-object v4

    .line 803
    check-cast v4, Ljava/lang/Integer;

    .line 804
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 806
    move-result v4

    .line 809
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 810
    move-result-object v4

    .line 813
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 814
    move-result-object v7

    .line 817
    iget-object v7, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 818
    invoke-static {v7}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->isVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 820
    move-result v10

    .line 823
    if-eqz v10, :cond_19

    .line 824
    if-nez v6, :cond_18

    .line 826
    new-instance v10, Ljava/lang/StringBuilder;

    .line 828
    const-string v11, "onEnterDesktop reorder freeform taskId: "

    .line 830
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    iget v11, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 835
    invoke-static {v10, v11, v8}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 837
    iget-object v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 840
    const/4 v11, 0x1

    .line 842
    invoke-virtual {v5, v10, v11}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 843
    :cond_18
    move-object/from16 v12, v21

    .line 846
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 851
    move-result v7

    .line 854
    if-eqz v7, :cond_1a

    .line 855
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 857
    move-result-object v7

    .line 860
    new-instance v10, Landroid/graphics/Rect;

    .line 861
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 863
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 866
    move-result-object v4

    .line 869
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 870
    invoke-virtual {v3, v4, v10, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->adjustFreeFormBoundsEnteringDesktop(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 872
    move-result v4

    .line 875
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 876
    move-result-object v7

    .line 879
    check-cast v7, Ljava/lang/Integer;

    .line 880
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 882
    move-result v7

    .line 885
    invoke-virtual {v3, v7, v10, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->addFreeformParamsForAutoLayout(ILandroid/graphics/Rect;F)V

    .line 886
    goto :goto_d

    .line 889
    :cond_19
    move-object/from16 v12, v21

    .line 890
    :cond_1a
    :goto_d
    add-int/lit8 v2, v2, -0x1

    .line 892
    move-object/from16 v21, v12

    .line 894
    goto :goto_c

    .line 896
    :cond_1b
    iget-object v0, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->centralFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 897
    if-eqz v0, :cond_1c

    .line 899
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 901
    goto :goto_e

    .line 903
    :cond_1c
    const/4 v0, -0x1

    .line 904
    :goto_e
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->autolayoutInOrder(I)Z

    .line 905
    move-result v0

    .line 908
    if-eqz v0, :cond_1d

    .line 909
    iget-object v0, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->centralFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 911
    if-eqz v0, :cond_1d

    .line 913
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 915
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getDestinationAfterAutoLayout(I)Landroid/graphics/Rect;

    .line 917
    move-result-object v0

    .line 920
    if-eqz v0, :cond_1d

    .line 921
    iget-object v1, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->centralFreeform:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 923
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 925
    invoke-virtual {v5, v1, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 927
    :cond_1d
    move-object/from16 v7, v18

    .line 930
    iget-object v0, v7, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    .line 932
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 934
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 936
    iget-object v0, v7, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    .line 939
    const/4 v1, 0x5

    .line 941
    invoke-virtual {v5, v0, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 942
    const/4 v0, 0x1

    .line 945
    :goto_f
    move-object/from16 v1, p0

    .line 946
    goto/16 :goto_19

    .line 948
    :cond_1e
    move-object/from16 v20, v2

    .line 950
    move-object/from16 v19, v4

    .line 952
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 954
    const-string v0, "onExitDesktop"

    .line 957
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v0, Ljava/util/ArrayList;

    .line 962
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 964
    iget-object v1, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 967
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 969
    move-result-object v2

    .line 972
    new-instance v4, Ljava/lang/StringBuilder;

    .line 973
    const-string v6, "onExitDesktop freeformTasksInZorder= "

    .line 975
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 983
    move-result-object v4

    .line 986
    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 990
    move-result-object v3

    .line 993
    :cond_1f
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 994
    move-result v4

    .line 997
    if-eqz v4, :cond_21

    .line 998
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1000
    move-result-object v4

    .line 1003
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1004
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1006
    const-string v10, "onExitDesktop taskInfo.taskId= "

    .line 1008
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1010
    iget v10, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1013
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1015
    const-string v10, " isVisible= "

    .line 1018
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 1023
    move-result v10

    .line 1026
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1027
    const-string v10, " getWindowingMode= "

    .line 1030
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 1035
    move-result v10

    .line 1038
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1039
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1042
    move-result-object v6

    .line 1045
    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v6, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mRootHomeTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1049
    if-nez v6, :cond_20

    .line 1051
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 1053
    move-result v6

    .line 1056
    const/4 v10, 0x2

    .line 1057
    if-ne v6, v10, :cond_20

    .line 1058
    iput-object v4, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mRootHomeTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1060
    :cond_20
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 1062
    move-result v6

    .line 1065
    const/4 v10, 0x5

    .line 1066
    if-ne v6, v10, :cond_1f

    .line 1067
    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1069
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1071
    move-result-object v6

    .line 1074
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1075
    move-result v6

    .line 1078
    if-nez v6, :cond_1f

    .line 1079
    iget-object v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1081
    const/4 v10, 0x0

    .line 1083
    invoke-virtual {v5, v6, v10}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 1084
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1087
    const/4 v6, 0x0

    .line 1089
    invoke-virtual {v5, v4, v6}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 1090
    goto :goto_10

    .line 1093
    :cond_21
    const/4 v3, 0x0

    .line 1094
    const/4 v4, 0x0

    .line 1095
    :goto_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1096
    move-result v6

    .line 1099
    if-ge v3, v6, :cond_24

    .line 1100
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1102
    move-result-object v6

    .line 1105
    check-cast v6, Ljava/lang/Integer;

    .line 1106
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1108
    move-result v6

    .line 1111
    invoke-virtual {v1, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1112
    move-result-object v6

    .line 1115
    if-eqz v6, :cond_23

    .line 1116
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 1118
    move-result v10

    .line 1121
    if-eqz v10, :cond_23

    .line 1122
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1124
    move-result-object v10

    .line 1127
    iget-object v10, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1128
    invoke-static {v10}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->isVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 1130
    move-result v10

    .line 1133
    if-eqz v10, :cond_22

    .line 1134
    if-nez v4, :cond_22

    .line 1136
    move-object v4, v6

    .line 1138
    goto :goto_12

    .line 1139
    :cond_22
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    :cond_23
    :goto_12
    add-int/lit8 v3, v3, 0x1

    .line 1143
    goto :goto_11

    .line 1145
    :cond_24
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 1146
    move-result-object v2

    .line 1149
    const/4 v3, 0x1

    .line 1150
    invoke-virtual {v2, v3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getAbnormalFreeformBlackList(Z)Ljava/util/List;

    .line 1151
    move-result-object v2

    .line 1154
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 1155
    move-result-object v6

    .line 1158
    invoke-virtual {v6, v3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getAbnormalFreeformWhiteList(Z)Ljava/util/List;

    .line 1159
    move-result-object v6

    .line 1162
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 1163
    move-result-object v10

    .line 1166
    invoke-virtual {v10, v3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getEnableAbnormalFreeFormDebug(Z)I

    .line 1167
    move-result v3

    .line 1170
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 1171
    move-result-object v15

    .line 1174
    const/4 v10, 0x0

    .line 1175
    move v14, v10

    .line 1176
    :goto_13
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1177
    move-result v10

    .line 1180
    if-ge v14, v10, :cond_28

    .line 1181
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1183
    move-result-object v10

    .line 1186
    check-cast v10, Ljava/lang/Integer;

    .line 1187
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1189
    move-result v10

    .line 1192
    invoke-virtual {v1, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1193
    move-result-object v13

    .line 1196
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalFreeForm()Z

    .line 1197
    move-result v10

    .line 1200
    if-nez v10, :cond_27

    .line 1201
    if-ne v13, v4, :cond_25

    .line 1203
    goto :goto_14

    .line 1205
    :cond_25
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 1206
    move-result-object v10

    .line 1209
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getPackageName()Ljava/lang/String;

    .line 1210
    move-result-object v11

    .line 1213
    iget-object v12, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mContext:Landroid/content/Context;

    .line 1214
    move-object/from16 v16, v1

    .line 1216
    move-object v1, v13

    .line 1218
    move-object v13, v2

    .line 1219
    move/from16 v17, v14

    .line 1220
    move-object v14, v6

    .line 1222
    move-object/from16 v18, v15

    .line 1223
    move v15, v3

    .line 1225
    invoke-virtual/range {v10 .. v15}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isEnableAbnormalFreeform(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)Z

    .line 1226
    move-result v10

    .line 1229
    if-eqz v10, :cond_26

    .line 1230
    goto :goto_15

    .line 1232
    :cond_26
    invoke-static {v1, v5}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->startExitFreeform(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 1233
    goto :goto_15

    .line 1236
    :cond_27
    :goto_14
    move-object/from16 v16, v1

    .line 1237
    move/from16 v17, v14

    .line 1239
    move-object/from16 v18, v15

    .line 1241
    :goto_15
    add-int/lit8 v14, v17, 0x1

    .line 1243
    move-object/from16 v1, v16

    .line 1245
    move-object/from16 v15, v18

    .line 1247
    goto :goto_13

    .line 1249
    :cond_28
    const/4 v1, 0x0

    .line 1250
    :goto_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1251
    move-result v2

    .line 1254
    iget-object v3, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 1255
    if-ge v1, v2, :cond_29

    .line 1257
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1259
    move-result-object v2

    .line 1262
    check-cast v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1263
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1265
    move-result-object v6

    .line 1268
    iget-object v6, v6, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1269
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1271
    const/4 v10, 0x1

    .line 1273
    invoke-virtual {v3, v6, v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->screenshotTask(IZ)V

    .line 1274
    invoke-static {v2, v5}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->startExitFreeform(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 1277
    add-int/lit8 v1, v1, 0x1

    .line 1280
    goto :goto_16

    .line 1282
    :cond_29
    if-eqz v4, :cond_2b

    .line 1283
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isHideStackFromFullScreen()Z

    .line 1285
    move-result v0

    .line 1288
    if-nez v0, :cond_2a

    .line 1289
    iput-object v4, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mTopMiuiDesktopModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1291
    goto :goto_17

    .line 1293
    :cond_2a
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1294
    move-result-object v0

    .line 1297
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1298
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1300
    const/4 v1, 0x1

    .line 1302
    invoke-virtual {v3, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->screenshotTask(IZ)V

    .line 1303
    invoke-static {v4, v5}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->startExitFreeform(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 1306
    :cond_2b
    :goto_17
    iget-object v0, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mTopMiuiDesktopModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1309
    if-eqz v0, :cond_2d

    .line 1311
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1313
    const-string v2, "moveFreeformToFullscreen taskId: "

    .line 1315
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1320
    move-result-object v2

    .line 1323
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1324
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1326
    invoke-static {v1, v2, v8}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1328
    iget-object v1, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 1331
    iget-object v1, v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiDesktopModeAnimation:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;

    .line 1333
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1335
    const-string v2, "MiuiDesktopModeAnimation"

    .line 1338
    const-string v3, "applyDesktopFreeformToFullscreenAnimation"

    .line 1340
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1345
    move-result-object v2

    .line 1348
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1349
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1351
    const/4 v3, 0x0

    .line 1353
    invoke-virtual {v5, v2, v3}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 1354
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1357
    move-result-object v2

    .line 1360
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1361
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1363
    const/4 v3, 0x1

    .line 1365
    invoke-virtual {v5, v2, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 1366
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1369
    move-result-object v2

    .line 1372
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1373
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1375
    const/4 v3, 0x0

    .line 1377
    invoke-virtual {v5, v2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 1378
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1381
    move-result-object v2

    .line 1384
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1385
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1387
    const/4 v3, 0x0

    .line 1389
    invoke-virtual {v5, v2, v3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 1390
    new-instance v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 1393
    invoke-direct {v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 1395
    const/16 v3, 0x8

    .line 1398
    invoke-virtual {v2, v3}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setFreeformChange(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 1400
    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 1403
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1405
    if-eqz v3, :cond_2c

    .line 1407
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    .line 1409
    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1411
    new-instance v6, Landroid/graphics/Rect;

    .line 1414
    iget-object v10, v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 1416
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getMiuiFreeformModeDisplayInfo()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 1418
    move-result-object v11

    .line 1421
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 1422
    move-result v11

    .line 1425
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getMiuiFreeformModeDisplayInfo()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 1426
    move-result-object v10

    .line 1429
    invoke-virtual {v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayHeight()I

    .line 1430
    move-result v10

    .line 1433
    const/4 v12, 0x0

    .line 1434
    invoke-direct {v6, v12, v12, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1435
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1438
    move-result-object v10

    .line 1441
    iget-object v10, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 1442
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 1444
    move-result v11

    .line 1447
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 1448
    move-result v12

    .line 1451
    invoke-virtual {v3, v10, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1452
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1455
    move-result-object v10

    .line 1458
    iget-object v10, v10, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 1459
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 1461
    move-result-object v11

    .line 1464
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 1465
    move-result v11

    .line 1468
    int-to-float v11, v11

    .line 1469
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 1470
    move-result-object v12

    .line 1473
    invoke-virtual {v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 1474
    move-result v12

    .line 1477
    mul-float/2addr v12, v11

    .line 1478
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 1479
    move-result v11

    .line 1482
    int-to-float v11, v11

    .line 1483
    div-float/2addr v12, v11

    .line 1484
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 1485
    move-result-object v11

    .line 1488
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 1489
    move-result v11

    .line 1492
    int-to-float v11, v11

    .line 1493
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 1494
    move-result-object v13

    .line 1497
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 1498
    move-result v13

    .line 1501
    mul-float/2addr v13, v11

    .line 1502
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 1503
    move-result v6

    .line 1506
    int-to-float v6, v6

    .line 1507
    div-float/2addr v13, v6

    .line 1508
    invoke-virtual {v3, v10, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1509
    const/4 v6, 0x1

    .line 1512
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setExiting(Z)V

    .line 1513
    const/4 v10, -0x1

    .line 1516
    invoke-virtual {v2, v10}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformMode(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 1517
    move-result-object v10

    .line 1520
    invoke-virtual {v10, v4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 1521
    move-result-object v4

    .line 1524
    invoke-virtual {v4, v6}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformExiting(Z)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 1525
    move-result-object v4

    .line 1528
    invoke-virtual {v4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->freeformToFullscreen()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 1529
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1532
    move-result-object v4

    .line 1535
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1536
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1538
    invoke-virtual {v5, v4, v2}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 1540
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1543
    move-result-object v2

    .line 1546
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1547
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1549
    invoke-virtual {v5, v2, v3}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 1551
    iget-object v1, v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mPendingMaximizeMiuiFreeform:Landroid/util/SparseArray;

    .line 1554
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1556
    move-result-object v2

    .line 1559
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1560
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1562
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1564
    goto :goto_18

    .line 1567
    :cond_2c
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setScale(F)V

    .line 1568
    const/4 v1, -0x1

    .line 1571
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMode(I)V

    .line 1572
    const/4 v3, 0x0

    .line 1575
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 1576
    invoke-virtual {v2, v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformMode(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 1579
    move-result-object v1

    .line 1582
    invoke-virtual {v1, v4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 1583
    move-result-object v1

    .line 1586
    invoke-virtual {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->freeformToFullscreen()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 1587
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1590
    move-result-object v0

    .line 1593
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1594
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 1596
    invoke-virtual {v5, v0, v2}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 1598
    :cond_2d
    :goto_18
    iget-object v0, v7, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    .line 1601
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1603
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 1605
    iget-object v0, v7, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    .line 1608
    const/4 v1, 0x1

    .line 1610
    invoke-virtual {v5, v0, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 1611
    move v0, v1

    .line 1614
    goto/16 :goto_f

    .line 1615
    :goto_19
    iget-object v1, v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiDesktopModeAnimation:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;

    .line 1617
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1619
    sget-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 1622
    iget-object v3, v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mPendingTransitionTokens:Ljava/util/List;

    .line 1624
    iget-object v4, v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 1626
    if-eqz v2, :cond_2e

    .line 1628
    const/16 v2, 0x5208

    .line 1630
    invoke-virtual {v4, v2, v5, v1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 1632
    move-result-object v2

    .line 1635
    move-object v5, v3

    .line 1636
    check-cast v5, Ljava/util/ArrayList;

    .line 1637
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1639
    goto :goto_1a

    .line 1642
    :cond_2e
    iget-object v2, v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 1643
    invoke-virtual {v2, v5}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 1645
    :goto_1a
    move/from16 v2, p1

    .line 1648
    if-eqz v2, :cond_35

    .line 1650
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1652
    const-string v5, "afterEnterDesktop"

    .line 1655
    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    iget-object v5, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mPrimarySplitTasks:Ljava/util/List;

    .line 1660
    check-cast v5, Ljava/util/ArrayList;

    .line 1662
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1664
    move-result v6

    .line 1667
    if-lez v6, :cond_30

    .line 1668
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1670
    move-result-object v5

    .line 1673
    :cond_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1674
    move-result v6

    .line 1677
    if-eqz v6, :cond_30

    .line 1678
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1680
    move-result-object v6

    .line 1683
    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1684
    invoke-static {v6}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->isVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 1686
    move-result v7

    .line 1689
    if-eqz v7, :cond_2f

    .line 1690
    iget v5, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1692
    goto :goto_1b

    .line 1694
    :cond_30
    const/4 v5, 0x0

    .line 1695
    :goto_1b
    iget-object v6, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mSecondSplitTasks:Ljava/util/List;

    .line 1696
    check-cast v6, Ljava/util/ArrayList;

    .line 1698
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1700
    move-result v7

    .line 1703
    if-lez v7, :cond_32

    .line 1704
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1706
    move-result-object v6

    .line 1709
    :cond_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1710
    move-result v7

    .line 1713
    if-eqz v7, :cond_32

    .line 1714
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1716
    move-result-object v7

    .line 1719
    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1720
    invoke-static {v7}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->isVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 1722
    move-result v10

    .line 1725
    if-eqz v10, :cond_31

    .line 1726
    iget v6, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1728
    goto :goto_1c

    .line 1730
    :cond_32
    const/4 v6, 0x0

    .line 1731
    :goto_1c
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1732
    const-string v10, "afterEnterDesktop primaryTaskId: "

    .line 1734
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1739
    const-string v10, " secondTaskId: "

    .line 1742
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1747
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1750
    move-result-object v7

    .line 1753
    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v7, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mFreeFormTasksInFocussed:Ljava/util/List;

    .line 1757
    if-lez v5, :cond_33

    .line 1759
    invoke-virtual {v9, v7, v5, v6}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->switchSplitToDesktop(Ljava/util/List;II)V

    .line 1761
    const/4 v5, 0x0

    .line 1764
    goto :goto_1d

    .line 1765
    :cond_33
    const/4 v5, 0x0

    .line 1766
    if-lez v6, :cond_34

    .line 1767
    invoke-virtual {v9, v7, v6, v5}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->switchSplitToDesktop(Ljava/util/List;II)V

    .line 1769
    :cond_34
    :goto_1d
    iget-object v6, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mFullScreenTasksBehindHome:Landroid/util/ArraySet;

    .line 1772
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 1774
    move-result v7

    .line 1777
    if-lez v7, :cond_39

    .line 1778
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 1780
    move-result-object v6

    .line 1783
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1784
    move-result v7

    .line 1787
    if-eqz v7, :cond_39

    .line 1788
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1790
    move-result-object v7

    .line 1793
    check-cast v7, Ljava/lang/Integer;

    .line 1794
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 1796
    move-result v7

    .line 1799
    iget-object v8, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 1800
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1802
    new-instance v10, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$$ExternalSyntheticLambda1;

    .line 1805
    invoke-direct {v10, v7}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1807
    iget-object v7, v8, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mRecentTasks:Ljava/util/Optional;

    .line 1810
    invoke-virtual {v7, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1812
    goto :goto_1e

    .line 1815
    :cond_35
    const/4 v5, 0x0

    .line 1816
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1817
    const-string v6, "afterExitDesktop"

    .line 1820
    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iget-object v6, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mRootHomeTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1825
    if-eqz v6, :cond_37

    .line 1827
    iget-object v7, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mTopMiuiDesktopModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1829
    if-nez v7, :cond_36

    .line 1831
    invoke-static {v6}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->isVisible(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 1833
    move-result v6

    .line 1836
    if-eqz v6, :cond_36

    .line 1837
    iget-object v6, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiFreeformModeController:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 1839
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->startHomeTransition()V

    .line 1841
    :cond_36
    const/4 v6, 0x0

    .line 1844
    iput-object v6, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mRootHomeTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1845
    goto :goto_1f

    .line 1847
    :cond_37
    const/4 v6, 0x0

    .line 1848
    :goto_1f
    iget-object v7, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mTopMiuiDesktopModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1849
    if-eqz v7, :cond_38

    .line 1851
    invoke-virtual {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 1853
    move-result-object v7

    .line 1856
    iget-object v7, v7, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1857
    invoke-virtual {v9, v7}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->checkMiuiFreeFormStacksNum(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 1859
    iput-object v6, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mTopMiuiDesktopModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1862
    goto :goto_20

    .line 1864
    :cond_38
    invoke-virtual {v9, v6}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->checkMiuiFreeFormStacksNum(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 1865
    :goto_20
    iget-object v6, v9, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mFullScreenTasksBehindHome:Landroid/util/ArraySet;

    .line 1868
    invoke-virtual {v6}, Landroid/util/ArraySet;->clear()V

    .line 1870
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->clearFullScreenTasksBehindHome()V

    .line 1873
    :cond_39
    move-object/from16 v6, v19

    .line 1876
    invoke-virtual {v6, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->updateMiuiDesktopModeChange(Z)V

    .line 1878
    if-eqz v2, :cond_44

    .line 1881
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getMiuiFreeformModeDisplayInfo()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 1883
    move-result-object v2

    .line 1886
    new-instance v7, Landroid/graphics/Rect;

    .line 1887
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1889
    invoke-virtual {v2, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getMoveableBounds(Landroid/graphics/Rect;)V

    .line 1892
    invoke-virtual/range {v20 .. v20}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 1895
    move-result-object v2

    .line 1898
    move v8, v5

    .line 1899
    :goto_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1900
    move-result v9

    .line 1903
    if-ge v8, v9, :cond_44

    .line 1904
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1906
    move-result-object v9

    .line 1909
    check-cast v9, Ljava/lang/Integer;

    .line 1910
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 1912
    move-result v9

    .line 1915
    move-object/from16 v10, v20

    .line 1916
    invoke-virtual {v10, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 1918
    move-result-object v9

    .line 1921
    if-eqz v9, :cond_43

    .line 1922
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMode()I

    .line 1924
    move-result v11

    .line 1927
    const/4 v12, -0x1

    .line 1928
    if-ne v11, v12, :cond_3a

    .line 1929
    goto/16 :goto_23

    .line 1931
    :cond_3a
    new-instance v11, Landroid/graphics/Rect;

    .line 1933
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1935
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 1938
    move-result v12

    .line 1941
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 1942
    move-result v13

    .line 1945
    if-nez v13, :cond_3b

    .line 1946
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalPinedState()Z

    .line 1948
    move-result v13

    .line 1951
    if-eqz v13, :cond_3d

    .line 1952
    :cond_3b
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->isAutoLayoutMode()Z

    .line 1954
    move-result v13

    .line 1957
    if-eqz v13, :cond_3c

    .line 1958
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isNormalState()Z

    .line 1960
    move-result v13

    .line 1963
    if-eqz v13, :cond_3c

    .line 1964
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1966
    move-result-object v13

    .line 1969
    check-cast v13, Ljava/lang/Integer;

    .line 1970
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 1972
    move-result v13

    .line 1975
    invoke-virtual {v6, v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getDestinationAfterAutoLayout(I)Landroid/graphics/Rect;

    .line 1976
    move-result-object v13

    .line 1979
    if-eqz v13, :cond_3c

    .line 1980
    invoke-virtual {v11, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1982
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1985
    move-result-object v12

    .line 1988
    check-cast v12, Ljava/lang/Integer;

    .line 1989
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 1991
    move-result v12

    .line 1994
    invoke-virtual {v6, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getScaleAfterAutoLayout(I)F

    .line 1995
    move-result v12

    .line 1998
    goto :goto_22

    .line 1999
    :cond_3c
    move v0, v5

    .line 2000
    :goto_22
    if-nez v0, :cond_3d

    .line 2001
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 2003
    move-result-object v0

    .line 2006
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 2007
    move-result-object v12

    .line 2010
    iget-object v12, v12, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2011
    invoke-virtual {v6, v12, v11, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->adjustFreeFormBoundsEnteringDesktop(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 2013
    move-result v12

    .line 2016
    :cond_3d
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 2017
    move-result v0

    .line 2020
    if-nez v0, :cond_3e

    .line 2021
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniPinedState()Z

    .line 2023
    move-result v0

    .line 2026
    if-eqz v0, :cond_3f

    .line 2027
    :cond_3e
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 2029
    move-result-object v0

    .line 2032
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 2033
    move-result-object v12

    .line 2036
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 2037
    move-result v13

    .line 2040
    invoke-virtual {v12, v0, v11, v13, v7}, Lcom/xiaomi/freeform/MiuiFreeformStub;->reviewFreeFormBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)F

    .line 2041
    move-result v12

    .line 2044
    :cond_3f
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 2045
    move-result v0

    .line 2048
    cmpl-float v0, v12, v0

    .line 2049
    if-nez v0, :cond_40

    .line 2051
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 2053
    move-result-object v0

    .line 2056
    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 2057
    move-result v0

    .line 2060
    if-nez v0, :cond_41

    .line 2061
    :cond_40
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 2063
    move-result v0

    .line 2066
    sget-boolean v13, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 2067
    if-eqz v13, :cond_41

    .line 2069
    new-instance v13, Landroid/window/WindowContainerTransaction;

    .line 2071
    invoke-direct {v13}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 2073
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 2076
    move-result-object v14

    .line 2079
    iget-object v14, v14, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2080
    iget-object v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 2082
    invoke-virtual {v13, v14, v11}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 2084
    invoke-virtual {v9, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 2087
    invoke-virtual {v9, v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 2090
    invoke-virtual {v9, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setScale(F)V

    .line 2093
    invoke-virtual {v9, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleX(F)V

    .line 2096
    invoke-virtual {v9, v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setDestinationScaleY(F)V

    .line 2099
    new-instance v14, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 2102
    invoke-direct {v14}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 2104
    invoke-virtual {v14, v12}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 2107
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 2110
    move-result-object v12

    .line 2113
    iget-object v12, v12, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2114
    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 2116
    invoke-virtual {v13, v12, v14}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 2118
    iget-object v12, v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mPendingMiuiFreeformEnteringDkt:Landroid/util/SparseArray;

    .line 2121
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 2123
    move-result-object v14

    .line 2126
    iget-object v14, v14, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2127
    iget v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 2129
    invoke-virtual {v12, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2131
    const/16 v12, 0x5209

    .line 2134
    invoke-virtual {v4, v12, v13, v1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 2136
    move-result-object v12

    .line 2139
    move-object v13, v3

    .line 2140
    check-cast v13, Ljava/util/ArrayList;

    .line 2141
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2143
    iget-object v12, v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeAnimation;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 2146
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 2148
    move-result-object v13

    .line 2151
    iget-object v13, v13, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2152
    iget v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 2154
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2156
    move-result-object v0

    .line 2159
    invoke-virtual {v12, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2160
    :cond_41
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 2163
    move-result v0

    .line 2166
    if-nez v0, :cond_42

    .line 2167
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniPinedState()Z

    .line 2169
    move-result v0

    .line 2172
    if-eqz v0, :cond_43

    .line 2173
    :cond_42
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 2175
    move-result-object v0

    .line 2178
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 2179
    move-result-object v12

    .line 2182
    invoke-virtual {v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getMiniRestoreScaleX()F

    .line 2183
    move-result v13

    .line 2186
    invoke-virtual {v0, v12, v11, v13, v7}, Lcom/xiaomi/freeform/MiuiFreeformStub;->reviewFreeFormBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)F

    .line 2187
    move-result v0

    .line 2190
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMiniRestoreScaleX(F)V

    .line 2191
    invoke-virtual {v9, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setMiniRestoreScaleY(F)V

    .line 2194
    :cond_43
    :goto_23
    add-int/lit8 v8, v8, 0x1

    .line 2197
    const/4 v0, 0x1

    .line 2199
    move-object/from16 v20, v10

    .line 2200
    goto/16 :goto_21

    .line 2202
    :cond_44
    return-void
    .line 2204
.end method
