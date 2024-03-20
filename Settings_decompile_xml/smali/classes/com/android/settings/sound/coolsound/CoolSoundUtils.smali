.class public Lcom/android/settings/sound/coolsound/CoolSoundUtils;
.super Ljava/lang/Object;
.source "CoolSoundUtils.java"


# static fields
.field private static supportCoolSound:Ljava/lang/Boolean;


# direct methods
.method public static isSupportAllAlarm(Landroid/content/Context;)Z
    .locals 2

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.intent.action.RINGTONE_PICKER"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static isSupportCoolAlarm(Landroid/content/Context;)Z
    .locals 2

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.intent.action.ALARM_RINGTONE_PICKER"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportCoolSound(Landroid/content/Context;)Z
    .locals 3

    .line 81
    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->supportLiteOptimization(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 84
    :cond_0
    sget-object v0, Lcom/android/settings/sound/coolsound/CoolSoundUtils;->supportCoolSound:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "miui.intent.action.COOL_SOUND_PHONE"

    .line 86
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 88
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 87
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/settings/sound/coolsound/CoolSoundUtils;->supportCoolSound:Ljava/lang/Boolean;

    .line 93
    :cond_3
    sget-object p0, Lcom/android/settings/sound/coolsound/CoolSoundUtils;->supportCoolSound:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static transferToRingtoneType(I)I
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0x1000

    return p0

    :cond_2
    const/16 p0, 0x80

    return p0

    :cond_3
    const/16 p0, 0x40

    return p0

    :cond_4
    return v0
.end method
