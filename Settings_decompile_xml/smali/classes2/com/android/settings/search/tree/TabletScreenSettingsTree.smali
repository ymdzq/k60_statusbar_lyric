.class public Lcom/android/settings/search/tree/TabletScreenSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "TabletScreenSettingsTree.java"


# static fields
.field private static final APPLICATION_MODE:Ljava/lang/String; = "application_mode_name"

.field private static final AUTOUI_MODE:Ljava/lang/String; = "autoui_mode_name"

.field private static final BEAUTY_FC_ASSISTANT:Ljava/lang/String; = "beauty_fc_assistant"

.field private static final CONVERSATION_ASSISTANT:Ljava/lang/String; = "conversation_assistant"

.field private static final DEVICE_IME_KEYBOARD:Ljava/lang/String; = "device_ime_keyboard_pad"

.field private static final FREEFORM_GUIDE_CLASS:Ljava/lang/String; = "com.miui.freeform.FreeformDemoActivity"

.field private static final FREEFORM_GUIDE_CLASS_PAD:Ljava/lang/String; = "com.miui.freeform.FreeformTutorialSettingActivity"

.field private static final FREEFORM_GUIDE_PACKGAE:Ljava/lang/String; = "com.miui.freeform"

.field private static final FREEFORM_GUIDE_SETTINGS:Ljava/lang/String; = "freeform_guide_settings"

.field private static final FREEFORM_GUIDE_SETTINGS_DROP_DOWN:Ljava/lang/String; = "freeform_guide_drop_down_to_fullscreen_title"

.field private static final FREEFORM_GUIDE_SETTINGS_FREE_DRAG:Ljava/lang/String; = "freeform_guide_free_drag_title"

.field private static final FREEFORM_GUIDE_SETTINGS_MOVE:Ljava/lang/String; = "freeform_guide_move_title"

.field private static final FREEFORM_GUIDE_SETTINGS_MULTIPLE_WINDOW:Ljava/lang/String; = "freeform_guide_multiple_window_title"

.field private static final FREEFORM_GUIDE_SETTINGS_NOTIFICATION:Ljava/lang/String; = "freeform_guide_notification_drop_down_title"

.field private static final FREEFORM_GUIDE_SETTINGS_SIDEHIDE:Ljava/lang/String; = "freeform_guide_to_sidehide_title"

.field private static final FREEFORM_GUIDE_SETTINGS_SLIDE_TO_SMALL:Ljava/lang/String; = "freeform_guide_slide_to_small_freeform_title"

.field private static final FREEFORM_GUIDE_SETTINGS_SLIDE_UP:Ljava/lang/String; = "freeform_guide_slide_up_to_close_title"

.field private static final FREEFORM_GUIDE_SETTINGS_TO_SMALL:Ljava/lang/String; = "freeform_guide_move_to_small_freeform_window_title"

.field private static final FREEFORM_GUIDE_TYPE:Ljava/lang/String; = "DEMO_TYPE"

.field private static final FREEFORM_RECOMMEND_TITLE:Ljava/lang/String; = "freeform_recommend_open_switch_title"

.field private static final GAZE_LOCK_SCREEN_TITLE:Ljava/lang/String; = "gaze_lock_screen_title"

.field private static final KEY_BUBBLES_NOTIFICATION:Ljava/lang/String; = "miui_bubbles_notification"

.field private static final KEY_FREEFORM_GESTURE_SPLIT_SCREEN:Ljava/lang/String; = "gesture_to_split_screen"

.field private static final KEY_FREEFORM_GUIDE_SPLIT_SCREEN_COMBINATION:Ljava/lang/String; = "freeform_guide_split_screen_combination_pad"

.field private static final KID_SPACE_SETTINGS:Ljava/lang/String; = "kid_space_settings"

.field private static final MIUI_DESKTOP_MODE_TITLE:Ljava/lang/String; = "miui_desktop_mode_settings"

.field private static final MIUI_TOF_SCREEN_OFF:Ljava/lang/String; = "leave_loclscreen_title"

.field private static final MIUI_TOF_SCREEN_ON:Ljava/lang/String; = "miui_tof_screen_on_title"

.field private static final MI_MIRROR_SETTINGS:Ljava/lang/String; = "interconnection"

.field private static final MULTI_WINDOW_CVW:Ljava/lang/String; = "multi_window_cvw_title"

.field private static final SUPER_ASSISTANT:Ljava/lang/String; = "gd_setting_title"

.field private static final TOF_GESTURE_SETTINGS_TITLE:Ljava/lang/String; = "tofgesture_settings"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    const-string/jumbo v0, "resource"

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "interconnection"

    .line 216
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getMiMirrorSettingsIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "kid_space_settings"

    .line 218
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 226
    :cond_2
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getStatus()I
    .locals 4

    const-string/jumbo v0, "resource"

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "freeform_guide_multiple_window_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "gd_setting_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "freeform_guide_split_screen_combination_pad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "device_ime_keyboard_pad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "freeform_guide_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "freeform_guide_free_drag_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "interconnection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "conversation_assistant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v1, "multi_window_cvw_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "autoui_mode_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "application_mode_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "freeform_guide_move_to_small_freeform_window_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v1, "miui_bubbles_notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v1, "tofgesture_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "freeform_guide_slide_to_small_freeform_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "freeform_recommend_open_switch_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "kid_space_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v1, "miui_tof_screen_on_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_12
    const-string v1, "gesture_to_split_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_13
    const-string/jumbo v1, "miui_desktop_mode_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_14
    const-string v1, "gaze_lock_screen_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_15
    const-string v1, "beauty_fc_assistant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_16
    const-string v1, "leave_loclscreen_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_17
    const-string v1, "freeform_guide_move_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_18
    const-string v1, "freeform_guide_to_sidehide_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 156
    :pswitch_0
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportMultiple()Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportDock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 96
    :pswitch_2
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isShowFreeformGuideSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 161
    :pswitch_3
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportFreeDrag()Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 192
    :pswitch_4
    new-instance v0, Lcom/android/settings/connection/MiMirrorController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v3, ""

    invoke-direct {v0, v1, v3}, Lcom/android/settings/connection/MiMirrorController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 121
    :pswitch_5
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isConversationSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 131
    :pswitch_6
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1a

    return v2

    .line 106
    :pswitch_7
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->shouldShowAutoUIModeSetting()Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 101
    :pswitch_8
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isShowApplicationMode()Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 151
    :pswitch_9
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1a

    return v2

    .line 126
    :pswitch_a
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportBubblesNotification(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    :pswitch_b
    const-string v0, "config_tof_gesture_available"

    .line 187
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 146
    :pswitch_c
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->getPin()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1a

    return v2

    .line 177
    :pswitch_d
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportRecommend()Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 166
    :pswitch_e
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveKidSpace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v2

    .line 82
    :pswitch_f
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isTofAvailable()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isAonAvailable()Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 172
    :pswitch_10
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1a

    return v2

    .line 182
    :pswitch_11
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportMiuiDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 87
    :pswitch_12
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isAonAvailable()Z

    move-result v0

    if-nez v0, :cond_19

    return v2

    .line 91
    :cond_19
    :pswitch_13
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1a

    return v2

    .line 116
    :pswitch_14
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isFrontAssistantSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 77
    :pswitch_15
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isTofAvailable()Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 141
    :pswitch_16
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1a

    return v2

    .line 136
    :pswitch_17
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isShowFreeformGuideSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    .line 199
    :cond_1a
    :goto_1
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x76b5209c -> :sswitch_18
        -0x76431f44 -> :sswitch_17
        -0x71a9df87 -> :sswitch_16
        -0x719d8b41 -> :sswitch_15
        -0x704458e1 -> :sswitch_14
        -0x5750c173 -> :sswitch_13
        -0x46c53281 -> :sswitch_12
        -0x459c0a18 -> :sswitch_11
        -0x415c922b -> :sswitch_10
        -0x32acc9f0 -> :sswitch_f
        -0x2458261b -> :sswitch_e
        -0x22b0c25c -> :sswitch_d
        -0x12fb978e -> :sswitch_c
        -0x112ab2e8 -> :sswitch_b
        0xd572378 -> :sswitch_a
        0x119736eb -> :sswitch_9
        0x1b08dd74 -> :sswitch_8
        0x22fcc222 -> :sswitch_7
        0x245c80ba -> :sswitch_6
        0x33f6a22e -> :sswitch_5
        0x3e05a8f5 -> :sswitch_4
        0x565936c2 -> :sswitch_3
        0x56ad0fe7 -> :sswitch_2
        0x67b32fc7 -> :sswitch_1
        0x67d0c386 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_13
        :pswitch_10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getTitle(Z)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "resource"

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "interconnection"

    .line 205
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->getMiMirrorSettingsTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "application_mode_name"

    .line 207
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/applicationmode/RemoteUtils;->isMiPadDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->magic_window_name_pad:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 210
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initialize()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_TABLET_SCREEN_SETTINGS:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0
.end method
