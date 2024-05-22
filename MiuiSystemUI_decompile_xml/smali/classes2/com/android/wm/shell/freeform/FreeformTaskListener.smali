.class public final Lcom/android/wm/shell/freeform/FreeformTaskListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
.implements Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;


# instance fields
.field public final mDesktopModeTaskRepository:Ljava/util/Optional;

.field public final mMiuiDesktopModeTaskRepository:Ljava/util/Optional;

.field public final mMiuiFreeformModeTaskRepository:Ljava/util/Optional;

.field public final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTasks:Landroid/util/SparseArray;

.field public final mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    .line 10
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 12
    iput-object p6, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 14
    iput-object p3, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    .line 16
    iput-object p4, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mMiuiFreeformModeTaskRepository:Ljava/util/Optional;

    .line 18
    iput-object p5, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mMiuiDesktopModeTaskRepository:Ljava/util/Optional;

    .line 20
    if-eqz p1, :cond_0

    .line 22
    new-instance p2, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda1;

    .line 24
    invoke-direct {p2, p0}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskListener;)V

    .line 26
    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 29
    :cond_0
    return-void
    .line 32
.end method


# virtual methods
.method public final attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->findTaskSurface(I)Landroid/view/SurfaceControl;

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
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 36
    move-result p0

    .line 39
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string p0, " tasks"

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
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

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
    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

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

.method public final onFocusTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
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
    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 9
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    move-result-object v0

    .line 16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    move-result-object v1

    .line 20
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    const/16 v1, 0xd

    .line 25
    const/4 v2, 0x0

    .line 27
    const v4, 0xf946556

    .line 28
    invoke-static {v3, v4, v1, v2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 40
    if-eqz v0, :cond_1

    .line 42
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;

    .line 44
    const/4 v1, 0x7

    .line 46
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 47
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    .line 50
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 52
    :cond_1
    return-void
    .line 55
.end method

.method public final onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    if-nez v1, :cond_4

    .line 10
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 16
    int-to-long v1, v1

    .line 18
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    move-result-object v1

    .line 24
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 28
    const v2, -0x9f39e55

    .line 29
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-static {v3, v2, v4, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    const/high16 v1, 0x200000

    .line 37
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 39
    invoke-static {v1, v2}, Lmiui/app/MiuiFreeFormManager;->dispatchFreeFormStackModeChanged(II)V

    .line 41
    new-instance v1, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;

    .line 44
    invoke-direct {v1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;-><init>()V

    .line 46
    iput-object p1, v1, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 49
    iput-object p2, v1, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    .line 51
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 58
    if-nez v0, :cond_1

    .line 60
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 62
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 67
    invoke-interface {v1, p1, p2, v0, v0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    .line 69
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 72
    :cond_1
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    .line 75
    move-result p2

    .line 78
    if-eqz p2, :cond_2

    .line 79
    new-instance p2, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;

    .line 81
    const/4 v0, 0x5

    .line 83
    invoke-direct {p2, p1, v0}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 84
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    .line 87
    invoke-virtual {v0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 89
    :cond_2
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 92
    move-result p2

    .line 95
    if-eqz p2, :cond_3

    .line 96
    new-instance p2, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;

    .line 98
    const/4 v0, 0x6

    .line 100
    invoke-direct {p2, p1, v0}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 101
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mMiuiDesktopModeTaskRepository:Ljava/util/Optional;

    .line 104
    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 106
    :cond_3
    return-void

    .line 109
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    const-string v0, "Task appeared more than once: #"

    .line 114
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    throw p0
    .line 131
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;

    .line 10
    iget-boolean v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 12
    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 16
    if-eq v1, v2, :cond_0

    .line 18
    if-eqz v1, :cond_0

    .line 20
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 22
    invoke-static {v1}, Lmiui/app/MiuiFreeFormManager;->removeFullScreenTasksBehindHome(I)V

    .line 24
    const/high16 v1, 0x200000

    .line 27
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 29
    invoke-static {v1, v2}, Lmiui/app/MiuiFreeFormManager;->dispatchFreeFormStackModeChanged(II)V

    .line 31
    :cond_0
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    .line 34
    if-eqz v1, :cond_1

    .line 36
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 38
    int-to-long v1, v1

    .line 40
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    move-result-object v1

    .line 46
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 50
    const/4 v2, 0x1

    .line 51
    const/4 v4, 0x0

    .line 52
    const v5, -0x10372543

    .line 53
    invoke-static {v3, v5, v2, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 59
    invoke-interface {v1, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 61
    iput-object p1, v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 64
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    .line 66
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;

    .line 72
    const/4 v1, 0x3

    .line 74
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 75
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    .line 78
    invoke-virtual {v1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 80
    goto :goto_0

    .line 83
    :cond_2
    new-instance v1, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;

    .line 84
    invoke-direct {v1, p1, v0}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda2;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/freeform/FreeformTaskListener$State;)V

    .line 86
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mMiuiFreeformModeTaskRepository:Ljava/util/Optional;

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 91
    :goto_0
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 94
    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;

    .line 100
    const/4 v1, 0x4

    .line 102
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 103
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mMiuiDesktopModeTaskRepository:Ljava/util/Optional;

    .line 106
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 108
    :cond_3
    return-void
    .line 111
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 7
    int-to-long v2, v0

    .line 9
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object v2

    .line 15
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    const v3, 0x7132b805

    .line 20
    const/4 v4, 0x0

    .line 23
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mTasks:Landroid/util/SparseArray;

    .line 27
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 29
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 31
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;

    .line 40
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 43
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mDesktopModeTaskRepository:Ljava/util/Optional;

    .line 46
    invoke-virtual {v1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;

    .line 52
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 54
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mMiuiFreeformModeTaskRepository:Ljava/util/Optional;

    .line 57
    invoke-virtual {v1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 59
    :goto_0
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 62
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;

    .line 68
    const/4 v1, 0x2

    .line 70
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/freeform/FreeformTaskListener$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 71
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mMiuiDesktopModeTaskRepository:Ljava/util/Optional;

    .line 74
    invoke-virtual {v1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 76
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskListener;->mWindowDecorationViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 79
    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 81
    return-void
    .line 84
.end method

.method public final reparentChildSurfaceToTask(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformTaskListener;->findTaskSurface(I)Landroid/view/SurfaceControl;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p3, p2, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6
    return-void
    .line 9
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "FreeformTaskListener"

    .line 2
    return-object p0
    .line 4
.end method
