.class final Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;
.super Ljava/lang/Object;
.source "SplitInfoManagerImpl.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitInfoManagerImpl"


# instance fields
.field private splitDetailsRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;",
            ">;"
        }
    .end annotation
.end field

.field private versionManager:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->splitDetailsRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static createInputStreamFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 274
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private createSplitDetailsForDefaultVersion(Landroid/content/Context;Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;
    .locals 6

    const-string p0, "SplitInfoManagerImpl"

    const/4 v0, 0x0

    .line 195
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qigsaw/qigsaw_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".json"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default split file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 198
    invoke-static {p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->parseSplitContentsForDefaultVersion(Landroid/content/Context;Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object p1

    const-string p2, "Cost %d mil-second to parse default split info"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {p0, p2, v3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string p2, "Failed to create default split info!"

    new-array v0, v0, [Ljava/lang/Object;

    .line 202
    invoke-static {p0, p1, p2, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private createSplitDetailsForNewVersion(Ljava/io/File;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;
    .locals 7

    const-string v0, "SplitInfoManagerImpl"

    const/4 v1, 0x0

    .line 209
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated split file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 211
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->parseSplitContentsForNewVersion(Ljava/io/File;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object p0

    const-string p1, "Cost %d mil-second to parse updated split info"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, p1, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "Failed to create updated split info!"

    new-array v1, v1, [Ljava/lang/Object;

    .line 215
    invoke-static {v0, p0, p1, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private declared-synchronized getOrCreateSplitDetails(Landroid/content/Context;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;
    .locals 7

    monitor-enter p0

    .line 221
    :try_start_0
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->getSplitInfoVersionManager()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;

    move-result-object v0

    .line 222
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->getSplitDetails()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object v1

    if-nez v1, :cond_4

    .line 224
    invoke-interface {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-interface {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;->getDefaultVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0x5f

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-le v5, v3, :cond_0

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-le v5, v3, :cond_1

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1.2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v3, "SplitInfoManagerImpl"

    const-string v4, "currentVersion : %s defaultVersion : %s"

    .line 234
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    invoke-direct {p0, p1, v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->createSplitDetailsForDefaultVersion(Landroid/content/Context;Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object p1

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 239
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-interface {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;->getRootDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qigsaw_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->createSplitDetailsForNewVersion(Ljava/io/File;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object p1

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    if-eqz v1, :cond_3

    .line 243
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->getQigsawId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 244
    monitor-exit p0

    return-object p1

    .line 247
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->splitDetailsRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getSplitDetails()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->splitDetailsRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    return-object p0
.end method

.method private getSplitInfoVersionManager()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->versionManager:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;

    return-object p0
.end method

.method private static parseSplitContentsForDefaultVersion(Landroid/content/Context;Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/common/CompatBundle;->instance:Lcom/iqiyi/android/qigsaw/core/common/ICompatBundle;

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/ICompatBundle;->readDefaultSplitVersionContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->createInputStreamFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->readInputStreamContent(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 257
    :goto_0
    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->parseSplitsContent(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object p0

    return-object p0
.end method

.method private parseSplitContentsForNewVersion(Ljava/io/File;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 263
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->readInputStreamContent(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->parseSplitsContent(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSplitsContent(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 301
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 302
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "qigsawId"

    .line 303
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "appVersionName"

    .line 304
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "updateSplits"

    .line 305
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/16 v17, 0x0

    if-eqz v4, :cond_2

    .line 307
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 308
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v7, v17

    .line 309
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 310
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 311
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v18, v6

    goto :goto_1

    :cond_2
    move-object/from16 v18, v1

    :goto_1
    const-string/jumbo v4, "splitEntryFragments"

    .line 314
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 316
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 317
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v7, v17

    .line 318
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 319
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 320
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v19, v6

    goto :goto_3

    :cond_4
    move-object/from16 v19, v1

    :goto_3
    const-string/jumbo v4, "splits"

    .line 323
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_10

    move/from16 v4, v17

    .line 327
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_f

    .line 328
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "builtIn"

    .line 329
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string/jumbo v7, "splitName"

    .line 330
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v7, "version"

    .line 331
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "minSdkVersion"

    .line 332
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v7, "dexNumber"

    .line 333
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v7, "workProcesses"

    .line 334
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 336
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 337
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v13, v17

    .line 338
    :goto_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_5

    .line 339
    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_5
    move-object v13, v8

    goto :goto_6

    :cond_6
    move-object v13, v1

    :goto_6
    const-string v7, "dependencies"

    .line 342
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 344
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_8

    .line 345
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    invoke-direct {v8, v14}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v14, v17

    .line 346
    :goto_7
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v14, v1, :cond_7

    .line 347
    invoke-virtual {v7, v14}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_7
    move-object v14, v8

    goto :goto_8

    :cond_8
    const/4 v14, 0x0

    :goto_8
    const-string v1, "apkData"

    .line 350
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 351
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-eqz v7, :cond_e

    .line 354
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 p0, v3

    move/from16 v7, v17

    .line 355
    :goto_9
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    move-object/from16 v20, v5

    const-string/jumbo v5, "size"

    move/from16 v21, v4

    const-string v4, "md5"

    move-object/from16 v22, v2

    const-string v2, "abi"

    if-ge v7, v3, :cond_9

    .line 356
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 357
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v2, "url"

    .line 358
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 359
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 360
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v27

    .line 361
    new-instance v2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v28}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v20

    move/from16 v4, v21

    move-object/from16 v2, v22

    goto :goto_9

    :cond_9
    const-string v1, "libData"

    .line 363
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 365
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_d

    .line 366
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v6, v17

    .line 367
    :goto_a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 368
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    move-object/from16 v16, v1

    .line 369
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v23, v2

    const-string v2, "jniLibs"

    .line 370
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 371
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_b

    .line 372
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v24

    if-lez v24, :cond_b

    move-object/from16 v24, v8

    move-object/from16 v25, v14

    move/from16 v8, v17

    .line 373
    :goto_b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v8, v14, :cond_a

    .line 374
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    move-object/from16 v26, v2

    const-string v2, "name"

    .line 375
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v27, v13

    .line 376
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move/from16 v28, v11

    move/from16 v29, v12

    .line 377
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 378
    new-instance v14, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData$Lib;

    invoke-direct {v14, v2, v13, v11, v12}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData$Lib;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 379
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v26

    move-object/from16 v13, v27

    move/from16 v11, v28

    move/from16 v12, v29

    goto :goto_b

    :cond_a
    move/from16 v28, v11

    move/from16 v29, v12

    move-object/from16 v27, v13

    goto :goto_c

    :cond_b
    move-object/from16 v24, v8

    move/from16 v28, v11

    move/from16 v29, v12

    move-object/from16 v27, v13

    move-object/from16 v25, v14

    .line 382
    :goto_c
    new-instance v2, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;

    invoke-direct {v2, v1, v7}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 383
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    move-object/from16 v8, v24

    move-object/from16 v14, v25

    move-object/from16 v13, v27

    move/from16 v11, v28

    move/from16 v12, v29

    goto/16 :goto_a

    :cond_c
    move-object/from16 v24, v8

    move/from16 v28, v11

    move/from16 v29, v12

    move-object/from16 v27, v13

    move-object/from16 v25, v14

    move-object/from16 v16, v3

    goto :goto_d

    :cond_d
    move-object/from16 v24, v8

    move/from16 v28, v11

    move/from16 v29, v12

    move-object/from16 v27, v13

    move-object/from16 v25, v14

    const/16 v16, 0x0

    .line 386
    :goto_d
    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    move-object v6, v1

    move-object v7, v15

    move-object/from16 v2, v24

    move-object v8, v0

    move/from16 v11, v28

    move/from16 v12, v29

    move-object/from16 v13, v27

    move-object/from16 v14, v25

    move-object v3, v15

    move-object v15, v2

    invoke-direct/range {v6 .. v16}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v2, v22

    .line 392
    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v21, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, v20

    const/4 v1, 0x0

    goto/16 :goto_4

    .line 352
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No apkData found in split-details file!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object/from16 v20, v5

    .line 394
    new-instance v9, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

    invoke-direct {v9, v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;-><init>(Ljava/util/LinkedHashMap;)V

    .line 395
    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-object v4, v1

    move-object v6, v0

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    invoke-direct/range {v4 .. v9}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;)V

    return-object v1

    .line 325
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No splits found in split-details file!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readInputStreamContent(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 286
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 292
    :cond_1
    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 293
    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method attach(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->versionManager:Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;

    return-void
.end method

.method public createSplitDetailsForJsonFile(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;
    .locals 1

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    invoke-direct {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->createSplitDetailsForNewVersion(Ljava/io/File;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllSplitInfo(Landroid/content/Context;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->getOrCreateSplitDetails(Landroid/content/Context;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->getSplitInfoListing()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;->getSplitInfoMap()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBaseAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->getOrCreateSplitDetails(Landroid/content/Context;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->getAppVersionName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentSplitInfoVersion()Ljava/lang/String;
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->getSplitInfoVersionManager()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;

    move-result-object p0

    .line 168
    invoke-interface {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;->getCurrentVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQigsawId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->getOrCreateSplitDetails(Landroid/content/Context;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->getQigsawId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSplitEntryFragments(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->getOrCreateSplitDetails(Landroid/content/Context;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->getSplitEntryFragments()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSplitInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;
    .locals 1

    .line 118
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->getOrCreateSplitDetails(Landroid/content/Context;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->getSplitInfoListing()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;->getSplitInfoMap()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    .line 121
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 122
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSplitInfos(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->getOrCreateSplitDetails(Landroid/content/Context;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->getSplitInfoListing()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;->getSplitInfoMap()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    .line 135
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 137
    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUpdateSplits(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->getOrCreateSplitDetails(Landroid/content/Context;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitDetails;->getUpdateSplits()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public rollbackSplitInfoVersion(Landroid/content/Context;)Z
    .locals 3

    .line 184
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->getSplitInfoVersionManager()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;

    move-result-object v0

    .line 185
    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;->rollbackDefaultVersion(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SplitInfoManagerImpl"

    const-string v2, "Reset split details because splits have been rollbacked to default!"

    .line 187
    invoke-static {v1, v2, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->splitDetailsRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return p1
.end method

.method public updateSplitInfoVersion(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 3

    .line 173
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerImpl;->getSplitInfoVersionManager()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x5f

    .line 176
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 180
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;->updateVersion(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0
.end method
