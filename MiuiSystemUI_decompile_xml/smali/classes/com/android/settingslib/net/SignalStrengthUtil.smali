.class public abstract Lcom/android/settingslib/net/SignalStrengthUtil;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static shouldInflateSignalStrength(ILandroid/content/Context;)Z
    .locals 1

    .line 1
    const-class v0, Landroid/telephony/CarrierConfigManager;

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    .line 12
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    const/4 p1, 0x0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    const-string v0, "inflate_signal_strength_bool"

    .line 21
    invoke-virtual {p0, v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    const/4 p1, 0x1

    .line 29
    :cond_1
    return p1
    .line 30
.end method
