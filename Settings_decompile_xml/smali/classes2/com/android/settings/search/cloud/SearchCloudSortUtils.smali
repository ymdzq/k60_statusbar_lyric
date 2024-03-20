.class public Lcom/android/settings/search/cloud/SearchCloudSortUtils;
.super Ljava/lang/Object;
.source "SearchCloudSortUtils.java"


# static fields
.field private static SEARCH_CLOUD_SORT_FILE:Ljava/lang/String; = "search_cloud_sort_data.json"

.field private static TAG:Ljava/lang/String; = "SearchCloudSortUtils"

.field private static volatile mInstance:Lcom/android/settings/search/cloud/SearchCloudSortUtils;


# instance fields
.field private cloudWeight:Ljava/lang/Double;

.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private extra:Ljava/lang/String;

.field private mSeachCouldCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-object v0, p0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->mSeachCouldCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->mSeachCouldCache:Ljava/util/HashMap;

    .line 46
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    iget-object v2, p0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->mSeachCouldCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    if-nez p1, :cond_1

    return-void

    .line 50
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 51
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    sget-object v2, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->SEARCH_CLOUD_SORT_FILE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->readJSONObject(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 53
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 54
    const-class v3, Lcom/android/settings/search/cloud/CloudSortData;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/search/cloud/CloudSortData;

    .line 55
    iget-object v2, p1, Lcom/android/settings/search/cloud/CloudSortData;->sortResources:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->mSeachCouldCache:Ljava/util/HashMap;

    .line 56
    iget-object v2, p1, Lcom/android/settings/search/cloud/CloudSortData;->version:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->version:Ljava/lang/String;

    .line 57
    iget-object v2, p1, Lcom/android/settings/search/cloud/CloudSortData;->extra:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->extra:Ljava/lang/String;

    .line 58
    iget-object p1, p1, Lcom/android/settings/search/cloud/CloudSortData;->cloudWeight:Ljava/lang/Double;

    iput-object p1, p0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->cloudWeight:Ljava/lang/Double;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 61
    sget-object v0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read file named search_cloud_sort, init search Cloud data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/search/cloud/SearchCloudSortUtils;
    .locals 2

    .line 69
    sget-object v0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->mInstance:Lcom/android/settings/search/cloud/SearchCloudSortUtils;

    if-nez v0, :cond_1

    .line 70
    const-class v0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->mInstance:Lcom/android/settings/search/cloud/SearchCloudSortUtils;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/android/settings/search/cloud/SearchCloudSortUtils;

    invoke-direct {v1, p0}, Lcom/android/settings/search/cloud/SearchCloudSortUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->mInstance:Lcom/android/settings/search/cloud/SearchCloudSortUtils;

    .line 74
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 76
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->mInstance:Lcom/android/settings/search/cloud/SearchCloudSortUtils;

    return-object p0
.end method

.method private static readJSONObject(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "close InputStream failed"

    .line 100
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x400

    new-array v3, v2, [C

    :goto_0
    const/4 v4, 0x0

    .line 105
    :try_start_0
    invoke-virtual {v1, v3, v4, v2}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v5

    if-lez v5, :cond_0

    .line 106
    invoke-virtual {p0, v3, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 113
    :catch_0
    sget-object v1, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    .line 111
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 113
    :catch_1
    sget-object v1, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_2
    throw p0
.end method


# virtual methods
.method public contain(Ljava/lang/String;)Z
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->get(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Double;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->mSeachCouldCache:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCacheMap()Ljava/util/HashMap;
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

    .line 96
    iget-object p0, p0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->mSeachCouldCache:Ljava/util/HashMap;

    return-object p0
.end method

.method public getCloudWeight()Ljava/lang/Double;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->cloudWeight:Ljava/lang/Double;

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->mSeachCouldCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
