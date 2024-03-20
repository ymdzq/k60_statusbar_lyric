.class public final Lcom/miui/charge/container/IChargeView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/container/IChargeView;


# direct methods
.method public constructor <init>(Lcom/miui/charge/container/IChargeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/container/IChargeView$1;->this$0:Lcom/miui/charge/container/IChargeView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/charge/container/IChargeView$1;->this$0:Lcom/miui/charge/container/IChargeView;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/miui/charge/container/IChargeView;->mStartingDismissAnim:Z

    .line 5
    return-void
    .line 7
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/miui/charge/container/IChargeView$1;->this$0:Lcom/miui/charge/container/IChargeView;

    .line 2
    iget-boolean v0, p1, Lcom/miui/charge/container/IChargeView;->mStartingDismissAnim:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/miui/charge/container/IChargeView;->stopChildAnimation()V

    .line 8
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Lcom/miui/charge/container/IChargeView;->setComponentTransparent(Z)V

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/miui/charge/container/IChargeView$1;->this$0:Lcom/miui/charge/container/IChargeView;

    .line 15
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/miui/charge/container/IChargeView;->mStartingDismissAnim:Z

    .line 18
    return-void
    .line 20
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
