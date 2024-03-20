.class public Lcom/android/settings/stat/commonswitch/ScreenEnhanceEngineSwitch;
.super Lcom/android/settings/stat/commonswitch/SwitchStat;
.source "ScreenEnhanceEngineSwitch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;-><init>()V

    return-void
.end method


# virtual methods
.method getInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/stat/commonswitch/SwitchStat$Info;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isSrForVideoSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    new-instance v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const-string/jumbo v2, "screen_enhance_engine_sr_for_video_status"

    .line 28
    invoke-static {p1}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->getSrForVideoStatus(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isSrForImageSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    new-instance v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const-string/jumbo v2, "screen_enhance_engine_sr_for_image_status"

    .line 32
    invoke-static {p1}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->getSrForImageStatus(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_1
    invoke-static {p1}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isAiSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    new-instance v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const-string/jumbo v2, "screen_enhance_engine_ai_display_status"

    .line 36
    invoke-static {p1}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->getAiStatus(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_2
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isS2hSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    new-instance v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const-string/jumbo v2, "screen_enhance_engine_s2h_status"

    .line 40
    invoke-static {p1}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->getS2hStatus(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_3
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isMemcSupport()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 43
    new-instance v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const-string/jumbo v2, "screen_enhance_engine_memc_status"

    .line 44
    invoke-static {p1}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->getMemcStatus(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method
