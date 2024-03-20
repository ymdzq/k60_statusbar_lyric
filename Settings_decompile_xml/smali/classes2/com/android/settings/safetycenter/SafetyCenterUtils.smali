.class public final Lcom/android/settings/safetycenter/SafetyCenterUtils;
.super Ljava/lang/Object;
.source "SafetyCenterUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;
    }
.end annotation


# direct methods
.method public static getControllersForAdvancedPrivacy(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getControllersForAdvancedSecurity(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/dashboard/DashboardFragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v1, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getEnterpriseOverrideStringForPrivacyEntries()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    new-instance v1, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;

    const-string v2, "Settings.WORK_PROFILE_LOCKED_NOTIFICATION_TITLE"

    sget v3, Lcom/android/settings/R$string;->locked_work_profile_notification_title:I

    const-string/jumbo v4, "privacy_lock_screen_work_profile_notifications"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;

    const-string v2, "Settings.CONNECTED_WORK_AND_PERSONAL_APPS_TITLE"

    sget v3, Lcom/android/settings/R$string;->interact_across_profiles_title:I

    const-string v4, "interact_across_profiles_privacy"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;

    const-string v2, "Settings.WORK_PROFILE_NOTIFICATIONS_SECTION_HEADER"

    sget v3, Lcom/android/settings/R$string;->profile_section_header:I

    const-string/jumbo v4, "privacy_work_profile_notifications_category"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;

    const-string v2, "Settings.WORK_PROFILE_PRIVACY_POLICY_INFO"

    sget v3, Lcom/android/settings/R$string;->work_policy_privacy_settings:I

    const-string/jumbo v4, "work_policy_info"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getEnterpriseOverrideStringForSecurityEntries()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    new-instance v1, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;

    const-string v2, "Settings.WORK_PROFILE_SET_UNLOCK_LAUNCH_PICKER_TITLE"

    sget v3, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title_profile:I

    const-string/jumbo v4, "unlock_set_or_change_profile"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v1, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;

    const-string v2, "Settings.WORK_PROFILE_UNIFY_LOCKS_SUMMARY"

    sget v3, Lcom/android/settings/R$string;->lock_settings_profile_unification_summary:I

    const-string/jumbo v4, "unification"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v1, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;

    const-string v2, "Settings.FINGERPRINT_FOR_WORK"

    sget v3, Lcom/android/settings/R$string;->security_settings_work_fingerprint_preference_title:I

    const-string v4, "fingerprint_settings_profile"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v1, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;

    const-string v2, "Settings.MANAGE_DEVICE_ADMIN_APPS"

    sget v3, Lcom/android/settings/R$string;->manage_device_admin:I

    const-string/jumbo v4, "manage_device_admin"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v1, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;

    const-string v2, "Settings.WORK_PROFILE_SECURITY_TITLE"

    sget v3, Lcom/android/settings/R$string;->lock_settings_profile_title:I

    const-string/jumbo v4, "security_category_profile"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v1, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;

    const-string v2, "Settings.MANAGED_DEVICE_INFO"

    sget v3, Lcom/android/settings/R$string;->enterprise_privacy_settings:I

    const-string v4, "enterprise_privacy"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/settings/safetycenter/SafetyCenterUtils$EnterpriseOverrideString;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
