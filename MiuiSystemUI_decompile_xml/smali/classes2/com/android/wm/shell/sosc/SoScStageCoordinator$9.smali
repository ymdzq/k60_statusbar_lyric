.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field final synthetic val$t:Landroid/view/SurfaceControl$Transaction;

.field final synthetic val$wct:Landroid/window/WindowContainerTransaction;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->val$wct:Landroid/window/WindowContainerTransaction;

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fputmResetMinimizedAnimatorIsCancel(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Z)V

    .line 5
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "onAnimationCancel  mResetMinimizedAnimatorIsCancel:"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 19
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmResetMinimizedAnimatorIsCancel(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Z

    .line 21
    move-result p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
    .line 35
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "onAnimationEnd  mResetMinimizedAnimatorIsCancel:"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 13
    invoke-static {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmResetMinimizedAnimatorIsCancel(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Z

    .line 15
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 29
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmResetMinimizedAnimatorIsCancel(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Z

    .line 31
    move-result p1

    .line 34
    const/4 v0, 0x0

    .line 35
    if-nez p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 38
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmMinimizedPoint(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/graphics/Point;

    .line 40
    move-result-object p1

    .line 43
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 44
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 47
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fputmMinimizedStage(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)V

    .line 49
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 52
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 54
    invoke-static {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmRootTaskLeash(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Landroid/view/SurfaceControl;

    .line 56
    move-result-object v1

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {p1, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 61
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 64
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 66
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->val$wct:Landroid/window/WindowContainerTransaction;

    .line 69
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 71
    iget-object v1, v1, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 73
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 75
    new-instance v2, Landroid/graphics/Rect;

    .line 77
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 79
    invoke-virtual {p1, v1, v2}, Landroid/window/WindowContainerTransaction;->setMinimizedTouchRegion(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 82
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 85
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmTaskOrganizer(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 87
    move-result-object p1

    .line 90
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->val$wct:Landroid/window/WindowContainerTransaction;

    .line 91
    invoke-virtual {p1, v1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 96
    invoke-static {p1, v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fputmResetMinimizedAnimatorIsCancel(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Z)V

    .line 98
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$9;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 101
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fputmResetMinimizedAnimator(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)V

    .line 103
    return-void
    .line 106
.end method
