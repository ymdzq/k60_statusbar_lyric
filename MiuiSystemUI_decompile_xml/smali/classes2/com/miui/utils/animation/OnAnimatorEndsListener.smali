.class public final Lcom/miui/utils/animation/OnAnimatorEndsListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final acceptCancel:Z

.field public final callback:Lkotlin/jvm/functions/Function1;

.field public mCanceled:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/miui/utils/animation/OnAnimatorEndsListener;->acceptCancel:Z

    .line 6
    iput-object p1, p0, Lcom/miui/utils/animation/OnAnimatorEndsListener;->callback:Lkotlin/jvm/functions/Function1;

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/miui/utils/animation/OnAnimatorEndsListener;->mCanceled:Z

    .line 6
    return-void
    .line 8
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-boolean v0, p0, Lcom/miui/utils/animation/OnAnimatorEndsListener;->mCanceled:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-boolean v0, p0, Lcom/miui/utils/animation/OnAnimatorEndsListener;->acceptCancel:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/miui/utils/animation/OnAnimatorEndsListener;->callback:Lkotlin/jvm/functions/Function1;

    .line 13
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    return-void
    .line 18
.end method
