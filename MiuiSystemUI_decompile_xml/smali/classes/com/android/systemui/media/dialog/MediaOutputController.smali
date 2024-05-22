.class public final Lcom/android/systemui/media/dialog/MediaOutputController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;
.implements Landroid/media/INearbyMediaDevicesUpdateCallback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mActiveRadius:F

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mCachedMediaDevices:Ljava/util/List;

.field mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

.field final mCb:Landroid/media/session/MediaController$Callback;

.field public mColorButtonBackground:I

.field public mColorConnectedItemBackground:I

.field public mColorDialogBackground:I

.field public mColorItemBackground:I

.field public mColorItemContent:I

.field public mColorPositiveButtonText:I

.field public mColorSeekbarProgress:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentState:I

.field public final mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field final mGroupMediaDevices:Ljava/util/List;

.field public final mInactiveRadius:F

.field mIsRefreshing:Z

.field public final mItemMarginEndDefault:I

.field public final mItemMarginEndSelectable:I

.field public final mKeyGuardManager:Landroid/app/KeyguardManager;

.field public final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field public mMediaController:Landroid/media/session/MediaController;

.field public final mMediaDevicesLock:Ljava/lang/Object;

.field public final mMediaItemList:Ljava/util/List;

.field public final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

.field public final mNearbyDeviceInfoMap:Ljava/util/Map;

.field public final mNearbyMediaDevicesManager:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

.field mNeedRefresh:Z

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final mPackageName:Ljava/lang/String;

.field public final mPowerExemptionManager:Landroid/os/PowerExemptionManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MediaOutputController"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputController;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/animation/DialogLaunchAnimator;Ljava/util/Optional;Landroid/media/AudioManager;Landroid/os/PowerExemptionManager;Landroid/app/KeyguardManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevicesLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mGroupMediaDevices:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCachedMediaDevices:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyDeviceInfoMap:Ljava/util/Map;

    .line 38
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mIsRefreshing:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNeedRefresh:Z

    .line 43
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputController$1;

    .line 45
    invoke-direct {v0, p0}, Lcom/android/systemui/media/dialog/MediaOutputController$1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V

    .line 47
    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCb:Landroid/media/session/MediaController$Callback;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 56
    iput-object p4, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 58
    iput-object p5, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 60
    iput-object p6, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 62
    iput-object p9, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mAudioManager:Landroid/media/AudioManager;

    .line 64
    iput-object p10, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 66
    iput-object p11, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 68
    iput-object p12, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 70
    iput-object p13, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 72
    new-instance p3, Lcom/android/settingslib/media/InfoMediaManager;

    .line 74
    invoke-direct {p3, p1, p2, p4}, Lcom/android/settingslib/media/InfoMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 76
    new-instance p5, Lcom/android/settingslib/media/LocalMediaManager;

    .line 79
    invoke-direct {p5, p1, p4, p3, p2}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/media/InfoMediaManager;Ljava/lang/String;)V

    .line 81
    iput-object p5, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 84
    new-instance p3, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    .line 86
    invoke-direct {p3, p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    iput-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    .line 91
    iput-object p7, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 93
    const/4 p2, 0x0

    .line 95
    invoke-virtual {p8, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object p2

    .line 99
    check-cast p2, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    .line 100
    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyMediaDevicesManager:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    .line 102
    const p2, 0x7f060380    # @color/media_dialog_item_main_content '@color/material_dynamic_primary20'

    .line 104
    invoke-static {p2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 107
    move-result p2

    .line 110
    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 111
    const p2, 0x7f060381    # @color/media_dialog_seekbar_progress '@android:color/system_accent1_200'

    .line 113
    invoke-static {p2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 116
    move-result p2

    .line 119
    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorSeekbarProgress:I

    .line 120
    const p2, 0x7f06037d    # @color/media_dialog_button_background '@color/material_dynamic_primary40'

    .line 122
    invoke-static {p2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 125
    move-result p2

    .line 128
    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorButtonBackground:I

    .line 129
    const p2, 0x7f06037f    # @color/media_dialog_item_background '@color/material_dynamic_secondary95'

    .line 131
    invoke-static {p2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 134
    move-result p2

    .line 137
    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemBackground:I

    .line 138
    const p2, 0x7f06037e    # @color/media_dialog_connected_item_background '@color/material_dynamic_primary90'

    .line 140
    invoke-static {p2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 143
    move-result p2

    .line 146
    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorConnectedItemBackground:I

    .line 147
    const p2, 0x7f060382    # @color/media_dialog_solid_button_text '@color/material_dynamic_neutral95'

    .line 149
    invoke-static {p2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 152
    move-result p2

    .line 155
    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorPositiveButtonText:I

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 158
    move-result-object p2

    .line 161
    const p3, 0x7f0707a4    # @dimen/media_output_dialog_background_radius '16.0dp'

    .line 162
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 165
    move-result p2

    .line 168
    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mInactiveRadius:F

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 171
    move-result-object p2

    .line 174
    const p3, 0x7f0707a2    # @dimen/media_output_dialog_active_background_radius '30.0dp'

    .line 175
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 178
    move-result p2

    .line 181
    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mActiveRadius:F

    .line 182
    const p2, 0x7f06037c    # @color/media_dialog_background '@color/material_dynamic_neutral90'

    .line 184
    invoke-static {p2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 187
    move-result p2

    .line 190
    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorDialogBackground:I

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 193
    move-result-object p2

    .line 196
    const p3, 0x7f0707a5    # @dimen/media_output_dialog_default_margin_end '16.0dp'

    .line 197
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 200
    move-result p2

    .line 203
    float-to-int p2, p2

    .line 204
    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mItemMarginEndDefault:I

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 207
    move-result-object p1

    .line 210
    const p2, 0x7f0707ad    # @dimen/media_output_dialog_selectable_margin_end '80.0dp'

    .line 211
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 214
    move-result p1

    .line 217
    float-to-int p1, p1

    .line 218
    iput p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mItemMarginEndSelectable:I

    .line 219
    return-void
    .line 221
.end method

.method public static isActiveRemoteDevice(Lcom/android/settingslib/media/MediaDevice;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const-string p0, "MediaDevice"

    .line 6
    const-string v0, "Unable to get features. RouteInfo is empty"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance p0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getFeatures()Ljava/util/List;

    .line 19
    move-result-object p0

    .line 22
    :goto_0
    const-string v0, "android.media.route.feature.REMOTE_PLAYBACK"

    .line 23
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    const-string v0, "android.media.route.feature.REMOTE_AUDIO_PLAYBACK"

    .line 31
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    const-string v0, "android.media.route.feature.REMOTE_VIDEO_PLAYBACK"

    .line 39
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    const-string v0, "android.media.route.feature.REMOTE_GROUP_PLAYBACK"

    .line 47
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 49
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    goto :goto_1

    .line 55
    :cond_1
    const/4 p0, 0x0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 58
    :goto_2
    return p0
    .line 59
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final attachRangeInfo(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/settingslib/media/MediaDevice;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyDeviceInfoMap:Ljava/util/Map;

    .line 18
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyDeviceInfoMap:Ljava/util/Map;

    .line 32
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 37
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/Integer;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v1

    .line 49
    iput v1, v0, Lcom/android/settingslib/media/MediaDevice;->mRangeZone:I

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    return-void
    .line 53
.end method

.method public final buildMediaItems(Ljava/util/List;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevicesLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 5
    invoke-virtual {v1}, Lcom/android/settingslib/media/LocalMediaManager;->isPreferenceRouteListingExist()Z

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->attachRangeInfo(Ljava/util/List;)V

    .line 13
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    .line 16
    move-result-object v1

    .line 19
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mAudioManager:Landroid/media/AudioManager;

    .line 23
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    .line 25
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    move v1, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v1, v2

    .line 35
    :goto_0
    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->isCurrentConnectedDeviceRemote()Z

    .line 38
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    move v1, v3

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v1, v2

    .line 46
    :goto_1
    const/4 v4, 0x0

    .line 47
    if-eqz v1, :cond_3

    .line 48
    move-object v5, v4

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    .line 52
    move-result-object v5

    .line 55
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 56
    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 60
    move-result v6

    .line 63
    if-eqz v6, :cond_6

    .line 64
    if-nez v5, :cond_5

    .line 66
    sget-boolean v2, Lcom/android/systemui/media/dialog/MediaOutputController;->DEBUG:Z

    .line 68
    if-eqz v2, :cond_4

    .line 70
    const-string v2, "MediaOutputController"

    .line 72
    const-string v3, "No connected media device or muting expected device exist."

    .line 74
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_4
    invoke-virtual {p0, v4, p1, v1}, Lcom/android/systemui/media/dialog/MediaOutputController;->categorizeMediaItems(Lcom/android/settingslib/media/MediaDevice;Ljava/util/List;Z)V

    .line 79
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :cond_5
    invoke-virtual {p0, v5, p1, v2}, Lcom/android/systemui/media/dialog/MediaOutputController;->categorizeMediaItems(Lcom/android/settingslib/media/MediaDevice;Ljava/util/List;Z)V

    .line 84
    monitor-exit v0

    .line 87
    return-void

    .line 88
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 89
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v4, Ljava/util/HashMap;

    .line 94
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 96
    iget-object v5, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 99
    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 101
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object v5

    .line 106
    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result v6

    .line 110
    if-eqz v6, :cond_a

    .line 111
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object v6

    .line 116
    check-cast v6, Lcom/android/systemui/media/dialog/MediaItem;

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object v7

    .line 122
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v8

    .line 126
    if-eqz v8, :cond_9

    .line 127
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v8

    .line 132
    check-cast v8, Lcom/android/settingslib/media/MediaDevice;

    .line 133
    iget-object v9, v6, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    .line 135
    invoke-virtual {v9}, Ljava/util/Optional;->isPresent()Z

    .line 137
    move-result v9

    .line 140
    if-eqz v9, :cond_8

    .line 141
    iget-object v9, v6, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    .line 143
    invoke-virtual {v9}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 145
    move-result-object v9

    .line 148
    check-cast v9, Lcom/android/settingslib/media/MediaDevice;

    .line 149
    invoke-virtual {v9}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 151
    move-result-object v9

    .line 154
    invoke-virtual {v8}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 155
    move-result-object v10

    .line 158
    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 159
    move-result v9

    .line 162
    if-eqz v9, :cond_8

    .line 163
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_9
    iget v7, v6, Lcom/android/systemui/media/dialog/MediaItem;->mMediaItemType:I

    .line 168
    if-ne v7, v3, :cond_7

    .line 170
    iget-object v7, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 172
    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 174
    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    .line 176
    move-result v7

    .line 179
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    move-result-object v7

    .line 183
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    goto :goto_3

    .line 187
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 188
    move-result v5

    .line 191
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 192
    move-result v6

    .line 195
    if-eq v5, v6, :cond_b

    .line 196
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 198
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 201
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 204
    move-result-object p1

    .line 207
    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda2;

    .line 208
    invoke-direct {v1, v2}, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda2;-><init>(I)V

    .line 210
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 213
    move-result-object p1

    .line 216
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 217
    move-result-object v1

    .line 220
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 221
    move-result-object p1

    .line 224
    check-cast p1, Ljava/util/List;

    .line 225
    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda3;

    .line 227
    invoke-direct {v1, p1}, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    .line 229
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->isCurrentConnectedDeviceRemote()Z

    .line 235
    move-result v1

    .line 238
    if-nez v1, :cond_c

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectedMediaDevice()Ljava/util/List;

    .line 241
    move-result-object v1

    .line 244
    check-cast v1, Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 247
    move-result v1

    .line 250
    if-ne v1, v3, :cond_c

    .line 251
    new-instance v1, Lcom/android/systemui/media/dialog/MediaItem;

    .line 253
    invoke-direct {v1}, Lcom/android/systemui/media/dialog/MediaItem;-><init>()V

    .line 255
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 261
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 263
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 265
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 268
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 270
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 272
    monitor-exit v0

    .line 275
    return-void

    .line 276
    :catchall_0
    move-exception p0

    .line 277
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    throw p0
    .line 279
.end method

.method public final categorizeMediaItems(Lcom/android/settingslib/media/MediaDevice;Ljava/util/List;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevicesLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectedMediaDevice()Ljava/util/List;

    .line 10
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 14
    move-result-object v2

    .line 17
    new-instance v3, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda2;

    .line 18
    const/4 v4, 0x1

    .line 20
    invoke-direct {v3, v4}, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda2;-><init>(I)V

    .line 21
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 24
    move-result-object v2

    .line 27
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 28
    move-result-object v3

    .line 31
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/Set;

    .line 36
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 43
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p1

    .line 50
    const/4 p2, 0x0

    .line 51
    move v3, p2

    .line 52
    move v5, v3

    .line 53
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v6

    .line 57
    if-eqz v6, :cond_7

    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v6

    .line 63
    check-cast v6, Lcom/android/settingslib/media/MediaDevice;

    .line 64
    if-eqz p3, :cond_1

    .line 66
    invoke-virtual {v6}, Lcom/android/settingslib/media/MediaDevice;->isMutingExpectedDevice()Z

    .line 68
    move-result v7

    .line 71
    if-eqz v7, :cond_1

    .line 72
    new-instance v7, Lcom/android/systemui/media/dialog/MediaItem;

    .line 74
    invoke-direct {v7, v6}, Lcom/android/systemui/media/dialog/MediaItem;-><init>(Lcom/android/settingslib/media/MediaDevice;)V

    .line 76
    invoke-virtual {v1, p2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    goto :goto_0

    .line 82
    :cond_1
    if-nez p3, :cond_2

    .line 83
    invoke-virtual {v6}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 85
    move-result-object v7

    .line 88
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 89
    move-result v7

    .line 92
    if-eqz v7, :cond_2

    .line 93
    new-instance v7, Lcom/android/systemui/media/dialog/MediaItem;

    .line 95
    invoke-direct {v7, v6}, Lcom/android/systemui/media/dialog/MediaItem;-><init>(Lcom/android/settingslib/media/MediaDevice;)V

    .line 97
    invoke-virtual {v1, p2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100
    goto :goto_0

    .line 103
    :cond_2
    iget-object v7, v6, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    .line 104
    if-eqz v7, :cond_3

    .line 106
    invoke-virtual {v7}, Landroid/media/RouteListingPreference$Item;->getFlags()I

    .line 108
    move-result v7

    .line 111
    and-int/lit8 v7, v7, 0x4

    .line 112
    if-eqz v7, :cond_3

    .line 114
    move v7, v4

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    move v7, p2

    .line 118
    :goto_1
    if-eqz v7, :cond_4

    .line 119
    if-nez v3, :cond_4

    .line 121
    iget-object v3, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 123
    const v7, 0x7f130703    # @string/media_output_group_title_suggested_device 'Suggested Devices'

    .line 125
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 128
    move-result-object v3

    .line 131
    new-instance v7, Lcom/android/systemui/media/dialog/MediaItem;

    .line 132
    invoke-direct {v7, v3}, Lcom/android/systemui/media/dialog/MediaItem;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    move v3, v4

    .line 140
    goto :goto_3

    .line 141
    :cond_4
    iget-object v7, v6, Lcom/android/settingslib/media/MediaDevice;->mItem:Landroid/media/RouteListingPreference$Item;

    .line 142
    if-eqz v7, :cond_5

    .line 144
    invoke-virtual {v7}, Landroid/media/RouteListingPreference$Item;->getFlags()I

    .line 146
    move-result v7

    .line 149
    and-int/lit8 v7, v7, 0x4

    .line 150
    if-eqz v7, :cond_5

    .line 152
    move v7, v4

    .line 154
    goto :goto_2

    .line 155
    :cond_5
    move v7, p2

    .line 156
    :goto_2
    if-nez v7, :cond_6

    .line 157
    if-nez v5, :cond_6

    .line 159
    iget-object v5, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 161
    const v7, 0x7f130702    # @string/media_output_group_title_speakers_and_displays 'Speakers & Displays'

    .line 163
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 166
    move-result-object v5

    .line 169
    new-instance v7, Lcom/android/systemui/media/dialog/MediaItem;

    .line 170
    invoke-direct {v7, v5}, Lcom/android/systemui/media/dialog/MediaItem;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    move v5, v4

    .line 178
    :cond_6
    :goto_3
    new-instance v7, Lcom/android/systemui/media/dialog/MediaItem;

    .line 179
    invoke-direct {v7, v6}, Lcom/android/systemui/media/dialog/MediaItem;-><init>(Lcom/android/settingslib/media/MediaDevice;)V

    .line 181
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    goto/16 :goto_0

    .line 187
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->isCurrentConnectedDeviceRemote()Z

    .line 189
    move-result p1

    .line 192
    if-nez p1, :cond_8

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectedMediaDevice()Ljava/util/List;

    .line 195
    move-result-object p1

    .line 198
    check-cast p1, Ljava/util/ArrayList;

    .line 199
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 201
    move-result p1

    .line 204
    if-ne p1, v4, :cond_8

    .line 205
    new-instance p1, Lcom/android/systemui/media/dialog/MediaItem;

    .line 207
    invoke-direct {p1}, Lcom/android/systemui/media/dialog/MediaItem;-><init>()V

    .line 209
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 215
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 217
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 219
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 222
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 224
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 226
    monitor-exit v0

    .line 229
    return-void

    .line 230
    :catchall_0
    move-exception p0

    .line 231
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    throw p0
    .line 233
.end method

.method public final getAppSourceName()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object v0

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 18
    const-wide/16 v3, 0x0

    .line 20
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 22
    move-result-object v3

    .line 25
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 26
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :catch_0
    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 32
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 37
    const v0, 0x7f1306fc    # @string/media_output_dialog_unknown_launch_app_name 'Unknown app'

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    :goto_0
    check-cast p0, Ljava/lang/String;

    .line 46
    return-object p0
    .line 48
.end method

.method public final getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getHeaderIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 18
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v1

    .line 29
    const v2, 0x7f0707a9    # @dimen/media_output_dialog_icon_corner_radius '16.0dp'

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v1

    .line 36
    int-to-float v1, v1

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 38
    move-result v2

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 42
    move-result v3

    .line 45
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 46
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 48
    move-result-object v2

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object p0

    .line 55
    new-instance v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    .line 56
    invoke-direct {v3, p0, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 58
    iget-object p0, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 61
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 67
    invoke-virtual {v3, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 70
    new-instance p0, Landroid/graphics/Canvas;

    .line 73
    invoke-direct {p0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    .line 78
    move-result v1

    .line 81
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    .line 82
    move-result v4

    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-virtual {v3, v5, v5, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    invoke-virtual {v3, p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    sget-object p0, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    new-instance p0, Landroidx/core/graphics/drawable/IconCompat;

    .line 98
    invoke-direct {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 100
    iput-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 103
    return-object p0

    .line 105
    :cond_1
    sget-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputController;->DEBUG:Z

    .line 106
    if-eqz v0, :cond_2

    .line 108
    const-string v0, "MediaOutputController"

    .line 110
    const-string v2, "Media meta data does not contain icon information"

    .line 112
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    move-result v0

    .line 122
    if-eqz v0, :cond_3

    .line 123
    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 126
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 128
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 130
    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object v0

    .line 137
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result v2

    .line 141
    if-eqz v2, :cond_6

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object v2

    .line 147
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 148
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 150
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 152
    move-result-object v3

    .line 155
    invoke-virtual {v3}, Landroid/app/Notification;->isMediaNotification()Z

    .line 156
    move-result v4

    .line 159
    if-eqz v4, :cond_4

    .line 160
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 162
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 164
    iget-object v4, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 166
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 168
    move-result v2

    .line 171
    if-eqz v2, :cond_4

    .line 172
    invoke-virtual {v3}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 174
    move-result-object p0

    .line 177
    if-nez p0, :cond_5

    .line 178
    goto :goto_0

    .line 180
    :cond_5
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    .line 181
    move-result-object v1

    .line 184
    :cond_6
    :goto_0
    return-object v1
    .line 185
.end method

.method public final getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    .line 16
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 21
    const v0, 0x7f13031a    # @string/controls_media_title 'Media'

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method

.method public final getNotificationSmallIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 12
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 16
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 23
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 34
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 36
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 38
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/app/Notification;->isMediaNotification()Z

    .line 42
    move-result v4

    .line 45
    if-eqz v4, :cond_1

    .line 46
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 48
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 50
    iget-object v4, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 52
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 54
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 60
    move-result-object p0

    .line 63
    if-nez p0, :cond_2

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    .line 67
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_3
    :goto_0
    return-object v1
    .line 72
.end method

.method public final getSelectedMediaDevice()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getSelectedMediaDevice()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final hasAdjustVolumeUserRestriction()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 4
    move-result v1

    .line 7
    const-string v2, "no_adjust_volume"

    .line 8
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 18
    const-class v0, Landroid/os/UserManager;

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Landroid/os/UserManager;

    .line 26
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 28
    move-result v0

    .line 31
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {p0, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 36
    move-result p0

    .line 39
    return p0
    .line 40
.end method

.method public final isAnyDeviceTransferring()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevicesLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 5
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/systemui/media/dialog/MediaItem;

    .line 23
    iget-object v2, v1, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    .line 25
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    iget-object v1, v1, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    .line 33
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/settingslib/media/MediaDevice;

    .line 39
    iget v1, v1, Lcom/android/settingslib/media/MediaDevice;->mState:I

    .line 41
    const/4 v2, 0x1

    .line 43
    if-ne v1, v2, :cond_0

    .line 44
    monitor-exit v0

    .line 46
    return v2

    .line 47
    :cond_1
    monitor-exit v0

    .line 48
    const/4 p0, 0x0

    .line 49
    return p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
    .line 53
.end method

.method public final isCurrentConnectedDeviceRemote()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-static {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->isActiveRemoteDevice(Lcom/android/settingslib/media/MediaDevice;)Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final isPlaying()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 8
    move-result-object p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    return v0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    .line 15
    move-result p0

    .line 18
    const/4 v1, 0x3

    .line 19
    if-ne p0, v1, :cond_2

    .line 20
    const/4 v0, 0x1

    .line 22
    :cond_2
    return v0
    .line 23
.end method

.method public final launchLeBroadcastNotifyDialog(Lcom/android/systemui/media/dialog/MediaOutputController$BroadcastNotifyDialog;Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda4;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result p0

    .line 12
    const p1, 0x7f1306e6    # @string/media_output_broadcast 'Broadcast'

    .line 13
    const/4 v1, 0x0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    const/4 p2, 0x1

    .line 19
    if-eq p0, p2, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 23
    const p0, 0x7f1306f0    # @string/media_output_broadcasting_message 'To listen to your broadcast, people nearby with compatible Bluetooth devices can scan your QR code o ...'

    .line 26
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 29
    const p0, 0x104000a    # @android:string/ok

    .line 32
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 35
    goto :goto_0

    .line 38
    :cond_1
    const p0, 0x7f130700    # @string/media_output_first_broadcast_title 'How broadcasting works'

    .line 39
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 42
    const p0, 0x7f130701    # @string/media_output_first_notify_broadcast_message 'People near you with compatible Bluetooth devices can listen to the media you're broadcasting'

    .line 45
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 48
    const/high16 p0, 0x1040000    # @android:string/cancel

    .line 51
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 59
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 63
    move-result-object p1

    .line 66
    const/16 p2, 0x7d9

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 69
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 72
    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$maybeShowDialog$1;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 78
    return-void
    .line 81
.end method

.method public final onDeviceAttributesChanged()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    .line 2
    check-cast p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    .line 6
    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda1;

    .line 8
    const/4 v2, 0x2

    .line 10
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
    .line 17
.end method

.method public final onDeviceListUpdate(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_1

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mIsRefreshing:Z

    .line 13
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevicesLock:Ljava/lang/Object;

    .line 18
    monitor-enter v0

    .line 20
    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNeedRefresh:Z

    .line 21
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCachedMediaDevices:Ljava/util/List;

    .line 23
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 27
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCachedMediaDevices:Ljava/util/List;

    .line 30
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    monitor-exit v0

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->buildMediaItems(Ljava/util/List;)V

    .line 42
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    .line 45
    check-cast p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 47
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda1;

    .line 51
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    :goto_1
    return-void
    .line 59
.end method

.method public final onDevicesUpdated(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyDeviceInfoMap:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/media/NearbyDevice;

    .line 23
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyDeviceInfoMap:Ljava/util/Map;

    .line 25
    invoke-virtual {v0}, Landroid/media/NearbyDevice;->getMediaRoute2Id()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 30
    invoke-virtual {v0}, Landroid/media/NearbyDevice;->getRangeZone()I

    .line 31
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v0

    .line 38
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyMediaDevicesManager:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    .line 45
    invoke-virtual {p1, p0}, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->unregisterNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V

    .line 47
    return-void
    .line 50
.end method

.method public final onRequestFailed(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    .line 2
    check-cast v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    .line 6
    new-instance v2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda1;

    .line 8
    const/4 v3, 0x2

    .line 10
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    .line 11
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 21
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    sget-boolean p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->DEBUG:Z

    .line 26
    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "logRequestFailed - "

    .line 35
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    const-string v2, "MediaOutputMetricLogger"

    .line 47
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 52
    if-nez p0, :cond_1

    .line 54
    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 56
    if-nez p0, :cond_1

    .line 58
    goto :goto_2

    .line 60
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->updateLoggingMediaItemCount(Ljava/util/List;)V

    .line 61
    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 64
    invoke-static {p0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;)I

    .line 66
    move-result v4

    .line 69
    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 70
    invoke-static {p0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;)I

    .line 72
    move-result v5

    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 p0, 0x1

    .line 77
    if-eq p1, p0, :cond_4

    .line 78
    const/4 p0, 0x3

    .line 80
    if-eq p1, v3, :cond_3

    .line 81
    const/4 v3, 0x4

    .line 83
    if-eq p1, p0, :cond_4

    .line 84
    if-eq p1, v3, :cond_2

    .line 86
    const/4 v3, 0x0

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const/4 v3, 0x5

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    move v7, p0

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    :goto_0
    move v7, v3

    .line 94
    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingPackageName()Ljava/lang/String;

    .line 95
    move-result-object v8

    .line 98
    iget v9, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mWiredDeviceCount:I

    .line 99
    iget v10, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mConnectedBluetoothDeviceCount:I

    .line 101
    iget v11, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mRemoteDeviceCount:I

    .line 103
    invoke-static/range {v4 .. v11}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIILjava/lang/String;III)V

    .line 105
    :goto_2
    return-void
    .line 108
.end method

.method public final onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    .line 2
    check-cast v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    .line 6
    new-instance v2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda1;

    .line 8
    const/4 v3, 0x2

    .line 10
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    .line 11
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 25
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    sget-boolean p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->DEBUG:Z

    .line 30
    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    const-string v2, "logOutputSuccess - selected device: "

    .line 39
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    const-string p1, "MediaOutputMetricLogger"

    .line 51
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 56
    if-nez p0, :cond_1

    .line 58
    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 60
    if-nez p0, :cond_1

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->updateLoggingMediaItemCount(Ljava/util/List;)V

    .line 65
    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 68
    invoke-static {p0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;)I

    .line 70
    move-result v1

    .line 73
    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 74
    invoke-static {p0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;)I

    .line 76
    move-result v2

    .line 79
    const/4 v3, 0x1

    .line 80
    const/4 v4, 0x1

    .line 81
    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingPackageName()Ljava/lang/String;

    .line 82
    move-result-object v5

    .line 85
    iget v6, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mWiredDeviceCount:I

    .line 86
    iget v7, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mConnectedBluetoothDeviceCount:I

    .line 88
    iget v8, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mRemoteDeviceCount:I

    .line 90
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIILjava/lang/String;III)V

    .line 92
    :goto_0
    return-void
    .line 95
.end method

.method public final setBroadcastCode(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 4
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 6
    if-nez p0, :cond_0

    .line 8
    const-string p0, "MediaOutputController"

    .line 10
    const-string/jumbo p1, "setBroadcastCode: LE Audio Broadcast is null"

    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void

    .line 18
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 21
    move-result-object p1

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setBroadcastCode(Z[B)V

    .line 26
    return-void
    .line 29
.end method

.method public final stopBluetoothLeBroadcast()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 4
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 6
    if-nez p0, :cond_0

    .line 8
    const-string p0, "MediaOutputController"

    .line 10
    const-string v0, "The broadcast profile is null"

    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    iget v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastId:I

    .line 19
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 21
    const-string v2, "LocalBluetoothLeBroadcast"

    .line 23
    if-nez v1, :cond_1

    .line 25
    const-string p0, "The BluetoothLeBroadcast is null when stopping the broadcast."

    .line 27
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    goto :goto_0

    .line 32
    :cond_1
    const-string/jumbo v1, "stopBroadcast()"

    .line 33
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 39
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothLeBroadcast;->stopBroadcast(I)V

    .line 41
    :goto_0
    const/4 p0, 0x1

    .line 44
    return p0
    .line 45
.end method

.method public final tryToLaunchInAppRoutingIntent(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 2
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getLinkedItemComponentName()Landroid/content/ComponentName;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {v1, p1}, Lcom/android/systemui/animation/DialogLaunchAnimator;->createActivityLaunchController$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/view/View;)Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;

    .line 15
    move-result-object p1

    .line 18
    new-instance v1, Landroid/content/Intent;

    .line 19
    const-string v2, "android.media.action.TRANSFER_MEDIA"

    .line 21
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 26
    const-string v0, "android.media.extra.ROUTE_ID"

    .line 29
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const/high16 p2, 0x10000000

    .line 34
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    .line 39
    check-cast p2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 41
    iget-object p2, p2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 43
    invoke-virtual {p2}, Lcom/android/systemui/broadcast/BroadcastSender;->closeSystemDialogs()V

    .line 45
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 48
    const/4 p2, 0x1

    .line 50
    invoke-interface {p0, v1, p2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 51
    :cond_0
    return-void
    .line 54
.end method

.method public final tryToLaunchMediaApplication(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {v0, p1}, Lcom/android/systemui/animation/DialogLaunchAnimator;->createActivityLaunchController$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/view/View;)Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;

    .line 7
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    move-result-object v0

    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    const/high16 v1, 0x10000000

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    .line 40
    check-cast v1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 42
    iget-object v1, v1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 44
    invoke-virtual {v1}, Lcom/android/systemui/broadcast/BroadcastSender;->closeSystemDialogs()V

    .line 46
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 49
    const/4 v1, 0x1

    .line 51
    invoke-interface {p0, v0, v1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 52
    :cond_1
    return-void
    .line 55
.end method
