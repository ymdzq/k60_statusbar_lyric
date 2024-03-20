.class public Lcom/android/settings/search/tree/OtherSpecialFeatureSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "OtherSpecialFeatureSettingsTree.java"


# static fields
.field private static final BEAUTY_FC_ASSISTANT:Ljava/lang/String; = "beauty_fc_assistant"

.field private static final COLOR_GAME_LED_SETTINGS:Ljava/lang/String; = "color_game_led_title"

.field private static final COLOR_LAMP_BATTERY:Ljava/lang/String; = "color_lamp_battery_title"

.field private static final COLOR_LAMP_INCALL_PULSE:Ljava/lang/String; = "color_lamp_incall_pulse_title"

.field private static final COLOR_LAMP_NOTIFICATION_PULSE:Ljava/lang/String; = "color_lamp_notification_pulse_title"

.field private static final COLOR_LAMP_SETTINGS:Ljava/lang/String; = "color_lamp_title"

.field private static final COLOR_LAMP_TURN_ON:Ljava/lang/String; = "color_lamp_turn_on"

.field private static final COLOR_LED_SETTINGS:Ljava/lang/String; = "color_led_title"

.field private static final DO_NOT_DISTURB_MODE:Ljava/lang/String; = "do_not_disturb_mode"

.field private static final EASY_MODE:Ljava/lang/String; = "oldman_mode_settings"

.field private static final EDGE_HANDGRIP:Ljava/lang/String; = "pref_edge_handgrip"

.field private static final FREEFORM_GUIDE_CLASS:Ljava/lang/String; = "com.miui.freeform.FreeformDemoActivity"

.field private static final FREEFORM_GUIDE_CLASS_PAD:Ljava/lang/String; = "com.miui.freeform.FreeformTutorialSettingActivity"

.field private static final FREEFORM_GUIDE_PACKGAE:Ljava/lang/String; = "com.miui.freeform"

.field private static final FREEFORM_GUIDE_SETTINGS:Ljava/lang/String; = "freeform_guide_settings"

.field private static final FREEFORM_GUIDE_SETTINGS_DROP_DOWN:Ljava/lang/String; = "freeform_guide_drop_down_to_fullscreen_title"

.field private static final FREEFORM_GUIDE_SETTINGS_MOVE:Ljava/lang/String; = "freeform_guide_move_title"

.field private static final FREEFORM_GUIDE_SETTINGS_NOTIFICATION:Ljava/lang/String; = "freeform_guide_notification_drop_down_title"

.field private static final FREEFORM_GUIDE_SETTINGS_SIDEHIDE:Ljava/lang/String; = "freeform_guide_to_sidehide_title"

.field private static final FREEFORM_GUIDE_SETTINGS_SLIDE_TO_SMALL:Ljava/lang/String; = "freeform_guide_slide_to_small_freeform_title"

.field private static final FREEFORM_GUIDE_SETTINGS_SLIDE_UP:Ljava/lang/String; = "freeform_guide_slide_up_to_close_title"

.field private static final FREEFORM_GUIDE_SETTINGS_TO_SMALL:Ljava/lang/String; = "freeform_guide_move_to_small_freeform_window_title"

.field private static final FREEFORM_GUIDE_TYPE:Ljava/lang/String; = "DEMO_TYPE"

.field private static final GAME_TURBO:Ljava/lang/String; = "game_booster_title"

.field private static final HEALTH_GLOBAL:Ljava/lang/String; = "title_special_features_health_global"

.field private static final KEY_BUBBLES_NOTIFICATION:Ljava/lang/String; = "miui_bubbles_notification"

.field private static final KID_SPACE_RESOURCE:Ljava/lang/String; = "kid_space_settings"

.field private static final MULTI_WINDOW_CVW:Ljava/lang/String; = "multi_window_cvw_title"

.field private static final OLDMAN_MODE_SETTINGS:Ljava/lang/String; = "oldman_mode_entry_name"

.field private static final QUICK_REPLY:Ljava/lang/String; = "quick_reply_title"

.field private static final RESOUCE_SLIDE_NAME:Ljava/lang/String; = "slider_title"

.field private static final SPECIAL_FEATURE:Ljava/lang/String; = "miui_special_feature"

.field private static final SUBSCREEN_TITLE:Ljava/lang/String; = "subscreen_title"

.field private static final SUPER_ASSISTANT:Ljava/lang/String; = "gd_setting_title"

.field private static final VIDEO_TOOL_BOX:Ljava/lang/String; = "video_tool_box_title"

.field private static final VOIP_ASSISTANT_SETTINGS:Ljava/lang/String; = "voip_assistant_settings"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 7

    const-string/jumbo v0, "resource"

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "multi_window_cvw_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "freeform_guide_drop_down_to_fullscreen_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "freeform_guide_notification_drop_down_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_3
    const-string v1, "freeform_guide_move_to_small_freeform_window_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "freeform_guide_slide_to_small_freeform_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_5
    const-string v1, "kid_space_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "oldman_mode_entry_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_7
    const-string v1, "freeform_guide_slide_up_to_close_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_8
    const-string v1, "freeform_guide_move_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_9
    const-string v1, "freeform_guide_to_sidehide_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    :goto_0
    const-string v0, "com.miui.freeform.FreeformDemoActivity"

    const-string v1, "com.miui.freeform.FreeformTutorialSettingActivity"

    const/high16 v3, 0x10000000

    const-string v4, "DEMO_TYPE"

    const-string v5, "com.miui.freeform"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    .line 256
    :pswitch_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_a

    goto/16 :goto_a

    .line 257
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 258
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 259
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    :cond_b
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 262
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_c

    const-string p0, "DEMO_MULTI_WINDOW_CVW_GLOBAL"

    .line 263
    invoke-virtual {v0, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_c
    const-string p0, "DEMO_MULTI_WINDOW_CVW"

    .line 265
    invoke-virtual {v0, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    return-object v0

    .line 325
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 326
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 327
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 329
    :cond_d
    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p0, :cond_e

    .line 330
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    .line 332
    :cond_e
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_2
    const-string p0, "DEMO_DROP_DOWN_TO_FULLSCREEN"

    .line 334
    invoke-virtual {v2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v2

    .line 270
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 271
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 272
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 274
    :cond_f
    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p0, :cond_10

    .line 275
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3

    .line 277
    :cond_10
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_3
    const-string p0, "DEMO_NOTIFICATION_DROP_DOWN"

    .line 279
    invoke-virtual {v2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v2

    .line 338
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 339
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 340
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 342
    :cond_11
    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p0, :cond_12

    .line 343
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4

    .line 345
    :cond_12
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_4
    const-string p0, "DEMO_HANG_TO_SMALL_FREEFORM"

    .line 347
    invoke-virtual {v2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v2

    .line 351
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 352
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 353
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 355
    :cond_13
    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    const-string v3, "DEMO_FREEFORM_SLIDE_TO_SMALL_FREEFORM"

    if-eqz p0, :cond_15

    .line 356
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 357
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_14

    const-string p0, "DEMO_FREEFORM_SLIDE_TO_SMALL_FREEFORM_GLOBAL"

    .line 358
    invoke-virtual {v2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 360
    :cond_14
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 363
    :cond_15
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 364
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    return-object v2

    .line 370
    :pswitch_5
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/special/KidModeDisplayController;->isNewKidSpace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.child.home.kidspace.activity.KidModeActivity"

    const-string v2, "com.miui.greenguard"

    .line 372
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 375
    :cond_16
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 377
    :goto_6
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 378
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 v0, 0x0

    :cond_17
    return-object v0

    .line 248
    :pswitch_6
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "market://details?id=com.jeejen.family&ref=com.android.settings_search&back=true"

    .line 249
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p0

    .line 312
    :pswitch_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 313
    iget-object v6, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 314
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    :cond_18
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 317
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_7

    .line 319
    :cond_19
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_7
    const-string p0, "DEMO_SLIDE_UP_TO_CLOSE"

    .line 321
    invoke-virtual {v2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v2

    .line 283
    :pswitch_8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 284
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 285
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 287
    :cond_1a
    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p0, :cond_1b

    .line 288
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_8

    .line 290
    :cond_1b
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_8
    const-string p0, "DEMO_MOVE"

    .line 292
    invoke-virtual {v2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v2

    .line 296
    :pswitch_9
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->getPin()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v2, :cond_1c

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_a

    .line 299
    :cond_1c
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 300
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 301
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    :cond_1d
    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p0, :cond_1e

    .line 304
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_9

    .line 306
    :cond_1e
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_9
    const-string p0, "DEMO_TO_SIDEHIDE"

    .line 308
    invoke-virtual {v2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v2

    .line 386
    :cond_1f
    :goto_a
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76b5209c -> :sswitch_9
        -0x76431f44 -> :sswitch_8
        -0x46ac626f -> :sswitch_7
        -0x43c15418 -> :sswitch_6
        -0x415c922b -> :sswitch_5
        -0x2458261b -> :sswitch_4
        -0x112ab2e8 -> :sswitch_3
        -0xab113b7 -> :sswitch_2
        -0xdfc747 -> :sswitch_1
        0x1b08dd74 -> :sswitch_0
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

.method protected getStatus()I
    .locals 5

    const-string/jumbo v0, "resource"

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "quick_reply_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0x14

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "color_led_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x13

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "gd_setting_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x12

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "game_booster_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x11

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "color_game_led_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x10

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v1, "multi_window_cvw_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0xf

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v1, "oldman_mode_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0xe

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v1, "title_special_features_health_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v1, "miui_bubbles_notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "color_lamp_incall_pulse_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "freeform_guide_slide_to_small_freeform_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "color_lamp_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "color_lamp_battery_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "kid_space_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_e
    const-string/jumbo v1, "oldman_mode_entry_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_f
    const-string/jumbo v1, "video_tool_box_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_10
    const-string v1, "color_lamp_notification_pulse_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_11
    const-string/jumbo v1, "subscreen_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_12
    const-string v1, "beauty_fc_assistant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_13
    const-string v1, "freeform_guide_move_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    move v4, v2

    goto :goto_0

    :sswitch_14
    const-string v1, "freeform_guide_to_sidehide_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 167
    :pswitch_0
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isShowQuickReplySetting()Z

    move-result v0

    if-nez v0, :cond_16

    return v3

    .line 137
    :pswitch_1
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedShowColorLed()Z

    move-result v0

    if-nez v0, :cond_16

    return v3

    .line 197
    :pswitch_2
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportDock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    return v3

    .line 182
    :pswitch_3
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isShowGameTurbo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    return v3

    .line 142
    :pswitch_4
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedShowColorGameLed()Z

    move-result v0

    if-nez v0, :cond_16

    return v3

    .line 202
    :pswitch_5
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_16

    return v3

    .line 162
    :pswitch_6
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    return v3

    .line 222
    :pswitch_7
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isHealthGlobalItemNeedHide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    return v3

    .line 232
    :pswitch_8
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportBubblesNotification(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    return v3

    .line 217
    :pswitch_9
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->getPin()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_16

    return v3

    .line 147
    :pswitch_a
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedShowColorLamp()Z

    move-result v0

    if-nez v0, :cond_16

    return v3

    .line 157
    :pswitch_b
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveKidSpace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    return v3

    .line 152
    :pswitch_c
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveOldmanMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    return v3

    .line 187
    :pswitch_d
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isShowVideoToolBoxSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    return v3

    .line 174
    :pswitch_e
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedShowColorLamp()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 175
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_lamp_turn_on"

    const/4 v4, -0x2

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_15

    goto :goto_1

    :cond_15
    move v2, v3

    :goto_1
    if-nez v2, :cond_16

    return v3

    .line 227
    :pswitch_f
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->hasMiSubScreen()Z

    move-result v0

    if-nez v0, :cond_16

    return v3

    .line 192
    :pswitch_10
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isFrontAssistantSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    return v3

    .line 212
    :pswitch_11
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->getPin()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_16

    return v3

    .line 207
    :pswitch_12
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->getPin()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_3

    .line 239
    :cond_16
    :goto_2
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0

    :cond_17
    :goto_3
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x76b5209c -> :sswitch_14
        -0x76431f44 -> :sswitch_13
        -0x719d8b41 -> :sswitch_12
        -0x69825cfb -> :sswitch_11
        -0x67020277 -> :sswitch_10
        -0x4b5506bf -> :sswitch_f
        -0x43c15418 -> :sswitch_e
        -0x415c922b -> :sswitch_d
        -0x3a626225 -> :sswitch_c
        -0x26e4f073 -> :sswitch_b
        -0x2458261b -> :sswitch_a
        -0x15e4e61f -> :sswitch_9
        -0x12fb978e -> :sswitch_8
        -0x61b588f -> :sswitch_7
        0x33f71d3 -> :sswitch_6
        0x1b08dd74 -> :sswitch_5
        0x3a5fdf73 -> :sswitch_4
        0x496fbb5c -> :sswitch_3
        0x67b32fc7 -> :sswitch_2
        0x74bfbd48 -> :sswitch_1
        0x7b5c4971 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_9
        :pswitch_e
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

.method public initialize()Z
    .locals 4

    const-string/jumbo v0, "resource"

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "gd_setting_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v1, "miui_special_feature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "freeform_guide_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_3
    const-string v1, "do_not_disturb_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "pref_edge_handgrip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "miui_bubbles_notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "video_tool_box_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "subscreen_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "slider_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v3, v2

    goto :goto_0

    :sswitch_9
    const-string v1, "beauty_fc_assistant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportDock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    return v2

    .line 117
    :pswitch_1
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isLowMemoryMachine()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_a

    return v2

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isShowFreeformGuideSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    return v2

    .line 79
    :pswitch_3
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_NEED_REMOVE_DISTURD:Z

    if-eqz v0, :cond_a

    return v2

    .line 84
    :pswitch_4
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_NEED_REMOVE_EDGE_MODE:Z

    if-eqz v0, :cond_a

    return v2

    .line 102
    :pswitch_5
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportBubblesNotification(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    return v2

    .line 92
    :pswitch_6
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isShowVideoToolBoxSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    return v2

    .line 122
    :pswitch_7
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->hasMiSubScreen()Z

    move-result v0

    if-nez v0, :cond_a

    :pswitch_8
    return v2

    .line 107
    :pswitch_9
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isFrontAssistantSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    return v2

    .line 129
    :cond_a
    :goto_1
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x719d8b41 -> :sswitch_9
        -0x6aceee86 -> :sswitch_8
        -0x69825cfb -> :sswitch_7
        -0x4b5506bf -> :sswitch_6
        -0x12fb978e -> :sswitch_5
        -0xdab2099 -> :sswitch_4
        -0xced68fd -> :sswitch_3
        0x3e05a8f5 -> :sswitch_2
        0x5ef3b461 -> :sswitch_1
        0x67b32fc7 -> :sswitch_0
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
