.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$2;
.super Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChanged(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 4
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda4;

    .line 6
    invoke-direct {v1, p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$2;IZ)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
    .line 14
.end method
