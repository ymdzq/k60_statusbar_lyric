.class public Lcom/android/settings/wifi/MiuiTetherBlockList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiTetherBlockList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;
    }
.end annotation


# instance fields
.field private mBlockList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockListPrefs:Landroid/content/SharedPreferences;

.field private mDialog:Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;

.field private mDialogShow:Z

.field private mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

.field private mRootView:Landroid/view/View;

.field private mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBlockList(Lcom/android/settings/wifi/MiuiTetherBlockList;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mBlockList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMiuiWifiManager(Lcom/android/settings/wifi/MiuiTetherBlockList;)Landroid/net/wifi/MiuiWifiManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDialogShow(Lcom/android/settings/wifi/MiuiTetherBlockList;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mDialogShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefresh(Lcom/android/settings/wifi/MiuiTetherBlockList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherBlockList;->refresh()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addBlockListPreferences()V
    .locals 7

    .line 79
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiUtils;->getHotSpotMacBlackSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mBlockList:Ljava/util/Set;

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tetherBlockListPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mBlockListPrefs:Landroid/content/SharedPreferences;

    .line 81
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherBlockList;->cleanDeviceInfoInSharedPreferences()V

    .line 82
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mBlockList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mBlockListPrefs:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MiuiTetherBlockList"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "something wrong, no device name, mac = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    new-instance v4, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 100
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private cleanDeviceInfoInSharedPreferences()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mBlockListPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mBlockList:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiTetherBlockList;->removeInfoFromSharedPreferences(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private refresh()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 137
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->blank_screen:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 138
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 140
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 143
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 144
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private removeInfoFromSharedPreferences(Ljava/lang/String;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mBlockListPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 118
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 171
    const-class p0, Lcom/android/settings/wifi/MiuiTetherBlockList;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceMacAddress(Landroidx/preference/Preference;)Ljava/lang/String;
    .locals 0

    .line 218
    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget p1, Lcom/android/settings/R$xml;->miui_tether_block_list:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p1, "MiuiWifiService"

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/MiuiWifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

    .line 71
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherBlockList;->addBlockListPreferences()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 158
    sget p0, Lcom/android/settings/R$menu;->AddBlockList:I

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 125
    sget v0, Lcom/android/settings/R$layout;->no_blocklist_icon:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mRootView:Landroid/view/View;

    .line 127
    sget v1, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 129
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherBlockList;->refresh()V

    .line 132
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->connected_devices_create:I

    if-ne v0, v1, :cond_0

    .line 164
    const-class v0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, Lcom/android/settings/R$string;->show_connected_devices_title:I

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 166
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 3

    .line 209
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mDialogShow:Z

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;

    .line 211
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/MiuiTetherBlockList;->getPreferenceMacAddress(Landroidx/preference/Preference;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;-><init>(Lcom/android/settings/wifi/MiuiTetherBlockList;Landroid/net/MacAddress;Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog-IA;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mDialog:Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;

    .line 212
    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->show()V

    .line 214
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 189
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 190
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherBlockList;->addBlockListPreferences()V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherBlockList;->refresh()V

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mBlockList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hotspot_blocklist_nums"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {v2, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "saved_bundle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v2, "show_dialog"

    .line 198
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mDialogShow:Z

    if-eqz v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mDialog:Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 200
    :cond_1
    new-instance v2, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;

    const-string/jumbo v3, "save_device_mac"

    .line 201
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;-><init>(Lcom/android/settings/wifi/MiuiTetherBlockList;Landroid/net/MacAddress;Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog-IA;)V

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mDialog:Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;

    .line 202
    invoke-virtual {v2}, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->show()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 176
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mDialog:Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "show_dialog"

    .line 180
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mDialogShow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList;->mDialog:Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "save_device_mac"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "saved_bundle"

    .line 183
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
