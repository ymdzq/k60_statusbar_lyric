.class public Lcom/android/settings/search/tree/FullScreenDisplaySettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "FullScreenDisplaySettingsTree.java"


# static fields
.field private static final AUTO_DISABLE_SCREEN_BUTTONS:Ljava/lang/String; = "auto_disable_screenbuttons_title"

.field public static final FSG_MISTAKE_TOUCH_TITLE:Ljava/lang/String; = "fsg_mistake_touch_title"

.field public static final INFINITY_DISPLAY_TITLE:Ljava/lang/String; = "infinity_display_title"

.field public static final NAVIGATION_GUIDE_APPSWITCH_ANIM_TITLE:Ljava/lang/String; = "navigation_guide_appswitch_anim_title"

.field public static final NAVIGATION_GUIDE_APPSWITCH_TITLE:Ljava/lang/String; = "navigation_guide_appswitch_title"

.field public static final NAVIGATION_GUIDE_APP_QUICK_SWITCH_TITLE:Ljava/lang/String; = "navigation_guide_app_quick_switch_title"

.field public static final NAVIGATION_GUIDE_HIDE_GESTURE_LINE_TITLE:Ljava/lang/String; = "navigation_guide_hide_gesture_line_title"

.field public static final NAVIGATION_GUIDE_SETTINGS:Ljava/lang/String; = "navigation_guide_settings"

.field public static final NAVIGATION_TYPE_RADIO_TEXT_FULL_SCREEN:Ljava/lang/String; = "navigation_type_radio_text_full_screen"

.field public static final NAVIGATION_TYPE_RADIO_TEXT_VIRTUAL_KEY:Ljava/lang/String; = "navigation_type_radio_text_virtual_key"

.field private static final SHOW_KEY_SHORTCUTS_ENTRY:Ljava/lang/String; = "show_key_shortcuts_entry_in_full_screen_settings"

.field public static final SWITCH_SCREEN_BUTTON_ORDER:Ljava/lang/String; = "switch_screen_button_order"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method

.method private addSon(Ljava/lang/String;)V
    .locals 2

    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "resource"

    .line 114
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_checkbox"

    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 116
    iget-object p1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private isSupportGestureSettings()Z
    .locals 2

    .line 122
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "show_key_shortcuts_entry_in_full_screen_settings"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method


# virtual methods
.method protected getStatus()I
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/controller/FullScreenDisplayController;->isRemoveEntryFromSettings(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "resource"

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "navigation_guide_hide_gesture_line_title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string v2, "auto_disable_screenbuttons_title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "switch_screen_button_order"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "navigation_guide_app_quick_switch_title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "navigation_guide_appswitch_title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "navigation_guide_appswitch_anim_title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_6
    const-string v2, "fsg_mistake_touch_title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 77
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/search/tree/FullScreenDisplaySettingsTree;->isSupportGestureSettings()Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/controller/FullScreenDisplayController;->isScreenButtonHidden(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/controller/FullScreenDisplayController;->isUseFsVersionThree(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {v0}, Lcom/android/settings/controller/FullScreenDisplayController;->isScreenButtonHidden(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    return v1

    .line 61
    :pswitch_3
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/controller/FullScreenDisplayController;->isUseFsVersionThree(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {v0}, Lcom/android/settings/controller/FullScreenDisplayController;->isScreenButtonHidden(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return v1

    .line 67
    :pswitch_4
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/controller/FullScreenDisplayController;->isScreenButtonHidden(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    :cond_a
    :goto_1
    const-string v0, "category_origin"

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "navigation_guide_settings"

    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 87
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/controller/FullScreenDisplayController;->isScreenButtonHidden(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 91
    :cond_b
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7646f48e -> :sswitch_6
        -0x6cb730fe -> :sswitch_5
        -0x626dcd00 -> :sswitch_4
        -0x240f4b95 -> :sswitch_3
        -0x2744097 -> :sswitch_2
        -0x22b5739 -> :sswitch_1
        0x1b8be7f2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public initialize()Z
    .locals 2

    const-string/jumbo v0, "resource"

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "infinity_display_title"

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "navigation_type_radio_text_virtual_key"

    .line 100
    invoke-direct {p0, v0}, Lcom/android/settings/search/tree/FullScreenDisplaySettingsTree;->addSon(Ljava/lang/String;)V

    const-string/jumbo v0, "navigation_type_radio_text_full_screen"

    .line 102
    invoke-direct {p0, v0}, Lcom/android/settings/search/tree/FullScreenDisplaySettingsTree;->addSon(Ljava/lang/String;)V

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0
.end method
