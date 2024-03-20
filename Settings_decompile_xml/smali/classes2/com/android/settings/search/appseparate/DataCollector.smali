.class public Lcom/android/settings/search/appseparate/DataCollector;
.super Ljava/lang/Object;
.source "DataCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;
    }
.end annotation


# static fields
.field private static final COM_MIUI_VOICEASSIST:Ljava/lang/String; = "com.miui.voiceassist"

.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field public static final PREFERENCE_QUERY_PROVIDER_TIMEOUT_TIME:Ljava/lang/String; = "query_provider_timeout_time"

.field private static final TAG:Ljava/lang/String; = "DataCollector"

.field private static final TIMEOUT:J = 0x2L


# instance fields
.field private mCollectDataExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mContext:Landroid/content/Context;

.field private mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;


# direct methods
.method static bridge synthetic -$$Nest$maddDataFromRemoteProvider(Lcom/android/settings/search/appseparate/DataCollector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/appseparate/DataCollector;->addDataFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/settings/search/appseparate/DataCollector;->CPU_COUNT:I

    add-int/lit8 v1, v0, 0x1

    .line 59
    sput v1, Lcom/android/settings/search/appseparate/DataCollector;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 60
    sput v0, Lcom/android/settings/search/appseparate/DataCollector;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/settings/search/appseparate/DataCollector;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addDataFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDataFromRemoteProvider :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " _ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataCollector"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/appseparate/DataCollector;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 164
    invoke-direct {p0, p2}, Lcom/android/settings/search/appseparate/DataCollector;->buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 165
    sget-object v3, Lcom/android/settingslib/search/SearchContract;->SEARCH_RESULT_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/android/settings/search/appseparate/DataCollector;->getRawDataFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 167
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 173
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Task was timeout! abandoned result packageName:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 176
    :cond_1
    iget-object p2, p0, Lcom/android/settings/search/appseparate/DataCollector;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;

    invoke-virtual {p2, p1, v0}, Lcom/android/settings/search/appseparate/PreMatchData;->putPreMatchDataToMap(Ljava/lang/String;Ljava/util/List;)V

    .line 177
    iget-object p2, p0, Lcom/android/settings/search/appseparate/DataCollector;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;

    iget-object p0, p0, Lcom/android/settings/search/appseparate/DataCollector;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/MiuiUtils;->getAppLongVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/settings/search/appseparate/PreMatchData;->addVersionCodeToMap(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 168
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No raw data found for authorities: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could add data from remote provider "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 179
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private filterProviders(Landroid/content/pm/ResolveInfo;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-nez p1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.miui.voiceassist"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/search/appseparate/DataCollector;->mContext:Landroid/content/Context;

    const-string p1, "ex_func_xiao_ai"

    .line 102
    invoke-static {p0, p1}, Lcom/android/settings/MiuiUtils;->isVisibleWithExtensionFuncKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private getRawDataFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/search/appseparate/SearchRawData;",
            ">;"
        }
    .end annotation

    const-string v1, "DataCollector"

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 192
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 195
    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_1

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add data for Uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v10, :cond_0

    .line 247
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 201
    :cond_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 203
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 204
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 205
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 206
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    .line 207
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    .line 208
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x5

    .line 209
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x6

    .line 210
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v11, 0x7

    .line 212
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v11, 0x8

    .line 214
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v11, 0x9

    .line 215
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v11, 0xa

    .line 216
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 p1, v11

    const/16 v11, 0xb

    .line 217
    invoke-interface {v10, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v16, :cond_2

    :try_start_2
    const-string v11, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 219
    :cond_2
    :try_start_3
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    move-object/from16 v17, v1

    move-object/from16 p4, v11

    move-object/from16 v1, p1

    move-object/from16 v11, p0

    move-wide/from16 v18, v2

    move-object v2, v12

    move-object v12, v4

    move-object v3, v13

    move-object v13, v9

    move-object/from16 p1, v14

    move-object v14, v15

    move-object/from16 v20, v10

    move-object v10, v15

    move-object/from16 v15, p1

    move-object/from16 v16, p4

    .line 221
    :try_start_4
    invoke-direct/range {v11 .. v16}, Lcom/android/settings/search/appseparate/DataCollector;->isValidItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    :goto_2
    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    move-object/from16 v10, v20

    goto :goto_0

    .line 225
    :cond_3
    new-instance v11, Lcom/android/settings/search/appseparate/SearchRawData$Builder;

    invoke-direct {v11}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;-><init>()V

    move-object/from16 v12, p2

    .line 226
    invoke-virtual {v11, v12}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;

    move-result-object v13

    .line 227
    invoke-virtual {v13, v2}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->setExtras(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;

    move-result-object v2

    .line 228
    invoke-virtual {v2, v4}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;

    move-result-object v2

    .line 229
    invoke-virtual {v2, v6}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->setSummaryOff(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;

    move-result-object v2

    .line 230
    invoke-virtual {v2, v5}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->setSummaryOn(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;

    move-result-object v2

    .line 231
    invoke-virtual {v2, v1}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->setOther(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;

    move-result-object v1

    .line 232
    invoke-virtual {v1, v9}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;

    move-result-object v1

    move-object/from16 v2, p1

    .line 233
    invoke-virtual {v1, v2}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;

    move-result-object v1

    .line 234
    invoke-virtual {v1, v10}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;

    move-result-object v1

    .line 235
    invoke-virtual {v1, v8}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->setIconResId(I)Lcom/android/settings/search/appseparate/SearchRawData$Builder;

    move-result-object v1

    .line 236
    invoke-virtual {v1, v7}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->setKeywords(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;

    move-result-object v1

    .line 237
    invoke-virtual {v1, v3}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->setUriString(Ljava/lang/String;)Lcom/android/settings/search/appseparate/SearchRawData$Builder;

    move-result-object v1

    move-object/from16 v2, p4

    .line 238
    invoke-virtual {v1, v2}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->setIntentUri(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v11}, Lcom/android/settings/search/appseparate/SearchRawData$Builder;->build()Lcom/android/settings/search/appseparate/SearchRawData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v10, v20

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v10, v20

    goto :goto_3

    :cond_4
    move-object/from16 v12, p2

    move-wide/from16 v18, v2

    move-object/from16 v20, v10

    .line 247
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    const-string v21, "DataCollector"

    const-string v22, "getRawDataFromUri"

    move-wide/from16 v1, v18

    long-to-double v1, v1

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    move-wide/from16 v23, v1

    move-wide/from16 v25, v3

    move-object/from16 v27, p2

    invoke-static/range {v21 .. v27}, Lcom/android/settings/utils/LogUtil;->logCost(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v20, v10

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v20, v10

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v17, v1

    .line 243
    :goto_3
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to query raw data from Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v10, :cond_5

    .line 247
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0

    :goto_4
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_6
    throw v0
.end method

.method private isValidItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    .line 260
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p5, 0x1

    if-nez p0, :cond_1

    return p5

    .line 264
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 265
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return p1

    :cond_3
    return p5
.end method


# virtual methods
.method public collectData(Ljava/util/List;)Lcom/android/settings/search/appseparate/PreMatchData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Lcom/android/settings/search/appseparate/PreMatchData;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/android/settings/search/appseparate/PreMatchData;

    invoke-direct {v0}, Lcom/android/settings/search/appseparate/PreMatchData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/appseparate/DataCollector;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;

    .line 111
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/android/settings/search/appseparate/DataCollector;->CORE_POOL_SIZE:I

    sget v3, Lcom/android/settings/search/appseparate/DataCollector;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/android/settings/search/appseparate/DataCollector;->mCollectDataExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 121
    invoke-direct {p0, v3}, Lcom/android/settings/search/appseparate/DataCollector;->filterProviders(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance v5, Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {v5, p0, v6, v3, v4}, Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;-><init>(Lcom/android/settings/search/appseparate/DataCollector;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask-IA;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/search/appseparate/DataCollector;->mCollectDataExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    invoke-virtual {p1, v0, v5, v6, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 135
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 136
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 137
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;

    .line 139
    :try_start_1
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CancellationException\uff1a :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;->-$$Nest$fgetmPackageName(Lcom/android/settings/search/appseparate/DataCollector$QueryProviderTask;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataCollector"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Lcom/android/settings/search/appseparate/DataCollector;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "query_provider_timeout_time"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/settings/utils/MiuiSharedPreferencesUtils;->getIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 147
    iget-object v6, p0, Lcom/android/settings/search/appseparate/DataCollector;->mContext:Landroid/content/Context;

    add-int/lit8 v3, v3, 0x1

    invoke-static {v6, v4, v3}, Lcom/android/settings/utils/MiuiSharedPreferencesUtils;->setIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 149
    iget-object v3, p0, Lcom/android/settings/search/appseparate/DataCollector;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;

    invoke-virtual {v3, v5}, Lcom/android/settings/search/appseparate/PreMatchData;->setIsQueryProviderComplete(Z)V

    goto :goto_2

    :catch_2
    move-exception v3

    .line 141
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/android/settings/search/appseparate/DataCollector;->mCollectDataExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const-string v3, "DataCollector"

    const-string v4, "collectData"

    long-to-double v0, v1

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-double v7, v5

    const-string v9, "-"

    move-wide v5, v0

    invoke-static/range {v3 .. v9}, Lcom/android/settings/utils/LogUtil;->logCost(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/Object;)V

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-string p1, "-"

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/settingslib/search/SearchUtils;->logCost(DDLjava/lang/Object;)V

    .line 157
    iget-object p0, p0, Lcom/android/settings/search/appseparate/DataCollector;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;

    return-object p0
.end method
