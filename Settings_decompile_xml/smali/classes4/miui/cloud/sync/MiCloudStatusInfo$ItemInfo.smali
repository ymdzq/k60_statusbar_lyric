.class public Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;
.super Ljava/lang/Object;
.source "MiCloudStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/sync/MiCloudStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemInfo"
.end annotation


# instance fields
.field private mLocalizedName:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mUsed:J

.field final synthetic this$0:Lmiui/cloud/sync/MiCloudStatusInfo;


# direct methods
.method public constructor <init>(Lmiui/cloud/sync/MiCloudStatusInfo;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 299
    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->this$0:Lmiui/cloud/sync/MiCloudStatusInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p2, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mName:Ljava/lang/String;

    .line 301
    iput-object p3, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mLocalizedName:Ljava/lang/String;

    .line 302
    iput-wide p4, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mUsed:J

    return-void
.end method


# virtual methods
.method public getLocalizedName()Ljava/lang/String;
    .locals 0

    .line 310
    iget-object p0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mLocalizedName:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 306
    iget-object p0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getUsed()J
    .locals 2

    .line 314
    iget-wide v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mUsed:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemInfo{mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocalizedName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mLocalizedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUsed=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;->mUsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
