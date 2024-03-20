.class public Lcom/android/settings/search/tree/DisplaySettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "DisplaySettingsTree.java"


# static fields
.field public static final ACTION_EXPERT:Ljava/lang/String; = "miui.intent.action.SCREEN_EXPERT"

.field private static final ACTION_FONTSIZE_KDDI:Ljava/lang/String; = "android.settings.ACCESSIBILITY_SETTINGS_FOR_SUW"

.field private static final AMBIENT_DISPLAY_PICKUP_TITLE:Ljava/lang/String; = "ambient_display_pickup_title"

.field private static final AMBIENT_DISPLAY_TITLE:Ljava/lang/String; = "ambient_display_title"

.field private static final CLASS_NAME_FONT_SIZE_SETTINGS_FOR_SUW:Ljava/lang/String; = "com.android.settings.FontSizeSettingsForSetupWizardActivity"

.field private static final CUSTOMIZE_HIGH_REFRESH_TITLE:Ljava/lang/String; = "customize_high_refresh_title"

.field private static final DISPLAY_ADVANCED_MODE_TITLE:Ljava/lang/String; = "display_advanced_mode_title"

.field private static final FHD_WIDTH:I = 0x438

.field private static final SCREEN_FPS_TITLE:Ljava/lang/String; = "screen_fps_title"

.field public static final SEARCH_SCREEN_FPS_TITLE:Ljava/lang/String; = "search_screen_fps_title"

.field private static final TITLE_FONT_SETTINGS:Ljava/lang/String; = "title_font_settings"


# instance fields
.field private IS_NOT_SHOW_FONT:Z

.field configuration:Landroid/content/res/Configuration;

.field final isPrimaryUser:Z

.field final mDisableDclightAndHighFps:Z

.field final myUserId:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    .line 73
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->checkGlobalFontSettingEnable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p3

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/search/tree/DisplaySettingsTree;->IS_NOT_SHOW_FONT:Z

    .line 75
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/search/tree/DisplaySettingsTree;->myUserId:I

    if-nez p1, :cond_2

    move p1, p3

    goto :goto_2

    :cond_2
    move p1, p2

    .line 76
    :goto_2
    iput-boolean p1, p0, Lcom/android/settings/search/tree/DisplaySettingsTree;->isPrimaryUser:Z

    .line 78
    iget-object p1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/search/tree/DisplaySettingsTree;->configuration:Landroid/content/res/Configuration;

    .line 79
    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 p4, 0x3

    if-ne p1, p4, :cond_3

    const-string p1, "cetus"

    sget-object p4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 80
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p2, p3

    :cond_3
    iput-boolean p2, p0, Lcom/android/settings/search/tree/DisplaySettingsTree;->mDisableDclightAndHighFps:Z

    return-void
.end method

.method private addFpsTitleKeywords()V
    .locals 6

    .line 226
    invoke-virtual {p0}, Lcom/android/settingslib/search/SettingsTree;->getKeywords()[Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 228
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 229
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "fpsList"

    .line 231
    invoke-static {v2}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 232
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v2, v3

    .line 233
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "keywords"

    const-string/jumbo v3, "search_screen_fps_title"

    .line 235
    invoke-virtual {p0, v2, v3}, Lcom/android/settingslib/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :try_start_0
    const-class v2, Lcom/android/settingslib/search/SettingsTree;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mKeywords"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 238
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 240
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private addSon(Ljava/lang/String;Z)V
    .locals 3

    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "truetone_title"

    .line 251
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "preference_key"

    const-string/jumbo v2, "screen_truetone_pref"

    .line 252
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo v1, "resource"

    .line 254
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_checkbox"

    .line 255
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 256
    iget-object p1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private addSonWithIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 262
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "resource"

    .line 264
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "temporary"

    const/4 v1, 0x1

    .line 265
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo p1, "preference_key"

    .line 266
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    iget-object p1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static isQhdMode()Z
    .locals 4

    const-string/jumbo v0, "persist.sys.miui_resolution"

    const/4 v1, 0x0

    .line 466
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 467
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    .line 468
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x438

    if-ne v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 5

    .line 477
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    const-string/jumbo v0, "resource"

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "display_advanced_mode_title"

    .line 479
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/ScreenEffectFragment;->getScreenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 481
    new-instance p0, Landroid/content/Intent;

    const-string/jumbo v0, "miui.intent.action.SCREEN_EXPERT"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.xiaomi.misettings"

    const-string v1, "com.xiaomi.misettings.display.ScreenExpertActivity"

    .line 482
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_0
    const-string/jumbo v1, "title_font_settings"

    .line 485
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.android.settings"

    const/4 v3, 0x1

    const-string v4, "android.intent.category.DEFAULT"

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings/RegionUtils;->IS_JP_SB:Z

    if-eqz v1, :cond_2

    .line 487
    :cond_1
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.ACCESSIBILITY_SETTINGS_FOR_SUW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isSetupFlow"

    .line 489
    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 490
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings.FontSizeSettingsForSetupWizardActivity"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0

    :cond_2
    const-string/jumbo v1, "title_font_current2"

    .line 493
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 494
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 495
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    .line 497
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v1, :cond_3

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "theme://zhuti.xiaomi.com/settingsfont?miback=true&miref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 505
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "theme://zhuti.xiaomi.com/list?S.REQUEST_RESOURCE_CODE=fonts&miback=true&miref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 510
    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, ":miui:starting_window_label"

    const-string v1, ""

    .line 511
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 513
    new-instance p0, Landroid/content/ComponentName;

    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.activity.ThemeTabActivity"

    invoke-direct {p0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_4
    return-object v0

    :cond_5
    const-string v1, "customize_high_refresh_title"

    .line 517
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 518
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "miui.intent.action.HIGH_REFRESH"

    .line 519
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    invoke-virtual {p0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_6
    const-string v1, "classic_mode_title"

    .line 522
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSupportRhythmicMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 523
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    .line 524
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings.SubSettings"

    .line 525
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->screen_paper_mode_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment_title"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment"

    const-string v1, "com.android.settings.display.PaperModeFragment"

    .line 527
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:fragment_args_key"

    const-string v1, "classic_mode"

    .line 528
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":android:no_headers"

    .line 529
    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0

    .line 532
    :cond_7
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSons()Ljava/util/LinkedList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/android/settingslib/search/SettingsTree;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "resource"

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "display_settings"

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "temporary"

    if-eqz v1, :cond_2

    .line 91
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 94
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/search/SettingsTree;

    .line 95
    invoke-virtual {v4, v2}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    invoke-virtual {v4}, Lcom/android/settingslib/search/SettingsTree;->removeSelf()V

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    const-string v1, "light_color_mode"

    const-string v3, ""

    .line 100
    invoke-direct {p0, v1, v3}, Lcom/android/settings/search/tree/DisplaySettingsTree;->addSonWithIcon(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "screen_effect"

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "support_display_expert_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/search/SettingsTree;

    .line 108
    invoke-virtual {v3, v2}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 109
    invoke-virtual {v3}, Lcom/android/settingslib/search/SettingsTree;->removeSelf()V

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    const-string v0, "display_advanced_mode_title"

    const-string/jumbo v1, "screen_optimize_expert"

    .line 113
    invoke-direct {p0, v0, v1}, Lcom/android/settings/search/tree/DisplaySettingsTree;->addSonWithIcon(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_5
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method protected getStatus()I
    .locals 9

    const-string/jumbo v0, "resource"

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "paper_mode_auto_twilight_title"

    .line 275
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_26

    const-string/jumbo v2, "paper_mode_customize_time_title"

    .line 276
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string/jumbo v2, "paper_mode_start_time_title"

    .line 280
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x2

    if-nez v2, :cond_25

    const-string/jumbo v2, "paper_mode_end_time_title"

    .line 281
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string/jumbo v2, "more_dark_mode_settings"

    .line 288
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/search/tree/DisplaySettingsTree;->isPrimaryUser:Z

    if-nez v2, :cond_27

    :cond_2
    return v4

    :cond_3
    const-string v2, "dark_mode_normal_display_enable"

    .line 292
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 293
    invoke-static {v2}, Lcom/android/settings/utils/SettingsFeatures;->supportLiteOptimization(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v4

    :cond_4
    const-string v2, "dark_mode_display_enable"

    .line 295
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 296
    invoke-static {v2}, Lcom/android/settings/utils/SettingsFeatures;->supportLiteOptimization(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    return v4

    :cond_5
    const-string v2, "ambient_display_pickup_title"

    .line 298
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, ""

    if-eqz v2, :cond_6

    .line 299
    new-instance v2, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    iget-object v5, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v6}, Lcom/android/settings/gestures/PickupGesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v2}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->getAvailabilityStatus()I

    move-result v2

    if-eqz v2, :cond_27

    return v4

    :cond_6
    const-string/jumbo v2, "night_light_brightness"

    .line 304
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v4

    :cond_7
    const-string v2, "ambient_display_title"

    .line 307
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 308
    new-instance v2, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    iget-object v5, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v6}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v2}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->getAvailabilityStatus()I

    move-result v2

    if-eqz v2, :cond_27

    return v4

    :cond_8
    const-string/jumbo v2, "screen_max_aspect_ratio_title"

    .line 313
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 314
    new-instance v2, Lcom/android/settings/controller/ScreenMaxAspectRatioController;

    iget-object v5, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "screen_max_aspect_ratio"

    invoke-direct {v2, v5, v6}, Lcom/android/settings/controller/ScreenMaxAspectRatioController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v2}, Lcom/android/settings/controller/ScreenMaxAspectRatioController;->getAvailabilityStatus()I

    move-result v2

    if-eqz v2, :cond_27

    return v4

    :cond_9
    const-string v2, "dark_ui_mode"

    .line 319
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 320
    new-instance v2, Lcom/android/settings/display/DarkUIPreferenceController;

    iget-object v5, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v6, "dark_ui_mode_accessibility"

    invoke-direct {v2, v5, v6}, Lcom/android/settings/display/DarkUIPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v2}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_27

    return v4

    :cond_a
    const-string/jumbo v2, "title_font_current2"

    .line 325
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-boolean v2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v2, :cond_d

    .line 326
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_b

    move v2, v3

    goto :goto_0

    :cond_b
    move v2, v4

    :goto_0
    if-nez v2, :cond_c

    return v4

    .line 332
    :cond_c
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/utils/SettingsFeatures;->checkGlobalFontSettingEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_27

    return v4

    :cond_d
    const-string v2, "adaptive_sleep_title"

    .line 336
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 337
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->isControllerAvailable(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_27

    return v4

    :cond_e
    const-string/jumbo v2, "screen_paper_texture"

    .line 340
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/MiuiUtils;->isSecondSpace(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_f

    return v4

    :cond_f
    const-string v7, "classic_mode_title"

    .line 342
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "fragment"

    if-eqz v7, :cond_12

    .line 343
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_10

    return v4

    .line 346
    :cond_10
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 347
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->getPaperModeType(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v3, :cond_11

    goto :goto_1

    .line 348
    :cond_11
    const-class v2, Lcom/android/settings/display/ClassicProtectionFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 347
    :goto_1
    invoke-virtual {p0, v8, v6}, Lcom/android/settingslib/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_12
    const-string/jumbo v7, "paper_mode_title"

    .line 350
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 351
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportPaperEyeCare()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_4

    .line 354
    :cond_13
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 355
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->isSupportRhythmicMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 356
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->getPaperModeType(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v5, :cond_14

    goto :goto_2

    .line 357
    :cond_14
    const-class v2, Lcom/android/settings/display/PaperProtectionFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 356
    :goto_2
    invoke-virtual {p0, v8, v6}, Lcom/android/settingslib/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 359
    :cond_15
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->getPaperModeType(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_3

    .line 360
    :cond_16
    const-class v2, Lcom/android/settings/display/PaperProtectionFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 359
    :goto_3
    invoke-virtual {p0, v8, v6}, Lcom/android/settingslib/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_17
    :goto_4
    return v4

    :cond_18
    const-string v5, "auto_adjust_effect_title"

    .line 363
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportSmartEyeCare()Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 364
    invoke-static {v5}, Lcom/android/settings/MiuiUtils;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1a

    :cond_19
    return v4

    :cond_1a
    const-string v5, "adjust_temperature_title"

    .line 366
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 367
    invoke-static {v5}, Lcom/android/settings/MiuiUtils;->getPaperModeType(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_1b

    return v4

    :cond_1b
    const-string/jumbo v5, "texture_adjust_temperature_title"

    .line 369
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 370
    invoke-static {v5}, Lcom/android/settings/MiuiUtils;->getPaperModeType(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v3, :cond_1c

    iget-object v5, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/MiuiUtils;->getPaperModeType(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v6, :cond_1c

    return v4

    .line 372
    :cond_1c
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 373
    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->getPaperModeType(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v3, :cond_1d

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->getPaperModeType(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v6, :cond_1d

    return v4

    :cond_1d
    const-string/jumbo v2, "paper_color_title"

    .line 375
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 376
    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->getPaperModeType(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v3, :cond_1e

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->getPaperModeType(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v6, :cond_1e

    return v4

    :cond_1e
    const-string/jumbo v2, "paper_mode_reset"

    .line 378
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 379
    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->getPaperModeType(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v3, :cond_1f

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->getPaperModeType(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v6, :cond_1f

    return v4

    :cond_1f
    const-string v2, "display_animate_title"

    .line 381
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportAnimateCheck()Z

    move-result v2

    if-nez v2, :cond_20

    return v4

    :cond_20
    const-string/jumbo v2, "sunlight_mode"

    .line 383
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 384
    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->isAutoBrightnessModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "config_sunlight_mode_available"

    .line 385
    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_21
    return v4

    :cond_22
    const-string v2, "accelerometer_title"

    .line 387
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    sget-boolean v2, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_TWO_AUTO_ROTATE:Z

    if-eqz v2, :cond_23

    return v4

    :cond_23
    const-string v2, "external_auto_rotate_title"

    .line 389
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "internal_auto_rotate_title"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_24
    sget-boolean v2, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_TWO_AUTO_ROTATE:Z

    if-nez v2, :cond_27

    return v4

    .line 282
    :cond_25
    :goto_5
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "paper_mode_scheduler_type"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_27

    return v3

    .line 277
    :cond_26
    :goto_6
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_27

    return v3

    :cond_27
    :goto_7
    const-string v2, "category_origin"

    .line 393
    invoke-virtual {p0, v2}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "screen_dark_mode_advanced_title"

    .line 394
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 395
    invoke-static {v2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_28

    return v4

    .line 398
    :cond_28
    sget-boolean v2, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-nez v2, :cond_29

    sget-boolean v2, Lcom/android/settings/RegionUtils;->IS_JP_SB:Z

    if-eqz v2, :cond_2a

    :cond_29
    const-string/jumbo v2, "title_layout_current2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    return v4

    :cond_2a
    const-string/jumbo v2, "save_battery_mode"

    .line 402
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lcom/android/settings/search/tree/DisplaySettingsTree;->isQhdMode()Z

    move-result v2

    if-nez v2, :cond_2b

    return v4

    :cond_2b
    const-string/jumbo v2, "title_font_settings"

    .line 404
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 405
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_8

    :cond_2c
    move v3, v4

    :goto_8
    if-nez v3, :cond_2d

    return v4

    :cond_2d
    const-string/jumbo v3, "screen_dark_mode_time_title"

    .line 411
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "dark_color_mode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "light_color_mode"

    .line 412
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "dark_mode_time_settings"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_2e
    iget-boolean v3, p0, Lcom/android/settings/search/tree/DisplaySettingsTree;->isPrimaryUser:Z

    if-nez v3, :cond_2f

    return v4

    .line 416
    :cond_2f
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_30

    return v4

    :cond_30
    const-string/jumbo v2, "media_output_summary"

    .line 419
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {}, Lcom/android/settings/MiuiUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_31

    return v4

    :cond_31
    const-string v2, "customize_high_refresh_title"

    .line 422
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/utils/SettingsFeatures;->showHighRefreshPreference(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_32

    return v4

    :cond_32
    const-string/jumbo v2, "screen_enhance_engine_memc_title"

    .line 425
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p0}, Lcom/android/settingslib/search/SettingsTree;->getParent()Lcom/android/settingslib/search/SettingsTree;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "display_settings_new"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 426
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->hasExtremeAudioAndVideo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_33

    return v4

    :cond_33
    const-string v0, "dark_mode_settings"

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "dark_mode_font_background_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_34
    iget-boolean v0, p0, Lcom/android/settings/search/tree/DisplaySettingsTree;->isPrimaryUser:Z

    if-nez v0, :cond_35

    return v4

    :cond_35
    const-string v0, "display_advanced_mode_title"

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/android/settings/display/ScreenEffectFragment;->supportDisplayAdvanced()Z

    move-result v0

    if-nez v0, :cond_36

    return v4

    .line 437
    :cond_36
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0
.end method

.method protected getTitle(Z)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "resource"

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "customize_high_refresh_title"

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "classic_mode_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "paper_mode_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 445
    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string p1, "com.xiaomi.misettings"

    invoke-static {p0, p1, v2}, Lcom/android/settings/MiuiUtils;->getStringFromSpecificPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 447
    :pswitch_1
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSupportRhythmicMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->rhythmic_mode_enable_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 452
    :pswitch_2
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSupportRhythmicMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->classic_mode_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 459
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x42eb32b1 -> :sswitch_2
        -0x30b8d977 -> :sswitch_1
        0x7bb6c993 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initialize()Z
    .locals 4

    const-string/jumbo v0, "resource"

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "screen_color_and_optimize"

    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string/jumbo v1, "support_screen_optimize"

    .line 122
    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string/jumbo v1, "screen_color_temperature_and_saturation"

    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_0
    const-string/jumbo v0, "screen_monochrome_mode_title"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 126
    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1d

    return v2

    :cond_1
    const-string v0, "lift_to_wake_title"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const-string v0, "doze_title"

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 140
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_3

    const-string v0, "debug.doze.component"

    .line 141
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 142
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104028e    # @android:string/config_sharedConnectivityServicePackage

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 147
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 148
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-eqz v3, :cond_1d

    return v2

    :cond_6
    const-string/jumbo v0, "title_font_size"

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 157
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1d

    return v2

    :cond_7
    const-string v0, "ambient_display_screen_title"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "doze_always_on_title"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_5

    :cond_8
    const-string v0, "dc_light_title"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    :cond_9
    const-string/jumbo v0, "screen_fps_title"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 168
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isSupportScreenFps()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_NEED_REMOVE_SEARCH_SCREEN_FPS:Z

    if-eqz v0, :cond_a

    goto :goto_2

    .line 172
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/search/tree/DisplaySettingsTree;->addFpsTitleKeywords()V

    const-string v0, "customize_high_refresh_title"

    .line 173
    invoke-direct {p0, v0, v3}, Lcom/android/settings/search/tree/DisplaySettingsTree;->addSon(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_b
    :goto_2
    return v2

    :cond_c
    const-string/jumbo v0, "screen_paper_mode_title"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportPaperEyeCare()Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    :cond_d
    const-string v0, "advanced_screen_paper_mode_title"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 178
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportPaperEyeCare()Z

    move-result v0

    if-nez v0, :cond_e

    return v2

    :cond_e
    const-string/jumbo v0, "title_font_current2"

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/settings/search/tree/DisplaySettingsTree;->IS_NOT_SHOW_FONT:Z

    if-eqz v0, :cond_f

    return v2

    :cond_f
    const-string/jumbo v0, "screen_effect"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "support_truetone"

    .line 183
    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "truetone_title"

    .line 184
    invoke-direct {p0, v0, v2}, Lcom/android/settings/search/tree/DisplaySettingsTree;->addSon(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_10
    const-string/jumbo v0, "screen_enhance_engine_title"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 187
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isSrForVideoSupport()Z

    move-result v0

    if-nez v0, :cond_11

    .line 188
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isSrForImageSupport()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const-string/jumbo v0, "screen_enhance_engine_sr_title"

    .line 190
    invoke-direct {p0, v0, v3}, Lcom/android/settings/search/tree/DisplaySettingsTree;->addSon(Ljava/lang/String;Z)V

    move v2, v3

    .line 192
    :cond_12
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isAiSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "screen_enhance_engine_ai_title"

    .line 194
    invoke-direct {p0, v0, v3}, Lcom/android/settings/search/tree/DisplaySettingsTree;->addSon(Ljava/lang/String;Z)V

    move v2, v3

    .line 196
    :cond_13
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isS2hSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "screen_enhance_engine_s2h_title"

    .line 198
    invoke-direct {p0, v0, v3}, Lcom/android/settings/search/tree/DisplaySettingsTree;->addSon(Ljava/lang/String;Z)V

    move v2, v3

    .line 200
    :cond_14
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isMemcSupport()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "screen_enhance_engine_memc_title"

    .line 202
    invoke-direct {p0, v0, v3}, Lcom/android/settings/search/tree/DisplaySettingsTree;->addSon(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_15
    move v3, v2

    :goto_3
    return v3

    :cond_16
    const-string/jumbo v0, "screen_resolution_title"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "screen_resolution_supported"

    .line 206
    invoke-static {v0}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_18

    .line 207
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_4

    :cond_17
    const-string/jumbo v0, "resolution_qhd"

    .line 210
    invoke-direct {p0, v0, v3}, Lcom/android/settings/search/tree/DisplaySettingsTree;->addSon(Ljava/lang/String;Z)V

    const-string/jumbo v0, "resolution_fhd"

    .line 211
    invoke-direct {p0, v0, v3}, Lcom/android/settings/search/tree/DisplaySettingsTree;->addSon(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_18
    :goto_4
    return v2

    :cond_19
    const-string/jumbo v0, "title_font_settings"

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "keywords"

    const-string/jumbo v1, "search_title_font_settings"

    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_1a
    const-string/jumbo v0, "smooth_adjust_ligth"

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "support_backlight_bit_switch"

    .line 216
    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1b

    return v2

    :cond_1b
    const-string v0, "background_blur_enable"

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "persist.sys.background_blur_supported"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1d

    return v2

    :cond_1c
    :goto_5
    const-string/jumbo v0, "support_aod"

    .line 162
    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1d

    return v2

    .line 222
    :cond_1d
    :goto_6
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0
.end method
