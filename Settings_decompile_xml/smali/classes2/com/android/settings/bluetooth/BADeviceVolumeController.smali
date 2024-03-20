.class public Lcom/android/settings/bluetooth/BADeviceVolumeController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "BADeviceVolumeController.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field public static final BLUETOOTH_ADV_AUDIO_MASK_PROP:Ljava/lang/String; = "persist.vendor.service.bt.adv_audio_mask"

.field public static final BLUETOOTH_VCP_FOR_BROADCAST_PROP:Ljava/lang/String; = "persist.vendor.service.bt.vcpForBroadcast"

.field public static final BROADCAST_AUDIO_MASK:I = 0x2

.field private static final KEY_BA_DEVICE_VOLUME:Ljava/lang/String; = "ba_device_volume"

.field private static final TAG:Ljava/lang/String; = "BADeviceVolumeController"

.field private static final VCACHED_DEVICE_CLASS:Ljava/lang/String; = "com.android.settingslib.bluetooth.VendorCachedBluetoothDevice"


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

.field private mIsVcpForBroadcastSupported:Z

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field protected mPreference:Lcom/android/settings/bluetooth/BADeviceVolumePreference;

.field protected mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mVCachedDeviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mVcpProfile:Lcom/android/settingslib/bluetooth/VcpProfile;

.field private mVendorCachedDevice:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "ba_device_volume"

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVcpProfile:Lcom/android/settingslib/bluetooth/VcpProfile;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mIsVcpForBroadcastSupported:Z

    .line 76
    iput-object p1, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVCachedDeviceClass:Ljava/lang/Class;

    .line 77
    iput-object p1, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVendorCachedDevice:Ljava/lang/Object;

    .line 84
    invoke-static {}, Landroid/sysprop/BluetoothProperties;->isProfileBapBroadcastSourceEnabled()Ljava/util/Optional;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v2, 0x1

    const-string v3, "BADeviceVolumeController"

    if-nez p1, :cond_1

    .line 85
    invoke-static {}, Landroid/sysprop/BluetoothProperties;->isProfileBapBroadcastAssistEnabled()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Broadcast is supported"

    .line 86
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    :goto_1
    const-string/jumbo v1, "persist.vendor.service.bt.adv_audio_mask"

    .line 89
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x2

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2

    const-string/jumbo v1, "persist.vendor.service.bt.vcpForBroadcast"

    .line 92
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mIsVcpForBroadcastSupported:Z

    if-eqz p1, :cond_3

    .line 94
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mIsVcpForBroadcastSupported:Z

    .line 96
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsVcpForBroadcastSupported: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mIsVcpForBroadcastSupported:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private enableSlider()Z
    .locals 6

    .line 265
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVCachedDeviceClass:Ljava/lang/Class;

    const-string v1, "enableSlider: false"

    const/4 v2, 0x0

    const-string v3, "BADeviceVolumeController"

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVendorCachedDevice:Ljava/lang/Object;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v4, "isBroadcastAudioSynced"

    new-array v5, v2, [Ljava/lang/Class;

    .line 272
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 273
    iget-object p0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVendorCachedDevice:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableSlider: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 266
    :cond_1
    :goto_0
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BADeviceVolumeController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BADeviceVolumePreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mPreference:Lcom/android/settings/bluetooth/BADeviceVolumePreference;

    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 125
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mPreference:Lcom/android/settings/bluetooth/BADeviceVolumePreference;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BADeviceVolumeController;->refresh()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 129
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    const-string v0, "BADeviceVolumeController"

    const-string v1, "getAvailabilityStatus"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mIsVcpForBroadcastSupported:Z

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

.method public getMax()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mPreference:Lcom/android/settings/bluetooth/BADeviceVolumePreference;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getMax()I

    move-result p0

    return p0

    .line 248
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    .line 249
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getMin()I
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mPreference:Lcom/android/settings/bluetooth/BADeviceVolumePreference;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getMin()I

    move-result p0

    return p0

    .line 259
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    .line 260
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "ba_device_volume"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public getSliderPosition()I
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mPreference:Lcom/android/settings/bluetooth/BADeviceVolumePreference;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result p0

    return p0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVcpProfile:Lcom/android/settingslib/bluetooth/VcpProfile;

    if-eqz v0, :cond_1

    .line 226
    iget-object p0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/VcpProfile;->getAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    const-string p1, "BADeviceVolumeController"

    const-string v0, "Init"

    .line 153
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mIsVcpForBroadcastSupported:Z

    if-eqz p1, :cond_0

    .line 155
    iput-object p3, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 156
    iput-object p2, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 157
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 158
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getVcpProfile()Lcom/android/settingslib/bluetooth/VcpProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVcpProfile:Lcom/android/settingslib/bluetooth/VcpProfile;

    .line 159
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mAudioManager:Landroid/media/AudioManager;

    :try_start_0
    const-string p1, "com.android.settingslib.bluetooth.VendorCachedBluetoothDevice"

    .line 162
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVCachedDeviceClass:Ljava/lang/Class;

    const/4 p2, 0x2

    new-array p3, p2, [Ljava/lang/Class;

    .line 164
    const-class v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 165
    const-class v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const/4 v2, 0x1

    aput-object v0, p3, v2

    const-string v0, "getVendorCachedBluetoothDevice"

    .line 166
    invoke-virtual {p1, v0, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    .line 168
    iget-object p3, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    aput-object p3, p2, v1

    iget-object p3, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    aput-object p3, p2, v2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVendorCachedDevice:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 174
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    :cond_0
    return-void
.end method

.method public isPublicSlice()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BADeviceVolumeController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ba_device_volume"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BADeviceVolumeController;->refresh()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "BADeviceVolumeController"

    const-string/jumbo v1, "onPause"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "BADeviceVolumeController"

    const-string/jumbo v1, "onResume"

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BADeviceVolumeController;->refresh()V

    :cond_0
    return-void
.end method

.method protected refresh()V
    .locals 8

    const-string/jumbo v0, "refresh"

    const-string v1, "BADeviceVolumeController"

    .line 179
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mIsVcpForBroadcastSupported:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVcpProfile:Lcom/android/settingslib/bluetooth/VcpProfile;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BADeviceVolumeController;->enableSlider()Z

    move-result v0

    .line 185
    iget-object v2, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 186
    iget-object v3, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/16 v4, 0xb

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_2

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v5

    .line 189
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VCP refresh showSlider: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " inCall: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v4, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVcpProfile:Lcom/android/settingslib/bluetooth/VcpProfile;

    invoke-virtual {v4, v2}, Lcom/android/settingslib/bluetooth/VcpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    iget-object v4, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVcpProfile:Lcom/android/settingslib/bluetooth/VcpProfile;

    .line 191
    invoke-virtual {v4, v2}, Lcom/android/settingslib/bluetooth/VcpProfile;->getConnectionMode(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    and-int/2addr v4, v7

    if-eqz v4, :cond_5

    const-string v4, "VCP is connected for broadcast "

    .line 192
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mPreference:Lcom/android/settings/bluetooth/BADeviceVolumePreference;

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mPreference:Lcom/android/settings/bluetooth/BADeviceVolumePreference;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVcpProfile:Lcom/android/settingslib/bluetooth/VcpProfile;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/VcpProfile;->getAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 203
    iget-object p0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mPreference:Lcom/android/settings/bluetooth/BADeviceVolumePreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    goto :goto_3

    .line 195
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mPreference:Lcom/android/settings/bluetooth/BADeviceVolumePreference;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 196
    iget-object p0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mPreference:Lcom/android/settings/bluetooth/BADeviceVolumePreference;

    invoke-virtual {p0, v6}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void

    .line 206
    :cond_5
    iget-object p0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mPreference:Lcom/android/settings/bluetooth/BADeviceVolumePreference;

    invoke-virtual {p0, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    :goto_4
    const-string p0, "VCP for broadcast is not supported"

    .line 181
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSliderPosition(I)Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mPreference:Lcom/android/settings/bluetooth/BADeviceVolumePreference;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mVcpProfile:Lcom/android/settingslib/bluetooth/VcpProfile;

    if-eqz v0, :cond_1

    .line 237
    iget-object p0, p0, Lcom/android/settings/bluetooth/BADeviceVolumeController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/bluetooth/VcpProfile;->setAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
