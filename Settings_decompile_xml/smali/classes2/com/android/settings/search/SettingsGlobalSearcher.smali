.class public Lcom/android/settings/search/SettingsGlobalSearcher;
.super Ljava/lang/Object;
.source "SettingsGlobalSearcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/SettingsGlobalSearcher$SyncDataCompletedReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_SYNC_GLOBAL_SEARCH:Ljava/lang/String; = "com.android.settings.action.SYNC_GLOBAL_SEARCH"

.field private static final AUTHORITY:Ljava/lang/String; = "com.android.settings.globalsearch"

.field private static final KEYWORDS_CLOUD_CONFIG_MODULE_NAME:Ljava/lang/String; = "GlobalSearch"

.field private static final KEY_CLOUD_DATA_DESTPACKAGE:Ljava/lang/String; = "destPackage"

.field private static final KEY_CLOUD_DATA_INTERVAL:Ljava/lang/String; = "interval"

.field private static final KEY_LAST_UPDATE_TIMESTAMP:Ljava/lang/String;

.field private static final KEY_UPDATE_INTERVAL:Ljava/lang/String;

.field private static final METHOD_UPDATE_GLOBAL_SEARCH:Ljava/lang/String; = "updateGlobalSearch"

.field private static final SCHEME:Ljava/lang/String; = "content"

.field private static final SEARCH_RESULT_ACTION:Ljava/lang/String; = "intent_action"

.field private static final SEARCH_RESULT_DATA:Ljava/lang/String; = "intent_data"

.field private static final SEARCH_RESULT_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final SEARCH_RESULT_DEST_CLASS:Ljava/lang/String; = "dest_class"

.field private static final SEARCH_RESULT_DEST_FRAGMENT:Ljava/lang/String; = "dest_fragment"

.field private static final SEARCH_RESULT_ICON:Ljava/lang/String; = "icon"

.field private static final SEARCH_RESULT_KEYWORDS:Ljava/lang/String; = "keywords"

.field private static final SEARCH_RESULT_MAX_VERSION:Ljava/lang/String; = "max_version"

.field private static final SEARCH_RESULT_MIN_VERSION:Ljava/lang/String; = "min_version"

.field private static final SEARCH_RESULT_PKG:Ljava/lang/String; = "pkg"

.field private static final SEARCH_RESULT_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "SettingsGlobalSearcher"


# instance fields
.field private mCloudData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReceiver:Lcom/android/settings/search/SettingsGlobalSearcher$SyncDataCompletedReceiver;

.field private mSearchResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/search/GlobalSearchItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/search/SettingsGlobalSearcher;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCloudUpdateInterval(Lcom/android/settings/search/SettingsGlobalSearcher;)J
    .locals 2

    .line 0
    invoke-direct {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->getCloudUpdateInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetDestPackageCloudData(Lcom/android/settings/search/SettingsGlobalSearcher;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->getDestPackageCloudData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUri(Lcom/android/settings/search/SettingsGlobalSearcher;)Landroid/net/Uri;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadData(Lcom/android/settings/search/SettingsGlobalSearcher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->loadData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadDataAsync(Lcom/android/settings/search/SettingsGlobalSearcher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->loadDataAsync()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mneedUpdate(Lcom/android/settings/search/SettingsGlobalSearcher;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->needUpdate()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mqueryUri(Lcom/android/settings/search/SettingsGlobalSearcher;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/search/SettingsGlobalSearcher;->queryUri(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetKEY_LAST_UPDATE_TIMESTAMP()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/search/SettingsGlobalSearcher;->KEY_LAST_UPDATE_TIMESTAMP:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetKEY_UPDATE_INTERVAL()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/search/SettingsGlobalSearcher;->KEY_UPDATE_INTERVAL:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_last_update_timestamp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/SettingsGlobalSearcher;->KEY_LAST_UPDATE_TIMESTAMP:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_update_interval_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/SettingsGlobalSearcher;->KEY_UPDATE_INTERVAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/settings/search/SettingsGlobalSearcher$SyncDataCompletedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/search/SettingsGlobalSearcher$SyncDataCompletedReceiver;-><init>(Lcom/android/settings/search/SettingsGlobalSearcher;Lcom/android/settings/search/SettingsGlobalSearcher$SyncDataCompletedReceiver-IA;)V

    iput-object v0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mReceiver:Lcom/android/settings/search/SettingsGlobalSearcher$SyncDataCompletedReceiver;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mPm:Landroid/content/pm/PackageManager;

    .line 77
    invoke-direct {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->registerSyncGlobalSearchCompleted()V

    return-void
.end method

.method private buildSearchResult(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/search/GlobalSearchItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    .line 433
    sget-object p0, Lcom/android/settings/search/SearchResultItem;->EMPTY:Lcom/android/settings/search/SearchResultItem;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->app_function:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/search/GlobalSearchItem;

    .line 439
    iget-object v3, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/settings/search/GlobalSearchItem;->pkg:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/MiuiUtils;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 442
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/settings/search/SettingsGlobalSearcher;->match(Ljava/lang/String;Lcom/android/settings/search/GlobalSearchItem;)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-lez v5, :cond_1

    .line 444
    iget-object v5, v2, Lcom/android/settings/search/GlobalSearchItem;->appName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/settings/search/GlobalSearchItem;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v1

    .line 446
    :goto_1
    new-instance v6, Lcom/android/settings/search/SearchResultItem$Builder;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/settings/search/SearchResultItem$Builder;-><init>(I)V

    .line 447
    invoke-virtual {v6, v3, v4}, Lcom/android/settings/search/SearchResultItem$Builder;->setScore(D)Lcom/android/settings/search/SearchResultItem$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 448
    invoke-virtual {v3, v4}, Lcom/android/settings/search/SearchResultItem$Builder;->setGlobalSearch(Z)Lcom/android/settings/search/SearchResultItem$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/settings/search/GlobalSearchItem;->title:Ljava/lang/String;

    .line 449
    invoke-virtual {v3, v4}, Lcom/android/settings/search/SearchResultItem$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;

    move-result-object v3

    .line 450
    invoke-direct {p0, v2}, Lcom/android/settings/search/SettingsGlobalSearcher;->getIntent(Lcom/android/settings/search/GlobalSearchItem;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/search/SearchResultItem$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/settings/search/SearchResultItem$Builder;

    move-result-object v3

    .line 451
    invoke-virtual {v3, v5}, Lcom/android/settings/search/SearchResultItem$Builder;->setPath(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/settings/search/GlobalSearchItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 452
    invoke-virtual {v3, v4}, Lcom/android/settings/search/SearchResultItem$Builder;->setGlobalSearchIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/search/SearchResultItem$Builder;

    move-result-object v3

    iget-object v2, v2, Lcom/android/settings/search/GlobalSearchItem;->description:Ljava/lang/String;

    .line 453
    invoke-virtual {v3, v2}, Lcom/android/settings/search/SearchResultItem$Builder;->setSummary(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;

    move-result-object v2

    .line 454
    invoke-virtual {v2}, Lcom/android/settings/search/SearchResultItem$Builder;->build()Lcom/android/settings/search/SearchResultItem;

    move-result-object v2

    .line 455
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 458
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 459
    sget-object p0, Lcom/android/settings/search/SearchResultItem;->EMPTY:Lcom/android/settings/search/SearchResultItem;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method private getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 336
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SettingsGlobalSearcher"

    const-string v0, "getAppIcon: "

    .line 340
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mPm:Landroid/content/pm/PackageManager;

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SettingsGlobalSearcher"

    const-string v0, "getAppName: "

    .line 351
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getCloudData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object p0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mContext:Landroid/content/Context;

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "GlobalSearch"

    .line 236
    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getCloudUpdateInterval()J
    .locals 5

    .line 313
    invoke-direct {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->getCloudData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mCloudData:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 316
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v3, "interval"

    .line 322
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "SettingsGlobalSearcher"

    const-string v4, "getUpdateInterval: "

    .line 324
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v3, v1

    :goto_1
    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    return-wide v3

    :cond_2
    return-wide v1
.end method

.method private getDestPackageCloudData()Ljava/lang/String;
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mCloudData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->getCloudData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mCloudData:Ljava/util/List;

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mCloudData:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 174
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 175
    invoke-virtual {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v1, "destPackage"

    .line 180
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "SettingsGlobalSearcher"

    const-string v2, "getDestPackageCloudData: "

    .line 182
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private getIntent(Lcom/android/settings/search/GlobalSearchItem;)Landroid/content/Intent;
    .locals 1

    .line 358
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 359
    iget-object v0, p1, Lcom/android/settings/search/GlobalSearchItem;->pkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p1, Lcom/android/settings/search/GlobalSearchItem;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    :cond_0
    iget-object v0, p1, Lcom/android/settings/search/GlobalSearchItem;->intentAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    iget-object v0, p1, Lcom/android/settings/search/GlobalSearchItem;->intentAction:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    :cond_1
    iget-object v0, p1, Lcom/android/settings/search/GlobalSearchItem;->intentData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 366
    iget-object v0, p1, Lcom/android/settings/search/GlobalSearchItem;->intentData:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 368
    :cond_2
    iget-object v0, p1, Lcom/android/settings/search/GlobalSearchItem;->destClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 369
    iget-object v0, p1, Lcom/android/settings/search/GlobalSearchItem;->pkg:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/search/GlobalSearchItem;->destClass:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    :cond_3
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/16 p1, 0x10

    .line 373
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    :cond_5
    return-object p0
.end method

.method private getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 2

    .line 385
    iget-object p0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mPm:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 386
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 387
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    :cond_0
    return-object v0
.end method

.method private getUri()Landroid/net/Uri;
    .locals 1

    .line 90
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "com.android.settings.globalsearch"

    .line 91
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "content"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private loadData()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->loadGlobalSearchResult()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mSearchResult:Ljava/util/List;

    return-void
.end method

.method private loadDataAsync()V
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/search/SettingsGlobalSearcher$2;

    invoke-direct {v1, p0}, Lcom/android/settings/search/SettingsGlobalSearcher$2;-><init>(Lcom/android/settings/search/SettingsGlobalSearcher;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 471
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private loadGlobalSearchResult()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/search/GlobalSearchItem;",
            ">;"
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 199
    invoke-direct {p0, v0}, Lcom/android/settings/search/SettingsGlobalSearcher;->queryUri(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 203
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    new-instance v2, Lcom/android/settings/search/GlobalSearchItem;

    invoke-direct {v2}, Lcom/android/settings/search/GlobalSearchItem;-><init>()V

    const-string/jumbo v3, "title"

    .line 207
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->title:Ljava/lang/String;

    const-string/jumbo v3, "pkg"

    .line 208
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->pkg:Ljava/lang/String;

    const-string v3, "icon"

    .line 209
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->icon:Ljava/lang/String;

    const-string v3, "description"

    .line 210
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->description:Ljava/lang/String;

    const-string v3, "keywords"

    .line 211
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->keywords:Ljava/lang/String;

    const-string v3, "intent_action"

    .line 212
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->intentAction:Ljava/lang/String;

    const-string v3, "intent_data"

    .line 213
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->intentData:Ljava/lang/String;

    const-string v3, "dest_class"

    .line 214
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->destClass:Ljava/lang/String;

    const-string v3, "dest_fragment"

    .line 215
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->destFragment:Ljava/lang/String;

    const-string/jumbo v3, "min_version"

    .line 216
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->maxVersion:Ljava/lang/String;

    const-string/jumbo v3, "max_version"

    .line 217
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->minVersion:Ljava/lang/String;

    .line 219
    iget-object v3, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/settings/search/GlobalSearchItem;->keywords:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settingslib/search/SearchUtils;->getPinyin(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->keywordsPinyin:Ljava/lang/String;

    .line 220
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 221
    iget-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->keywordsPinyin:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->keywordsPinyinArray:[Ljava/lang/String;

    .line 223
    :cond_1
    iget-object v3, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/settings/search/GlobalSearchItem;->title:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settingslib/search/SearchUtils;->getPinyin(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->titlePinyin:Ljava/lang/String;

    .line 225
    invoke-direct {p0, v2}, Lcom/android/settings/search/SettingsGlobalSearcher;->resolveIntent(Lcom/android/settings/search/GlobalSearchItem;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/settings/search/GlobalSearchItem;->resolveIntent:Z

    .line 226
    iget-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->pkg:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/search/SettingsGlobalSearcher;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->appName:Ljava/lang/String;

    .line 227
    iget-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->pkg:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/search/SettingsGlobalSearcher;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/GlobalSearchItem;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 229
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 231
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method private match(Ljava/lang/String;Lcom/android/settings/search/GlobalSearchItem;)D
    .locals 6

    .line 393
    iget-boolean v0, p2, Lcom/android/settings/search/GlobalSearchItem;->resolveIntent:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 396
    :cond_0
    iget-object v0, p2, Lcom/android/settings/search/GlobalSearchItem;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v1

    .line 399
    :cond_1
    iget-object v0, p2, Lcom/android/settings/search/GlobalSearchItem;->title:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    .line 402
    :cond_2
    iget-object v0, p2, Lcom/android/settings/search/GlobalSearchItem;->keywords:Ljava/lang/String;

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide v3

    .line 405
    :cond_3
    iget-object v0, p2, Lcom/android/settings/search/GlobalSearchItem;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-wide v3

    .line 408
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 409
    iget-object v5, p2, Lcom/android/settings/search/GlobalSearchItem;->keywordsPinyinArray:[Ljava/lang/String;

    invoke-direct {p0, v5, p1}, Lcom/android/settings/search/SettingsGlobalSearcher;->pinyinContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-wide v3

    .line 412
    :cond_5
    iget-object p0, p2, Lcom/android/settings/search/GlobalSearchItem;->titlePinyin:Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    return-wide v3

    :cond_6
    return-wide v1
.end method

.method private needUpdate()Z
    .locals 7

    .line 131
    iget-object p0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 132
    sget-object v0, Lcom/android/settings/search/SettingsGlobalSearcher;->KEY_LAST_UPDATE_TIMESTAMP:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 133
    sget-object v0, Lcom/android/settings/search/SettingsGlobalSearcher;->KEY_UPDATE_INTERVAL:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p0, v3, v1

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    cmp-long p0, v5, v1

    if-nez p0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    cmp-long p0, v1, v5

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private pinyinContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 419
    array-length v0, p1

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    array-length v0, p1

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 423
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method private queryUri(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    .line 190
    iget-object p0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 191
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private registerSyncGlobalSearchCompleted()V
    .locals 2

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.action.SYNC_GLOBAL_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mReceiver:Lcom/android/settings/search/SettingsGlobalSearcher$SyncDataCompletedReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private resolveIntent(Lcom/android/settings/search/GlobalSearchItem;)Z
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Lcom/android/settings/search/SettingsGlobalSearcher;->getIntent(Lcom/android/settings/search/GlobalSearchItem;)Landroid/content/Intent;

    move-result-object p1

    .line 381
    invoke-direct {p0, p1}, Lcom/android/settings/search/SettingsGlobalSearcher;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sameTarget(Lcom/android/settings/search/SearchResultItem;Lcom/android/settings/search/SearchResultItem;)Lcom/android/settings/search/SearchResultItem;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 249
    iget-object v1, p1, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_6

    iget-object v1, p2, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    if-nez v1, :cond_0

    goto :goto_3

    .line 253
    :cond_0
    iget-object v1, p1, Lcom/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 258
    :cond_1
    iget-object v1, p1, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/settings/search/SettingsGlobalSearcher;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 259
    iget-object v2, p2, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/android/settings/search/SettingsGlobalSearcher;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_3

    .line 262
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1

    :cond_3
    move-object p0, v0

    :goto_1
    if-eqz v1, :cond_6

    if-nez p0, :cond_4

    goto :goto_3

    .line 268
    :cond_4
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 269
    iget-boolean p0, p1, Lcom/android/settings/search/SearchResultItem;->isGlobalSearch:Z

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, p2

    :goto_2
    return-object p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method private supportGlobalSearch()Z
    .locals 0

    .line 95
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->isLocalCnAndChinese()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public isOnlyEmptyList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 241
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/search/SearchResultItem;

    if-eqz p1, :cond_1

    .line 245
    iget p1, p1, Lcom/android/settings/search/SearchResultItem;->type:I

    if-ne p1, v1, :cond_1

    move p0, v1

    :cond_1
    :goto_0
    return p0
.end method

.method public removeDuplicateSearchResult(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 281
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 284
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 286
    new-array v1, v0, [Z

    const/4 v2, 0x0

    .line 287
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4

    .line 289
    aget-boolean v4, v1, v2

    if-nez v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    :goto_1
    if-ge v4, v0, :cond_3

    .line 291
    aget-boolean v5, v1, v4

    if-nez v5, :cond_2

    .line 292
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/search/SearchResultItem;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/search/SearchResultItem;

    invoke-direct {p0, v5, v6}, Lcom/android/settings/search/SettingsGlobalSearcher;->sameTarget(Lcom/android/settings/search/SearchResultItem;Lcom/android/settings/search/SearchResultItem;)Lcom/android/settings/search/SearchResultItem;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 293
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/search/SearchResultItem;

    iget-boolean v5, v5, Lcom/android/settings/search/SearchResultItem;->isGlobalSearch:Z

    if-eqz v5, :cond_1

    .line 294
    aput-boolean v3, v1, v2

    goto :goto_2

    .line 297
    :cond_1
    aput-boolean v3, v1, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v3

    :goto_3
    if-ltz v0, :cond_6

    .line 306
    aget-boolean p0, v1, v0

    if-eqz p0, :cond_5

    .line 307
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public requestGlobalSearchUpdate()V
    .locals 1

    .line 146
    new-instance v0, Lcom/android/settings/search/SettingsGlobalSearcher$1;

    invoke-direct {v0, p0}, Lcom/android/settings/search/SettingsGlobalSearcher$1;-><init>(Lcom/android/settings/search/SettingsGlobalSearcher;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public search(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/search/SettingsGlobalSearcher;->supportGlobalSearch()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    sget-object p1, Lcom/android/settings/search/SearchResultItem;->EMPTY:Lcom/android/settings/search/SearchResultItem;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 120
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 121
    iget-object v2, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mSearchResult:Ljava/util/List;

    invoke-direct {p0, p1, v2}, Lcom/android/settings/search/SettingsGlobalSearcher;->buildSearchResult(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings Global Search takes "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsGlobalSearcher"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 109
    :cond_2
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    sget-object p1, Lcom/android/settings/search/SearchResultItem;->EMPTY:Lcom/android/settings/search/SearchResultItem;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public unregisterSyncGlobalSearchCompleted()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/search/SettingsGlobalSearcher;->mReceiver:Lcom/android/settings/search/SettingsGlobalSearcher$SyncDataCompletedReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
