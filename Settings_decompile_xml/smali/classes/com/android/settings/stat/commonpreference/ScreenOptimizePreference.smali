.class public Lcom/android/settings/stat/commonpreference/ScreenOptimizePreference;
.super Lcom/android/settings/stat/commonpreference/PreferenceStat;
.source "ScreenOptimizePreference.java"


# static fields
.field private static final DEFAULT_EXPERT_COLOR_GAMUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "expert_gamut_default"

    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/stat/commonpreference/ScreenOptimizePreference;->DEFAULT_EXPERT_COLOR_GAMUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/stat/commonpreference/PreferenceStat;-><init>()V

    return-void
.end method

.method public static getGamutFromDatabase(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "expert_data"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget p0, Lcom/android/settings/stat/commonpreference/ScreenOptimizePreference;->DEFAULT_EXPERT_COLOR_GAMUT:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "color_gamut"

    .line 61
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 62
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getScreenOptimizeMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_optimize_mode"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/android/settings/stat/commonpreference/ScreenOptimizePreference;->getScreenOptimizeMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    new-instance v2, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;

    const-string/jumbo v3, "screen_optimize_mode"

    invoke-static {p1}, Lcom/android/settings/stat/commonpreference/ScreenOptimizePreference;->getScreenOptimizeMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;-><init>(Lcom/android/settings/stat/commonpreference/PreferenceStat;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/android/settings/stat/commonpreference/ScreenOptimizePreference;->getGamutFromDatabase(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "4"

    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 41
    new-instance v1, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;

    const-string v2, "color_gamut"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;-><init>(Lcom/android/settings/stat/commonpreference/PreferenceStat;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method
