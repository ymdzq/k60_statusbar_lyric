.class public Lcom/android/settings/network/InternetResetHelper;
.super Ljava/lang/Object;
.source "InternetResetHelper.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mIsWifiReady:Z

.field protected mMobileNetworkController:Lcom/android/settings/network/NetworkMobileProviderController;

.field protected mRecoveryWorker:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

.field protected mResettingPreference:Landroidx/preference/Preference;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;

.field protected mWifiNetworkPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/PreferenceGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWifiStateFilter:Landroid/content/IntentFilter;

.field protected final mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field protected mWifiTogglePreferences:Landroidx/preference/Preference;


# virtual methods
.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 p0, 0x0

    .line 120
    throw p0
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiStateFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public restart()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mRecoveryWorker:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    invoke-virtual {v0}, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->isRecoveryAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "InternetResetHelper"

    const-string v0, "The connectivity subsystem is not available to restart."

    .line 183
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/InternetResetHelper;->showResettingAndSendTimeoutChecks()V

    .line 187
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    .line 188
    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mRecoveryWorker:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    invoke-virtual {p0}, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->triggerRestart()Z

    return-void
.end method

.method protected resumePreferences()V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mRecoveryWorker:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    invoke-virtual {v0}, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->isRecovering()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "InternetResetHelper"

    if-eqz v0, :cond_0

    .line 153
    iget-object v3, p0, Lcom/android/settings/network/InternetResetHelper;->mMobileNetworkController:Lcom/android/settings/network/NetworkMobileProviderController;

    if-eqz v3, :cond_0

    const-string v3, "Resume the Mobile Network controller"

    .line 154
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v3, p0, Lcom/android/settings/network/InternetResetHelper;->mMobileNetworkController:Lcom/android/settings/network/NetworkMobileProviderController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/android/settings/network/NetworkMobileProviderController;->hidePreference(ZZ)V

    .line 157
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiTogglePreferences:Landroidx/preference/Preference;

    if-eqz v3, :cond_1

    const-string v3, "Resume the Wi-Fi preferences"

    .line 158
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiTogglePreferences:Landroidx/preference/Preference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 162
    iget-object v2, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiNetworkPreferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 163
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    .line 166
    iget-boolean p0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 167
    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method protected showResettingAndSendTimeoutChecks()V
    .locals 0

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/network/InternetResetHelper;->suspendPreferences()V

    const/4 p0, 0x0

    .line 177
    throw p0
.end method

.method protected suspendPreferences()V
    .locals 4

    const-string v0, "InternetResetHelper"

    const-string v1, "Suspend the subsystem preferences"

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mMobileNetworkController:Lcom/android/settings/network/NetworkMobileProviderController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, v1, v1}, Lcom/android/settings/network/NetworkMobileProviderController;->hidePreference(ZZ)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiTogglePreferences:Landroidx/preference/Preference;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiNetworkPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 143
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 144
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/InternetResetHelper;->mResettingPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_3

    .line 147
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    return-void
.end method

.method protected updateWifiStateChange()V
    .locals 2

    .line 125
    iget-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/InternetResetHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InternetResetHelper"

    const-string v1, "The Wi-Fi subsystem is done for recovery."

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/android/settings/network/InternetResetHelper;->mIsWifiReady:Z

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/network/InternetResetHelper;->resumePreferences()V

    :cond_0
    return-void
.end method
