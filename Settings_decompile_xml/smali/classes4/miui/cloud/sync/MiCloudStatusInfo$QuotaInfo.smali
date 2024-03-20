.class public Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
.super Ljava/lang/Object;
.source "MiCloudStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/sync/MiCloudStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuotaInfo"
.end annotation


# static fields
.field public static final WARN_FULL:Ljava/lang/String; = "full"

.field public static final WARN_LOW_PERCENT:Ljava/lang/String; = "low_percent"

.field public static final WARN_NONE:Ljava/lang/String; = "none"


# instance fields
.field private mItemInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTotal:J

.field private mUsed:J

.field private mWarn:Ljava/lang/String;

.field private mYearlyPackageCreateTime:J

.field private mYearlyPackageExpireTime:J

.field private mYearlyPackageSize:J

.field private mYearlyPackageType:Ljava/lang/String;

.field final synthetic this$0:Lmiui/cloud/sync/MiCloudStatusInfo;


# direct methods
.method public constructor <init>(Lmiui/cloud/sync/MiCloudStatusInfo;JJLjava/lang/String;Ljava/lang/String;JJJ)V
    .locals 0

    .line 218
    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->this$0:Lmiui/cloud/sync/MiCloudStatusInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-wide p2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mTotal:J

    .line 220
    iput-wide p4, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mUsed:J

    .line 221
    iput-object p6, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mWarn:Ljava/lang/String;

    .line 222
    iput-object p7, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageType:Ljava/lang/String;

    .line 223
    iput-wide p8, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageSize:J

    .line 224
    iput-wide p10, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageCreateTime:J

    .line 225
    iput-wide p12, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageExpireTime:J

    .line 226
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addItemInfo(Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;)V
    .locals 0

    .line 230
    iget-object p0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getItemInfoList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object p0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTotal()J
    .locals 2

    .line 234
    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mTotal:J

    return-wide v0
.end method

.method public getUsed()J
    .locals 2

    .line 238
    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mUsed:J

    return-wide v0
.end method

.method public getWarn()Ljava/lang/String;
    .locals 0

    .line 242
    iget-object p0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mWarn:Ljava/lang/String;

    return-object p0
.end method

.method public getYearlyPackageCreateTime()J
    .locals 2

    .line 254
    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageCreateTime:J

    return-wide v0
.end method

.method public getYearlyPackageExpireTime()J
    .locals 2

    .line 258
    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageExpireTime:J

    return-wide v0
.end method

.method public getYearlyPackageSize()J
    .locals 2

    .line 250
    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageSize:J

    return-wide v0
.end method

.method public getYearlyPackageType()Ljava/lang/String;
    .locals 0

    .line 246
    iget-object p0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageType:Ljava/lang/String;

    return-object p0
.end method

.method public isSpaceFull()Z
    .locals 1

    const-string v0, "full"

    .line 266
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getWarn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSpaceLowPercent()Z
    .locals 1

    const-string v0, "low_percent"

    .line 273
    invoke-virtual {p0}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getWarn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuotaInfo{mTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mUsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mWarn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mWarn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mYearlyPackageType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mYearlyPackageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mYearlyPackageCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mYearlyPackageExpireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mYearlyPackageExpireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mItemInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
