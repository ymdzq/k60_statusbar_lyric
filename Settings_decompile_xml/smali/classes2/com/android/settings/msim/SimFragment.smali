.class public Lcom/android/settings/msim/SimFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimFragment.java"


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroidx/preference/Preference;

.field private mSlotId:I

.field private sUnknown:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mupdateAreaInfo(Lcom/android/settings/msim/SimFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/msim/SimFragment;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDataState(Lcom/android/settings/msim/SimFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/msim/SimFragment;->updateDataState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNetworkType(Lcom/android/settings/msim/SimFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/msim/SimFragment;->updateNetworkType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateServiceState(Lcom/android/settings/msim/SimFragment;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/msim/SimFragment;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    const-string v0, "data_state"

    const-string/jumbo v1, "service_state"

    const-string/jumbo v2, "operator_name"

    const-string/jumbo v3, "roaming_state"

    const-string/jumbo v4, "network_type"

    const-string v5, "latest_area_info"

    const-string/jumbo v6, "number"

    const-string/jumbo v7, "signal_strength"

    .line 58
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/msim/SimFragment;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/android/settings/msim/SimFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 91
    new-instance v0, Lcom/android/settings/msim/SimFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/msim/SimFragment$1;-><init>(Lcom/android/settings/msim/SimFragment;)V

    iput-object v0, p0, Lcom/android/settings/msim/SimFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 109
    new-instance v0, Lcom/android/settings/msim/SimFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/msim/SimFragment$2;-><init>(Lcom/android/settings/msim/SimFragment;)V

    iput-object v0, p0, Lcom/android/settings/msim/SimFragment;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 234
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object p2, p0, Lcom/android/settings/msim/SimFragment;->sUnknown:Ljava/lang/String;

    .line 238
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 240
    invoke-virtual {p0, p2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "latest_area_info"

    .line 311
    invoke-direct {p0, v0, p1}, Lcom/android/settings/msim/SimFragment;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/android/settings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_data_disconnected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/msim/SimFragment;->mSlotId:I

    invoke-virtual {v2, v3}, Lmiui/telephony/TelephonyManager;->getDataStateForSlot(I)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/settings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_data_suspended:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/settings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_data_connected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/android/settings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_data_connecting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/android/settings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "data_state"

    .line 279
    invoke-direct {p0, v1, v0}, Lcom/android/settings/msim/SimFragment;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateNetworkType()V
    .locals 0

    .line 0
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 283
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 284
    iget-object v1, p0, Lcom/android/settings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->radioInfo_unknown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_service_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/settings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_service_out:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/settings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$string;->radioInfo_service_in:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v0, "service_state"

    .line 299
    invoke-direct {p0, v0, v1}, Lcom/android/settings/msim/SimFragment;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    const-string/jumbo v1, "roaming_state"

    if-eqz v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/android/settings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->radioInfo_roaming_in:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/msim/SimFragment;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_3
    iget-object v0, p0, Lcom/android/settings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->radioInfo_roaming_not:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/msim/SimFragment;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v0, "operator_name"

    .line 306
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/msim/SimFragment;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

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
    .locals 3

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiui/telephony/SubscriptionManager;->getSlotId(Landroid/os/Bundle;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/msim/SimFragment;->mSlotId:I

    .line 138
    sget p1, Lcom/android/settings/R$xml;->status_sim:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/msim/SimFragment;->mRes:Landroid/content/res/Resources;

    .line 141
    sget v1, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/msim/SimFragment;->sUnknown:Ljava/lang/String;

    .line 142
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-nez p1, :cond_0

    .line 143
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/msim/SimFragment;->mSlotId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/MiuiUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/msim/SimFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    :cond_0
    const-string/jumbo p1, "signal_strength"

    .line 146
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/msim/SimFragment;->mSignalStrength:Landroidx/preference/Preference;

    .line 149
    iget-object p1, p0, Lcom/android/settings/msim/SimFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/android/settings/msim/SimFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CDMA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 158
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/msim/SimFragment;->mSlotId:I

    invoke-virtual {p1, v0}, Lmiui/telephony/TelephonyManager;->getSimCountryIsoForSlot(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "br"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/android/settings/msim/SimFragment;->mShowLatestAreaInfo:Z

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/android/settings/msim/SimFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    const-string/jumbo v0, "number"

    .line 169
    invoke-direct {p0, v0, p1}, Lcom/android/settings/msim/SimFragment;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-boolean p1, p0, Lcom/android/settings/msim/SimFragment;->mShowLatestAreaInfo:Z

    if-nez p1, :cond_5

    const-string p1, "latest_area_info"

    .line 172
    invoke-direct {p0, p1}, Lcom/android/settings/msim/SimFragment;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_3

    .line 150
    :cond_4
    :goto_1
    sget-object p1, Lcom/android/settings/msim/SimFragment;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_5

    aget-object v2, p1, v0

    .line 151
    invoke-direct {p0, v2}, Lcom/android/settings/msim/SimFragment;->removePreferenceFromScreen(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 198
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 200
    iget-object v0, p0, Lcom/android/settings/msim/SimFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/msim/SimFragment;->mSlotId:I

    iget-object v2, p0, Lcom/android/settings/msim/SimFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiui/telephony/TelephonyManager;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/msim/SimFragment;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/msim/SimFragment;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 179
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/msim/SimFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/msim/SimFragment;->mSlotId:I

    iget-object v2, p0, Lcom/android/settings/msim/SimFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x141

    invoke-virtual {v0, v1, v2, v3}, Lmiui/telephony/TelephonyManager;->listenForSlot(ILandroid/telephony/PhoneStateListener;I)V

    .line 185
    iget-boolean v0, p0, Lcom/android/settings/msim/SimFragment;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/msim/SimFragment;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, v4}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/android/settings/msim/SimFragment;->mSignalStrength:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/android/settings/msim/SimFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 322
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 323
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    .line 327
    :cond_0
    iget-object p0, p0, Lcom/android/settings/msim/SimFragment;->mSignalStrength:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 330
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    .line 334
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    :cond_2
    return-void
.end method
