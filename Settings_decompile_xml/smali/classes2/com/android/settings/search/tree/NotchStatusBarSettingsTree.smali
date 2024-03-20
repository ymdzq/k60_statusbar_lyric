.class public Lcom/android/settings/search/tree/NotchStatusBarSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "NotchStatusBarSettingsTree.java"


# static fields
.field private static final NOTCH_FORCE_BLACK:Ljava/lang/String; = "force_black"

.field private static final NOTCH_FORCE_BLACK_V2:Ljava/lang/String; = "force_black_v2"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 109
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getStatus()I
    .locals 6

    const-string/jumbo v0, "resource"

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notch_and_status_bar_settings"

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "phone"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/OldmanHelper;->isStatusBarSettingsHidden(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v4

    :cond_0
    const-string v2, "custom_carrier_title"

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    sget-boolean v0, Lcom/android/settings/utils/StatusBarUtils;->IS_MX_TELCEL:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/utils/StatusBarUtils;->IS_LM_CR:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 55
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    :goto_0
    return v4

    :cond_3
    const-string v2, "custom_wifi_name_title"

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v4

    :cond_4
    const-string/jumbo v2, "notification_shade_shortcut_title"

    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v4

    .line 62
    :cond_5
    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "show_notification_icon_title"

    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 64
    invoke-virtual {p0, v0, v2}, Lcom/android/settingslib/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_6
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "notification_fold_title"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v4

    :cond_7
    const-string/jumbo v0, "notch_style_mod_title"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/Utils;->supportNotchStyleMode(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_8

    return v4

    :cond_8
    const-string/jumbo v0, "notch_force_black_title"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/settings/utils/Utils;->supportNotchForceBlack()Z

    move-result v0

    if-nez v0, :cond_9

    return v4

    :cond_9
    const-string v0, "cutout_mode_title"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 85
    invoke-static {}, Lcom/android/settings/utils/Utils;->supportCutoutMode()Z

    move-result v0

    if-nez v0, :cond_a

    return v4

    .line 88
    :cond_a
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_black"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "force_black_v2"

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_c

    if-eqz v1, :cond_b

    goto :goto_1

    :cond_b
    move v0, v4

    goto :goto_2

    :cond_c
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_d

    goto :goto_3

    .line 91
    :cond_d
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result v4

    :goto_3
    return v4

    :cond_e
    const-string v0, "cutout_type_title"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/settings/utils/Utils;->supportOverlayRoundedCorner()Z

    move-result v0

    if-nez v0, :cond_f

    return v4

    :cond_f
    const-string/jumbo v0, "show_carrier_under_keyguard_title"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 98
    sget-boolean v0, Lcom/android/settings/utils/StatusBarUtils;->IS_MX_TELCEL:Z

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/android/settings/utils/StatusBarUtils;->IS_LM_CR:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 100
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    return v4

    .line 104
    :cond_11
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0
.end method

.method protected getTitle(Z)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "resource"

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "notch_and_status_bar_settings"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->status_bar_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initialize()Z
    .locals 2

    const-string/jumbo v0, "resource"

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom_carrier_title"

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fragment"

    const-string v1, "com.android.settings.CarrierNameSettings"

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0
.end method
