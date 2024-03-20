.class public Lcom/android/settings/recommend/bean/RecommendResult;
.super Ljava/lang/Object;
.source "RecommendResult.java"


# instance fields
.field private pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/recommend/bean/RecommendPage;",
            ">;"
        }
    .end annotation
.end field

.field private strategy:Ljava/lang/String;

.field private verison:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/recommend/bean/RecommendPage;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/android/settings/recommend/bean/RecommendResult;->pages:Ljava/util/List;

    return-object p0
.end method

.method public getStrategy()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/settings/recommend/bean/RecommendResult;->strategy:Ljava/lang/String;

    return-object p0
.end method

.method public getVerison()I
    .locals 0

    .line 14
    iget p0, p0, Lcom/android/settings/recommend/bean/RecommendResult;->verison:I

    return p0
.end method

.method public setPages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/recommend/bean/RecommendPage;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/android/settings/recommend/bean/RecommendResult;->pages:Ljava/util/List;

    return-void
.end method

.method public setStrategy(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/android/settings/recommend/bean/RecommendResult;->strategy:Ljava/lang/String;

    return-void
.end method

.method public setVerison(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/android/settings/recommend/bean/RecommendResult;->verison:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendResult{verison="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/recommend/bean/RecommendResult;->verison:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", strategy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/recommend/bean/RecommendResult;->strategy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", pages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/recommend/bean/RecommendResult;->pages:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
