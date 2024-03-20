.class public Lcom/android/settings/MiuiWirelessSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MiuiWirelessSettings.java"


# instance fields
.field private final INTENT_MIUI_NFC:Ljava/lang/String;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScroll2Nfc:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmRecyclerView(Lcom/android/settings/MiuiWirelessSettings;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiWirelessSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/MiuiWirelessSettings;->mScroll2Nfc:Z

    const-string v0, "android.settings.MIUI_NFC_DETIL"

    .line 85
    iput-object v0, p0, Lcom/android/settings/MiuiWirelessSettings;->INTENT_MIUI_NFC:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    const-string p0, "MiuiWirelessSettings"

    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    new-instance v1, Lcom/android/settings/network/AirplaneModePreferenceController;

    const-string/jumbo v2, "toggle_airplane"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/network/AirplaneModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v1, Lcom/android/settings/wireless/VpnEntryController;

    invoke-direct {v1, p1}, Lcom/android/settings/wireless/VpnEntryController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v1, Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/network/PrivateDnsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v1, Lcom/android/settings/wireless/TetherEntryController;

    invoke-direct {v1, p1}, Lcom/android/settings/wireless/TetherEntryController;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 182
    new-instance v1, Lcom/android/settings/wireless/MiuiWifiDisplayController;

    invoke-direct {v1, p1}, Lcom/android/settings/wireless/MiuiWifiDisplayController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v1, Lcom/android/settings/wireless/DataUsageController;

    invoke-direct {v1, p1}, Lcom/android/settings/wireless/DataUsageController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Lcom/android/settings/wireless/MiuiNFCCategoryController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/settings/wireless/MiuiNFCCategoryController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v1, Lcom/android/settings/wireless/MiuiNFCController;

    const-string/jumbo v2, "miui_nfc"

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/wireless/MiuiNFCController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v1, Lcom/android/settings/wireless/MiuiNfcToggleController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/settings/wireless/MiuiNfcToggleController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v1, Lcom/android/settings/wireless/MiuiNfcRepairController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/settings/wireless/MiuiNfcRepairController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v1, Lcom/android/settings/wireless/MiuiNfcDndModeToggleController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/settings/wireless/MiuiNfcDndModeToggleController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v1, Lcom/android/settings/nfc/AndroidBeamPreferenceController;

    const-string v2, "android_beam_settings"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/nfc/AndroidBeamPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v1, Lcom/android/settings/wireless/MiuiNfcPaymentPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/wireless/MiuiNfcPaymentPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v1, Lcom/android/settings/network/NetworkResetPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/network/NetworkResetPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v1, Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/network/MobileNetworkPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v1, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;

    const-string v2, "cell_broadcast_settings"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v1, Lcom/android/settings/connection/MiShareController;

    const-string/jumbo v2, "mishare_settings"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/connection/MiShareController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v1, Lcom/android/settings/connection/ScreenProjectionController;

    const-string/jumbo v2, "screen_projection"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/connection/ScreenProjectionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v1, Lcom/android/settings/connection/MiPrintController;

    const-string/jumbo v2, "miprint_settings"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/connection/MiPrintController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v1, Lcom/android/settings/connection/UWBSettingsController;

    const-string/jumbo v2, "uwb_settings"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/connection/UWBSettingsController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v1, Lcom/android/settings/connection/MiMirrorController;

    const-string/jumbo v2, "mimirror_settings"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/connection/MiMirrorController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v1, Lcom/android/settings/connection/UarScreenSettingsController;

    const-string/jumbo v2, "ucar_screen_settings"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/connection/UarScreenSettingsController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v1, Lcom/android/settings/cameragrip/CameraGripController;

    const-string v2, "camera_grip_settings"

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-direct {v1, p1, v2, p0}, Lcom/android/settings/cameragrip/CameraGripController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPageIndex()I
    .locals 0

    .line 0
    const/16 p0, 0x9

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 156
    sget p0, Lcom/android/settings/R$xml;->wireless_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method protected onBindPreferences()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onBindPreferences()V

    const-string/jumbo v0, "mobile_network_settings"

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    const-string p1, "android.settings.NFC_SETTINGS"

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/MiuiWirelessSettings;->mScroll2Nfc:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/android/settings/MiuiWirelessSettings;->mScroll2Nfc:Z

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 212
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 213
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/MiuiWirelessSettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 215
    new-instance p3, Lcom/android/settings/MiuiWirelessSettings$1;

    invoke-direct {p3, p0}, Lcom/android/settings/MiuiWirelessSettings$1;-><init>(Lcom/android/settings/MiuiWirelessSettings;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p2, "network_reset"

    .line 224
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    .line 225
    sget p3, Lcom/android/settings/R$string;->reset_network_title_noSim:I

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    const-string/jumbo p2, "nfc_category"

    .line 227
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    .line 228
    sget-boolean p3, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-eqz p3, :cond_3

    if-eqz p2, :cond_1

    .line 230
    sget p3, Lcom/android/settings/R$string;->kddi_nfc_category_title:I

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_1
    const-string/jumbo p2, "toggle_nfc"

    .line 232
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 234
    sget p3, Lcom/android/settings/R$string;->kddi_nfc_quick_toggle_title:I

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 235
    sget p3, Lcom/android/settings/R$string;->kddi_nfc_quick_toggle_summary:I

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    const-string/jumbo p2, "nfc_secure_settings"

    .line 237
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 239
    sget p2, Lcom/android/settings/R$string;->kddi_nfc_secure_settings_title:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 240
    sget p2, Lcom/android/settings/R$string;->kddi_nfc_secure_toggle_summary:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const-string p0, ""

    .line 243
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 94
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v0, "MiuiWirelessSettings"

    .line 119
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 120
    sget v1, Lcom/android/settings/R$string;->more_connection:I

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->updateActionBarTitleView(I)V

    .line 121
    iget-boolean v1, p0, Lcom/android/settings/MiuiWirelessSettings;->mScroll2Nfc:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 122
    iput-boolean v1, p0, Lcom/android/settings/MiuiWirelessSettings;->mScroll2Nfc:Z

    .line 123
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedShowMiuiNFC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MIUI_NFC_DETIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jump to MIUI_NFC error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiWirelessSettings;->log(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 135
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItemCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 139
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method
