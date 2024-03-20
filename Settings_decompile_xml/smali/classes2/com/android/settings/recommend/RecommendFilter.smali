.class public Lcom/android/settings/recommend/RecommendFilter;
.super Ljava/lang/Object;
.source "RecommendFilter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RecommendFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListByPageIndex(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/recommend/bean/RecommendItem;",
            ">;"
        }
    .end annotation

    .line 14
    invoke-static {p1}, Lcom/android/settings/recommend/RecommendManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/recommend/RecommendManager;

    move-result-object p0

    .line 15
    invoke-virtual {p0, p2}, Lcom/android/settings/recommend/RecommendManager;->getRecommendItemList(I)Ljava/util/List;

    move-result-object p0

    const-string p1, "RecommendFilter"

    if-eqz p0, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getListByPageIndex not found:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
