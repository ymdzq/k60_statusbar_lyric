.class public final Lcom/android/wm/shell/desktopmode/DesktopModeController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDesktopModeImpl:Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

.field public final mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public final mSettingsObserver:Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeImpl:Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mContext:Landroid/content/Context;

    .line 12
    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 14
    iput-object p4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 16
    iput-object p5, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 18
    iput-object p6, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 20
    iput-object p7, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 22
    iput-object p9, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 24
    new-instance p3, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;

    .line 26
    invoke-direct {p3, p0, p1, p8}, Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;Landroid/content/Context;Landroid/os/Handler;)V

    .line 28
    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mSettingsObserver:Lcom/android/wm/shell/desktopmode/DesktopModeController$SettingsObserver;

    .line 31
    sget-boolean p1, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_SUPPORTED:Z

    .line 33
    if-eqz p1, :cond_0

    .line 35
    new-instance p1, Lcom/android/wm/shell/desktopmode/DesktopModeController$$ExternalSyntheticLambda0;

    .line 37
    invoke-direct {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeController;)V

    .line 39
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 42
    :cond_0
    return-void
    .line 45
.end method


# virtual methods
.method public final bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getActiveTasks(I)Landroid/util/ArraySet;

    .line 4
    move-result-object p1

    .line 7
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 8
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 14
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 22
    const v5, -0x25d9ddaf

    .line 24
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    invoke-static {v4, v5, v2, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p1

    .line 42
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v4

    .line 46
    iget-object v5, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 47
    if-eqz v4, :cond_2

    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/Integer;

    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v4

    .line 60
    invoke-virtual {v5, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 61
    move-result-object v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 71
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    return-void

    .line 77
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    .line 80
    move-result p0

    .line 83
    invoke-virtual {v5, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTasks(I)Ljava/util/ArrayList;

    .line 84
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object p0

    .line 91
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result p1

    .line 95
    const/4 v4, 0x1

    .line 96
    if-eqz p1, :cond_5

    .line 97
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 102
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 103
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 105
    move-result v5

    .line 108
    const/4 v6, 0x2

    .line 109
    if-ne v5, v6, :cond_4

    .line 110
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 112
    invoke-virtual {p2, p0, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 114
    :cond_5
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 117
    if-eqz p0, :cond_6

    .line 119
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 121
    const p1, 0x1a7b199d

    .line 123
    invoke-static {p0, p1, v2, v3, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :cond_6
    iget-object p0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->freeformTasksInZOrder:Ljava/util/List;

    .line 129
    new-instance p1, Lcom/android/wm/shell/desktopmode/DesktopModeController$$ExternalSyntheticLambda2;

    .line 131
    invoke-direct {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeController$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    .line 133
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 136
    move-result-object p0

    .line 139
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 140
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object p0

    .line 146
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result p1

    .line 150
    if-eqz p1, :cond_7

    .line 151
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object p1

    .line 156
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 157
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 159
    invoke-virtual {p2, p1, v4}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 161
    goto :goto_1

    .line 164
    :cond_7
    return-void
    .line 165
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    return-object p0
    .line 4
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isActive(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 16
    if-eqz p0, :cond_0

    .line 18
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 20
    const p1, -0x5a05d9b5

    .line 22
    invoke-static {p0, p1, v1, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :cond_0
    return-object v2

    .line 28
    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 29
    move-result v0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eq v0, v3, :cond_3

    .line 34
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 36
    move-result v0

    .line 39
    const/4 v4, 0x3

    .line 40
    if-eq v0, v4, :cond_3

    .line 41
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 43
    if-eqz p0, :cond_2

    .line 45
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 47
    move-result p0

    .line 50
    invoke-static {p0}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 59
    const p2, 0x46e05328

    .line 61
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 64
    move-result-object p0

    .line 67
    invoke-static {p1, p2, v1, v2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_2
    return-object v2

    .line 71
    :cond_3
    if-eqz p1, :cond_6

    .line 72
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 74
    move-result v0

    .line 77
    const/4 v4, 0x5

    .line 78
    if-eq v0, v4, :cond_4

    .line 79
    goto :goto_0

    .line 81
    :cond_4
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 82
    if-eqz v0, :cond_5

    .line 84
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 89
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 90
    const v4, -0x77606ec4

    .line 92
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 95
    move-result-object p2

    .line 98
    invoke-static {v0, v4, v1, v2, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_5
    new-instance p2, Landroid/window/WindowContainerTransaction;

    .line 102
    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 104
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 107
    invoke-virtual {p0, v0, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;)V

    .line 109
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 112
    invoke-virtual {p2, p0, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 114
    return-object p2

    .line 117
    :cond_6
    :goto_0
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 118
    if-eqz p0, :cond_7

    .line 120
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 122
    const p1, 0xf37d2a7

    .line 124
    invoke-static {p0, p1, v1, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_7
    return-object v2
    .line 130
.end method

.method public final setDisplayAreaWindowingMode(IILandroid/window/WindowContainerTransaction;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mDisplayAreasInfo:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Landroid/window/DisplayAreaInfo;

    .line 10
    const/4 v0, 0x0

    .line 12
    if-nez p0, :cond_1

    .line 13
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 15
    if-eqz p0, :cond_0

    .line 17
    int-to-long p0, p1

    .line 19
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 20
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object p0

    .line 25
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 29
    const p1, 0xdeb8dc0

    .line 30
    const/4 p3, 0x1

    .line 33
    invoke-static {p2, p1, p3, v0, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    return-void

    .line 37
    :cond_1
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 38
    if-eqz v1, :cond_2

    .line 40
    int-to-long v1, p1

    .line 42
    iget-object p1, p0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    .line 43
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 45
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 47
    move-result p1

    .line 50
    int-to-long v3, p1

    .line 51
    int-to-long v5, p2

    .line 52
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    move-result-object v1

    .line 58
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    move-result-object v2

    .line 62
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    move-result-object v3

    .line 66
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 70
    const v2, -0x20bee35e

    .line 71
    const/16 v3, 0x15

    .line 74
    invoke-static {p1, v2, v3, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_2
    iget-object p0, p0, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    .line 79
    invoke-virtual {p3, p0, p2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 81
    return-void
    .line 84
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public updateDesktopModeActive(Z)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 12
    const v4, -0x4a9cfe83

    .line 14
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    invoke-static {v3, v4, v1, v2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 26
    move-result v0

    .line 29
    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 30
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTasks(I)Ljava/util/ArrayList;

    .line 32
    move-result-object v3

    .line 35
    new-instance v4, Landroid/window/WindowContainerTransaction;

    .line 36
    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 38
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 41
    if-eqz v5, :cond_1

    .line 43
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 45
    const v6, -0x4c61819a

    .line 47
    invoke-static {v5, v6, v1, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v5

    .line 56
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v6

    .line 60
    const/4 v7, 0x5

    .line 61
    const/4 v8, 0x1

    .line 62
    if-eqz v6, :cond_4

    .line 63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v6

    .line 68
    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 69
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 71
    move-result v9

    .line 74
    if-ne v9, v7, :cond_2

    .line 75
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 77
    move-result v7

    .line 80
    if-ne v7, v8, :cond_2

    .line 81
    sget-boolean v7, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 83
    if-eqz v7, :cond_3

    .line 85
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 87
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object v7

    .line 92
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object v8

    .line 96
    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 97
    const v10, 0x672a8890

    .line 99
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    .line 102
    move-result-object v7

    .line 105
    invoke-static {v9, v10, v1, v2, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_3
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 109
    invoke-virtual {v4, v6, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 111
    goto :goto_0

    .line 114
    :cond_4
    if-eqz p1, :cond_c

    .line 115
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 117
    if-eqz p1, :cond_5

    .line 119
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 121
    const v5, -0x7c3a68f

    .line 123
    invoke-static {p1, v5, v1, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    .line 129
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object v3

    .line 137
    move-object v5, v2

    .line 138
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v6

    .line 142
    if-eqz v6, :cond_8

    .line 143
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v6

    .line 148
    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 149
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 151
    move-result v9

    .line 154
    const/4 v10, 0x2

    .line 155
    if-ne v9, v10, :cond_7

    .line 156
    move-object v5, v6

    .line 158
    goto :goto_1

    .line 159
    :cond_7
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 160
    move-result v9

    .line 163
    if-ne v9, v8, :cond_6

    .line 164
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 166
    move-result v9

    .line 169
    if-eqz v9, :cond_6

    .line 170
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    goto :goto_1

    .line 175
    :cond_8
    if-nez v5, :cond_9

    .line 176
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 178
    if-eqz p1, :cond_b

    .line 180
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 182
    const v3, -0x12895668

    .line 184
    invoke-static {p1, v3, v1, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 187
    goto :goto_3

    .line 190
    :cond_9
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 191
    if-eqz v1, :cond_a

    .line 193
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 195
    move-result v1

    .line 198
    int-to-long v9, v1

    .line 199
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 200
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 202
    move-result-object v3

    .line 205
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 206
    move-result-object v3

    .line 209
    const v6, -0x1c9df98a

    .line 210
    invoke-static {v1, v6, v8, v2, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 213
    :cond_a
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    .line 216
    move-result-object v1

    .line 219
    invoke-virtual {v4, v1, v8}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 220
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 223
    move-result-object p1

    .line 226
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    move-result v1

    .line 230
    if-eqz v1, :cond_b

    .line 231
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    move-result-object v1

    .line 236
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 237
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    .line 239
    move-result-object v1

    .line 242
    invoke-virtual {v4, v1, v8}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 243
    goto :goto_2

    .line 246
    :cond_b
    :goto_3
    invoke-virtual {p0, v0, v7, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->setDisplayAreaWindowingMode(IILandroid/window/WindowContainerTransaction;)V

    .line 247
    goto :goto_5

    .line 250
    :cond_c
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 251
    if-eqz p1, :cond_d

    .line 253
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 255
    const v5, 0x9ffeaab

    .line 257
    invoke-static {p1, v5, v1, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 263
    move-result-object p1

    .line 266
    :cond_e
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    move-result v3

    .line 270
    if-eqz v3, :cond_10

    .line 271
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    move-result-object v3

    .line 276
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 277
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 279
    move-result v5

    .line 282
    if-ne v5, v8, :cond_e

    .line 283
    sget-boolean v5, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_DESKTOP_MODE_enabled:Z

    .line 285
    if-eqz v5, :cond_f

    .line 287
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 289
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 291
    move-result-object v5

    .line 294
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 295
    move-result-object v6

    .line 298
    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 299
    const v9, 0x2be02f6c

    .line 301
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 304
    move-result-object v5

    .line 307
    invoke-static {v7, v9, v1, v2, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :cond_f
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 311
    invoke-virtual {v4, v3, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 313
    goto :goto_4

    .line 316
    :cond_10
    invoke-virtual {p0, v0, v8, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeController;->setDisplayAreaWindowingMode(IILandroid/window/WindowContainerTransaction;)V

    .line 317
    :goto_5
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 320
    if-eqz p1, :cond_11

    .line 322
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 324
    const/4 p1, 0x6

    .line 326
    invoke-virtual {p0, p1, v4, v2}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 327
    goto :goto_6

    .line 330
    :cond_11
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 331
    invoke-virtual {p0, v4}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 333
    :goto_6
    return-void
    .line 336
.end method
