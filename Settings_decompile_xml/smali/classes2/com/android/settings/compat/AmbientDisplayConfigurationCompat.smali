.class public Lcom/android/settings/compat/AmbientDisplayConfigurationCompat;
.super Ljava/lang/Object;
.source "AmbientDisplayConfigurationCompat.java"


# direct methods
.method public static isAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 11
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result p0

    return p0
.end method
