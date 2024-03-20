.class Lcom/android/settings/search/SoundUpdateHelper;
.super Lcom/android/settings/search/BaseSearchUpdateHelper;
.source "SoundUpdateHelper.java"


# static fields
.field private static final DOCK_SETTINGS_RESOURCE:Ljava/lang/String; = "bluetooth_dock_settings_a2dp"

.field private static final DOCK_SOUNDS_ENABLE_RESOURCE:Ljava/lang/String; = "dock_sounds_enable_title"

.field private static final DOLBY_RESOURCE:Ljava/lang/String; = "music_title_dolby_control"

.field private static final HEADSET_CALIBRATE_RESOURCE:Ljava/lang/String; = "music_headset_calibrate"

.field private static final MI_EFFECT_RESOURCE:Ljava/lang/String; = "music_mi_effect_title"

.field private static final MUSIC_EQUALIZER_RESOURCE:Ljava/lang/String; = "music_equalizer"

.field private static final MUSIC_HD_RESOURCE:Ljava/lang/String; = "music_hd_title"

.field private static final MUSIC_HIFI_RESOURCE:Ljava/lang/String; = "music_hifi_title"

.field private static final NEW_SILENT_RESOURCE:Ljava/lang/String; = "silent_settings"

.field private static final OLD_SILENT_RESOURCE:Ljava/lang/String; = "silent_mode_title"

.field private static final RINGTONE_RESOURCE:Ljava/lang/String; = "ringtone_title"

.field private static final SOUND_RESOURCE:Ljava/lang/String; = "sound_settings"

.field private static final SOUND_VIBRATE_RESOURCE:Ljava/lang/String; = "sound_vibrate_settings"

.field private static final ZEN_MODE_RESOURCE:Ljava/lang/String; = "do_not_disturb_mode"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchUpdateHelper;-><init>()V

    return-void
.end method

.method static headsetPlug(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)V"
        }
    .end annotation

    xor-int/lit8 p2, p2, 0x1

    const-string/jumbo v0, "music_headset_calibrate"

    .line 65
    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/search/BaseSearchUpdateHelper;->disableByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 66
    invoke-static {p0, p1}, Lcom/android/settings/search/SoundUpdateHelper;->updateEqualizer(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static update(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "vibrator"

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 37
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "sound_vibrate_settings"

    .line 38
    invoke-static {p0, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->getIdWithResource(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->sound_settings:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name"

    .line 39
    invoke-static {p0, p1, v2, v4, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updateItemData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "sound_settings"

    .line 44
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updatePath(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "ringtone_title"

    .line 48
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 51
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->has_dock_settings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "bluetooth_dock_settings_a2dp"

    .line 52
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v0, "dock_sounds_enable_title"

    .line 53
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 56
    :cond_4
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "silent_mode_title"

    .line 57
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v0, "do_not_disturb_mode"

    .line 58
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideTreeByRootResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "silent_settings"

    .line 60
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideTreeByRootResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static updateEqualizer(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "audio"

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 74
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "hifi_mode"

    .line 75
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "false"

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "dirac"

    .line 77
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "="

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "music_equalizer"

    .line 83
    invoke-static {p0, p1, v1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->disableByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    return-void
.end method
