.class Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

.field final synthetic val$change:Landroid/window/TransitionInfo$Change;

.field final synthetic val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

.field final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field final synthetic val$isMini:Z

.field final synthetic val$leash:Landroid/view/SurfaceControl;

.field final synthetic val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;


# direct methods
.method public static synthetic $r8$lambda$GL4RUvm9YucbNLQdKbBIcmzf9cE(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->lambda$onCancel$1(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$htECzV6yQkmXZlohUmuRu0F6XuE(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->lambda$onComplete$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/window/TransitionInfo$Change;ZLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$change:Landroid/window/TransitionInfo$Change;

    .line 6
    iput-boolean p4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$isMini:Z

    .line 8
    iput-object p5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 10
    iput-object p6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$leash:Landroid/view/SurfaceControl;

    .line 12
    iput-object p7, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 14
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 16
    return-void
    .line 19
.end method

.method private static synthetic lambda$onCancel$1(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 3
    return-void
    .line 6
.end method

.method private static synthetic lambda$onComplete$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, " startCloseTransition onCancel: toTag: "

    .line 2
    const-string v1, " miuiFreeformModeTaskInfo: "

    .line 4
    invoke-static {v0, p1, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 10
    const-string v1, "MiuiFreeformAnimation"

    .line 12
    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 17
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmTransitions(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/transition/Transitions;

    .line 19
    move-result-object p1

    .line 22
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 25
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda3;

    .line 27
    const/4 v1, 0x4

    .line 29
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 30
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 33
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 35
    return-void
    .line 38
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, " startCloseTransition onComplete: toTag: "

    .line 2
    const-string v1, " miuiFreeformModeTaskInfo: "

    .line 4
    invoke-static {v0, p1, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    const-string v0, "MiuiFreeformAnimation"

    .line 19
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 24
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 30
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 32
    move-result-object p1

    .line 35
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 38
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 40
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmMiuiFreeformModeAvoidAlgorithm(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 42
    move-result-object v0

    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->preAutoLayout(IZ)Z

    .line 47
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 50
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isFreeformEludeAnimation()Z

    .line 52
    move-result p1

    .line 55
    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 58
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmMiuiFreeformModeAvoidAlgorithm(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;

    .line 60
    move-result-object p1

    .line 63
    const/4 v0, -0x1

    .line 64
    invoke-virtual {p1, v0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;->doAutoLayoutUnChecked(II)V

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 68
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setFreeformEludeAnimation(Z)V

    .line 71
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 74
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmTransitions(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/transition/Transitions;

    .line 76
    move-result-object p1

    .line 79
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 80
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 82
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda3;

    .line 84
    const/4 v1, 0x3

    .line 86
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 87
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 90
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
    .line 95
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 10
    move-result v1

    .line 13
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 14
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 20
    move-result v2

    .line 23
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 24
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 26
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeAlpha()F

    .line 30
    move-result v3

    .line 33
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 34
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 36
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 40
    move-result v4

    .line 43
    iget-object v5, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 44
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 46
    move-result-object v5

    .line 49
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 50
    move-result v5

    .line 53
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 54
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 56
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getShadowAlpha()F

    .line 60
    move-result v10

    .line 63
    new-instance v6, Landroid/view/SurfaceControl$Transaction;

    .line 64
    invoke-direct {v6}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 66
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 69
    invoke-static {v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmMiuiFreeformModeSurfaceTransactionHelper(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 71
    move-result-object v7

    .line 74
    iget-object v8, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$change:Landroid/window/TransitionInfo$Change;

    .line 75
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 77
    move-result-object v8

    .line 80
    invoke-virtual {v7, v6, v8, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 81
    move-result-object v1

    .line 84
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 85
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 87
    move-result-object v2

    .line 90
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 91
    invoke-virtual {v1, v6, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 93
    move-result-object v7

    .line 96
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 97
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 99
    move-result-object v1

    .line 102
    iget-object v9, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 103
    iget-boolean v11, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$isMini:Z

    .line 105
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 107
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Landroid/content/Context;

    .line 109
    move-result-object v12

    .line 112
    move-object v8, v6

    .line 113
    invoke-virtual/range {v7 .. v12}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setShadowAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FZLandroid/content/Context;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 114
    move-result-object v1

    .line 117
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 118
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 120
    move-result-object v2

    .line 123
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 124
    invoke-virtual {v1, v6, v2, v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 126
    move-result-object v1

    .line 129
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 130
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 132
    move-result-object v2

    .line 135
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 136
    invoke-virtual {v1, v6, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 138
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 141
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 143
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$mgetStrokeOffest(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;)F

    .line 145
    move-result v1

    .line 148
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 149
    invoke-static {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmMiuiFreeformModeSurfaceTransactionHelper(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 151
    move-result-object v11

    .line 154
    iget-object v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$leash:Landroid/view/SurfaceControl;

    .line 155
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 157
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCornerX()F

    .line 159
    move-result v2

    .line 162
    add-float v14, v2, v1

    .line 163
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 165
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCAlpha()F

    .line 167
    move-result v2

    .line 170
    mul-float v15, v2, v3

    .line 171
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 173
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCThickness()F

    .line 175
    move-result v16

    .line 178
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 179
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCRadius()F

    .line 181
    move-result v17

    .line 184
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 185
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getlCDegreeRange()F

    .line 187
    move-result v18

    .line 190
    move-object v12, v6

    .line 191
    invoke-virtual/range {v11 .. v18}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setLeftBottomCornerTip(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFFFF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 192
    move-result-object v11

    .line 195
    iget-object v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$leash:Landroid/view/SurfaceControl;

    .line 196
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 198
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getrCornerX()F

    .line 200
    move-result v2

    .line 203
    add-float v14, v2, v1

    .line 204
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 206
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getrCAlpha()F

    .line 208
    move-result v1

    .line 211
    mul-float v15, v1, v3

    .line 212
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 214
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getrCThickness()F

    .line 216
    move-result v16

    .line 219
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 220
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getrCRadius()F

    .line 222
    move-result v17

    .line 225
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 226
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getrCDegreeRange()F

    .line 228
    move-result v18

    .line 231
    invoke-virtual/range {v11 .. v18}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setRightBottomCornerTip(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFFFF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 232
    move-result-object v11

    .line 235
    iget-object v13, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$leash:Landroid/view/SurfaceControl;

    .line 236
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 238
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeAlpha()F

    .line 240
    move-result v1

    .line 243
    mul-float v14, v1, v3

    .line 244
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 246
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestStrokeColors()[F

    .line 248
    move-result-object v15

    .line 251
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$24;->val$fc:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 252
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeStrokeThickness()F

    .line 254
    move-result v16

    .line 257
    invoke-virtual/range {v11 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setStrokeThickness(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F[FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 258
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 261
    return-void
    .line 264
.end method
