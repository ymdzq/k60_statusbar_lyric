.class public Lcom/android/settings/PlatformUtils;
.super Ljava/lang/Object;
.source "PlatformUtils.java"


# direct methods
.method public static getDefaultStreamVolume(I)I
    .locals 0

    .line 14
    invoke-static {p0}, Landroid/media/AudioSystem;->getDefaultStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public static getSubId(I)J
    .locals 2

    .line 22
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 25
    aget p0, p0, v0

    int-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-static {p1, p0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
