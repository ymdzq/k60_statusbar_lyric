.class public Lcom/android/settings/search/tree/MiuiSecurityAndPrivacySettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "MiuiSecurityAndPrivacySettingsTree.java"


# static fields
.field public static final BLUETOOTH_UNLOCK_SETTINGS_UNLOCK_DEVICE:Ljava/lang/String; = "bluetooth_unlock_settings_unlock_device"

.field public static final BLUETOOTH_UNLOCK_TITLE:Ljava/lang/String; = "bluetooth_unlock_title"

.field public static final CELL_BROADCAST_SETTINGS:Ljava/lang/String; = "cell_broadcast_settings"

.field public static final EMERGENCY_SOS_PA_TITLE:Ljava/lang/String; = "miui_sos_pa_title"

.field public static final EMERGENCY_SOS_TITLE:Ljava/lang/String; = "emergency_sos_title"

.field private static final GREEN_GUARD_TITLE:Ljava/lang/String; = "miui_sos_green_guard_title"

.field public static final KEYGUARD_SECURITY_SETTING_PRIVACY_POLICY:Ljava/lang/String; = "keyguard_security_setting_privacy_policy"

.field public static final LOCK_SETTINGS_PROFILE_UNIFICATION_TITLE:Ljava/lang/String; = "lock_settings_profile_unification_title"

.field public static final MANAGE_PASSWORD:Ljava/lang/String; = "manage_password"

.field public static final PASSWORD_UNLOCK_TITLE:Ljava/lang/String; = "password_unlock_title"

.field public static final PRIVACY_AUTHORIZE_REVOKE_TITLE:Ljava/lang/String; = "privacy_authorize_revoke_title"

.field public static final PRIVACY_PASSWORD_TITLE:Ljava/lang/String; = "privacy_password_title"

.field public static final PRIVACY_PASSWORD_USE_FINGER_DIALOG_TITLE:Ljava/lang/String; = "privacy_password_use_finger_dialog_title"

.field public static final UNLOCK_SET_UNLOCK_BIOMETRIC_WEAK_TITLE:Ljava/lang/String; = "unlock_set_unlock_biometric_weak_title"

.field public static final UNLOCK_SET_UNLOCK_LAUNCH_PICKER_TITLE_PROFILE:Ljava/lang/String; = "unlock_set_unlock_launch_picker_title_profile"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    const-string/jumbo v0, "resource"

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "manage_password"

    .line 191
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.SubSettings"

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 196
    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->getPasswordTypes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment_title"

    .line 195
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment"

    const-string v1, "com.android.settings.security.MiuiSecurityAndPrivacySettings"

    .line 197
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":android:no_headers"

    const/4 v1, 0x1

    .line 199
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0

    .line 203
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getStatus()I
    .locals 6

    const-string/jumbo v0, "resource"

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "cell_broadcast_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "bluetooth_unlock_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "bluetooth_unlock_settings_unlock_device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "privacy_password_use_finger_dialog_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "unlock_set_unlock_launch_picker_title_profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_5
    const-string v1, "emergency_sos_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "manage_password"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "unlock_set_unlock_biometric_weak_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v5, v2

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "password_unlock_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v5, v3

    goto :goto_0

    :sswitch_9
    const-string v1, "lock_settings_profile_unification_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v5, v4

    :goto_0
    const/4 v0, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 150
    :try_start_0
    iget-object v5, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/custs/CellBroadcastUtil;->setCellbroadcastEnabledSetting(Landroid/content/Context;)V

    const-string v5, "com.android.cellbroadcastreceiver"

    .line 151
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_a

    move v2, v4

    goto :goto_1

    :cond_a
    move v2, v3

    .line 155
    :goto_1
    invoke-static {v0}, Lcom/android/settings/custs/CellBroadcastUtil;->nccBroadcastEnabled(Landroid/content/pm/PackageManager;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    move v3, v2

    goto :goto_2

    :catch_0
    move v3, v4

    :goto_2
    if-eqz v3, :cond_c

    const-string/jumbo v0, "no_config_cell_broadcasts"

    .line 162
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_c
    return v4

    .line 135
    :pswitch_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_d

    return v4

    .line 138
    :cond_d
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->hasCommonPassword(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    return v3

    .line 177
    :pswitch_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->hasCommonPassword(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    return v4

    .line 125
    :pswitch_3
    new-instance v1, Lcom/android/settings/FingerprintUnlockStateController;

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    new-instance v3, Landroidx/fragment/app/Fragment;

    invoke-direct {v3}, Landroidx/fragment/app/Fragment;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lcom/android/settings/FingerprintUnlockStateController;-><init>(Landroid/content/Context;Lcom/android/settings/CardInfo;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1}, Lcom/android/settings/FingerprintUnlockStateController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    return v4

    .line 167
    :pswitch_4
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveSOS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v4

    .line 172
    :pswitch_5
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isManagePasswordNeeded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    return v4

    .line 130
    :pswitch_6
    new-instance v1, Lcom/android/settings/FaceUnlockStateController;

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    new-instance v3, Landroidx/fragment/app/Fragment;

    invoke-direct {v3}, Landroidx/fragment/app/Fragment;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lcom/android/settings/FaceUnlockStateController;-><init>(Landroid/content/Context;Lcom/android/settings/CardInfo;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1}, Lcom/android/settings/FaceUnlockStateController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    return v4

    .line 120
    :pswitch_7
    new-instance v1, Lcom/android/settings/PasswordUnlockStateController;

    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    new-instance v3, Landroidx/fragment/app/Fragment;

    invoke-direct {v3}, Landroidx/fragment/app/Fragment;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lcom/android/settings/PasswordUnlockStateController;-><init>(Landroid/content/Context;Lcom/android/settings/CardInfo;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1}, Lcom/android/settings/PasswordUnlockStateController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_f

    return v4

    .line 184
    :cond_f
    :goto_3
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0

    :pswitch_8
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x699e6120 -> :sswitch_9
        -0x31661b3f -> :sswitch_8
        -0x2b7e8c85 -> :sswitch_7
        -0x2b016fcb -> :sswitch_6
        -0x1111cb7e -> :sswitch_5
        0xd2fe5ba -> :sswitch_4
        0x1d45bf32 -> :sswitch_3
        0x32b77e1f -> :sswitch_2
        0x6f2bd38e -> :sswitch_1
        0x75627bde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getTitle(Z)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "resource"

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "cell_broadcast_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "privacy_policy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "password_and_security"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 106
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BG"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string p0, "BG-ALERT"

    return-object p0

    :pswitch_1
    if-eqz p1, :cond_4

    .line 96
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    const-string p1, "com.miui.core"

    invoke-static {p0, p1}, Lcom/android/settingslib/search/SearchUtils;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string/jumbo p1, "string"

    const-string/jumbo v1, "miui"

    .line 98
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 112
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 102
    :pswitch_2
    iget-object p1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->getPasswordTypes(Landroid/content/Context;)I

    move-result p1

    .line 103
    iget-object p0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6a46ac34 -> :sswitch_2
        0x373ef5c9 -> :sswitch_1
        0x75627bde -> :sswitch_0
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

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "cell_broadcast_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "miui_sos_green_guard_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "miui_sos_pa_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "privacy_authorize_revoke_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_5

    :cond_4
    return v2

    .line 75
    :pswitch_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_5

    return v2

    .line 80
    :pswitch_2
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_5

    return v2

    .line 70
    :pswitch_3
    invoke-static {}, Lcom/android/settings/security/PrivacyRevocationController;->hidePrivacyRevoke()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 87
    :cond_5
    :goto_1
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x4a916174 -> :sswitch_3
        0x1d09ae1 -> :sswitch_2
        0x1495868b -> :sswitch_1
        0x75627bde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
