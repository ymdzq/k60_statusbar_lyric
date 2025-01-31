.class public Lcom/android/settings/notification/MediaVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "MediaVolumePreferenceController.java"


# static fields
.field private static final ACTION_LAUNCH_BROADCAST_DIALOG:Ljava/lang/String; = "android.settings.MEDIA_BROADCAST_DIALOG"

.field private static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"

.field private static final TAG:Ljava/lang/String; = "MediaVolumePreCtrl"


# instance fields
.field private mMediaDevice:Lcom/android/settingslib/media/MediaDevice;

.field private mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "media_volume"

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getBroadcastIcon(Landroid/content/Context;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 154
    sget p0, Lcom/android/settingslib/R$drawable;->settings_input_antenna:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 157
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 158
    invoke-static {p0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getUri()Landroid/net/Uri;
    .locals 0

    .line 171
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_MEDIA_URI:Landroid/net/Uri;

    return-object p0
.end method

.method private getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/media/MediaOutputIndicatorWorker;

    iput-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    return-object p0
.end method

.method private isConnectedBLEDevice()Z
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "MediaVolumePreCtrl"

    const-string v0, "The Worker is null"

    .line 102
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mMediaDevice:Lcom/android/settingslib/media/MediaDevice;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->isBLEDevice()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public getAudioStream()I
    .locals 0

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 59
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_media_volume:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    .line 176
    const-class p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;

    return-object p0
.end method

.method public getMuteIcon()I
    .locals 0

    .line 91
    sget p0, Lcom/android/settings/R$drawable;->ic_media_stream_off:I

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "media_volume"

    return-object p0
.end method

.method public getSliceEndItem(Landroid/content/Context;)Landroidx/slice/builders/SliceAction;
    .locals 6

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->isSupportEndItem()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MediaVolumePreCtrl"

    if-nez v0, :cond_0

    const-string p0, "The slice doesn\'t support end item"

    .line 115
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 119
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->isDeviceBroadcasting()Z

    move-result v3

    const/high16 v4, 0xc000000

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const-string v1, "com.android.systemui"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_BROADCAST_DIALOG"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getActiveLocalMediaController()Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package_name"

    .line 124
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-static {p1, v5, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1

    .line 130
    :cond_1
    iget-object v3, p0, Lcom/android/settings/notification/MediaVolumePreferenceController;->mMediaDevice:Lcom/android/settingslib/media/MediaDevice;

    check-cast v3, Lcom/android/settingslib/media/BluetoothMediaDevice;

    .line 131
    invoke-virtual {v3}, Lcom/android/settingslib/media/BluetoothMediaDevice;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_2

    const-string p0, "The bluetooth device is null"

    .line 133
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const-string v1, "android.settings.MEDIA_BROADCAST_DIALOG"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 138
    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "app_label"

    .line 137
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "device_address"

    .line 140
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 142
    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getActiveLocalMediaController()Landroid/media/session/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v5

    :goto_0
    const-string/jumbo v2, "media_streaming"

    .line 141
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    invoke-static {p1, v5, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 148
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getBroadcastIcon(Landroid/content/Context;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, v5, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isPublicSlice()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "media_volume"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method isSupportEndItem()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->isBroadcastSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->isDeviceBroadcasting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->isConnectedBLEDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public useDynamicSliceSummary()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
