.class public Lcom/android/settings/search/PhoneSettingsUpdateHelper;
.super Lcom/android/settings/search/BaseSearchUpdateHelper;
.source "PhoneSettingsUpdateHelper.java"


# static fields
.field private static final ANTISPAM_RESOURCE:Ljava/lang/String; = "antispam_setting"

.field private static final AUTOIP_RESOURCE:Ljava/lang/String; = "autoip"

.field private static final AUTO_REDIAL_RESOURCE:Ljava/lang/String; = "auto_redial_pref_title"

.field private static final AUTO_RETRY_RESOURCE:Ljava/lang/String; = "auto_retry_mode_title"

.field private static final CALLER_ID_RESOURCE:Ljava/lang/String; = "caller_id_title"

.field private static final CALL_BACKGROUND_RESOURCE:Ljava/lang/String; = "call_background_setting"

.field private static final CALL_RECORD_RESOURCE:Ljava/lang/String; = "call_record_setting"

.field private static final CDMA_DISPLAY_PRECISE_CALL_RESOURCE:Ljava/lang/String; = "cdma_display_precise_call_state_title"

.field private static final CONNECT_DISCONNECT_VIBRATE_RESOURCE:Ljava/lang/String; = "connect_disconnect_vibrate_title"

.field private static final DATA_USAGE_RESOURCE:Ljava/lang/String; = "preference_data_usage_title"

.field private static final DIAL_PAD_TOUCH_RESOURCE:Ljava/lang/String; = "preference_dial_pad_touch_tone_title"

.field private static final DTMF_TONE_RESOURCE:Ljava/lang/String; = "dtmf_tones_title"

.field private static final DUAL_4G_RESOURCE:Ljava/lang/String; = "dual_4g_switch_title"

.field private static final ENABLE_PROXIMITY_RESOURCE:Ljava/lang/String; = "enable_proximity_title"

.field private static final FLASH_WHEN_RING_RESOURCE:Ljava/lang/String; = "flash_when_ring_title"

.field private static final HANDON_RINGER_RESOURCE:Ljava/lang/String; = "handon_ringer_title"

.field private static final INTERNATIONAL_ROAMING_RESOURCE:Ljava/lang/String; = "international_roaming_setting"

.field private static final MOBILE_NETWORK_RESOURCE:Ljava/lang/String; = "sim_management_title"

.field private static final MOBILE_NETWORK_SINGLESIM_RESOURCE:Ljava/lang/String; = "sim_management_title_singlesim"

.field private static final PHONE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static final SIP_RESOURCE:Ljava/lang/String; = "sip_settings"

.field private static final T9_INDEX_RESOURCE:Ljava/lang/String; = "t9_indexing_method_title"

.field private static final TELOCATION_AUTO_COUNTRY_CODE_RESOURCE:Ljava/lang/String; = "telocation_auto_country_code"

.field private static final TELOCATION_CONTACTS_COUNTRYCODE_RESOURCE:Ljava/lang/String; = "telocation_contacts_countrycode"

.field private static final TELOCATION_ENABLE_RESOURCE:Ljava/lang/String; = "telocation_enable_title"

.field private static final TELOCATION_RESOURCE:Ljava/lang/String; = "preference_telocation_title"

.field private static final TURNOVER_MUTE_RESOURCE:Ljava/lang/String; = "turnover_mute_title"

.field private static final VICE_SLOT_VOLTE_SWITCH_RESOURCE:Ljava/lang/String; = "vice_slot_volte_data_switch_title"

.field private static final VOICE_PRIVACY_RESOURCE:Ljava/lang/String; = "voice_privacy"

.field private static final VOLTE_SWITCH_RESOURCE:Ljava/lang/String; = "volte_switch_title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchUpdateHelper;-><init>()V

    return-void
.end method

.method private static getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "bool"

    const-string v2, "com.android.phone"

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 158
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method static update(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :try_start_0
    const-string v2, "com.android.phone"

    .line 59
    invoke-static {v0, v2}, Lcom/android/settingslib/search/SearchUtils;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "clover"

    .line 64
    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "vice_slot_volte_data_switch_title"

    const-string v5, "dual_4g_switch_title"

    const-string/jumbo v6, "volte_switch_title"

    const-string/jumbo v7, "voice_privacy"

    const-string/jumbo v8, "sip_settings"

    const-string v9, "auto_redial_pref_title"

    const-string v10, "autoip"

    if-eqz v3, :cond_0

    const-string v3, "antispam_setting"

    .line 65
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v3, "preference_telocation_title"

    .line 66
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v3, "telocation_enable_title"

    .line 67
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v3, "telocation_contacts_countrycode"

    .line 68
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v3, "telocation_auto_country_code"

    .line 69
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v3, "turnover_mute_title"

    .line 70
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v3, "handon_ringer_title"

    .line 71
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v3, "flash_when_ring_title"

    .line 72
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v3, "enable_proximity_title"

    .line 73
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v3, "call_background_setting"

    .line 74
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 75
    invoke-static {v2, v1, v10}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 76
    invoke-static {v2, v1, v9}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 77
    invoke-static {v2, v1, v8}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v3, "connect_disconnect_vibrate_title"

    .line 78
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 79
    invoke-static {v2, v1, v7}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 80
    invoke-static {v0, v1, v6}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 81
    invoke-static {v0, v1, v5}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 82
    invoke-static {v0, v1, v4}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string/jumbo v3, "preference_data_usage_title"

    .line 83
    invoke-static {v0, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v3, "international_roaming_setting"

    .line 84
    invoke-static {v0, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v3, "ro.miui.singlesim"

    const/4 v11, 0x0

    .line 87
    invoke-static {v3, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v3, v13, :cond_1

    .line 88
    invoke-static/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    if-ge v3, v12, :cond_3

    :cond_1
    const-string/jumbo v3, "sim_management_title"

    .line 89
    invoke-static {v0, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->getIdWithResource(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v13, Lcom/android/settings/R$string;->sim_management_title_singlesim:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "name"

    .line 90
    invoke-static {v0, v1, v15, v13, v11}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updateItemData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v11, "sim_management_title_singlesim"

    .line 95
    invoke-static {v0, v1, v3, v11}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updatePath(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v3, "config_call_recording"

    .line 98
    invoke-static {v2, v3}, Lcom/android/settings/search/PhoneSettingsUpdateHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "call_record_setting"

    .line 99
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 102
    :cond_4
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_5

    .line 103
    invoke-static {v2, v1, v10}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 106
    :cond_5
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v3

    .line 107
    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v10, :cond_6

    const-string v10, "HK"

    .line 108
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "TW"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "SG"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "ID"

    .line 109
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "t9_indexing_method_title"

    .line 110
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_6
    const-string v3, "auto_retry_enabled"

    .line 114
    invoke-static {v2, v3}, Lcom/android/settings/search/PhoneSettingsUpdateHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "auto_retry_mode_title"

    .line 115
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_7
    const-string v3, "dtmf_type_enabled"

    .line 118
    invoke-static {v2, v3}, Lcom/android/settings/search/PhoneSettingsUpdateHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "dtmf_tones_title"

    .line 119
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 124
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v10, "android.software.sip"

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "ZA"

    .line 125
    invoke-static {v3}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 126
    :cond_9
    invoke-static {v2, v1, v8}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 129
    :cond_a
    invoke-static {}, Lcom/android/settingslib/OldmanHelper;->isOldmanMode()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v3, "preference_dial_pad_touch_tone_title"

    .line 130
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 135
    :cond_b
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    array-length v8, v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v11, 0x0

    const/16 v16, 0x0

    :goto_2
    if-ge v11, v8, :cond_d

    :try_start_2
    aget-object v10, v3, v11

    .line 136
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    if-ne v13, v12, :cond_c

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v10
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v10, :cond_c

    const/16 v16, 0x1

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :catch_1
    move/from16 v11, v16

    goto :goto_3

    :catch_2
    const/4 v11, 0x0

    :goto_3
    move/from16 v16, v11

    :cond_d
    if-eqz v16, :cond_e

    .line 142
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v3

    const/4 v8, 0x1

    if-gt v3, v8, :cond_e

    const-string v3, "caller_id_title"

    .line 143
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 144
    invoke-static {v2, v1, v9}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    if-nez v16, :cond_f

    const-string v3, "cdma_display_precise_call_state_title"

    .line 146
    invoke-static {v2, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 147
    invoke-static {v2, v1, v7}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 150
    :cond_f
    :goto_4
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->isDualVolteSupported()Z

    move-result v2

    if-nez v2, :cond_10

    .line 151
    invoke-static {v0, v1, v5}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 152
    invoke-static {v0, v1, v4}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_5

    .line 154
    :cond_10
    invoke-static {v0, v1, v6}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :goto_5
    return-void
.end method
