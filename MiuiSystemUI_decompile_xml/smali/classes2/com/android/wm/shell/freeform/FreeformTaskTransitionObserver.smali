.class public final Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionObserver;


# instance fields
.field public final mMiuiFreeformModeTaskRepository:Ljava/util/Optional;

.field public final mTransitionToTaskInfo:Ljava/util/Map;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    .line 10
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 12
    iput-object p4, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 14
    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mMiuiFreeformModeTaskRepository:Ljava/util/Optional;

    .line 16
    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 18
    if-eqz p2, :cond_0

    .line 20
    new-instance p2, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver$$ExternalSyntheticLambda0;

    .line 22
    invoke-direct {p2, p0}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;)V

    .line 24
    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 27
    :cond_0
    return-void
    .line 30
.end method


# virtual methods
.method public onInit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mObservers:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final onTransitionFinished(Landroid/os/IBinder;Z)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/List;

    .line 15
    check-cast p2, Ljava/util/HashMap;

    .line 17
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 22
    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTransitionFinished(Landroid/os/IBinder;)V

    .line 24
    instance-of p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 27
    if-nez p1, :cond_0

    .line 29
    const/4 p1, 0x0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    move-result p2

    .line 35
    if-ge p1, p2, :cond_0

    .line 36
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object p2

    .line 41
    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    invoke-interface {p0, p2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 44
    add-int/lit8 p1, p1, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_0
    return-void
    .line 50
.end method

.method public final onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    .line 7
    move-object v0, p0

    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/List;

    .line 16
    if-nez v0, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    move-object v1, p0

    .line 21
    check-cast v1, Ljava/util/HashMap;

    .line 22
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-object p1, p0

    .line 27
    check-cast p1, Ljava/util/HashMap;

    .line 28
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 33
    check-cast p1, Ljava/util/List;

    .line 34
    if-eqz p1, :cond_1

    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    check-cast p0, Ljava/util/HashMap;

    .line 42
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_0
    return-void
    .line 47
.end method

.method public final onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    const/4 v2, 0x1

    .line 12
    invoke-static {p2, v2}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 13
    move-result v3

    .line 16
    :goto_0
    if-ltz v3, :cond_a

    .line 17
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 19
    move-result-object v4

    .line 22
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 26
    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 27
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 29
    move-result v5

    .line 32
    const/4 v6, 0x2

    .line 33
    and-int/2addr v5, v6

    .line 34
    if-eqz v5, :cond_0

    .line 35
    goto/16 :goto_2

    .line 37
    :cond_0
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 39
    move-result-object v5

    .line 42
    if-eqz v5, :cond_9

    .line 43
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 45
    const/4 v7, -0x1

    .line 47
    if-ne v5, v7, :cond_1

    .line 48
    goto/16 :goto_2

    .line 50
    :cond_1
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 52
    move-result-object v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 58
    move-result-object v5

    .line 61
    invoke-virtual {p2, v5}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 62
    move-result-object v5

    .line 65
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 66
    move-result-object v5

    .line 69
    if-eqz v5, :cond_2

    .line 70
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 72
    move-result-object v5

    .line 75
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 79
    move-result-object v5

    .line 82
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result v5

    .line 86
    if-eqz v5, :cond_3

    .line 87
    goto/16 :goto_2

    .line 89
    :cond_3
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 91
    move-result v5

    .line 94
    const/4 v7, 0x5

    .line 95
    iget-object v8, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 96
    if-eq v5, v2, :cond_7

    .line 98
    if-eq v5, v6, :cond_6

    .line 100
    const/4 v6, 0x3

    .line 102
    if-eq v5, v6, :cond_5

    .line 103
    const/4 v6, 0x6

    .line 105
    if-eq v5, v6, :cond_4

    .line 106
    goto :goto_1

    .line 108
    :cond_4
    const/4 v5, 0x0

    .line 109
    invoke-virtual {p0, v4, v5}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->updateMiuiFreeModeTaskRepository(Landroid/window/TransitionInfo$Change;Z)V

    .line 110
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 113
    move-result-object v5

    .line 116
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 117
    move-result v5

    .line 120
    if-ne v5, v7, :cond_8

    .line 121
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 123
    move-result-object v5

    .line 126
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 127
    move-result-object v6

    .line 130
    invoke-interface {v8, v5, v6, p3, p4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 131
    goto :goto_1

    .line 134
    :cond_5
    invoke-virtual {p0, v4, v2}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->updateMiuiFreeModeTaskRepository(Landroid/window/TransitionInfo$Change;Z)V

    .line 135
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 138
    move-result-object v5

    .line 141
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 142
    move-result v5

    .line 145
    if-ne v5, v7, :cond_8

    .line 146
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 148
    move-result-object v5

    .line 151
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 152
    move-result-object v6

    .line 155
    invoke-interface {v8, v5, v6, p3, p4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 156
    goto :goto_1

    .line 159
    :cond_6
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 160
    move-result-object v5

    .line 163
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    instance-of v5, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 167
    if-nez v5, :cond_8

    .line 169
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 171
    move-result-object v5

    .line 174
    invoke-interface {v8, v5, p3, p4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskClosing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 175
    goto :goto_1

    .line 178
    :cond_7
    invoke-virtual {p0, v4, v2}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->updateMiuiFreeModeTaskRepository(Landroid/window/TransitionInfo$Change;Z)V

    .line 179
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 182
    move-result-object v5

    .line 185
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 186
    move-result v5

    .line 189
    if-ne v5, v7, :cond_8

    .line 190
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 192
    move-result-object v5

    .line 195
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 196
    move-result-object v6

    .line 199
    invoke-interface {v8, v5, v6, p3, p4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    .line 200
    :cond_8
    :goto_1
    invoke-interface {v8, p1, p2, v4}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)V

    .line 203
    :cond_9
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 206
    goto/16 :goto_0

    .line 208
    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mTransitionToTaskInfo:Ljava/util/Map;

    .line 210
    check-cast p0, Ljava/util/HashMap;

    .line 212
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
    .line 217
.end method

.method public final onTransitionStarting(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateMiuiFreeModeTaskRepository(Landroid/window/TransitionInfo$Change;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 17
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 19
    move-result v0

    .line 22
    const/4 v1, 0x5

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver$$ExternalSyntheticLambda1;

    .line 26
    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver$$ExternalSyntheticLambda1;-><init>(Landroid/window/TransitionInfo$Change;Z)V

    .line 28
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver;->mMiuiFreeformModeTaskRepository:Ljava/util/Optional;

    .line 31
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 33
    :cond_1
    return-void
    .line 36
.end method
