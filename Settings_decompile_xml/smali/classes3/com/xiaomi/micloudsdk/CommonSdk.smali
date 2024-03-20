.class public Lcom/xiaomi/micloudsdk/CommonSdk;
.super Ljava/lang/Object;
.source "CommonSdk.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static getMiCloudMemberStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/sync/VipInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/exception/UnretriableException;,
            Lcom/xiaomi/opensdk/exception/RetriableException;,
            Lcom/xiaomi/opensdk/exception/AuthenticationException;
        }
    .end annotation

    .line 27
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getMiCloudMemberStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/sync/VipInfo;

    move-result-object p0

    return-object p0
.end method
