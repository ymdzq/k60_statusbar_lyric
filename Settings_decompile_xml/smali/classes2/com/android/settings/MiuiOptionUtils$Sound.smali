.class public Lcom/android/settings/MiuiOptionUtils$Sound;
.super Ljava/lang/Object;
.source "MiuiOptionUtils.java"


# direct methods
.method public static touchSilentState(Landroid/content/Context;I)I
    .locals 4

    .line 303
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    const/4 v0, 0x0

    .line 306
    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return p1

    :cond_2
    return v0
.end method

.method public static touchVibrateState(Landroid/content/Context;I)I
    .locals 2

    .line 322
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 324
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->toggleVibrateSetting(Landroid/content/Context;)V

    return p1

    :cond_0
    return v0
.end method
