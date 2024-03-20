.class public final Lcom/android/settings/haptic/utils/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# direct methods
.method public static isSupportLinearMotorVibrate()Z
    .locals 2

    const-string/jumbo v0, "sys.haptic.motor"

    .line 43
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "linear"

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
