.class public Lcom/android/settings/search/tree/OtherPersonalSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "OtherPersonalSettingsTree.java"


# static fields
.field public static final AUTO_CLEAN_TITLE:Ljava/lang/String; = "auto_clean_title"

.field public static final BEAUTY_CAMERA_SETTINGS:Ljava/lang/String; = "beauty_camera"

.field private static final BEAUTY_FC_ASSISTANT:Ljava/lang/String; = "beauty_fc_assistant"

.field private static final COLOR_GAME_LED_TITLE:Ljava/lang/String; = "color_game_led_title"

.field private static final COLOR_LAMP_TITLE:Ljava/lang/String; = "color_lamp_title"

.field private static final COLOR_LED_TITLE:Ljava/lang/String; = "color_led_title"

.field private static final CONVERSATION_ASSISTANT:Ljava/lang/String; = "conversation_assistant"

.field public static final EDGE_SETTINGS:Ljava/lang/String; = "edge_mode_state_title"

.field public static final EDGE_SETTINGS_INFO:Ljava/lang/String; = "edge_mode_state_summary"

.field public static final EDGE_SETTINGS_SEEKBAR_INFO:Ljava/lang/String; = "seek_bar_info"

.field private static final ENTERPRISE_MODE:Ljava/lang/String; = "enterprise_mode"

.field private static final EXTENSION_FUNCTION_SETTINGS:Ljava/lang/String; = "extension_function_settings"

.field private static final EXTERNAL_RAM_TITLE:Ljava/lang/String; = "external_ram_title"

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

.field private static final GAME_TURBO:Ljava/lang/String; = "game_booster_title"

.field public static final GESTURE_SHORTCUT_SETTINGS:Ljava/lang/String; = "gesture_settings_title"

.field private static final HANDED_MODE_HINT:Ljava/lang/String; = "handy_mode_hint"

.field private static final HANDY_MODE:Ljava/lang/String; = "handy_mode"

.field private static final KEY_BUBBLES_NOTIFICATION:Ljava/lang/String; = "miui_bubbles_notification"

.field private static final KEY_FREEFORM_GESTURE_SPLIT_SCREEN:Ljava/lang/String; = "gesture_to_split_screen"

.field private static final KEY_FREEFORM_GUIDE_SPLIT_SCREEN_COMBINATION:Ljava/lang/String; = "freeform_guide_split_screen_combination_pad"

.field private static final KID_SPACE_SETTINGS:Ljava/lang/String; = "kid_space_settings"

.field private static final LED_SETTINGS:Ljava/lang/String; = "led_settings"

.field private static final MIUI_DESKTOP_MODE_TITLE:Ljava/lang/String; = "miui_desktop_mode_settings"

.field private static final MULTI_WINDOW_CVW:Ljava/lang/String; = "multi_window_cvw_title"

.field private static final OLDMAN_MODE_SETTINGS:Ljava/lang/String; = "oldman_mode_settings"

.field private static final OTG_SETTINGS:Ljava/lang/String; = "otg_settings"

.field private static final PREF_EDGE_HANDGRIP:Ljava/lang/String; = "pref_edge_handgrip"

.field private static final QUICK_REPLY_TITLE:Ljava/lang/String; = "quick_reply_title"

.field private static final SCREEN_RECORDER:Ljava/lang/String; = "screen_recorder_title"

.field private static final SECOND_SPACE:Ljava/lang/String; = "second_space"

.field private static final SHOULDER_KEY_SETTINGS:Ljava/lang/String; = "shoulder_key_settings"

.field private static final SLIDER_TITLE:Ljava/lang/String; = "slider_title"

.field public static final SPEAKER_CLEAN:Ljava/lang/String; = "speaker_clean"

.field private static final SUPER_ASSISTANT:Ljava/lang/String; = "gd_setting_title"

.field private static final TAPLUS_TITLE:Ljava/lang/String; = "taplus_title"

.field private static final TITLE_SPECIAL_FEATURES_HEALTH_GLOBAL:Ljava/lang/String; = "title_special_features_health_global"

.field private static final TOUCH_ASSISTANT:Ljava/lang/String; = "touch_assistant"

.field private static final VIDEO_TOOL_BOX_TITLE:Ljava/lang/String; = "video_tool_box_title"

.field private static final VOIP_ASSISTANT_SETTINGS:Ljava/lang/String; = "voip_assistant_settings"

.field private static final WALLET_HEADER_TITLE:Ljava/lang/String; = "wallet_header_title"


# instance fields
.field private isSplitScreenCombinationfoldTitle:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Lcom/android/settings/search/tree/OtherPersonalSettingsTree;->isSplitScreenCombinationfoldTitle:Z

    return-void
.end method

.method private addSon(Ljava/lang/String;)V
    .locals 4

    .line 171
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "resource"

    .line 173
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_checkbox"

    const/4 v1, 0x1

    .line 174
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "intent"

    .line 175
    new-instance v1, Lcom/android/settingslib/search/TinyIntent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SPEAKER_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/settingslib/search/TinyIntent;-><init>(Landroid/content/Intent;)V

    .line 176
    invoke-virtual {v1}, Lcom/android/settingslib/search/TinyIntent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 175
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    iget-object p1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    const-string/jumbo v0, "resource"

    .line 430
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kid_space_settings"

    .line 431
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/special/KidModeDisplayController;->isNewKidSpace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.child.home.kidspace.activity.KidModeActivity"

    const-string v2, "com.miui.greenguard"

    .line 435
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 438
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    const/high16 v1, 0x10000000

    .line 440
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 441
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    const-string/jumbo v1, "wallet_header_title"

    .line 445
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 446
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSupportCardHolder(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.tsmclient"

    .line 448
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "tsmclient://card?type=all&action=com.miui.tsmclient.action.CARD_HOLDER"

    .line 449
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p0

    .line 451
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->needRemoveWalletEntrance(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 452
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.mipay.wallet"

    .line 453
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.mipay.wallet.MIPAYINFO"

    .line 454
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "mipay://walletapp?id=mipay.info"

    .line 455
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p0

    .line 459
    :cond_4
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getStatus()I
    .locals 6

    const-string/jumbo v0, "resource"

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "quick_reply_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x28

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "color_led_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x27

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v1, "otg_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x26

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "freeform_guide_multiple_window_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x25

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "gd_setting_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x24

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "freeform_guide_split_screen_combination_pad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x23

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "extension_function_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x22

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "game_booster_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0x21

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "freeform_guide_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0x20

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v1, "shoulder_key_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x1f

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "color_game_led_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0x1e

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v1, "taplus_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0x1d

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "freeform_guide_free_drag_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0x1c

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "conversation_assistant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v1, "wallet_header_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v5, 0x1a

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v1, "touch_assistant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v5, 0x19

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v1, "multi_window_cvw_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "gesture_settings_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "external_ram_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v1, "oldman_mode_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "edge_mode_state_summary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v1, "title_special_features_health_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v1, "pref_edge_handgrip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "freeform_guide_move_to_small_freeform_window_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v1, "miui_bubbles_notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v1, "second_space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "enterprise_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "freeform_guide_slide_to_small_freeform_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "color_lamp_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "freeform_recommend_open_switch_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "kid_space_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v1, "voip_assistant_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "gesture_to_split_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_21
    const-string/jumbo v1, "video_tool_box_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_0

    :cond_21
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_22
    const-string/jumbo v1, "miui_desktop_mode_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_0

    :cond_22
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_23
    const-string/jumbo v1, "seek_bar_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_0

    :cond_23
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_24
    const-string/jumbo v1, "screen_recorder_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_0

    :cond_24
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_25
    const-string/jumbo v1, "slider_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_0

    :cond_25
    move v5, v3

    goto :goto_0

    :sswitch_26
    const-string v1, "beauty_fc_assistant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_0

    :cond_26
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_27
    const-string v1, "freeform_guide_move_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_0

    :cond_27
    move v5, v2

    goto :goto_0

    :sswitch_28
    const-string v1, "freeform_guide_to_sidehide_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_0

    :cond_28
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 258
    :pswitch_0
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isShowQuickReplySetting()Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 276
    :pswitch_1
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedShowColorLed()Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 193
    :pswitch_2
    invoke-static {}, Lcom/android/settings/utils/OtgUtils;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_29

    return v3

    .line 197
    :cond_29
    invoke-static {}, Lmiui/util/IOtgSwitch;->getInstance()Lmiui/util/IOtgSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/IOtgSwitch;->isOtgSupported()Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 336
    :pswitch_3
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportMultiple()Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 301
    :pswitch_4
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportDock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 356
    :pswitch_5
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_30

    return v4

    .line 351
    :pswitch_6
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isShowGameTurbo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 238
    :pswitch_7
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isShowFreeformGuideSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 291
    :pswitch_8
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_SHOULDER_KEY:Z

    if-nez v0, :cond_30

    return v4

    .line 281
    :pswitch_9
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedShowColorGameLed()Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 233
    :pswitch_a
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveContentExtension(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    return v4

    .line 341
    :pswitch_b
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportFreeDrag()Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 228
    :pswitch_c
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isConversationSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 393
    :pswitch_d
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->needRemoveWalletEntrance(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSupportCardHolder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 187
    :pswitch_e
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveTouchAssistant(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    return v4

    .line 311
    :pswitch_f
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_30

    return v4

    .line 202
    :pswitch_10
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiShortcut$System;->isSupportNewVersionKeySettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 218
    :pswitch_11
    invoke-static {}, Lcom/android/settings/special/ExternalRamController;->isShow()Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 248
    :pswitch_12
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    return v4

    .line 286
    :pswitch_13
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isHealthGlobalItemNeedHide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    return v4

    .line 263
    :pswitch_14
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_NEED_REMOVE_EDGE_MODE:Z

    if-eqz v0, :cond_30

    return v4

    .line 331
    :pswitch_15
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_30

    return v4

    .line 306
    :pswitch_16
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportBubblesNotification(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 346
    :pswitch_17
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSecondSpaceItemNeedHide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    return v4

    .line 207
    :pswitch_18
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isExcludeEnterpriseMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    return v4

    .line 326
    :pswitch_19
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->getPin()Z

    move-result v0

    if-eqz v0, :cond_30

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_30

    return v4

    .line 268
    :pswitch_1a
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedShowColorLamp()Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 383
    :pswitch_1b
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportRecommend()Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 243
    :pswitch_1c
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveKidSpace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    return v4

    .line 296
    :pswitch_1d
    invoke-static {}, Lcom/android/settings/lab/MiuiVoipAssistantController;->isNotSupported()Z

    move-result v0

    if-eqz v0, :cond_30

    return v4

    .line 363
    :pswitch_1e
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_FOLD_SCREEN_SETTINGS:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 365
    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isScreenLayoutLarge(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_2a
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_2c

    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_TABLET_SCREEN_SETTINGS:Z

    if-nez v0, :cond_2c

    :cond_2b
    return v3

    .line 371
    :cond_2c
    :pswitch_1f
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_FOLD_SCREEN_SETTINGS:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 373
    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isScreenLayoutLarge(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 374
    iput-boolean v2, p0, Lcom/android/settings/search/tree/OtherPersonalSettingsTree;->isSplitScreenCombinationfoldTitle:Z

    return v3

    .line 378
    :cond_2d
    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p0, :cond_2e

    sget-boolean p0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_TABLET_SCREEN_SETTINGS:Z

    if-nez p0, :cond_2e

    return v3

    :cond_2e
    return v4

    .line 253
    :pswitch_20
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isShowVideoToolBoxSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 388
    :pswitch_21
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportMiuiDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    :pswitch_22
    return v4

    .line 215
    :pswitch_23
    new-instance v0, Lcom/android/settings/personal/ScreenRecorderController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/personal/ScreenRecorderController;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v0}, Lcom/android/settings/personal/ScreenRecorderController;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result v4

    :cond_2f
    :pswitch_24
    return v4

    .line 223
    :pswitch_25
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isFrontAssistantSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 321
    :pswitch_26
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_30

    return v4

    .line 316
    :pswitch_27
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isShowFreeformGuideSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_30

    return v4

    .line 400
    :cond_30
    :goto_1
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x76b5209c -> :sswitch_28
        -0x76431f44 -> :sswitch_27
        -0x719d8b41 -> :sswitch_26
        -0x6aceee86 -> :sswitch_25
        -0x6a589036 -> :sswitch_24
        -0x5c57a0bf -> :sswitch_23
        -0x5750c173 -> :sswitch_22
        -0x4b5506bf -> :sswitch_21
        -0x46c53281 -> :sswitch_20
        -0x4383da9d -> :sswitch_1f
        -0x415c922b -> :sswitch_1e
        -0x32acc9f0 -> :sswitch_1d
        -0x26e4f073 -> :sswitch_1c
        -0x2458261b -> :sswitch_1b
        -0x1dab4c3f -> :sswitch_1a
        -0x158f8e85 -> :sswitch_19
        -0x12fb978e -> :sswitch_18
        -0x112ab2e8 -> :sswitch_17
        -0xdab2099 -> :sswitch_16
        -0x61b588f -> :sswitch_15
        0x2ae21e -> :sswitch_14
        0x33f71d3 -> :sswitch_13
        0xb778b83 -> :sswitch_12
        0x140910f2 -> :sswitch_11
        0x1b08dd74 -> :sswitch_10
        0x1b8e89de -> :sswitch_f
        0x215f9cac -> :sswitch_e
        0x22fcc222 -> :sswitch_d
        0x33f6a22e -> :sswitch_c
        0x3a2da1a0 -> :sswitch_b
        0x3a5fdf73 -> :sswitch_a
        0x3cb39642 -> :sswitch_9
        0x3e05a8f5 -> :sswitch_8
        0x496fbb5c -> :sswitch_7
        0x554060aa -> :sswitch_6
        0x56ad0fe7 -> :sswitch_5
        0x67b32fc7 -> :sswitch_4
        0x67d0c386 -> :sswitch_3
        0x721c24a0 -> :sswitch_2
        0x74bfbd48 -> :sswitch_1
        0x7b5c4971 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_22
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
        :pswitch_1f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getTitle(Z)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "resource"

    .line 405
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screen_recorder_title"

    .line 406
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/personal/ScreenRecorderController;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 410
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/search/tree/OtherPersonalSettingsTree;->isSplitScreenCombinationfoldTitle:Z

    if-eqz v1, :cond_1

    const-string v1, "freeform_guide_split_screen_combination_pad"

    .line 411
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->freeform_guide_split_screen_combination_fold:I

    .line 413
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 416
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v1, "wallet_header_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 425
    invoke-super {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 418
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->isSupportCardHolder(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 419
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->card_holder_header_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 421
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wallet_header_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initialize()Z
    .locals 6

    const-string/jumbo v0, "resource"

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "edge_mode_state_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "handy_mode_hint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "beauty_camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "speaker_clean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "miui_bubbles_notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "second_space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_6
    const-string v1, "led_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "miui_desktop_mode_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v5, v2

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "screen_recorder_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v5, v4

    goto :goto_0

    :sswitch_9
    const-string v1, "handy_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v5, v3

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v4

    :pswitch_1
    const-string/jumbo v0, "persist.sys.muiltdisplay_type"

    .line 125
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_b

    return v4

    .line 138
    :pswitch_2
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_BEAUTY_CAMERA:Z

    if-nez v0, :cond_b

    return v4

    .line 130
    :pswitch_3
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportSpeakerAutoClean(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    return v4

    :cond_a
    const-string v0, "auto_clean_title"

    .line 133
    invoke-direct {p0, v0}, Lcom/android/settings/search/tree/OtherPersonalSettingsTree;->addSon(Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :pswitch_4
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportBubblesNotification(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    return v4

    .line 146
    :pswitch_5
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v0, :cond_b

    return v4

    .line 115
    :pswitch_6
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveLedSettings()Z

    move-result v0

    if-eqz v0, :cond_b

    return v4

    .line 156
    :pswitch_7
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportMiuiDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    return v4

    :pswitch_8
    const-string v0, "keywords"

    const-string/jumbo v1, "search_screen_recorder_title"

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :pswitch_9
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_NEED_REMOVE_HANDY_MODE:Z

    if-eqz v0, :cond_b

    return v4

    .line 163
    :cond_b
    :goto_1
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73a33928 -> :sswitch_9
        -0x6a589036 -> :sswitch_8
        -0x5750c173 -> :sswitch_7
        -0x3b3b9829 -> :sswitch_6
        -0x158f8e85 -> :sswitch_5
        -0x12fb978e -> :sswitch_4
        -0x4a3c1f7 -> :sswitch_3
        -0x2e93b8 -> :sswitch_2
        0x22b1578e -> :sswitch_1
        0x3bb49ad0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
