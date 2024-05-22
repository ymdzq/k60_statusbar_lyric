.class public final Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$indicationTextView:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;->val$indicationTextView:Landroid/widget/TextView;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 11
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;->val$indicationTextView:Landroid/widget/TextView;

    .line 14
    const/16 v0, 0x8

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;->val$indicationTextView:Landroid/widget/TextView;

    .line 21
    const/high16 p1, 0x3f800000    # 1.0f

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 25
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 30
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;->val$indicationTextView:Landroid/widget/TextView;

    .line 11
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 15
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 20
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;->val$indicationTextView:Landroid/widget/TextView;

    .line 9
    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;->val$indicationTextView:Landroid/widget/TextView;

    .line 17
    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    return-void

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;->val$indicationTextView:Landroid/widget/TextView;

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 32
.end method
