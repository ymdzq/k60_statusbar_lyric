.class public final Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

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
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->updateSideFpsVisibility()V

    .line 4
    return-void
    .line 7
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->updateSideFpsVisibility()V

    .line 4
    return-void
    .line 7
.end method
