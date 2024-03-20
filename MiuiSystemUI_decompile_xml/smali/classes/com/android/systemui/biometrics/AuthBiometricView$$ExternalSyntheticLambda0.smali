.class public final synthetic Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthBiometricView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 8
    sget v0, Lcom/android/systemui/biometrics/AuthBiometricView;->$r8$clinit:I

    .line 10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Float;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 18
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 22
    return-void

    .line 25
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 26
    sget v0, Lcom/android/systemui/biometrics/AuthBiometricView;->$r8$clinit:I

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Float;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 39
    move-result p1

    .line 42
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    .line 43
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCancelButton:Landroid/widget/Button;

    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    .line 63
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    .line 68
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 70
    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v0

    .line 77
    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    .line 85
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 87
    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    move-result v0

    .line 94
    if-nez v0, :cond_1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 99
    :cond_1
    return-void

    .line 102
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 103
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    .line 105
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 110
    check-cast p1, Ljava/lang/Float;

    .line 111
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 113
    move-result p1

    .line 116
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 117
    return-void

    .line 120
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 121
    sget v0, Lcom/android/systemui/biometrics/AuthBiometricView;->$r8$clinit:I

    .line 123
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 125
    move-result-object p1

    .line 128
    check-cast p1, Ljava/lang/Float;

    .line 129
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 131
    move-result p1

    .line 134
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 135
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 140
.end method
