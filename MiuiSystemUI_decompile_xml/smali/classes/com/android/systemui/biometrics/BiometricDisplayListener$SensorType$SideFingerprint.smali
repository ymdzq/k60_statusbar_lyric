.class public final Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;
.super Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 14
    iget-object p1, p1, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 16
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 21
    if-nez p0, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    return v0
    .line 25
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 2
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->hashCode()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "SideFingerprint(properties="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;->properties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string p0, ")"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method
