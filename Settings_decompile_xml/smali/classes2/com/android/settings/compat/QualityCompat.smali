.class public Lcom/android/settings/compat/QualityCompat;
.super Ljava/lang/Object;
.source "QualityCompat.java"


# direct methods
.method public static upgradeQuality(ILandroid/app/admin/DevicePolicyManager;II)I
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 14
    invoke-static {p3}, Landroid/app/admin/PasswordMetrics;->complexityLevelToMinQuality(I)I

    move-result p1

    .line 13
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
