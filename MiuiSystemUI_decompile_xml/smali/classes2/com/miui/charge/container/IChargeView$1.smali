.class public final Lcom/miui/charge/container/IChargeView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
