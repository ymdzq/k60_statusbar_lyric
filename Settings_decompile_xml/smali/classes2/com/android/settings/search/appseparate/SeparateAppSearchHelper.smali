.class public Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;
.super Ljava/lang/Object;
.source "SeparateAppSearchHelper.java"


# static fields
.field private static APP_WHITE_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BUILD_SEPARATE_APP_INDEX_LIST:Ljava/lang/String; = "separate.app.index.list"

.field private static final BUILD_UTC:Ljava/lang/String; = "ro.build.date.utc"

.field private static final FILENAME:Ljava/lang/String; = "separate_app_index.json"

.field public static final FORCE_UPDATE:Ljava/lang/String; = "force_update"

.field public static final LAST_MAIN_SCREEN_MODE:Ljava/lang/String; = "main_screen_mode"

.field private static final LOCALE:Ljava/lang/String; = "locale"

.field public static final MAIN_SCREEN_MODE:I = 0x1

.field public static final NOT_MAIN_SCREEN_MODE:I = 0x0

.field public static final SCREEN_MODE_INIT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SeparateAppSearchHelper"

.field private static final TIME_INTERVAL:J = 0x240c8400L

.field private static final UPDATE_TIME:Ljava/lang/String; = "update.time"

.field private static volatile mInstance:Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;


# instance fields
.field private mCollectResultProcessor:Lcom/android/settings/search/appseparate/CollectResultProcessor;

.field private mCollector:Lcom/android/settings/search/appseparate/DataCollector;

.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field private mLocale:Ljava/lang/String;

.field private mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->APP_WHITE_LIST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mContext:Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->performCollecting()V

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mLocale:Ljava/lang/String;

    return-void
.end method

.method private authProviders(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->getSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 140
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 142
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/MiuiUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mContext:Landroid/content/Context;

    .line 145
    invoke-static {v2, v1}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->getSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->isSignaturesSame([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app filtered out:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeparateAppSearchHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static convertScreenModeBy(Z)I
    .locals 0

    .line 0
    return p0
.end method

.method public static forceUpdate(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "force_update"

    .line 237
    invoke-static {p0, v0, p1}, Lcom/android/settings/utils/MiuiSharedPreferencesUtils;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 239
    invoke-static {}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->releaseInstance()V

    return-void
.end method

.method private getDataFromProviders(Ljava/util/List;)Lcom/android/settings/search/appseparate/PreMatchData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Lcom/android/settings/search/appseparate/PreMatchData;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mCollector:Lcom/android/settings/search/appseparate/DataCollector;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lcom/android/settings/search/appseparate/DataCollector;

    iget-object v1, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/search/appseparate/DataCollector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mCollector:Lcom/android/settings/search/appseparate/DataCollector;

    .line 297
    :cond_0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mCollector:Lcom/android/settings/search/appseparate/DataCollector;

    invoke-virtual {p0, p1}, Lcom/android/settings/search/appseparate/DataCollector;->collectData(Ljava/util/List;)Lcom/android/settings/search/appseparate/PreMatchData;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;
    .locals 2

    .line 72
    sget-object v0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mInstance:Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mInstance:Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;

    iget-object v0, v0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->localeHasChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    :cond_0
    const-class v0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;

    monitor-enter v0

    if-eqz p0, :cond_2

    .line 74
    :try_start_0
    sget-object v1, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mInstance:Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mInstance:Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;

    iget-object v1, v1, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mLocale:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->localeHasChange(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    :cond_1
    new-instance v1, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mInstance:Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;

    .line 77
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_3
    sget-object p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mInstance:Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;

    return-object p0

    :catchall_0
    move-exception p0

    .line 77
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getScreenMode(Landroid/content/Context;)I
    .locals 2

    const-string/jumbo v0, "main_screen_mode"

    const/4 v1, -0x1

    .line 260
    invoke-static {p0, v0, v1}, Lcom/android/settings/utils/MiuiSharedPreferencesUtils;->getIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 1

    .line 174
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 175
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SeparateAppSearchHelper"

    .line 177
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private isSignaturesSame([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 156
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 157
    array-length v1, p1

    move v2, p0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 158
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 161
    array-length v1, p2

    move v2, p0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 162
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    :cond_3
    :goto_2
    return p0
.end method

.method private static localeHasChange(Ljava/lang/String;)Z
    .locals 1

    .line 264
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static needForceUpdate(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "force_update"

    const/4 v1, 0x0

    .line 243
    invoke-static {p0, v0, v1}, Lcom/android/settings/utils/MiuiSharedPreferencesUtils;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-static {p0, v0, v1}, Lcom/android/settings/utils/MiuiSharedPreferencesUtils;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return v2
.end method

.method private needToUpdate(Lorg/json/JSONObject;)Z
    .locals 8

    const-string/jumbo v0, "ro.build.date.utc"

    const/4 v1, 0x0

    .line 218
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 219
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-eq v2, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v0, "update.time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x240c8400

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v3

    :goto_2
    if-nez v0, :cond_4

    const-string v0, "locale"

    .line 225
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->localeHasChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v3

    :goto_4
    if-nez v0, :cond_6

    .line 228
    invoke-direct {p0, p1}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->versionCodeHasChanged(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move p1, v1

    goto :goto_6

    :cond_6
    :goto_5
    move p1, v3

    :goto_6
    if-nez p1, :cond_7

    .line 231
    iget-object p0, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->needForceUpdate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    move v1, v3

    :cond_8
    return v1
.end method

.method private declared-synchronized performCollecting()V
    .locals 5

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    iget-object v2, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 93
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "separate_app_index.json"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mFile:Ljava/io/File;

    .line 94
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 96
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Lcom/android/settingslib/search/SearchUtils;->readJSONObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v3

    .line 97
    invoke-direct {p0, v3}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->needToUpdate(Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "separate.app.index.list"

    .line 98
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 99
    invoke-static {v3}, Lcom/android/settings/search/appseparate/PreMatchData;->fromJson(Lorg/json/JSONObject;)Lcom/android/settings/search/appseparate/PreMatchData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;

    goto :goto_0

    .line 101
    :cond_1
    iput-object v2, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catch_0
    :try_start_2
    iput-object v2, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;

    .line 107
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;

    if-nez v2, :cond_7

    .line 108
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.SETTINGS_SEARCH_PROVIDER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 111
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 116
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->authProviders(Ljava/util/List;)V

    .line 117
    invoke-direct {p0, v2}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->getDataFromProviders(Ljava/util/List;)Lcom/android/settings/search/appseparate/PreMatchData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;

    .line 118
    iget-object v2, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "query_provider_timeout_time"

    invoke-static {v2, v3, v4}, Lcom/android/settings/utils/MiuiSharedPreferencesUtils;->getIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 120
    iget-object v3, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;

    invoke-static {v3}, Lcom/android/settings/search/appseparate/PreMatchData;->isEmpty(Lcom/android/settings/search/appseparate/PreMatchData;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;

    .line 122
    invoke-virtual {v3}, Lcom/android/settings/search/appseparate/PreMatchData;->getIsQueryProviderComplete()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x3

    if-le v2, v3, :cond_7

    :cond_4
    if-eqz v2, :cond_5

    .line 125
    iget-object v2, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "query_provider_timeout_time"

    invoke-static {v2, v3, v4}, Lcom/android/settings/utils/MiuiSharedPreferencesUtils;->setIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 128
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->writeJSONFile()V

    goto :goto_2

    :cond_6
    :goto_1
    const-string v0, "SeparateAppSearchHelper"

    const-string v1, "No providers found for action: miui.intent.action.SETTINGS_SEARCH_PROVIDER"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 132
    :cond_7
    :goto_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v0, v0

    long-to-double v2, v2

    const-string v4, "-"

    .line 133
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settingslib/search/SearchUtils;->logCost(DDLjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static recordScreenMode(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "main_screen_mode"

    .line 253
    invoke-static {p0, v0, p1}, Lcom/android/settings/utils/MiuiSharedPreferencesUtils;->setIntPreference(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static releaseInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    sput-object v0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mInstance:Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;

    return-void
.end method

.method private versionCodeHasChanged(Lorg/json/JSONObject;)Z
    .locals 10

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "separate.app.index.list"

    .line 275
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v2, "packageList"

    .line 276
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    .line 277
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/4 v4, 0x1

    .line 279
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "packageName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 280
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "versionCode"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 281
    iget-object v8, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/android/settings/MiuiUtils;->getAppLongVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    return v4

    .line 288
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    long-to-double v0, v0

    long-to-double p0, p0

    const-string v3, "-"

    .line 289
    invoke-static {v0, v1, p0, p1, v3}, Lcom/android/settingslib/search/SearchUtils;->logCost(DDLjava/lang/Object;)V

    return v2
.end method

.method private writeJSONFile()V
    .locals 6

    .line 183
    monitor-enter p0

    const/4 v0, 0x0

    .line 186
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;

    invoke-virtual {v0}, Lcom/android/settings/search/appseparate/PreMatchData;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 188
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "separate.app.index.list"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "ro.build.date.utc"

    const-string/jumbo v3, "ro.build.date.utc"

    .line 190
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "locale"

    .line 191
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "update.time"

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 194
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 195
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "SeparateAppSearchHelper"

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close file error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    :try_start_4
    const-string v2, "SeparateAppSearchHelper"

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write error!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    .line 201
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_6
    const-string v1, "SeparateAppSearchHelper"

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close file error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_0
    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 201
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catch_4
    move-exception v1

    :try_start_8
    const-string v2, "SeparateAppSearchHelper"

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close file error!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    :goto_4
    throw v0

    :catchall_2
    move-exception v0

    .line 207
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0
.end method


# virtual methods
.method public declared-synchronized getSearchResult(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    monitor-enter p0

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mCollectResultProcessor:Lcom/android/settings/search/appseparate/CollectResultProcessor;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/android/settings/search/appseparate/CollectResultProcessor;

    iget-object v1, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/search/appseparate/CollectResultProcessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mCollectResultProcessor:Lcom/android/settings/search/appseparate/CollectResultProcessor;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;

    invoke-static {v0}, Lcom/android/settings/search/appseparate/PreMatchData;->isEmpty(Lcom/android/settings/search/appseparate/PreMatchData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 313
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mCollectResultProcessor:Lcom/android/settings/search/appseparate/CollectResultProcessor;

    iget-object v1, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->mPreMatchData:Lcom/android/settings/search/appseparate/PreMatchData;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/search/appseparate/CollectResultProcessor;->getMatchData(Lcom/android/settings/search/appseparate/PreMatchData;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
