.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# static fields
.field public static final DESKTOP_DENSITY_ALLOWED_RANGE:Lkotlin/ranges/IntRange;

.field public static final DESKTOP_DENSITY_OVERRIDE:I


# instance fields
.field public final context:Landroid/content/Context;

.field public final desktopMode:Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

.field public final desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

.field public final displayController:Lcom/android/wm/shell/common/DisplayController;

.field public final enterDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

.field public final exitDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

.field public final mOnAnimationFinishedCallback:Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;

.field public final mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public final shellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final transitions:Lcom/android/wm/shell/transition/Transitions;

.field public visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "persist.wm.debug.desktop_mode_density"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    move-result v0

    .line 8
    sput v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_OVERRIDE:I

    .line 9
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 11
    const/16 v1, 0x64

    .line 13
    const/16 v2, 0x3e8

    .line 15
    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 17
    sput-object v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_ALLOWED_RANGE:Lkotlin/ranges/IntRange;

    .line 20
    return-void
    .line 22
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 7
    iput-object p4, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->displayController:Lcom/android/wm/shell/common/DisplayController;

    .line 9
    iput-object p5, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 11
    iput-object p6, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 13
    iput-object p7, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 15
    iput-object p8, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    .line 17
    iput-object p9, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->enterDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    .line 19
    iput-object p10, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->exitDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    .line 21
    iput-object p11, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 23
    iput-object p12, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 25
    new-instance p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;

    .line 27
    invoke-direct {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    .line 29
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mOnAnimationFinishedCallback:Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;

    .line 32
    new-instance p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

    .line 34
    invoke-direct {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    .line 36
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopMode:Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

    .line 39
    sget-boolean p1, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    .line 41
    if-eqz p1, :cond_0

    .line 43
    new-instance p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$1;

    .line 45
    invoke-direct {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    .line 47
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 50
    :cond_0
    return-void
    .line 53
.end method

.method public static addMoveToDesktopChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 3
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 7
    sget-object v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_ALLOWED_RANGE:Lkotlin/ranges/IntRange;

    .line 10
    iget v2, v1, Lkotlin/ranges/IntProgression;->first:I

    .line 12
    iget v1, v1, Lkotlin/ranges/IntProgression;->last:I

    .line 14
    sget v3, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_OVERRIDE:I

    .line 16
    if-gt v2, v3, :cond_0

    .line 18
    if-gt v3, v1, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p0, p1, v3}, Landroid/window/WindowContainerTransaction;->setDensityDpi(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 26
    :cond_1
    return-void
    .line 29
.end method


# virtual methods
.method public final addMoveToFullscreenChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 3
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, p2, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 7
    sget-object v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_ALLOWED_RANGE:Lkotlin/ranges/IntRange;

    .line 10
    iget v2, v1, Lkotlin/ranges/IntProgression;->first:I

    .line 12
    iget v1, v1, Lkotlin/ranges/IntProgression;->last:I

    .line 14
    sget v3, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_OVERRIDE:I

    .line 16
    if-gt v2, v3, :cond_0

    .line 18
    if-gt v3, v1, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 32
    move-result-object p0

    .line 35
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 36
    invoke-virtual {p1, p2, p0}, Landroid/window/WindowContainerTransaction;->setDensityDpi(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 38
    :cond_1
    return-void
    .line 41
.end method

.method public final bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 2
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 7
    move-result v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    invoke-interface {v0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 13
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    array-length v1, v0

    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    const-string v1, "DesktopTasksController: bringDesktopAppsToFront"

    .line 25
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 30
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getActiveTasks(I)Landroid/util/ArraySet;

    .line 32
    move-result-object p1

    .line 35
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveHomeTaskToFront(Landroid/window/WindowContainerTransaction;)V

    .line 36
    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->freeformTasksInZOrder:Ljava/util/List;

    .line 39
    new-instance v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$bringDesktopAppsToFront$$inlined$sortedByDescending$1;

    .line 41
    invoke-direct {v1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$bringDesktopAppsToFront$$inlined$sortedByDescending$1;-><init>(Ljava/util/List;)V

    .line 43
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 46
    move-result-object p1

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object p1

    .line 58
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 68
    check-cast v1, Ljava/lang/Integer;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 71
    move-result v1

    .line 74
    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 75
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 77
    move-result-object v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object p0

    .line 90
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result p1

    .line 94
    if-eqz p1, :cond_3

    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 100
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 101
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 103
    const/4 v0, 0x1

    .line 105
    invoke-virtual {p2, p1, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 106
    goto :goto_1

    .line 109
    :cond_3
    return-void
    .line 110
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStatusBarHeight(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->displayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 6
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x5

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq p1, v2, :cond_0

    .line 9
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 11
    move-result p1

    .line 14
    const/4 v3, 0x3

    .line 15
    if-eq p1, v3, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 19
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 30
    move-result p1

    .line 33
    if-eq p1, v2, :cond_2

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 37
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 41
    move-result p1

    .line 44
    if-eq p1, v2, :cond_3

    .line 45
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 47
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 51
    move-result p1

    .line 54
    if-eq p1, v0, :cond_3

    .line 55
    :goto_0
    move p1, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move p1, v2

    .line 59
    :goto_1
    const/4 v3, 0x0

    .line 60
    if-nez p1, :cond_4

    .line 61
    return-object v3

    .line 63
    :cond_4
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 64
    move-result-object p1

    .line 67
    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 68
    iget-object v4, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 70
    invoke-virtual {v4, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getActiveTasks(I)Landroid/util/ArraySet;

    .line 72
    move-result-object p2

    .line 75
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 76
    move-result v5

    .line 79
    if-ne v5, v2, :cond_9

    .line 80
    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 82
    move-result v5

    .line 85
    if-eqz v5, :cond_5

    .line 86
    goto :goto_2

    .line 88
    :cond_5
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object v5

    .line 92
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v6

    .line 96
    if-eqz v6, :cond_7

    .line 97
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v6

    .line 102
    check-cast v6, Ljava/lang/Integer;

    .line 103
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 105
    move-result v6

    .line 108
    invoke-virtual {v4, v6}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->isVisibleTask(I)Z

    .line 109
    move-result v6

    .line 112
    if-eqz v6, :cond_6

    .line 113
    move v5, v2

    .line 115
    goto :goto_3

    .line 116
    :cond_7
    :goto_2
    move v5, v1

    .line 117
    :goto_3
    if-eqz v5, :cond_9

    .line 118
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 120
    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 122
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object p2

    .line 127
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 128
    move-result-object p2

    .line 131
    invoke-static {p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 132
    move-result v0

    .line 135
    if-eqz v0, :cond_8

    .line 136
    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 138
    move-result-object p0

    .line 141
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 142
    move-result-object p2

    .line 145
    array-length v0, p2

    .line 146
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 147
    move-result-object p2

    .line 150
    const-string v0, "DesktopTasksController: switch fullscreen task to freeform on transition taskId=%d"

    .line 151
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    move-result-object p2

    .line 156
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_8
    new-instance p0, Landroid/window/WindowContainerTransaction;

    .line 160
    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 162
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 165
    invoke-static {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToDesktopChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    .line 167
    return-object p0

    .line 170
    :cond_9
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 171
    move-result v5

    .line 174
    if-ne v5, v0, :cond_e

    .line 175
    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 177
    move-result v0

    .line 180
    if-eqz v0, :cond_a

    .line 181
    goto :goto_4

    .line 183
    :cond_a
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 184
    move-result-object p2

    .line 187
    :cond_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    move-result v0

    .line 191
    if-eqz v0, :cond_c

    .line 192
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    move-result-object v0

    .line 197
    check-cast v0, Ljava/lang/Integer;

    .line 198
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 200
    move-result v0

    .line 203
    invoke-virtual {v4, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->isVisibleTask(I)Z

    .line 204
    move-result v0

    .line 207
    if-eqz v0, :cond_b

    .line 208
    goto :goto_5

    .line 210
    :cond_c
    :goto_4
    move v1, v2

    .line 211
    :goto_5
    if-eqz v1, :cond_e

    .line 212
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 214
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    move-result-object v0

    .line 221
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 222
    move-result-object v0

    .line 225
    invoke-static {p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z

    .line 226
    move-result v1

    .line 229
    if-eqz v1, :cond_d

    .line 230
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    .line 232
    move-result-object p2

    .line 235
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 236
    move-result-object v0

    .line 239
    array-length v1, v0

    .line 240
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 241
    move-result-object v0

    .line 244
    const-string v1, "DesktopTasksController: switch freeform task to fullscreen oon transition taskId=%d"

    .line 245
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    move-result-object v0

    .line 250
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_d
    new-instance p2, Landroid/window/WindowContainerTransaction;

    .line 254
    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 256
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 259
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToFullscreenChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    .line 261
    return-object p2

    .line 264
    :cond_e
    return-object v3
    .line 265
.end method

.method public final moveHomeTaskToFront(Landroid/window/WindowContainerTransaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 4
    move-result v0

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTasks(I)Ljava/util/ArrayList;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_2

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    move-object v2, v0

    .line 29
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 32
    move-result v2

    .line 35
    const/4 v3, 0x2

    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    move v2, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-eqz v2, :cond_0

    .line 42
    goto :goto_1

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    :goto_1
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 46
    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    .line 50
    move-result-object p0

    .line 53
    invoke-virtual {p1, p0, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 54
    :cond_3
    return-void
    .line 57
.end method

.method public final releaseVisualIndicator()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 2
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    .line 7
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    iget-object v3, v1, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 12
    if-nez v3, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 17
    iput-object v2, v1, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 20
    iget-object v3, v1, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    .line 22
    if-eqz v3, :cond_1

    .line 24
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 26
    iput-object v2, v1, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->mLeash:Landroid/view/SurfaceControl;

    .line 29
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    .line 31
    new-instance v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$releaseVisualIndicator$1;

    .line 33
    invoke-direct {v1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$releaseVisualIndicator$1;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 40
    return-void
    .line 43
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
