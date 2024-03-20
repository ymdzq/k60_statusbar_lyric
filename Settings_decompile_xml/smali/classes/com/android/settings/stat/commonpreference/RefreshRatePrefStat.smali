.class public Lcom/android/settings/stat/commonpreference/RefreshRatePrefStat;
.super Lcom/android/settings/stat/commonpreference/PreferenceStat;
.source "RefreshRatePrefStat.java"


# static fields
.field private static final FPS_SWITCH_DEFAULT:Z

.field private static final IS_SUPPORT_REFRESH_RATE:Z

.field private static final SCREEN_DEFAULT_FPS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.vendor.fps.switch.default"

    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/stat/commonpreference/RefreshRatePrefStat;->FPS_SWITCH_DEFAULT:Z

    .line 20
    invoke-static {}, Lcom/android/settings/stat/commonpreference/RefreshRatePrefStat;->getDefaultFps()I

    move-result v0

    sput v0, Lcom/android/settings/stat/commonpreference/RefreshRatePrefStat;->SCREEN_DEFAULT_FPS:I

    .line 21
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isSupportScreenFps()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/stat/commonpreference/RefreshRatePrefStat;->IS_SUPPORT_REFRESH_RATE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/settings/stat/commonpreference/PreferenceStat;-><init>()V

    return-void
.end method

.method private static getDefaultFps()I
    .locals 2

    const-string v0, "defaultFps"

    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getScreenDpiMode(Landroid/content/Context;)I
    .locals 2

    .line 34
    sget-boolean v0, Lcom/android/settings/stat/commonpreference/RefreshRatePrefStat;->FPS_SWITCH_DEFAULT:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "peak_refresh_rate"

    sget v1, Lcom/android/settings/stat/commonpreference/RefreshRatePrefStat;->SCREEN_DEFAULT_FPS:I

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const-string/jumbo p0, "persist.vendor.dfps.level"

    .line 37
    sget v0, Lcom/android/settings/stat/commonpreference/RefreshRatePrefStat;->SCREEN_DEFAULT_FPS:I

    invoke-static {p0, v0}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    sget-boolean v1, Lcom/android/settings/stat/commonpreference/RefreshRatePrefStat;->IS_SUPPORT_REFRESH_RATE:Z

    if-eqz v1, :cond_0

    .line 27
    invoke-static {p1}, Lcom/android/settings/stat/commonpreference/RefreshRatePrefStat;->getScreenDpiMode(Landroid/content/Context;)I

    move-result p1

    .line 28
    new-instance v1, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;

    const-string/jumbo v2, "refresh_rate"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;-><init>(Lcom/android/settings/stat/commonpreference/PreferenceStat;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
