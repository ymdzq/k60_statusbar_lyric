.class public final Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final mOnDismiss:Ljava/lang/ref/WeakReference;

.field public final mView:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;Lmiuix/appcompat/internal/widget/DialogParentPanel2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    .line 10
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;

    .line 22
    if-eqz p0, :cond_1

    .line 24
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;->end()V

    .line 26
    goto :goto_0

    .line 29
    :cond_1
    const-string p0, "PhoneDialogAnim"

    .line 30
    const-string p1, "weak dismiss onCancel mOnDismiss get null"

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    return-void
    .line 37
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;

    .line 22
    if-eqz p0, :cond_1

    .line 24
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;->end()V

    .line 26
    goto :goto_0

    .line 29
    :cond_1
    const-string p0, "PhoneDialogAnim"

    .line 30
    const-string p1, "weak dismiss onComplete mOnDismiss get null"

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    return-void
    .line 37
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
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/View;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    const-string p1, "hide"

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
