.class public final Lcom/android/systemui/biometrics/OrientationReasonListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

.field public reason:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/biometrics/OrientationReasonListener;->reason:I

    .line 6
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDisplayListener;

    .line 8
    new-instance v5, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;

    .line 10
    invoke-direct {v5, p4}, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;-><init>(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 12
    new-instance v6, Lcom/android/systemui/biometrics/OrientationReasonListener$orientationListener$1;

    .line 15
    invoke-direct {v6, p5, p0}, Lcom/android/systemui/biometrics/OrientationReasonListener$orientationListener$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/biometrics/OrientationReasonListener;)V

    .line 17
    move-object v1, v0

    .line 20
    move-object v2, p1

    .line 21
    move-object v3, p2

    .line 22
    move-object v4, p3

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/biometrics/BiometricDisplayListener;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;Lkotlin/jvm/functions/Function0;)V

    .line 24
    iput-object v0, p0, Lcom/android/systemui/biometrics/OrientationReasonListener;->orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    .line 27
    return-void
    .line 29
.end method
