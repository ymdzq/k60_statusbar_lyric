.class public Lcom/android/settings/search/SearchResultGroupEntity;
.super Ljava/lang/Object;
.source "SearchResultGroupEntity.java"


# instance fields
.field public mAvgScore:D

.field public final mGroup:Ljava/lang/String;

.field private mGroupResultItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SearchResultGroupEntity;->mGroupResultItems:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Lcom/android/settings/search/SearchResultGroupEntity;->mGroup:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addResultItem(Lcom/android/settings/search/SearchResultItem;)Lcom/android/settings/search/SearchResultGroupEntity;
    .locals 4

    .line 15
    iget-object v0, p0, Lcom/android/settings/search/SearchResultGroupEntity;->mGroupResultItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-wide v0, p0, Lcom/android/settings/search/SearchResultGroupEntity;->mAvgScore:D

    iget-wide v2, p1, Lcom/android/settings/search/SearchResultItem;->score:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/search/SearchResultGroupEntity;->mAvgScore:D

    return-object p0
.end method

.method public getGroupResultItems()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lcom/android/settings/search/SearchResultGroupEntity;->mGroupResultItems:Ljava/util/ArrayList;

    return-object p0
.end method
