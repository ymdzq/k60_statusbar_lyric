.class public Lcom/android/settings/projection/ScreenProjectionSwitchController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ScreenProjectionSwitchController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenProjectionSwitchController"


# instance fields
.field private isHotSpotOn:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHandler:Landroid/os/Handler;

.field private mMananger:Lcom/milink/api/v1/MilinkClientManager;

.field private mScreenProjection:Landroidx/preference/CheckBoxPreference;

.field private mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$msetWifiApState(Lcom/android/settings/projection/ScreenProjectionSwitchController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/projection/ScreenProjectionSwitchController;->setWifiApState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSwitchState(Lcom/android/settings/projection/ScreenProjectionSwitchController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/projection/ScreenProjectionSwitchController;->updateSwitchState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->isHotSpotOn:Z

    .line 51
    new-instance p1, Lcom/android/settings/projection/ScreenProjectionSwitchController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/projection/ScreenProjectionSwitchController$1;-><init>(Lcom/android/settings/projection/ScreenProjectionSwitchController;)V

    iput-object p1, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 47
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 48
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private dealScreenProjectionStateChange(Z)Z
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 120
    iget-boolean v4, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->isHotSpotOn:Z

    if-eqz v4, :cond_0

    .line 121
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->close_hotspot_hint:I

    invoke-static {p1, v4, v3}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 122
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v3, Lcom/android/settings/projection/ScreenProjectionSwitchController$3;

    invoke-direct {v3, p0}, Lcom/android/settings/projection/ScreenProjectionSwitchController$3;-><init>(Lcom/android/settings/projection/ScreenProjectionSwitchController;)V

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 131
    new-instance v4, Lcom/android/settingslib/wifi/SlaveWifiUtils;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/settingslib/wifi/SlaveWifiUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->isSlaveWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->close_slave_wifi_hint:I

    invoke-static {p1, v4, v3}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 133
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v3, Lcom/android/settings/projection/ScreenProjectionSwitchController$4;

    invoke-direct {v3, p0}, Lcom/android/settings/projection/ScreenProjectionSwitchController$4;-><init>(Lcom/android/settings/projection/ScreenProjectionSwitchController;)V

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    :cond_1
    const-string v0, "ScreenProjectionSwitchController"

    if-eqz p1, :cond_2

    const-string p1, "MilinkClientManager showScanList"

    .line 143
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p1, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mMananger:Lcom/milink/api/v1/MilinkClientManager;

    new-instance v0, Lcom/android/settings/projection/ScreenProjectionSwitchController$5;

    invoke-direct {v0, p0}, Lcom/android/settings/projection/ScreenProjectionSwitchController$5;-><init>(Lcom/android/settings/projection/ScreenProjectionSwitchController;)V

    invoke-virtual {p1, v0, v3}, Lcom/milink/api/v1/MilinkClientManager;->showScanList(Lcom/milink/api/v1/MiLinkClientScanListCallback;I)Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    :cond_2
    const-string p1, "MilinkClientManager disconnectWifiDisplay"

    .line 161
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mMananger:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {p0}, Lcom/milink/api/v1/MilinkClientManager;->disconnectWifiDisplay()Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    return v3
.end method

.method private setWifiApState(I)V
    .locals 1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 67
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->isHotSpotOn:Z

    return-void
.end method

.method private updateSwitchState()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_project_in_screening"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 107
    iget-object p0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mScreenProjection:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mScreenProjection:Landroidx/preference/CheckBoxPreference;

    .line 82
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo p1, "screen_project_in_screening"

    .line 84
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 86
    new-instance v1, Lcom/android/settings/projection/ScreenProjectionSwitchController$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/projection/ScreenProjectionSwitchController$2;-><init>(Lcom/android/settings/projection/ScreenProjectionSwitchController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mContentObserver:Landroid/database/ContentObserver;

    .line 93
    iget-object p0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 191
    iget-object p0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 112
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/projection/ScreenProjectionSwitchController;->dealScreenProjectionStateChange(Z)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 3

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Lcom/milink/api/v1/MilinkClientManager;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/milink/api/v1/MilinkClientManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mMananger:Lcom/milink/api/v1/MilinkClientManager;

    .line 171
    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->open()V

    .line 172
    iget-object v0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mMananger:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->close()V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mMananger:Lcom/milink/api/v1/MilinkClientManager;

    .line 182
    iget-object v0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/projection/ScreenProjectionSwitchController;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/projection/ScreenProjectionSwitchController;->updateSwitchState()V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
