.class public final Lcom/android/keyguard/KeyguardMoveHelper$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardMoveHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardMoveHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method

.method public static updateCanShowGxzw(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->setCanShowGxzw(Z)V

    .line 6
    return-void
    .line 9
.end method

.method public static updateRightMoveIconLayoutVisibility(I)V
    .locals 1

    .line 1
    const-class v0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 8
    if-nez p0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateRightAffordanceViewLayoutVisibility()V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewLayout:Landroid/widget/LinearLayout;

    .line 16
    if-nez v0, :cond_1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    :goto_0
    return-void
.end method


# virtual methods
.method public final onCancelAnimationEnd(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mCallback:Lcom/android/keyguard/KeyguardMoveHelper$Callback;

    .line 4
    check-cast v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 6
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->onHorizontalMove(FZ)V

    .line 10
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    const-class p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 16
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 22
    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->startButtonLayoutAnimate(ZZ)V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 28
    :goto_0
    return-void
    .line 30
.end method
