.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static final STREAMS:Landroid/util/ArrayMap;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAudio:Landroid/media/AudioManager;

.field public final mAudioService:Landroid/media/IAudioService;

.field public final mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

.field public final mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field public final mContext:Landroid/content/Context;

.field public mDeviceInteractive:Z

.field public final mHasVibrator:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastToggledRingerOn:J

.field public final mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

.field public final mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

.field public final mNoMan:Landroid/app/NotificationManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

.field public final mRouter2Manager:Landroid/media/MediaRouter2Manager;

.field public mShowA11yStream:Z

.field public mShowSafetyWarning:Z

.field public mShowVolumeDialog:Z

.field public final mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

.field public mUserActivityListener:Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

.field public mVolumePolicy:Landroid/media/VolumePolicy;

.field public final mWakefullnessLifecycleObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 8
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 10
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 12
    const/4 v1, 0x4

    .line 15
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 16
    move-result-object v0

    .line 19
    const/16 v2, 0xd

    .line 20
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 22
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 26
    move-result-object v0

    .line 29
    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    .line 32
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 34
    sput-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->STREAMS:Landroid/util/ArrayMap;

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v1

    .line 42
    const v2, 0x7f130b2a    # @string/stream_alarm 'Alarm'

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const/4 v1, 0x6

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v1

    .line 57
    const v2, 0x7f130b2c    # @string/stream_bluetooth_sco 'Bluetooth'

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v2

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const/16 v1, 0x8

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v1

    .line 73
    const v2, 0x7f130b2d    # @string/stream_dtmf 'Dual multi tone frequency'

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/4 v1, 0x3

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v1

    .line 88
    const v2, 0x7f130b2e    # @string/stream_music 'Media'

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const/16 v1, 0xa

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v1

    .line 104
    const v2, 0x7f130b29    # @string/stream_accessibility 'Accessibility'

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/4 v1, 0x5

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v1

    .line 119
    const v2, 0x7f130b2f    # @string/stream_notification 'Notification'

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v2

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/4 v1, 0x2

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v1

    .line 134
    const v2, 0x7f130b30    # @string/stream_ring 'Ring'

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v2

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/4 v1, 0x1

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v1

    .line 149
    const v2, 0x7f130b31    # @string/stream_system 'System'

    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v2

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/4 v1, 0x7

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    move-result-object v1

    .line 164
    const v2, 0x7f130b32    # @string/stream_system_enforced 'System enforced'

    .line 165
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    move-result-object v2

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/16 v1, 0x9

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    move-result-object v1

    .line 180
    const v2, 0x7f130b33    # @string/stream_tts 'Transmitted Through Speaker'

    .line 181
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object v2

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/4 v1, 0x0

    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object v1

    .line 195
    const v2, 0x7f130b34    # @string/stream_voice_call 'Call'

    .line 196
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    move-result-object v2

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/16 v1, 0xb

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    move-result-object v1

    .line 211
    const v2, 0x7f130b2b    # @string/stream_assistant 'Voice assistant'

    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    move-result-object v2

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
    .line 222
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/RingerModeTrackerImpl;Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;Landroid/media/AudioManager;Landroid/app/NotificationManager;Lcom/android/systemui/statusbar/VibratorHelper;Landroid/media/IAudioService;Landroid/view/accessibility/AccessibilityManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/view/accessibility/CaptioningManager;Landroid/app/KeyguardManager;Landroid/app/ActivityManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/dump/DumpManager;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 4
    move-object/from16 v2, p11

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v3, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;

    .line 11
    invoke-direct {v3, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    .line 13
    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 16
    invoke-direct {v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;-><init>()V

    .line 18
    iput-object v4, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 21
    new-instance v4, Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 23
    invoke-direct {v4}, Lcom/android/systemui/plugins/VolumeDialogController$State;-><init>()V

    .line 25
    iput-object v4, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 28
    const/4 v5, 0x1

    .line 30
    iput-boolean v5, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceInteractive:Z

    .line 31
    new-instance v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    .line 33
    invoke-direct {v5, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    .line 35
    iput-object v5, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    .line 38
    new-instance v6, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;

    .line 40
    invoke-direct {v6, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    .line 42
    iput-object v6, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWakefullnessLifecycleObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 47
    move-result-object v7

    .line 50
    iput-object v7, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    .line 51
    move-object/from16 v8, p10

    .line 53
    iput-object v8, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    iput-object v2, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 57
    const/4 v8, 0x0

    .line 59
    new-array v9, v8, [Ljava/lang/Object;

    .line 60
    const/4 v10, 0x5

    .line 62
    invoke-static {v10, v9}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 63
    new-instance v9, Landroid/os/HandlerThread;

    .line 66
    const-string v10, "VolumeDialogControllerImpl"

    .line 68
    invoke-direct {v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 73
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 76
    move-result-object v9

    .line 79
    new-instance v11, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 80
    invoke-direct {v11, v0, v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/os/Looper;)V

    .line 82
    iput-object v11, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 85
    invoke-static {v7}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    .line 87
    move-result-object v12

    .line 90
    iput-object v12, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRouter2Manager:Landroid/media/MediaRouter2Manager;

    .line 91
    new-instance v12, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 93
    invoke-direct {v12, v0, v7}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/content/Context;)V

    .line 95
    iput-object v12, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 98
    new-instance v13, Lcom/android/settingslib/volume/MediaSessions;

    .line 100
    invoke-direct {v13, v7, v9, v12}, Lcom/android/settingslib/volume/MediaSessions;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;)V

    .line 102
    iput-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    .line 105
    move-object/from16 v9, p5

    .line 107
    iput-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 109
    move-object/from16 v9, p6

    .line 111
    iput-object v9, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 113
    new-instance v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;

    .line 115
    invoke-direct {v9, v0, v11}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;)V

    .line 117
    new-instance v12, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    .line 120
    iget-object v13, v1, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerMode:Lcom/android/systemui/util/RingerModeLiveData;

    .line 122
    iget-object v1, v1, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    .line 124
    invoke-direct {v12, v0, v13, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/util/RingerModeLiveData;Lcom/android/systemui/util/RingerModeLiveData;)V

    .line 126
    iput-object v12, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    .line 129
    invoke-virtual {v13}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    .line 131
    move-result-object v14

    .line 134
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 135
    move-result v14

    .line 138
    const/4 v15, -0x1

    .line 139
    if-eq v14, v15, :cond_0

    .line 140
    iput v14, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeExternal:I

    .line 142
    :cond_0
    iget-object v14, v12, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerModeObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1;

    .line 144
    invoke-virtual {v13, v14}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 146
    invoke-virtual {v1}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    .line 149
    move-result-object v13

    .line 152
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 153
    move-result v13

    .line 156
    if-eq v13, v15, :cond_1

    .line 157
    iput v13, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 159
    :cond_1
    iget-object v4, v12, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerModeInternalObserver:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers$1;

    .line 161
    invoke-virtual {v1, v4}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 163
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 166
    move-result-object v1

    .line 169
    iget-object v4, v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 170
    invoke-virtual {v1, v4, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 175
    move-result-object v1

    .line 178
    iget-object v4, v9, Lcom/android/systemui/volume/VolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    .line 179
    invoke-virtual {v1, v4, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    new-instance v1, Landroid/content/IntentFilter;

    .line 184
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    .line 189
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v4, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 194
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v4, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 199
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v4, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    .line 204
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    .line 209
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v4, "android.intent.action.SCREEN_OFF"

    .line 214
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 219
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    move-object/from16 v4, p2

    .line 224
    invoke-virtual {v4, v3, v1, v11}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    .line 226
    move-object/from16 v1, p7

    .line 229
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 231
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    .line 233
    move-result v1

    .line 236
    iput-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    .line 237
    move-object/from16 v1, p8

    .line 239
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    .line 241
    move-object/from16 v1, p12

    .line 243
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 245
    move-object/from16 v1, p13

    .line 247
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 249
    move-object/from16 v1, p14

    .line 251
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 253
    move-object/from16 v1, p15

    .line 255
    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 257
    move-object/from16 v1, p16

    .line 259
    invoke-virtual {v1, v10, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 261
    invoke-virtual/range {p9 .. p9}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    .line 264
    move-result v0

    .line 267
    invoke-virtual {v5, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->setA11yMode(I)V

    .line 268
    iget-object v0, v2, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 271
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
    .line 276
.end method

.method public static isLogWorthy(I)Z
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :pswitch_0
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    nop

    .line 9
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 10
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    if-eqz p1, :cond_0

    .line 7
    if-eqz p2, :cond_0

    .line 9
    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/Map;

    .line 11
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    .line 18
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object p0

    .line 23
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;->onAccessibilityModeChanged(Ljava/lang/Boolean;)V

    .line 24
    return-void

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 30
    throw p0
    .line 33
.end method

.method public final areCaptionsEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 2
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isSystemAudioCaptioningEnabled()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final checkRoutedToBluetoothW(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 3
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x3

    .line 6
    if-ne p1, v3, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    .line 9
    move-result v1

    .line 12
    const v3, 0x20000380

    .line 13
    and-int/2addr v1, v3

    .line 16
    if-eqz v1, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    .line 21
    move-result p0

    .line 24
    :goto_1
    or-int/2addr v2, p0

    .line 25
    goto :goto_3

    .line 26
    :cond_1
    if-nez p1, :cond_3

    .line 27
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    .line 29
    move-result v1

    .line 32
    const/high16 v3, 0x20000000

    .line 33
    and-int/2addr v1, v3

    .line 35
    if-eqz v1, :cond_2

    .line 36
    goto :goto_2

    .line 38
    :cond_2
    move v0, v2

    .line 39
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamRoutedToBluetoothW(IZ)Z

    .line 40
    move-result p0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    :goto_3
    return v2
    .line 45
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "VolumeDialogControllerImpl state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string p2, "  mVolumePolicy: "

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 14
    const-string p2, "  mState: "

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 22
    const/4 v0, 0x4

    .line 24
    invoke-virtual {p2, v0}, Lcom/android/systemui/plugins/VolumeDialogController$State;->toString(I)Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    const-string p2, "  mHasVibrator: "

    .line 32
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    .line 37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 39
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 42
    iget-object p2, p2, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    .line 44
    monitor-enter p2

    .line 46
    :try_start_0
    const-string v0, "  mRemoteStreams: "

    .line 47
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 52
    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    .line 54
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 56
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 60
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const-string p2, "  mShowA11yStream: "

    .line 64
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowA11yStream:Z

    .line 69
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 71
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 74
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
    .line 80
.end method

.method public final getAudioManager()Landroid/media/AudioManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getCaptionsComponentState(Z)V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 14
    return-void
    .line 17
.end method

.method public final getState()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 2
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    return-void
    .line 8
.end method

.method public final hasVibrator()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mHasVibrator:Z

    .line 2
    return p0
    .line 4
.end method

.method public final notifyVisible(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 3
    const/16 v1, 0xc

    .line 5
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public final onVolumeChangedW(II)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 2
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    if-eq v0, v2, :cond_0

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceInteractive:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    and-int/lit8 v0, p2, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    .line 21
    if-eqz v0, :cond_0

    .line 23
    move v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v3

    .line 27
    :goto_0
    and-int/lit16 v4, p2, 0x1000

    .line 28
    if-eqz v4, :cond_1

    .line 30
    move v4, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v4, v3

    .line 34
    :goto_1
    and-int/lit16 v5, p2, 0x800

    .line 35
    if-eqz v5, :cond_2

    .line 37
    move v5, v1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move v5, v3

    .line 41
    :goto_2
    and-int/lit16 v6, p2, 0x80

    .line 42
    if-eqz v6, :cond_3

    .line 44
    move v6, v1

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    move v6, v3

    .line 48
    :goto_3
    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    .line 51
    move-result v7

    .line 54
    or-int/2addr v7, v3

    .line 55
    goto :goto_4

    .line 56
    :cond_4
    move v7, v3

    .line 57
    :goto_4
    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 58
    invoke-virtual {v8, p1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    .line 60
    move-result v8

    .line 63
    invoke-virtual {p0, p1, v8}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateStreamLevelW(II)Z

    .line 64
    move-result v9

    .line 67
    or-int/2addr v7, v9

    .line 68
    if-eqz v0, :cond_5

    .line 69
    goto :goto_5

    .line 71
    :cond_5
    move v2, p1

    .line 72
    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    .line 73
    move-result v2

    .line 76
    or-int/2addr v2, v7

    .line 77
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 78
    if-eqz v2, :cond_6

    .line 80
    iget-object v9, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 82
    invoke-virtual {v7, v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 84
    :cond_6
    const/4 v9, 0x4

    .line 87
    if-eqz v0, :cond_b

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 90
    move-result-object v0

    .line 93
    and-int/lit16 p2, p2, 0x4000

    .line 94
    if-eqz p2, :cond_7

    .line 96
    move p2, v1

    .line 98
    goto :goto_6

    .line 99
    :cond_7
    move p2, v3

    .line 100
    :goto_6
    iget v10, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 101
    if-ne v10, v8, :cond_8

    .line 103
    const/4 v0, 0x2

    .line 105
    goto :goto_7

    .line 106
    :cond_8
    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 107
    if-ne v0, v8, :cond_9

    .line 109
    move v0, v9

    .line 111
    goto :goto_7

    .line 112
    :cond_9
    move v0, v3

    .line 113
    :goto_7
    or-int/2addr p2, v0

    .line 114
    if-eqz v2, :cond_a

    .line 115
    const/16 v3, 0x8

    .line 117
    :cond_a
    or-int/2addr p2, v3

    .line 119
    invoke-virtual {v7, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onPerformHapticFeedback(I)V

    .line 120
    iget-object p2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 123
    invoke-virtual {p2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 125
    move-result p2

    .line 128
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 129
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    .line 131
    move-result p0

    .line 134
    invoke-virtual {v7, v1, p2, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowRequested(IZI)V

    .line 135
    :cond_b
    if-eqz v5, :cond_c

    .line 138
    invoke-virtual {v7}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowVibrateHint()V

    .line 140
    :cond_c
    if-eqz v6, :cond_d

    .line 143
    invoke-virtual {v7}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowSilentHint()V

    .line 145
    :cond_d
    if-eqz v2, :cond_e

    .line 148
    if-eqz v4, :cond_e

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object p0

    .line 155
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object p1

    .line 159
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 160
    move-result-object p0

    .line 163
    invoke-static {v9, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 164
    :cond_e
    return v2
    .line 167
.end method

.method public final removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/Map;

    .line 4
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    return-void
    .line 11
.end method

.method public final scheduleTouchFeedback()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLastToggledRingerOn:J

    .line 6
    return-void
    .line 8
.end method

.method public final setActiveStream(I)V
    .locals 2

    .line 1
    const/16 v0, 0xb

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public final setCaptionsEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/CaptioningManager;->setSystemAudioCaptioningEnabled(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public final setRingerMode(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 2
    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    return-void
    .line 12
.end method

.method public final setStreamVolume(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 2
    const/16 v0, 0xa

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 19
    return-void
    .line 22
.end method

.method public final setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 7
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 12
    :catch_0
    sget-object p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 13
    const-string p1, "No volume policy api"

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_0
    return-void
    .line 20
.end method

.method public final streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 10
    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 14
    invoke-direct {v0}, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;-><init>()V

    .line 16
    iget-object p0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    :cond_0
    return-object v0
    .line 24
.end method

.method public final updateActiveStreamW(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 2
    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    .line 4
    if-ne p1, v1, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iput p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->activeStream:I

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 21
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 24
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 26
    if-eqz v0, :cond_1

    .line 28
    const-string/jumbo v2, "updateActiveStreamW "

    .line 30
    invoke-static {v2, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    :cond_1
    const/16 v2, 0x64

    .line 36
    if-ge p1, v2, :cond_2

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    const/4 p1, -0x1

    .line 41
    :goto_0
    if-eqz v0, :cond_3

    .line 42
    const-string v0, "forceVolumeControlStream "

    .line 44
    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 46
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 49
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 51
    const/4 p0, 0x1

    .line 54
    return p0
    .line 55
.end method

.method public final updateEffectsSuppressorW(Landroid/content/ComponentName;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 4
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    return v2

    .line 13
    :cond_0
    iput-object p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 16
    if-nez p1, :cond_1

    .line 18
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 30
    move-result-object p0

    .line 33
    const-string v1, ""

    .line 34
    invoke-static {p0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 44
    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    if-lez v1, :cond_2

    .line 48
    goto :goto_0

    .line 50
    :catch_0
    :cond_2
    move-object p0, p1

    .line 51
    :goto_0
    iput-object p0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    .line 52
    iget-object p0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 54
    iget-object p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    .line 56
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 61
    const/16 p1, 0xe

    .line 62
    invoke-static {p1, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 64
    const/4 p0, 0x1

    .line 67
    return p0
    .line 68
.end method

.method public final updateRingerModeInternalW(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 2
    iget v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 4
    if-ne p1, v1, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iput p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 15
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 19
    const/16 v1, 0xb

    .line 20
    invoke-static {v1, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 22
    iget p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    .line 25
    const/4 v0, 0x2

    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    move-result-wide v0

    .line 33
    iget-wide v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mLastToggledRingerOn:J

    .line 34
    sub-long/2addr v0, v2

    .line 36
    const-wide/16 v2, 0x3e8

    .line 37
    cmp-long p1, v0, v2

    .line 39
    if-gez p1, :cond_1

    .line 41
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudioService:Landroid/media/IAudioService;

    .line 43
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 45
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 49
    move-result p0

    .line 52
    const/4 v0, 0x5

    .line 53
    invoke-interface {p1, v0, p0}, Landroid/media/IAudioService;->playSoundEffect(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    :cond_1
    const/4 p0, 0x1

    .line 57
    return p0
    .line 58
.end method

.method public final updateStreamLevelW(II)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 2
    move-result-object p0

    .line 5
    iget v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 6
    if-ne v0, p2, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iput p2, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 12
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isLogWorthy(I)Z

    .line 14
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p0

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p1

    .line 27
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    const/16 p1, 0xa

    .line 32
    invoke-static {p1, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 34
    :cond_1
    const/4 p0, 0x1

    .line 37
    return p0
    .line 38
.end method

.method public final updateStreamMuteW(IZ)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 2
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 6
    const/4 v2, 0x0

    .line 8
    if-ne v1, p2, :cond_0

    .line 9
    return v2

    .line 11
    :cond_0
    iput-boolean p2, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    .line 12
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->isLogWorthy(I)Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v0

    .line 23
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object v1

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    const/16 v1, 0xf

    .line 32
    invoke-static {v1, v0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 34
    :cond_1
    const/4 v0, 0x1

    .line 37
    if-eqz p2, :cond_4

    .line 38
    const/4 p2, 0x2

    .line 40
    if-eq p1, p2, :cond_2

    .line 41
    const/4 p2, 0x5

    .line 43
    if-ne p1, p2, :cond_3

    .line 44
    :cond_2
    move v2, v0

    .line 46
    :cond_3
    if-eqz v2, :cond_4

    .line 47
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mRingerModeObservers:Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;

    .line 49
    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl$RingerModeObservers;->mRingerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    .line 51
    invoke-virtual {p1}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    .line 53
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateRingerModeInternalW(I)Z

    .line 61
    :cond_4
    return v0
    .line 64
.end method

.method public final updateStreamRoutedToBluetoothW(IZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 2
    move-result-object p0

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 6
    if-ne v0, p2, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 12
    sget-boolean p0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 14
    if-eqz p0, :cond_1

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v0, "updateStreamRoutedToBluetoothW stream="

    .line 20
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, " routedToBluetooth="

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 41
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_1
    const/4 p0, 0x1

    .line 46
    return p0
    .line 47
.end method

.method public final updateZenConfig()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 4
    move-result-object v0

    .line 7
    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 8
    and-int/lit8 v2, v1, 0x20

    .line 10
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    move v2, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v4

    .line 18
    :goto_0
    and-int/lit8 v5, v1, 0x40

    .line 19
    if-nez v5, :cond_1

    .line 21
    move v5, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v5, v4

    .line 25
    :goto_1
    and-int/lit16 v1, v1, 0x80

    .line 26
    if-nez v1, :cond_2

    .line 28
    move v1, v3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move v1, v4

    .line 32
    :goto_2
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    .line 33
    move-result v0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 37
    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    .line 39
    if-ne v6, v2, :cond_3

    .line 41
    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    .line 43
    if-ne v6, v5, :cond_3

    .line 45
    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    .line 47
    if-ne v6, v0, :cond_3

    .line 49
    iget-boolean v6, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    .line 51
    if-ne v6, v1, :cond_3

    .line 53
    return v4

    .line 55
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowAlarms:Z

    .line 56
    iput-boolean v5, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowMedia:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowSystem:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->disallowRinger:Z

    .line 62
    const-string p0, "disallowAlarms="

    .line 64
    const-string v4, " disallowMedia="

    .line 66
    const-string v6, " disallowSystem="

    .line 68
    invoke-static {p0, v2, v4, v5, v6}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    move-result-object p0

    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, " disallowRinger="

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 88
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 89
    move-result-object p0

    .line 92
    const/16 v0, 0x11

    .line 93
    invoke-static {v0, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 95
    return v3
    .line 98
.end method

.method public final updateZenModeW()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 7
    const-string/jumbo v1, "zen_mode"

    .line 8
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    move-result v0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 16
    iget v1, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    .line 18
    if-ne v1, v0, :cond_0

    .line 20
    return v2

    .line 22
    :cond_0
    iput v0, p0, Lcom/android/systemui/plugins/VolumeDialogController$State;->zenMode:I

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p0

    .line 28
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 32
    const/16 v0, 0xd

    .line 33
    invoke-static {v0, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 35
    const/4 p0, 0x1

    .line 38
    return p0
    .line 39
.end method

.method public final userActivity()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWorker:Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    .line 2
    const/16 v0, 0xd

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    return-void
    .line 12
.end method

.method public final vibrate(Landroid/os/VibrationEffect;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 2
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->SONIFICIATION_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 6
    return-void
    .line 9
.end method
