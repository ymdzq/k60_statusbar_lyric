.class public Lmiui/cloud/external/CloudSysHelper;
.super Ljava/lang/Object;
.source "CloudSysHelper.java"


# static fields
.field private static final MAIN_SYNCS_WITH_PKG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CloudSysHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmiui/cloud/external/CloudSysHelper;->MAIN_SYNCS_WITH_PKG:Ljava/util/Map;

    const-string v1, "sms"

    const-string v2, "com.android.mms"

    .line 60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.android.contacts"

    .line 61
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "call_log"

    .line 62
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllMiCloudSyncOff(Landroid/content/Context;)Z
    .locals 0

    .line 53
    invoke-static {p0}, Lmiui/cloud/external/CloudSysHelper;->isMiCloudMainSyncItemsOff(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isMiCloudMainSyncItemsOff(Landroid/content/Context;)Z
    .locals 4

    .line 70
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "CloudSysHelper"

    if-nez v0, :cond_0

    const-string p0, "Account is null in isMainSyncsOff()"

    .line 74
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 79
    :cond_0
    invoke-static {}, Lmiui/cloud/util/SyncAutoSettingUtil;->getXiaomiGlobalSyncAutomatically()Z

    move-result v3

    if-nez v3, :cond_1

    const-string p0, "Master sync is off in isMainSyncsOff()"

    .line 80
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 84
    :cond_1
    new-instance v3, Lmiui/cloud/AuthoritiesModel;

    invoke-direct {v3, p0, v0}, Lmiui/cloud/AuthoritiesModel;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 85
    invoke-virtual {v3}, Lmiui/cloud/AuthoritiesModel;->getAllAuthorities()Lmiui/cloud/AuthoritiesModel;

    move-result-object p0

    sget-object v3, Lmiui/cloud/AuthoritiesModel;->UNAVAILABLE_AUTHORITIES_FILTER:Lmiui/cloud/AuthoritiesModel$IFilter;

    .line 86
    invoke-virtual {p0, v3}, Lmiui/cloud/AuthoritiesModel;->filterBy(Lmiui/cloud/AuthoritiesModel$IFilter;)Lmiui/cloud/AuthoritiesModel;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lmiui/cloud/AuthoritiesModel;->toList()Ljava/util/List;

    move-result-object p0

    .line 89
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_3
    const-string p0, "all available authorities sync off"

    .line 94
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isXiaomiAccountPresent(Landroid/content/Context;)Z
    .locals 0

    .line 44
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static promptEnableAllMiCloudSync(Landroid/content/Context;)V
    .locals 0

    .line 102
    invoke-static {p0}, Lmiui/cloud/external/CloudSysHelper;->startMiCloudInfoSettingsAcitivity(Landroid/content/Context;)V

    return-void
.end method

.method public static promptEnableFindDevice(Landroid/content/Context;)V
    .locals 0

    .line 109
    invoke-static {p0}, Lmiui/cloud/external/CloudSysHelper;->startMiCloudInfoSettingsAcitivity(Landroid/content/Context;)V

    return-void
.end method

.method public static startMiCloudInfoSettingsAcitivity(Landroid/content/Context;)V
    .locals 2

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.action.MICLOUD_INFO_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
