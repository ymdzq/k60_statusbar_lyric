.class public final Lcom/miui/charge/container/MiuiChargeAnimationView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;


# direct methods
.method public constructor <init>(Lcom/miui/charge/container/MiuiChargeAnimationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$4;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView$4;->this$0:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 5
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->animationListener:Lcom/miui/charge/view/IChargeAnimationListener;

    .line 7
    if-eqz p1, :cond_1

    .line 9
    iget p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWireState:I

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "onChargeAnimationStart: "

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    const-string v0, "MiuiChargeController"

    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-class p1, Lmiui/stub/MiuiStub$12;

    .line 32
    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Lmiui/stub/MiuiStub$12;

    .line 38
    iget-object p1, p1, Lmiui/stub/MiuiStub$12;->this$0:Lmiui/stub/MiuiStub;

    .line 40
    iget-object p1, p1, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 42
    iget-object p1, p1, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardIndicationController:Ldagger/Lazy;

    .line 44
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 49
    check-cast p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 50
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 52
    if-nez p1, :cond_0

    .line 54
    const-string p1, "KeyguardIndication"

    .line 56
    const-string v0, "onChargeAnimationStart mLockScreenIndicationView is null"

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 65
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    .line 68
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mTimeoutDismissJob:Lcom/miui/charge/container/MiuiChargeAnimationView$6;

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    .line 75
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mTimeoutDismissJob:Lcom/miui/charge/container/MiuiChargeAnimationView$6;

    .line 77
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->getAnimationDuration()I

    .line 79
    move-result p0

    .line 82
    add-int/lit16 p0, p0, -0x258

    .line 83
    int-to-long v1, p0

    .line 85
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
    .line 89
.end method
