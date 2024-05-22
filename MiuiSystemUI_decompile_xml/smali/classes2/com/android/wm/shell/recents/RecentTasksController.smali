.class public final Lcom/android/wm/shell/recents/RecentTasksController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mContext:Landroid/content/Context;

.field public final mDesktopModeTaskRepository:Ljava/util/Optional;

.field public final mImpl:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

.field public final mIsDesktopMode:Z

.field public mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mSplitTasks:Landroid/util/SparseIntArray;

.field public final mTaskSplitBoundsMap:Ljava/util/Map;

.field public final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field public mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/app/ActivityTaskManager;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;)V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mImpl:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    .line 13
    new-instance v0, Landroid/util/SparseIntArray;

    .line 15
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    .line 27
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mContext:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    .line 31
    iput-object p4, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 33
    iput-object p6, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    move-result-object p1

    .line 40
    const-string p3, "android.hardware.type.pc"

    .line 41
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 43
    move-result p1

    .line 46
    iput-boolean p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mIsDesktopMode:Z

    .line 47
    iput-object p5, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 49
    iput-object p7, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mDesktopModeTaskRepository:Ljava/util/Optional;

    .line 51
    iput-object p8, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 53
    new-instance p1, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda0;

    .line 55
    invoke-direct {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;)V

    .line 57
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 60
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 63
    move-result-object p0

    .line 66
    invoke-virtual {p0, p5}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->setTaskStackListener(Lcom/android/wm/shell/common/TaskStackListenerImpl;)V

    .line 67
    return-void
    .line 70
.end method


# virtual methods
.method public final addSplitPair(IILcom/android/wm/shell/util/SplitBounds;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    if-ne p1, p2, :cond_1

    .line 9
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    .line 12
    const/4 v1, -0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 15
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    .line 19
    if-ne v1, p2, :cond_2

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 26
    move-object v3, v2

    .line 27
    check-cast v3, Ljava/util/HashMap;

    .line 28
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/wm/shell/util/SplitBounds;

    .line 34
    invoke-virtual {v1, p3}, Lcom/android/wm/shell/util/SplitBounds;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    return-void

    .line 42
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v1

    .line 52
    check-cast v2, Ljava/util/HashMap;

    .line 53
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v1

    .line 61
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v0

    .line 74
    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v0

    .line 81
    invoke-virtual {v2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    .line 85
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENT_TASKS_enabled:Z

    .line 88
    if-eqz p0, :cond_3

    .line 90
    int-to-long p0, p1

    .line 92
    int-to-long v0, p2

    .line 93
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    move-result-object p2

    .line 97
    sget-object p3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 98
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    move-result-object p0

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    move-result-object p1

    .line 107
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 108
    move-result-object p0

    .line 111
    const/4 p1, 0x5

    .line 112
    const/4 p2, 0x0

    .line 113
    const v0, 0x54dcf69b

    .line 114
    invoke-static {p3, v0, p1, p2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_3
    return-void
    .line 120
.end method

.method public final findTaskIdsForMiui([ILandroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_6

    .line 3
    if-eqz p3, :cond_6

    .line 5
    if-nez p1, :cond_0

    .line 7
    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p2, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p3

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz p3, :cond_5

    .line 15
    const p3, 0x7fffffff

    .line 17
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 20
    move-result v2

    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 24
    const/4 v3, 0x2

    .line 26
    invoke-virtual {p0, p3, v3, v2}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    .line 27
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 31
    move-result p3

    .line 34
    if-eqz p3, :cond_1

    .line 35
    return v1

    .line 37
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    .line 38
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    move v2, v0

    .line 43
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 44
    move-result v4

    .line 47
    if-ge v2, v4, :cond_4

    .line 48
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 53
    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 54
    iget-boolean v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    .line 56
    if-eqz v5, :cond_2

    .line 58
    goto :goto_1

    .line 60
    :cond_2
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 61
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 63
    move-result-object v5

    .line 66
    invoke-virtual {p2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v5

    .line 70
    if-eqz v5, :cond_3

    .line 71
    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 73
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v4

    .line 78
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result p0

    .line 88
    if-lt p0, v3, :cond_5

    .line 89
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object p0

    .line 94
    check-cast p0, Ljava/lang/Integer;

    .line 95
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 97
    move-result p0

    .line 100
    aput p0, p1, v0

    .line 101
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object p0

    .line 106
    check-cast p0, Ljava/lang/Integer;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 109
    move-result p0

    .line 112
    aput p0, p1, v1

    .line 113
    :cond_5
    return v1

    .line 115
    :cond_6
    :goto_2
    return v0
    .line 116
.end method

.method public final findTaskInBackground(ILandroid/content/ComponentName;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x2

    .line 6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 7
    move-result v2

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 11
    const v3, 0x7fffffff

    .line 13
    invoke-virtual {p0, v3, v1, v2}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    .line 16
    move-result-object p0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    move-result v2

    .line 24
    if-ge v1, v2, :cond_3

    .line 25
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 31
    iget-boolean v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    .line 33
    if-eqz v3, :cond_1

    .line 35
    goto :goto_1

    .line 37
    :cond_1
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 38
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 40
    move-result-object v3

    .line 43
    invoke-virtual {p2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    iget v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .line 50
    if-ne p1, v3, :cond_2

    .line 52
    return-object v2

    .line 54
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    return-object v0
    .line 58
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public getRecentTasks(III)Ljava/util/ArrayList;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 7
    new-instance p2, Landroid/util/SparseArray;

    .line 8
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 10
    const/4 p3, 0x0

    .line 13
    move v0, p3

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    move-result v1

    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 25
    iget v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 27
    invoke-virtual {p2, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    move v2, p3

    .line 45
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 46
    move-result v3

    .line 49
    const/4 v4, 0x0

    .line 50
    if-ge v2, v3, :cond_6

    .line 51
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 56
    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 57
    iget v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 59
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 61
    move-result v5

    .line 64
    if-nez v5, :cond_1

    .line 65
    goto/16 :goto_3

    .line 67
    :cond_1
    sget-boolean v5, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    .line 69
    const/4 v6, 0x1

    .line 71
    if-eqz v5, :cond_4

    .line 72
    iget-object v5, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mDesktopModeTaskRepository:Ljava/util/Optional;

    .line 74
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    .line 76
    move-result v7

    .line 79
    if-eqz v7, :cond_4

    .line 80
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 82
    move-result-object v5

    .line 85
    check-cast v5, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 86
    iget v7, v3, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 88
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    new-instance v8, Landroidx/core/util/SparseArrayKt$valueIterator$1;

    .line 93
    iget-object v5, v5, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    .line 95
    invoke-direct {v8, v5}, Landroidx/core/util/SparseArrayKt$valueIterator$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;)V

    .line 97
    invoke-static {v8}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 100
    move-result-object v5

    .line 103
    invoke-interface {v5}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object v5

    .line 107
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v8

    .line 111
    if-eqz v8, :cond_3

    .line 112
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v8

    .line 117
    check-cast v8, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    .line 118
    iget-object v8, v8, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->activeTasks:Landroid/util/ArraySet;

    .line 120
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v9

    .line 125
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 126
    move-result v8

    .line 129
    if-eqz v8, :cond_2

    .line 130
    move v5, v6

    .line 132
    goto :goto_2

    .line 133
    :cond_3
    move v5, p3

    .line 134
    :goto_2
    if-eqz v5, :cond_4

    .line 135
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    goto :goto_3

    .line 140
    :cond_4
    iget-object v5, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    .line 141
    iget v7, v3, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    .line 143
    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 145
    move-result v5

    .line 148
    const/4 v7, -0x1

    .line 149
    if-eq v5, v7, :cond_5

    .line 150
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 152
    move-result v7

    .line 155
    if-eqz v7, :cond_5

    .line 156
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 158
    move-result-object v4

    .line 161
    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 162
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 164
    iget-object v6, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    .line 167
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    move-result-object v5

    .line 172
    check-cast v6, Ljava/util/HashMap;

    .line 173
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    move-result-object v5

    .line 178
    check-cast v5, Lcom/android/wm/shell/util/SplitBounds;

    .line 179
    new-instance v6, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 181
    filled-new-array {v3, v4}, [Landroid/app/ActivityManager$RecentTaskInfo;

    .line 183
    move-result-object v3

    .line 186
    const/4 v4, 0x2

    .line 187
    invoke-direct {v6, v3, v5, v4}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;-><init>([Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;I)V

    .line 188
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    goto :goto_3

    .line 194
    :cond_5
    new-instance v5, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 195
    filled-new-array {v3}, [Landroid/app/ActivityManager$RecentTaskInfo;

    .line 197
    move-result-object v3

    .line 200
    invoke-direct {v5, v3, v4, v6}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;-><init>([Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;I)V

    .line 201
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 207
    goto/16 :goto_1

    .line 209
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 211
    move-result p0

    .line 214
    if-nez p0, :cond_7

    .line 215
    new-array p0, p3, [Landroid/app/ActivityManager$RecentTaskInfo;

    .line 217
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 219
    move-result-object p0

    .line 222
    check-cast p0, [Landroid/app/ActivityManager$RecentTaskInfo;

    .line 223
    new-instance p1, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    .line 225
    const/4 p2, 0x3

    .line 227
    invoke-direct {p1, p0, v4, p2}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;-><init>([Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;I)V

    .line 228
    invoke-virtual {v1, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 231
    :cond_7
    return-object v1
    .line 234
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTopRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    :goto_0
    return-object p0
    .line 24
.end method

.method public hasRecentTasksListener()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public notifyRecentTasksChanged()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENT_TASKS_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const v3, -0x3f98868e

    .line 10
    invoke-static {v0, v3, v1, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 16
    if-nez p0, :cond_1

    .line 18
    return-void

    .line 20
    :cond_1
    :try_start_0
    invoke-interface {p0}, Lcom/android/wm/shell/recents/IRecentTasksListener;->onRecentTasksChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    const-string v0, "RecentTasksController"

    .line 26
    const-string v1, "Failed call notifyRecentTasksChanged"

    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :goto_0
    return-void
    .line 33
.end method

.method public final onRecentTaskListUpdated()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    .line 2
    return-void
    .line 5
.end method

.method public final onTaskStackChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    .line 2
    return-void
    .line 5
.end method

.method public registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 2
    return-void
    .line 4
.end method

.method public final removeSplitPair(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    .line 2
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 5
    move-result v2

    .line 8
    if-eq v2, v1, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 11
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 22
    check-cast v0, Ljava/util/HashMap;

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    .line 35
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENT_TASKS_enabled:Z

    .line 38
    if-eqz p0, :cond_0

    .line 40
    int-to-long p0, p1

    .line 42
    int-to-long v0, v2

    .line 43
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 44
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    move-result-object p0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    move-result-object p1

    .line 53
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 57
    const/4 p1, 0x5

    .line 58
    const/4 v0, 0x0

    .line 59
    const v1, 0x374d9bf2

    .line 60
    invoke-static {v2, v1, p1, v0, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_0
    return-void
    .line 66
.end method

.method public unregisterRecentTasksListener()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    .line 3
    return-void
    .line 5
.end method
