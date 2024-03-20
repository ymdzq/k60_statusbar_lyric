.class public final Landroidx/transition/FragmentTransitionSupport$5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# instance fields
.field public final synthetic val$transitionCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController$$ExternalSyntheticLambda3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/FragmentTransitionSupport$5;->val$transitionCompleteRunnable:Ljava/lang/Runnable;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTransitionCancel()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/transition/FragmentTransitionSupport$5;->val$transitionCompleteRunnable:Ljava/lang/Runnable;

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    return-void
    .line 7
.end method

.method public final onTransitionPause()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTransitionResume()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
