.class public Lcom/android/settings/search/tree/MiuiSilentSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "MiuiSilentSettingsTree.java"


# static fields
.field public static final MUTE_MUSIC_STREAM:Ljava/lang/String; = "mute_music_stream"

.field public static final MUTE_VOICEASSIST_STREAM:Ljava/lang/String; = "mute_voiceassist_stream"

.field public static final NETWORK_ALARM:Ljava/lang/String; = "network_alarm"

.field public static final POPUP_WINDOW:Ljava/lang/String; = "popup_window"

.field public static final REPEAT_CALL:Ljava/lang/String; = "repeat_call"

.field public static final VIP_LIST:Ljava/lang/String; = "vip_list"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method


# virtual methods
.method protected getStatus()I
    .locals 7

    const-string/jumbo v0, "resource"

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v6

    goto :goto_1

    :sswitch_0
    const-string/jumbo v2, "popup_window"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "mute_voiceassist_stream"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "repeat_call"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "vip_list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v2, "mute_music_stream"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v2, "network_alarm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-ne v1, v3, :cond_6

    .line 65
    invoke-static {}, Landroid/media/AudioServiceInjector;->getVoiceAssistNum()I

    move-result v0

    if-eq v0, v6, :cond_6

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_7

    :cond_6
    return v5

    :pswitch_1
    if-eq v1, v4, :cond_7

    return v5

    :pswitch_2
    if-eq v1, v3, :cond_7

    return v5

    .line 71
    :pswitch_3
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSupportCustomZenPriorityPkg()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eq v1, v4, :cond_7

    goto :goto_3

    .line 79
    :cond_7
    :goto_2
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0

    :cond_8
    :goto_3
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x2505a300 -> :sswitch_5
        0x3f1c2340 -> :sswitch_4
        0x58c52b80 -> :sswitch_3
        0x5f304e82 -> :sswitch_2
        0x750db60a -> :sswitch_1
        0x75498ee3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initialize()Z
    .locals 2

    const-string/jumbo v0, "resource"

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v1, "vip_list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "repeat_call"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 43
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0
.end method
