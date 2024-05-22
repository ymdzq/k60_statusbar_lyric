.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field final synthetic val$minimizedTouchRegion:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$vpTw1jIouzeEpBw_6V4HfJXtJAY(Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->lambda$onAnimationEnd$0()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->val$minimizedTouchRegion:Landroid/graphics/Rect;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScSingleMode()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 10
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmMinimized(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 18
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$mregisterInputConsumer(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fputmSetMinimizedAnimatorIsCancel(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Z)V

    .line 5
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "onAnimationCancel  mSetMinimizedAnimatorIsCancel:"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 19
    invoke-static {p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSetMinimizedAnimatorIsCancel(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Z

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
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "onAnimationEnd  mSetMinimizedAnimatorIsCancel:"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 13
    invoke-static {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSetMinimizedAnimatorIsCancel(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Z

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
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 29
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmSetMinimizedAnimatorIsCancel(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Z

    .line 31
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 37
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 42
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 44
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 46
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->val$minimizedTouchRegion:Landroid/graphics/Rect;

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setMinimizedTouchRegion(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 50
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 53
    invoke-static {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmTaskOrganizer(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 55
    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 59
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 62
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fgetmMainExecutor(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 64
    move-result-object p1

    .line 67
    new-instance v0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda18;

    .line 68
    const/4 v1, 0x2

    .line 70
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda18;-><init>(ILjava/lang/Object;)V

    .line 71
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 74
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 79
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fputmSetMinimizedAnimator(Lcom/android/wm/shell/sosc/SoScStageCoordinator;)V

    .line 81
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$8;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 84
    const/4 p1, 0x0

    .line 86
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->-$$Nest$fputmSetMinimizedAnimatorIsCancel(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Z)V

    .line 87
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 90
    move-result-object p0

    .line 93
    const-string p1, "SPLITSCREEN_ACTION_MINIMIZED"

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->endBoost(Ljava/lang/String;)V

    .line 96
    return-void
    .line 99
.end method
