.class public Lcom/android/settings/statistic/SettingsCollectorService;
.super Landroid/app/job/JobService;
.source "SettingsCollectorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;",
            ">;"
        }
    .end annotation
.end field

.field private mJobParameters:Landroid/app/job/JobParameters;

.field private mSpecialSettingsHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmJobParameters(Lcom/android/settings/statistic/SettingsCollectorService;)Landroid/app/job/JobParameters;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mJobParameters:Landroid/app/job/JobParameters;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcollectData(Lcom/android/settings/statistic/SettingsCollectorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->collectData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeSpecialSettings(Lcom/android/settings/statistic/SettingsCollectorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->initializeSpecialSettings()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mSpecialSettingsHashMap:Ljava/util/HashMap;

    return-void
.end method

.method private collectData()V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->downloadSettingsKey()V

    .line 254
    invoke-direct {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->uploadSettingsValue()V

    return-void
.end method

.method private downloadSettingsKey()V
    .locals 2

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    const-string v1, "Settings.System"

    .line 261
    invoke-direct {p0, v1}, Lcom/android/settings/statistic/SettingsCollectorService;->getSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    const-string v1, "Settings.Secure"

    invoke-direct {p0, v1}, Lcom/android/settings/statistic/SettingsCollectorService;->getSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    const-string v1, "Settings.Global"

    invoke-direct {p0, v1}, Lcom/android/settings/statistic/SettingsCollectorService;->getSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    const-string v1, "MiuiSettings.System"

    invoke-direct {p0, v1}, Lcom/android/settings/statistic/SettingsCollectorService;->getSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    const-string v1, "SystemProperties"

    invoke-direct {p0, v1}, Lcom/android/settings/statistic/SettingsCollectorService;->getSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    const-string v1, "PreferredSettings"

    invoke-direct {p0, v1}, Lcom/android/settings/statistic/SettingsCollectorService;->getSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    const-string v1, "Special.Keys"

    invoke-direct {p0, v1}, Lcom/android/settings/statistic/SettingsCollectorService;->getSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private getCloudDataString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 393
    invoke-virtual {p0}, Landroid/app/job/JobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "SettingsCollector2"

    .line 392
    invoke-static {p0, v0, p1, p2}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPreferredSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;
    .locals 6

    .line 350
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string p2, "launcher"

    .line 351
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const-string p2, "dialer"

    .line 353
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "message"

    .line 355
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const-string p2, "browser"

    .line 357
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x3

    goto :goto_0

    :cond_3
    const-string p2, "camera"

    .line 359
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x4

    goto :goto_0

    :cond_4
    const-string p2, "gallery"

    .line 361
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x5

    goto :goto_0

    :cond_5
    const-string/jumbo p2, "music"

    .line 363
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x6

    goto :goto_0

    :cond_6
    const-string p2, "email"

    .line 365
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x7

    goto :goto_0

    :cond_7
    const-string/jumbo p2, "video"

    .line 367
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0x8

    .line 372
    :goto_0
    invoke-static {p2}, Lcom/android/settings/applications/DefaultAppsHelper;->getIntentFilter(I)Landroid/content/IntentFilter;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/applications/DefaultAppsHelper;->getIntent(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p2

    .line 373
    invoke-virtual {p0}, Landroid/app/job/JobService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 374
    invoke-virtual {v2, p2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p2, :cond_8

    return-object v0

    .line 378
    :cond_8
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 379
    new-instance p2, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;

    const-string v2, "PreferredSettings"

    move-object v0, p2

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_9
    return-object v0
.end method

.method private getSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;
    .locals 8

    const-string v0, "Settings.System"

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Landroid/app/job/JobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 316
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 317
    new-instance p1, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;

    const-string v3, "Settings.System"

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, "Settings.Secure"

    .line 319
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Landroid/app/job/JobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 321
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 322
    new-instance p1, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;

    const-string v3, "Settings.Secure"

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string v0, "Settings.Global"

    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    invoke-virtual {p0}, Landroid/app/job/JobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 326
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 327
    new-instance p1, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;

    const-string v3, "Settings.Global"

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const-string v0, "MiuiSettings.System"

    .line 329
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    invoke-virtual {p0}, Landroid/app/job/JobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 331
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 332
    new-instance p1, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;

    const-string v3, "MiuiSettings.System"

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    const-string v0, "SystemProperties"

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 335
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 336
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 337
    new-instance p1, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;

    const-string v3, "SystemProperties"

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_4
    const-string v0, "PreferredSettings"

    .line 339
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 340
    invoke-direct {p0, p2, p3}, Lcom/android/settings/statistic/SettingsCollectorService;->getPreferredSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "Special.Keys"

    .line 341
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 342
    invoke-direct {p0, p2, p3}, Lcom/android/settings/statistic/SettingsCollectorService;->getSpecialSetting(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;

    move-result-object p0

    return-object p0

    .line 344
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get null for module:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", key:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsCollector"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v0, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSettings(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 293
    invoke-direct {p0, p1, v1}, Lcom/android/settings/statistic/SettingsCollectorService;->getCloudDataString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 296
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 297
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 298
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "key"

    .line 299
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "category"

    .line 300
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "def"

    const-string v7, "empty"

    .line 301
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-direct {p0, p1, v5, v4, v3}, Lcom/android/settings/statistic/SettingsCollectorService;->getSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "analyze JSON failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsCollector"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private getSpecialSetting(Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;
    .locals 9

    .line 384
    :try_start_0
    new-instance v6, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;

    const-string v2, "Special.Keys"

    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mSpecialSettingsHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    const-string v1, "SettingsCollector"

    const-string v2, ""

    .line 386
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    new-instance v0, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;

    const-string v5, "Special.Keys"

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private initializeSpecialSettings()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mSpecialSettingsHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/settings/statistic/SettingsCollectorService$2;

    invoke-direct {v1, p0}, Lcom/android/settings/statistic/SettingsCollectorService$2;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    const-string v2, "font"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mSpecialSettingsHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/settings/statistic/SettingsCollectorService$3;

    invoke-direct {v1, p0}, Lcom/android/settings/statistic/SettingsCollectorService$3;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    const-string v2, "font_size"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mSpecialSettingsHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/settings/statistic/SettingsCollectorService$4;

    invoke-direct {v1, p0}, Lcom/android/settings/statistic/SettingsCollectorService$4;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    const-string v2, "app_notifications"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mSpecialSettingsHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/settings/statistic/SettingsCollectorService$5;

    invoke-direct {v1, p0}, Lcom/android/settings/statistic/SettingsCollectorService$5;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    const-string/jumbo v2, "vip_call_settings"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mSpecialSettingsHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/settings/statistic/SettingsCollectorService$6;

    invoke-direct {v1, p0}, Lcom/android/settings/statistic/SettingsCollectorService$6;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    const-string/jumbo v2, "vip_list"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mSpecialSettingsHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/settings/statistic/SettingsCollectorService$7;

    invoke-direct {v1, p0}, Lcom/android/settings/statistic/SettingsCollectorService$7;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    const-string/jumbo v2, "ring_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mSpecialSettingsHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/settings/statistic/SettingsCollectorService$8;

    invoke-direct {v1, p0}, Lcom/android/settings/statistic/SettingsCollectorService$8;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    const-string v2, "alarm_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mSpecialSettingsHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/settings/statistic/SettingsCollectorService$9;

    invoke-direct {v1, p0}, Lcom/android/settings/statistic/SettingsCollectorService$9;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    const-string/jumbo v2, "music_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mSpecialSettingsHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/settings/statistic/SettingsCollectorService$10;

    invoke-direct {v1, p0}, Lcom/android/settings/statistic/SettingsCollectorService$10;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    const-string/jumbo v2, "owner_info"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mSpecialSettingsHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/settings/statistic/SettingsCollectorService$11;

    invoke-direct {v1, p0}, Lcom/android/settings/statistic/SettingsCollectorService$11;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    const-string p0, "lite_mode"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private uploadSettingsValue()V
    .locals 1

    .line 283
    iget-object p0, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mData:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;

    .line 287
    invoke-virtual {v0}, Lcom/android/settings/statistic/SettingsCollectorService$SettingsProviderData;->upload()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 70
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const v1, 0xabe5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const-string v0, "SettingsCollector"

    const-string/jumbo v1, "start service, version: 2"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p1, p0, Lcom/android/settings/statistic/SettingsCollectorService;->mJobParameters:Landroid/app/job/JobParameters;

    .line 75
    new-instance p1, Lcom/android/settings/statistic/SettingsCollectorService$1;

    invoke-direct {p1, p0}, Lcom/android/settings/statistic/SettingsCollectorService$1;-><init>(Lcom/android/settings/statistic/SettingsCollectorService;)V

    new-array p0, v2, [Ljava/lang/Void;

    .line 91
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const-string p0, "SettingsCollector"

    const-string p1, "force stopped"

    .line 97
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
