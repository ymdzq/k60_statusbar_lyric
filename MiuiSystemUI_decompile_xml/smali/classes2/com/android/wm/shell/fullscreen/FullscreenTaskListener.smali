.class public final Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# instance fields
.field public mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

.field public final mMiuiFullScreenTaskRepository:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;

.field public final mRecentTasksOptional:Ljava/util/Optional;

.field public final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTasks:Landroid/util/SparseArray;

.field public final mWindowDecorRectController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

.field public final mWindowDecorViewModelOptional:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    .line 10
    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 12
    iput-object p3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 14
    iput-object p4, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mRecentTasksOptional:Ljava/util/Optional;

    .line 16
    iput-object p5, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    .line 18
    iput-object p6, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorRectController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    .line 20
    iput-object p7, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiFullScreenTaskRepository:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;

    .line 22
    if-eqz p1, :cond_0

    .line 24
    new-instance p2, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;

    .line 26
    invoke-direct {p2, p0}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V

    .line 28
    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 31
    :cond_0
    return-void
    .line 34
.end method


# virtual methods
.method public final attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->findTaskSurface(I)Landroid/view/SurfaceControl;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 6
    return-void
    .line 9
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

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
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 36
    move-result p0

    .line 39
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string p0, " Tasks"

    .line 43
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    return-void
    .line 55
.end method

.method public final findTaskSurface(I)Landroid/view/SurfaceControl;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    .line 16
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    const-string v0, "There is no surface for taskId="

    .line 21
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
    .line 30
.end method

.method public final ifUpdateFocusedTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 5

    .line 1
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 15
    if-eqz p0, :cond_1

    .line 17
    iget v3, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 19
    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 21
    if-ne v3, v4, :cond_1

    .line 23
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 25
    move-result p0

    .line 28
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 29
    move-result p1

    .line 32
    if-eq p0, p1, :cond_2

    .line 33
    :cond_1
    if-eqz v0, :cond_2

    .line 35
    goto :goto_1

    .line 37
    :cond_2
    move v1, v2

    .line 38
    :goto_1
    return v1
    .line 39
.end method

.method public final onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    if-nez v1, :cond_c

    .line 10
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    .line 12
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 18
    int-to-long v4, v1

    .line 20
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 21
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    move-result-object v4

    .line 26
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 30
    const v5, 0x6a88320

    .line 31
    invoke-static {v1, v5, v2, v3, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 37
    new-instance v4, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    .line 39
    invoke-direct {v4}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;-><init>()V

    .line 41
    iput-object p2, v4, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    .line 44
    iput-object p1, v4, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 46
    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 48
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiFullScreenTaskRepository:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;

    .line 53
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->addOrUpdateFullScreenTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 55
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorRectController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    .line 58
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->dispatchFullScreenWindowDecorRect(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 62
    :cond_1
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 65
    iget-object v4, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    .line 67
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    .line 71
    move-result v5

    .line 74
    if-eqz v5, :cond_2

    .line 75
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    .line 77
    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 79
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 82
    move-result-object v6

    .line 85
    check-cast v6, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 86
    invoke-interface {v6, p1, p2, v5, v5}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    .line 88
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 91
    :cond_2
    iget-object v5, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 94
    const/4 v6, 0x0

    .line 96
    if-eqz v5, :cond_8

    .line 97
    iget v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 99
    invoke-virtual {v5, v7}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->addOrMoveFullTaskToTop(I)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->ifUpdateFocusedTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 104
    move-result v5

    .line 107
    if-eqz v5, :cond_3

    .line 108
    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 110
    :cond_3
    iget-object v5, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 112
    iget-object v5, v5, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiDesktopTasksController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;

    .line 114
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    iget-object v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 119
    if-eqz v7, :cond_4

    .line 121
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 123
    move-result-object v3

    .line 126
    :cond_4
    if-eqz v3, :cond_7

    .line 127
    iget-object v7, v5, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->milkLinkPackageName:Ljava/lang/String;

    .line 129
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v8

    .line 134
    if-nez v8, :cond_6

    .line 135
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 137
    move-result v3

    .line 140
    if-eqz v3, :cond_5

    .line 141
    goto :goto_0

    .line 143
    :cond_5
    move v3, v6

    .line 144
    goto :goto_1

    .line 145
    :cond_6
    :goto_0
    move v3, v2

    .line 146
    :goto_1
    if-eqz v3, :cond_7

    .line 147
    iget-object v3, v5, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiDesktopModeTaskRepository:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;

    .line 149
    iget-object v7, v3, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;->fullscreenTasksInZOrder:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 153
    move-result v7

    .line 156
    if-le v7, v2, :cond_7

    .line 157
    iget-object v3, v3, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;->fullscreenTasksInZOrder:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    move-result-object v2

    .line 164
    check-cast v2, Ljava/lang/Integer;

    .line 165
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 167
    move-result v2

    .line 170
    invoke-virtual {v5, v2}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->trackFullscreenQuitEvent(I)V

    .line 171
    :cond_7
    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 174
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->notifyVisibility(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 176
    :cond_8
    if-eqz v0, :cond_9

    .line 179
    return-void

    .line 181
    :cond_9
    new-instance v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda3;

    .line 182
    invoke-direct {v0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda3;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 184
    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mRecentTasksOptional:Ljava/util/Optional;

    .line 187
    invoke-virtual {v2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 189
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    .line 192
    move-result v0

    .line 195
    if-eqz v0, :cond_a

    .line 196
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 198
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 200
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 203
    move-result-object v2

    .line 206
    check-cast v2, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 207
    invoke-interface {v2, p1, p2, v0, v0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    .line 209
    move-result v6

    .line 212
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 213
    :cond_a
    if-nez v6, :cond_b

    .line 216
    new-instance v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda0;

    .line 218
    invoke-direct {v0, p2, v1, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl;Landroid/graphics/Point;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 220
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 225
    :cond_b
    return-void

    .line 228
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    .line 231
    const-string v0, "Task appeared more than once: #"

    .line 233
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 238
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object p1

    .line 246
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 247
    throw p0
    .line 250
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    .line 10
    iget-object v1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 14
    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 16
    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiFullScreenTaskRepository:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;

    .line 18
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->addOrUpdateFullScreenTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 20
    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    .line 23
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    .line 25
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 35
    invoke-interface {v3, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 37
    :cond_0
    iput-object p1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorRectController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    .line 42
    const/4 v4, 0x1

    .line 44
    if-eqz v3, :cond_3

    .line 45
    iget-boolean v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 47
    if-eqz v5, :cond_1

    .line 49
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->dispatchFullScreenWindowDecorRect(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 55
    move-result-object v5

    .line 58
    const/4 v6, 0x5

    .line 59
    invoke-virtual {v5, v6}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    .line 60
    move-result-object v5

    .line 63
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v5

    .line 67
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v6

    .line 71
    if-eqz v6, :cond_3

    .line 72
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v6

    .line 77
    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 78
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 80
    move-result v7

    .line 83
    if-eqz v7, :cond_2

    .line 84
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 86
    move-result v7

    .line 89
    if-ne v7, v4, :cond_2

    .line 90
    invoke-virtual {v3, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->dispatchFullScreenWindowDecorRect(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 92
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 95
    if-eqz v3, :cond_7

    .line 97
    iget-object v3, v3, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiDesktopTasksController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;

    .line 99
    iget-object v3, v3, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mMiuiDesktopModeTaskRepository:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;

    .line 101
    iget-object v3, v3, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;->fullscreenTasksInZOrder:Ljava/util/ArrayList;

    .line 103
    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v5

    .line 110
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 111
    move-result v3

    .line 114
    if-nez v3, :cond_4

    .line 115
    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 117
    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 119
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->addOrMoveFullTaskToTop(I)V

    .line 121
    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 125
    move-result v3

    .line 128
    if-eq v3, v4, :cond_5

    .line 129
    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 131
    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 133
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->removeFullTask(I)V

    .line 135
    goto :goto_1

    .line 138
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->ifUpdateFocusedTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 139
    move-result v3

    .line 142
    if-eqz v3, :cond_6

    .line 143
    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 145
    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 147
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->addOrMoveFullTaskToTop(I)V

    .line 149
    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 152
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 154
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->notifyVisibility(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 156
    :cond_7
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 159
    move-result-object v3

    .line 162
    invoke-virtual {v3, p1}, Lcom/android/wm/shell/sosc/SoScUtils;->updateRecentsOnTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 163
    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 166
    if-eqz v3, :cond_8

    .line 168
    return-void

    .line 170
    :cond_8
    new-instance v3, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda3;

    .line 171
    invoke-direct {v3, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda3;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 173
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mRecentTasksOptional:Ljava/util/Optional;

    .line 176
    invoke-virtual {p1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 178
    iget-object p1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 181
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 183
    invoke-virtual {v2, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v2

    .line 188
    xor-int/2addr v2, v4

    .line 189
    if-nez v1, :cond_9

    .line 190
    iget-object v1, v0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 192
    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 194
    if-eqz v1, :cond_9

    .line 196
    goto :goto_2

    .line 198
    :cond_9
    const/4 v4, 0x0

    .line 199
    :goto_2
    if-nez v4, :cond_a

    .line 200
    if-eqz v2, :cond_b

    .line 202
    :cond_a
    new-instance v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda1;

    .line 204
    invoke-direct {v1, v0, v4, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;ZLandroid/graphics/Point;)V

    .line 206
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 211
    :cond_b
    return-void
    .line 214
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 6
    int-to-long v0, v0

    .line 8
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    move-result-object v0

    .line 14
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    const v4, -0x7e312686

    .line 21
    invoke-static {v2, v4, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    .line 27
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiFullScreenTaskRepository:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;

    .line 34
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;->removeFullScreenTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorRectController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    .line 39
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->getWindowDecorViewModel()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getmMiuiFreeformModeTaskRepository()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 49
    move-result-object v0

    .line 52
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->removeFullScreenApp(I)V

    .line 55
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 58
    if-eqz v0, :cond_2

    .line 60
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 62
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->removeFullTask(I)V

    .line 64
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 67
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 69
    iget-object v0, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->mMiuiDesktopTasksController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;

    .line 71
    iget-object v0, v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopTasksController;->mTmpFullTaskVisibilityArray:Landroid/util/SparseArray;

    .line 73
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v2

    .line 78
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 79
    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mMiuiDesktopModeController:Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;

    .line 86
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeController;->notifyVisibility(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 88
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    .line 91
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    .line 93
    move-result v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 99
    move-result-object p0

    .line 102
    check-cast p0, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 103
    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 105
    :cond_3
    return-void
    .line 108
.end method

.method public final reparentChildSurfaceToTask(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->findTaskSurface(I)Landroid/view/SurfaceControl;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p3, p2, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6
    return-void
    .line 9
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "FullscreenTaskListener:"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    const/4 v0, -0x2

    .line 9
    invoke-static {v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->taskListenerTypeToString(I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    return-object p0
    .line 21
.end method
