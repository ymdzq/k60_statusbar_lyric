.class public Lcom/android/wifitrackerlib/PasspointUtilsStub;
.super Ljava/lang/Object;
.source "PasspointUtilsStub.java"


# static fields
.field private static volatile mInstance:Lcom/android/wifitrackerlib/PasspointUtilsStub;

.field private static volatile mPasspointUtils:Ljava/lang/Class;

.field private static volatile mUtils:Lcom/android/wifitrackerlib/IPasspointUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    :try_start_0
    const-class v0, Lcom/android/settingslib/wifi/PasspointUtils;

    sput-object v0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mPasspointUtils:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_0
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mPasspointUtils:Ljava/lang/Class;

    if-eqz p0, :cond_0

    .line 36
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mPasspointUtils:Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 37
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wifitrackerlib/IPasspointUtils;

    sput-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IPasspointUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/wifitrackerlib/PasspointUtilsStub;
    .locals 2

    .line 45
    sget-object v0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mInstance:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/android/wifitrackerlib/PasspointUtilsStub;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mInstance:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/android/wifitrackerlib/PasspointUtilsStub;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/PasspointUtilsStub;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mInstance:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 52
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mInstance:Lcom/android/wifitrackerlib/PasspointUtilsStub;

    return-object p0
.end method


# virtual methods
.method public bindPasspointKeyService(Landroid/content/Context;)V
    .locals 0

    .line 88
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IPasspointUtils;

    if-eqz p0, :cond_0

    .line 89
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IPasspointUtils;

    invoke-interface {p0, p1}, Lcom/android/wifitrackerlib/IPasspointUtils;->bindPasspointKeyService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getPasspointR1WifiEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation

    .line 94
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IPasspointUtils;

    if-eqz p0, :cond_0

    .line 95
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IPasspointUtils;

    invoke-interface {p0}, Lcom/android/wifitrackerlib/IPasspointUtils;->getPasspointR1WifiEntries()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 98
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 102
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IPasspointUtils;

    if-eqz p0, :cond_0

    .line 103
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IPasspointUtils;

    invoke-interface {p0, p1, p2}, Lcom/android/wifitrackerlib/IPasspointUtils;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    :cond_0
    return-void
.end method

.method public onNetworkLost(Landroid/net/Network;)V
    .locals 0

    .line 108
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IPasspointUtils;

    if-eqz p0, :cond_0

    .line 109
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IPasspointUtils;

    invoke-interface {p0, p1}, Lcom/android/wifitrackerlib/IPasspointUtils;->onNetworkLost(Landroid/net/Network;)V

    :cond_0
    return-void
.end method

.method public updatePasspointR1Entry(Ljava/util/List;Lcom/android/wifitrackerlib/PasspointWifiEntry;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Lcom/android/wifitrackerlib/PasspointWifiEntry;",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/net/wifi/WifiManager;",
            ")V"
        }
    .end annotation

    .line 68
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IPasspointUtils;

    if-eqz p0, :cond_0

    .line 69
    sget-object v0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IPasspointUtils;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/wifitrackerlib/IPasspointUtils;->updatePasspointR1Entry(Ljava/util/List;Lcom/android/wifitrackerlib/PasspointWifiEntry;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V

    :cond_0
    return-void
.end method

.method public updatePasspointR1EntryCache(Ljava/util/List;Ljava/util/Map;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/wifitrackerlib/PasspointWifiEntry;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/net/wifi/WifiManager;",
            ")V"
        }
    .end annotation

    .line 59
    sget-object p0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IPasspointUtils;

    if-eqz p0, :cond_0

    .line 60
    sget-object v0, Lcom/android/wifitrackerlib/PasspointUtilsStub;->mUtils:Lcom/android/wifitrackerlib/IPasspointUtils;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/wifitrackerlib/IPasspointUtils;->updatePasspointR1EntryCache(Ljava/util/List;Ljava/util/Map;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V

    :cond_0
    return-void
.end method
