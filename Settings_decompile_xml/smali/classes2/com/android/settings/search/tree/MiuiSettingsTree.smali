.class public Lcom/android/settings/search/tree/MiuiSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "MiuiSettingsTree.java"


# static fields
.field public static final ABANDON_FLAG:Ljava/lang/String; = "ABANDON_FLAG"

.field private static final AI_TOUCH:Ljava/lang/String; = "ai_button_title"

.field public static final AOD_NOTIFICATION_STYLE:Ljava/lang/String; = "aod_notification_style"

.field private static final APPLICATION_MODE:Ljava/lang/String; = "application_mode_name"

.field private static final APP_TIMER:Ljava/lang/String; = "usage_state_app_timer"

.field private static final BLOCK_LIST_CONNECTED_DEVICES:Ljava/lang/String; = "block_list_connected_devices"

.field private static final BLOCK_LIST_TITLE:Ljava/lang/String; = "block_list_title"

.field private static final CATEGORY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_LAUNCHER_TITLE:Ljava/lang/String; = "default_launcher_title"

.field private static final EMERGENCY_SOS_TITLE:Ljava/lang/String; = "emergency_sos_title"

.field private static final EXTRA_CATEGORY_KEY:Ljava/lang/String; = "com.android.settings.category"

.field private static final EXTRA_SETTINGS_ACTION:Ljava/lang/String; = "com.android.settings.action.EXTRA_SETTINGS"

.field private static final FEEDBACK_SETTINGS_TITLE:Ljava/lang/String; = "bug_report_settings"

.field private static final HOME_TITLE:Ljava/lang/String; = "home_title"

.field public static final INTERCONNECTION_SETTINGS:Ljava/lang/String; = "interconnection"

.field private static final LAUNCHER_ICON_MANAGEMENT:Ljava/lang/String; = "launcher_icon_management"

.field private static final LOCATION_SETTINGS_TITLE:Ljava/lang/String; = "location_settings_title"

.field private static final MI_ACCOUNT_LOGO:Ljava/lang/String; = "xiaomi_account"

.field private static final MI_SERVICE:Ljava/lang/String; = "mi_service"

.field private static final More_Security_Privacy:Ljava/lang/String; = "more_security_privacy"

.field private static final NOTIFICATION_DISPLAY_SETTINGS:Ljava/lang/String; = "notification_display_settings"

.field private static final NOTIFICATION_MANAGE:Ljava/lang/String; = "status_bar_settings_manage_notification"

.field private static final PKG_MIUI_NOTIFICATION:Ljava/lang/String; = "com.miui.notification"

.field private static final PRAVACY_PROTECT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIVACY_AND_SECURITY:Ljava/lang/String; = "privacy_and_security"

.field private static final PRIVACY_DASHBOARD_TITLE:Ljava/lang/String; = "privacy_dashboard_title"

.field private static final RESOURCE_APPLICATIONS_SETTINGS_TITLE:Ljava/lang/String; = "applications_settings_title"

.field private static final RESOURCE_PERMISSION_MANAGER:Ljava/lang/String; = "permission_manager"

.field private static final SAFE_INSTALL_MODE_SETTINGS:Ljava/lang/String; = "safe_install_mode_settings"

.field private static final SETTINGS_LABEL:Ljava/lang/String; = "settings_label"

.field private static final SHOW_CONNECTED_DEVICES_TITLE:Ljava/lang/String; = "show_connected_devices_title"

.field private static final SPECIAL_ACCESS:Ljava/lang/String; = "special_access"

.field private static final TAG:Ljava/lang/String; = "MiuiSettingsTree"

.field private static final TETHER_DEVICES_MAX_NUMBER:Ljava/lang/String; = "tether_devices_max_number"

.field private static final TETHER_USE_WIFI_SIX_STANDARD:Ljava/lang/String; = "tether_use_wifi6_title"

.field private static final THEMEMANAGER_PACKAGENAME:Ljava/lang/String; = "com.android.thememanager"

.field private static final THEMEMMANAGER_WALLPAPER_TARGET_CLASSNAME:Ljava/lang/String; = "com.android.thememanager.settings.WallpaperSettingsActivity"

.field private static final VENDOR_QCOM:Ljava/lang/String; = "qcom"

.field private static final VPN_SETTINGS:Ljava/lang/String; = "vpn_settings_title"

.field private static final WALLPAPER_SETTINGS_TITLE:Ljava/lang/String; = "wallpaper_settings_title"

.field private static final WIFI_TETHER_SETTINGS:Ljava/lang/String; = "wifi_tether_settings_title"

.field private static final XIAOMI_ACCOUNT:Ljava/lang/String; = "xiaomi_account"

.field private static final XIAOMI_ACCOUNT_INFO:Ljava/lang/String; = "unlogin_account_title"

.field private static final XSPACE_TITLE:Ljava/lang/String; = "xspace"

.field private static sTileMapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0-wyoZYAZCTqq9WlmZjrSjDOUt4(Lcom/android/settings/search/tree/MiuiSettingsTree;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/tree/MiuiSettingsTree;->lambda$getSons$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 103
    new-instance v0, Lcom/android/settings/search/tree/MiuiSettingsTree$1;

    invoke-direct {v0}, Lcom/android/settings/search/tree/MiuiSettingsTree$1;-><init>()V

    sput-object v0, Lcom/android/settings/search/tree/MiuiSettingsTree;->CATEGORY_MAP:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/search/tree/MiuiSettingsTree;->PRAVACY_PROTECT_MAP:Ljava/util/Map;

    const-string/jumbo v1, "special_access"

    .line 117
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/search/tree/MiuiSettingsTree;->sTileMapCache:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method

.method private addMoreSecurityPrivacySon()V
    .locals 4

    .line 595
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "resource"

    const-string/jumbo v2, "more_security_privacy"

    .line 597
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "temporary"

    const/4 v2, 0x1

    .line 598
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "title"

    .line 599
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->more_security_privacy_settings:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fragment"

    .line 600
    const-class v2, Lcom/android/settings/safetycenter/MoreSecurityPrivacyFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "package"

    const-string v2, "com.android.settings"

    .line 601
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 602
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 604
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private addPrivacyDashboardSubItems()V
    .locals 8

    .line 678
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 679
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    const-string v1, "com.android.settings.category.ia.privacy"

    .line 680
    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 682
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v1

    .line 683
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 684
    iget-object v3, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 685
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/settingslib/drawer/Tile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settingslib/drawer/Tile;->getComponentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 686
    invoke-interface {v0, v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v2

    .line 687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tile title: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; Tile resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MiuiSettingsTree"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    sget-object v5, Lcom/android/settings/search/tree/MiuiSettingsTree;->sTileMapCache:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v6, "temporary"

    const/4 v7, 0x1

    .line 691
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v6, "title"

    .line 692
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "resource"

    .line 693
    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "preference_key"

    .line 694
    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 695
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, p0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addPrivacySubTtems(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 704
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "temporary"

    const/4 v2, 0x1

    .line 706
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "resource"

    .line 707
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "preference_key"

    .line 708
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "intent"

    const-string p2, "android.settings.PRIVACY_SETTINGS"

    .line 709
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "package"

    const-string p2, "com.android.settings"

    .line 710
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 711
    iget-object p1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private ensureAddAlexaSearch()V
    .locals 4

    .line 613
    invoke-static {}, Lcom/android/settings/utils/HomeListUtils;->getAmazonAlexIntent()Landroid/content/Intent;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/utils/HomeListUtils;->shouldAddAmazonAlex(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "temporary"

    const/4 v3, 0x1

    .line 617
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "title"

    .line 618
    iget-object v3, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/utils/HomeListUtils;->getAlexaAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "icon"

    const-string v3, "ic_alexa_widget_icon"

    .line 619
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "intent"

    .line 620
    new-instance v3, Lcom/android/settingslib/search/TinyIntent;

    invoke-direct {v3, v0}, Lcom/android/settingslib/search/TinyIntent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3}, Lcom/android/settingslib/search/TinyIntent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "class"

    .line 621
    const-class v2, Lcom/android/settings/search/tree/GeneratorTitleSettingsTree;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 622
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private ensureAddWellbeingSon(Ljava/util/LinkedList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/settingslib/search/SettingsTree;",
            ">;)V"
        }
    .end annotation

    .line 629
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/HomeListUtils;->getWellbeingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 631
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "temporary"

    const/4 v3, 0x1

    .line 634
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "title"

    .line 635
    iget-object v3, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->wellbing_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "icon"

    const-string v3, "ic_google_wellbeing"

    .line 636
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "intent"

    .line 637
    new-instance v3, Lcom/android/settingslib/search/TinyIntent;

    invoke-direct {v3, v0}, Lcom/android/settingslib/search/TinyIntent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3}, Lcom/android/settingslib/search/TinyIntent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "class"

    .line 638
    const-class v2, Lcom/android/settings/search/tree/GeneratorTitleSettingsTree;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "summary"

    .line 639
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v3, "com.google.android.apps.wellbeing"

    invoke-static {v2, v3}, Lcom/android/settings/utils/HomeListUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 640
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/search/tree/MiuiSettingsTree;->replaceAppTimerItem(Ljava/util/LinkedList;Lcom/android/settingslib/search/SettingsTree;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private getAdapterSercurityPravacy(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->getMorePrivacyStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSpecialFeatureIndex(Ljava/util/LinkedList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/settingslib/search/SettingsTree;",
            ">;)I"
        }
    .end annotation

    const/4 p0, 0x0

    .line 666
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 667
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/search/SettingsTree;

    const-string/jumbo v1, "resource"

    .line 668
    invoke-virtual {v0, v1}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "miui_special_feature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private getTitleByResourceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "com.google.android.gms"

    .line 490
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 492
    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "LEMON_transformed_from_string"

    .line 495
    invoke-virtual {p1, p2, v0, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 497
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 501
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private isAboutSercurityPravacy(Ljava/lang/String;)Z
    .locals 0

    .line 364
    sget-object p0, Lcom/android/settings/search/tree/MiuiSettingsTree;->sTileMapCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 365
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSupportAod(Landroid/content/Context;)Z
    .locals 4

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bool"

    const-string v2, "android"

    const-string v3, "config_dozeAlwaysOnDisplayAvailable"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isVpnInvisibleOnHomePage()Z
    .locals 5

    .line 314
    new-instance v0, Lcom/android/settings/vpn2/VpnManager;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/vpn2/VpnManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnManager;->getVpnNumbers()I

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v2, "disallow_vpn"

    invoke-static {v1, v2}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 318
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object v1

    invoke-interface {v1, v2}, Lmiui/enterprise/IRestrictionsHelper;->isRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    if-lt v0, v4, :cond_2

    if-nez v1, :cond_2

    .line 320
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    return v3
.end method

.method private isWifiTetherInvisibleOnHomePage()Z
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "tethering"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 308
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->getWifiTetherPlacement(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 309
    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-eqz p0, :cond_1

    .line 310
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$getSons$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 521
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/tree/MiuiSettingsTree;->addPrivacySubTtems(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private replaceAppTimerItem(Ljava/util/LinkedList;Lcom/android/settingslib/search/SettingsTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/settingslib/search/SettingsTree;",
            ">;",
            "Lcom/android/settingslib/search/SettingsTree;",
            ")V"
        }
    .end annotation

    .line 648
    invoke-direct {p0, p1}, Lcom/android/settings/search/tree/MiuiSettingsTree;->getSpecialFeatureIndex(Ljava/util/LinkedList;)I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 651
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/search/SettingsTree;->addSon(ILcom/android/settingslib/search/IndexTree;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 653
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/search/SettingsTree;->addSon(ILcom/android/settingslib/search/IndexTree;)V

    goto :goto_0

    .line 655
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "resource"

    .line 439
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "unlogin_account_title"

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "xiaomi_account"

    return-object p0

    :cond_0
    const-string/jumbo v0, "privacy_and_security"

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "ic_security_status"

    if-nez v0, :cond_4

    const-string/jumbo v0, "more_security_privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "privacy_dashboard_title"

    .line 447
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isInternationalM2M3AndIsSafetyCenterEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v2

    :cond_2
    const-string p0, "ic_privacy_settings"

    return-object p0

    .line 454
    :cond_3
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIcon()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v2
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 9

    const-string/jumbo v0, "resource"

    .line 370
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "home_title"

    .line 371
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    invoke-static {}, Lcom/android/settings/MiuiUtils;->buildLauncherSettingsIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo v1, "usage_state_app_timer"

    .line 373
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    invoke-static {}, Lcom/android/settings/usagestats/utils/CommonUtils;->getIntentTimerIntent()Landroid/content/Intent;

    move-result-object v1

    .line 375
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings/usagestats/utils/CommonUtils;->hasIndependentTimer(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_1
    const-string/jumbo v1, "wallpaper_settings_title"

    .line 378
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_2

    .line 379
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 380
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.thememanager"

    const-string v4, "com.android.thememanager.settings.WallpaperSettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 381
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_2
    const-string/jumbo v1, "personalize_title"

    .line 384
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 385
    invoke-static {}, Lcom/android/settings/utils/HomeListUtils;->generatePersonalizeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 386
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_3
    const-string/jumbo v1, "safe_install_mode_settings"

    .line 389
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 390
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.packageinstaller"

    const-string v1, "com.miui.packageInstaller.ui.secure.SecureModeActivity"

    .line 391
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "safe_mode_ref"

    const-string/jumbo v1, "setting_entry"

    .line 392
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "safe_mode_type"

    const-string/jumbo v1, "setting"

    .line 393
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    .line 396
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/search/tree/MiuiSettingsTree;->isAboutSercurityPravacy(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    const-string v3, "IsFormSearchFlag"

    const-string v4, ":settings:show_fragment_title"

    const-string v5, ":settings:show_fragment"

    const-string v6, "com.android.settings"

    const-string v7, "android.settings.PRIVACY_SETTINGS"

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->isInternationalM2M3AndIsSafetyCenterEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 397
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 399
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings.privacy.PrivacyDashboardFragment"

    .line 400
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->getMorePrivacyStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_5
    const-string/jumbo v1, "special_access"

    .line 405
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/MiuiUtils;->isInternationalM2M3AndIsSafetyCenterEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 406
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/SubSettings;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    const-class v2, Lcom/android/settings/safetycenter/MoreSecurityPrivacyFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->more_security_privacy_settings:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:fragment_args_key"

    .line 409
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    .line 412
    :cond_6
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->isInternationalM2M3AndIsSafetyCenterEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "privacy_dashboard_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 413
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 414
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_7
    const-string/jumbo v1, "privacy_and_security"

    .line 417
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 418
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_8
    const-string v1, "bug_report_settings"

    .line 422
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 423
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->getFeedbackIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_9

    return-object v1

    :cond_9
    const-string v1, "applications_settings_title"

    .line 428
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSupportNewApplicationManagement(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 429
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->getAppManagerMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v0

    .line 434
    :cond_a
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getPath(ZZ)Ljava/lang/String;
    .locals 3

    .line 326
    invoke-virtual {p0}, Lcom/android/settingslib/search/SettingsTree;->getParent()Lcom/android/settingslib/search/SettingsTree;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 329
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/search/SettingsTree;->getPath(ZZ)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "resource"

    .line 330
    invoke-virtual {p0, p2}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "privacy_dashboard_title"

    .line 336
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isInternationalM2M3AndIsSafetyCenterEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->getSecurityPrivacyTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/settings/search/tree/MiuiSettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string/jumbo v0, "privacy_and_security"

    .line 339
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    invoke-virtual {p0, v2}, Lcom/android/settings/search/tree/MiuiSettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string/jumbo v0, "more_security_privacy"

    .line 342
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->getSecurityPrivacyTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/android/settings/search/tree/MiuiSettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string/jumbo v0, "special_access"

    .line 345
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/MiuiUtils;->isInternationalM2M3AndIsSafetyCenterEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/MiuiUtils;->getSecurityPrivacyTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->more_security_privacy_settings:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public getSons()Ljava/util/LinkedList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/android/settingslib/search/SettingsTree;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "com.android.settings.category"

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/search/SettingsTree;->getParent()Lcom/android/settingslib/search/SettingsTree;

    move-result-object v2

    const-string/jumbo v3, "temporary"

    const-string/jumbo v4, "resource"

    const/4 v5, 0x1

    if-nez v2, :cond_c

    .line 510
    invoke-super/range {p0 .. p0}, Lcom/android/settingslib/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v2

    .line 511
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_0
    if-ltz v6, :cond_1

    .line 512
    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/search/SettingsTree;

    .line 513
    invoke-virtual {v7, v3}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 514
    invoke-virtual {v7}, Lcom/android/settingslib/search/SettingsTree;->removeSelf()V

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "settings_label"

    .line 517
    invoke-virtual {v0, v4}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/MiuiUtils;->isInternationalM2M3AndIsSafetyCenterEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "privacy_and_security"

    .line 518
    invoke-direct {v0, v6, v6}, Lcom/android/settings/search/tree/MiuiSettingsTree;->addPrivacySubTtems(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/search/tree/MiuiSettingsTree;->addMoreSecurityPrivacySon()V

    .line 521
    sget-object v6, Lcom/android/settings/search/tree/MiuiSettingsTree;->PRAVACY_PROTECT_MAP:Ljava/util/Map;

    new-instance v7, Lcom/android/settings/search/tree/MiuiSettingsTree$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lcom/android/settings/search/tree/MiuiSettingsTree$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/search/tree/MiuiSettingsTree;)V

    invoke-interface {v6, v7}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 523
    :cond_2
    sget-boolean v6, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v6, :cond_b

    .line 525
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_1
    if-ltz v6, :cond_4

    .line 526
    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/search/SettingsTree;

    const-string/jumbo v8, "other_advanced_settings"

    .line 527
    invoke-virtual {v7, v4}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 532
    :goto_2
    iget-object v7, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    .line 533
    iget-object v8, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 534
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 537
    :try_start_0
    invoke-virtual {v10, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v11, "class"

    .line 538
    const-class v12, Lcom/android/settings/search/tree/GoogleSettingsTree;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    invoke-virtual {v7}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserHandle;

    .line 541
    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    const/16 v13, 0x3e7

    if-ne v12, v13, :cond_6

    goto :goto_3

    .line 546
    :cond_6
    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    const/16 v12, 0x80

    .line 545
    invoke-virtual {v8, v9, v12, v11}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 547
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 548
    iget-boolean v13, v12, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v13, :cond_7

    goto :goto_5

    .line 554
    :cond_7
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 555
    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v14, :cond_a

    .line 556
    invoke-virtual {v14, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    goto :goto_5

    .line 559
    :cond_8
    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 560
    sget-object v15, Lcom/android/settings/search/tree/MiuiSettingsTree;->CATEGORY_MAP:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_9

    goto :goto_5

    :cond_9
    const-string/jumbo v5, "title"

    .line 564
    invoke-virtual {v12, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "icon"

    .line 565
    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "category"

    const-string/jumbo v12, "system_and_device_section_title"

    .line 566
    invoke-virtual {v10, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "package"

    .line 567
    iget-object v12, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "activityName"

    .line 568
    iget-object v12, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v5, v6, 0x1

    .line 569
    iget-object v12, v0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v12, v10, v0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object v12

    invoke-virtual {v0, v6, v12}, Lcom/android/settingslib/search/SettingsTree;->addSon(ILcom/android/settingslib/search/IndexTree;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v5

    :cond_a
    :goto_5
    const/4 v5, 0x1

    goto :goto_4

    .line 575
    :catch_0
    :cond_b
    invoke-direct {v0, v2}, Lcom/android/settings/search/tree/MiuiSettingsTree;->ensureAddWellbeingSon(Ljava/util/LinkedList;)V

    .line 576
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/search/tree/MiuiSettingsTree;->ensureAddAlexaSearch()V

    :cond_c
    const-string/jumbo v1, "privacy_dashboard_title"

    .line 578
    invoke-virtual {v0, v4}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 579
    invoke-super/range {p0 .. p0}, Lcom/android/settingslib/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 581
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_6
    if-ltz v2, :cond_e

    .line 582
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/search/SettingsTree;

    .line 583
    invoke-virtual {v4, v3}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 584
    invoke-virtual {v4}, Lcom/android/settingslib/search/SettingsTree;->removeSelf()V

    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 588
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/search/tree/MiuiSettingsTree;->addPrivacyDashboardSubItems()V

    .line 591
    :cond_f
    invoke-super/range {p0 .. p0}, Lcom/android/settingslib/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method protected getStatus()I
    .locals 5

    const-string/jumbo v0, "resource"

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ai_button_title"

    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->isAiKeyExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "support_ai_task"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return v2

    :cond_1
    const-string v1, "emergency_sos_title"

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveSOS(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string/jumbo v1, "wifi_tether_settings_title"

    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/search/tree/MiuiSettingsTree;->isWifiTetherInvisibleOnHomePage()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    const-string/jumbo v1, "vpn_settings_title"

    .line 245
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/search/tree/MiuiSettingsTree;->isVpnInvisibleOnHomePage()Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    const-string v1, "home_title"

    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isShowDesktop(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    const-string v1, "default_launcher_title"

    .line 253
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->existsJeejen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "miui.home.settings.simplified"

    const-string v4, "com.miui.home"

    .line 254
    invoke-static {v4, v1, v3}, Lcom/android/settings/MiuiUtils;->isPackagesSupportMetaDataFeature(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    return v2

    :cond_7
    const-string/jumbo v1, "xiaomi_account"

    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->isDeviceManaged(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/settings/MiuiUtils;->notAllowRemoveXiaoMiAccount()Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    const-string/jumbo v1, "tether_use_wifi6_title"

    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 262
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$bool;->config_show_softap_wifi6:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    const-string/jumbo v1, "xspace"

    .line 266
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/settings/applications/XSpaceSettingsController;->needHideXspace()Z

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    const-string v1, "bug_report_settings"

    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isFeedbackNeeded(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    const-string v1, "application_mode_name"

    .line 274
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isShowApplicationMode()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 275
    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isOnPcMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    return v2

    :cond_d
    const-string/jumbo v1, "safe_install_mode_settings"

    .line 280
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v3, "ex_func_safe_install_mode"

    invoke-static {v1, v3}, Lcom/android/settings/MiuiUtils;->isVisibleWithExtensionFuncKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    return v2

    :cond_f
    const-string/jumbo v1, "status_bar_settings_manage_notification"

    .line 284
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "notification_display_settings"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 285
    :cond_10
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string v3, "com.miui.notification"

    invoke-static {v1, v3}, Lcom/android/settings/MiuiUtils;->isAppInstalledAndEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    const-string v1, "interconnection"

    .line 289
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->isSupportInterconnectionSettings(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    const-string/jumbo v1, "privacy_dashboard_title"

    .line 292
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isInternationalM2M3AndIsSafetyCenterEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v2

    .line 295
    :cond_13
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settingslib/search/SettingsTree;->getParent()Lcom/android/settingslib/search/SettingsTree;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 v2, 0x4

    :cond_14
    or-int p0, v0, v2

    return p0
.end method

.method protected getTitle(Z)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "resource"

    .line 459
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "unlogin_account_title"

    .line 461
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->xiaomi_account:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 464
    :cond_0
    invoke-static {}, Lcom/android/settings/applicationmode/RemoteUtils;->isMiPadDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "application_mode_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->magic_window_name_pad:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 467
    :cond_1
    sget-object v1, Lcom/android/settings/search/tree/MiuiSettingsTree;->sTileMapCache:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    sget-object v1, Lcom/android/settings/search/tree/MiuiSettingsTree;->sTileMapCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const-string/jumbo v1, "privacy_and_security"

    .line 473
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 474
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->getSecurityPrivacyTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string/jumbo v1, "privacy_dashboard_title"

    .line 476
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->isInternationalM2M3AndIsSafetyCenterEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 477
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->getMorePrivacyStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string/jumbo v1, "special_access"

    .line 479
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 480
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->getSpecialStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string/jumbo v1, "wallpaper_settings_title"

    .line 482
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 483
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->personalize_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 485
    :cond_6
    invoke-super {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initialize()Z
    .locals 7

    const-string/jumbo v0, "resource"

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "home_title"

    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "vendor"

    const-string/jumbo v4, "qcom"

    const-string v5, "default_launcher_title"

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    .line 134
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 136
    :try_start_0
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 140
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_1a

    .line 142
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string/jumbo v5, "oldman_mode_entry_name"

    .line 144
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p0}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;)Lcom/android/settingslib/search/SettingsTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_1
    const-string/jumbo v0, "mi_service"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    :cond_2
    return v6

    :cond_3
    const-string/jumbo v0, "theme_settings_title"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/settings/utils/SettingsFeatures;->IS_NEED_REMOVE_THEME:Z

    if-eqz v2, :cond_4

    return v6

    :cond_4
    const-string/jumbo v2, "xiaomi_account"

    .line 154
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_5

    return v6

    :cond_5
    const-string/jumbo v2, "unlogin_account_title"

    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_6

    return v6

    :cond_6
    const-string/jumbo v2, "usage_state_app_timer"

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->shouldDisableAppTimer(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v6

    :cond_7
    const-string v2, "block_list_title"

    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string/jumbo v2, "tether_devices_max_number"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string/jumbo v2, "show_connected_devices_title"

    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "power_usage_summary_title"

    .line 165
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v2, :cond_9

    return v6

    :cond_9
    const-string/jumbo v2, "power_usage_summary_title_new"

    .line 167
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v2, :cond_a

    return v6

    :cond_a
    const-string v2, "location_settings_title"

    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 170
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1a

    return v6

    :cond_b
    const-string/jumbo v2, "privacy_dashboard_title"

    .line 173
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 174
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1a

    return v6

    .line 177
    :cond_c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_d

    return v6

    :cond_d
    const-string/jumbo v0, "wallpaper_settings_title"

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_e

    return v6

    :cond_e
    const-string/jumbo v0, "personalize_title"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_f

    return v6

    :cond_f
    const-string v0, "already_delete_system_app"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportUninstallSysApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    return v6

    :cond_10
    const-string v0, "application_mode_name"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isShowApplicationMode()Z

    move-result v0

    if-nez v0, :cond_11

    return v6

    :cond_11
    const-string v0, "control_center_style"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "keywords"

    const-string/jumbo v2, "search_control_center_style"

    .line 188
    invoke-virtual {p0, v0, v2}, Lcom/android/settingslib/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_12
    const-string/jumbo v0, "security_center_title"

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSupportSecuritySettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    return v6

    :cond_13
    const-string v0, "launcher_icon_management"

    .line 191
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 192
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "cetus"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v6

    .line 195
    :cond_14
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->supportLauncherIconManager(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    return v6

    .line 198
    :cond_15
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSupportNewApplicationManagement(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v6

    :cond_16
    const-string/jumbo v0, "safe_install_mode_settings"

    .line 201
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 202
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_17

    return v6

    .line 205
    :cond_17
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSupportNewApplicationManagement(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v6

    :cond_18
    const-string/jumbo v0, "permission_manager"

    .line 208
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSupportNewApplicationManagement(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v6

    .line 162
    :cond_19
    :goto_0
    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v6

    :catch_0
    :cond_1a
    :goto_1
    const-string v0, "category_origin"

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "block_list_connected_devices"

    .line 213
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 214
    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    return v6

    :cond_1b
    const-string v0, "aod_notification_style"

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 220
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/search/tree/MiuiSettingsTree;->isSupportAod(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    return v6

    .line 223
    :cond_1c
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0

    .line 225
    :cond_1d
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0
.end method
