.class public Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BluetoothBroadcastPinController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final BLUETOOTH_LE_AUDIO_MASK_PROP:Ljava/lang/String; = "persist.vendor.service.bt.adv_audio_mask"

.field public static final BROADCAST_AUDIO_MASK:I = 0x4

.field public static final KEY_BROADCAST_AUDIO_PIN:Ljava/lang/String; = "broadcast_audio_pin_code"

.field public static final TAG:Ljava/lang/String; = "BluetoothBroadcastPinController"


# instance fields
.field private isBluetoothLeBroadcastAudioSupported:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCallbacksRegistered:Z

.field private mContext:Landroid/content/Context;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mHandler:Landroid/os/Handler;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field mPreference:Landroidx/preference/Preference;

.field private mRunnable:Ljava/lang/Runnable;

.field private mUserSelectedPinConfiguration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "broadcast_audio_pin_code"

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, -0x1

    .line 101
    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mUserSelectedPinConfiguration:I

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->isBluetoothLeBroadcastAudioSupported:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mCallbacksRegistered:Z

    .line 105
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 107
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController$1;-><init>(Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mRunnable:Ljava/lang/Runnable;

    const-string/jumbo v0, "persist.vendor.service.bt.adv_audio_mask"

    .line 116
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v1, v3

    .line 117
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->isBluetoothLeBroadcastAudioSupported:Z

    const-string v0, "Constructor()"

    const-string v1, "BluetoothBroadcastPinController"

    .line 118
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mHandler:Landroid/os/Handler;

    .line 121
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 122
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->isBluetoothLeBroadcastAudioSupported:Z

    if-eqz v0, :cond_1

    .line 123
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 124
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mCallbacksRegistered:Z

    if-nez p1, :cond_1

    const-string p1, "Registering EventManager callbacks"

    .line 125
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mCallbacksRegistered:Z

    .line 127
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;)V
    .locals 2

    const-string v0, "broadcast_audio_pin_code"

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, -0x1

    .line 101
    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mUserSelectedPinConfiguration:I

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->isBluetoothLeBroadcastAudioSupported:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mCallbacksRegistered:Z

    .line 105
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 107
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController$1;-><init>(Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mRunnable:Ljava/lang/Runnable;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PinController()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BluetoothBroadcastPinController"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 136
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method private convertBytesToString([B)Ljava/lang/String;
    .locals 8

    .line 239
    array-length p0, p1

    const-string v0, ""

    const-string v1, "BluetoothBroadcastPinController"

    const/16 v2, 0x10

    if-eq p0, v2, :cond_0

    const-string p0, "Not 16 bytes ++++++++++++"

    .line 240
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    new-array p0, v2, [B

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_2

    rsub-int/lit8 v6, v4, 0xf

    .line 247
    aget-byte v6, p1, v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, 0x1

    .line 248
    aput-byte v6, p0, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 252
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 254
    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-static {p0, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p0, p1

    .line 255
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pin: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private setValueIndex(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 5

    .line 330
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "findIndexOfValue"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 331
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 332
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mPreference:Landroidx/preference/Preference;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TAG"

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPreference Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " indexString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "setValueIndex"

    new-array v2, v1, [Ljava/lang/Class;

    .line 336
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 337
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mPreference:Landroidx/preference/Preference;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 339
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updatePinConfiguration()V
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePinConfiguration with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mUserSelectedPinConfiguration:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothBroadcastPinController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mUserSelectedPinConfiguration:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo p0, "no pin selected"

    .line 196
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getBroadcastProfile()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/BroadcastProfile;

    .line 203
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mUserSelectedPinConfiguration:I

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    .line 204
    invoke-virtual {v0, v2, p0, v1}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->setEncryption(ZIZ)Z

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {v0, v1, p0, v1}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->setEncryption(ZIZ)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "displayPreference"

    const-string v1, "BluetoothBroadcastPinController"

    .line 164
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mPreference:Landroidx/preference/Preference;

    if-nez p1, :cond_0

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot find preference: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->isBluetoothLeBroadcastAudioSupported:Z

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->onBroadcastKeyGenerated()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 175
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    const-string v0, "BluetoothBroadcastPinController"

    const-string v1, "getAvailabilityStatus"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->isBluetoothLeBroadcastAudioSupported:Z

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
    .locals 0

    .line 0
    const-string p0, "broadcast_audio_pin_code"

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
    .locals 3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBluetoothStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothBroadcastPinController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0xc8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public onBroadcastKeyGenerated()V
    .locals 11

    const-string/jumbo v0, "onBroadcastKeyGenerated"

    const-string v1, "BluetoothBroadcastPinController"

    .line 261
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ba_security_summary"

    const-string/jumbo v4, "string"

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 267
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ba_security_summary_pin_unavailable"

    invoke-virtual {v2, v5, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 268
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ba_security_summary_no_pin"

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    if-eq v2, v4, :cond_0

    if-eq v3, v4, :cond_0

    const-string/jumbo v4, "string exist"

    .line 270
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v0, "Broadcast code: "

    const-string v2, "Unavailable"

    const-string v3, "No Broadcast code"

    .line 279
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 280
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 281
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getBroadcastProfile()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/BroadcastProfile;

    .line 283
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mPreference:Landroidx/preference/Preference;

    if-nez v5, :cond_1

    return-void

    .line 287
    :cond_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v6, 0xc

    const/4 v7, 0x0

    if-ne v5, v6, :cond_8

    .line 288
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->isProfileReady()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 289
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/BroadcastProfile;->getEncryptionKey()[B

    move-result-object v4

    .line 291
    array-length v5, v4

    const/16 v6, 0x10

    if-ne v5, v6, :cond_3

    move v5, v7

    .line 292
    :goto_1
    array-length v8, v4

    if-ge v5, v8, :cond_2

    .line 293
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pin("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v9, v4, v5

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%02X"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 295
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->convertBytesToString([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    const-string v5, ""

    .line 299
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v3

    .line 302
    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mPreference:Landroidx/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mPreference:Landroidx/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 305
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mUserSelectedPinConfiguration:I

    if-eqz v0, :cond_6

    const/4 v5, 0x4

    if-eq v0, v5, :cond_6

    if-ne v0, v6, :cond_5

    goto :goto_3

    .line 312
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyStr length: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->setValueIndex(Landroidx/preference/Preference;Ljava/lang/String;)V

    goto :goto_4

    .line 308
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUserSelectedPinConfiguration: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mUserSelectedPinConfiguration:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mPreference:Landroidx/preference/Preference;

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mUserSelectedPinConfiguration:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->setValueIndex(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 317
    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 318
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    .line 320
    :cond_7
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    .line 323
    :cond_8
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mPreference:Landroidx/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_5
    return-void
.end method

.method public bridge synthetic onBroadcastStateChanged(I)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onBroadcastStateChanged(I)V

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

    const-string v0, "BluetoothBroadcastPinController"

    const-string/jumbo v1, "onDestory"

    .line 345
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 347
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mCallbacksRegistered:Z

    .line 348
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 349
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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const-string/jumbo v0, "onPreferenceChange"

    const-string v1, "BluetoothBroadcastPinController"

    .line 182
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "broadcast_audio_pin_code"

    .line 183
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPreferenceChange newvalue: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mUserSelectedPinConfiguration:I

    .line 186
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->updatePinConfiguration()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V

    return-void
.end method

.method public bridge synthetic onScanningStateChanged(Z)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onScanningStateChanged(Z)V

    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const-string v0, "BluetoothBroadcastPinController"

    const-string/jumbo v1, "setFragment"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
