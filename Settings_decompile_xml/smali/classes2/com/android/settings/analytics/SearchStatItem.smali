.class public Lcom/android/settings/analytics/SearchStatItem;
.super Ljava/lang/Object;
.source "SearchStatItem.java"


# instance fields
.field private mClickedItemOrder:I

.field private mClickedResource:Ljava/lang/String;

.field private mIsAlreadyStat:Z

.field private mItemTitle:Ljava/lang/String;

.field private mKeyWork:Ljava/lang/String;

.field private mPrefKey:Ljava/lang/String;

.field private mSearchResultCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/android/settings/analytics/SearchStatItem;->mClickedItemOrder:I

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/settings/analytics/SearchStatItem;->mClickedResource:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/settings/analytics/SearchStatItem;->mPrefKey:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/settings/analytics/SearchStatItem;->mItemTitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/settings/analytics/SearchStatItem;->mIsAlreadyStat:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/settings/analytics/SearchStatItem;->mIsAlreadyStat:Z

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/android/settings/analytics/SearchStatItem;->mKeyWork:Ljava/lang/String;

    .line 60
    iput v0, p0, Lcom/android/settings/analytics/SearchStatItem;->mSearchResultCount:I

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/android/settings/analytics/SearchStatItem;->mClickedItemOrder:I

    .line 62
    iput-object v1, p0, Lcom/android/settings/analytics/SearchStatItem;->mClickedResource:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/android/settings/analytics/SearchStatItem;->mPrefKey:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/android/settings/analytics/SearchStatItem;->mItemTitle:Ljava/lang/String;

    return-void
.end method

.method public getKeyWork()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/settings/analytics/SearchStatItem;->mKeyWork:Ljava/lang/String;

    return-object p0
.end method

.method public setClickedItemOrder(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/android/settings/analytics/SearchStatItem;->mClickedItemOrder:I

    return-void
.end method

.method public setClickedResource(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/analytics/SearchStatItem;->mClickedResource:Ljava/lang/String;

    return-void
.end method

.method public setIsAlreadyStat(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/settings/analytics/SearchStatItem;->mIsAlreadyStat:Z

    return-void
.end method

.method public setItemTitle(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/analytics/SearchStatItem;->mItemTitle:Ljava/lang/String;

    return-void
.end method

.method public setKeyWork(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/settings/analytics/SearchStatItem;->mKeyWork:Ljava/lang/String;

    return-void
.end method

.method public setPrefKey(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/analytics/SearchStatItem;->mPrefKey:Ljava/lang/String;

    return-void
.end method

.method public setSearchResultCount(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/android/settings/analytics/SearchStatItem;->mSearchResultCount:I

    return-void
.end method

.method public traceSearchEvent(Z)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/settings/analytics/SearchStatItem;->mKeyWork:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/analytics/SearchStatItem;->mIsAlreadyStat:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "search_keyword"

    .line 73
    iget-object v1, p0, Lcom/android/settings/analytics/SearchStatItem;->mKeyWork:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget v0, p0, Lcom/android/settings/analytics/SearchStatItem;->mSearchResultCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "search_result_count"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget v0, p0, Lcom/android/settings/analytics/SearchStatItem;->mClickedItemOrder:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "search_item_click_order"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "search_item_click_resource"

    .line 76
    iget-object v1, p0, Lcom/android/settings/analytics/SearchStatItem;->mClickedResource:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "search_item_click_pref_key"

    .line 77
    iget-object v1, p0, Lcom/android/settings/analytics/SearchStatItem;->mPrefKey:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "search_item_click_item_title"

    .line 78
    iget-object p0, p0, Lcom/android/settings/analytics/SearchStatItem;->mItemTitle:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "search_item_click"

    .line 79
    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
