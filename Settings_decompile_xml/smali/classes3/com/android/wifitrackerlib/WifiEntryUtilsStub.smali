.class public Lcom/android/wifitrackerlib/WifiEntryUtilsStub;
.super Ljava/lang/Object;
.source "WifiEntryUtilsStub.java"


# static fields
.field private static volatile mUtils:Lcom/android/wifitrackerlib/IWifiEntryUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    :try_start_0
    const-class v0, Lcom/android/settingslib/wifi/WifiEntryUtils;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/IWifiEntryUtils;

    sput-object v0, Lcom/android/wifitrackerlib/WifiEntryUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IWifiEntryUtils;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getCca(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/wifitrackerlib/WifiEntryUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IWifiEntryUtils;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/wifitrackerlib/WifiEntryUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IWifiEntryUtils;

    invoke-interface {v0, p0}, Lcom/android/wifitrackerlib/IWifiEntryUtils;->getCca(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getWeakNetSwitchTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 81
    sget-object v0, Lcom/android/wifitrackerlib/WifiEntryUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IWifiEntryUtils;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/wifitrackerlib/WifiEntryUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IWifiEntryUtils;

    invoke-interface {v0, p0}, Lcom/android/wifitrackerlib/IWifiEntryUtils;->getWeakNetSwitchTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static isMiuiBuild()Z
    .locals 2

    const-string/jumbo v0, "ro.miui.ui.version.name"

    const-string v1, ""

    .line 63
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ro.miui.ui.version.code"

    .line 64
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static miuiCalculateSignalLevel(ILandroid/net/wifi/WifiManager;)I
    .locals 1

    .line 43
    invoke-static {}, Lcom/android/wifitrackerlib/WifiEntryUtilsStub;->isMiuiBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result p0

    return p0

    .line 45
    :cond_0
    sget-object p1, Lcom/android/wifitrackerlib/WifiEntryUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IWifiEntryUtils;

    if-eqz p1, :cond_1

    .line 46
    sget-object p1, Lcom/android/wifitrackerlib/WifiEntryUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IWifiEntryUtils;

    const/4 v0, 0x5

    invoke-interface {p1, p0, v0}, Lcom/android/wifitrackerlib/IWifiEntryUtils;->miuiCalculateSignalLevel(II)I

    move-result p0

    return p0

    :cond_1
    const/16 p1, -0x64

    if-gt p0, p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/16 v0, -0x41

    if-lt p0, v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    sub-int/2addr p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x40800000    # 4.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x420c0000    # 35.0f

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static updateLastMinConnectionCapability(Ljava/util/List;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;II)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 70
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    return p2
.end method
