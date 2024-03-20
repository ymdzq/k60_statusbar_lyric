.class public Lcom/android/settings/vpn2/VpnManager;
.super Ljava/lang/Object;
.source "VpnManager.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mUserManager:Landroid/os/UserManager;

.field final mVpmManager:Landroid/net/VpnManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VpnManager"

    .line 31
    iput-object v0, p0, Lcom/android/settings/vpn2/VpnManager;->TAG:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnManager;->mUserManager:Landroid/os/UserManager;

    .line 45
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "vpn_management"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/VpnManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnManager;->mVpmManager:Landroid/net/VpnManager;

    return-void
.end method

.method private isExistInThirdPartyAppList(Ljava/lang/String;)Z
    .locals 3

    .line 116
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnManager;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getAdvancedVpnFeatureProvider()Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;

    move-result-object v0

    const/4 v1, 0x1

    .line 116
    invoke-static {p0, v1, v0}, Lcom/android/settings/vpn2/VpnSettings;->getVpnApps(Landroid/content/Context;ZLcom/android/settings/vpn2/AdvancedVpnFeatureProvider;)Ljava/util/List;

    move-result-object p0

    .line 118
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn2/AppVpnInfo;

    .line 119
    iget-object v2, v2, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public connect(Lcom/android/internal/net/VpnProfile;Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VPN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/LegacyVpnProfileStore;->put(Ljava/lang/String;[B)Z

    .line 139
    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnManager;->disconnect(Ljava/lang/String;)V

    .line 151
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnManager;->mVpmManager:Landroid/net/VpnManager;

    invoke-virtual {p0, p1}, Landroid/net/VpnManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-eqz p2, :cond_1

    .line 154
    sget p0, Lcom/android/settings/R$string;->vpn_no_network:I

    const/4 p1, 0x1

    invoke-static {p2, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 3

    const-string v0, "[Legacy VPN]"

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnManager;->mVpmManager:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnManager;->mVpmManager:Landroid/net/VpnManager;

    .line 182
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 181
    invoke-virtual {p1, v0, v0, v1}, Landroid/net/VpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed to disconnect"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnManager;->mVpmManager:Landroid/net/VpnManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object p0

    return-object p0
.end method

.method public getVpnConnectionStatus()I
    .locals 4

    const/4 v0, -0x1

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnManager;->mVpmManager:Landroid/net/VpnManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/VpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    iget v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 99
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnManager;->mVpmManager:Landroid/net/VpnManager;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/net/VpnManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/vpn2/VpnManager;->isExistInThirdPartyAppList(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    :catch_0
    :cond_2
    return v0
.end method

.method public getVpnNumbers()I
    .locals 3

    const-string v0, "VPN_"

    .line 52
    invoke-static {v0}, Landroid/security/LegacyVpnProfileStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iget-object p0, p0, Lcom/android/settings/vpn2/VpnManager;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getAdvancedVpnFeatureProvider()Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;

    move-result-object v1

    const/4 v2, 0x1

    .line 53
    invoke-static {p0, v2, v1}, Lcom/android/settings/vpn2/VpnSettings;->getVpnApps(Landroid/content/Context;ZLcom/android/settings/vpn2/AdvancedVpnFeatureProvider;)Ljava/util/List;

    move-result-object p0

    .line 54
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
