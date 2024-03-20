.class public Lcom/android/settings/bluetooth/plugin/ProvisionUtil;
.super Ljava/lang/Object;
.source "ProvisionUtil.java"


# static fields
.field private static VDBG:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static checkClauseAgreedOrProvisioned(Landroid/content/Context;)Z
    .locals 1

    .line 62
    invoke-static {p0}, Lcom/android/settings/bluetooth/plugin/ProvisionUtil;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {p0}, Lcom/android/settings/bluetooth/plugin/ProvisionUtil;->isProvisionClauseAgreed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-static {p0}, Lcom/android/settings/bluetooth/plugin/ProvisionUtil;->isEnableFastConnect(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 65
    invoke-static {}, Lcom/android/settings/bluetooth/plugin/ProvisionUtil;->isRootBuild()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "MIUI_ROOT_BT_NETWORK"

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 2

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isEnableFastConnect(Landroid/content/Context;)Z
    .locals 4

    .line 53
    sget-boolean v0, Lcom/android/settings/bluetooth/plugin/ProvisionUtil;->VDBG:Z

    const-string/jumbo v1, "miui_disable_fast_connect_bt_off"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnableFastConnect disable by bt off: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ProvisionUtil"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "persist.bluetooth.disablemifastconnect"

    const/4 v3, 0x0

    .line 56
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2
.end method

.method public static isProvisionClauseAgreed(Landroid/content/Context;)Z
    .locals 2

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "clause_agreed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isRootBuild()Z
    .locals 4

    const-string v0, "ProvisionUtil"

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "ro.debuggable"

    .line 35
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 36
    sget-boolean v2, Lcom/android/settings/bluetooth/plugin/ProvisionUtil;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "isRootBuild true"

    .line 37
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v3

    :catch_0
    move-exception v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    :cond_1
    sget-boolean v2, Lcom/android/settings/bluetooth/plugin/ProvisionUtil;->VDBG:Z

    if-eqz v2, :cond_2

    const-string v2, "isRootBuild false"

    .line 46
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method
