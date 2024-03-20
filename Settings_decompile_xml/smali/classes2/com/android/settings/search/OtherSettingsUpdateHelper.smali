.class Lcom/android/settings/search/OtherSettingsUpdateHelper;
.super Lcom/android/settings/search/BaseSearchUpdateHelper;
.source "OtherSettingsUpdateHelper.java"


# static fields
.field private static final AI_TOUCH_RESOURCE:Ljava/lang/String; = "ai_button_title"

.field private static final APP_UPDATER_RESOURCE:Ljava/lang/String; = "system_apps_updater"

.field private static final AVOID_UI_RESOURCE:Ljava/lang/String; = "avoid_ui"

.field private static final BATTERY_INDICATOR_STYLE_RESOURCE:Ljava/lang/String; = "battery_indicator_style"

.field private static final CALL_BREATHING_LIGHT_COLOR_RESOURCE:Ljava/lang/String; = "call_breathing_light_color"

.field private static final CALL_BREATHING_LIGHT_FREQ_RESOURCE:Ljava/lang/String; = "call_breathing_light_freq"

.field private static final EMERGENCY_SOS:Ljava/lang/String; = "emergency_sos_title"

.field private static final FAKECELL_SETTINGS_RESOURCE:Ljava/lang/String; = "manage_fakecell_settings"

.field private static final HANDY_MODE_RESOURCE:Ljava/lang/String; = "handy_mode"

.field private static final HOME_XIAOAI_RESOURCE:Ljava/lang/String; = "voice_assist"

.field private static final INFINITY_DISPLAY_RESOURCE:Ljava/lang/String; = "infinity_display_title"

.field private static final LOCKSCREEN_MAGAZINE_RESOURCE:Ljava/lang/String; = "lockscreen_magazine"

.field private static final MIUI_LAB_AI_PRELOAD:Ljava/lang/String; = "miui_lab_ai_preload_title"

.field private static final MIUI_LAB_RESOURCE:Ljava/lang/String; = "miui_lab_settings"

.field private static final MI_SERVICE:Ljava/lang/String; = "mi_service"

.field private static final MI_SERVICE_URL:Ljava/lang/String; = "http://ab.xiaomi.com/d?url=aHR0cDovL20ubWkuY29tL3Nkaz9waWQ9MTI1MDEmY2lkPTIwMDI3LjAwMDAxJnJvb3Q9Y29tLnhpYW9taS5zaG9wLnBsdWdpbi5zeXNzZXR0aW5nLlJvb3RGcmFnbWVudCZtYXNpZD0yMDAyNy4wMDAwMQ=="

.field private static final MMS_BREATHING_LIGHT_COLOR_RESOURCE:Ljava/lang/String; = "mms_breathing_light_color"

.field private static final MMS_BREATHING_LIGHT_FREQ_RESOURCE:Ljava/lang/String; = "mms_breathing_light_freq"

.field private static final NOTCH_FORCE_BLACK_RESOURCE:Ljava/lang/String; = "notch_force_black_title"

.field private static final POWER_MODE_RESOURCE:Ljava/lang/String; = "power_mode"

.field private static final PRINT_RESOURCE:Ljava/lang/String; = "print_settings"

.field private static final SECOND_SPACE_RESOURCE:Ljava/lang/String; = "second_space"

.field private static final SHOW_NOTIFICATION_ICON_RESOURCE:Ljava/lang/String; = "status_bar_settings_show_notification_icon"

.field private static final SPELLCHECKERS_RESOURCE:Ljava/lang/String; = "spellcheckers_settings_title"

.field private static final STATUS_BAR_RESOURCE:Ljava/lang/String; = "status_bar_settings"

.field private static final TAPLUS_SETTINGS_RESOURCE:Ljava/lang/String; = "taplus_title"

.field private static final THEME_RESOURCE:Ljava/lang/String; = "theme_settings_title"

.field private static final USER_DICT_RESOURCE:Ljava/lang/String; = "user_dict_settings_title"

.field private static final VIBRATE_INPUT_DEVICES_RESOURCE:Ljava/lang/String; = "vibrate_input_devices"

.field private static final WALLPAPER_RESOURCE:Ljava/lang/String; = "wallpaper_settings_title"

.field private static final XIAOMI_ACCOUNT:Ljava/lang/String; = "xiaomi_account"

.field private static final XIAOMI_ACCOUNT_INFO:Ljava/lang/String; = "unlogin_account_title"

.field private static final XSPACE_RESOURCE:Ljava/lang/String; = "xspace"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchUpdateHelper;-><init>()V

    return-void
.end method

.method static update(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/android/settingslib/OldmanHelper;->isOldmanMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportSecuritySpace()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "second_space"

    .line 82
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideTreeByRootResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 85
    :cond_1
    invoke-static {}, Lcom/android/settingslib/OldmanHelper;->isOldmanMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "wallpaper_settings_title"

    .line 86
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideTreeByRootResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 88
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settingslib/OldmanHelper;->isOldmanMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 89
    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportSecuritySpace()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string/jumbo v1, "xspace"

    .line 90
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 93
    :cond_4
    invoke-static {p0}, Lmiui/theme/ThemeManagerHelper;->needDisableTheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/settingslib/OldmanHelper;->isOldmanMode()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string/jumbo v1, "theme_settings_title"

    .line 94
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideTreeByRootResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v1, "support_power_mode"

    const/4 v2, 0x0

    .line 97
    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "power_mode"

    .line 98
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 101
    :cond_7
    invoke-static {p0}, Lcom/android/settingslib/OldmanHelper;->isStatusBarSettingsHidden(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "status_bar_settings"

    .line 102
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideTreeByRootResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 104
    :cond_8
    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v1, :cond_9

    const-string v1, "battery_indicator_style"

    .line 105
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v1, "status_bar_settings_show_notification_icon"

    .line 106
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v1, "notch_force_black_title"

    .line 108
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "sensor"

    .line 112
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    .line 113
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    const-string v4, "Elliptic Proximity"

    .line 116
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "Elliptic Labs"

    .line 117
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_1

    :cond_a
    move v1, v2

    :goto_1
    const-string v4, "com.miui.sensor.avoid"

    .line 119
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v3

    or-int/2addr v1, v4

    if-eqz v1, :cond_b

    const-string v1, "avoid_ui"

    .line 121
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 124
    :cond_b
    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "handy_mode"

    .line 125
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideTreeByRootResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 128
    :cond_c
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "call_breathing_light_color"

    .line 129
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v1, "call_breathing_light_freq"

    .line 130
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v1, "mms_breathing_light_color"

    .line 131
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v1, "mms_breathing_light_freq"

    .line 132
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 135
    :cond_d
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_e

    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v1, :cond_f

    :cond_e
    const-string/jumbo v1, "system_apps_updater"

    .line 136
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_f
    const-string/jumbo v1, "textservices"

    .line 140
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/TextServicesManager;

    .line 141
    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v4

    .line 142
    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v4, :cond_10

    array-length v1, v4

    if-nez v1, :cond_11

    :cond_10
    const-string/jumbo v1, "spellcheckers_settings_title"

    .line 143
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_11
    const-string v1, "input_method"

    .line 148
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_12

    move v4, v2

    goto :goto_2

    .line 149
    :cond_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_14

    .line 151
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 152
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AOSP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v1, v3

    goto :goto_4

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_14
    move v1, v2

    :goto_4
    if-nez v1, :cond_15

    const-string/jumbo v1, "user_dict_settings_title"

    .line 158
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 162
    :cond_15
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    move v4, v2

    .line 163
    :goto_5
    array-length v5, v1

    if-ge v4, v5, :cond_17

    .line 164
    aget v5, v1, v4

    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 165
    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v6

    if-nez v6, :cond_16

    invoke-virtual {v5}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_6

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_17
    move v3, v2

    :goto_6
    if-nez v3, :cond_18

    const-string/jumbo v1, "vibrate_input_devices"

    .line 171
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 174
    :cond_18
    invoke-static {}, Lcom/android/settings/FakeCellSettings;->supportDetectFakecell()Z

    move-result v1

    if-nez v1, :cond_19

    const-string/jumbo v1, "manage_fakecell_settings"

    .line 175
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 177
    :cond_19
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.printservice.PrintService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    const-string/jumbo v0, "print_settings"

    .line 181
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 184
    :cond_1b
    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isMiuiLabNeedHide(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "miui_lab_settings"

    .line 185
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 187
    :cond_1c
    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveSOS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "emergency_sos_title"

    .line 188
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_1d
    const-string/jumbo v0, "window"

    .line 192
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 194
    :try_start_0
    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "infinity_display_title"

    .line 195
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideTreeByRootResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :catch_0
    :cond_1e
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    const-string/jumbo v1, "mi_service"

    const-string v3, "fragment"

    const-string v4, "dest_class"

    const-string v5, "dest_package"

    const-string v6, "intent_data"

    const-string v7, "intent_action"

    const/4 v8, 0x5

    const-string v9, ""

    if-nez v0, :cond_20

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1f

    goto :goto_8

    .line 203
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    const-string v10, "http://ab.xiaomi.com/d?url=aHR0cDovL20ubWkuY29tL3Nkaz9waWQ9MTI1MDEmY2lkPTIwMDI3LjAwMDAxJnJvb3Q9Y29tLnhpYW9taS5zaG9wLnBsdWdpbi5zeXNzZXR0aW5nLlJvb3RGcmFnbWVudCZtYXNpZD0yMDAyNy4wMDAwMQ=="

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v0, v12, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v11

    invoke-virtual {v11, p0, v0}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 205
    invoke-static {p0, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->getIdWithResource(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v7, v6, v5, v4, v3}, [Ljava/lang/String;

    move-result-object v11

    filled-new-array {v12, v10, v9, v9, v9}, [Ljava/lang/String;

    move-result-object v13

    .line 206
    invoke-static {p1, v1, v8, v11, v13}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updateSearchItem(Ljava/util/ArrayList;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_7

    .line 201
    :cond_20
    :goto_8
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 220
    :cond_21
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->includeXiaoAi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 221
    invoke-static {}, Lcom/android/settings/MiuiUtils;->buildXiaoAiSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string/jumbo v1, "voice_assist"

    .line 223
    invoke-static {p0, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->getIdWithResource(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 224
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v7, v6, v5, v4, v3}, [Ljava/lang/String;

    move-result-object v11

    .line 233
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 234
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v9, v9, v12, v13, v9}, [Ljava/lang/String;

    move-result-object v12

    .line 224
    invoke-static {p1, v10, v8, v11, v12}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updateSearchItem(Ljava/util/ArrayList;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_9

    :cond_22
    const-string v0, "lockscreen_magazine"

    .line 239
    invoke-static {p0, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->getIdWithResource(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 240
    invoke-static {p0}, Lcom/android/settings/MiuiSecuritySettings;->getWallpaperIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    if-nez v11, :cond_23

    .line 242
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_a

    .line 244
    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v11

    .line 245
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v7, v6, v5, v4, v3}, [Ljava/lang/String;

    move-result-object v12

    .line 254
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 255
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v9, v9, v13, v11, v9}, [Ljava/lang/String;

    move-result-object v11

    .line 245
    invoke-static {p1, v10, v8, v12, v11}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updateSearchItem(Ljava/util/ArrayList;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_a

    .line 258
    :cond_24
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isAiKeyExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v0, "support_ai_task"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_26

    :cond_25
    const-string v0, "ai_button_title"

    .line 260
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 262
    :cond_26
    invoke-static {}, Lcom/android/settings/lab/MiuiAiPreloadController;->isNotSupported()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string/jumbo v0, "miui_lab_ai_preload_title"

    .line 263
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 265
    :cond_27
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_28

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_29

    :cond_28
    const-string/jumbo v0, "taplus_title"

    .line 266
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 269
    :cond_29
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "unlogin_account_title"

    .line 270
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_b

    :cond_2a
    const-string/jumbo v0, "xiaomi_account"

    .line 272
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :goto_b
    return-void
.end method
