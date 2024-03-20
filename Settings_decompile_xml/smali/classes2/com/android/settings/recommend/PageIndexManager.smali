.class public Lcom/android/settings/recommend/PageIndexManager;
.super Ljava/lang/Object;
.source "PageIndexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/recommend/PageIndexManager$HuanjiIndexDetail;,
        Lcom/android/settings/recommend/PageIndexManager$M11yMenuIndexDetail;
    }
.end annotation


# static fields
.field public static final AOD_NOTIFICATION_EFFECT_SETTINGS:I = 0x3f4

.field private static final BASE_OTHER_APP:I = 0x2328

.field private static final BASE_PAGE_LEVEL_FIRST:I = 0x0

.field private static final BASE_PAGE_LEVEL_FOURTH:I = 0xbb8

.field private static final BASE_PAGE_LEVEL_SECOND:I = 0x3e8

.field private static final BASE_PAGE_LEVEL_THIRD:I = 0x7d0

.field private static volatile INSTANCE:Lcom/android/settings/recommend/PageIndexManager; = null

.field public static final KEY_HEADSET_SETTINGS:Ljava/lang/String; = "headset_settings"

.field public static final KEY_INFINITY_DISPLAY:Ljava/lang/String; = "infinity_display"

.field public static final KEY_SECOND_SPACE:Ljava/lang/String; = "second_space"

.field public static final PAGE_ACCESSIBILITY_HAPTIC_SETTINGS:I = 0x7d4

.field public static final PAGE_ACCESSIBILITY_PHYSICAL:I = 0x3f2

.field public static final PAGE_ACCESSIBILITY_VISUAL:I = 0x3f1

.field public static final PAGE_ACCOUNT_SETTINGS:I = 0x6

.field public static final PAGE_AOD_SETTINGS:I = 0x3f5

.field public static final PAGE_BACKUP_AND_RESET:I = 0x3ef

.field public static final PAGE_DISPLAY:I = 0x1

.field public static final PAGE_FACTORY_RESET:I = 0x3f0

.field public static final PAGE_FIND_DEVICE:I = 0x2329

.field public static final PAGE_FONT_SIZE_WEIGHT_SETTINGS:I = 0x7d3

.field public static final PAGE_GESTURE_FUNCTION_SETTINGS:I = 0x7d1

.field public static final PAGE_HAPTIC_SETTINGS:I = 0x7

.field public static final PAGE_HEADSET_SETTINGS:I = 0x3eb

.field public static final PAGE_INFINITY_DISPLAY:I = 0x3e9

.field public static final PAGE_INFINITY_DISPLAY_NEW:I = 0x232a

.field public static final PAGE_INTERCONNECTION:I = 0x3f7

.field public static final PAGE_KEY_FUNCTION_SETTINGS:I = 0x7d2

.field public static final PAGE_LOCK_SCREEN_KEYGUARD_TIP:I = 0x3f6

.field public static final PAGE_MI_CLOUD:I = 0x3f3

.field public static final PAGE_MORE_CONNECTION:I = 0x9

.field public static final PAGE_NOTIFICATION_STATUS_BAR_SETTINGS:I = 0x8

.field public static final PAGE_ONE_KEY_MIGRATE:I = 0x3ec

.field public static final PAGE_OTHER_PERSONAL_SETTINGS:I = 0x4

.field public static final PAGE_PHYSICAL_KEYBOARD:I = 0x7d8

.field public static final PAGE_PRIVACY_PROTECTION_SETTINGS:I = 0x5

.field public static final PAGE_SCREEN:I = 0x2

.field public static final PAGE_SECOND_SPACE:I = 0x3ee

.field public static final PAGE_SECURITY_PRIVACY:I = 0x3

.field public static final PAGE_SETTINGS_ACCESSIBILITY_MENU:I = 0x7d9

.field public static final PAGE_SHOW_FONT_SIZE:I = 0xbb9

.field public static final PAGE_STATUS_BAR:I = 0x3ed

.field public static final PAGE_SUBSCREEN_SETTINGS:I = 0x7da

.field public static final PAGE_SYSTEM_SECURITY:I = 0x3ea

.field public static final PAGE_WAKE_UP_XIAOAI_SETTINGS:I = 0x7d5

.field public static final SOS_EMERGENCY_HELP:I = 0x232b

.field public static final SOS_RIVACY_LAB_SETTINGS:I = 0x232c

.field public static final TAG:Ljava/lang/String; = "PageIndexManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field public final mPageIndexMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/recommend/bean/IndexDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$HySrzSmikBndAp1TtzMNXu4Pj6o(Lcom/android/settings/recommend/PageIndexManager;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/recommend/PageIndexManager;->lambda$init$0()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/recommend/PageIndexManager;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/recommend/PageIndexManager;->mPageIndexMapping:Ljava/util/HashMap;

    .line 124
    iput-object p1, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    .line 125
    invoke-direct {p0}, Lcom/android/settings/recommend/PageIndexManager;->init()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/recommend/PageIndexManager;
    .locals 2

    .line 113
    sget-object v0, Lcom/android/settings/recommend/PageIndexManager;->INSTANCE:Lcom/android/settings/recommend/PageIndexManager;

    if-nez v0, :cond_1

    .line 114
    const-class v0, Lcom/android/settings/recommend/PageIndexManager;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/android/settings/recommend/PageIndexManager;->INSTANCE:Lcom/android/settings/recommend/PageIndexManager;

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Lcom/android/settings/recommend/PageIndexManager;

    invoke-direct {v1, p0}, Lcom/android/settings/recommend/PageIndexManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/recommend/PageIndexManager;->INSTANCE:Lcom/android/settings/recommend/PageIndexManager;

    .line 118
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 120
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/recommend/PageIndexManager;->INSTANCE:Lcom/android/settings/recommend/PageIndexManager;

    return-object p0
.end method

.method private getTitleByResourceName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    const-string p0, "com.android.settings"

    .line 282
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 284
    :try_start_0
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "string"

    .line 287
    invoke-virtual {p1, p2, v0, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 290
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method private init()V
    .locals 9

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 132
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v3, Lcom/android/settings/R$string;->display_settings:I

    invoke-direct {v2, v3}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 134
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    iget-object v3, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/TitleManager;->getScreenTitle(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 137
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    iget-object v3, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/utils/SettingsFeatures;->getPasswordTypes(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 139
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v3, Lcom/android/settings/R$string;->other_advanced_settings:I

    invoke-direct {v2, v3}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 142
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v3, 0x5

    if-eqz v2, :cond_0

    .line 143
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v4, Lcom/android/settings/R$string;->privacy_protection:I

    invoke-direct {v2, v4}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    .line 144
    new-instance v4, Lcom/android/settings/recommend/PageIndexManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/settings/recommend/PageIndexManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/recommend/PageIndexManager;)V

    invoke-virtual {v2, v4}, Lcom/android/settings/recommend/bean/IndexDetail;->setIndexDetailController(Lcom/android/settings/recommend/bean/IndexDetail$IndexDetailController;)V

    .line 147
    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    goto :goto_0

    .line 149
    :cond_0
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v4, Lcom/android/settings/R$string;->privacy_and_security:I

    invoke-direct {v2, v4}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    const-string v4, "#Intent;action=miui.intent.action.PRIVACY_SAFETY;end"

    .line 150
    invoke-virtual {v2, v4}, Lcom/android/settings/recommend/bean/IndexDetail;->setIntent(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 156
    :goto_0
    new-instance v2, Lcom/android/settings/personal/FullScreenDisplayController;

    iget-object v3, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    const-string v4, "infinity_display"

    invoke-direct {v2, v3, v4}, Lcom/android/settings/personal/FullScreenDisplayController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    new-instance v3, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v5, Lcom/android/settings/R$string;->infinity_display_title:I

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6, v2}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    const/16 v2, 0x3e9

    .line 158
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 160
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v3, Lcom/android/settings/R$string;->security_privacy_settings_title:I

    invoke-direct {v2, v3}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    const/16 v3, 0x3ea

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 162
    new-instance v2, Lcom/android/settings/sound/HeadsetSettingsController;

    iget-object v3, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    const-string v7, "headset_settings"

    invoke-direct {v2, v3, v7}, Lcom/android/settings/sound/HeadsetSettingsController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    new-instance v3, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v7, Lcom/android/settings/R$string;->headset_settings_title:I

    invoke-direct {v3, v7, v6, v2}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    const/16 v2, 0x3eb

    .line 164
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 166
    new-instance v2, Lcom/android/settings/device/controller/MiuiOneKeyMirgrateController;

    iget-object v3, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/device/controller/MiuiOneKeyMirgrateController;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v3, Lcom/android/settings/recommend/PageIndexManager$HuanjiIndexDetail;

    sget v7, Lcom/android/settings/R$string;->mi_transfer:I

    invoke-direct {v3, p0, v7, v6, v2}, Lcom/android/settings/recommend/PageIndexManager$HuanjiIndexDetail;-><init>(Lcom/android/settings/recommend/PageIndexManager;ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    const/16 v2, 0x3ec

    .line 168
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 170
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    invoke-static {}, Lcom/android/settings/TitleManager;->getStatusBarTitle()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    const/16 v3, 0x3ed

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 172
    new-instance v2, Lcom/android/settings/special/SecondSpaceController;

    iget-object v3, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "second_space"

    invoke-direct {v2, v3, v7}, Lcom/android/settings/special/SecondSpaceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    new-instance v3, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v7, Lcom/android/settings/R$string;->second_space:I

    invoke-direct {v3, v7, v6, v2}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    .line 174
    sget-boolean v2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v2, :cond_1

    const/16 v2, 0x3ee

    .line 175
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 178
    :cond_1
    new-instance v2, Lcom/android/settings/device/controller/MiuiBackupController;

    iget-object v3, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/device/controller/MiuiBackupController;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance v3, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v7, Lcom/android/settings/R$string;->privacy_settings_new:I

    invoke-direct {v3, v7, v6, v2}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    const/16 v2, 0x3ef

    .line 180
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 182
    new-instance v2, Lcom/android/settings/device/controller/MiuiFactoryResetController;

    iget-object v3, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/device/controller/MiuiFactoryResetController;-><init>(Landroid/content/Context;)V

    .line 183
    new-instance v3, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v7, Lcom/android/settings/R$string;->master_clear_title_new:I

    invoke-direct {v3, v7, v6, v2}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    const/16 v2, 0x3f0

    .line 184
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 186
    new-instance v2, Lcom/android/settings/device/controller/MiuiNotificationEffectController;

    iget-object v3, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/device/controller/MiuiNotificationEffectController;-><init>(Landroid/content/Context;)V

    .line 187
    new-instance v3, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v7, Lcom/android/settings/R$string;->aod_notification_style:I

    invoke-direct {v3, v7, v6, v2}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    const/16 v2, 0x3f4

    .line 188
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 190
    iget-object v2, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/utils/SettingsFeatures;->isSupportAod(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "#Intent;component=com.android.thememanager/com.android.thememanager.settings.WallpaperSettingsActivity;end"

    if-eqz v2, :cond_3

    .line 191
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/16 v7, 0x3f5

    if-eqz v2, :cond_2

    .line 192
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v8, Lcom/android/settings/R$string;->aod_settings_category_name:I

    invoke-direct {v2, v8, v3}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v7, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    goto :goto_1

    .line 195
    :cond_2
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v8, Lcom/android/settings/R$string;->aod_settings_category_name:I

    invoke-direct {v2, v8}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    invoke-virtual {p0, v7, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 199
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    const-string v7, "com.android.thememanager"

    const-string/jumbo v8, "theme_component_title_lockstyle"

    invoke-static {v2, v7, v8}, Lcom/android/settings/MiuiUtils;->getStringByResName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    sget-boolean v7, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/16 v8, 0x3f6

    if-eqz v7, :cond_4

    .line 201
    new-instance v7, Lcom/android/settings/recommend/bean/IndexDetail;

    invoke-direct {v7, v2, v3}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    goto :goto_2

    .line 203
    :cond_4
    new-instance v3, Lcom/android/settings/recommend/bean/IndexDetail;

    invoke-direct {v3, v2}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v3}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 206
    :goto_2
    iget-object v2, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->isSupportInterconnectionSettings(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 207
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v3, Lcom/android/settings/R$string;->interconnection:I

    invoke-direct {v2, v3}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    const/16 v3, 0x3f7

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 212
    :cond_5
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v3, Lcom/android/settings/R$string;->keyboard_mouse_touch:I

    invoke-direct {v2, v3, v6}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x7d8

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 214
    new-instance v2, Lcom/android/settings/recommend/PageIndexManager$M11yMenuIndexDetail;

    sget v3, Lcom/android/settings/R$string;->accessibility_menu_service_name:I

    invoke-direct {v2, p0, v3}, Lcom/android/settings/recommend/PageIndexManager$M11yMenuIndexDetail;-><init>(Lcom/android/settings/recommend/PageIndexManager;I)V

    const/16 v3, 0x7d9

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 216
    new-instance v2, Lcom/android/settings/accessibility/ScreenReaderController;

    iget-object v3, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    const-string v7, "accessibility_screen_reader_haptic"

    invoke-direct {v2, v3, v7}, Lcom/android/settings/accessibility/ScreenReaderController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    new-instance v3, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v7, Lcom/android/settings/R$string;->accessibility_haptic:I

    invoke-direct {v3, v7, v6, v2}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    const/16 v2, 0x7d4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 220
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v3, Lcom/android/settings/R$string;->key_shortcut_settings_title:I

    invoke-direct {v2, v3}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    const/16 v3, 0x7d2

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 223
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v3, Lcom/android/settings/R$string;->font_settings_jump:I

    invoke-direct {v2, v3}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    const/16 v3, 0x7d3

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 226
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isSupportSubScreen()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 227
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    iget-object v3, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "subscreen_title"

    invoke-direct {p0, v3, v7}, Lcom/android/settings/recommend/PageIndexManager;->getTitleByResourceName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    const/16 v3, 0x7da

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 231
    :cond_6
    new-instance v2, Lcom/android/settings/personal/FullScreenDisplayRecommendController;

    iget-object v3, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/settings/personal/FullScreenDisplayRecommendController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    new-instance v3, Lcom/android/settings/recommend/bean/IndexDetail;

    invoke-direct {v3, v5, v6, v2}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    const/16 v2, 0x232a

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 234
    new-instance v2, Lcom/android/settings/device/controller/MiuiFindDeviceController;

    iget-object v3, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/device/controller/MiuiFindDeviceController;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v3, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v4, Lcom/android/settings/R$string;->xiaomi_cloud_find_device:I

    invoke-direct {v3, v4, v6, v2}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    const/16 v2, 0x2329

    .line 236
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 237
    iget-object v2, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/utils/SettingsFeatures;->isSupportSOS(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveSOS(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 238
    new-instance v2, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v3, Lcom/android/settings/R$string;->emergency_sos_title:I

    invoke-direct {v2, v3}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(I)V

    const/16 v3, 0x232b

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 241
    :cond_7
    new-instance v2, Lcom/android/settings/device/controller/MiuiCloudController;

    iget-object v3, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/device/controller/MiuiCloudController;-><init>(Landroid/content/Context;)V

    .line 242
    new-instance v3, Lcom/android/settings/recommend/bean/IndexDetail;

    sget v4, Lcom/android/settings/R$string;->xiaomi_cloud_service:I

    invoke-direct {v3, v4, v6, v2}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    const/16 v2, 0x3f3

    .line 243
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 245
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init end, total time"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PageIndexManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$init$0()Z
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/settings/recommend/PageIndexManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isPrivacyProtectionNeeded(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getIndexDetail(I)Lcom/android/settings/recommend/bean/IndexDetail;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/settings/recommend/PageIndexManager;->mPageIndexMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/recommend/bean/IndexDetail;

    return-object p0
.end method

.method public update(ILcom/android/settings/recommend/bean/IndexDetail;)V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/settings/recommend/PageIndexManager;->mPageIndexMapping:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
