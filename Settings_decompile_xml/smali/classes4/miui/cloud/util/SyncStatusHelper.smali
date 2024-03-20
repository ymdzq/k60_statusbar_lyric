.class public Lmiui/cloud/util/SyncStatusHelper;
.super Ljava/lang/Object;
.source "SyncStatusHelper.java"


# static fields
.field public static final STATUS_ABNORMAL:I = -0x1

.field public static final STATUS_FULL:I = 0x2

.field public static final STATUS_LOW:I = 0x1

.field public static final STATUS_NORMAL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncStatus(Landroid/content/Context;)I
    .locals 1

    .line 15
    invoke-static {p0}, Lmiui/cloud/sync/MiCloudStatusInfo;->fromUserData(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceFull()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 25
    :cond_2
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->isSpaceLowPercent()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
