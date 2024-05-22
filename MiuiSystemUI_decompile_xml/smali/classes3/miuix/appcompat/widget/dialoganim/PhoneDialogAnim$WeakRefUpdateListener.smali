.class public final Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final mView:Ljava/lang/ref/WeakReference;

.field public final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mView:Ljava/lang/ref/WeakReference;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mView:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    const-string v1, "hide"

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 25
    return-void

    .line 28
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 29
    move-result-object v1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_3

    .line 34
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 36
    move-result v3

    .line 39
    invoke-virtual {v1, v3}, Landroid/view/WindowInsets;->isVisible(I)Z

    .line 40
    move-result v3

    .line 43
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 44
    move-result v4

    .line 47
    invoke-virtual {v1, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 48
    move-result-object v4

    .line 51
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 52
    move-result v5

    .line 55
    invoke-virtual {v1, v5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 56
    move-result-object v1

    .line 59
    if-eqz v3, :cond_2

    .line 60
    iget-object v3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 62
    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    .line 64
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 66
    sub-int/2addr v4, v1

    .line 68
    iput v4, v3, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 72
    iput v2, v1, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I

    .line 74
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 79
    check-cast p1, Ljava/lang/Integer;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 82
    move-result p1

    .line 85
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 86
    iget p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I

    .line 88
    sub-int/2addr p1, p0

    .line 90
    invoke-static {p1, v0, v2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(ILandroid/view/View;Z)V

    .line 91
    return-void
    .line 94
.end method
