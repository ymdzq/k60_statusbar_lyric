.class public Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "WifiNetworkDetailsFragment2.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;


# instance fields
.field mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field mIsUiRestricted:Z

.field mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

.field private mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

.field private mWifiDialogListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_wifi"

    .line 90
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDialogListeners:Ljava/util/List;

    return-void
.end method

.method private clearWifiEntryCallback()V
    .locals 1

    .line 290
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-nez p0, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    return-void
.end method

.method private isEditable()Z
    .locals 1

    .line 301
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p0

    return p0
.end method

.method private setupNetworksDetailTracker()V
    .locals 12

    .line 260
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-eqz v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 265
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNetworkDetailsFrg2{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWorkerThread:Landroid/os/HandlerThread;

    .line 268
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 269
    new-instance v6, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2$1;

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2$1;-><init>(Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;Ljava/time/ZoneId;)V

    .line 276
    invoke-static {v3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;

    move-result-object v1

    .line 279
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    new-instance v4, Landroid/os/Handler;

    .line 281
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWorkerThread:Landroid/os/HandlerThread;

    .line 282
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v7, 0x3a98

    const-wide/16 v9, 0x2710

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v11, "key_chosen_wifientry_key"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 278
    invoke-interface/range {v1 .. v11}, Lcom/android/settings/wifi/WifiTrackerLibProvider;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
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

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    .line 199
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 200
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->setupNetworksDetailTracker()V

    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/android/settings/wifi/details2/WifiSecondSummaryController2;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/details2/WifiSecondSummaryController2;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/details2/WifiSecondSummaryController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 206
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v5, Landroid/os/Handler;

    .line 213
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    const-class v1, Landroid/net/wifi/WifiManager;

    .line 215
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/net/wifi/WifiManager;

    iget-object v8, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    .line 208
    invoke-static/range {v1 .. v8}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->newInstance(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    .line 217
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v1, Lcom/android/settings/wifi/details2/WifiAutoConnectPreferenceController2;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/details2/WifiAutoConnectPreferenceController2;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/details2/WifiAutoConnectPreferenceController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 222
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v1, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/details2/AddDevicePreferenceController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 227
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v1, Lcom/android/settings/wifi/details2/WifiMeteredPreferenceController2;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/wifi/details2/WifiMeteredPreferenceController2;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 231
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v2, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;

    invoke-direct {v2, p1}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;-><init>(Landroid/content/Context;)V

    .line 235
    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/details2/WifiPrivacyPreferenceController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 236
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v3, Lcom/android/settings/wifi/details2/WifiSubscriptionDetailPreferenceController2;

    invoke-direct {v3, p1}, Lcom/android/settings/wifi/details2/WifiSubscriptionDetailPreferenceController2;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v3, v0}, Lcom/android/settings/wifi/details2/WifiSubscriptionDetailPreferenceController2;->setWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 242
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDialogListeners:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDialogListeners:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDialogListeners:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    .line 0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/16 p0, 0x25b

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "WifiNetworkDetailsFrg2"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x351

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 136
    sget p0, Lcom/android/settings/R$xml;->wifi_network_details_fragment2:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mIsUiRestricted:Z

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    if-nez p1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p0, p1, v1}, Lcom/android/settings/wifi/WifiDialog2;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;I)Lcom/android/settings/wifi/WifiDialog2;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 160
    iget-boolean v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mIsUiRestricted:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 161
    sget v1, Lcom/android/settings/R$string;->wifi_modify:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080515    # @android:drawable/ic_perm_group_audio_settings

    .line 162
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 163
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 121
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 192
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDetailPreferenceController2:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-virtual {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->canModifyNetwork()Z

    move-result p1

    if-nez p1, :cond_2

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-nez p1, :cond_1

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 180
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 179
    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v2

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_1

    .line 182
    new-instance p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v3, 0x0

    .line 183
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p1, v0, v3, v2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 186
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :goto_0
    return v1
.end method

.method public onStart()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 103
    iget-boolean v0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mIsUiRestricted:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->restrictUi()V

    :cond_0
    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 1

    .line 254
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->mWifiDialogListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    .line 255
    invoke-interface {v0, p1}, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;->onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method restrictUi()V
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiNetworkDetailsFragment2;->clearWifiEntryCallback()V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_empty_list_user_restricted:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method
