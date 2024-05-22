.class public final synthetic Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/SoScMixedHandler;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;

.field public final synthetic f$2:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$3:Landroid/window/TransitionInfo;

.field public final synthetic f$4:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/SoScMixedHandler;Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/SoScMixedHandler;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda1;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda1;->f$3:Landroid/window/TransitionInfo;

    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda1;->f$4:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/SoScMixedHandler;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;

    .line 8
    iput v1, v2, Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 10
    iget-object v1, v0, Lcom/android/wm/shell/transition/SoScMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    if-eqz p1, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 20
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 22
    :goto_0
    iget v1, v2, Lcom/android/wm/shell/transition/SoScMixedHandler$MixedTransition;->mAnimType:I

    .line 25
    const/4 v2, 0x1

    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    iget-object v1, v0, Lcom/android/wm/shell/transition/SoScMixedHandler;->mSplitHandler:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 30
    iget-object v2, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda1;->f$2:Landroid/view/SurfaceControl$Transaction;

    .line 32
    iget-object v3, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda1;->f$3:Landroid/window/TransitionInfo;

    .line 34
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onRecentsInSplitAnimationFinish(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)V

    .line 36
    goto :goto_1

    .line 39
    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/transition/SoScMixedHandler;->mSplitHandler:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 40
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onRecentsPairToPairAnimationFinish(Landroid/window/WindowContainerTransaction;)V

    .line 42
    :goto_1
    iget-object v0, v0, Lcom/android/wm/shell/transition/SoScMixedHandler;->mSplitHandler:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 45
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->onTransitionAnimationComplete()V

    .line 47
    iget-object p0, p0, Lcom/android/wm/shell/transition/SoScMixedHandler$$ExternalSyntheticLambda1;->f$4:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 50
    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 52
    return-void
    .line 55
.end method
