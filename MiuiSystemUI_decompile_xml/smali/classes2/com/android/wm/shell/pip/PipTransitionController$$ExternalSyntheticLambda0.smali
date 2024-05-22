.class public final synthetic Lcom/android/wm/shell/pip/PipTransitionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/pip/PipTransitionController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTransitionController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/PipTransitionController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    check-cast p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 11
    iput-object v1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mContentOverlay:Lcom/android/wm/shell/pip/PipContentOverlay;

    .line 13
    return-void

    .line 15
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 16
    check-cast p0, Lcom/android/wm/shell/pip/PipTransitionController;

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 20
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 22
    return-void

    .line 25
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 26
    check-cast p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 28
    iput-object v1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mContentOverlay:Lcom/android/wm/shell/pip/PipContentOverlay;

    .line 30
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 34
.end method
