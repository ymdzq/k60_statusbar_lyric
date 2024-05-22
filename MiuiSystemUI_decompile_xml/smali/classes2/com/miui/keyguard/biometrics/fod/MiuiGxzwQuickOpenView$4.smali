.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$4;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    move-result p1

    .line 11
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$4;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 12
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickLoadingView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;

    .line 14
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;->mCurrentLoadingRadius:F

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    return-void
    .line 21
.end method
