.class public Lcom/android/settings/recommend/bean/RecommendPage;
.super Ljava/lang/Object;
.source "RecommendPage.java"


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/recommend/bean/RecommendItem;",
            ">;"
        }
    .end annotation
.end field

.field private sourcePageIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/recommend/bean/RecommendItem;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/android/settings/recommend/bean/RecommendPage;->items:Ljava/util/List;

    return-object p0
.end method

.method public getSourcePageIndex()I
    .locals 0

    .line 12
    iget p0, p0, Lcom/android/settings/recommend/bean/RecommendPage;->sourcePageIndex:I

    return p0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/recommend/bean/RecommendItem;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/android/settings/recommend/bean/RecommendPage;->items:Ljava/util/List;

    return-void
.end method

.method public setSourcePageIndex(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/android/settings/recommend/bean/RecommendPage;->sourcePageIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendPage{sourcePageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/recommend/bean/RecommendPage;->sourcePageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/recommend/bean/RecommendPage;->items:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
