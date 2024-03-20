.class public final synthetic Lcom/android/keyguard/BaseKeyguardMoveController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/BaseKeyguardMoveController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/BaseKeyguardMoveController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/BaseKeyguardMoveController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/BaseKeyguardMoveController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/BaseKeyguardMoveController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/BaseKeyguardMoveController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Float;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 13
    move-result p1

    .line 16
    iput p1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mMovingLength:F

    .line 17
    iget-object p0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 19
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 21
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mCallback:Lcom/android/keyguard/KeyguardMoveHelper$Callback;

    .line 23
    const/4 v0, 0x1

    .line 25
    check-cast p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->onHorizontalMove(FZ)V

    .line 28
    return-void
    .line 31
.end method
