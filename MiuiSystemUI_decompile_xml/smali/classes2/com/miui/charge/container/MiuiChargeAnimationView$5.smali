.class public final Lcom/miui/charge/container/MiuiChargeAnimationView$5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

.field public final synthetic val$reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/charge/container/MiuiChargeAnimationView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$5;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 2
    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$5;->val$reason:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$5;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mStartingDismissAnim:Z

    .line 5
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->animationListener:Lcom/miui/charge/view/IChargeAnimationListener;

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iget v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWireState:I

    .line 11
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissReason:Ljava/lang/String;

    .line 13
    check-cast p1, Lcom/miui/charge/MiuiChargeController;

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/miui/charge/MiuiChargeController;->onChargeAnimationEnd(ILjava/lang/String;)V

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    .line 20
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissRunnable:Lcom/miui/charge/container/MiuiChargeAnimationView$6;

    .line 22
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    return-void
    .line 27
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$5;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 2
    iget-boolean v0, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mStartingDismissAnim:Z

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    iput-boolean v1, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mStartingDismissAnim:Z

    .line 9
    iget-object v0, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->animationListener:Lcom/miui/charge/view/IChargeAnimationListener;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget v2, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWireState:I

    .line 15
    iget-object v3, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissReason:Ljava/lang/String;

    .line 17
    check-cast v0, Lcom/miui/charge/MiuiChargeController;

    .line 19
    invoke-virtual {v0, v2, v3}, Lcom/miui/charge/MiuiChargeController;->onChargeAnimationEnd(ILjava/lang/String;)V

    .line 21
    :cond_0
    iget-object v0, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRotation()F

    .line 26
    move-result v0

    .line 29
    const/4 v2, 0x0

    .line 30
    cmpl-float v0, v0, v2

    .line 31
    if-gtz v0, :cond_1

    .line 33
    iget-object v0, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    .line 35
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRotation()F

    .line 37
    move-result v0

    .line 40
    cmpl-float v0, v0, v2

    .line 41
    if-lez v0, :cond_2

    .line 43
    :cond_1
    iget-object v0, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 47
    iget-object v0, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 52
    :cond_2
    iget-object v0, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    .line 55
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissRunnable:Lcom/miui/charge/container/MiuiChargeAnimationView$6;

    .line 57
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$5;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 62
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 66
    :cond_3
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$5;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 69
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 75
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$5;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 78
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 82
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$5;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 85
    iput-boolean v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mStartingDismissAnim:Z

    .line 87
    return-void
    .line 89
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$5;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 2
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    .line 4
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$5;->val$reason:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    .line 8
    invoke-virtual {p1, v0}, Lcom/miui/charge/container/IChargeView;->startDismiss(Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$5;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 13
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->animationListener:Lcom/miui/charge/view/IChargeAnimationListener;

    .line 15
    if-eqz p1, :cond_2

    .line 17
    iget v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWireState:I

    .line 19
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissReason:Ljava/lang/String;

    .line 21
    check-cast p1, Lcom/miui/charge/MiuiChargeController;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    const-class p0, Lmiui/stub/MiuiStub$12;

    .line 28
    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    check-cast p0, Lmiui/stub/MiuiStub$12;

    .line 34
    iget-object p1, p1, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 36
    invoke-virtual {p1}, Lcom/miui/charge/MiuiBatteryStatus;->isPluggedIn()Z

    .line 38
    move-result p1

    .line 41
    iget-object p0, p0, Lmiui/stub/MiuiStub$12;->this$0:Lmiui/stub/MiuiStub;

    .line 42
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 44
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardIndicationController:Ldagger/Lazy;

    .line 46
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 51
    check-cast p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 54
    if-nez v0, :cond_0

    .line 56
    const-string p0, "KeyguardIndication"

    .line 58
    const-string p1, "onChargeAnimationEnd mLockScreenIndicationView is null"

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    goto :goto_0

    .line 65
    :cond_0
    if-eqz p1, :cond_1

    .line 66
    const-class p1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 68
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 73
    check-cast p1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 76
    invoke-virtual {p1, p0}, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->handlePowerIndicationAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 82
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 84
    :cond_2
    :goto_0
    return-void
    .line 87
.end method
