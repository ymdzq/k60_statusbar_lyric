.class public Lcom/android/settings/wifi/tether/AccouontApFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "AccouontApFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/AccouontApFragment$AutoSoftapStateReceiver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferenceAccountAp:Landroidx/preference/CheckBoxPreference;

.field private mPreferenceAutoOpenSoftap:Landroidx/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$mupdateView(Lcom/android/settings/wifi/tether/AccouontApFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/AccouontApFragment;->updateView()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateView()V
    .locals 5

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pref_key_connectivity_corp_network_state"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 120
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pref_key_easy_tether_auto_connect_state"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mPreferenceAccountAp:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mPreferenceAutoOpenSoftap:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 129
    iget-object p0, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mPreferenceAutoOpenSoftap:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mPreferenceAccountAp:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mPreferenceAutoOpenSoftap:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 133
    iget-object p0, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mPreferenceAutoOpenSoftap:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 40
    :try_start_0
    sget p1, Lcom/android/settings/R$xml;->settings_account_ap:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "pref_key_account_ap"

    .line 42
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mPreferenceAccountAp:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string p1, "pref_key_auto_open_softap"

    .line 46
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mPreferenceAutoOpenSoftap:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mContext:Landroid/content/Context;

    .line 52
    iget-object p1, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_2

    .line 53
    new-instance p1, Lcom/android/settings/wifi/tether/AccouontApFragment$AutoSoftapStateReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/tether/AccouontApFragment$AutoSoftapStateReceiver;-><init>(Lcom/android/settings/wifi/tether/AccouontApFragment;)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "broadcast_easy_tether_auto_connect_state"

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string p1, "AccountApSettingsActivity"

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mReceiver has been new "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/AccouontApFragment;->updateView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 77
    iget-object p0, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 83
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    return v0

    .line 91
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "pref_key_auto_open_softap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "pref_key_easy_tether_auto_connect_state"

    if-nez v1, :cond_3

    const-string v1, "pref_key_account_ap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "pref_key_connectivity_corp_network_state"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p2, :cond_4

    .line 96
    iget-object p1, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 100
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/tether/AccouontApFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/AccouontApFragment;->updateView()V

    :cond_5
    :goto_1
    return v0
.end method

.method public onResume()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 69
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/AccouontApFragment;->updateView()V

    return-void
.end method
