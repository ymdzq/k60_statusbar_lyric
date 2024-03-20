.class public Lcom/android/settings/device/UpdateBroadcastManager;
.super Ljava/lang/Object;
.source "UpdateBroadcastManager.java"


# direct methods
.method static bridge synthetic -$$Nest$smgetSuperscriptCount(I)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/device/UpdateBroadcastManager;->getSuperscriptCount(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetSuperscriptMap(Landroid/content/ContentResolver;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/device/UpdateBroadcastManager;->getSuperscriptMap(Landroid/content/ContentResolver;)I

    move-result p0

    return p0
.end method

.method public static getAppsAutoUpdateSuperscript(Landroid/content/Context;)I
    .locals 0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/device/UpdateBroadcastManager;->getSuperscriptMap(Landroid/content/ContentResolver;)I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static getSuperscriptCount(I)I
    .locals 2

    .line 0
    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p0, -0x1

    and-int/2addr p0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static getSuperscriptMap(Landroid/content/ContentResolver;)I
    .locals 1

    :try_start_0
    const-string v0, "com.android.settings.superscript_map"

    .line 57
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toggleSuperscript(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    .line 21
    invoke-static {p0, v0, p1}, Lcom/android/settings/device/UpdateBroadcastManager;->updateSuperscript(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static updateSuperscript(Landroid/content/Context;IZ)V
    .locals 1

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 32
    new-instance v0, Lcom/android/settings/device/UpdateBroadcastManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/device/UpdateBroadcastManager$1;-><init>(Landroid/content/Context;ZI)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 42
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
