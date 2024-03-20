.class public Lcom/android/settings/stat/commonswitch/SwitchStatHelper;
.super Ljava/lang/Object;
.source "SwitchStatHelper.java"


# direct methods
.method public static traceSwitchEvent(Landroid/content/Context;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/android/settings/stat/commonswitch/IntelligentServiceSwitch;

    invoke-direct {v0}, Lcom/android/settings/stat/commonswitch/IntelligentServiceSwitch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;->track(Landroid/content/Context;)V

    .line 13
    new-instance v0, Lcom/android/settings/stat/commonswitch/BrightnessModeSwitch;

    invoke-direct {v0}, Lcom/android/settings/stat/commonswitch/BrightnessModeSwitch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;->track(Landroid/content/Context;)V

    .line 14
    new-instance v0, Lcom/android/settings/stat/commonswitch/TalkbackSwitch;

    invoke-direct {v0}, Lcom/android/settings/stat/commonswitch/TalkbackSwitch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;->track(Landroid/content/Context;)V

    .line 15
    new-instance v0, Lcom/android/settings/stat/commonswitch/ScreenEnhanceEngineSwitch;

    invoke-direct {v0}, Lcom/android/settings/stat/commonswitch/ScreenEnhanceEngineSwitch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;->track(Landroid/content/Context;)V

    .line 16
    new-instance v0, Lcom/android/settings/stat/commonswitch/HapticSwitch;

    invoke-direct {v0}, Lcom/android/settings/stat/commonswitch/HapticSwitch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;->track(Landroid/content/Context;)V

    .line 17
    new-instance v0, Lcom/android/settings/stat/commonswitch/HapticSeekBarLevel;

    invoke-direct {v0}, Lcom/android/settings/stat/commonswitch/HapticSeekBarLevel;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;->track(Landroid/content/Context;)V

    .line 18
    new-instance v0, Lcom/android/settings/stat/commonswitch/PaperModeSwitch;

    invoke-direct {v0}, Lcom/android/settings/stat/commonswitch/PaperModeSwitch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;->track(Landroid/content/Context;)V

    .line 20
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_TWO_AUTO_ROTATE:Z

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/android/settings/stat/commonswitch/RotateSwitch;

    invoke-direct {v0}, Lcom/android/settings/stat/commonswitch/RotateSwitch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;->track(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
