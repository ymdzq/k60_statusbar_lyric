.class public Lcom/android/settings/stat/commonpreference/FontSettingsPrefStat;
.super Lcom/android/settings/stat/commonpreference/PreferenceStat;
.source "FontSettingsPrefStat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/settings/stat/commonpreference/PreferenceStat;-><init>()V

    return-void
.end method

.method private getFontTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    .line 115
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/display/PageLayoutFragment;->getFontList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    .line 117
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/LocalFontModel;

    .line 118
    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->isUsing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {v0}, Lcom/android/settings/display/LocalFontModel;->getTitle()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get current font error, msg is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FontSwitchStat"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object p0
.end method


# virtual methods
.method protected getCurrentZoomLevel(Landroid/content/Context;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "key_screen_zoom_level"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 10
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

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/android/settings/display/LargeFontUtils;->getCurrentUIModeType(Landroid/content/Context;)I

    move-result v1

    .line 50
    invoke-static {p1}, Lcom/android/settings/display/LargeFontUtils;->getFontWeight(Landroid/content/Context;)I

    move-result v2

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/stat/commonpreference/FontSettingsPrefStat;->getCurrentZoomLevel(Landroid/content/Context;)I

    move-result v3

    const-string/jumbo v4, "small"

    const-string/jumbo v5, "normal"

    const/4 v6, 0x1

    const-string v7, ""

    if-eq v1, v6, :cond_0

    packed-switch v1, :pswitch_data_0

    move-object v1, v7

    goto :goto_0

    :pswitch_0
    const-string v1, "huge"

    goto :goto_0

    :pswitch_1
    const-string v1, "large"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "medium"

    goto :goto_0

    :pswitch_3
    move-object v1, v4

    goto :goto_0

    :pswitch_4
    const-string v1, "godzilla"

    goto :goto_0

    :pswitch_5
    const-string v1, "extral_small"

    goto :goto_0

    :cond_0
    move-object v1, v5

    .line 79
    :goto_0
    new-instance v8, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;

    const-string v9, "font_size"

    invoke-direct {v8, p0, v9, v1}, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;-><init>(Lcom/android/settings/stat/commonpreference/PreferenceStat;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;

    const-string v8, "font_weight"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v8, v2}, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;-><init>(Lcom/android/settings/stat/commonpreference/PreferenceStat;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    const/4 v1, 0x2

    if-eq v3, v1, :cond_1

    move-object v4, v7

    goto :goto_1

    :cond_1
    const-string v4, "big"

    goto :goto_1

    :cond_2
    move-object v4, v5

    .line 93
    :cond_3
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 94
    new-instance v1, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;

    const-string v2, "font_zoom_level"

    invoke-direct {v1, p0, v2, v4}, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;-><init>(Lcom/android/settings/stat/commonpreference/PreferenceStat;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/stat/commonpreference/FontSettingsPrefStat;->getFontTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 99
    new-instance v1, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;

    const-string v2, "font_style"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;-><init>(Lcom/android/settings/stat/commonpreference/PreferenceStat;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
