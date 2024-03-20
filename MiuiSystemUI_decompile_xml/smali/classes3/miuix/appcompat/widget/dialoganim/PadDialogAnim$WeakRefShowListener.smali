.class public final Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mShowDismiss:Ljava/lang/ref/WeakReference;

.field public final mView:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Lmiuix/appcompat/internal/widget/DialogParentPanel2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mShowDismiss:Ljava/lang/ref/WeakReference;

    .line 10
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 10
    check-cast p1, Landroid/view/View;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    const-string v0, "show"

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mShowDismiss:Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 26
    if-eqz p0, :cond_1

    .line 28
    invoke-interface {p0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    const-string p0, "PhoneDialogAnim"

    .line 34
    const-string p1, "weak show onCancel mOnDismiss get null"

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    return-void
    .line 41
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mShowDismiss:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-interface {p0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    const-string p0, "PhoneDialogAnim"

    .line 19
    const-string p1, "weak show onComplete mOnDismiss get null"

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_0
    return-void
    .line 26
.end method
