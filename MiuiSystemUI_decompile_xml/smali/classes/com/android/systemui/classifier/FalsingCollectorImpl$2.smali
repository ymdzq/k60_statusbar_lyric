.class public final Lcom/android/systemui/classifier/FalsingCollectorImpl$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$2;->this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    move-result p3

    .line 5
    if-ne p1, p3, :cond_0

    .line 6
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 8
    if-ne p2, p1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$2;->this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 14
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mJustUnlockedWithFace:Z

    .line 17
    :cond_0
    return-void
    .line 19
.end method
