.class public Lcom/android/settings/wifi/AutoConnectUtils;
.super Ljava/lang/Object;
.source "AutoConnectUtils.java"


# static fields
.field private static sAutoConnectUtils:Lcom/android/settings/wifi/AutoConnectUtils;


# instance fields
.field private OPEN_WIFI_AUTO_CONNECT_SSID:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mSsidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/settings/wifi/AutoConnectUtils;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/AutoConnectUtils;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSsidSet(Lcom/android/settings/wifi/AutoConnectUtils;Ljava/util/HashSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/AutoConnectUtils;->mSsidSet:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AutoConnectUtils;->mLock:Ljava/lang/Object;

    const-string v0, "open_wifi_auto_connect_ssid_list"

    .line 19
    iput-object v0, p0, Lcom/android/settings/wifi/AutoConnectUtils;->OPEN_WIFI_AUTO_CONNECT_SSID:Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AutoConnectUtils;->registerDisableWifiAutoConnectChangedObserver(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/AutoConnectUtils;
    .locals 1

    .line 26
    sget-object v0, Lcom/android/settings/wifi/AutoConnectUtils;->sAutoConnectUtils:Lcom/android/settings/wifi/AutoConnectUtils;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/android/settings/wifi/AutoConnectUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AutoConnectUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/wifi/AutoConnectUtils;->sAutoConnectUtils:Lcom/android/settings/wifi/AutoConnectUtils;

    .line 29
    :cond_0
    sget-object p0, Lcom/android/settings/wifi/AutoConnectUtils;->sAutoConnectUtils:Lcom/android/settings/wifi/AutoConnectUtils;

    return-object p0
.end method

.method private getNoSecretWifiSet(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 111
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/settings/wifi/AutoConnectUtils;->OPEN_WIFI_AUTO_CONNECT_SSID:Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private registerDisableWifiAutoConnectChangedObserver(Landroid/content/Context;)V
    .locals 4

    .line 66
    new-instance v0, Lcom/android/settings/wifi/AutoConnectUtils$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/wifi/AutoConnectUtils$1;-><init>(Lcom/android/settings/wifi/AutoConnectUtils;Landroid/os/Handler;Landroid/content/Context;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disable_wifi_auto_connect_ssid"

    .line 75
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 74
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    invoke-static {p1}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/AutoConnectUtils;->mSsidSet:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public enableAutoConnect(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/settings/wifi/AutoConnectUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_0

    .line 41
    :try_start_0
    iget-object p3, p0, Lcom/android/settings/wifi/AutoConnectUtils;->mSsidSet:Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_0
    iget-object p3, p0, Lcom/android/settings/wifi/AutoConnectUtils;->mSsidSet:Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/AutoConnectUtils;->mSsidSet:Ljava/util/HashSet;

    invoke-static {p1, p0}, Landroid/provider/MiuiSettings$System;->setDisableWifiAutoConnectSsid(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 46
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAutoConnect(Ljava/lang/String;)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/settings/wifi/AutoConnectUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/wifi/AutoConnectUtils;->mSsidSet:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeNoSecretWifi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AutoConnectUtils;->getNoSecretWifiSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 94
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 96
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 97
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/AutoConnectUtils;->OPEN_WIFI_AUTO_CONNECT_SSID:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
