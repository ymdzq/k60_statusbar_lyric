.class public abstract Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;
.implements Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;
.implements Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;


# static fields
.field public static final DEBUG:Z

.field public static final LOCATION_STATUS_ICON_ID:I


# instance fields
.field public final mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public mCurrentUserSetup:Z

.field public final mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mDisplayId:I

.field public final mHandler:Landroid/os/Handler;

.field public mHasAlarm:Z

.field public final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field public final mHotspotCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

.field public final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field public final mIntentReceiver:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mManagedProfileIconVisible:Z

.field public mMuteVisible:Z

.field public final mNextAlarmCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;

.field public final mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field public final mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field public final mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field public final mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

.field public final mRemoveCastIconRunnable:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;

.field public final mResources:Landroid/content/res/Resources;

.field public final mRingerModeTracker:Lcom/android/systemui/util/RingerModeTrackerImpl;

.field public final mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

.field public final mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;

.field public final mSlotAlarmClock:Ljava/lang/String;

.field public final mSlotBluetooth:Ljava/lang/String;

.field public final mSlotCamera:Ljava/lang/String;

.field public final mSlotCast:Ljava/lang/String;

.field public final mSlotDataSaver:Ljava/lang/String;

.field public final mSlotHeadset:Ljava/lang/String;

.field public final mSlotHotspot:Ljava/lang/String;

.field public final mSlotLocation:Ljava/lang/String;

.field public final mSlotManagedProfile:Ljava/lang/String;

.field public final mSlotMicrophone:Ljava/lang/String;

.field public final mSlotMute:Ljava/lang/String;

.field public final mSlotRotate:Ljava/lang/String;

.field public final mSlotScreenRecord:Ljava/lang/String;

.field public final mSlotSensorsOff:Ljava/lang/String;

.field public final mSlotTty:Ljava/lang/String;

.field public final mSlotZen:Ljava/lang/String;

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field public final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserSwitchListener:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field public mZenVisible:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "PhoneStatusBarPolicy"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    .line 9
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyType;->getIconId()I

    .line 13
    move-result v0

    .line 16
    sput v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->LOCATION_STATUS_ICON_ID:I

    .line 17
    return-void
    .line 19
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Looper;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/screenrecord/RecordingController;Landroid/telecom/TelecomManager;ILcom/android/systemui/util/RingerModeTrackerImpl;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/privacy/logging/PrivacyLogger;)V
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v2, 0x0

    .line 7
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    .line 8
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    .line 10
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 12
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserSwitchListener:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 15
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    .line 17
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 19
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    .line 22
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;

    .line 24
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 26
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;

    .line 29
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

    .line 31
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 33
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

    .line 36
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;

    .line 38
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 40
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;

    .line 43
    move-object v2, p1

    .line 45
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 46
    move-object v2, p2

    .line 48
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 49
    move-object v2, p3

    .line 51
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 52
    new-instance v2, Landroid/os/Handler;

    .line 54
    move-object v3, p6

    .line 56
    invoke-direct {v2, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 62
    move-object v2, p8

    .line 64
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    .line 65
    move-object v2, p9

    .line 67
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 68
    move-object v2, p10

    .line 70
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 71
    move-object v2, p11

    .line 73
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 74
    move-object/from16 v2, p12

    .line 76
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 78
    move-object/from16 v2, p20

    .line 80
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserManager:Landroid/os/UserManager;

    .line 82
    move-object/from16 v2, p21

    .line 84
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 86
    move-object/from16 v2, p22

    .line 88
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 90
    move-object/from16 v2, p13

    .line 92
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 94
    move-object/from16 v2, p14

    .line 96
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    .line 98
    move-object/from16 v2, p15

    .line 100
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 102
    move-object/from16 v2, p16

    .line 104
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 106
    move-object/from16 v2, p17

    .line 108
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 110
    move-object/from16 v2, p18

    .line 112
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 114
    move-object/from16 v2, p27

    .line 116
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 118
    move-object/from16 v2, p19

    .line 120
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;

    .line 122
    move-object/from16 v2, p23

    .line 124
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 126
    move-object v2, p4

    .line 128
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 129
    move-object v2, p5

    .line 131
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 132
    move-object/from16 v2, p24

    .line 134
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 136
    move-object/from16 v2, p26

    .line 138
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTrackerImpl;

    .line 140
    move-object/from16 v2, p28

    .line 142
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 144
    const v2, 0x104096b    # @android:string/wfcSpnFormat_wifi_call

    .line 146
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 149
    move-result-object v2

    .line 152
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    .line 153
    const v2, 0x1040972    # @android:string/wfc_mode_wifi_preferred_summary

    .line 155
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 158
    move-result-object v2

    .line 161
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    .line 162
    const v2, 0x1040968    # @android:string/wfcSpnFormat_spn_wlan_call

    .line 164
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 167
    move-result-object v2

    .line 170
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    .line 171
    const v2, 0x1040984    # @android:string/whichSendApplication

    .line 173
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 176
    move-result-object v2

    .line 179
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    .line 180
    const v2, 0x1040988    # @android:string/whichSendToApplicationLabel

    .line 182
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 185
    move-result-object v2

    .line 188
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    .line 189
    const-string/jumbo v2, "volume"

    .line 191
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMute:Ljava/lang/String;

    .line 194
    const v2, 0x1040966    # @android:string/wfcSpnFormat_spn_wifi_calling

    .line 196
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 199
    move-result-object v2

    .line 202
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    .line 203
    const v2, 0x1040975    # @android:string/whichApplicationNamed

    .line 205
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 208
    move-result-object v2

    .line 211
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    .line 212
    const v2, 0x104097d    # @android:string/whichImageCaptureApplication

    .line 214
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 217
    move-result-object v2

    .line 220
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    .line 221
    const v2, 0x1040971    # @android:string/wfc_mode_wifi_only_summary

    .line 223
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 226
    move-result-object v2

    .line 229
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    .line 230
    const v2, 0x104096f    # @android:string/wfcSpnFormat_wlan_call

    .line 232
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 235
    move-result-object v2

    .line 238
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    .line 239
    const v2, 0x1040974    # @android:string/whichApplicationLabel

    .line 241
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 244
    move-result-object v2

    .line 247
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    .line 248
    const v2, 0x1040976    # @android:string/whichEditApplication

    .line 250
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 253
    move-result-object v2

    .line 256
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMicrophone:Ljava/lang/String;

    .line 257
    const v2, 0x104096a    # @android:string/wfcSpnFormat_wifi

    .line 259
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 262
    move-result-object v2

    .line 265
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCamera:Ljava/lang/String;

    .line 266
    const v2, 0x1040980    # @android:string/whichOpenHostLinksWith

    .line 268
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 271
    move-result-object v2

    .line 274
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    .line 275
    const v2, 0x104097e    # @android:string/whichImageCaptureApplicationLabel

    .line 277
    invoke-virtual {p7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 280
    move-result-object v1

    .line 283
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    .line 284
    move/from16 v1, p25

    .line 286
    iput v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDisplayId:I

    .line 288
    return-void
.end method


# virtual methods
.method public final appTransitionStarting(IJJZ)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDisplayId:I

    .line 2
    if-ne p2, p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onBluetoothDevicesChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 2
    return-void
    .line 5
.end method

.method public final onBluetoothStateChange()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 2
    return-void
    .line 5
.end method

.method public final onConfigChanged$1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 2
    return-void
    .line 5
.end method

.method public final onCountdown(J)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "screenrecord: countdown "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    const-string v1, "PhoneStatusBarPolicy"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    const-wide/16 v0, 0x1f4

    .line 26
    add-long/2addr p1, v0

    .line 28
    const/16 v0, 0x3e8

    .line 29
    invoke-static {p1, p2, v0}, Ljava/lang/Math;->floorDiv(JI)J

    .line 31
    move-result-wide p1

    .line 34
    long-to-int p1, p1

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 39
    const/4 v0, 0x2

    .line 40
    const/4 v1, 0x1

    .line 41
    if-eq p1, v1, :cond_3

    .line 42
    if-eq p1, v0, :cond_2

    .line 44
    const/4 v2, 0x3

    .line 46
    if-eq p1, v2, :cond_1

    .line 47
    const p1, 0x7f08186e    # @drawable/stat_sys_screen_record 'res/drawable/stat_sys_screen_record.xml'

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    const p1, 0x7f081871    # @drawable/stat_sys_screen_record_3 'res/drawable/stat_sys_screen_record_3.xml'

    .line 53
    goto :goto_0

    .line 56
    :cond_2
    const p1, 0x7f081870    # @drawable/stat_sys_screen_record_2 'res/drawable/stat_sys_screen_record_2.xml'

    .line 57
    goto :goto_0

    .line 60
    :cond_3
    const p1, 0x7f08186f    # @drawable/stat_sys_screen_record_1 'res/drawable/stat_sys_screen_record_1.xml'

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 64
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    .line 68
    invoke-virtual {v2, p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 73
    invoke-virtual {v2, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconAccessibilityLiveRegion(ILjava/lang/String;)V

    .line 76
    return-void
    .line 79
.end method

.method public final onCountdownEnd()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "PhoneStatusBarPolicy"

    .line 6
    const-string/jumbo v1, "screenrecord: hiding icon during countdown"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda5;

    .line 16
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda6;

    .line 24
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    return-void
    .line 32
.end method

.method public final onDataSaverChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 8
    return-void
    .line 11
.end method

.method public final onPrivacyItemsChanged(Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v3

    .line 12
    if-eqz v3, :cond_4

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/systemui/privacy/PrivacyItem;

    .line 19
    if-eqz v3, :cond_3

    .line 21
    iget-object v3, v3, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    .line 23
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 25
    move-result v3

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v3, :cond_2

    .line 30
    if-eq v3, v4, :cond_1

    .line 32
    const/4 v5, 0x2

    .line 34
    if-eq v3, v5, :cond_0

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    move v2, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v1, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v0, v4

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const-string p1, "PhoneStatusBarPolicy"

    .line 44
    const-string/jumbo v0, "updatePrivacyItems - null item found"

    .line 46
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance p1, Ljava/io/StringWriter;

    .line 52
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 54
    new-instance v0, Ljava/io/PrintWriter;

    .line 57
    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 59
    const/4 v1, 0x0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 65
    new-instance p0, Ljava/lang/NullPointerException;

    .line 68
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p0

    .line 77
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 78
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logStatusBarIconsVisible(ZZZ)V

    .line 80
    return-void
    .line 83
.end method

.method public final onRecordingEnd()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "PhoneStatusBarPolicy"

    .line 6
    const-string/jumbo v1, "screenrecord: hiding icon"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda1;

    .line 16
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method

.method public final onRecordingStart()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "PhoneStatusBarPolicy"

    .line 6
    const-string/jumbo v1, "screenrecord: showing icon"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 14
    const v1, 0x7f130a76    # @string/screenrecord_ongoing_screen_only 'Recording screen'

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 23
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 25
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    .line 27
    const v3, 0x7f08186e    # @drawable/stat_sys_screen_record 'res/drawable/stat_sys_screen_record.xml'

    .line 29
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda0;

    .line 37
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
    .line 45
.end method

.method public final onRotationLockStateChanged(Z)V
    .locals 5

    .line 1
    sget v0, Lcom/android/systemui/qs/tiles/RotationLockTile;->$r8$clinit:I

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;->mRotationPolicy:Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;

    .line 6
    iget-object v0, v0, Lcom/android/systemui/util/wrapper/RotationPolicyWrapperImpl;->context:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->getRotationLockOrientation(Landroid/content/Context;)I

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 16
    const/4 v4, 0x2

    .line 18
    if-nez v0, :cond_0

    .line 19
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    move-result-object v0

    .line 24
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 25
    if-eq v0, v4, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    if-eq v0, v4, :cond_1

    .line 30
    :goto_0
    move v0, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v1

    .line 34
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 37
    if-eqz p1, :cond_3

    .line 39
    if-eqz v0, :cond_2

    .line 41
    const p1, 0x7f1300eb    # @string/accessibility_rotation_lock_on_portrait 'Screen is locked in portrait orientation.'

    .line 43
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 49
    move-object v0, p0

    .line 50
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 51
    const v1, 0x7f08186d    # @drawable/stat_sys_rotate_portrait 'res/drawable/stat_sys_rotate_portrait.xml'

    .line 53
    invoke-virtual {v0, p1, v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 56
    goto :goto_2

    .line 59
    :cond_2
    const p1, 0x7f1300ea    # @string/accessibility_rotation_lock_on_landscape 'Screen is locked in landscape orientation.'

    .line 60
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 66
    move-object v0, p0

    .line 67
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 68
    const v1, 0x7f08186c    # @drawable/stat_sys_rotate_landscape 'res/drawable/stat_sys_rotate_landscape.xml'

    .line 70
    invoke-virtual {v0, p1, v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 73
    :goto_2
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 76
    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 78
    goto :goto_3

    .line 81
    :cond_3
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 82
    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 84
    :goto_3
    return-void
    .line 87
.end method

.method public final onUserSetupChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 6
    move-result v0

    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    .line 10
    if-ne v1, v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    .line 15
    return-void
    .line 17
.end method

.method public final onZenChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 2
    return-void
    .line 5
.end method

.method public abstract updateBluetooth()V
.end method

.method public final updateManagedProfile()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda2;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 7
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    return-void
    .line 12
.end method

.method public final updateTTY(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    move p1, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move p1, v1

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    .line 9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 11
    if-eqz p1, :cond_1

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 15
    const p1, 0x7f1300f9    # @string/accessibility_tty_enabled 'TeleTypewriter enabled.'

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    move-object p1, v3

    .line 24
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 25
    const v1, 0x7f0818f4    # @drawable/stat_sys_tty_mode 'res/drawable/stat_sys_tty_mode.xml'

    .line 27
    invoke-virtual {p1, p0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 30
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 33
    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 35
    goto :goto_1

    .line 38
    :cond_1
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 39
    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 41
    :goto_1
    return-void
    .line 44
.end method

.method public abstract updateVolumeZen()V
.end method
