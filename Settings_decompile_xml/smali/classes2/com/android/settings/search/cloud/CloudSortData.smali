.class public Lcom/android/settings/search/cloud/CloudSortData;
.super Ljava/lang/Object;
.source "CloudSortData.java"


# instance fields
.field cloudWeight:Ljava/lang/Double;

.field extra:Ljava/lang/String;

.field sortResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/cloud/CloudSortData;->cloudWeight:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getCloudWeight()Ljava/lang/Double;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/search/cloud/CloudSortData;->cloudWeight:Ljava/lang/Double;

    return-object p0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settings/search/cloud/CloudSortData;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public getSortResources()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/android/settings/search/cloud/CloudSortData;->sortResources:Ljava/util/HashMap;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/android/settings/search/cloud/CloudSortData;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setCloudWeight(Ljava/lang/Double;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/settings/search/cloud/CloudSortData;->cloudWeight:Ljava/lang/Double;

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/settings/search/cloud/CloudSortData;->extra:Ljava/lang/String;

    return-void
.end method

.method public setSortResources(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/android/settings/search/cloud/CloudSortData;->sortResources:Ljava/util/HashMap;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/android/settings/search/cloud/CloudSortData;->version:Ljava/lang/String;

    return-void
.end method
