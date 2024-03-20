.class public Lmiui/cloud/util/SyncAlertHelper;
.super Ljava/lang/Object;
.source "SyncAlertHelper.java"


# static fields
.field private static final DAY:J = 0x5265c00L

.field private static final HOUR:J = 0x36ee80L

.field private static final MINUTE:J = 0xea60L

.field private static final SECOND:J = 0x3e8L

.field private static final TWO_WEEK:J = 0x48190800L

.field private static final WEEK:J = 0x240c8400L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleSyncAlert(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-static {p0, p1}, Lmiui/cloud/util/SyncAlertHelper;->startSyncAlertDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    invoke-static {p0, p1}, Lmiui/cloud/util/SyncAlertRecordHelper;->recordTime(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static hasUnsyncedData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 84
    :try_start_0
    invoke-static {p0, p1}, Lmiui/cloud/sync/SyncInfoHelper;->getUnsyncedDataCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lmiui/cloud/sync/SyncInfoUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isNeedAlert(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-wide/32 v0, 0x48190800

    .line 39
    invoke-static {v0, v1, p0, p1}, Lmiui/cloud/util/SyncAlertRecordHelper;->within(JLandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 44
    :cond_0
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 45
    invoke-static {v0, p1}, Lmiui/cloud/util/SyncAlertHelper;->isSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 47
    invoke-static {p0, p1, v2, v3}, Lmiui/cloud/util/SyncAlertRecordHelper;->recordTime(Landroid/content/Context;Ljava/lang/String;J)V

    return v1

    .line 52
    :cond_1
    invoke-static {p0, p1}, Lmiui/cloud/util/SyncAlertHelper;->hasUnsyncedData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static isSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1

    .line 69
    invoke-static {}, Lmiui/cloud/util/SyncAutoSettingUtil;->getXiaomiGlobalSyncAutomatically()Z

    move-result v0

    .line 70
    invoke-static {p0, p1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static recordTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-static {p0, p1}, Lmiui/cloud/util/SyncAlertRecordHelper;->recordTime(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static startSyncAlertDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 109
    new-instance p1, Landroid/content/Intent;

    const-string v0, "action_sync_alert"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.cloudservice"

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
