.class public Lcom/android/settings/search/tree/AccessibilitySettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "AccessibilitySettingsTree.java"


# static fields
.field public static final ACCESSIBILITY_DISPLAY_DALTONIZER_PREFERENCE_TITLE:Ljava/lang/String; = "accessibility_display_daltonizer_preference_title"

.field public static final ACCESSIBILITY_DISPLAY_INVERSION_PREFERENCE_TITLE:Ljava/lang/String; = "accessibility_display_inversion_preference_title"

.field static final ACCESSIBILITY_EXTRA:Ljava/lang/String; = "accessibility_extra"

.field public static final ACCESSIBILITY_HEARINGAID_TITLE:Ljava/lang/String; = "accessibility_hearingaid_title"

.field private static final ACCESSIBILITY_HEARING_TITLE:Ljava/lang/String; = "accessibility_settings_tabs_hearing"

.field public static final ACCESSIBILITY_SCREEN_MAGNIFICATION_GESTURES_TITLE:Ljava/lang/String; = "accessibility_screen_magnification_gestures_title"

.field public static final ACCESSIBILITY_SCREEN_MAGNIFICATION_NAVBAR_TITLE:Ljava/lang/String; = "accessibility_screen_magnification_navbar_title"

.field public static final ACCESSIBILITY_SCREEN_READER_HAPTIC_TITLE:Ljava/lang/String; = "accessibility_screen_reader_haptic_title"

.field private static final ACCESSIBILITY_VISUAL_TITLE:Ljava/lang/String; = "accessibility_settings_tabs_visual"

.field public static final ACCESSIBILITY_VOICE_ACCESS_CATEGORY:Ljava/lang/String; = "accessibility_voice_access_category"

.field public static final ACCESSIBILITY_VOICE_ACCESS_TITLE:Ljava/lang/String; = "accessibility_voice_access_title"

.field public static final ENVIRONMENTAL_SPEECH_RECOGNITION_KEY:Ljava/lang/String; = "environment_sound_recognition"

.field public static final ENVIRONMENTAL_SPEECH_RECOGNITION_TITLE:Ljava/lang/String; = "environmental_speech_recognition"

.field static final EXTRA_ANIMATED_IMAGE_RES:Ljava/lang/String; = "animated_image_res"

.field static final EXTRA_CHECKED:Ljava/lang/String; = "checked"

.field static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field static final EXTRA_FRAGMENT_NAME:Ljava/lang/String; = "fragment_name"

.field static final EXTRA_HTML_DESCRIPTION:Ljava/lang/String; = "html_description"

.field static final EXTRA_LAUNCHED_FROM_SUW:Ljava/lang/String; = "from_suw"

.field static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "preference_key"

.field static final EXTRA_SETTINGS_COMPONENT_NAME:Ljava/lang/String; = "settings_component_name"

.field static final EXTRA_SETTINGS_TITLE:Ljava/lang/String; = "settings_title"

.field static final EXTRA_SUMMARY:Ljava/lang/String; = "summary"

.field static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field static final EXTRA_TITLE_RES:Ljava/lang/String; = "title_res"

.field static final EXTRA_VIDEO_RAW_RESOURCE_ID:Ljava/lang/String; = "video_resource"

.field private static final FLASH_NOTIFICATION_FRAGMENT:Ljava/lang/String; = "com.android.settings.accessibility.FlashNotificationsPreferenceFragment"

.field private static final FLASH_NOTIFICATION_PREF_KEY:Ljava/lang/String; = "flash_notifications_preference"

.field private static final FLASH_NOTIFICATION_RESOURCE:Ljava/lang/String; = "flash_notifications_title"

.field public static final HEADPHONE_ASSISTED_TITLE:Ljava/lang/String; = "headphone_assisted_title"

.field public static final INTERACTION_CONTROL_CATEGORY_TITLE:Ljava/lang/String; = "interaction_control_category_title"

.field private static final KEY_TALKBACK_OCR:Ljava/lang/String; = "key_miui_enhance_tb_ocr"

.field public static final MIUI_ACCESSIBILITY_ASR_PREFERENCE:Ljava/lang/String; = "miui_accessibility_asr_preference"

.field public static final MIUI_ACCESSIBILITY_ASR_TITLE:Ljava/lang/String; = "miui_accessibility_asr_title"

.field private static final RES_TALKBACK_OCR:Ljava/lang/String; = "talkback_ocr_title"

.field public static final SCREEN_READER_CATEGORY_TITLE:Ljava/lang/String; = "screen_reader_category_title"

.field public static final SELECT_TO_SPEAK:Ljava/lang/String; = "com.google.android.marvin.talkback/com.google.android.accessibility.selecttospeak.SelectToSpeakService"

.field public static final SETTINGS_ACCESSIBILITY_ACCESSIBILITYMENU:Ljava/lang/String; = "com.android.settings/com.android.settings.accessibility.accessibilitymenu.AccessibilityMenuService"

.field public static final SWITCHACCESS_SWITCH:Ljava/lang/String; = "com.google.android.accessibility.switchaccess/com.android.switchaccess.SwitchAccessService"

.field private static final TOGGLE_AUTO_SPEAKER_PREFERENCE_TITLE:Ljava/lang/String; = "toggle_auto_speaker_preference_title"

.field public static final USER_INSTALLED_SERVICES_CATEGORY_TITLE:Ljava/lang/String; = "user_installed_services_category_title"

.field private static final VISUAL_ACCESSIBILITY_FRAGMENT:Ljava/lang/String; = "com.android.settings.accessibility.VisualAccessibilitySettings"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method

.method private addTalkbackOcr()V
    .locals 4

    .line 524
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "class"

    .line 525
    const-class v2, Lcom/android/settings/search/tree/AccessibilitySettingsTree;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "temporary"

    const/4 v2, 0x1

    .line 526
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "fragment"

    const-string v2, "com.android.settings.accessibility.VisualAccessibilitySettings"

    .line 527
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "title"

    .line 528
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->talkback_ocr_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "category"

    const-string/jumbo v2, "screen_reader_category_title"

    .line 529
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "preference_key"

    const-string v2, "key_miui_enhance_tb_ocr"

    .line 530
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "resource"

    const-string/jumbo v2, "talkback_ocr_title"

    .line 531
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private buildMiuiAccessibilitySettingsActivityIntent(I)Landroid/content/Intent;
    .locals 2

    .line 409
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "extra_tab_position"

    .line 410
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private getExtraHtmlDescription()Ljava/lang/String;
    .locals 5

    .line 398
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->accessibility_screen_magnification_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 399
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 401
    :try_start_0
    invoke-static {p0, v0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method private static hasColor(I)Z
    .locals 1

    .line 319
    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    ushr-int/lit8 p0, p0, 0x18

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

.method private static hasOpacity(I)Z
    .locals 1

    .line 323
    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    ushr-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_1

    :cond_0
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public buildCategory(Landroid/content/ComponentName;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 545
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .line 546
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x3496f8

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x6027a42

    if-eq p1, v0, :cond_1

    const v0, 0x47191123

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.accessibility.switchaccess/com.android.switchaccess.SwitchAccessService"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string p1, "com.google.android.marvin.talkback/com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_2
    const-string p1, "com.android.settings/com.android.settings.accessibility.accessibilitymenu.AccessibilityMenuService"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const-string p1, "category"

    if-eqz p0, :cond_5

    if-eq p0, v1, :cond_4

    const-string/jumbo p0, "user_installed_services_category_title"

    .line 559
    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    const-string/jumbo p0, "screen_reader_category_title"

    .line 553
    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_5
    const-string p0, "interaction_control_category_title"

    .line 549
    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 8

    const-string/jumbo v0, "resource"

    .line 338
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accessibility_screen_magnification_title"

    .line 340
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 342
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "preference_key"

    const-string v5, "accessibility_display_magnification_enabled"

    .line 343
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->accessibility_screen_magnification_title:I

    .line 346
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "title"

    .line 345
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "html_description"

    .line 347
    invoke-direct {p0}, Lcom/android/settings/search/tree/AccessibilitySettingsTree;->getExtraHtmlDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 348
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "checked"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "video_resource"

    .line 350
    sget v5, Lcom/android/settings/R$raw;->accessibility_screen_magnification:I

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "from_suw"

    .line 352
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, ":settings:show_fragment_args"

    .line 353
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "miui_accessibility_asr_title"

    .line 354
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 355
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportAiPickSound(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v2, "com.miui.accessibility"

    invoke-static {v0, v2}, Lcom/android/settings/MiuiUtils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.accessibility.asr.component.message.MessageActivity"

    .line 359
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settings/MiuiUtils;->cancelSplit(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0

    :cond_3
    const-string/jumbo v0, "market://comments?id=com.miui.accessibility"

    .line 364
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 365
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.xiaomi.market"

    .line 366
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 367
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v2

    .line 371
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "https://app.xiaomi.com/details?id=com.miui.accessibility&back=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 372
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_5

    return-object v0

    :cond_5
    :goto_1
    const-string v0, "fragment"

    .line 379
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v2, "com.android.settings.accessibility.VisualAccessibilitySettings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move v7, v5

    goto :goto_2

    :sswitch_1
    const-string v2, "com.android.settings.accessibility.GeneralAccessibilitySettings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    move v7, v6

    goto :goto_2

    :sswitch_2
    const-string v2, "com.android.settings.accessibility.HearingAccessibilitySettings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    move v7, v3

    goto :goto_2

    :sswitch_3
    const-string v2, "com.android.settings.accessibility.PhysicalAccessibilitySettings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    move v7, v4

    :goto_2
    packed-switch v7, :pswitch_data_0

    return-object v1

    .line 384
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/settings/search/tree/AccessibilitySettingsTree;->buildMiuiAccessibilitySettingsActivityIntent(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 382
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/settings/search/tree/AccessibilitySettingsTree;->buildMiuiAccessibilitySettingsActivityIntent(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 386
    :pswitch_2
    invoke-direct {p0, v6}, Lcom/android/settings/search/tree/AccessibilitySettingsTree;->buildMiuiAccessibilitySettingsActivityIntent(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 388
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/android/settings/search/tree/AccessibilitySettingsTree;->buildMiuiAccessibilitySettingsActivityIntent(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x34b707a5 -> :sswitch_3
        -0x1d1958c4 -> :sswitch_2
        0xbd0d208 -> :sswitch_1
        0x6ec181d2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSons()Ljava/util/LinkedList;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/android/settingslib/search/SettingsTree;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string/jumbo v1, "title"

    const-string/jumbo v2, "resource"

    .line 416
    invoke-virtual {v0, v2}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "accessibility_settings"

    .line 417
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "temporary"

    const/4 v6, 0x1

    if-eqz v4, :cond_c

    .line 418
    invoke-super/range {p0 .. p0}, Lcom/android/settingslib/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 420
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v7

    sub-int/2addr v7, v6

    :goto_0
    if-ltz v7, :cond_1

    .line 421
    invoke-virtual {v4, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/search/SettingsTree;

    .line 422
    invoke-virtual {v8, v5}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 423
    invoke-virtual {v8}, Lcom/android/settingslib/search/SettingsTree;->removeSelf()V

    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 427
    :cond_1
    iget-object v4, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 429
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v4

    .line 430
    iget-object v7, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 431
    invoke-static {v7}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    .line 432
    iget-object v8, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 433
    invoke-static {v8}, Lcom/android/settings/cloud/AccessibilityDisableList;->getCacheDisableSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    const-string v9, "com.miui.voiceassist"

    .line 434
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v9, "com.miui.securitycenter"

    .line 435
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v9, "com.miui.personalassistant"

    .line 436
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v9, "com.xiaomi.misettings"

    .line 437
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v9, "com.miui.accessibility"

    .line 438
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v9, "com.miui.powerkeeper"

    .line 439
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v9, "com.miui.handwriting"

    .line 440
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v9, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v10, "device_policy"

    .line 442
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 443
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v9

    .line 444
    iget-object v10, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 445
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_enabled"

    const/4 v12, 0x0

    .line 444
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v6, :cond_2

    move v10, v6

    goto :goto_1

    :cond_2
    move v10, v12

    .line 446
    :goto_1
    iget-object v11, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 447
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    move v14, v12

    :goto_2
    if-ge v14, v13, :cond_c

    .line 448
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 449
    invoke-virtual {v15}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 450
    iget-object v6, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v4

    .line 452
    invoke-static {v15}, Lcom/android/settings/accessibility/AccessibilityServiceUtils;->getAccessibilityServiceFragmentTypeName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v4

    move/from16 v17, v13

    .line 453
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 454
    invoke-virtual {v15}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getAnimatedImageRes()I

    move-result v13

    .line 456
    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v3

    .line 457
    iget-object v3, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, Lcom/android/settings/accessibility/AccessibilitySettings;->HIDE_SERVICES_LIST:Ljava/util/List;

    move-object/from16 v19, v8

    iget-object v8, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 458
    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v2

    move-object/from16 v21, v7

    goto/16 :goto_9

    .line 461
    :cond_3
    new-instance v3, Landroid/content/ComponentName;

    iget-object v8, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move/from16 v20, v14

    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v8, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_4

    .line 464
    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-eqz v9, :cond_6

    .line 465
    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 466
    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v12, 0x1

    .line 467
    :goto_5
    iget-object v14, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v14, v15, v8}, Lcom/android/settings/accessibility/AccessibilityServiceUtils;->getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v14

    .line 469
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 470
    iget-object v14, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v21, v7

    sget v7, Lcom/android/settings/R$string;->accessibility_service_default_description:I

    .line 471
    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_7
    move-object/from16 v21, v7

    .line 473
    :goto_6
    invoke-virtual {v15, v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v22, v9

    .line 474
    invoke-virtual {v15}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v9

    move/from16 v23, v10

    .line 475
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v24, v11

    .line 476
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v25, v2

    :try_start_0
    const-string/jumbo v2, "preference_key"

    move/from16 v26, v12

    .line 478
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "checked"

    .line 479
    invoke-virtual {v10, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 480
    invoke-virtual {v10, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "summary"

    .line 481
    invoke-virtual {v10, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "animated_image_res"

    .line 482
    invoke-virtual {v10, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "html_description"

    .line 483
    invoke-virtual {v10, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "fragment_name"

    .line 484
    invoke-virtual {v10, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "settings_title"

    .line 486
    iget-object v4, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/settings/R$string;->accessibility_menu_item_settings:I

    .line 487
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 486
    invoke-virtual {v10, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "settings_component_name"

    .line 488
    new-instance v4, Landroid/content/ComponentName;

    .line 489
    invoke-virtual {v15}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 488
    invoke-virtual {v10, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    const-string v2, "component_name"

    .line 492
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "class"

    .line 493
    const-class v4, Lcom/android/settings/search/tree/AccessibilityServiceSettingsTree;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x1

    .line 494
    invoke-virtual {v11, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 495
    invoke-virtual {v11, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    invoke-virtual {v0, v3, v11}, Lcom/android/settings/search/tree/AccessibilitySettingsTree;->buildCategory(Landroid/content/ComponentName;Lorg/json/JSONObject;)V

    const-string v2, "accessibility_extra"

    .line 497
    invoke-virtual {v11, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "status"

    if-nez v26, :cond_a

    if-eqz v8, :cond_9

    goto :goto_7

    :cond_9
    const/4 v4, 0x1

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v4, 0x3

    .line 498
    :goto_8
    invoke-virtual {v11, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 500
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v3, v25

    :try_start_1
    invoke-virtual {v11, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    iget-object v2, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2, v11, v0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_0
    move-object/from16 v3, v25

    goto :goto_a

    :cond_b
    move-object v3, v2

    move-object/from16 v21, v7

    move-object/from16 v19, v8

    :goto_9
    move-object/from16 v22, v9

    move/from16 v23, v10

    move-object/from16 v24, v11

    move/from16 v20, v14

    :catch_1
    :goto_a
    add-int/lit8 v14, v20, 0x1

    move-object v2, v3

    move-object/from16 v4, v16

    move/from16 v13, v17

    move-object/from16 v3, v18

    move-object/from16 v8, v19

    move-object/from16 v7, v21

    move-object/from16 v9, v22

    move/from16 v10, v23

    move-object/from16 v11, v24

    const/4 v6, 0x1

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_c
    move-object/from16 v18, v3

    const-string v1, "accessibility_settings_tabs_visual"

    move-object/from16 v2, v18

    .line 507
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 508
    invoke-super/range {p0 .. p0}, Lcom/android/settingslib/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 510
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_b
    if-ltz v2, :cond_e

    .line 511
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/search/SettingsTree;

    .line 512
    invoke-virtual {v3, v5}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 513
    invoke-virtual {v3}, Lcom/android/settingslib/search/SettingsTree;->removeSelf()V

    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 517
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/search/tree/AccessibilitySettingsTree;->addTalkbackOcr()V

    .line 519
    :cond_f
    invoke-super/range {p0 .. p0}, Lcom/android/settingslib/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method protected getStatus()I
    .locals 9

    const-string v0, "category_origin"

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v3, "captioning"

    .line 182
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/CaptioningManager;

    const-string/jumbo v3, "resource"

    .line 183
    invoke-virtual {p0, v3}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "captioning_standard_options_title"

    .line 184
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 185
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    return v5

    :cond_0
    const-string v4, "captioning_custom_options_title"

    .line 188
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 189
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 190
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v2

    const v4, 0xffffff

    if-eqz v2, :cond_2

    .line 195
    iget v2, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_0

    :cond_2
    move v2, v4

    .line 196
    :goto_0
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 197
    iget v7, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1

    :cond_3
    move v7, v4

    .line 198
    :goto_1
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 199
    iget v4, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    :cond_4
    const-string v8, "captioning_foreground_opacity"

    .line 200
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 201
    invoke-static {v2}, Lcom/android/settings/search/tree/AccessibilitySettingsTree;->hasColor(I)Z

    move-result v1

    if-nez v1, :cond_9

    return v5

    :cond_5
    const-string v2, "captioning_edge_color"

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 205
    iget v1, v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    if-nez v1, :cond_9

    return v5

    :cond_6
    const-string v1, "captioning_background_opacity"

    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 209
    invoke-static {v7}, Lcom/android/settings/search/tree/AccessibilitySettingsTree;->hasColor(I)Z

    move-result v1

    if-nez v1, :cond_9

    return v5

    :cond_7
    const-string v1, "captioning_window_opacity"

    .line 212
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 213
    invoke-static {v4}, Lcom/android/settings/search/tree/AccessibilitySettingsTree;->hasColor(I)Z

    move-result v1

    if-nez v1, :cond_9

    return v5

    :cond_8
    :goto_2
    return v6

    :cond_9
    const-string v1, "live_caption_title"

    .line 218
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 219
    new-instance v0, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v2, "live_caption"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/LiveCaptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1d

    return v6

    :cond_a
    const-string v1, "accessibility_power_button_ends_call_prerefence_title"

    .line 224
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v0, 0x1a

    .line 225
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 226
    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_b
    return v6

    :cond_c
    const-string v1, "dark_ui_mode"

    .line 229
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 230
    new-instance v0, Lcom/android/settings/display/DarkUIPreferenceController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v2, "dark_ui_mode_accessibility"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/display/DarkUIPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1d

    return v6

    :cond_d
    const-string v1, "accessibility_hearingaid_title"

    .line 235
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 236
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v2, "hearing_aid_preference"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-eqz v0, :cond_1d

    return v6

    :cond_e
    const-string/jumbo v1, "miui_accessibility_asr_title"

    .line 241
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 242
    new-instance v0, Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "miui_accessibility_asr_preference"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/MiuiAccessibilityAsrController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1d

    return v6

    :cond_f
    const-string v1, "headphone_assisted_title"

    .line 247
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 248
    new-instance v0, Lcom/android/settings/accessibility/HeadphoneAssistedController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v2, "headphone_assisted"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/HeadphoneAssistedController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1d

    return v6

    :cond_10
    const-string v1, "accessibility_display_daltonizer_preference_title"

    .line 253
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "accessibility_display_inversion_preference_title"

    .line 254
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_4

    :cond_11
    const-string v0, "accessibility_voice_access_title"

    .line 259
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 260
    new-instance v0, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessCategoryController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v2, "accessibility_voice_access_category"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Lcom/android/settings/accessibility/voiceaccess/VoiceAccessCategoryController;->getAvailabilityStatus()I

    move-result v0

    if-eqz v0, :cond_1d

    return v6

    :cond_12
    const-string v0, "accessibility_screen_magnification_gestures_title"

    .line 265
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "accessibility_screen_magnification_navbar_title"

    .line 266
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_3

    :cond_13
    const-string/jumbo v0, "rtt_settings_title"

    .line 269
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 270
    new-instance v0, Lcom/android/settings/accessibility/RTTSettingPreferenceController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v2, "dialer_rtt_configuration"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/RTTSettingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Lcom/android/settings/accessibility/RTTSettingPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-eqz v0, :cond_1d

    return v6

    :cond_14
    const-string v0, "accessibility_vibration_settings_title"

    .line 275
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 276
    new-instance v0, Lcom/android/settings/accessibility/VibrationPreferenceController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibration_preference_screen"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/VibrationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-eqz v0, :cond_1d

    return v6

    :cond_15
    const-string v0, "environmental_speech_recognition"

    .line 281
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 282
    new-instance v0, Lcom/android/settings/accessibility/EnvironmentSoundRecognitionController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v2, "environment_sound_recognition"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/EnvironmentSoundRecognitionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Lcom/android/settings/accessibility/EnvironmentSoundRecognitionController;->getAvailabilityStatus()I

    move-result v0

    if-eqz v0, :cond_1d

    return v6

    :cond_16
    const-string v0, "accessibility_button_or_gesture_title"

    .line 287
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 288
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityButtonGesturePreferenceController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v2, "accessibility_button_or_gesture"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilityButtonGesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilityButtonGesturePreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-eqz v0, :cond_1d

    return v6

    :cond_17
    const-string v0, "accessibility_button_location_title"

    .line 293
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 294
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityButtonLocationPreferenceController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v2, "accessibility_button_location"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilityButtonLocationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilityButtonLocationPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-eqz v0, :cond_1d

    return v6

    :cond_18
    const-string v0, "flash_notifications_title"

    .line 299
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 300
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedFlashNotification(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    return v6

    :cond_19
    const-string/jumbo v0, "miui_type_style_title"

    .line 303
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 304
    new-instance v0, Lcom/android/settings/accessibility/MiuiTypeStylePreferenceController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "tts_settings_preference"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibility/MiuiTypeStylePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Lcom/android/settings/accessibility/MiuiTypeStylePreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-eqz v0, :cond_1d

    return v6

    :cond_1a
    const-string/jumbo v0, "talkback_ocr_title"

    .line 309
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 310
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportAiEngine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.accessibility/com.miui.accessibility.enhance.tb.MiuiEnhanceTBService"

    .line 311
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->isServiceInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_1b
    :goto_3
    return v6

    .line 255
    :cond_1c
    :goto_4
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "display_category_title"

    .line 256
    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "category"

    .line 257
    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_1d
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0
.end method

.method protected getTitle(Z)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "resource"

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "miui_accessibility_asr_title"

    .line 329
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 330
    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportAiPickSound(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->live_caption_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 333
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initialize()Z
    .locals 5

    const-string/jumbo v0, "resource"

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accessibility_screen_magnification_title"

    .line 147
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "fragment"

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/search/tree/AccessibilitySettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_0
    if-ltz v1, :cond_0

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/search/SettingsTree;

    invoke-virtual {v2}, Lcom/android/settingslib/search/SettingsTree;->removeSelf()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 154
    :cond_0
    const-class v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p0, v3, v0}, Lcom/android/settingslib/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "toggle_auto_speaker_preference_title"

    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-eqz v0, :cond_5

    :cond_2
    return v4

    :cond_3
    const-string v2, "accessibility_screen_reader_haptic_title"

    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportAccessibilityHaptic(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    return v4

    :cond_4
    const-string v2, "accessibility_settings_tabs_hearing"

    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 165
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "flash_notifications_title"

    .line 167
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "preference_key"

    const-string v2, "flash_notifications_preference"

    .line 168
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "com.android.settings.accessibility.FlashNotificationsPreferenceFragment"

    .line 169
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_checkbox"

    const/4 v2, 0x0

    .line 170
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :catch_0
    :cond_5
    :goto_1
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0
.end method
