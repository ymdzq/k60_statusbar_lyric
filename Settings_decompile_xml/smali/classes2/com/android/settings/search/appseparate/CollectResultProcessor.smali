.class public Lcom/android/settings/search/appseparate/CollectResultProcessor;
.super Ljava/lang/Object;
.source "CollectResultProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/appseparate/CollectResultProcessor$StatusProcessor;
    }
.end annotation


# static fields
.field private static final COM_MIUI_VOICEASSIST:Ljava/lang/String; = "com.miui.voiceassist"

.field private static final DELIMITER:Ljava/lang/String; = " "

.field private static final EXTRAS_KEY_VALUE_SEPARATOR:Ljava/lang/String; = ":"

.field private static final INTENT_ACTION_SECONDSPACE:Ljava/lang/String; = "miui.intent.action.PRIVATE_SPACE_SETTING"

.field private static final PACKAGE_MISOUND:Ljava/lang/String; = "com.miui.misound"

.field private static final PACKAGE_SECONDSPACE:Ljava/lang/String; = "com.miui.securitycore"

.field private static final PACKAGE_SECURITYCENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field private static final TAG:Ljava/lang/String; = "CollectResultProcessor"

.field private static final filterIntentClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final filterPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final filterPackageForPcMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sInvalidBadgedIconPackageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final spaceFilterIntentClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final spaceFilterPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/search/appseparate/CollectResultProcessor;->sInvalidBadgedIconPackageSet:Ljava/util/Set;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/settings/search/appseparate/CollectResultProcessor;->spaceFilterPackage:Ljava/util/List;

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings/search/appseparate/CollectResultProcessor;->spaceFilterIntentClass:Ljava/util/List;

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/settings/search/appseparate/CollectResultProcessor;->filterPackage:Ljava/util/List;

    .line 60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/settings/search/appseparate/CollectResultProcessor;->filterIntentClass:Ljava/util/List;

    .line 61
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/android/settings/search/appseparate/CollectResultProcessor;->filterPackageForPcMode:Ljava/util/List;

    const-string v6, "com.miui.touchassistant"

    .line 64
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "com.miui.misound"

    .line 65
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "com.xiaomi.misettings"

    .line 67
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.xiaomi.misettings.usagestats.UsageStatsMainActivity"

    .line 68
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.xiaomi.misettings.usagestats.moresettings.MoreSettingsActivity"

    .line 69
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.miui.home"

    .line 70
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.home.settings.MiuiHomeSettingActivity"

    .line 71
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.thememanager"

    .line 73
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildDirectSearchResultIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .line 223
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 225
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 229
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 230
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 234
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 237
    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 238
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, " "

    .line 239
    invoke-virtual {p5, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 240
    array-length p3, p2

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p3, :cond_3

    aget-object v0, p2, p5

    :try_start_0
    const-string v1, ":"

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p4

    .line 243
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse extras:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " fail!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CollectResultProcessor"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 249
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    return-object p0
.end method

.method private getAppName(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 1

    .line 201
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 203
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not get AppName for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CollectResultProcessor"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_1

    .line 208
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static getKeywordsScore(DLjava/lang/String;Ljava/lang/String;)D
    .locals 6

    .line 300
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    .line 301
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 302
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 303
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u2011"

    const-string v4, "-"

    .line 304
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-static {v2, p3}, Lcom/android/settingslib/search/SearchUtils;->doSimpleMatch(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v2, v4

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p0, v2

    if-ltz v4, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-wide p0
.end method

.method private getPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 321
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 324
    :cond_0
    iget-object p0, p0, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/search/SearchUtils;->getPinyin(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private match(Lcom/android/settings/search/appseparate/SearchRawData;Ljava/lang/String;)D
    .locals 9

    .line 263
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "\u2011"

    const-string v3, "-"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 265
    iget-object v4, p1, Lcom/android/settings/search/appseparate/SearchRawData;->title:Ljava/lang/String;

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    return-wide v5

    .line 269
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {p2, v0}, Lcom/android/settingslib/search/SearchUtils;->doSimpleMatch(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    return-wide v2

    .line 274
    :cond_1
    iget-object v4, p0, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settingslib/search/KeywordsCloudConfigHelper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/search/KeywordsCloudConfigHelper;

    move-result-object v4

    iget-object v7, p1, Lcom/android/settings/search/appseparate/SearchRawData;->title:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/settingslib/search/KeywordsCloudConfigHelper;->getKeywords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    invoke-static {v0, v1, v4, p2}, Lcom/android/settings/search/appseparate/CollectResultProcessor;->getKeywordsScore(DLjava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    return-wide v2

    .line 281
    :cond_2
    iget-object v4, p1, Lcom/android/settings/search/appseparate/SearchRawData;->keywords:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 282
    iget-object v4, p1, Lcom/android/settings/search/appseparate/SearchRawData;->keywords:Ljava/lang/String;

    invoke-static {v0, v1, v4, p2}, Lcom/android/settings/search/appseparate/CollectResultProcessor;->getKeywordsScore(DLjava/lang/String;Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_3

    return-wide v2

    .line 286
    :cond_3
    iget-object p1, p1, Lcom/android/settings/search/appseparate/SearchRawData;->title:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/search/appseparate/CollectResultProcessor;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/settingslib/search/SearchUtils;->doPinyinMatch(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    sub-double/2addr p0, v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    cmpg-double p2, p0, v5

    if-gez p2, :cond_4

    goto :goto_0

    :cond_4
    move-wide v5, p0

    :goto_0
    return-wide v5
.end method


# virtual methods
.method public getMatchData(Lcom/android/settings/search/appseparate/PreMatchData;Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/search/appseparate/PreMatchData;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/search/appseparate/PreMatchData;->getPreMatchDataMap()Ljava/util/Map;

    move-result-object v0

    .line 83
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 84
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    .line 86
    iget-object v1, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.miui.cloudservice"

    .line 90
    invoke-static {v12, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveMiCloud(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/appseparate/SearchRawData;

    .line 95
    sget-object v1, Lcom/android/settings/search/appseparate/CollectResultProcessor;->spaceFilterPackage:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/settings/search/appseparate/CollectResultProcessor;->spaceFilterIntentClass:Ljava/util/List;

    iget-object v2, v0, Lcom/android/settings/search/appseparate/SearchRawData;->intentTargetClass:Ljava/lang/String;

    .line 96
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->isSecondSpace(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 101
    :cond_4
    sget-object v1, Lcom/android/settings/search/appseparate/CollectResultProcessor;->filterPackage:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/settings/search/appseparate/CollectResultProcessor;->filterIntentClass:Ljava/util/List;

    iget-object v2, v0, Lcom/android/settings/search/appseparate/SearchRawData;->intentTargetClass:Ljava/lang/String;

    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, "com.miui.voiceassist"

    .line 107
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 108
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isLowMemoryMachine()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/settings/MiuiUtils;->isLower3GB()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const-string v1, "com.miui.securitycenter"

    .line 112
    invoke-static {v12, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/settings/search/appseparate/SearchRawData;->other:Ljava/lang/String;

    .line 113
    invoke-static {v1, v2}, Lcom/android/settings/MiuiUtils;->isVisibleWithExtensionFuncKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 117
    :cond_7
    iget-object v1, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isOnPcMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/settings/search/appseparate/CollectResultProcessor;->filterPackageForPcMode:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    const-string v1, "com.miui.securitycore"

    .line 121
    invoke-static {v12, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/settings/search/appseparate/SearchRawData;->intentAction:Ljava/lang/String;

    const-string/jumbo v2, "miui.intent.action.PRIVATE_SPACE_SETTING"

    .line 122
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v1, :cond_3

    iget-object v1, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isSecondSpaceItemNeedHide(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_1

    .line 126
    :cond_9
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v1

    if-nez v1, :cond_a

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_b

    :cond_a
    const-string/jumbo v1, "miui.intent.action.green_guard_activity_new"

    iget-object v2, v0, Lcom/android/settings/search/appseparate/SearchRawData;->intentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_1

    :cond_b
    move-object/from16 v14, p2

    .line 130
    invoke-direct {v7, v0, v14}, Lcom/android/settings/search/appseparate/CollectResultProcessor;->match(Lcom/android/settings/search/appseparate/SearchRawData;Ljava/lang/String;)D

    move-result-wide v5

    const-wide/16 v1, 0x0

    cmpl-double v1, v5, v1

    if-lez v1, :cond_14

    .line 132
    new-instance v15, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;

    const/4 v1, 0x2

    invoke-direct {v15, v1}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;-><init>(I)V

    .line 135
    :try_start_0
    iget-object v1, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/search/appseparate/SearchRawData;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 138
    iget-object v1, v0, Lcom/android/settings/search/appseparate/SearchRawData;->intentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v1, :cond_c

    .line 139
    :try_start_1
    iget-object v2, v0, Lcom/android/settings/search/appseparate/SearchRawData;->intentAction:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/search/appseparate/SearchRawData;->intentTargetPackage:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settings/search/appseparate/SearchRawData;->intentTargetClass:Ljava/lang/String;

    move-wide/from16 v16, v5

    iget-object v5, v0, Lcom/android/settings/search/appseparate/SearchRawData;->uriString:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/settings/search/appseparate/SearchRawData;->extras:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 p1, v11

    move-object v11, v4

    move-object/from16 v4, v18

    move-object/from16 v18, v13

    move-wide/from16 v13, v16

    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/android/settings/search/appseparate/CollectResultProcessor;->buildDirectSearchResultIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 p1, v11

    move-object/from16 v18, v13

    goto/16 :goto_5

    :cond_c
    move-object/from16 p1, v11

    move-object/from16 v18, v13

    move-object v11, v4

    move-wide v13, v5

    .line 141
    iget-object v1, v0, Lcom/android/settings/search/appseparate/SearchRawData;->intentUri:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 143
    :goto_2
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    const/16 v2, 0x10

    .line 144
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 148
    :cond_e
    iget-object v2, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/android/settings/MiuiUtils;->isIntentActivityExistAsUser(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v11, p1

    goto/16 :goto_8

    .line 152
    :cond_f
    invoke-direct {v7, v12, v11}, Lcom/android/settings/search/appseparate/CollectResultProcessor;->getAppName(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v2

    .line 153
    iget-object v3, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/android/settings/search/appseparate/PathProcessor;->process(Landroid/content/Context;Lcom/android/settings/search/appseparate/SearchRawData;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 156
    iget-object v4, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->sound_settings:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 157
    iget-object v5, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->sound_vibrate_settings:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 158
    iget-object v6, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v16, v12

    :try_start_3
    sget v12, Lcom/android/settings/R$string;->sound_haptic_settings:I

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 159
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 160
    iget-object v12, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/utils/SettingsFeatures;->isSupportSettingsHaptic(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 161
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 162
    :cond_10
    iget-object v6, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "vibrator"

    invoke-virtual {v6, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-nez v6, :cond_11

    .line 163
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    :cond_11
    :goto_3
    iget-object v4, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->connection_and_sharing:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 169
    iget-object v5, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->more_connection:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 171
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    :cond_12
    invoke-virtual {v15, v11}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->setAppInfo(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;

    move-result-object v4

    .line 175
    invoke-virtual {v4, v2}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->setAppName(Ljava/lang/String;)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;

    move-result-object v4

    iget v5, v0, Lcom/android/settings/search/appseparate/SearchRawData;->iconResId:I

    .line 176
    invoke-virtual {v4, v5}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->setIconResId(I)Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;

    move-result-object v4

    .line 177
    invoke-virtual {v4, v13, v14}, Lcom/android/settings/search/SearchResultItem$Builder;->setScore(D)Lcom/android/settings/search/SearchResultItem$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/search/appseparate/SearchRawData;->title:Ljava/lang/String;

    .line 178
    invoke-virtual {v4, v5}, Lcom/android/settings/search/SearchResultItem$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;

    move-result-object v4

    .line 179
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_4

    :cond_13
    move-object v2, v3

    :goto_4
    invoke-virtual {v4, v2}, Lcom/android/settings/search/SearchResultItem$Builder;->setSummary(Ljava/lang/String;)Lcom/android/settings/search/SearchResultItem$Builder;

    move-result-object v2

    .line 180
    invoke-virtual {v2, v1}, Lcom/android/settings/search/SearchResultItem$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/settings/search/SearchResultItem$Builder;

    .line 183
    iget-object v1, v7, Lcom/android/settings/search/appseparate/CollectResultProcessor;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/settings/search/appseparate/SearchRawData;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settings/search/appseparate/SearchRawData;->title:Ljava/lang/String;

    invoke-static {v1, v2, v15, v0}, Lcom/android/settings/search/appseparate/CollectResultProcessor$StatusProcessor;->process(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v15}, Lcom/android/settings/search/appseparate/AppSearchResultItem$Builder;->build()Lcom/android/settings/search/appseparate/AppSearchResultItem;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_5
    move-object/from16 v16, v12

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 p1, v11

    move-object/from16 v16, v12

    move-object/from16 v18, v13

    .line 187
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_14
    move-object/from16 p1, v11

    move-object/from16 v16, v12

    move-object/from16 v18, v13

    :goto_7
    move-object/from16 v11, p1

    move-object/from16 v12, v16

    :goto_8
    move-object/from16 v13, v18

    goto/16 :goto_1

    :cond_15
    long-to-double v0, v8

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-string v4, "-"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settingslib/search/SearchUtils;->logCost(DDLjava/lang/Object;)V

    return-object v10
.end method
