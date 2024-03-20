.class public Lcom/android/settings/msim/ImeiFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ImeiFragment.java"


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRes:Landroid/content/res/Resources;

.field private mSlotId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private sUnknown:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "imei"

    const-string v1, "imei_sv"

    const-string/jumbo v2, "prl_version"

    const-string/jumbo v3, "min_number"

    const-string/jumbo v4, "meid_number"

    const-string v5, "icc_id"

    .line 52
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/msim/ImeiFragment;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/android/settings/msim/ImeiFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object p2, p0, Lcom/android/settings/msim/ImeiFragment;->sUnknown:Ljava/lang/String;

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 163
    invoke-virtual {p0, p2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/telephony/SubscriptionManager;->getSlotId(Landroid/os/Bundle;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/msim/ImeiFragment;->mSlotId:I

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/msim/ImeiFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 80
    sget p1, Lcom/android/settings/R$xml;->status_imei:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/msim/ImeiFragment;->mRes:Landroid/content/res/Resources;

    .line 83
    sget v1, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/msim/ImeiFragment;->sUnknown:Ljava/lang/String;

    .line 84
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-nez p1, :cond_0

    .line 85
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/msim/ImeiFragment;->mSlotId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/MiuiUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/msim/ImeiFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/android/settings/msim/ImeiFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/android/settings/msim/ImeiFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CDMA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v0, "meid_number"

    const-string/jumbo v1, "prl_version"

    const-string v2, "imei_sv"

    const-string/jumbo v3, "min_number"

    if-eqz p1, :cond_3

    .line 96
    iget-object p1, p0, Lcom/android/settings/msim/ImeiFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/msim/ImeiFragment;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/msim/ImeiFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/settings/msim/ImeiFragment;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$bool;->config_msid_enable:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->status_msid_number:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/android/settings/msim/ImeiFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/settings/msim/ImeiFragment;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v2}, Lcom/android/settings/msim/ImeiFragment;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/android/settings/msim/ImeiFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "imei"

    invoke-direct {p0, v4, p1}, Lcom/android/settings/msim/ImeiFragment;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/android/settings/msim/ImeiFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 118
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-direct {p0, v2, p1}, Lcom/android/settings/msim/ImeiFragment;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v1}, Lcom/android/settings/msim/ImeiFragment;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, v0}, Lcom/android/settings/msim/ImeiFragment;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, v3}, Lcom/android/settings/msim/ImeiFragment;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string p1, "icc_id"

    .line 125
    invoke-direct {p0, p1}, Lcom/android/settings/msim/ImeiFragment;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2

    .line 89
    :cond_4
    :goto_0
    sget-object p1, Lcom/android/settings/msim/ImeiFragment;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v2, p1, v0

    .line 90
    invoke-direct {p0, v2}, Lcom/android/settings/msim/ImeiFragment;->removePreferenceFromScreen(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method
