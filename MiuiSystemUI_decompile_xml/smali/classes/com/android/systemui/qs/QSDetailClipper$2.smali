.class public final Lcom/android/systemui/qs/QSDetailClipper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/QSDetailClipper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSDetailClipper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/QSDetailClipper$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper$2;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/qs/QSDetailClipper$2;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailClipper$2;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    .line 9
    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    .line 11
    return-void

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper$2;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    .line 14
    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    .line 16
    const/16 v1, 0x8

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper$2;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    .line 23
    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 25
    instance-of v1, p1, Landroid/graphics/drawable/TransitionDrawable;

    .line 27
    if-eqz v1, :cond_0

    .line 29
    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    .line 31
    invoke-virtual {p1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailClipper$2;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    .line 36
    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    .line 38
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 42
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSDetailClipper$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailClipper$2;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    .line 13
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 20
.end method
