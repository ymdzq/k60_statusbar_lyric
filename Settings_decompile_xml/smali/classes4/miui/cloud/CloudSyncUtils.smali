.class public Lmiui/cloud/CloudSyncUtils;
.super Ljava/lang/Object;
.source "CloudSyncUtils.java"


# static fields
.field public static final AUTHORITY_CLOUD_BACKUP:Ljava/lang/String; = "micloud_cloud_backup"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUTHORITY_FIND_DEVICE:Ljava/lang/String; = "micloud_find_device"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CLOUD_APP_AUTHORITY:Ljava/lang/String; = "com.miui.backup.cloud.CloudAppProvider"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MMSLITE_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.xiaomi.mms.providers.SmsProvider"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_AUTHORITY:Ljava/lang/String; = "authority"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_CHANGE_SOURCE:Ljava/lang/String; = "change_source"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_STATUS:Ljava/lang/String; = "status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CloudSyncUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyseActivateSource(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    invoke-static {p0, p1, p2}, Lmiui/cloud/util/AnalyticsHelper;->analyseActivateSource(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static analyseActivateSource(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    invoke-static {p0, p1, p2, p3}, Lmiui/cloud/util/AnalyticsHelper;->analyseActivateSource(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static analyseActivateSource(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 161
    invoke-static {p0, p1, p2, p3, p4}, Lmiui/cloud/util/AnalyticsHelper;->analyseActivateSource(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static analyseMiCloudLoginEnable(Landroid/content/Context;ZZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    invoke-static {p0, p1, p2, p3}, Lmiui/cloud/util/AnalyticsHelper;->analyseMiCloudLoginEnable(Landroid/content/Context;ZZZ)V

    return-void
.end method

.method public static analyseMiCloudLoginEnable(Landroid/content/Context;ZZZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    invoke-static {p0, p1, p2, p3, p4}, Lmiui/cloud/util/AnalyticsHelper;->analyseMiCloudLoginEnable(Landroid/content/Context;ZZZZ)V

    return-void
.end method

.method public static clearAllSyncChangedLog(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    invoke-static {p0}, Lmiui/cloud/util/SyncStateChangedHelper;->clearAllSyncChangedLog(Landroid/content/Context;)V

    return-void
.end method

.method public static clearLocalWatermark(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public static clearLocalWatermark(Landroid/content/Context;Ljava/lang/String;JI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public static clearShouldPullAndUpdateLocalWatermark(Landroid/content/Context;JLjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public static clearShouldPullAndUpdateLocalWatermark(Landroid/content/Context;JLjava/lang/String;JI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public static getAllAuthorities(Landroid/accounts/Account;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 313
    invoke-static {p0, v0}, Lmiui/cloud/CloudSyncUtils;->getAllAuthorities(Landroid/accounts/Account;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAllAuthorities(Landroid/accounts/Account;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    if-nez p1, :cond_1

    new-array p1, p0, [Ljava/lang/String;

    .line 329
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v1

    .line 330
    array-length v2, v1

    :goto_0
    if-ge p0, v2, :cond_3

    aget-object v3, v1, p0

    .line 331
    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "com.xiaomi"

    iget-object v5, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 333
    iget-object v3, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-static {p0, p1, p2, p3}, Lmiui/cloud/util/MiCloudSyncUtils;->getAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getCurrentSyncSettingState(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/cloud/sync/data/SyncSettingState;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    invoke-static {p0}, Lmiui/cloud/util/SyncStateChangedHelper;->getCurrentSyncSettingState(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static getEnabledAuthorities(Landroid/accounts/Account;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 345
    invoke-static {p0, v0}, Lmiui/cloud/CloudSyncUtils;->getEnabledAuthorities(Landroid/accounts/Account;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getEnabledAuthorities(Landroid/accounts/Account;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 356
    :cond_0
    invoke-static {p0, p1}, Lmiui/cloud/CloudSyncUtils;->getAllAuthorities(Landroid/accounts/Account;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 358
    invoke-static {p0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getSyncEnabledWithActivation(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 2

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 227
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lmiui/cloud/CloudSyncUtils;->needActivate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    invoke-static {}, Lmiui/telephony/CloudTelephonyManager;->getMultiSimCount()I

    move-result v0

    if-ge p3, v0, :cond_3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_2

    .line 244
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p3, p1, p2}, Lmiui/cloud/CloudSyncUtils;->getAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    return v1

    .line 240
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "simIndex cannot be -1 when authority(%s) need activate"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 237
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "simIndex must be smaller than simCount"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "only support need activate authority"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 223
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context or account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSyncPrefDefaultSimIndex(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 283
    invoke-static {p1}, Lmiui/cloud/CloudSyncUtils;->getSyncPrefDefaultSimIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSyncPrefDefaultSimIndex(Ljava/lang/String;)I
    .locals 1

    .line 268
    invoke-static {p0}, Lmiui/cloud/CloudSyncUtils;->needActivate(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    .line 269
    invoke-static {}, Lmiui/telephony/CloudTelephonyManager;->getDefaultSlotId()I

    move-result p0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isAllSyncsOff(Landroid/content/Context;)Z
    .locals 3

    .line 290
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-string p0, "CloudSyncUtils"

    const-string v1, "Account is null in isAllSyncsOff()"

    .line 294
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 298
    :cond_0
    invoke-static {p0}, Lmiui/cloud/CloudSyncUtils;->getAllAuthorities(Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v1

    .line 300
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 301
    invoke-static {p0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public static isFindDeviceEnabled(Landroid/content/Context;Landroid/accounts/Account;)Z
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "CloudSyncUtils"

    const-string p1, "account is null in isFindDeviceEnabled()"

    .line 370
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "account"

    .line 373
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const-string v0, "extra_find_device_enabled"

    .line 375
    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static needActivate(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-static {p0}, Lmiui/cloud/util/MiCloudSyncUtils;->needActivate(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    invoke-static {p0, p1, p2, p3, p4}, Lmiui/cloud/util/MiCloudSyncUtils;->setAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setMiCloudSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    invoke-static {p0, p1, p2, p3, p4}, Lmiui/cloud/util/SyncStateChangedHelper;->setMiCloudSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setShouldPullFromServer(Landroid/content/Context;JLjava/lang/String;J)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static setSyncChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    invoke-static {p0, p1, p2, p3}, Lmiui/cloud/util/SyncStateChangedHelper;->setSyncChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setSyncTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public static shouldPullFromServer(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static shouldPullFromServer(Landroid/content/Context;Ljava/lang/String;JI)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static startMiCloudMemberActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 34
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->USE_PREVIEW:Z

    if-eqz v0, :cond_0

    const-string v0, "http://account.preview.n.xiaomi.net/pass/serviceLogin?callback=http%3A%2F%2Fmicloudweb.preview.n.xiaomi.com%2Fsts%3Fsign%3DLMx3DWB%252FO%252FtjMckaek2OtO0%252BkzQ%253D%26followup%3Dhttp%253A%252F%252Fmicloudweb.preview.n.xiaomi.com%252Fvip&sid=i.mi.com"

    goto :goto_0

    .line 36
    :cond_0
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->USE_MEMBER_DAILY:Z

    if-eqz v0, :cond_1

    const-string v0, "https://account.xiaomi.com/pass/serviceLogin?callback=https%3A%2F%2Fdaily.i.mi.com%2Fsts%3Fsign%3DGTIyREMRa%252Bf1eVmlJubCFg%252FK3eA%253D%26followup%3Dhttps%253A%252F%252Fdaily.i.mi.com%252Fvip&sid=i.mi.com&_locale=zh_CN"

    goto :goto_0

    :cond_1
    const-string v0, "https://account.xiaomi.com/pass/serviceLogin?callback=https%3A%2F%2Fi.mi.com%2Fsts%3Fsign%3Dn9zfyPtPHlxmLf0eYJmwASvEjEo%253D%26followup%3Dhttps%253A%252F%252Fi.mi.com%252Fvip&sid=i.mi.com"

    .line 40
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_url"

    .line 41
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extra_is_sso_url"

    const/4 v2, 0x1

    .line 42
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "extra_membership_source"

    .line 44
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xiaomi.action.MICLOUD_MEMBER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
