.class public Lcom/android/settings/search/tree/FoldScreenSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "FoldScreenSettingsTree.java"


# static fields
.field private static final APPLICATION_MODE:Ljava/lang/String; = "fold_application_mode_name"

.field private static final AUTOUI_MODE:Ljava/lang/String; = "autoui_mode_name"

.field private static final DEVICE_IME_KEYBOARD:Ljava/lang/String; = "device_ime_keyboard_fold"

.field private static final DYNAMIC_WALLPAPER:Ljava/lang/String; = "wallpaper_setting_title"

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

.field private static final HOVER_MODE:Ljava/lang/String; = "hover_mode_name"

.field private static final KEY_FREEFORM_GESTURE_SPLIT_SCREEN:Ljava/lang/String; = "gesture_to_split_screen"

.field private static final KEY_FREEFORM_GUIDE_SPLIT_SCREEN_COMBINATION:Ljava/lang/String; = "freeform_guide_split_screen_combination_pad"

.field private static final MULTI_WINDOW_CVW:Ljava/lang/String; = "multi_window_cvw_title"

.field private static final SUPER_ASSISTANT:Ljava/lang/String; = "gd_setting_title"


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

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/android/settings/search/tree/FoldScreenSettingsTree;->isSplitScreenCombinationfoldTitle:Z

    return-void
.end method


# virtual methods
.method protected getStatus()I
    .locals 6

    const-string/jumbo v0, "resource"

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
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
    const-string v1, "device_ime_keyboard_fold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "freeform_guide_multiple_window_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "gd_setting_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "freeform_guide_split_screen_combination_pad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "fold_application_mode_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "freeform_guide_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "freeform_guide_free_drag_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v1, "multi_window_cvw_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "autoui_mode_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_9
    const-string v1, "hover_mode_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_a
    const-string v1, "freeform_guide_slide_to_small_freeform_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_b
    const-string v1, "freeform_recommend_open_switch_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_c
    const-string/jumbo v1, "wallpaper_setting_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    move v5, v3

    goto :goto_0

    :sswitch_d
    const-string v1, "gesture_to_split_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_e
    const-string v1, "freeform_guide_move_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    move v5, v2

    goto :goto_0

    :sswitch_f
    const-string v1, "freeform_guide_to_sidehide_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 123
    :pswitch_0
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportMultiple()Z

    move-result v0

    if-nez v0, :cond_12

    return v4

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportDock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    return v4

    .line 142
    :pswitch_2
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_FOLD_SCREEN_SETTINGS:Z

    if-eqz v0, :cond_10

    .line 143
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 144
    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isScreenLayoutLarge(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 145
    iput-boolean v2, p0, Lcom/android/settings/search/tree/FoldScreenSettingsTree;->isSplitScreenCombinationfoldTitle:Z

    return v3

    :cond_10
    return v4

    .line 83
    :pswitch_3
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isShowApplicationMode()Z

    move-result v0

    if-nez v0, :cond_12

    return v4

    .line 78
    :pswitch_4
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isShowFreeformGuideSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    return v4

    .line 128
    :pswitch_5
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportFreeDrag()Z

    move-result v0

    if-nez v0, :cond_12

    return v4

    .line 103
    :pswitch_6
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_12

    return v4

    .line 93
    :pswitch_7
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->shouldShowAutoUIModeSetting()Z

    move-result v0

    if-nez v0, :cond_12

    return v4

    .line 88
    :pswitch_8
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->shouldShowHoverModeSetting()Z

    move-result v0

    if-nez v0, :cond_12

    return v4

    .line 118
    :pswitch_9
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->getPin()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_12

    return v4

    .line 150
    :pswitch_a
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportRecommend()Z

    move-result v0

    if-nez v0, :cond_12

    return v4

    .line 73
    :pswitch_b
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_12

    return v4

    .line 134
    :pswitch_c
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_FOLD_SCREEN_SETTINGS:Z

    if-eqz v0, :cond_11

    .line 135
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 136
    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isScreenLayoutLarge(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_11

    return v3

    :cond_11
    return v4

    .line 113
    :pswitch_d
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_12

    return v4

    .line 108
    :pswitch_e
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isShowFreeformGuideSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    return v4

    .line 157
    :cond_12
    :goto_1
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76b5209c -> :sswitch_f
        -0x76431f44 -> :sswitch_e
        -0x46c53281 -> :sswitch_d
        -0x32c633d4 -> :sswitch_c
        -0x32acc9f0 -> :sswitch_b
        -0x2458261b -> :sswitch_a
        -0x19a20f9c -> :sswitch_9
        0x119736eb -> :sswitch_8
        0x1b08dd74 -> :sswitch_7
        0x33f6a22e -> :sswitch_6
        0x3e05a8f5 -> :sswitch_5
        0x528809ba -> :sswitch_4
        0x56ad0fe7 -> :sswitch_3
        0x67b32fc7 -> :sswitch_2
        0x67d0c386 -> :sswitch_1
        0x74c94bb2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method protected getTitle(Z)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "resource"

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fold_application_mode_name"

    .line 163
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/applicationmode/RemoteUtils;->isMiPadDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->magic_window_name_pad:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 166
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/search/tree/FoldScreenSettingsTree;->isSplitScreenCombinationfoldTitle:Z

    if-eqz v1, :cond_1

    const-string v1, "freeform_guide_split_screen_combination_pad"

    .line 167
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->freeform_guide_split_screen_combination_fold:I

    .line 169
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 171
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initialize()Z
    .locals 3

    .line 57
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_FOLD_SCREEN_SETTINGS:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "resource"

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "intelligent_keep_screen_on"

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 64
    :cond_1
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0
.end method
