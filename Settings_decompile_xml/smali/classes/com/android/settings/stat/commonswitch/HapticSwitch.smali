.class public Lcom/android/settings/stat/commonswitch/HapticSwitch;
.super Lcom/android/settings/stat/commonswitch/SwitchStat;
.source "HapticSwitch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;-><init>()V

    return-void
.end method


# virtual methods
.method getInfo(Landroid/content/Context;)Lcom/android/settings/stat/commonswitch/SwitchStat$Info;
    .locals 2

    .line 14
    new-instance v0, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const-string v1, "haptic_switch"

    invoke-static {p1}, Lcom/android/settings/MiuiSoundSettings;->isSystemHapticEnable(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    return-object v0
.end method
