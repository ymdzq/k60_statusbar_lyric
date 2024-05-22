.class public final Lcom/android/systemui/biometrics/AuthBiometricView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

.field public final synthetic val$biometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

.field public final synthetic val$newSize:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthBiometricView;Lcom/android/systemui/biometrics/AuthBiometricView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->val$biometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 4
    iput p3, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->val$newSize:I

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->val$biometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object p1

    .line 10
    instance-of p1, p1, Landroid/view/ViewGroup;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->val$biometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 15
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object p1

    .line 20
    check-cast p1, Landroid/view/ViewGroup;

    .line 21
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->val$biometricView:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->this$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 28
    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$2;->val$newSize:I

    .line 30
    iput p0, p1, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 32
    return-void
    .line 34
.end method
