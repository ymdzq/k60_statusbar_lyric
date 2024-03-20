.class public Lcom/android/settings/stat/commonpreference/AIPreloadedPrefStat;
.super Lcom/android/settings/stat/commonpreference/PreferenceStat;
.source "AIPreloadedPrefStat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/settings/stat/commonpreference/PreferenceStat;-><init>()V

    return-void
.end method

.method private static getAITotalPreloaded(Landroid/content/Context;)I
    .locals 2

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ai_total_preloaded_r"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getAITotalUsed(Landroid/content/Context;)I
    .locals 2

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ai_total_used_l"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v1, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;

    invoke-static {p1}, Lcom/android/settings/stat/commonpreference/AIPreloadedPrefStat;->getAITotalUsed(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ai_total_used_l"

    invoke-direct {v1, p0, v3, v2}, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;-><init>(Lcom/android/settings/stat/commonpreference/PreferenceStat;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;

    invoke-static {p1}, Lcom/android/settings/stat/commonpreference/AIPreloadedPrefStat;->getAITotalPreloaded(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "ai_total_preloaded_r"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;-><init>(Lcom/android/settings/stat/commonpreference/PreferenceStat;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
