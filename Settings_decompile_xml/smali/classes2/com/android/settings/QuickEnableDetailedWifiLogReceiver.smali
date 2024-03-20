.class public Lcom/android/settings/QuickEnableDetailedWifiLogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickEnableDetailedWifiLogReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string p2, "94341"

    .line 31
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "detailed_wifi_log_enabled"

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 34
    new-instance v1, Lcom/android/settings/development/LogdSizePreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/development/LogdSizePreferenceController;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v2, Lcom/android/settings/development/SelectLogLevelPreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/development/SelectLogLevelPreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "wifi"

    .line 39
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    const/4 v4, 0x1

    if-nez p0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->select_logd_size_values:I

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 43
    array-length v0, p0

    sub-int/2addr v0, v4

    aget-object p0, p0, v0

    .line 44
    invoke-virtual {v1, p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->writeLogdSizeOption(Ljava/lang/Object;)V

    const-string p0, "Verbose"

    .line 45
    invoke-virtual {v2, p0}, Lcom/android/settings/development/SelectLogLevelPreferenceController;->writeLogdLevelOption(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setVerboseLoggingEnabled(Z)V

    .line 47
    sget p0, Lcom/android/settings/R$string;->detailed_wifi_logging_enabled:I

    invoke-static {p1, p0, v4}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 52
    invoke-virtual {v1, p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->writeLogdSizeOption(Ljava/lang/Object;)V

    const-string p0, "Warn"

    .line 53
    invoke-virtual {v2, p0}, Lcom/android/settings/development/SelectLogLevelPreferenceController;->writeLogdLevelOption(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->setVerboseLoggingEnabled(Z)V

    .line 55
    sget p0, Lcom/android/settings/R$string;->detailed_wifi_logging_disabled:I

    invoke-static {p1, p0, v4}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method
