.class Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

.field final synthetic val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field final synthetic val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;


# direct methods
.method public static synthetic $r8$lambda$RZaQ2KYmDxu8iaWqbIdDzUnUr0s(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->lambda$onComplete$0(Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 6
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 8
    return-void
    .line 11
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
    .locals 3

    .line 1
    const-string v0, " startShowFreeformTransition onCancel: toTag: "

    .line 2
    const-string v1, " miuiFreeformModeTaskInfo: "

    .line 4
    invoke-static {v0, p1, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 10
    const-string v2, "MiuiFreeformAnimation"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->onComplete(Ljava/lang/Object;)V

    .line 17
    return-void
    .line 20
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, " startShowFreeformTransition onComplete: toTag: "

    .line 2
    const-string v1, " miuiFreeformModeTaskInfo: "

    .line 4
    invoke-static {v0, p1, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 10
    const-string v1, "MiuiFreeformAnimation"

    .line 12
    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 17
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmTransitions(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/transition/Transitions;

    .line 19
    move-result-object p1

    .line 22
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$finishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 25
    new-instance v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda3;

    .line 27
    const/16 v2, 0x9

    .line 29
    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 31
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 34
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 36
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 39
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 41
    move-result p1

    .line 44
    const/16 v0, 0x11

    .line 45
    if-ne p1, v0, :cond_0

    .line 47
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 49
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 52
    :cond_0
    return-void
    .line 55
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 8
    move-result p1

    .line 11
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 12
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 18
    move-result p2

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 22
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 28
    move-result v0

    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 32
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 38
    move-result v1

    .line 41
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 42
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 44
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getRadius()F

    .line 48
    move-result v2

    .line 51
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 52
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 54
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeAlpha()F

    .line 58
    move-result v3

    .line 61
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    .line 62
    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 64
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 67
    invoke-static {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmMiuiFreeformModeSurfaceTransactionHelper(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 69
    move-result-object v5

    .line 72
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 73
    invoke-virtual {v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 75
    move-result-object v6

    .line 78
    iget-object v6, v6, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 79
    invoke-virtual {v5, v4, v6, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 81
    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 85
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 87
    move-result-object p2

    .line 90
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 91
    invoke-virtual {p1, v4, p2, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 93
    move-result-object p1

    .line 96
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 97
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 99
    move-result-object p2

    .line 102
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 103
    invoke-virtual {p1, v4, p2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 105
    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 109
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 111
    move-result-object p2

    .line 114
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 115
    invoke-virtual {p1, v4, p2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 117
    move-result-object p1

    .line 120
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$28;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 121
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 123
    move-result-object p0

    .line 126
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 127
    invoke-virtual {p1, v4, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 129
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 132
    return-void
    .line 135
.end method
