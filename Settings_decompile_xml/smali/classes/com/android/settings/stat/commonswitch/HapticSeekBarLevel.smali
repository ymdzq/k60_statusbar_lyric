.class public Lcom/android/settings/stat/commonswitch/HapticSeekBarLevel;
.super Lcom/android/settings/stat/commonswitch/SwitchStat;
.source "HapticSeekBarLevel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;-><init>()V

    return-void
.end method

.method private getHapticLevel(Landroid/content/Context;)F
    .locals 1

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "haptic_feedback_infinite_intensity"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method


# virtual methods
.method getInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 7
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

    .line 20
    invoke-direct {p0, p1}, Lcom/android/settings/stat/commonswitch/HapticSeekBarLevel;->getHapticLevel(Landroid/content/Context;)F

    move-result p1

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const v2, 0x3f547ae1    # 0.83f

    cmpg-float v3, p1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const-string v6, "haptic_seek_bar_level_low"

    invoke-direct {v1, p0, v6, v3}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    cmpl-float v2, p1, v2

    const v3, 0x3f95c28f    # 1.17f

    if-ltz v2, :cond_1

    cmpg-float v2, p1, v3

    if-gtz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    const-string v6, "haptic_seek_bar_level_mid"

    invoke-direct {v1, p0, v6, v2}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    cmpl-float p1, p1, v3

    if-lez p1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    const-string p1, "haptic_seek_bar_level_high"

    invoke-direct {v1, p0, p1, v4}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
