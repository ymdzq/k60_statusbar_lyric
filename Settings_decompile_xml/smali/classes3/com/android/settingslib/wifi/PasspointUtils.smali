.class public Lcom/android/settingslib/wifi/PasspointUtils;
.super Ljava/lang/Object;
.source "PasspointUtils.java"

# interfaces
.implements Lcom/android/wifitrackerlib/IPasspointUtils;


# static fields
.field private static volatile mInstance:Lcom/android/settingslib/wifi/PasspointUtils;


# instance fields
.field private final mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

.field private mPasspointR1WifiEntry:Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

.field private mPasspointR1WifiEntryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/wifi/PasspointR1WifiEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7B8Ehm6xBLDBDGplR4E2hM2JXbs(Lcom/android/settingslib/wifi/PasspointUtils;Ljava/util/Map;Ljava/util/Map;Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/wifi/PasspointUtils;->lambda$updatePasspointR1EntryCache$0(Ljava/util/Map;Ljava/util/Map;Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rsf_iAhJ1zVNmnN0I8bHxqB4aqE(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settingslib/wifi/PasspointUtils;->lambda$updatePasspointR1EntryCache$1(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mPasspointR1WifiEntryCache:Ljava/util/Map;

    const-string v0, "MiuiWifiService"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/MiuiWifiManager;

    iput-object p1, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/PasspointUtils;
    .locals 2

    .line 40
    sget-object v0, Lcom/android/settingslib/wifi/PasspointUtils;->mInstance:Lcom/android/settingslib/wifi/PasspointUtils;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/android/settingslib/wifi/PasspointUtils;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/android/settingslib/wifi/PasspointUtils;->mInstance:Lcom/android/settingslib/wifi/PasspointUtils;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/android/settingslib/wifi/PasspointUtils;

    invoke-direct {v1, p0}, Lcom/android/settingslib/wifi/PasspointUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settingslib/wifi/PasspointUtils;->mInstance:Lcom/android/settingslib/wifi/PasspointUtils;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 47
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settingslib/wifi/PasspointUtils;->mInstance:Lcom/android/settingslib/wifi/PasspointUtils;

    return-object p0
.end method

.method private synthetic lambda$updatePasspointR1EntryCache$0(Ljava/util/Map;Ljava/util/Map;Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)V
    .locals 1

    .line 106
    invoke-virtual {p3}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->getPasspointR1Provider()Landroid/net/wifi/PasspointR1Provider;

    move-result-object v0

    .line 105
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 108
    invoke-virtual {p3, p0}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->setAlreadyProvisioned(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p3, v0}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->setAlreadyProvisioned(Z)V

    .line 114
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/PasspointUtils;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    if-nez p0, :cond_1

    return-void

    .line 118
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->setPasspointR1WifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method private static synthetic lambda$updatePasspointR1EntryCache$1(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 123
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "Cannot create key with null unique id!"

    .line 192
    invoke-static {p1, p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PasspointWifiEntry:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bindPasspointKeyService(Landroid/content/Context;)V
    .locals 0

    .line 197
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiPasspointProvision;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/WifiPasspointProvision;

    move-result-object p0

    .line 198
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiPasspointProvision;->bindPasspointKeyService()V

    return-void
.end method

.method public getMatchingPasspointConfigsForPasspointR1Providers(Ljava/util/Set;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/wifi/PasspointR1Provider;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/net/wifi/PasspointR1Provider;",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Landroid/net/wifi/MiuiWifiManager;->getMatchingPasspointConfigsForPasspointR1Providers(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 65
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public getMatchingPasspointR1Providers(Ljava/util/List;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/net/wifi/PasspointR1Provider;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Landroid/net/wifi/MiuiWifiManager;->getMatchingPasspointR1Providers(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 55
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public getPasspointR1WifiEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation

    .line 128
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mPasspointR1WifiEntryCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :catch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic isPasspointR1()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/wifitrackerlib/IPasspointUtils;->isPasspointR1()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPasspointR1Supported()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/wifitrackerlib/IPasspointUtils;->isPasspointR1Supported()Z

    move-result p0

    return p0
.end method

.method public onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 180
    iget-object p0, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mPasspointR1WifiEntryCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    .line 181
    invoke-virtual {v0, p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNetworkLost(Landroid/net/Network;)V
    .locals 1

    .line 186
    iget-object p0, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mPasspointR1WifiEntryCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    .line 187
    invoke-virtual {v0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkLost(Landroid/net/Network;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updatePasspointR1Entry(Ljava/util/List;Lcom/android/wifitrackerlib/PasspointWifiEntry;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V
    .locals 9
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

    .line 138
    invoke-static {}, Lcom/android/settingslib/wifi/WifiPasspointProvision;->isPasspointR1Supported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Scan Result list should not be null!"

    .line 142
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/PasspointUtils;->getMatchingPasspointR1Providers(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 147
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/PasspointUtils;->getMatchingPasspointConfigsForPasspointR1Providers(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mPasspointR1WifiEntry:Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->getPasspointR1Provider()Landroid/net/wifi/PasspointR1Provider;

    move-result-object p3

    .line 150
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/PasspointR1Provider;

    .line 156
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v3, :cond_2

    .line 157
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settingslib/wifi/PasspointUtils;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    new-instance v0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p3

    move-object v5, p4

    move-object v6, v2

    move-object v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/PasspointR1Provider;Landroid/net/wifi/WifiManager;Z)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mPasspointR1WifiEntry:Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    .line 163
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 162
    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    .line 164
    iget-object p1, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mPasspointR1WifiEntry:Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->setAlreadyProvisioned(Z)V

    .line 165
    iget-object p0, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mPasspointR1WifiEntry:Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    invoke-virtual {p2, p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->setPasspointR1WifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void

    .line 172
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mPasspointR1WifiEntry:Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    if-eqz p1, :cond_4

    .line 173
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_4

    const/4 p1, 0x0

    .line 174
    invoke-virtual {p2, p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->setPasspointR1WifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 175
    iput-object p1, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mPasspointR1WifiEntry:Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    :cond_4
    return-void
.end method

.method public updatePasspointR1EntryCache(Ljava/util/List;Ljava/util/Map;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V
    .locals 10
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

    .line 74
    invoke-static {}, Lcom/android/settingslib/wifi/WifiPasspointProvision;->isPasspointR1Supported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Scan Result list should not be null!"

    .line 78
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/PasspointUtils;->getMatchingPasspointR1Providers(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/PasspointUtils;->getMatchingPasspointConfigsForPasspointR1Providers(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mPasspointR1WifiEntryCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    .line 87
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->getPasspointR1Provider()Landroid/net/wifi/PasspointR1Provider;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 86
    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/PasspointR1Provider;

    .line 93
    new-instance v9, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p3

    move-object v5, p4

    move-object v6, v2

    move-object v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/PasspointR1Provider;Landroid/net/wifi/WifiManager;Z)V

    .line 95
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v9, v3}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    .line 96
    iget-object v3, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mPasspointR1WifiEntryCache:Ljava/util/Map;

    .line 97
    invoke-static {v2}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->passpointR1ProviderToPasspointR1WifiEntryKey(Landroid/net/wifi/PasspointR1Provider;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-interface {v3, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mPasspointR1WifiEntryCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance p3, Lcom/android/settingslib/wifi/PasspointUtils$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v0, p2}, Lcom/android/settingslib/wifi/PasspointUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/wifi/PasspointUtils;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {p1, p3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 122
    iget-object p0, p0, Lcom/android/settingslib/wifi/PasspointUtils;->mPasspointR1WifiEntryCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance p1, Lcom/android/settingslib/wifi/PasspointUtils$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/settingslib/wifi/PasspointUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 123
    invoke-interface {p0, p1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method
