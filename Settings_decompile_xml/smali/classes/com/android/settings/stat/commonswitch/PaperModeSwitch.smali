.class public Lcom/android/settings/stat/commonswitch/PaperModeSwitch;
.super Lcom/android/settings/stat/commonswitch/SwitchStat;
.source "PaperModeSwitch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;-><init>()V

    return-void
.end method

.method public static isPaperModeOn(Landroid/content/Context;)Z
    .locals 3

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_paper_mode_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_mode_type"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    move v2, v0

    :cond_1
    return v2
.end method


# virtual methods
.method getInfo(Landroid/content/Context;)Lcom/android/settings/stat/commonswitch/SwitchStat$Info;
    .locals 2

    .line 15
    new-instance v0, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const-string/jumbo v1, "paper_mode_status"

    invoke-static {p1}, Lcom/android/settings/stat/commonswitch/PaperModeSwitch;->isPaperModeOn(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    return-object v0
.end method
