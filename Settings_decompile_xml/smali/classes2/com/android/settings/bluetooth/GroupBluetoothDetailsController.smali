.class public abstract Lcom/android/settings/bluetooth/GroupBluetoothDetailsController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "GroupBluetoothDetailsController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field protected mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;ILcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsController;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 61
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 62
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsController;->init(Landroidx/preference/PreferenceScreen;)V

    .line 85
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method protected abstract init(Landroidx/preference/PreferenceScreen;)V
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected abstract loadDevices()V
.end method

.method public onStart()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsController;->loadDevices()V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsController;->refresh()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    return-void
.end method

.method protected abstract refresh()V
.end method
