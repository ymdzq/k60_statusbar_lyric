.class public Lcom/android/settings/search/appseparate/PreMatchData;
.super Ljava/lang/Object;
.source "PreMatchData.java"


# static fields
.field private static final ITEMS:Ljava/lang/String; = "items"

.field static final PACKAGE_LIST:Ljava/lang/String; = "packageList"

.field static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TAG:Ljava/lang/String; = "PreMatchData"

.field static final VERSION_CODE:Ljava/lang/String; = "versionCode"


# instance fields
.field private mIsQueryProviderComplete:Z

.field private final mPreMatchDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/search/appseparate/SearchRawData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVersionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/settings/search/appseparate/PreMatchData;->mIsQueryProviderComplete:Z

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/appseparate/PreMatchData;->mPreMatchDataMap:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/appseparate/PreMatchData;->mVersionCodeMap:Ljava/util/Map;

    return-void
.end method

.method static fromJson(Lorg/json/JSONObject;)Lcom/android/settings/search/appseparate/PreMatchData;
    .locals 10

    .line 61
    new-instance v0, Lcom/android/settings/search/appseparate/PreMatchData;

    invoke-direct {v0}, Lcom/android/settings/search/appseparate/PreMatchData;-><init>()V

    const-string/jumbo v1, "packageList"

    .line 62
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 63
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 64
    invoke-static {p0}, Lcom/android/settings/search/appseparate/PreMatchData;->isJSONArrayEmpty(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 67
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 68
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 72
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "items"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 73
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    invoke-static {v5}, Lcom/android/settings/search/appseparate/PreMatchData;->isJSONArrayEmpty(Lorg/json/JSONArray;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    move v7, v2

    .line 81
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 84
    :try_start_1
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    const-class v9, Lcom/android/settings/search/appseparate/SearchRawData;

    invoke-virtual {v1, v8, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/search/appseparate/SearchRawData;

    .line 90
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v0, v6, v4}, Lcom/android/settings/search/appseparate/PreMatchData;->putPreMatchDataToMap(Ljava/lang/String;Ljava/util/List;)V

    :catch_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static isEmpty(Lcom/android/settings/search/appseparate/PreMatchData;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 57
    iget-object p0, p0, Lcom/android/settings/search/appseparate/PreMatchData;->mPreMatchDataMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isJSONArrayEmpty(Lorg/json/JSONArray;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 98
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public addVersionCodeToMap(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/search/appseparate/PreMatchData;->mVersionCodeMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getIsQueryProviderComplete()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/android/settings/search/appseparate/PreMatchData;->mIsQueryProviderComplete:Z

    return p0
.end method

.method public getPreMatchDataMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/search/appseparate/SearchRawData;",
            ">;>;"
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/android/settings/search/appseparate/PreMatchData;->mPreMatchDataMap:Ljava/util/Map;

    return-object p0
.end method

.method public putPreMatchDataToMap(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/search/appseparate/SearchRawData;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/android/settings/search/appseparate/PreMatchData;->mPreMatchDataMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIsQueryProviderComplete(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/settings/search/appseparate/PreMatchData;->mIsQueryProviderComplete:Z

    return-void
.end method

.method toJson()Lorg/json/JSONObject;
    .locals 9

    .line 102
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 103
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 104
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/search/appseparate/PreMatchData;->mPreMatchDataMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 108
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 109
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "packageName"

    .line 110
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo v7, "versionCode"

    .line 112
    iget-object v8, p0, Lcom/android/settings/search/appseparate/PreMatchData;->mVersionCodeMap:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 114
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/search/appseparate/SearchRawData;

    .line 115
    invoke-virtual {v2, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 116
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    const-string v4, "items"

    .line 118
    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {v1}, Lcom/android/settings/search/appseparate/PreMatchData;->isJSONArrayEmpty(Lorg/json/JSONArray;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string/jumbo p0, "packageList"

    .line 122
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "write json error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PreMatchData"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-object v0
.end method
