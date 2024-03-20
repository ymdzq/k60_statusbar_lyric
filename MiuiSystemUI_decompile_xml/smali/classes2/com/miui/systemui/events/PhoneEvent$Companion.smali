.class public final Lcom/miui/systemui/events/PhoneEvent$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/systemui/events/PhoneEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIsAutoBrightnessTurnedOnValue(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string p1, "screen_brightness_mode"

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public final getIsDualCardValue()I
    .locals 4

    .line 1
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    .line 6
    move-result p0

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v1, p0, :cond_1

    .line 13
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    .line 15
    move-result-object v3

    .line 18
    invoke-virtual {v3, v1}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    .line 19
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x1

    .line 30
    if-le v2, p0, :cond_2

    .line 31
    move v0, p0

    .line 33
    :cond_2
    return v0
    .line 34
.end method

.method public final getIsFullScreen(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 2
    move-result p0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 6
    move-result-object p1

    .line 9
    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 16
    const/4 p0, 0x0

    .line 19
    return p0
    .line 20
.end method

.method public final getIsGpsTurnedOnValue(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string p1, "location_mode"

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 15
    :cond_0
    return v0
    .line 16
.end method

.method public final getIsMuteTurnedOnValue(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getIsNotchScreen()I
    .locals 0

    .line 1
    sget-boolean p0, Lcom/miui/utils/configs/MiuiConfigs;->IS_NOTCH:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getIsRotationLockTurnedOnValue(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getIsWifiTurnedOnValue(Landroid/content/Context;)I
    .locals 0

    .line 1
    const-string/jumbo p0, "wifi"

    .line 2
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 9
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method
