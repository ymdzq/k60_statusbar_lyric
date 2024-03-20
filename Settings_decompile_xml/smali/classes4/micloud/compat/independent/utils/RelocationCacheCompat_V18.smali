.class Lmicloud/compat/independent/utils/RelocationCacheCompat_V18;
.super Lmicloud/compat/independent/utils/RelocationCacheCompat_Base;
.source "RelocationCacheCompat_V18.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lmicloud/compat/independent/utils/RelocationCacheCompat_Base;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheHostList(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 p0, 0x3

    const-string v0, "Micloud"

    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "set hostList to settings"

    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "micloud_hosts_v2"

    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public cacheXiaomiAccountName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 p0, 0x3

    const-string v0, "Micloud"

    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set accountName: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to settings"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "micloud_accountname_v2"

    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public getCachedHostList(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x3

    const-string v0, "Micloud"

    .line 38
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "get hostList from settings"

    .line 39
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "micloud_hosts_v2"

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCachedXiaomiAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x3

    const-string v0, "Micloud"

    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "get accountName from settings"

    .line 23
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "micloud_accountname_v2"

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
