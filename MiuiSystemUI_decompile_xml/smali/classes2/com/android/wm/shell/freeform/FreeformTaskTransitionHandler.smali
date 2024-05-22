.class public final Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.implements Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;


# instance fields
.field public final mPendingTransitionTokens:Ljava/util/List;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    .line 10
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 12
    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 14
    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 16
    if-eqz p2, :cond_0

    .line 18
    new-instance p2, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda0;

    .line 20
    const/4 p3, 0x1

    .line 22
    invoke-direct {p2, p3, p0}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 23
    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 2
    move-result-object p4

    .line 5
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p4

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    .line 17
    if-eqz v2, :cond_8

    .line 19
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 25
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 27
    move-result v5

    .line 30
    and-int/lit8 v5, v5, 0x2

    .line 31
    if-eqz v5, :cond_1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    move-result-object v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 42
    const/4 v6, -0x1

    .line 44
    if-ne v5, v6, :cond_2

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 48
    move-result v5

    .line 51
    const/4 v6, 0x4

    .line 52
    if-eq v5, v6, :cond_7

    .line 53
    const/4 v6, 0x6

    .line 55
    if-eq v5, v6, :cond_3

    .line 56
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    .line 59
    move-result v5

    .line 62
    check-cast v4, Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 65
    move-result v4

    .line 68
    if-nez v4, :cond_4

    .line 69
    move v3, v0

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 73
    move-result-object v2

    .line 76
    const/16 v4, 0x3f0

    .line 77
    if-ne v5, v4, :cond_5

    .line 79
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 81
    move-result v4

    .line 84
    if-ne v4, v3, :cond_5

    .line 85
    move v4, v3

    .line 87
    goto :goto_1

    .line 88
    :cond_5
    move v4, v0

    .line 89
    :goto_1
    const/16 v6, 0x3f1

    .line 90
    if-ne v5, v6, :cond_6

    .line 92
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 94
    move-result v2

    .line 97
    const/4 v5, 0x5

    .line 98
    if-ne v2, v5, :cond_6

    .line 99
    goto :goto_2

    .line 101
    :cond_6
    move v3, v4

    .line 102
    :goto_2
    or-int/2addr v1, v3

    .line 103
    goto :goto_0

    .line 104
    :cond_7
    check-cast v4, Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 107
    move-result v2

    .line 110
    or-int/2addr v1, v2

    .line 111
    goto :goto_0

    .line 112
    :cond_8
    check-cast v4, Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    if-nez v1, :cond_9

    .line 118
    return v0

    .line 120
    :cond_9
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 121
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 124
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 126
    new-instance p1, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda0;

    .line 128
    invoke-direct {p1, v0, p5}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 130
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 135
    return v3
    .line 138
.end method
