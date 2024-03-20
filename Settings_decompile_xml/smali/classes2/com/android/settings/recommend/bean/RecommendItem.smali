.class public Lcom/android/settings/recommend/bean/RecommendItem;
.super Ljava/lang/Object;
.source "RecommendItem.java"


# instance fields
.field private calcRank:I

.field private category:I

.field private configRank:I

.field private extra:Landroid/os/Bundle;

.field private intent:Ljava/lang/String;

.field private intentType:I

.field private itemFlag:I

.field private targetPageIndex:I

.field private targetPageTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalcRank()I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/settings/recommend/bean/RecommendItem;->calcRank:I

    return p0
.end method

.method public getCategory()I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/settings/recommend/bean/RecommendItem;->category:I

    return p0
.end method

.method public getConfigRank()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/settings/recommend/bean/RecommendItem;->configRank:I

    return p0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/recommend/bean/RecommendItem;->extra:Landroid/os/Bundle;

    return-object p0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settings/recommend/bean/RecommendItem;->intent:Ljava/lang/String;

    return-object p0
.end method

.method public getIntentType()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/android/settings/recommend/bean/RecommendItem;->intentType:I

    return p0
.end method

.method public getItemFlag()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/settings/recommend/bean/RecommendItem;->itemFlag:I

    return p0
.end method

.method public getTargetPageIndex()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/settings/recommend/bean/RecommendItem;->targetPageIndex:I

    return p0
.end method

.method public getTargetPageTitle()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/recommend/bean/RecommendItem;->targetPageTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setCalcRank(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->calcRank:I

    return-void
.end method

.method public setCategory(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->category:I

    return-void
.end method

.method public setConfigRank(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->configRank:I

    return-void
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->extra:Landroid/os/Bundle;

    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->intent:Ljava/lang/String;

    return-void
.end method

.method public setIntentType(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->intentType:I

    return-void
.end method

.method public setItemFlag(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->itemFlag:I

    return-void
.end method

.method public setTargetPageIndex(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->targetPageIndex:I

    return-void
.end method

.method public setTargetPageTitle(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->targetPageTitle:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecommendItem{sourcePageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->targetPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourcePageTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->targetPageTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", configRank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->configRank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calcRank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->calcRank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", itemFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->itemFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/recommend/bean/RecommendItem;->intent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/recommend/bean/RecommendItem;->intentType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
