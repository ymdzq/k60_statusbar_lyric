.class public final Landroidx/recyclerview/widget/FastScroller$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/FastScroller;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/FastScroller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller$1;->this$0:Landroidx/recyclerview/widget/FastScroller;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller$1;->this$0:Landroidx/recyclerview/widget/FastScroller;

    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 4
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 8
    if-eq v0, v2, :cond_0

    .line 10
    if-eq v0, v1, :cond_1

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 15
    :cond_1
    const/4 v0, 0x3

    .line 18
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 19
    new-array p0, v1, [F

    .line 21
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Float;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 29
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    aput v0, p0, v1

    .line 34
    const/4 v0, 0x0

    .line 36
    aput v0, p0, v2

    .line 37
    invoke-virtual {v3, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 39
    const/16 p0, 0x1f4

    .line 42
    int-to-long v0, p0

    .line 44
    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 45
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 48
    :goto_0
    return-void
    .line 51
.end method
