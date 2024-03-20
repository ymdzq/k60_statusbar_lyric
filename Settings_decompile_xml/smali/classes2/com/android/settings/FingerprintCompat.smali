.class public Lcom/android/settings/FingerprintCompat;
.super Ljava/lang/Object;
.source "FingerprintCompat.java"


# direct methods
.method public static getFingerIdForFingerprint(Landroid/hardware/fingerprint/Fingerprint;)I
    .locals 0

    .line 11
    invoke-virtual {p0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p0

    return p0
.end method
