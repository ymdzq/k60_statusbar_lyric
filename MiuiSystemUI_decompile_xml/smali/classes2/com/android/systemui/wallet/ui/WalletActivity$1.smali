.class public final Lcom/android/systemui/wallet/ui/WalletActivity$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallet/ui/WalletActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallet/ui/WalletActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletActivity$1;->this$0:Lcom/android/systemui/wallet/ui/WalletActivity;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBiometricRunningStateChanged(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1
    const-string p1, "WalletActivity"

    .line 2
    const-string p2, "Biometric running state has changed."

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity$1;->this$0:Lcom/android/systemui/wallet/ui/WalletActivity;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletActivity;->mWalletScreenController:Lcom/android/systemui/wallet/ui/WalletScreenController;

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->queryWalletCards()V

    .line 13
    return-void
    .line 16
.end method
