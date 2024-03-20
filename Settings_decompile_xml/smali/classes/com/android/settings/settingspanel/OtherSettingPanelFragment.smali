.class public Lcom/android/settings/settingspanel/OtherSettingPanelFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OtherSettingPanelFragment.java"

# interfaces
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mMobileNetwork:Lcom/android/settings/widget/CustomCheckBoxPreference;

.field private mMobileNetworkContentObserver:Landroid/database/ContentObserver;

.field private mNFC:Lcom/android/settings/widget/CustomCheckBoxPreference;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNFC(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;)Lcom/android/settings/widget/CustomCheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mNFC:Lcom/android/settings/widget/CustomCheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpreferenceChange(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->preferenceChange(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMobileDataState(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->setMobileDataState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMobileNetworkAvailable(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->setMobileNetworkAvailable()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 43
    new-instance v0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$1;-><init>(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;)V

    iput-object v0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getPreference(Ljava/lang/String;)Lcom/android/settings/widget/CustomCheckBoxPreference;
    .locals 2

    .line 161
    new-instance v0, Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/CustomCheckBoxPreference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 162
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/CustomCheckBoxPreference;->setIsDialogStyle(Z)V

    .line 163
    new-instance v1, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$3;-><init>(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    .line 171
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    iput-object v0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mMobileNetwork:Lcom/android/settings/widget/CustomCheckBoxPreference;

    .line 173
    sget p1, Lcom/android/settings/R$string;->network_settings_title:I

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->isMobileNetworkAvailable()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->registerMobileDataObserver()V

    .line 176
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->setMobileDataState()V

    goto :goto_1

    .line 179
    :cond_0
    iput-object v0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mNFC:Lcom/android/settings/widget/CustomCheckBoxPreference;

    .line 180
    sget p1, Lcom/android/settings/R$string;->nfc_quick_toggle_title:I

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 182
    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->isNfcAvailable()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->registerReceiver()V

    .line 184
    iget-object p1, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mNFC:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->isNfcAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    return-object v0
.end method

.method private isMobileNetworkAvailable()Z
    .locals 3

    .line 198
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "airplane_mode_on"

    const/4 v2, -0x1

    .line 199
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private isMultiSimEnabled()Z
    .locals 1

    .line 194
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNfcAvailable()Z
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private preferenceChange(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    .line 122
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    .line 126
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private registerMobileDataObserver()V
    .locals 6

    .line 141
    new-instance v0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment$2;-><init>(Lcom/android/settings/settingspanel/OtherSettingPanelFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mMobileNetworkContentObserver:Landroid/database/ContentObserver;

    .line 149
    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->isMultiSimEnabled()Z

    move-result v0

    const-string/jumbo v1, "mobile_data"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v2, v0

    .line 150
    :goto_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mMobileNetworkContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mMobileNetworkContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private removeSubscriptionsChangedListener()V
    .locals 1

    .line 109
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_0
    return-void
.end method

.method private setMobileDataState()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mMobileNetwork:Lcom/android/settings/widget/CustomCheckBoxPreference;

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->isMobileNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->getMobileDataEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private setMobileNetworkAvailable()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mMobileNetwork:Lcom/android/settings/widget/CustomCheckBoxPreference;

    if-eqz v0, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->isMobileNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->getMobileDataEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mMobileNetwork:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->isMobileNetworkAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mMobileNetworkContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mMobileNetworkContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mMobileNetworkContentObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget p1, Lcom/android/settings/R$style;->Theme_Provision_Notitle_WifiSettings:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->setThemeRes(I)V

    .line 63
    sget p1, Lcom/android/settings/R$xml;->miui_settings_panel:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mAction:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->getPreference(Ljava/lang/String;)Lcom/android/settings/widget/CustomCheckBoxPreference;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 68
    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->registerReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->removeSubscriptionsChangedListener()V

    .line 105
    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->unregisterObserver()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->setMobileNetworkAvailable()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 73
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 75
    iget-object p0, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mAction:Ljava/lang/String;

    const-string p2, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1, p0, p2, v0, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 79
    instance-of p1, p0, Lmiuix/springback/view/SpringBackLayout;

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "action"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/settingspanel/OtherSettingPanelFragment;->mAction:Ljava/lang/String;

    :cond_0
    return-void
.end method
