.class Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "WifiCallingSettingsForSub.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 7

    .line 122
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 128
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "wifi_calling_switch_bar"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SettingsMainSwitchPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 130
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    .line 131
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v4}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->-$$Nest$fgetmSubId(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getTelephonyManagerForSub(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 132
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    goto :goto_2

    .line 137
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v5}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->-$$Nest$fgetmSubId(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)I

    move-result v6

    .line 138
    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->queryImsState(I)Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    move-result-object v5

    .line 139
    invoke-virtual {v5}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isAllowUserControl()Z

    move-result v5

    :goto_2
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v5, v2

    .line 143
    :goto_4
    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    :cond_5
    move v3, v2

    move v4, v3

    :goto_5
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    const-string v0, "carrier_config"

    .line 150
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_6

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->-$$Nest$fgetmSubId(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "editable_wfc_mode_bool"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "editable_wfc_roaming_mode_bool"

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_6
    move p1, v2

    move v2, v1

    goto :goto_6

    :cond_7
    move p1, v2

    .line 166
    :goto_6
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "wifi_calling_mode"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 168
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 170
    :cond_8
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$PhoneTelephonyCallback;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    .line 171
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string/jumbo v0, "wifi_calling_roaming_mode"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 173
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_9
    return-void
.end method
