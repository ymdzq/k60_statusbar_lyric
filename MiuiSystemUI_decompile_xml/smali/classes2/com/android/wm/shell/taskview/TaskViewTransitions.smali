.class public final Lcom/android/wm/shell/taskview/TaskViewTransitions;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public final mPending:Ljava/util/ArrayList;

.field public final mRegistered:[Z

.field public final mTaskViews:Landroid/util/ArrayMap;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/transition/Transitions;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    .line 17
    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [Z

    .line 20
    const/4 v1, 0x0

    .line 22
    aput-boolean v1, v0, v1

    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mRegistered:[Z

    .line 25
    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 27
    return-void
    .line 29
.end method


# virtual methods
.method public final findPending(Landroid/os/IBinder;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    .line 15
    iget-object v2, v2, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    .line 17
    if-eq v2, p1, :cond_0

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    .line 28
    return-object p0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public findPendingOpeningTransition(Lcom/android/wm/shell/taskview/TaskViewTaskController;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    .line 16
    iget-object v1, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 18
    if-eq v1, p1, :cond_0

    .line 20
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    .line 27
    iget v1, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mType:I

    .line 29
    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 31
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 40
    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    .line 41
    return-object p0

    .line 43
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    const/4 p0, 0x0

    .line 47
    return-object p0
    .line 48
.end method

.method public final findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 5
    move-result v2

    .line 8
    if-ge v0, v2, :cond_2

    .line 9
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 15
    iget-object v2, v2, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    if-nez v2, :cond_0

    .line 19
    goto :goto_1

    .line 21
    :cond_0
    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 22
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 28
    iget-object v3, v3, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 32
    invoke-virtual {v2, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 43
    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 44
    return-object p0

    .line 46
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    const/4 p0, 0x0

    .line 50
    return-object p0
    .line 51
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 10
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    return-object v1

    .line 16
    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 17
    move-result v2

    .line 20
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 21
    move-result v2

    .line 24
    if-nez v2, :cond_2

    .line 25
    return-object v1

    .line 27
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v2

    .line 33
    :cond_3
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 34
    if-ltz v2, :cond_5

    .line 36
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    .line 42
    iget-object v3, v3, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 44
    if-eq v3, v0, :cond_4

    .line 46
    goto :goto_0

    .line 48
    :cond_4
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 52
    check-cast v3, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    .line 53
    iget v3, v3, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mType:I

    .line 55
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 57
    move-result v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 66
    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    .line 67
    goto :goto_1

    .line 69
    :cond_5
    move-object p0, v1

    .line 70
    :goto_1
    if-nez p0, :cond_6

    .line 71
    new-instance p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    .line 73
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 75
    move-result p2

    .line 78
    invoke-direct {p0, p2, v1, v0, v1}, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V

    .line 79
    :cond_6
    iget-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    .line 82
    if-nez p2, :cond_7

    .line 84
    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    .line 86
    new-instance p0, Landroid/window/WindowContainerTransaction;

    .line 88
    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 90
    return-object p0

    .line 93
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 94
    const-string p1, "Task is closing in 2 collecting transitions? This state doesn\'t make sense"

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p0
    .line 101
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findPending(Landroid/os/IBinder;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    .line 5
    move-result-object p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    return-void

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    .line 17
    return-void
    .line 20
.end method

.method public final setTaskViewVisible(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    .line 15
    iget-boolean v1, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mVisible:Z

    .line 17
    if-ne v1, p2, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    iget-object v1, p1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    if-nez v1, :cond_2

    .line 24
    return-void

    .line 26
    :cond_2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    .line 31
    iput-boolean p2, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mVisible:Z

    .line 33
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 35
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 37
    iget-object v2, p1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 42
    xor-int/lit8 v3, p2, 0x1

    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 46
    iget-object v2, p1, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 49
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 51
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    .line 57
    iget-object v0, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mBounds:Landroid/graphics/Rect;

    .line 59
    invoke-virtual {v1, v2, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 61
    new-instance v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    .line 64
    if-eqz p2, :cond_3

    .line 66
    const/4 p2, 0x3

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 p2, 0x4

    .line 70
    :goto_0
    const/4 v2, 0x0

    .line 71
    invoke-direct {v0, p2, v1, p1, v2}, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;-><init>(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/taskview/TaskViewTaskController;Landroid/os/IBinder;)V

    .line 72
    iget-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    .line 80
    return-void
    .line 83
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 4
    move-object/from16 v2, p4

    .line 6
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findPending(Landroid/os/IBinder;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    .line 8
    move-result-object v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    iget-object v4, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    iget-object v4, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 21
    move-result v4

    .line 24
    const/4 v5, 0x0

    .line 25
    const-string v6, "TaskViewTransitions"

    .line 26
    if-eqz v4, :cond_2

    .line 28
    if-eqz v3, :cond_1

    .line 30
    const-string v0, "Pending taskview transition but no task-views"

    .line 32
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_1
    return v5

    .line 37
    :cond_2
    const/4 v4, 0x1

    .line 38
    if-eqz v3, :cond_3

    .line 39
    iget-object v7, v3, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mLaunchCookie:Landroid/os/IBinder;

    .line 41
    if-eqz v7, :cond_3

    .line 43
    move v7, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    move v7, v5

    .line 47
    :goto_0
    const/4 v8, 0x0

    .line 48
    move v9, v5

    .line 49
    move v11, v9

    .line 50
    move-object v10, v8

    .line 51
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 52
    move-result-object v12

    .line 55
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 56
    move-result v12

    .line 59
    if-ge v9, v12, :cond_1c

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 62
    move-result-object v12

    .line 65
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v12

    .line 69
    check-cast v12, Landroid/window/TransitionInfo$Change;

    .line 70
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 72
    move-result-object v13

    .line 75
    if-nez v13, :cond_4

    .line 76
    goto/16 :goto_9

    .line 78
    :cond_4
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 80
    move-result v13

    .line 83
    invoke-static {v13}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 84
    move-result v13

    .line 87
    const-string v14, "Found a non-TaskView task in a TaskView Transition. This shouldn\'t happen, so there may be a visual artifact: "

    .line 88
    if-eqz v13, :cond_c

    .line 90
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 92
    move-result v13

    .line 95
    const/4 v15, 0x4

    .line 96
    if-ne v13, v15, :cond_5

    .line 97
    move v13, v4

    .line 99
    goto :goto_2

    .line 100
    :cond_5
    move v13, v5

    .line 101
    :goto_2
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 102
    move-result-object v15

    .line 105
    invoke-virtual {v0, v15}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 106
    move-result-object v15

    .line 109
    if-nez v15, :cond_6

    .line 110
    if-nez v13, :cond_6

    .line 112
    goto/16 :goto_8

    .line 114
    :cond_6
    if-nez v15, :cond_7

    .line 116
    if-eqz v3, :cond_1b

    .line 118
    new-instance v13, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 125
    move-result-object v12

    .line 128
    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 129
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v12

    .line 137
    invoke-static {v6, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    goto/16 :goto_9

    .line 141
    :cond_7
    if-eqz v13, :cond_9

    .line 143
    iget-object v12, v15, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 145
    if-nez v12, :cond_8

    .line 147
    goto/16 :goto_8

    .line 149
    :cond_8
    iget-object v12, v15, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 151
    invoke-virtual {v2, v12, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 153
    iget-object v12, v15, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    .line 156
    if-eqz v12, :cond_1a

    .line 158
    iget-object v13, v15, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 160
    iget v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 162
    iget-boolean v13, v15, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    .line 164
    invoke-interface {v12, v13}, Lcom/android/wm/shell/taskview/TaskView$Listener;->onTaskVisibilityChanged(Z)V

    .line 166
    goto/16 :goto_8

    .line 169
    :cond_9
    iget-object v12, v15, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 171
    if-eqz v12, :cond_b

    .line 173
    iget-object v12, v15, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    .line 175
    if-eqz v12, :cond_a

    .line 177
    iget-object v12, v15, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 179
    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 181
    iget-object v13, v15, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 183
    new-instance v14, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda1;

    .line 185
    invoke-direct {v14, v15, v12, v4}, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;II)V

    .line 187
    invoke-interface {v13, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 190
    :cond_a
    iget-object v12, v15, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

    .line 193
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    iget-object v12, v15, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 198
    iget-object v13, v15, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 200
    invoke-virtual {v13, v12, v5}, Landroid/window/TaskOrganizer;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    .line 202
    :cond_b
    invoke-virtual {v15}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->resetTaskInfo()V

    .line 205
    goto/16 :goto_8

    .line 208
    :cond_c
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 210
    move-result v13

    .line 213
    invoke-static {v13}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 214
    move-result v13

    .line 217
    const/4 v15, 0x0

    .line 218
    if-eqz v13, :cond_18

    .line 219
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 221
    move-result v13

    .line 224
    if-ne v13, v4, :cond_d

    .line 225
    move v13, v4

    .line 227
    goto :goto_3

    .line 228
    :cond_d
    move v13, v5

    .line 229
    :goto_3
    if-eqz v13, :cond_10

    .line 230
    if-eqz v3, :cond_f

    .line 232
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 234
    move-result-object v14

    .line 237
    iget-object v5, v3, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mLaunchCookie:Landroid/os/IBinder;

    .line 238
    invoke-virtual {v14, v5}, Landroid/app/ActivityManager$RunningTaskInfo;->containsLaunchCookie(Landroid/os/IBinder;)Z

    .line 240
    move-result v5

    .line 243
    if-nez v5, :cond_e

    .line 244
    goto :goto_4

    .line 246
    :cond_e
    iget-object v5, v3, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 247
    const/4 v7, 0x0

    .line 249
    goto :goto_5

    .line 250
    :cond_f
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 251
    const-string v13, "Found a launching TaskView in the wrong transition. All TaskView launches should be initiated by shell and in their own transition: "

    .line 253
    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 258
    move-result-object v12

    .line 261
    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 262
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object v5

    .line 270
    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    goto/16 :goto_9

    .line 274
    :cond_10
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 276
    move-result-object v5

    .line 279
    invoke-virtual {v0, v5}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 280
    move-result-object v5

    .line 283
    if-nez v5, :cond_11

    .line 284
    if-eqz v3, :cond_1b

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    .line 288
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 293
    move-result-object v12

    .line 296
    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 297
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    move-result-object v5

    .line 305
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    goto/16 :goto_9

    .line 309
    :cond_11
    :goto_5
    if-nez v10, :cond_12

    .line 311
    new-instance v10, Landroid/window/WindowContainerTransaction;

    .line 313
    invoke-direct {v10}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 315
    :cond_12
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 318
    move-result-object v14

    .line 321
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 322
    move-result-object v12

    .line 325
    iput-object v8, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 326
    iput-object v14, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 328
    iget-object v14, v14, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 330
    iput-object v14, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 332
    iput-object v12, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 334
    iget-boolean v8, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceCreated:Z

    .line 336
    iget-object v4, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    .line 338
    if-eqz v8, :cond_14

    .line 340
    iget-object v8, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 342
    invoke-virtual {v1, v12, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 344
    move-result-object v8

    .line 347
    iget-object v12, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 348
    invoke-virtual {v8, v12}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 350
    iget-object v8, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

    .line 353
    invoke-interface {v8}, Lcom/android/wm/shell/taskview/TaskViewBase;->getCurrentBoundsOnScreen()Landroid/graphics/Rect;

    .line 355
    move-result-object v8

    .line 358
    iget-object v12, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 359
    iget-object v14, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 361
    invoke-virtual {v2, v12, v14}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 363
    move-result-object v12

    .line 366
    iget-object v14, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 367
    invoke-virtual {v12, v14, v15, v15}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 369
    move-result-object v12

    .line 372
    iget-object v14, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskLeash:Landroid/view/SurfaceControl;

    .line 373
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 375
    move-result v15

    .line 378
    move/from16 v16, v7

    .line 379
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 381
    move-result v7

    .line 384
    invoke-virtual {v12, v14, v15, v7}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 385
    iget-object v7, v4, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    .line 388
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    move-result-object v7

    .line 393
    check-cast v7, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    .line 394
    if-nez v7, :cond_13

    .line 396
    goto :goto_6

    .line 398
    :cond_13
    iget-object v7, v7, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mBounds:Landroid/graphics/Rect;

    .line 399
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 401
    :goto_6
    const/4 v7, 0x1

    .line 404
    invoke-virtual {v4, v5, v7}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->updateVisibilityState(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V

    .line 405
    iget-object v4, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 408
    invoke-virtual {v10, v4, v8}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 410
    goto :goto_7

    .line 413
    :cond_14
    move/from16 v16, v7

    .line 414
    const/4 v7, 0x1

    .line 416
    invoke-virtual {v10, v14, v7}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 417
    const/4 v8, 0x0

    .line 420
    invoke-virtual {v4, v5, v8}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->updateVisibilityState(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V

    .line 421
    :goto_7
    if-eqz v13, :cond_15

    .line 424
    iget-object v4, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 426
    iget-object v8, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 428
    invoke-virtual {v4, v8, v7}, Landroid/window/TaskOrganizer;->setInterceptBackPressedOnTaskRoot(Landroid/window/WindowContainerToken;Z)V

    .line 430
    :cond_15
    iget-object v4, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 433
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 435
    if-eqz v4, :cond_16

    .line 437
    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 439
    move-result v4

    .line 442
    iget-object v7, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskViewBase:Lcom/android/wm/shell/taskview/TaskViewBase;

    .line 443
    invoke-interface {v7, v1, v4}, Lcom/android/wm/shell/taskview/TaskViewBase;->setResizeBgColor(Landroid/view/SurfaceControl$Transaction;I)V

    .line 445
    :cond_16
    iget-object v4, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    .line 448
    if-eqz v4, :cond_17

    .line 450
    iget-object v4, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 452
    iget v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 454
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 456
    iget-object v8, v5, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 458
    new-instance v12, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda2;

    .line 460
    invoke-direct {v12, v5, v13, v7, v4}, Lcom/android/wm/shell/taskview/TaskViewTaskController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/taskview/TaskViewTaskController;ZILandroid/content/ComponentName;)V

    .line 462
    invoke-interface {v8, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 465
    :cond_17
    add-int/lit8 v11, v11, 0x1

    .line 468
    move/from16 v7, v16

    .line 470
    goto :goto_9

    .line 472
    :cond_18
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 473
    move-result v4

    .line 476
    const/4 v5, 0x6

    .line 477
    if-ne v4, v5, :cond_1b

    .line 478
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 480
    move-result-object v4

    .line 483
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 484
    move-result-object v4

    .line 487
    if-nez v4, :cond_19

    .line 488
    if-eqz v3, :cond_1b

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    .line 492
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 497
    move-result-object v5

    .line 500
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 501
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    move-result-object v4

    .line 509
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    goto :goto_9

    .line 513
    :cond_19
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 514
    move-result-object v5

    .line 517
    iget-object v8, v4, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 518
    invoke-virtual {v1, v5, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 520
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 523
    move-result-object v5

    .line 526
    iget-object v4, v4, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 527
    invoke-virtual {v2, v5, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 529
    move-result-object v4

    .line 532
    invoke-virtual {v12}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 533
    move-result-object v5

    .line 536
    invoke-virtual {v4, v5, v15, v15}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 537
    :cond_1a
    :goto_8
    add-int/lit8 v11, v11, 0x1

    .line 540
    :cond_1b
    :goto_9
    add-int/lit8 v9, v9, 0x1

    .line 542
    const/4 v4, 0x1

    .line 544
    const/4 v5, 0x0

    .line 545
    const/4 v8, 0x0

    .line 546
    goto/16 :goto_1

    .line 547
    :cond_1c
    if-eqz v7, :cond_1d

    .line 549
    const-string v2, "Expected a TaskView launch in this transition but didn\'t get one, cleaning up the task view"

    .line 551
    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v2, v3, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mTaskView:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    .line 556
    const/4 v3, 0x1

    .line 558
    iput-boolean v3, v2, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mTaskNotFound:Z

    .line 559
    iget-object v3, v2, Lcom/android/wm/shell/taskview/TaskViewTaskController;->mPendingInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 561
    if-eqz v3, :cond_1e

    .line 563
    invoke-virtual {v2}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->cleanUpPendingTask()V

    .line 565
    goto :goto_a

    .line 568
    :cond_1d
    if-nez v10, :cond_1e

    .line 569
    if-nez v3, :cond_1e

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 573
    move-result-object v2

    .line 576
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 577
    move-result v2

    .line 580
    if-eq v11, v2, :cond_1e

    .line 581
    const/4 v2, 0x0

    .line 583
    return v2

    .line 584
    :cond_1e
    :goto_a
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 585
    move-object/from16 v1, p5

    .line 588
    const/4 v2, 0x0

    .line 590
    invoke-interface {v1, v10, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startNextTransition()V

    .line 594
    const/4 v0, 0x1

    .line 597
    return v0
    .line 598
.end method

.method public final startNextTransition()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mPending:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    .line 16
    iget-object v1, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    .line 18
    if-eqz v1, :cond_1

    .line 20
    return-void

    .line 22
    :cond_1
    iget v1, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mType:I

    .line 23
    iget-object v2, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mWct:Landroid/window/WindowContainerTransaction;

    .line 25
    iget-object v3, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 27
    invoke-virtual {v3, v1, v2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 29
    move-result-object p0

    .line 32
    iput-object p0, v0, Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;->mClaimed:Landroid/os/IBinder;

    .line 33
    return-void
    .line 35
.end method

.method public final updateVisibilityState(Lcom/android/wm/shell/taskview/TaskViewTaskController;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iput-boolean p2, p0, Lcom/android/wm/shell/taskview/TaskViewTransitions$TaskViewRequestedState;->mVisible:Z

    .line 13
    return-void
    .line 15
.end method
