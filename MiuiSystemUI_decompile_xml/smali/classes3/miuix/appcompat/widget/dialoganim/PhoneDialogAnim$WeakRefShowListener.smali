.class public final Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mEndTranslateY:I

.field public mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

.field public final mOnShow:Ljava/lang/ref/WeakReference;

.field public final mView:Ljava/lang/ref/WeakReference;

.field public final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    .line 12
    iput-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    .line 14
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 16
    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 21
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mEndTranslateY:I

    .line 24
    return-void
    .line 26
.end method


# virtual methods
.method public final done()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    .line 16
    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 20
    iput-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    .line 23
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    .line 25
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    check-cast p0, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 31
    if-eqz p0, :cond_1

    .line 33
    invoke-interface {p0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    .line 35
    :cond_1
    sget-object p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    .line 38
    if-eqz p0, :cond_2

    .line 40
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 42
    sput-object v1, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->sValueAnimatorWeakRef:Ljava/lang/ref/WeakReference;

    .line 45
    :cond_2
    return-void
    .line 47
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->done()V

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/View;

    .line 14
    if-eqz p1, :cond_0

    .line 16
    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mEndTranslateY:I

    .line 18
    const/4 v1, 0x1

    .line 20
    invoke-static {v0, p1, v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(ILandroid/view/View;Z)V

    .line 21
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    .line 24
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 26
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 29
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 31
    return-void
    .line 34
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    invoke-virtual {p0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->done()V

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/View;

    .line 14
    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 18
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 24
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    .line 28
    move-result v1

    .line 31
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 32
    move-result v2

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 36
    move-result-object v2

    .line 39
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 40
    move-result v3

    .line 43
    invoke-virtual {v0, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 44
    move-result-object v0

    .line 47
    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 50
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 52
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 54
    sub-int/2addr v2, v0

    .line 56
    iput v2, v1, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I

    .line 57
    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 60
    const/4 v1, 0x0

    .line 62
    iput v1, v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I

    .line 63
    :goto_0
    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mEndTranslateY:I

    .line 65
    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 67
    iget v1, v1, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I

    .line 69
    sub-int/2addr v0, v1

    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-static {v0, p1, v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(ILandroid/view/View;Z)V

    .line 73
    :cond_1
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    .line 76
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 78
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 81
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 83
    return-void
    .line 86
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    const-string p2, "show"

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    .line 17
    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 21
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    .line 24
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 29
    check-cast p0, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 30
    if-eqz p0, :cond_1

    .line 32
    invoke-interface {p0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    .line 34
    :cond_1
    return-void
    .line 37
.end method
