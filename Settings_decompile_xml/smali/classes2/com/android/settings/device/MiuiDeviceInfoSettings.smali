.class public Lcom/android/settings/device/MiuiDeviceInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiDeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;
    }
.end annotation


# instance fields
.field private final VERFICATION_DEVICE_LIST:Ljava/lang/String;

.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field private mDeviceName:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mFunDisallowedBySystem:Z

.field mHits:[J

.field private mIsOwnerUser:Z

.field mLastHitKey:Ljava/lang/String;

.field mLastPrefHitTime:J

.field mPrefHitCountdown:I

.field private mReadDeviceInfoTask:Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;

.field private mUm:Landroid/os/UserManager;

.field private mUpdater:Lcom/android/settings/widget/CustomValuePreference;

.field private mVerfDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mhandleTaskResult(Lcom/android/settings/device/MiuiDeviceInfoSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/device/MiuiDeviceInfoSettings;->handleTaskResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 121
    iput-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mHits:[J

    const/4 v0, 0x4

    .line 123
    iput v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mPrefHitCountdown:I

    const-wide/16 v0, 0x0

    .line 124
    iput-wide v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mLastPrefHitTime:J

    const-string/jumbo v0, "show_verification_device_list"

    .line 144
    iput-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->VERFICATION_DEVICE_LIST:Ljava/lang/String;

    return-void
.end method

.method private handleTaskResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "device_cpu"

    .line 580
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 581
    invoke-virtual {v0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    const-string p1, "device_memory"

    .line 583
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 584
    invoke-virtual {p0, p2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 466
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    :try_start_0
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Property \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' missing and no \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' preference"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiDeviceInfoSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setCredentialTitle()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mVerfDeviceList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mVerfDeviceList:Ljava/util/ArrayList;

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "show_verification_device_list"

    invoke-static {v0, v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->queryStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mVerfDeviceList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string v0, "credentials"

    .line 279
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 280
    iget-object p0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mVerfDeviceList:Ljava/util/ArrayList;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 281
    sget p0, Lcom/android/settings/R$string;->credentials_title_verification:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/settings/R$string;->approve_title:I

    .line 280
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method private setMiuiVersionInfo()V
    .locals 2

    .line 479
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->isPocoDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->device_miui_version_for_POCO:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->device_miui_version:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "device_miui_version"

    .line 482
    invoke-direct {p0, v1, v0}, Lcom/android/settings/device/MiuiDeviceInfoSettings;->setStringTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getMiuiVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/device/MiuiDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 493
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 495
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 497
    invoke-virtual {p1, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setStringTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 487
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz p0, :cond_0

    .line 489
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 504
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 507
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 506
    invoke-static {p2, v0, p0}, Lcom/android/settings/PlatformUtils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 505
    invoke-virtual {p1, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 149
    const-class p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 155
    sget p1, Lcom/android/settings/R$xml;->device_info_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mUm:Landroid/os/UserManager;

    .line 158
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mIsOwnerUser:Z

    .line 159
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    const-string/jumbo p1, "miui_update"

    .line 161
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/CustomValuePreference;

    iput-object p1, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mUpdater:Lcom/android/settings/widget/CustomValuePreference;

    .line 162
    iget-boolean p1, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mIsOwnerUser:Z

    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getUpdateInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 165
    iget-object p1, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mUpdater:Lcom/android/settings/widget/CustomValuePreference;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/CustomValuePreference;->showRedPoint(I)V

    const-string/jumbo p1, "system_update_pv"

    .line 166
    invoke-static {p1}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    :cond_1
    const-string p1, "device_opcust_version"

    .line 170
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 171
    sget-boolean v2, Lcom/android/settings/utils/SettingsFeatures;->IS_NEED_OPCUST_VERSION:Z

    const-string v3, ""

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ro.miui.opcust.version"

    .line 172
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getOpconfigVersion()Ljava/lang/String;

    move-result-object v4

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 176
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    const-string/jumbo p1, "model_number"

    .line 179
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 180
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getModelNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    const-string/jumbo p1, "model_name"

    .line 182
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 183
    invoke-static {}, Lcom/android/settings/credentials/MiuiCredentialsUpdater;->getGlobalCertNumber()Ljava/lang/String;

    move-result-object v2

    .line 184
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 185
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 187
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_3
    const-string p1, "firmware_version"

    .line 190
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 191
    sget-boolean v2, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-eqz v2, :cond_5

    .line 192
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 194
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lmiui/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 197
    :goto_4
    sget-object p1, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v4, "security_patch"

    if-nez v2, :cond_6

    .line 199
    invoke-direct {p0, v4, p1}, Lcom/android/settings/device/MiuiDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 201
    :cond_6
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 204
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/device/MiuiDeviceInfoSettings;->setMiuiVersionInfo()V

    .line 206
    sget p1, Lcom/android/settings/R$string;->reading_data:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "device_cpu"

    invoke-direct {p0, v4, v2}, Lcom/android/settings/device/MiuiDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_memory"

    .line 207
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/settings/device/MiuiDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mReadDeviceInfoTask:Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;

    if-nez p1, :cond_7

    .line 209
    new-instance p1, Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;

    invoke-direct {p1, p0}, Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;-><init>(Lcom/android/settings/device/MiuiDeviceInfoSettings;)V

    iput-object p1, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mReadDeviceInfoTask:Lcom/android/settings/device/MiuiDeviceInfoSettings$ReadDeviceInfoTask;

    new-array v0, v0, [Ljava/lang/Void;

    .line 210
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "baseband_version"

    if-eqz p1, :cond_8

    .line 215
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 217
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_6

    :cond_8
    const-string p1, "gsm.version.baseband"

    .line 220
    invoke-direct {p0, v0, p1}, Lcom/android/settings/device/MiuiDeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_6
    const-string p1, "kernel_version"

    .line 222
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 223
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    const-string p1, "hardware_version"

    .line 225
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string/jumbo v0, "ro.miui.cust_hardware"

    .line 226
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p1, :cond_b

    .line 229
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_7

    .line 232
    :cond_a
    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_b
    :goto_7
    const-string/jumbo p1, "wifi_type_approval"

    .line 235
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->wifi_type_approval:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 238
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_8

    .line 240
    :cond_c
    sget v0, Lcom/android/settings/R$string;->wifi_type_approval_dialog_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 241
    invoke-virtual {p1, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 245
    :goto_8
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "safetylegal"

    const-string/jumbo v2, "ro.url.safetylegal"

    .line 246
    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/device/MiuiDeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "container"

    .line 255
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    const-string/jumbo v3, "team"

    .line 256
    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 260
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "contributors"

    .line 261
    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string v0, "device_name"

    .line 264
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDeviceName:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 265
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->enableShowCredentials()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "credentials"

    .line 266
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_9

    .line 268
    :cond_d
    invoke-direct {p0}, Lcom/android/settings/device/MiuiDeviceInfoSettings;->setCredentialTitle()V

    :goto_9
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 452
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x104000a    # @android:string/ok

    const/4 v1, 0x0

    .line 453
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 454
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 456
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/settings/R$layout;->type_approved_content:I

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 457
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    return-object p1

    .line 461
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 14

    move-object v1, p0

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "instruction"

    .line 288
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/MiuiUtils;->getViewLicenseAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.LICENSE_TYPE"

    const/4 v4, 0x6

    .line 290
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v3, p2

    .line 292
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    const-string v2, "device_internal_memory"

    .line 295
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x4

    const-string v6, "kernel_version"

    const-string v7, "device_cpu"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v4, :cond_1

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 296
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->supportCit()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_1
    iget-object v4, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mLastHitKey:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mLastPrefHitTime:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0xbb8

    cmp-long v4, v10, v12

    if-lez v4, :cond_9

    .line 299
    iget v4, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mPrefHitCountdown:I

    sub-int/2addr v4, v9

    iput v4, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mPrefHitCountdown:I

    .line 300
    iget-object v4, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v4, :cond_2

    .line 301
    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 303
    :cond_2
    iget v4, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mPrefHitCountdown:I

    if-lez v4, :cond_5

    .line 304
    sget v4, Lcom/android/settings/R$plurals;->show_pho_countdown:I

    .line 305
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 306
    sget v4, Lcom/android/settings/R$plurals;->show_rep_countdown:I

    goto :goto_1

    .line 307
    :cond_3
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 308
    sget v4, Lcom/android/settings/R$plurals;->show_cit_countdown:I

    .line 311
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mPrefHitCountdown:I

    .line 312
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    .line 311
    invoke-virtual {v11, v4, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 313
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 315
    :cond_5
    iget v4, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mPrefHitCountdown:I

    if-gtz v4, :cond_d

    .line 317
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "4636"

    goto :goto_2

    .line 319
    :cond_6
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "284"

    goto :goto_2

    .line 321
    :cond_7
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "6484"

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    .line 324
    :goto_2
    new-instance v4, Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android_secret_code://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "android.provider.Telephony.SECRET_CODE"

    invoke-direct {v4, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000000

    .line 326
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x20

    .line 327
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    iput v5, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mPrefHitCountdown:I

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mLastPrefHitTime:J

    goto :goto_3

    .line 333
    :cond_9
    sget v2, Lcom/android/settings/R$string;->launching_pho:I

    .line 334
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 335
    sget v2, Lcom/android/settings/R$string;->launching_cit:I

    .line 337
    :cond_a
    iget-object v4, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v4, :cond_b

    .line 338
    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 340
    :cond_b
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 342
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 343
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 347
    :cond_c
    iput v5, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mPrefHitCountdown:I

    :cond_d
    :goto_3
    const-string v2, "firmware_version"

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "android.intent.action.MAIN"

    if-eqz v2, :cond_10

    .line 351
    iget-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mHits:[J

    array-length v2, v0

    sub-int/2addr v2, v9

    invoke-static {v0, v9, v0, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    iget-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mHits:[J

    array-length v2, v0

    sub-int/2addr v2, v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    aput-wide v5, v0, v2

    .line 353
    iget-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mHits:[J

    aget-wide v5, v0, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x1f4

    sub-long/2addr v9, v11

    cmp-long v0, v5, v9

    if-ltz v0, :cond_1f

    .line 354
    iget-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v2, "no_fun"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "MiuiDeviceInfoSettings"

    if-eqz v0, :cond_f

    .line 355
    iget-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_e

    iget-boolean v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mFunDisallowedBySystem:Z

    if-nez v0, :cond_e

    .line 356
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_e
    const-string v0, "Sorry, no fun for you!"

    .line 359
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 362
    :cond_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    const-class v4, Lcom/android/internal/app/PlatLogoActivity;

    .line 364
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android"

    .line 363
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 368
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_10
    const-string v2, "device_miui_version"

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 374
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSecondSpace(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_4

    .line 378
    :cond_11
    iget-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v2, "no_debugging_features"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 379
    iget-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_12

    iget-boolean v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    if-nez v0, :cond_12

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_12
    return v9

    .line 387
    :cond_13
    iget v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitCountdown:I

    if-lez v0, :cond_17

    sub-int/2addr v0, v9

    .line 388
    iput v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitCountdown:I

    if-nez v0, :cond_15

    .line 390
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 391
    iget-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_14

    .line 392
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 394
    :cond_14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->show_dev_on:I

    invoke-static {v0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 396
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 398
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings.action.DEV_OPEN"

    .line 399
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "show"

    .line 400
    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_15
    if-lez v0, :cond_1f

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1f

    .line 405
    iget-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_16

    .line 406
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 408
    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v4, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitCountdown:I

    sget v5, Lcom/android/settings/R$string;->show_dev_countdown:I

    invoke-static {v2, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 411
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    :cond_17
    if-gez v0, :cond_1f

    .line 414
    iget-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_18

    .line 415
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 417
    :cond_18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->show_dev_already:I

    invoke-static {v0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 419
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    :cond_19
    :goto_4
    return v9

    :cond_1a
    const-string/jumbo v2, "wifi_type_approval"

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 422
    invoke-virtual {p0, v9}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_5

    :cond_1b
    const-string/jumbo v2, "status_info"

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v4, Lcom/android/settings/Settings$PadStatusActivity;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mLastHitKey:Ljava/lang/String;

    return v9

    :cond_1c
    const-string v2, "device_name"

    .line 429
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 430
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, ":miui:starting_window_label"

    const-string v2, ""

    .line 431
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-class v0, Lcom/android/settings/MiuiDeviceNameEditFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return v9

    :cond_1d
    const-string/jumbo v2, "miui_update"

    .line 435
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 436
    iget-boolean v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mIsOwnerUser:Z

    if-eqz v0, :cond_1f

    .line 437
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->startUpdater(Landroid/app/Activity;)V

    .line 438
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getUpdateInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "system_update_click"

    .line 440
    invoke-static {v0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    :cond_1e
    return v9

    .line 445
    :cond_1f
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mLastHitKey:Ljava/lang/String;

    .line 446
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 515
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 518
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string/jumbo v2, "no_fun"

    .line 517
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 520
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 519
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mFunDisallowedBySystem:Z

    .line 522
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string/jumbo v2, "no_debugging_features"

    .line 521
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 524
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 523
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    .line 526
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 527
    iget-object v1, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDeviceName:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDeviceName:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 529
    iget-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDeviceName:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-boolean v2, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mIsOwnerUser:Z

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 531
    iget-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mUpdater:Lcom/android/settings/widget/CustomValuePreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 532
    iget-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mUpdater:Lcom/android/settings/widget/CustomValuePreference;

    iget-boolean v1, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mIsOwnerUser:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v0, "device_internal_memory"

    .line 534
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 535
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->fillOverview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    .line 538
    :goto_0
    iput v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitCountdown:I

    const/4 v0, 0x0

    .line 539
    iput-object v0, p0, Lcom/android/settings/device/MiuiDeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    return-void
.end method
