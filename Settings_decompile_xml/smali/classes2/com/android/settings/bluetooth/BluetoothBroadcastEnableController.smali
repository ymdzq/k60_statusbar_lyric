.class public Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "BluetoothBroadcastEnableController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final BLUETOOTH_LE_AUDIO_MASK_PROP:Ljava/lang/String; = "persist.vendor.service.bt.adv_audio_mask"

.field public static final BROADCAST_AUDIO_MASK:I = 0x4

.field public static final KEY_BROADCAST_ENABLE:Ljava/lang/String; = "bluetooth_broadcast_enable"

.field public static final TAG:Ljava/lang/String; = "BluetoothBroadcastEnableController"


# instance fields
.field private isBluetoothLeBroadcastAudioSupported:Z

.field private mBapBroadcastProfile:Lcom/android/settingslib/bluetooth/BroadcastProfile;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCallbacksRegistered:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mState:Z

.field private reset_pending:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmManager(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;)Lcom/android/settingslib/RestrictedSwitchPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBapBroadcastProfile(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;Lcom/android/settingslib/bluetooth/BroadcastProfile;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mBapBroadcastProfile:Lcom/android/settingslib/bluetooth/BroadcastProfile;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputreset_pending(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->reset_pending:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$monStateChanged(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->onStateChanged(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 74
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mState:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->reset_pending:Z

    .line 79
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mBapBroadcastProfile:Lcom/android/settingslib/bluetooth/BroadcastProfile;

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->isBluetoothLeBroadcastAudioSupported:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mCallbacksRegistered:Z

    .line 82
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 125
    new-instance p2, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController$1;-><init>(Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mHandler:Landroid/os/Handler;

    const-string p2, "BluetoothBroadcastEnableController"

    const-string v0, "Constructor() with key"

    .line 85
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->Init(Landroid/content/Context;)V

    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 4

    .line 91
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "persist.vendor.service.bt.adv_audio_mask"

    const/4 v1, 0x0

    .line 92
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v1, v3

    .line 93
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->isBluetoothLeBroadcastAudioSupported:Z

    const-string v0, "BluetoothBroadcastEnableController"

    if-eqz v1, :cond_1

    .line 95
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 96
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getBroadcastProfile()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/BroadcastProfile;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mBapBroadcastProfile:Lcom/android/settingslib/bluetooth/BroadcastProfile;

    .line 97
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mCallbacksRegistered:Z

    if-nez p1, :cond_1

    const-string p1, "Registering EventManager callbacks"

    .line 98
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mCallbacksRegistered:Z

    .line 100
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_1
    const-string p0, "Init done"

    .line 103
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onStateChanged(Z)V
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothBroadcastEnableController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mState:Z

    .line 118
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 119
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mState:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->reset_pending:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->reset_pending:Z

    .line 121
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->updateState(Z)V

    :cond_1
    return-void
.end method

.method private updateState(Z)V
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateState req "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothBroadcastEnableController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mState:Z

    if-eq p1, v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateState to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mBapBroadcastProfile:Lcom/android/settingslib/bluetooth/BroadcastProfile;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->setBroadcastMode(Z)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 196
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "displayPreference"

    const-string v1, "BluetoothBroadcastEnableController"

    .line 197
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez p1, :cond_0

    return-void

    .line 204
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->isBluetoothLeBroadcastAudioSupported:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 205
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 206
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->onBluetoothStateChanged(I)V

    .line 207
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mBapBroadcastProfile:Lcom/android/settingslib/bluetooth/BroadcastProfile;

    .line 208
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->isProfileReady()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 209
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mBapBroadcastProfile:Lcom/android/settingslib/bluetooth/BroadcastProfile;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->getBroadcastStatus()I

    move-result p1

    const-string v3, "get status done"

    .line 210
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 215
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->onStateChanged(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 213
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->onStateChanged(Z)V

    goto :goto_1

    .line 218
    :cond_3
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    const-string v0, "BluetoothBroadcastEnableController"

    const-string v1, "getAvailabilityStatus"

    .line 235
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->isBluetoothLeBroadcastAudioSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string p0, "BluetoothBroadcastEnableController"

    const-string v0, "getPreferenceKey"

    .line 190
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "bluetooth_broadcast_enable"

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 2

    const-string v0, "BluetoothBroadcastEnableController"

    const-string v1, "getSliceHighlightMenuRes"

    .line 277
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->isBluetoothLeBroadcastAudioSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public hasAsyncUpdate()Z
    .locals 1

    const-string p0, "BluetoothBroadcastEnableController"

    const-string v0, "hasAsyncUpdate"

    .line 245
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 224
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mState:Z

    return p0
.end method

.method public isPublicSlice()Z
    .locals 1

    const-string p0, "BluetoothBroadcastEnableController"

    const-string v0, "isPublicSlice"

    .line 251
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onA2dpCodecConfigChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothCodecStatus;)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onA2dpCodecConfigChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothCodecStatus;)V

    return-void
.end method

.method public bridge synthetic onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method public bridge synthetic onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method public bridge synthetic onAudioModeChanged()V
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onAudioModeChanged()V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBluetoothStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothBroadcastEnableController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBroadcastKeyGenerated()V
    .locals 2

    const-string v0, "BluetoothBroadcastEnableController"

    const-string/jumbo v1, "onBroadcastKeyGenerated"

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 183
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->reset_pending:Z

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->updateState(Z)V

    :cond_0
    return-void
.end method

.method public onBroadcastStateChanged(I)V
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBroadcastStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothBroadcastEnableController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 169
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->onStateChanged(Z)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_3
    const/4 p1, 0x0

    .line 173
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->onStateChanged(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "BluetoothBroadcastEnableController"

    const-string/jumbo v1, "onDestory"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mCallbacksRegistered:Z

    .line 271
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public bridge synthetic onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method public bridge synthetic onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public bridge synthetic onGroupDiscoveryStatusChanged(III)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onGroupDiscoveryStatusChanged(III)V

    return-void
.end method

.method public bridge synthetic onHearingAidAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onHearingAidAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public bridge synthetic onHearingAidDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onHearingAidDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public bridge synthetic onNewGroupFound(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;ILjava/util/UUID;)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onNewGroupFound(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;ILjava/util/UUID;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    const-string p0, "BluetoothBroadcastEnableController"

    const-string/jumbo v0, "onPause"

    .line 263
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string p0, "BluetoothBroadcastEnableController"

    const-string/jumbo v0, "onResume"

    .line 258
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onScanningStateChanged(Z)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onScanningStateChanged(Z)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastEnableController;->updateState(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
