.class public final synthetic Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/window/TransitionInfo$Change;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/window/TransitionInfo$Change;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver$$ExternalSyntheticLambda1;->f$0:Landroid/window/TransitionInfo$Change;

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver$$ExternalSyntheticLambda1;->f$0:Landroid/window/TransitionInfo$Change;

    .line 2
    iget-boolean p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionObserver$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 6
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    move-result-object v1

    .line 11
    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    move-result-object v1

    .line 19
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 20
    const-string/jumbo v2, "updateMiuiFreeModeTaskRepository"

    .line 22
    invoke-virtual {p1, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->addOrMoveFreeformTaskToTop(ILjava/lang/String;)V

    .line 25
    :cond_0
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    move-result-object v1

    .line 31
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 32
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 34
    move-result-object v2

    .line 37
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    move-result-object v0

    .line 41
    invoke-virtual {p1, v1, v2, v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->putOrUpdateMiuiFreeformTaskInfo(ILandroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 42
    return-void
    .line 45
.end method
