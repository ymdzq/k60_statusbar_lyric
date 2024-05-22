.class public final Lcom/android/systemui/biometrics/AuthBiometricView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

.field public final synthetic val$newSize:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 2
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->val$newSize:I

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 5
    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->val$newSize:I

    .line 7
    iput p0, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 9
    const/4 p0, 0x0

    .line 11
    iput-boolean p0, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mDialogSizeAnimating:Z

    .line 12
    iget-object p0, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 14
    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 16
    return-void
    .line 19
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 5
    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    .line 7
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 13
    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 20
    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 22
    invoke-static {p1}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    .line 24
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 30
    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 38
    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 42
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    instance-of p1, p1, Lcom/android/systemui/biometrics/AuthBiometricFaceView;

    .line 50
    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 54
    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 61
    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 65
    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    move-result p1

    .line 72
    if-nez p1, :cond_2

    .line 73
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 75
    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 82
    iget-object p1, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 86
    move-result-object p1

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    move-result p1

    .line 93
    if-nez p1, :cond_3

    .line 94
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$1;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 96
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :cond_3
    return-void
    .line 103
.end method
