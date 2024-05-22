.class public final synthetic Lcom/android/wm/shell/unfold/UnfoldTransitionHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    .line 2
    check-cast p1, Landroid/window/TransitionInfo$Change;

    .line 4
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 24
    move-result v1

    .line 27
    invoke-static {v1}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 31
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 35
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    move-result-object v2

    .line 39
    invoke-interface {p0, v2}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->isApplicableTask(Landroid/app/TaskInfo;)Z

    .line 40
    move-result v2

    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 47
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 48
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 53
    const-string/jumbo v1, "startAnimation, check taskInfo: %s, mode: %s, isApplicableTask: %s"

    .line 54
    const v2, -0x742cdece

    .line 57
    const/4 v4, 0x0

    .line 60
    invoke-static {v3, v2, v4, v1, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 64
    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 70
    move-result v0

    .line 73
    const/4 v1, 0x6

    .line 74
    if-eq v0, v1, :cond_1

    .line 75
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 77
    move-result v0

    .line 80
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 81
    move-result v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 87
    move-result-object v0

    .line 90
    invoke-interface {p0, v0}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->isApplicableTask(Landroid/app/TaskInfo;)Z

    .line 91
    move-result v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 97
    move-result-object v0

    .line 100
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 101
    move-result-object p1

    .line 104
    invoke-interface {p0, v0, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskAppeared(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;)V

    .line 105
    :cond_2
    return-void
    .line 108
.end method
