.class public Lcom/android/settings/search/tree/MiuiLabSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "MiuiLabSettingsTree.java"


# static fields
.field private static final AIASST_CALL_SCREEN_TITLE:Ljava/lang/String; = "miui_lab_aiasst_call_screen_title"

.field private static final DRIVE_MODE_TITLE:Ljava/lang/String; = "miui_lab_drive_mode_title"

.field private static final MIUI_FLASHBACK_TITLE:Ljava/lang/String; = "flashback_title"

.field private static final MIUI_LAB_AI_PRELOAD_TITLE:Ljava/lang/String; = "miui_lab_ai_preload_title"

.field private static final MIUI_LAB_GESTURE_TITLE:Ljava/lang/String; = "miui_lab_gesture_title"

.field private static final MIUI_LAB_SETTINGS:Ljava/lang/String; = "miui_lab_settings"

.field private static final MIUI_VOIP_ASSISTANT_TITLE:Ljava/lang/String; = "voip_assistant_settings"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method


# virtual methods
.method protected getStatus()I
    .locals 4

    const-string/jumbo v0, "resource"

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "miui_lab_gesture_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "flashback_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "miui_lab_ai_preload_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "voip_assistant_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "miui_lab_drive_mode_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "miui_lab_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 61
    :pswitch_0
    invoke-static {}, Lcom/android/settings/lab/MiuiLabGestureController;->isNotSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    .line 66
    :pswitch_1
    invoke-static {}, Lcom/android/settings/lab/MiuiFlashbackController;->isNotSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    .line 51
    :pswitch_2
    invoke-static {}, Lcom/android/settings/lab/MiuiAiPreloadController;->isNotSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    .line 76
    :pswitch_3
    invoke-static {}, Lcom/android/settings/lab/MiuiVoipAssistantController;->isNotSupported()Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    .line 56
    :pswitch_4
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/lab/MiuiDriveModeController;->isNeedHideDriveMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    .line 71
    :pswitch_5
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isMiuiLabNeedHide(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    :goto_1
    const-string/jumbo v1, "miui_lab_aiasst_call_screen_title"

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {v0}, Lcom/android/settings/lab/MiuiAiAsstCallScreenController;->isNeedHideCallScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 88
    :cond_7
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x625b12bc -> :sswitch_5
        -0x5c5e854e -> :sswitch_4
        -0x4383da9d -> :sswitch_3
        -0x12f87f14 -> :sswitch_2
        0xb63c4f0 -> :sswitch_1
        0x73c86361 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initialize()Z
    .locals 1

    .line 43
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
