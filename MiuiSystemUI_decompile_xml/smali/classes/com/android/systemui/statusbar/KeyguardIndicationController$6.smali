.class public final Lcom/android/systemui/statusbar/KeyguardIndicationController$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFingerprintLockoutReset()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 4
    sget-object v1, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 6
    if-eq v0, v1, :cond_0

    .line 8
    sget-object v1, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->FAILED:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 10
    if-ne v0, v1, :cond_1

    .line 12
    :cond_0
    sget-object v0, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->RESET:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 16
    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-$$Nest$mhandleFingerprintStateChanged(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 18
    :cond_1
    return-void
    .line 21
.end method

.method public final onLockWallpaperChange(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setDarkStyle(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 9
    move-result p1

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    const-class p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 16
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 22
    invoke-virtual {p1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isDefaultLockScreenTheme()Z

    .line 24
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    .line 32
    return-void
    .line 35
.end method

.method public final onPartColorComputeComplete(Ljava/util/Map;IZZZZZ)V
    .locals 0

    .line 1
    xor-int/lit8 p1, p6, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setDarkStyle(Z)V

    .line 6
    return-void
    .line 9
.end method
