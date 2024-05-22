.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$6;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChargeAnimationShowingChanged(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$6;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 4
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->updateGxzwState()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onKeyguardOccludedChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$6;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 2
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->updateGxzwState()V

    .line 4
    return-void
    .line 7
.end method

.method public final onKeyguardShowingChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$6;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 4
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->onKeyguardShow()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onLockScreenMagazinePreViewVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$6;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 2
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mLockScreenMagazinePreViewVisible:Z

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mLockScreenMagazinePreViewVisible:Z

    .line 8
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->updateGxzwState()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method
