.class public Lcom/android/settingslib/wifi/PasspointR1WifiEntry;
.super Lcom/android/wifitrackerlib/WifiEntry;
.source "PasspointR1WifiEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/PasspointR1WifiEntry$PasspointLoginResultReceiver;,
        Lcom/android/settingslib/wifi/PasspointR1WifiEntry$PasspointR1WifiEntryProvisioningCallback;
    }
.end annotation


# static fields
.field private static mPasspointLoginResultReceiver:Lcom/android/settingslib/wifi/PasspointR1WifiEntry$PasspointLoginResultReceiver;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAlreadyProvisioned:Z

.field private final mKey:Ljava/lang/String;

.field private final mPasspointR1Provider:Landroid/net/wifi/PasspointR1Provider;

.field private mPasspointR1StatusString:Ljava/lang/String;

.field private mSsid:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasspointR1Provider(Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)Landroid/net/wifi/PasspointR1Provider;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mPasspointR1Provider:Landroid/net/wifi/PasspointR1Provider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPasspointR1StatusString(Lcom/android/settingslib/wifi/PasspointR1WifiEntry;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mPasspointR1StatusString:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/PasspointR1Provider;Landroid/net/wifi/WifiManager;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p2, p4, p5}, Lcom/android/wifitrackerlib/WifiEntry;-><init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;Z)V

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mCurrentScanResults:Ljava/util/List;

    const/4 p2, 0x0

    .line 56
    iput-boolean p2, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mIsAlreadyProvisioned:Z

    const-string p2, "Cannot construct with null passpointR1Provider!"

    .line 69
    invoke-static {p3, p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mContext:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mPasspointR1Provider:Landroid/net/wifi/PasspointR1Provider;

    .line 72
    invoke-static {p3}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->passpointR1ProviderToPasspointR1WifiEntryKey(Landroid/net/wifi/PasspointR1Provider;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mKey:Ljava/lang/String;

    .line 74
    sget-object p2, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mPasspointLoginResultReceiver:Lcom/android/settingslib/wifi/PasspointR1WifiEntry$PasspointLoginResultReceiver;

    if-nez p2, :cond_0

    .line 75
    new-instance p2, Lcom/android/settingslib/wifi/PasspointR1WifiEntry$PasspointLoginResultReceiver;

    invoke-direct {p2, p0}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry$PasspointLoginResultReceiver;-><init>(Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)V

    sput-object p2, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mPasspointLoginResultReceiver:Lcom/android/settingslib/wifi/PasspointR1WifiEntry$PasspointLoginResultReceiver;

    .line 78
    :cond_0
    sget-object p2, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mPasspointLoginResultReceiver:Lcom/android/settingslib/wifi/PasspointR1WifiEntry$PasspointLoginResultReceiver;

    invoke-virtual {p2, p0}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry$PasspointLoginResultReceiver;->setPasspointR1Entry(Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)V

    .line 79
    sget-object p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mPasspointLoginResultReceiver:Lcom/android/settingslib/wifi/PasspointR1WifiEntry$PasspointLoginResultReceiver;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry$PasspointLoginResultReceiver;->registerReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)Landroid/net/Network;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static passpointR1ProviderToPasspointR1WifiEntryKey(Landroid/net/wifi/PasspointR1Provider;)Ljava/lang/String;
    .locals 2

    const-string v0, "Cannot create key with null PasspointR1Provider!"

    .line 169
    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PasspointR1WifiEntry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/PasspointR1Provider;->getDomainName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized canConnect()Z
    .locals 2

    monitor-enter p0

    .line 122
    :try_start_0
    iget v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 0

    monitor-enter p0

    .line 128
    :try_start_0
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    .line 129
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopRestrictingAutoJoinToSubscriptionId()V

    .line 130
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->startPasspointR1Provisioning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected connectionInfoMatches(Landroid/net/wifi/WifiInfo;)Z
    .locals 1

    .line 176
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointFqdn()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mPasspointR1Provider:Landroid/net/wifi/PasspointR1Provider;

    invoke-virtual {p0}, Landroid/net/wifi/PasspointR1Provider;->getDomainName()Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method getPasspointR1Provider()Landroid/net/wifi/PasspointR1Provider;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mPasspointR1Provider:Landroid/net/wifi/PasspointR1Provider;

    return-object p0
.end method

.method protected getScanResultDescription()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public declared-synchronized getSsid()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mSsid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSummary(Z)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_tap_to_sign_up:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTargetScanResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 163
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mCurrentScanResults:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mPasspointR1Provider:Landroid/net/wifi/PasspointR1Provider;

    invoke-virtual {v0}, Landroid/net/wifi/PasspointR1Provider;->getDomainName()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "exands.com"

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "exands Secure Wi-Fi"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-object v0

    .line 96
    :cond_0
    monitor-exit p0

    return-object v0

    .line 98
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mSsid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mSsid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setAlreadyProvisioned(Z)V
    .locals 0

    monitor-enter p0

    .line 195
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mIsAlreadyProvisioned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startPasspointR1Provisioning()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiPasspointProvision;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/WifiPasspointProvision;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mPasspointR1Provider:Landroid/net/wifi/PasspointR1Provider;

    new-instance v2, Lcom/android/settingslib/wifi/PasspointR1WifiEntry$PasspointR1WifiEntryProvisioningCallback;

    invoke-direct {v2, p0}, Lcom/android/settingslib/wifi/PasspointR1WifiEntry$PasspointR1WifiEntryProvisioningCallback;-><init>(Lcom/android/settingslib/wifi/PasspointR1WifiEntry;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/wifi/WifiPasspointProvision;->startR1SubscriptionProvisioning(Landroid/net/wifi/PasspointR1Provider;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V

    return-void
.end method

.method declared-synchronized updateScanResultInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 145
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mCurrentScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    iget-object v0, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mCurrentScanResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 152
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;->mSsid:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result p1

    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 157
    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 159
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
