.class public Lcom/android/settings/stat/commonswitch/IntelligentServiceSwitch;
.super Lcom/android/settings/stat/commonswitch/SwitchStat;
.source "IntelligentServiceSwitch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;-><init>()V

    return-void
.end method

.method private static isIntelligentRingtoneEnable(Landroid/content/Context;)Z
    .locals 2

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "intelligent_recognition_service"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isIntelligentRingtoneSlot2Enable(Landroid/content/Context;)Z
    .locals 2

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "intelligent_recognition_service_slot2"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
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

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const-string v2, "intelligent_recognition_service"

    invoke-static {p1}, Lcom/android/settings/stat/commonswitch/IntelligentServiceSwitch;->isIntelligentRingtoneEnable(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const-string v2, "intelligent_recognition_service_slot2"

    invoke-static {p1}, Lcom/android/settings/stat/commonswitch/IntelligentServiceSwitch;->isIntelligentRingtoneSlot2Enable(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
