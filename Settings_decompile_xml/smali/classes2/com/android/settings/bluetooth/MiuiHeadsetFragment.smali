.class public final Lcom/android/settings/bluetooth/MiuiHeadsetFragment;
.super Lcom/android/settings/MiuiSettingsPreferenceFragment;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView$AncLevelChangeListener;
.implements Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$TransparentLevelChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;,
        Lcom/android/settings/bluetooth/MiuiHeadsetFragment$DelayRunnable;
    }
.end annotation


# static fields
.field private static APPID:J

.field private static final K71_CODEC_ENALBE_PRODUCTS:[Ljava/lang/String;

.field private static final K73A_GL_CODEC_ENABLE_PRODUCTS:[Ljava/lang/String;

.field private static final K73_CODEC_ENABLE_PRODUCTS:[Ljava/lang/String;

.field private static final K73_HD_AUDIO_ENABLE_PRODUCTS:[Ljava/lang/String;

.field private static final K77S_CODEC_ENABLE_PRODUCTS:[Ljava/lang/String;

.field private static final K77S_GL_CODEC_ENABLE_PRODUCTS:[Ljava/lang/String;

.field private static REDIRECTURL:Ljava/lang/String;

.field public static final supportSetCodecDeviceId:[Ljava/lang/String;


# instance fields
.field private final MMA_BLE_TYPE:I

.field private final MMA_SPP_TYPE:I

.field private final MMA_STATUS_DISCONNECT:I

.field private final SET_LE_AUDIO_OPEN_STATUS:I

.field private configCodec:Lmiuix/preference/DropDownPreference;

.field private headTrackingCheckBox:Landroidx/preference/CheckBoxPreference;

.field private immersionAudioCheckBox:Landroidx/preference/CheckBoxPreference;

.field private isFirstOnResume:Z

.field private isSingleHeadsetConn:Z

.field private isSupportHeadTrackAlgo:Z

.field private isspatialenable:Z

.field private issupportimmerviseaudio:Z

.field private mAACDevice:Z

.field private mAADevice:Z

.field private mAbsAudioManager:Landroid/media/AudioManager;

.field private mAbsVolFeature:Ljava/lang/String;

.field private mAccountResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

.field private mActivity:Landroid/app/Activity;

.field private mAncCached:Ljava/lang/String;

.field private mAncLevelMap:Ljava/lang/String;

.field private final mAncLock:Ljava/lang/Object;

.field private mAncPendingStatus:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioShareCheckA2DPActiveExistRunnable:Ljava/lang/Runnable;

.field private mAudioShareContainer:Landroidx/preference/PreferenceGroup;

.field private mAudioStreamMax:I

.field private mAutoAck:Landroidx/preference/CheckBoxPreference;

.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            "Landroidx/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mBleAudioCategory:Landroidx/preference/PreferenceGroup;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mBluetoothA2dpLock:Ljava/lang/Object;

.field private mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHfpAudioStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mBluetoothHfpLock:Ljava/lang/Object;

.field private mBluetoothHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothMultiA2DPStateResultReceiver:Landroid/content/BroadcastReceiver;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mCodecConfigRun:Ljava/lang/Runnable;

.field private mCodecContainer:Landroidx/preference/PreferenceGroup;

.field private mDelayOpenAudioShareRunnable:Ljava/lang/Runnable;

.field private mDelayRunnable:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$DelayRunnable;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceMacAddress:Ljava/lang/String;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDisableVolumeRun:Ljava/lang/Runnable;

.field private mDisconnectDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFwVersion:Ljava/lang/String;

.field private mFwVersionCode:I

.field private mHDValue:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHits:[J

.field private mInearTest:Landroidx/preference/CheckBoxPreference;

.field mInitedAtUi:Z

.field private mIsBleAudioDevice:Z

.field private mIsInAbsWhitelist:Z

.field private mLC3Switching:Z

.field private mLDACDevice:Z

.field private mLHDCV1Device:Z

.field private mLHDCV2Device:Z

.field private mLHDCV3Device:Z

.field private mLastOnlineMessage:Ljava/lang/String;

.field private mLastOnlineUrl:Ljava/lang/String;

.field private mLastOnlineVerion:Ljava/lang/String;

.field private mLastOnlineVersionCode:I

.field private mLocalExist:Z

.field private final mLocalFile:Ljava/lang/String;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mMiuiHeadsetAncAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

.field private mMiuiHeadsetAncAdjustViewWindNoise:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

.field mMiuiHeadsetAnimation:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

.field mMiuiHeadsetBattery:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

.field mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

.field private mMiuiHeadsetTransparentAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

.field private mMultiConnect:Landroidx/preference/CheckBoxPreference;

.field private mNotifiDisplay:Landroidx/preference/CheckBoxPreference;

.field private mOtaIndicate:Ljava/lang/Boolean;

.field private mPendingAnc:Ljava/lang/String;

.field private mPid:Ljava/lang/String;

.field private final mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mPrefConfig:Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;

.field private mProfileContainer:Landroidx/preference/PreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mRootView:Landroid/view/View;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSBCLlDevice:Z

.field private mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

.field private mShowAutoAck:Ljava/lang/Boolean;

.field private mSilentUpgrade:Landroidx/preference/CheckBoxPreference;

.field private mSilentUpgradeStatus:Ljava/lang/Boolean;

.field private final mSpatialSoundWrapper:Lcom/android/settings/bluetooth/SpatialSoundWrapper;

.field private mSupport:Ljava/lang/String;

.field private mSupportAnc:Ljava/lang/Boolean;

.field private mSupportAncWindVersionCode:I

.field private mSupportAntiLost:Ljava/lang/Boolean;

.field private mSupportAudioMode:Ljava/lang/Boolean;

.field private mSupportAutoAck:Ljava/lang/Boolean;

.field private mSupportCodecChange:Ljava/lang/Boolean;

.field private mSupportEqualizer:Ljava/lang/Boolean;

.field private mSupportGameMode:Ljava/lang/Boolean;

.field private mSupportGyr:Ljava/lang/Boolean;

.field private mSupportInear:Ljava/lang/Boolean;

.field private mSupportMultiConnect:Ljava/lang/Boolean;

.field private mSupportOta:Ljava/lang/Boolean;

.field private mSupportSignleEarMode:Ljava/lang/Boolean;

.field private mSupportSilentUpgrade:Ljava/lang/Boolean;

.field private mSupportWindNoise:Ljava/lang/Boolean;

.field private mThread:Landroid/os/HandlerThread;

.field private mToken:Ljava/lang/String;

.field private mUpdatePrefForA2DPConnected:Z

.field private mVersion:Ljava/lang/String;

.field private mVersionCodeLocal:I

.field private mVid:Ljava/lang/String;

.field private mVirtualSurroundSound:Landroidx/preference/CheckBoxPreference;

.field private mWindNoiseAncLevel:Ljava/lang/String;

.field private mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

.field private spaceAudioPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private waitResultTask:Landroid/os/AsyncTask;


# direct methods
.method static bridge synthetic -$$Nest$fgetconfigCodec(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lmiuix/preference/DropDownPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->configCodec:Lmiuix/preference/DropDownPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheadTrackingCheckBox(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->headTrackingCheckBox:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimmersionAudioCheckBox(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->immersionAudioCheckBox:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisSingleHeadsetConn(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSingleHeadsetConn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisSupportHeadTrackAlgo(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportHeadTrackAlgo:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisspatialenable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isspatialenable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetissupportimmerviseaudio(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->issupportimmerviseaudio:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAACDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAACDevice:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAbsAudioManager(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/media/AudioManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAbsAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAbsVolFeature(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAbsVolFeature:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccountResult(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAccountResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAncCached(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncCached:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAncLock(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioShareContainer(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/PreferenceGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAudioShareContainer:Landroidx/preference/PreferenceGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoAck(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAutoAck:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothA2dpLock(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dpLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothHfp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothHfpLock(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfpLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelayRunnable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$DelayRunnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDelayRunnable:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$DelayRunnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceMacAddress(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFwVersion(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mFwVersion:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFwVersionCode(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mFwVersionCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHDValue(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHDValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInearTest(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInearTest:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInAbsWhitelist(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mIsInAbsWhitelist:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLC3Switching(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLC3Switching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLDACDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLDACDevice:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLHDCV1Device(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV1Device:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLHDCV2Device(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV2Device:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLHDCV3Device(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastOnlineVersionCode(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineVersionCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmManager(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiConnect(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMultiConnect:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifiDisplay(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mNotifiDisplay:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingAnc(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPendingAnc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPid(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefConfig(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPrefConfig:Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfileManager(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowAutoAck(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mShowAutoAck:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSilentUpgrade:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSilentUpgradeStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSilentUpgradeStatus:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportGyr(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportGyr:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportInear(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportInear:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportSilentUpgrade:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmToken(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mToken:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdatePrefForA2DPConnected(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mUpdatePrefForA2DPConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVid(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualSurroundSound(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVirtualSurroundSound:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindNoiseAncLevel(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWindNoiseAncLevel:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisSingleHeadsetConn(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSingleHeadsetConn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisspatialenable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isspatialenable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccountResult(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Lcom/xiaomi/account/openauth/XiaomiOAuthResults;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAccountResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAncCached(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncCached:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAncLevelMap(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncLevelMap:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAncPendingStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncPendingStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothA2dp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothHfp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/bluetooth/BluetoothHeadset;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDelayRunnable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Lcom/android/settings/bluetooth/MiuiHeadsetFragment$DelayRunnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDelayRunnable:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$DelayRunnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/os/Handler;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLC3Switching(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLC3Switching:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOtaIndicate(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mOtaIndicate:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingAnc(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPendingAnc:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSilentUpgradeStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSilentUpgradeStatus:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpdatePrefForA2DPConnected(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mUpdatePrefForA2DPConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWindNoiseAncLevel(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWindNoiseAncLevel:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddToWhiteList(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addToWhiteList(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maskDisconnect(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->askDisconnect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$maskUnpair(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->askUnpair()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbroadcastMultiA2dpStateChange(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->broadcastMultiA2dpStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->closeProfileProxy(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdelFromWhiteList(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->delFromWhiteList(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteOnSavedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->deleteOnSavedDevice()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAccountInfo(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->getAccountInfo(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDefaultAncLevel(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->getDefaultAncLevel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetProfileProxy(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->getProfileProxy()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetXiaomiAccount(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/content/Context;)Landroid/accounts/Account;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleAudioShareVolume(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleAudioShareVolume()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCheckBoxPreferenceEnabled(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleCheckBoxPreferenceEnabled(Landroidx/preference/CheckBoxPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMultiA2DPState(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleMultiA2DPState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMultiLeDevices(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleMultiLeDevices()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAudioOn(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isAudioOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misLeAudioCgOn(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isLeAudioCgOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misOffloadCodecInUse(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isOffloadCodecInUse()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSCOOn(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSCOOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSupportWindNoise(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportWindNoise(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mk73HDAudioEable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->k73HDAudioEable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monAudioShareSwitchPrefClicked(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->onAudioShareSwitchPrefClicked(Landroidx/preference/CheckBoxPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$motaHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->otaHandler()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshBleMmaConnection(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshBleMmaConnection(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshDeviceFunKeyInfo(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshDeviceFunKeyInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshGyrStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshGyrStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshInearUi(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshInearUi(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshProfilePreference(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshProfilePreference(Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshProfiles(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshProfiles()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBroadcastEnableOrDisable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->sendBroadcastEnableOrDisable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msentIgnorePairDilogIntent(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->sentIgnorePairDilogIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAudioShareVolume(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setAudioShareVolume(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDeviceAACWhiteListConfig(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setDeviceAACWhiteListConfig(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHDAudioEnableForLhdc4Changed(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setHDAudioEnableForLhdc4Changed(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munpairDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->unpairDevice()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAbsoluteVolume(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAbsoluteVolume(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAncMode(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncMode(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAndEnableCode(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAndEnableCode(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCodecIndex(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateCodecIndex()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCodecStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateCodecStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateHeadTrackEnable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateHeadTrackEnable()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNotificationSwitchState(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateNotificationSwitchState(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSilentUpgrdeSwitch(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateSilentUpgrdeSwitch(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteBluetoothA2dpConfiguration(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->writeBluetoothA2dpConfiguration(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 44

    const-string/jumbo v0, "star"

    const-string/jumbo v1, "mars"

    const-string/jumbo v2, "venus"

    const-string v3, "haydn"

    const-string v4, "haydnin"

    const-string v5, "cetus"

    const-string v6, "cmi"

    const-string/jumbo v7, "umi"

    const-string v8, "lmi"

    const-string v9, "lmipro"

    const-string v10, "lmiin"

    const-string v11, "apollo"

    const-string v12, "cas"

    const-string v13, "alioth"

    const-string/jumbo v14, "picasso"

    const-string v15, "gauguin"

    .line 449
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->K71_CODEC_ENALBE_PRODUCTS:[Ljava/lang/String;

    const-string v1, "haydn"

    const-string v2, "alioth"

    const-string/jumbo v3, "star"

    const-string/jumbo v4, "mars"

    const-string/jumbo v5, "renoir"

    const-string/jumbo v6, "venus"

    const-string v7, "cmi"

    const-string/jumbo v8, "umi"

    const-string v9, "lmi"

    const-string v10, "cas"

    const-string v11, "gauguin"

    const-string/jumbo v12, "odin"

    const-string/jumbo v13, "phoenix"

    const-string v14, "apollo"

    const-string/jumbo v15, "picasso"

    const-string v16, "lmipro"

    const-string v17, "gauguinpro"

    const-string v18, "haydnpro"

    const-string/jumbo v19, "mona"

    const-string v20, "lisa"

    const-string/jumbo v21, "vili"

    const-string v22, "cetus"

    const-string/jumbo v23, "psyche"

    .line 452
    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->K77S_CODEC_ENABLE_PRODUCTS:[Ljava/lang/String;

    const-string/jumbo v1, "venus"

    const-string/jumbo v2, "renoir"

    const-string v3, "courbet"

    const-string v4, "alioth"

    const-string v5, "aliothin"

    const-string v6, "haydn"

    const-string v7, "haydnin"

    const-string v8, "chopin"

    const-string/jumbo v9, "star"

    const-string/jumbo v10, "mars"

    const-string v11, "ares"

    const-string v12, "aresin"

    const-string/jumbo v13, "odin"

    const-string/jumbo v14, "phoenix"

    const-string/jumbo v15, "phoenixin"

    const-string v16, "cmi"

    const-string/jumbo v17, "umi"

    const-string v18, "lmi"

    const-string v19, "lmipro"

    const-string v20, "lmiin"

    const-string v21, "lmiinpro"

    const-string v22, "cas"

    const-string v23, "gauguin"

    const-string v24, "gauguinpro"

    const-string v25, "gauguininpro"

    const-string v26, "apollo"

    const-string/jumbo v27, "picasso"

    const-string v28, "cezanne"

    const-string/jumbo v29, "sweet"

    const-string/jumbo v30, "sweetin"

    .line 456
    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->K77S_GL_CODEC_ENABLE_PRODUCTS:[Ljava/lang/String;

    const-string/jumbo v1, "star"

    const-string/jumbo v2, "mars"

    const-string/jumbo v3, "venus"

    const-string v4, "haydn"

    const-string v5, "haydnin"

    const-string v6, "cetus"

    const-string v7, "cmi"

    const-string/jumbo v8, "umi"

    const-string v9, "lmi"

    const-string v10, "lmipro"

    const-string v11, "lmiin"

    const-string v12, "apollo"

    const-string v13, "cas"

    const-string v14, "alioth"

    const-string/jumbo v15, "picasso"

    const-string v16, "gauguin"

    const-string/jumbo v17, "vili"

    const-string/jumbo v18, "odin"

    const-string/jumbo v19, "mona"

    const-string v20, "enuma"

    const-string v21, "lime"

    const-string v22, "lemon"

    const-string/jumbo v23, "pomelo"

    const-string v24, "cezanne"

    const-string v25, "chopin"

    const-string v26, "ares"

    const-string/jumbo v27, "renoir"

    const-string v28, "haydnpro"

    const-string v29, "gauguinpro"

    const-string v30, "camellia"

    const-string v31, "lisa"

    const-string v32, "begonia"

    const-string v33, "cannon"

    const-string v34, "lancelot"

    const-string/jumbo v35, "merlin"

    const-string v36, "cetus"

    const-string/jumbo v37, "psyche"

    const-string/jumbo v38, "pissarro"

    const-string/jumbo v39, "pissarropro"

    const-string/jumbo v40, "pissarroin"

    const-string/jumbo v41, "pissarroinpro"

    const-string v42, "evergo"

    const-string v43, "evergreen"

    .line 460
    filled-new-array/range {v1 .. v43}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->K73_CODEC_ENABLE_PRODUCTS:[Ljava/lang/String;

    const-string/jumbo v1, "star"

    const-string/jumbo v2, "mars"

    const-string/jumbo v3, "venus"

    const-string/jumbo v4, "vili"

    const-string v5, "haydn"

    const-string v6, "haydnin"

    const-string v7, "agate"

    const-string v8, "amber"

    const-string v9, "cmi"

    const-string/jumbo v10, "umi"

    const-string v11, "apollo"

    const-string/jumbo v12, "tucana"

    const-string/jumbo v13, "toco"

    const-string/jumbo v14, "psyche"

    const-string/jumbo v15, "pissarro"

    const-string/jumbo v16, "pissarropro"

    const-string/jumbo v17, "pissarroin"

    const-string/jumbo v18, "pissarroinpro"

    const-string v19, "evergo"

    const-string v20, "evergreen"

    .line 467
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->K73A_GL_CODEC_ENABLE_PRODUCTS:[Ljava/lang/String;

    const-string/jumbo v0, "odin"

    const-string/jumbo v1, "mona"

    .line 471
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->K73_HD_AUDIO_ENABLE_PRODUCTS:[Ljava/lang/String;

    const-wide v0, 0x2800000000117e5dL    # 5.075883675923443E-116

    .line 517
    sput-wide v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->APPID:J

    const-string v0, "https://www.xiaomi.com"

    .line 518
    sput-object v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->REDIRECTURL:Ljava/lang/String;

    const-string v1, "0201010000"

    const-string v2, "0201010001"

    const-string v3, "01010605"

    const-string v4, "01010607"

    const-string v5, "01010703"

    const-string v6, "01010704"

    const-string v7, "01011004"

    const-string v8, "01010705"

    const-string v9, "01010707"

    const-string v10, "01011103"

    .line 547
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->supportSetCodecDeviceId:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 175
    invoke-direct {p0}, Lcom/android/settings/MiuiSettingsPreferenceFragment;-><init>()V

    const-string v0, ""

    .line 229
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPendingAnc:Ljava/lang/String;

    .line 256
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dpLock:Ljava/lang/Object;

    .line 258
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfpLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 260
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mUpdatePrefForA2DPConnected:Z

    .line 261
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLDACDevice:Z

    .line 262
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    .line 263
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV2Device:Z

    .line 264
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV1Device:Z

    .line 265
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAACDevice:Z

    .line 266
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAADevice:Z

    .line 267
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSBCLlDevice:Z

    .line 268
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLC3Switching:Z

    .line 279
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mIsInAbsWhitelist:Z

    .line 293
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSingleHeadsetConn:Z

    .line 296
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mIsBleAudioDevice:Z

    .line 311
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHDValue:Ljava/lang/String;

    .line 313
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAutoConnectPrefs:Ljava/util/HashMap;

    .line 338
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportOta:Ljava/lang/Boolean;

    .line 339
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAntiLost:Ljava/lang/Boolean;

    .line 340
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportInear:Ljava/lang/Boolean;

    .line 341
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportGameMode:Ljava/lang/Boolean;

    .line 342
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportEqualizer:Ljava/lang/Boolean;

    .line 343
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAnc:Ljava/lang/Boolean;

    .line 344
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mOtaIndicate:Ljava/lang/Boolean;

    .line 345
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAudioMode:Ljava/lang/Boolean;

    .line 346
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportSignleEarMode:Ljava/lang/Boolean;

    .line 347
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAutoAck:Ljava/lang/Boolean;

    .line 348
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportMultiConnect:Ljava/lang/Boolean;

    .line 349
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportGyr:Ljava/lang/Boolean;

    .line 350
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportCodecChange:Ljava/lang/Boolean;

    .line 351
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportWindNoise:Ljava/lang/Boolean;

    .line 353
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mShowAutoAck:Ljava/lang/Boolean;

    .line 354
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportSilentUpgrade:Ljava/lang/Boolean;

    .line 355
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSilentUpgradeStatus:Ljava/lang/Boolean;

    .line 357
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncLevelMap:Ljava/lang/String;

    .line 358
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncCached:Ljava/lang/String;

    .line 359
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWindNoiseAncLevel:Ljava/lang/String;

    .line 360
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInitedAtUi:Z

    const/4 v2, 0x3

    new-array v2, v2, [J

    .line 362
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHits:[J

    .line 363
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLocalExist:Z

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "miuibluetooth"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "OTA.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLocalFile:Ljava/lang/String;

    const/4 v2, 0x1

    .line 441
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isFirstOnResume:Z

    const/4 v3, 0x0

    .line 443
    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetBattery:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    .line 444
    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAnimation:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    .line 445
    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    .line 472
    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    .line 474
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVid:Ljava/lang/String;

    .line 475
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPid:Ljava/lang/String;

    .line 476
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mFwVersion:Ljava/lang/String;

    .line 477
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineVerion:Ljava/lang/String;

    .line 478
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineMessage:Ljava/lang/String;

    .line 479
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineUrl:Ljava/lang/String;

    const/4 v4, -0x1

    .line 480
    iput v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mFwVersionCode:I

    .line 481
    iput v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineVersionCode:I

    const/16 v4, 0x7633

    .line 482
    iput v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAncWindVersionCode:I

    .line 483
    iput v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVersionCodeLocal:I

    .line 485
    iput v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->MMA_STATUS_DISCONNECT:I

    .line 490
    iput v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->MMA_BLE_TYPE:I

    .line 491
    iput v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->MMA_SPP_TYPE:I

    .line 520
    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAccountResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    .line 521
    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mToken:Ljava/lang/String;

    .line 522
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mExecutor:Ljava/util/concurrent/Executor;

    .line 524
    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 527
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVersion:Ljava/lang/String;

    .line 530
    iput v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncPendingStatus:I

    .line 560
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportHeadTrackAlgo:Z

    .line 561
    new-instance v0, Lcom/android/settings/bluetooth/SpatialSoundWrapper;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/SpatialSoundWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSpatialSoundWrapper:Lcom/android/settings/bluetooth/SpatialSoundWrapper;

    const/16 v0, 0x1b

    .line 564
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->SET_LE_AUDIO_OPEN_STATUS:I

    .line 565
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isspatialenable:Z

    .line 566
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->issupportimmerviseaudio:Z

    .line 2139
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 2190
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$8;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 2280
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 2402
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$10;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$10;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothMultiA2DPStateResultReceiver:Landroid/content/BroadcastReceiver;

    .line 2509
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$11;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$11;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfpAudioStateReceiver:Landroid/content/BroadcastReceiver;

    .line 2689
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$12;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$12;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 2889
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$14;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$14;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRunnable:Ljava/lang/Runnable;

    .line 3030
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$17;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$17;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecConfigRun:Ljava/lang/Runnable;

    .line 3357
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$20;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$20;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDisableVolumeRun:Ljava/lang/Runnable;

    .line 3459
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$21;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$21;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDelayOpenAudioShareRunnable:Ljava/lang/Runnable;

    .line 3468
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$22;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$22;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAudioShareCheckA2DPActiveExistRunnable:Ljava/lang/Runnable;

    .line 4632
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncLock:Ljava/lang/Object;

    return-void
.end method

.method private addAudioShareConfigPreference()V
    .locals 1

    .line 3494
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createAudioShareConfigPreference()Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    move-result-object v0

    .line 3495
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAudioShareContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string p0, "MiuiHeadsetFragment"

    const-string v0, "mAudioShareContainer.addPreference"

    .line 3496
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addHdAudio()V
    .locals 2

    .line 1661
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->k73HDAudioEable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ldac_container"

    .line 1662
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    const-string v1, "hd_audio"

    .line 1663
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1665
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createHDAudioPreference()Landroidx/preference/CheckBoxPreference;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    .line 1668
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiHeadsetFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private addLatencyCodecPreference()V
    .locals 4

    .line 2645
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "latency_pre"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2646
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createLatencyCodecPreference()Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 2647
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 2648
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v3, "latency_val"

    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2649
    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2650
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2651
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createLatencyCodecPreference()Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 2652
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private addPreferencesForAbsoluteVolume()V
    .locals 1

    .line 3222
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createAbsoluteVolumePreference()Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 3223
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private addPreferencesForAudioShare()V
    .locals 9

    .line 3401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCachedDevice.isConnectedA2dpDevice() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCachedDevice.isActiveDevice = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 3404
    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3405
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "audio_share_switch_pre"

    .line 3406
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 3407
    sget v3, Lcom/android/settings/R$string;->bt_audio_share_switch_title:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 3408
    sget v3, Lcom/android/settings/R$string;->bt_audio_share_switch_summary:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v3, 0x0

    .line 3409
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 3410
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 3411
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v5, "AUDIO_SHARE_SWITCH"

    invoke-virtual {v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v4

    .line 3413
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "temp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 3415
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "miui_store_audio_share_device_address"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KEY_STORE_AUDIO_SHARE_DEVICE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_0

    .line 3417
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3419
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v5, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    const-string/jumbo v1, "pending"

    .line 3420
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3421
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3426
    :cond_1
    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 3428
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "miui_store_audio_share_window_pop"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3429
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "NeedPop"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 3430
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleDelayOpenAudioShare()V

    .line 3431
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HadPoped"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3434
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAudioShareContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 3435
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addAudioShareConfigPreference()V

    .line 3436
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleAudioShareConfigStatus(Z)V

    .line 3437
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleCheckA2DPActiveExist()V

    goto :goto_1

    .line 3439
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "audio_share_container"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3440
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAudioShareContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private addPreferencesForLeAudio()V
    .locals 1

    .line 5859
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createLeAudioPreference()Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 5860
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 5

    .line 1262
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1265
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PBAP Server"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1270
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/CheckBoxPreference;

    move-result-object v2

    .line 1271
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BCProfile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Device support ble audio !"

    const-string v3, "MiuiHeadsetFragment"

    .line 1272
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "persist.vendor.service.bt.lea_test"

    const/4 v4, 0x0

    .line 1273
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    const-string v1, "mBleAudioCategory not null add to show !"

    .line 1275
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1276
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1277
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1278
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_2
    const-string v1, "mBleAudioCategory is null do nothing and return!"

    .line 1280
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1284
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 1288
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1291
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1293
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 1294
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1298
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;

    move-result-object v0

    .line 1299
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1304
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/MapProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1306
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 1307
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1312
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->showOrHideProfileGroup()V

    return-void
.end method

.method private addPreferencesForSpecialCodec()V
    .locals 5

    .line 2560
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "LHDC_V3"

    .line 2561
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createSpecialCodecPreference(Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 2562
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 2563
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addLatencyCodecPreference()V

    goto/16 :goto_0

    .line 2564
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV2Device:Z

    if-eqz v0, :cond_1

    const-string v0, "LHDC_V2"

    .line 2565
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createSpecialCodecPreference(Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 2566
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 2567
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addLatencyCodecPreference()V

    goto :goto_0

    .line 2568
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV1Device:Z

    if-eqz v0, :cond_2

    const-string v0, "LHDC_V1"

    .line 2569
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createSpecialCodecPreference(Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 2570
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 2571
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addLatencyCodecPreference()V

    goto :goto_0

    .line 2572
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLDACDevice:Z

    if-eqz v0, :cond_3

    const-string v0, "LDAC"

    .line 2573
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createSpecialCodecPreference(Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 2574
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 2575
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAADevice:Z

    if-eqz v0, :cond_4

    .line 2576
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addLatencyCodecPreference()V

    goto :goto_0

    .line 2577
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAACDevice:Z

    if-eqz v0, :cond_5

    const-string v0, "AAC"

    .line 2578
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createSpecialCodecPreference(Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 2579
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 2580
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addLatencyCodecPreference()V

    goto :goto_0

    .line 2581
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSBCLlDevice:Z

    if-eqz v0, :cond_6

    .line 2582
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addLatencyCodecPreference()V

    goto :goto_0

    .line 2584
    :cond_6
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "ldac_container"

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mIsInAbsWhitelist:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mIsBleAudioDevice:Z

    if-nez v0, :cond_7

    .line 2586
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move v0, v1

    goto :goto_1

    :cond_7
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_a

    .line 2592
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2593
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "miui_store_audio_share_device_address"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "support_audio_share"

    .line 2594
    invoke-static {v3, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v0, :cond_a

    .line 2596
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v4, 0x2

    .line 2597
    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v3

    if-eq v3, v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2598
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "pending"

    .line 2599
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2600
    :cond_8
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ldac_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 2601
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v1, "latency_pre"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    .line 2603
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_9
    if-eqz p0, :cond_a

    .line 2605
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_a
    return-void
.end method

.method private addToWhiteList(Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    .line 3142
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToWhiteList(): whitelist before add is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", current dev is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 3145
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", prop is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiHeadsetFragment"

    .line 3144
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x5a

    if-lt v1, v3, :cond_0

    const/16 v1, 0x12

    .line 3149
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3153
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 3154
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 3155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3156
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    .line 3157
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addToWhiteList(): whitelist after add is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "addToWhiteList(): the device has already in whitelist,do nothing"

    .line 3161
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private askDisconnect()V
    .locals 4

    .line 5573
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 5574
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5575
    sget v2, Lcom/android/settings/R$string;->miheadset_disconnect_device:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5576
    new-instance v3, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$47;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$47;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    const/4 p0, 0x0

    .line 5593
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 5592
    invoke-static {v0, p0, v3, v1, v2}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 5

    .line 1827
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1828
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1829
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1830
    sget v1, Lcom/android/settings/R$string;->bluetooth_device:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1833
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1835
    sget v3, Lcom/android/settings/R$string;->bluetooth_disable_profile_title:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1836
    sget v4, Lcom/android/settings/R$string;->bluetooth_disable_profile_message:I

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1839
    new-instance v2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$5;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$5;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 1857
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDisconnectDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 1858
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 1857
    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDisconnectDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 1860
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$6;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$6;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private askUnpair()V
    .locals 4

    .line 5836
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 5837
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v1

    .line 5838
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5839
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5841
    :cond_0
    sget v2, Lcom/android/settings/R$string;->miheadset_ignore:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5842
    sget v3, Lcom/android/settings/R$string;->miheadset_unpair_device_text:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5843
    new-instance v3, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$48;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$48;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    const/4 p0, 0x0

    .line 5855
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 5854
    invoke-static {v0, p0, v3, v2, v1}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private broadcastMultiA2dpStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 3591
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MultiA2dp.ACTION.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.bluetooth"

    .line 3592
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 3593
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "MultiA2dp.EXTRA.STATE"

    .line 3594
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3596
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MiuiHeadsetFragment"

    const-string/jumbo p2, "send broadcast failed "

    .line 3598
    invoke-static {p1, p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private broadcastMultiA2dpVolumChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 3580
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MultiA2dp.ACTION.SETVOLUME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 3581
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "MultiA2dp.EXTRA.VOLUME_VALUE"

    .line 3582
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3584
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MiuiHeadsetFragment"

    const-string/jumbo p2, "send broadcast failed "

    .line 3586
    invoke-static {p1, p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private checkAISupport()Z
    .locals 6

    .line 5725
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5727
    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->getVersion(Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 5729
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAISupport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ai version= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiHeadsetFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "0201010000"

    .line 5730
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01DomesticHeadset(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    .line 5735
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73DomesticHeadset(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/32 v2, 0x1e1b5a08

    cmp-long p0, v0, v2

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    return v4

    .line 5737
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75DomesticHeadset(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/32 v2, 0x1e1b7178

    cmp-long p0, v0, v2

    if-ltz p0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    return v4

    .line 5739
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK77sDomesticHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v5

    .line 5742
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAISupport device not support:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 5731
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK76sHeadset(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-wide/32 v2, 0x1e1b7d30

    cmp-long p0, v0, v2

    if-ltz p0, :cond_8

    goto :goto_4

    :cond_8
    move v4, v5

    :goto_4
    return v4

    :cond_9
    const-wide/32 v2, 0x122e3882

    cmp-long p0, v0, v2

    if-ltz p0, :cond_a

    goto :goto_5

    :cond_a
    move v4, v5

    :goto_5
    return v4
.end method

.method private checkPhoneCodecEnable(Ljava/lang/String;)Z
    .locals 6

    const-string/jumbo v0, "ro.product.device"

    .line 5747
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPhoneCodecEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiHeadsetFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5749
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 5750
    :cond_0
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK77sHeadset(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    const-string/jumbo v4, "vendor"

    const-string/jumbo v5, "qcom"

    if-eqz v1, :cond_3

    .line 5751
    invoke-static {v4}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    .line 5755
    :cond_1
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK77sDomesticHeadset(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 5756
    sget-object p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->K77S_CODEC_ENABLE_PRODUCTS:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->K77S_GL_CODEC_ENABLE_PRODUCTS:[Ljava/lang/String;

    .line 5757
    :goto_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 5759
    :cond_3
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5762
    invoke-static {v4}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5763
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v3

    .line 5774
    :cond_5
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v2

    .line 5777
    :cond_6
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK71Headset(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 5778
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK71HeadsetGlobal(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    .line 5783
    :cond_7
    sget-object p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->K71_CODEC_ENALBE_PRODUCTS:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 5780
    :cond_8
    :goto_1
    invoke-static {v4}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private closeAbsVolume()V
    .locals 3

    .line 3319
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "abs_volume_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    const-string v1, "MiuiHeadsetFragment"

    const-string/jumbo v2, "onAbsVolumePrefClicked  set false"

    .line 3322
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAudioStreamMax:I

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    const/4 v1, 0x0

    .line 3328
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 3329
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleDisableVolume()V

    .line 3330
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v0, "ABSOLUTEVOLUME"

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private closeLeAudio()V
    .locals 10

    .line 6111
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "le_audio_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 6113
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "abs_volume_pre"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_10

    .line 6117
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v2

    const-string v3, "FF01020103020400FF"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "MiuiHeadsetFragment"

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6119
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-nez v0, :cond_0

    .line 6120
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 6121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mService is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6124
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v2, 0x1b

    invoke-interface {v0, v2, v3, v1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    const-string v0, "close le audio"

    .line 6125
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6134
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v4

    move v2, v1

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 6135
    iget-object v7, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 6136
    instance-of v8, v3, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    const/4 v9, 0x2

    if-eqz v8, :cond_4

    const-string v8, "Set hfp enable"

    .line 6137
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6138
    invoke-interface {v3, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-ne v8, v9, :cond_3

    move v1, v5

    .line 6141
    :cond_3
    invoke-interface {v3, v7, v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_1

    .line 6142
    :cond_4
    instance-of v8, v3, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v8, :cond_2

    const-string v8, "Set a2dp enable"

    .line 6143
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6144
    invoke-interface {v3, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-ne v8, v9, :cond_5

    move v2, v5

    .line 6147
    :cond_5
    invoke-interface {v3, v7, v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_1

    .line 6150
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLeAudioPreNegativeClick ,isHfpConnected = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isA2dpConnected = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_7

    if-eqz v2, :cond_c

    .line 6154
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->findLeAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_8

    const-string v2, ";"

    .line 6158
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6159
    array-length v2, v0

    if-le v2, v5, :cond_8

    .line 6160
    aget-object v2, v0, v4

    .line 6161
    aget-object v0, v0, v5

    goto :goto_2

    :cond_8
    move-object v0, v1

    move-object v2, v0

    .line 6164
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onLeAudioPreNegativeClick,le1Str = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",le2Str = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6165
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 6166
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 6167
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 6168
    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/16 v2, 0xb

    const/16 v3, 0xc

    if-eqz v1, :cond_a

    .line 6171
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    if-ne v5, v3, :cond_9

    .line 6174
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v5, :cond_a

    .line 6175
    invoke-virtual {v5, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "disconnect to LE1"

    .line 6177
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6179
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->disconnect()I

    goto :goto_3

    :cond_9
    if-ne v5, v2, :cond_a

    const-string v5, "Cancel bond to LE1"

    .line 6183
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6184
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    :cond_a
    :goto_3
    if-eqz v0, :cond_c

    .line 6190
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v3, :cond_b

    .line 6192
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v1, :cond_c

    .line 6193
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "disconnect to LE2"

    .line 6195
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6196
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->disconnect()I

    goto :goto_4

    :cond_b
    if-ne v1, v2, :cond_c

    const-string v1, "Cancel bond to LE2"

    .line 6200
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6201
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 6208
    :cond_c
    :goto_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setLeAudioStatus(I)V

    return-void

    .line 6214
    :cond_d
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_e

    .line 6215
    iget-object v7, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    const-string v8, "+XIAOMI"

    invoke-virtual {v2, v7, v8, v3}, Landroid/bluetooth/BluetoothHeadset;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_e
    const-string/jumbo v2, "onLeAudioPrefClicked  set false"

    .line 6218
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6220
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v1, :cond_f

    .line 6221
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAbsAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 6222
    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 6224
    :cond_f
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "LEAUDIO"

    invoke-virtual {v0, v1, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 6226
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->disconnectLeAudio()V

    :cond_10
    return-void
.end method

.method private closeProfileProxy(I)V
    .locals 4

    .line 2112
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiHeadsetFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2129
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2130
    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    goto :goto_0

    .line 2124
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2125
    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    .line 2117
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2118
    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 2119
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2120
    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    :cond_3
    :goto_0
    return-void
.end method

.method private createAbsoluteVolumePreference()Landroidx/preference/CheckBoxPreference;
    .locals 8

    const-string v0, "MiuiHeadsetFragment"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "create createAbsoluteVolumePreference"

    .line 3229
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    new-instance v2, Landroidx/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "abs_volume_pre"

    .line 3231
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 3232
    sget v3, Lcom/android/settings/R$string;->bt_absVolume_pre_title:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 3233
    sget v3, Lcom/android/settings/R$string;->bt_absVolume_summary:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v3, 0x0

    .line 3234
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 3235
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 3236
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v5, "ABSOLUTEVOLUME"

    invoke-virtual {v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 3239
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 3240
    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 3242
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAbsVolumePrefClicked mBluetoothA2dp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, p0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3244
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 3246
    :cond_2
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v2

    :catch_0
    move-exception p0

    .line 3250
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private createAudioShareConfigPreference()Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;
    .locals 9

    .line 3500
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;-><init>(Landroid/content/Context;)V

    .line 3501
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "audio_share_switch_pre"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    const-string v2, "audio_share_volume_pre"

    .line 3503
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 3504
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 3505
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    const/16 v3, 0x64

    .line 3506
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 3507
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 3509
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "miui_bluetooth_audio_share_volume"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MiuiHeadsetFragment"

    const/16 v6, 0x32

    if-nez v4, :cond_0

    goto :goto_0

    .line 3514
    :cond_0
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 3516
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Integer.parseInt E: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KEY_AUDIO_SHARE_VOLUME_PRE = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    invoke-virtual {v0, v6}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 3521
    sget v4, Lcom/android/settings/R$drawable;->ic_bt_headphones_a2dp_bonded:I

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setIcon(I)V

    .line 3522
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    const/16 v2, 0x50

    .line 3523
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 3524
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 3525
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 3526
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$23;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$23;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/content/Context;Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setStopTrackingTouchListener(Lcom/android/settings/widget/SeekBarPreference$StopTrackingTouchListener;)V

    return-object v0
.end method

.method private createDialog()V
    .locals 4

    .line 2940
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ldac_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 2941
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$15;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;)V

    .line 2979
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 2980
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2983
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV2Device:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV1Device:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2986
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLDACDevice:Z

    if-eqz v2, :cond_1

    .line 2987
    sget v2, Lcom/android/settings/R$string;->bt_ldac_open_dialog_title:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 2988
    sget v2, Lcom/android/settings/R$string;->bt_ldac_open_dialog_summary:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 2990
    :cond_1
    sget v2, Lcom/android/settings/R$string;->bt_aac_open_dialog_title:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 2991
    sget v2, Lcom/android/settings/R$string;->bt_aac_open_dialog_summary:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 2984
    :cond_2
    :goto_0
    sget v2, Lcom/android/settings/R$string;->bt_lhdc_open_dialog_title:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 2985
    sget v2, Lcom/android/settings/R$string;->bt_lhdc_open_dialog_summary:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    :goto_1
    const/4 v2, 0x1

    .line 2994
    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x104000a    # @android:string/ok

    .line 2995
    invoke-virtual {v3, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 2996
    invoke-virtual {v3, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 2997
    invoke-virtual {v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 2998
    new-instance v2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$16;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3019
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createDialogForLeAudio(Landroidx/preference/CheckBoxPreference;)V
    .locals 3

    .line 5923
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "le_audio_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 5925
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "abs_volume_pre"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    .line 5926
    new-instance v2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$49;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;Landroidx/preference/CheckBoxPreference;Landroidx/preference/CheckBoxPreference;)V

    .line 6084
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 6085
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6087
    sget p1, Lcom/android/settings/R$string;->bt_leaudio_open_dialog_title:I

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 6088
    sget p1, Lcom/android/settings/R$string;->bt_leaudio_open_dialog_summary:I

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 6090
    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const p1, 0x104000a    # @android:string/ok

    .line 6091
    invoke-virtual {v1, p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 6092
    invoke-virtual {v1, p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 6093
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 6094
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$50;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$50;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6106
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createDialogForOpenAbsVolume()V
    .locals 4

    .line 3282
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "abs_volume_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 3283
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$18;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$18;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;)V

    .line 3296
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 3297
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3299
    sget v2, Lcom/android/settings/R$string;->bt_absVolume_open_dialog_title:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3300
    sget v2, Lcom/android/settings/R$string;->bt_absVolume_open_dialog_summary:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v2, 0x1

    .line 3302
    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x104000a    # @android:string/ok

    .line 3303
    invoke-virtual {v3, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 3304
    invoke-virtual {v3, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3305
    invoke-virtual {v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3306
    new-instance v2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$19;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$19;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroidx/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3314
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createHDAudioPreference()Landroidx/preference/CheckBoxPreference;
    .locals 4

    .line 1676
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "hd_audio"

    .line 1677
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1678
    sget v1, Lcom/android/settings/R$string;->miheadset_hd_audio_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1679
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->miheadset_hd_audio_summary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x60

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1680
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 1681
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    const/4 v2, 0x2

    .line 1682
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1683
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1684
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "LHDC_V3"

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    .line 1685
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1686
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-object v0
.end method

.method private createLatencyCodecPreference()Landroidx/preference/CheckBoxPreference;
    .locals 7

    .line 2657
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "latency_pre"

    .line 2658
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 2659
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSBCLlDevice:Z

    if-eqz v2, :cond_0

    .line 2660
    sget v2, Lcom/android/settings/R$string;->codec_low_latency_zmi_title:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 2662
    :cond_0
    sget v2, Lcom/android/settings/R$string;->codec_low_latency_title:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 2664
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v3, "aptxadaptive_video"

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2665
    sget v2, Lcom/android/settings/R$string;->codec_low_latency_video_summary:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 2666
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSBCLlDevice:Z

    if-eqz v2, :cond_2

    .line 2667
    sget v2, Lcom/android/settings/R$string;->codec_low_latency_zmi_summary:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 2669
    :cond_2
    sget v2, Lcom/android/settings/R$string;->codec_low_latency_summary:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    const/4 v2, 0x0

    .line 2671
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    const/4 v4, 0x3

    .line 2672
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 2673
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2675
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v5, "LHDC_V3"

    invoke-virtual {v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v4

    const-string v5, "latency_val"

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v6, "LHDC_V2"

    .line 2676
    invoke-virtual {v4, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v6, "LHDC_V1"

    .line 2677
    invoke-virtual {v4, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 2681
    :cond_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4

    .line 2678
    :cond_5
    :goto_3
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2679
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2683
    :goto_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 2684
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v5, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_6
    return-object v0
.end method

.method private createLeAudioPreference()Landroidx/preference/CheckBoxPreference;
    .locals 5

    .line 5864
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "le_audio_pre"

    .line 5865
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 5866
    sget v1, Lcom/android/settings/R$string;->bt_leaudio_pre_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 5867
    sget v1, Lcom/android/settings/R$string;->bt_leaudio_summary:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v1, 0x0

    .line 5868
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 5869
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 5870
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5871
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 5873
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LEAUDIO"

    invoke-virtual {v2, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 5875
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "miui_store_audio_share_device_address"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5876
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p0, "MiuiHeadsetFragment"

    const-string v1, " createLeAudioPreference"

    .line 5877
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/CheckBoxPreference;
    .locals 2

    .line 1418
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1419
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1420
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v1, 0x0

    .line 1421
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 1422
    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->getProfilePreferenceIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1423
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1435
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1437
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshProfilePreference(Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-object v0
.end method

.method private createSpecialCodecPreference(Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;
    .locals 8

    .line 2611
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "ldac_pre"

    .line 2612
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v1, "LDAC"

    .line 2613
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "LHDC_V1"

    const-string v4, "LHDC_V2"

    const-string v5, "LHDC_V3"

    if-eqz v2, :cond_0

    .line 2614
    sget v2, Lcom/android/settings/R$string;->bt_ldac_pre_title:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 2615
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2616
    sget v2, Lcom/android/settings/R$string;->bt_lhdc_pre_title:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 2617
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2618
    sget v2, Lcom/android/settings/R$string;->bt_lhdc_pre_title:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 2619
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2620
    sget v2, Lcom/android/settings/R$string;->bt_lhdc_pre_title:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 2622
    :cond_3
    sget v2, Lcom/android/settings/R$string;->bt_aac_pre_title:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 2624
    :goto_0
    sget v2, Lcom/android/settings/R$string;->bt_pre_summary:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v2, 0x0

    .line 2625
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 2626
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2628
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    .line 2629
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v7, :cond_4

    move v2, v7

    :cond_4
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 2630
    :cond_5
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2631
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v7, :cond_6

    move v2, v7

    :cond_6
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 2632
    :cond_7
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2633
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v7, :cond_8

    move v2, v7

    :cond_8
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 2634
    :cond_9
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2635
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v7, :cond_a

    move v2, v7

    :cond_a
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 2637
    :cond_b
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string p1, "AAC"

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v7, :cond_c

    move v2, v7

    :cond_c
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    return-object v0
.end method

.method private delFromWhiteList(Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    .line 3167
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3168
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    const-string v4, "MiuiHeadsetFragment"

    if-ge v2, v3, :cond_0

    const-string p0, "delFromWhiteList(): no valid device in white list"

    .line 3169
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3172
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delFromWhiteList(): whitelist before del is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", current dev is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 3173
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", prop is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3172
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 3177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ";"

    .line 3178
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delFromWhiteList(): whitelist after del is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private delFromWhiteListForAbsoluteVolume(Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    .line 3366
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3367
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    const-string v4, "MiuiHeadsetFragment"

    if-ge v2, v3, :cond_0

    const-string p0, "delFromWhiteList(): no valid device in white list"

    .line 3368
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3371
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delFromWhiteList(): whitelist before del is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", current dev is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 3372
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", prop is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3371
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    .line 3376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ";"

    .line 3377
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3378
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3379
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delFromWhiteList(): whitelist after del is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private deleteOnSavedDevice()V
    .locals 2

    .line 5830
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 5831
    new-instance v1, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;-><init>(Landroid/content/Context;)V

    .line 5832
    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/MiuiOnSavedDeviceDataUtils;->deleteDeviceData(Ljava/lang/String;)V

    return-void
.end method

.method private deleteSaveMacForLeAudio()V
    .locals 7

    .line 6378
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6380
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "three_mac_for_ble_f"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6382
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6383
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x36

    rem-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 6385
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 6386
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    if-eqz p0, :cond_1

    add-int/lit8 v5, p0, 0x36

    .line 6388
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 6389
    invoke-virtual {v1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6391
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6393
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateValue is"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MiuiHeadsetFragment"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6394
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method private disconnectLeAudio()V
    .locals 5

    .line 6343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6346
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "three_mac_for_ble_f"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFragment"

    if-eqz v0, :cond_0

    .line 6348
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 6349
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v2, 0x35

    if-lt v3, v4, :cond_0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    .line 6350
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6351
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startIndex is "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value is "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, v2, 0x12

    add-int/lit8 v3, v2, 0x23

    .line 6352
    invoke-virtual {v0, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, 0x24

    .line 6353
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leStr1 is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " leStr2 is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "00:00:00:00:00:00"

    move-object v0, p0

    .line 6360
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6362
    invoke-virtual {v2, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 6363
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/16 v2, 0xa

    if-eqz p0, :cond_1

    .line 6364
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 6366
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->disconnect()I

    const-string p0, "disconnect leStr1"

    .line 6367
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    .line 6369
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    if-eq p0, v2, :cond_2

    .line 6371
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->disconnect()I

    const-string p0, "disconnect leStr2"

    .line 6372
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private getAccountInfo(I)V
    .locals 8

    const-string v0, ""

    .line 5308
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetOta;->isNewOtaSever(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "INTL"

    const-string/jumbo v3, "network is not active"

    const/4 v4, 0x0

    const/16 v5, 0x64

    const-string v6, "MiuiHeadsetFragment"

    if-eqz v1, :cond_1

    .line 5309
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isNetValidated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5310
    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5313
    :cond_0
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mToken:Ljava/lang/String;

    .line 5314
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    .line 5315
    invoke-virtual {p0, v5, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 5314
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string v1, "CN"

    .line 5318
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getRegion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5319
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isNetValidated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5320
    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5323
    :cond_2
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mToken:Ljava/lang/String;

    .line 5324
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    .line 5325
    invoke-virtual {p0, v5, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 5324
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 5328
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz v1, :cond_6

    .line 5330
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v7, 0x68

    invoke-interface {v1, v7, v0, v2}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5339
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5341
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.xiaomi.bluetooth.headset.account"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "clean account set"

    .line 5344
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    :goto_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    .line 5347
    invoke-virtual {p0, v5, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 5346
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 5351
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isNetValidated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5352
    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5356
    :cond_5
    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    invoke-direct {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;-><init>()V

    sget-wide v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->APPID:J

    .line 5358
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setAppId(J)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    sget-object v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->REDIRECTURL:Ljava/lang/String;

    .line 5359
    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setRedirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    const/4 v1, 0x1

    .line 5360
    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->setSkipConfirm(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 5361
    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetAccessToken(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object v0

    .line 5362
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->waitAndShowFutureResult(Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;I)V

    return-void

    :cond_6
    const-string p0, "error service is null when ota"

    .line 5336
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getCodecConfig(Landroid/bluetooth/BluetoothA2dp;II)Landroid/bluetooth/BluetoothCodecConfig;
    .locals 5

    .line 3101
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "MiuiHeadsetFragment"

    const-string p2, "getCodecConfig(): BluetoothCodecStatus is null"

    .line 3103
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 3106
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothCodecConfig;

    .line 3107
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    if-ne p2, v1, :cond_1

    const/16 p1, 0xd

    if-eq p2, p1, :cond_2

    const/16 p1, 0xc

    if-eq p2, p1, :cond_2

    const/16 p1, 0xe

    if-ne p2, p1, :cond_3

    .line 3111
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific3()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_3

    .line 3112
    new-instance p1, Landroid/bluetooth/BluetoothCodecConfig$Builder;

    invoke-direct {p1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;-><init>()V

    .line 3113
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecType(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3114
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecPriority(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3115
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setSampleRate(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3116
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setBitsPerSample(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3117
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setChannelMode(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3118
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific1(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3119
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific2()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific2(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 3120
    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific3(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3121
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific4()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific4(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3122
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->build()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    goto :goto_0

    .line 3124
    :cond_3
    new-instance p1, Landroid/bluetooth/BluetoothCodecConfig$Builder;

    invoke-direct {p1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;-><init>()V

    .line 3125
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecType(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3126
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecPriority(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3127
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setSampleRate(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3128
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setBitsPerSample(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3129
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setChannelMode(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3130
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific1(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3131
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific2()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific2(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3132
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific3()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific3(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3133
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific4()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific4(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 3134
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->build()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    return-object p1
.end method

.method private getDefaultAncLevel(I)Ljava/lang/String;
    .locals 6

    const-string v0, "00"

    const-string v1, "0"

    .line 3762
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportWindNoise(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWindNoiseAncLevel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWindNoiseAncLevel:Ljava/lang/String;

    const-string v4, "01"

    .line 3763
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne p1, v3, :cond_0

    const-string p0, "0104"

    return-object p0

    .line 3767
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncLevelMap:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "0102"

    if-nez v2, :cond_5

    .line 3768
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncLevelMap:Ljava/lang/String;

    const-string v5, "\\;"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3769
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 3770
    invoke-static {v5}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS02Headset(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3771
    :cond_1
    aput-object v4, v2, v3

    :cond_2
    if-ne p1, v3, :cond_3

    .line 3780
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 3781
    invoke-static {p0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v4

    .line 3784
    :cond_3
    array-length p0, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_7

    aget-object v4, v2, v3

    .line 3785
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-object v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-ne p1, v3, :cond_6

    .line 3774
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    if-eqz p0, :cond_6

    .line 3775
    invoke-static {p0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v4

    .line 3778
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "MiuiHeadsetFragment"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getProfileOf(Landroidx/preference/Preference;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .locals 2

    .line 2000
    instance-of v0, p1, Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2003
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 2004
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 2007
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 0

    .line 2014
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result p0

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p0, p1

    return p0
.end method

.method private getProfileProxy()V
    .locals 4

    .line 2102
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2103
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method public static getVersion(Landroid/content/Context;)J
    .locals 2

    .line 5564
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.miui.voiceassist"

    const/4 v1, 0x0

    .line 5565
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 5566
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 4992
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    const-string v0, "com.xiaomi"

    .line 4993
    invoke-virtual {p1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    .line 4994
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 p0, 0x0

    .line 4995
    aget-object p0, p1, p0

    :cond_0
    return-object p0

    :cond_1
    const-string p1, "MiuiHeadsetFragment"

    const-string v0, "context is null to get account"

    .line 4999
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private gotoFitnessFragment()V
    .locals 1

    .line 5521
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;-><init>()V

    .line 5522
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->changeFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private gotoKeyConfigFragment()V
    .locals 4

    .line 5525
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;-><init>()V

    .line 5526
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_1

    .line 5527
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5528
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 5529
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "device_connected"

    .line 5528
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5530
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5532
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->changeFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private handleAudioShareConfigStatus(Z)V
    .locals 1

    .line 3571
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v0, "audio_share_volume_pre"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    if-eqz p0, :cond_0

    .line 3573
    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "MiuiHeadsetFragment"

    const-string p1, "BluetoothVolumeSeekBarPreference == null"

    .line 3575
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleAudioShareVolume()V
    .locals 3

    .line 3552
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "audio_share_volume_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    .line 3553
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v0

    .line 3554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeekBarPreference value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiHeadsetFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->broadcastMultiA2dpVolumChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 3556
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 3557
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "miui_bluetooth_audio_share_volume"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private handleCheckA2DPActiveExist()V
    .locals 3

    .line 3446
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3447
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    .line 3449
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAudioShareCheckA2DPActiveExistRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleCheckBoxPreferenceEnabled(Landroidx/preference/CheckBoxPreference;)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 2854
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2855
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2856
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    :cond_0
    const-string v0, "le_audio_pre"

    .line 2858
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0x7d0

    if-eqz p1, :cond_1

    .line 2859
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 2860
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLC3Switching:Z

    .line 2861
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$13;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$13;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "MiuiHeadsetFragment"

    const-string p1, "leAudioPre: Delay 2s to enable LC3 Pref"

    .line 2882
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2884
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private handleConnectMmaFailed(Ljava/lang/String;)V
    .locals 2

    .line 4797
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4798
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$36;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private handleDelayOpenAudioShare()V
    .locals 3

    .line 3453
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3454
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    .line 3456
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDelayOpenAudioShareRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleDisableVolume()V
    .locals 3

    .line 3351
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3352
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    .line 3354
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDisableVolumeRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleHdAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1698
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1699
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1702
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$4;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$4;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private handleHeadSetConnect()V
    .locals 3

    .line 3024
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3025
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    .line 3027
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecConfigRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleMultiA2DPState(I)V
    .locals 9

    .line 2440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMultiA2DPState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    .line 2445
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "audio_share_switch_pre"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    .line 2447
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "audio_share_volume_pre"

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    .line 2449
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "ldac_pre"

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/CheckBoxPreference;

    .line 2451
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "latency_pre"

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/CheckBoxPreference;

    const-string v7, "AUDIO_SHARE_SWITCH"

    const/4 v8, 0x0

    if-ne p1, v0, :cond_7

    if-eqz v2, :cond_1

    .line 2455
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2456
    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2457
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, v7, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_1
    if-eqz v3, :cond_2

    .line 2460
    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 2461
    invoke-virtual {v3, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 2463
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 2464
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "miui_store_audio_share_device_address"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v5, :cond_4

    .line 2465
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v2

    if-eq v2, v0, :cond_3

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2466
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2467
    :cond_3
    invoke-virtual {v5, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    if-eqz v6, :cond_5

    .line 2470
    invoke-virtual {v6, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2472
    :cond_5
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->configCodec:Lmiuix/preference/DropDownPreference;

    if-eqz p0, :cond_6

    .line 2473
    invoke-virtual {p0, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_6
    const-string p0, "handleMultiA2DPState enabled"

    .line 2475
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    if-nez p1, :cond_f

    if-eqz v2, :cond_8

    .line 2478
    invoke-virtual {v2, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2479
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2480
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, v7, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_8
    if-eqz v3, :cond_9

    const/16 p1, 0x32

    .line 2483
    invoke-virtual {v3, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 2484
    invoke-virtual {v3, v8}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 2485
    invoke-virtual {v3, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 2486
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, v4, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_9
    if-eqz v5, :cond_a

    .line 2489
    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2492
    :cond_a
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    if-eqz p1, :cond_b

    .line 2493
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "LHDC_V3"

    invoke-virtual {p1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_b

    move v8, v0

    .line 2495
    :cond_b
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->configCodec:Lmiuix/preference/DropDownPreference;

    if-eqz p1, :cond_c

    xor-int/lit8 v2, v8, 0x1

    .line 2496
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_c
    if-eqz v6, :cond_e

    .line 2499
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    if-eqz p0, :cond_d

    .line 2500
    invoke-virtual {v6, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 2502
    :cond_d
    invoke-virtual {v6, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_e
    :goto_0
    const-string p0, "handleMultiA2DPState disabled"

    .line 2505
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_1
    return-void
.end method

.method private handleMultiLeDevices()V
    .locals 11

    .line 6234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6236
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "three_mac_for_ble_f"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiHeadsetFragment"

    if-eqz v1, :cond_c

    .line 6237
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x36

    if-gt v3, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x0

    .line 6241
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/2addr v5, v4

    if-ge v3, v5, :cond_b

    .line 6242
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    mul-int/lit8 v7, v6, 0x36

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_1

    goto/16 :goto_3

    :cond_1
    mul-int/lit8 v3, v3, 0x36

    add-int/lit8 v5, v3, 0x11

    .line 6243
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 6244
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x11

    if-eq v7, v8, :cond_2

    goto/16 :goto_3

    .line 6245
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMultiLeDevices brMac is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6246
    iget-object v7, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v3, "ignore oneself"

    .line 6247
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 6250
    :cond_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 6253
    invoke-virtual {v7, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_4

    goto/16 :goto_3

    .line 6255
    :cond_4
    iget-object v8, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 6256
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v8

    .line 6257
    invoke-virtual {v8, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v8

    if-nez v8, :cond_5

    const-string v8, "mCachedDevice is null and new one "

    .line 6259
    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6260
    new-instance v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v9, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-direct {v8, v0, v9, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 6262
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mLeCachedDevice mac is "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v3, 0x12

    add-int/lit8 v9, v3, 0x24

    add-int/lit8 v10, v9, -0x1

    .line 6266
    invoke-virtual {v1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x36

    add-int/lit8 v3, v3, -0x1

    .line 6267
    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 6268
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMultiLeDevices leStr1 is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " leStr2 is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6269
    invoke-virtual {v7, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 6270
    invoke-virtual {v7, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/16 v7, 0xb

    const/16 v9, 0xa

    if-eqz v5, :cond_7

    .line 6271
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v10

    if-eq v10, v9, :cond_7

    .line 6272
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v10

    if-ne v10, v7, :cond_6

    .line 6273
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    goto :goto_1

    .line 6275
    :cond_6
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    :goto_1
    const-string v5, "handleMultiLeDevices remove bond leStr1"

    .line 6277
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v3, :cond_9

    .line 6279
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    if-eq v5, v9, :cond_9

    .line 6280
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    if-ne v5, v7, :cond_8

    .line 6281
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    goto :goto_2

    .line 6283
    :cond_8
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    :goto_2
    const-string v3, "handleMultiLeDevices remove bond leStr2"

    .line 6285
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v3, "LEAUDIO"

    const/4 v5, 0x2

    .line 6287
    invoke-virtual {v8, v3, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_a
    :goto_3
    move v3, v6

    goto/16 :goto_0

    :cond_b
    return-void

    :cond_c
    :goto_4
    const-string p0, "handleMultiLeDevices is not need"

    .line 6238
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleOtaInfo(Ljava/lang/String;)V
    .locals 2

    .line 4864
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4865
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$37;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4904
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static hexToBinaryString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    .line 5247
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x2

    .line 5248
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    .line 5249
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 5250
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_0

    .line 5251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5254
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hexToBinaryString error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiuiHeadsetFragment"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private initButton()V
    .locals 5

    .line 4210
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4211
    sget v1, Lcom/android/settings/R$id;->button_modify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 4212
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->button_delete:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 4213
    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v2, v0, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 4214
    filled-new-array {v1}, [Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v2

    new-array v3, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v2, v1, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 4215
    new-instance v2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$27;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$27;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4224
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$28;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initDeviceName()V
    .locals 2

    .line 3655
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3656
    sget v1, Lcom/android/settings/R$id;->deviceName:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3658
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private initResource()V
    .locals 8

    const-string v0, "MiuiHeadsetFragment"

    const-string v1, "Ineartest"

    .line 4248
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInearTest:Landroidx/preference/CheckBoxPreference;

    const-string v1, "AutoAckMode"

    .line 4250
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAutoAck:Landroidx/preference/CheckBoxPreference;

    const-string v1, "MultiConnectMode"

    .line 4251
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMultiConnect:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v1, "notificationdisplay"

    .line 4252
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mNotifiDisplay:Landroidx/preference/CheckBoxPreference;

    const-string v1, "codecType"

    .line 4254
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->configCodec:Lmiuix/preference/DropDownPreference;

    const-string/jumbo v1, "silentUpgrade"

    .line 4255
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSilentUpgrade:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v1, "virtualSurroundSound"

    .line 4256
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVirtualSurroundSound:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    .line 4259
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4261
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "headset_notification_feature_enable"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4263
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "cloud data switch of notification is disenable! "

    .line 4264
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4265
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mNotifiDisplay:Landroidx/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "switchConfig"

    .line 4266
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 4268
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_bt_display_switch_is_enable"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4270
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mNotifiDisplay:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 4271
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mNotifiDisplay:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4272
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.bluetooth.headset.notification"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4274
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "Device"

    .line 4275
    iget-object v7, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v6, "btData"

    .line 4276
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4277
    invoke-virtual {v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4278
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mNotifiDisplay:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 4280
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mNotifiDisplay:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v2, 0x0

    .line 4281
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mNotifiDisplay:Landroidx/preference/CheckBoxPreference;

    goto :goto_0

    .line 4285
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cloud data switch of notification is enable! "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cloud data switch of notification get faied "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInearTest:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 4293
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4294
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInearTest:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 4296
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAutoAck:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 4297
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4298
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAutoAck:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 4300
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMultiConnect:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 4301
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4303
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSilentUpgrade:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 4304
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4305
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSilentUpgrade:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 4307
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVirtualSurroundSound:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    .line 4308
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4309
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVirtualSurroundSound:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->virtual_surround_sound_switch_summary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x4014666666666666L    # 5.1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 4310
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVirtualSurroundSound:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 4315
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->configCodec:Lmiuix/preference/DropDownPreference;

    if-eqz v0, :cond_8

    .line 4316
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4319
    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 4320
    sget v2, Lcom/android/settings/R$id;->otaLayout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const-string v0, "-1"

    .line 4321
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncUi(Ljava/lang/String;Z)V

    .line 4323
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->notificationSwitchInit()V

    return-void
.end method

.method private initSpatialAudioPreferences()V
    .locals 9

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnable3DSurround "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSpatialSoundWrapper:Lcom/android/settings/bluetooth/SpatialSoundWrapper;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->isEnable3DSurround()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportHeadTrackAlgoPhone "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSpatialSoundWrapper:Lcom/android/settings/bluetooth/SpatialSoundWrapper;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->isSupportHeadTrackAlgoPhone()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhoneSupportSurroundAlgo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSpatialSoundWrapper:Lcom/android/settings/bluetooth/SpatialSoundWrapper;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->isPhoneSupportSurroundAlgo()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportSpatialAndSurround "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSpatialSoundWrapper:Lcom/android/settings/bluetooth/SpatialSoundWrapper;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->isSupportSpatialAndSurround()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v2, "spatial_audio_root_key"

    .line 1334
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->spaceAudioPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const-string/jumbo v2, "surround_sound_3d_key"

    .line 1336
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    const-string v3, "headset_head_tracking_key"

    .line 1338
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->headTrackingCheckBox:Landroidx/preference/CheckBoxPreference;

    const-string v3, "headset_immersion_audio_key"

    .line 1340
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->immersionAudioCheckBox:Landroidx/preference/CheckBoxPreference;

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "android.media.Spatializer"

    .line 1342
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1343
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getSpatializer"

    new-array v8, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "getImmersiveAudioLevel"

    new-array v8, v4, [Ljava/lang/Class;

    .line 1344
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1345
    iget-object v7, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAbsAudioManager:Landroid/media/AudioManager;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 1346
    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->issupportimmerviseaudio:Z

    .line 1347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "issupportimmerviseaudio is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->issupportimmerviseaudio:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget-boolean v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->issupportimmerviseaudio:Z

    if-eqz v5, :cond_1

    .line 1349
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->immersionAudioCheckBox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 1351
    :cond_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->immersionAudioCheckBox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v5, "ERROR invoke Immersive"

    .line 1354
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :goto_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSpatialSoundWrapper:Lcom/android/settings/bluetooth/SpatialSoundWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportGyr:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/bluetooth/SpatialSoundWrapper;->getHeadTrackSummary(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1358
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->spaceAudioPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1359
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportHeadTrackAlgo:Z

    return-void

    .line 1362
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportHeadTrackAlgo:Z

    .line 1364
    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->spaceAudioPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1365
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->issupportimmerviseaudio:Z

    if-eqz v2, :cond_4

    .line 1366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "spatial_audio_feature_enable"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v4, v3

    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isspatialenable:Z

    goto :goto_2

    .line 1368
    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isspatialenable:Z

    .line 1369
    :goto_2
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isspatialenable:Z

    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isOffloadCodecInUse()Z

    move-result v4

    and-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isspatialenable:Z

    .line 1370
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->immersionAudioCheckBox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1371
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->immersionAudioCheckBox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1372
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->headTrackingCheckBox:Landroidx/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isspatialenable:Z

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "headTrackSummary= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->headTrackingCheckBox:Landroidx/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$1;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1389
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->immersionAudioCheckBox:Landroidx/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$2;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/media/AudioManager;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initTws()V
    .locals 11

    .line 805
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    if-nez v0, :cond_0

    .line 806
    new-instance v0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 807
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v7, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    iget-object v8, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v9, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    iget-object v10, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/os/Handler;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    .line 810
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->setRenameOnclick()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiHeadsetFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isAudioOn()Z
    .locals 4

    const/4 v0, 0x0

    .line 2269
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 2271
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isAudioOn"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    new-array v2, v0, [Ljava/lang/Object;

    .line 2272
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2270
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2275
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v0
.end method

.method private isDeviceInListForAbsoluteVolume(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string p0, ""

    .line 3337
    invoke-static {p2, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3338
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    const-string v1, "MiuiHeadsetFragment"

    if-ne p2, v0, :cond_0

    .line 3340
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t find "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3343
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "device "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is in list "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private isLeAudioBrDevice(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "MiuiHeadsetFragment"

    const/4 v1, 0x0

    .line 6417
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 6418
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    return v1

    .line 6425
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 6426
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "three_mac_for_ble_f"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6427
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "device isLeAudioBrDevice"

    .line 6428
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Lc3TestMode"

    const/4 v2, 0x2

    .line 6429
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    .line 6430
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "lc3Enable"

    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_2

    if-eqz p0, :cond_3

    const-string/jumbo p1, "true"

    .line 6431
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_3

    return v3

    :catch_0
    move-exception p0

    .line 6437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLeAudioBrDevice Exception "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method private isLeAudioCgOn()Z
    .locals 2

    const/4 v0, 0x0

    .line 6716
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6717
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6720
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public static isNetValidated(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    const-string v0, "connectivity"

    .line 5367
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 5368
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/16 v0, 0x10

    .line 5369
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isOffloadCodecInUse()Z
    .locals 9

    const-string/jumbo v0, "vendor"

    .line 6763
    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mediatek"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MiuiHeadsetFragment"

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 6765
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 6767
    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6768
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6769
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6771
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v3

    .line 6773
    :cond_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_3

    .line 6774
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v0

    new-array v4, v3, [Landroid/bluetooth/BluetoothCodecConfig;

    .line 6776
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getHwOffloadFormatsSupportedForA2dp()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/bluetooth/BluetoothCodecConfig;

    .line 6777
    array-length v4, p0

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, p0, v5

    .line 6778
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "codecConfigOffloading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6779
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v6

    if-ne v0, v6, :cond_2

    return v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    const-string p0, "isOffloadCodecInUse: bypass for non MtkPlatform"

    .line 6786
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private isSCOOn()Z
    .locals 1

    .line 6709
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 6710
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportWindNoise(Ljava/lang/String;)Z
    .locals 1

    .line 6700
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK71Headset(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAncWindVersionCode:I

    iget v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mFwVersionCode:I

    if-le p1, v0, :cond_0

    iget p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVersionCodeLocal:I

    if-gt p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private k73HDAudioEable(Ljava/lang/String;)Z
    .locals 3

    const-string p0, "MiuiHeadsetFragment"

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "ro.product.device"

    .line 1729
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1730
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p1, "phone is empty"

    .line 1731
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1734
    :cond_0
    sget-object v2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->K73_HD_AUDIO_ENABLE_PRODUCTS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1735
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73BlackHeadset(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1736
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73WhiteHeadset(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1737
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73GreenHeadset(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 1741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deal HD audio enable error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method private loadDevice()V
    .locals 7

    const-string v0, "MiuiHeadsetFragment"

    .line 5598
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupport:Ljava/lang/String;

    const-string v2, "\\,"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5599
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string p0, "error length"

    .line 5600
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 5603
    aget-object v4, v1, v2

    iput-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    const/4 v4, 0x1

    .line 5623
    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x18

    if-ne v5, v6, :cond_a

    .line 5624
    aget-object v5, v1, v4

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x31

    if-ne v2, v5, :cond_1

    .line 5625
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportOta:Ljava/lang/Boolean;

    .line 5626
    :cond_1
    aget-object v2, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    .line 5627
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAntiLost:Ljava/lang/Boolean;

    .line 5628
    :cond_2
    aget-object v2, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_3

    .line 5629
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportInear:Ljava/lang/Boolean;

    .line 5633
    :cond_3
    aget-object v2, v1, v4

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_4

    .line 5634
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAnc:Ljava/lang/Boolean;

    .line 5638
    :cond_4
    aget-object v2, v1, v4

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_5

    .line 5639
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAudioMode:Ljava/lang/Boolean;

    .line 5640
    :cond_5
    aget-object v2, v1, v4

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_6

    .line 5641
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportSignleEarMode:Ljava/lang/Boolean;

    .line 5642
    :cond_6
    aget-object v2, v1, v4

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_7

    .line 5643
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAutoAck:Ljava/lang/Boolean;

    .line 5644
    :cond_7
    aget-object v2, v1, v4

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_8

    .line 5645
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportMultiConnect:Ljava/lang/Boolean;

    .line 5646
    :cond_8
    aget-object v2, v1, v4

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_9

    .line 5647
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportSilentUpgrade:Ljava/lang/Boolean;

    .line 5648
    :cond_9
    aget-object v1, v1, v4

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_a

    .line 5649
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportGyr:Ljava/lang/Boolean;

    .line 5651
    :cond_a
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isDeviceIdSupportSetCodec(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5652
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportCodecChange:Ljava/lang/Boolean;

    :cond_b
    const-string/jumbo v1, "switchConfig"

    .line 5654
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceGroup;

    const-string v2, "Sound_Settings"

    .line 5655
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    const-string v3, "BtConfig"

    .line 5656
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_c

    .line 5658
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK77sHeadset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "loadDevice: remove preference:fitness_check"

    .line 5659
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "fitness_check"

    .line 5660
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    .line 5661
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 5664
    :cond_c
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportInear:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportMultiConnect:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAutoAck:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAntiLost:Ljava/lang/Boolean;

    .line 5665
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportCodecChange:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportSilentUpgrade:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_0

    .line 5710
    :cond_d
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_1

    .line 5666
    :cond_e
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportInear:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_f

    if-eqz v1, :cond_f

    const-string v3, "Ineartest"

    .line 5667
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInearTest:Landroidx/preference/CheckBoxPreference;

    .line 5668
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_f
    if-eqz v1, :cond_11

    .line 5670
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportMultiConnect:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v4, :cond_10

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 5671
    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01GlobalHeadset(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_10
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75SHeadset(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "MultiConnectMode"

    .line 5672
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMultiConnect:Landroidx/preference/CheckBoxPreference;

    .line 5673
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_11
    if-eqz v1, :cond_13

    .line 5676
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportSilentUpgrade:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 5677
    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK71Headset(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 5678
    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK71HeadsetGlobal(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 5679
    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    const-string/jumbo v3, "silentUpgrade"

    .line 5680
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSilentUpgrade:Landroidx/preference/CheckBoxPreference;

    .line 5681
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_13
    if-eqz v2, :cond_14

    .line 5683
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS02Headset(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 5684
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 5688
    :cond_14
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isUseInearBitForAutoAckHeadset(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAutoAck:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 5689
    invoke-static {v2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isUseInearBitForAutoAckHeadset(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportInear:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_17

    :cond_16
    if-eqz v1, :cond_17

    const-string v2, "AutoAckMode"

    .line 5691
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAutoAck:Landroidx/preference/CheckBoxPreference;

    .line 5692
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 5693
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mShowAutoAck:Ljava/lang/Boolean;

    .line 5695
    :cond_17
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAntiLost:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_18

    if-eqz v1, :cond_18

    const-string/jumbo v2, "mi_headset_loss_dialog"

    .line 5696
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 5697
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 5700
    :cond_18
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->checkPhoneCodecEnable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 5701
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportCodecChange:Ljava/lang/Boolean;

    .line 5703
    :cond_19
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportCodecChange:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1a

    if-eqz v1, :cond_1a

    const-string v2, "codecType"

    .line 5704
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 5706
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1a
    :goto_1
    const-string/jumbo v1, "moreSettingsInAi"

    .line 5713
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_1b

    .line 5714
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->checkAISupport()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 5715
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const-string/jumbo p0, "remove preference moreSettingsInAi"

    .line 5716
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 5719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_2
    return-void
.end method

.method private miHeadsetLost()V
    .locals 1

    .line 5516
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;-><init>()V

    .line 5517
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->changeFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private notificationSwitchInit()V
    .locals 1

    .line 4327
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mNotifiDisplay:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 4328
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 4329
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mNotifiDisplay:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private onAbsVolumePrefClicked(Landroidx/preference/CheckBoxPreference;)V
    .locals 4

    const-string v0, "MiuiHeadsetFragment"

    :try_start_0
    const-string v1, ""

    .line 3259
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3260
    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 3262
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDeviceMacAddress is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " activeMac is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    .line 3264
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3265
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "ABSOLUTEVOLUMEOPERATE"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 3266
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3268
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createDialogForOpenAbsVolume()V

    goto :goto_0

    .line 3270
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->closeAbsVolume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "onAbsVolumePrefClicked failed "

    .line 3275
    invoke-static {v0, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private onAudioShareSwitchPrefClicked(Landroidx/preference/CheckBoxPreference;)V
    .locals 9

    const-string v0, "MiuiHeadsetFragment"

    if-nez p1, :cond_0

    const-string p0, "CheckBoxPreference pref == null"

    .line 3604
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3607
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 3608
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "miui_store_audio_share_device_address"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3609
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "audio_share_volume_pre"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    .line 3611
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_5

    .line 3612
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    const-string v4, "KEY_STORE_AUDIO_SHARE_DEVICE = "

    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 3614
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 3617
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 3618
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cachedDeviceAddress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    .line 3621
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "pending"

    .line 3622
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3623
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v6, v0

    .line 3626
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 3627
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->broadcastMultiA2dpStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1

    .line 3630
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    invoke-virtual {p1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 v1, 0x0

    .line 3632
    invoke-direct {p0, v1, v5}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->broadcastMultiA2dpStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 3633
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleAudioShareConfigStatus(Z)V

    const-string v1, "CheckBoxPreference = unchecked"

    .line 3634
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    :cond_3
    :goto_1
    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 3638
    invoke-virtual {v2, v5}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 3640
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "ldac_pre"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 3642
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v0, "latency_pre"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_4

    .line 3644
    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    if-eqz p0, :cond_5

    .line 3647
    invoke-virtual {p0, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method private onLeAudioPrefClicked(Landroidx/preference/CheckBoxPreference;)V
    .locals 4

    const-string v0, "MiuiHeadsetFragment"

    .line 5883
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5884
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5885
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5887
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createDialogForLeAudio(Landroidx/preference/CheckBoxPreference;)V

    goto :goto_0

    .line 5889
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->closeLeAudio()V

    .line 5890
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshProfiles()V

    .line 5891
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleCheckBoxPreferenceEnabled(Landroidx/preference/CheckBoxPreference;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, ""

    .line 5898
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 5899
    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 5900
    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 5902
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDeviceMacAddress is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " activeMac is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    .line 5903
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    .line 5904
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5905
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5907
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createDialogForLeAudio(Landroidx/preference/CheckBoxPreference;)V

    goto :goto_1

    .line 5909
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->closeLeAudio()V

    .line 5910
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleCheckBoxPreferenceEnabled(Landroidx/preference/CheckBoxPreference;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo p1, "onLeAudioPrefClicked failed "

    .line 5916
    invoke-static {v0, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    return-void
.end method

.method private onPrefClicked(Landroidx/preference/CheckBoxPreference;)V
    .locals 6

    .line 2800
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_9

    .line 2801
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2803
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 2805
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createDialog()V

    goto/16 :goto_0

    .line 2808
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    .line 2810
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->writeBluetoothA2dpConfiguration(Z)V

    .line 2812
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2814
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    if-eqz v2, :cond_1

    const/16 v3, 0x66

    .line 2815
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2818
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "latency_pre"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 2820
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV2Device:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV1Device:Z

    if-eqz v3, :cond_3

    .line 2821
    :cond_2
    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2822
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2825
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setHDAudioEnableForLhdc4Changed(Z)V

    .line 2828
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    const-string v3, "STORE_DEVICE_CODEC"

    if-eqz v2, :cond_4

    .line 2829
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LHDC_V3"

    invoke-virtual {v2, v4, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2830
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2832
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV2Device:Z

    if-eqz v2, :cond_5

    .line 2833
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "LHDC_V2"

    invoke-virtual {v1, v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2835
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV1Device:Z

    if-eqz v2, :cond_6

    .line 2836
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "LHDC_V1"

    invoke-virtual {v1, v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2838
    :cond_6
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLDACDevice:Z

    if-eqz v2, :cond_7

    .line 2839
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "LDAC"

    invoke-virtual {v1, v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2840
    :cond_7
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAACDevice:Z

    if-eqz v2, :cond_8

    .line 2841
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "AAC"

    invoke-virtual {v2, v4, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2842
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2848
    :cond_8
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleCheckBoxPreferenceEnabled(Landroidx/preference/CheckBoxPreference;)V

    :cond_9
    return-void
.end method

.method private onProfileClicked(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroidx/preference/CheckBoxPreference;)V
    .locals 7

    .line 1747
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1749
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PBAP Server"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 1751
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1750
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result p1

    if-ne p1, v4, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v4

    .line 1753
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    if-ne p1, v4, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    .line 1754
    :goto_1
    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1757
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object p0

    .line 1758
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 1760
    invoke-virtual {p0, v0, v3}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    .line 1763
    invoke-virtual {p0, v0, v4}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    :cond_3
    :goto_2
    return-void

    .line 1769
    :cond_4
    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v4

    goto :goto_3

    :cond_5
    move v1, v3

    .line 1773
    :goto_3
    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    const/16 v6, 0x6f

    if-eqz v5, :cond_9

    if-eqz v1, :cond_6

    .line 1775
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->askDisconnect(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_4

    .line 1778
    :cond_6
    invoke-interface {p1, v0, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 1779
    instance-of p2, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz p2, :cond_7

    .line 1780
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 1783
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    if-eqz p2, :cond_8

    .line 1785
    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshProfilePreference(Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 1790
    :cond_8
    :goto_4
    instance-of p1, p1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    if-eqz p0, :cond_e

    .line 1792
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1791
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    .line 1797
    :cond_9
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v1, :cond_a

    .line 1798
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    goto :goto_5

    .line 1799
    :cond_a
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    if-eqz v1, :cond_b

    .line 1801
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1800
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1806
    :cond_b
    :goto_5
    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1808
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_c

    .line 1809
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_6

    .line 1812
    :cond_c
    invoke-interface {p1, v0, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_6

    .line 1817
    :cond_d
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 1820
    :goto_6
    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshProfilePreference(Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    :cond_e
    :goto_7
    return-void
.end method

.method private otaHandler()V
    .locals 2

    .line 5429
    iget v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mFwVersionCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineVersionCode:I

    if-ge v0, v1, :cond_0

    .line 5431
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->otaStart()V

    goto :goto_0

    .line 5432
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mFwVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mOtaIndicate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSilentUpgradeStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5434
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/android/settings/R$string;->miheadset_last_version:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private otaStart()V
    .locals 4

    .line 4575
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "OnlineVersion"

    .line 4576
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineVerion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "OnlineVersionCode"

    .line 4577
    iget v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineVersionCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4578
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineMessage:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, p0, v0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->startOta(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiHeadsetFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private refresh()V
    .locals 1

    .line 1878
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 1881
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshProfiles()V

    return-void
.end method

.method private refreshBleMmaConnection(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const-string/jumbo p2, "refreshBleMmaConnection"

    const-string v0, "MiuiHeadsetFragment"

    .line 1081
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetBattery:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportGyr:Ljava/lang/Boolean;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportInear:Ljava/lang/Boolean;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mShowAutoAck:Ljava/lang/Boolean;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    if-eqz p2, :cond_0

    .line 1086
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isConnectSate(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->onBleChanged(Z)V

    .line 1089
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportGyr:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->headTrackingCheckBox:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportHeadTrackAlgo:Z

    if-eqz p2, :cond_1

    .line 1090
    iget-boolean p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isspatialenable:Z

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1092
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportInear:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInearTest:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_2

    .line 1093
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1095
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mShowAutoAck:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAutoAck:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_3

    .line 1096
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1098
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportSilentUpgrade:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSilentUpgrade:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_4

    .line 1099
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1101
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz p1, :cond_5

    .line 1104
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 p1, 0x68

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "mService connect the device mma Exception"

    .line 1106
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private refreshDeviceFunKeyInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "MiuiHeadsetFragment"

    const-string v3, ""

    .line 5080
    :try_start_0
    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-nez v4, :cond_0

    .line 5081
    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 5083
    :cond_0
    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v5, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v6, 0x6a

    invoke-interface {v4, v6, v3, v5}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    if-eqz v4, :cond_1

    .line 5084
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v5, :cond_2

    :cond_1
    const-string v4, "000011101110"

    :cond_2
    const/4 v9, 0x0

    move-object/from16 v12, p1

    if-ne v12, v3, :cond_29

    const/4 v13, 0x6

    .line 5092
    invoke-virtual {v1, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 5093
    invoke-virtual {v1, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v6, 0x12

    .line 5094
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 5096
    iget-object v5, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v7, "05"

    const-string v8, "04"

    const-string v13, "01"

    const-string v10, "03"

    const-string v11, "02"

    const-string v9, "1"

    const-string v12, "0"

    move-object/from16 v16, v2

    if-nez v5, :cond_e

    :try_start_1
    const-string v5, "gesture"

    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 5097
    invoke-static {v5, v2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_8

    :cond_3
    const/4 v2, 0x0

    const/4 v5, 0x2

    .line 5134
    invoke-virtual {v14, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x4

    .line 5135
    invoke-virtual {v14, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object/from16 v18, v4

    :goto_1
    const/4 v2, 0x6

    const/4 v4, 0x4

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 5137
    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5140
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5141
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v5, "0103FF"

    move-object/from16 v17, v1

    const/16 v1, 0x10

    invoke-static {v5, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v18, v4

    const/4 v4, 0x1

    invoke-interface {v2, v4, v5, v1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V

    move-object/from16 v1, v17

    goto :goto_1

    .line 5144
    :goto_2
    invoke-virtual {v14, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    const/4 v2, 0x0

    const/4 v4, 0x2

    goto :goto_4

    :cond_6
    const/4 v2, 0x6

    const/4 v4, 0x4

    .line 5146
    invoke-virtual {v14, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 5149
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5150
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v4, "01FF03"

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v8, 0x1

    invoke-interface {v2, v8, v4, v5}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_3

    :cond_8
    move-object/from16 v18, v4

    move-object v1, v3

    move v4, v5

    const/4 v2, 0x0

    .line 5154
    :goto_4
    invoke-virtual {v15, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x4

    .line 5155
    invoke-virtual {v15, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    const/4 v2, 0x6

    const/4 v4, 0x4

    goto :goto_6

    :cond_9
    const/4 v2, 0x2

    const/4 v4, 0x4

    .line 5157
    invoke-virtual {v15, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 5160
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5161
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v4, "0202FF"

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v8, 0x1

    invoke-interface {v2, v8, v4, v5}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_5

    .line 5164
    :goto_6
    invoke-virtual {v15, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    move-object/from16 v17, v3

    goto/16 :goto_d

    :cond_b
    const/4 v2, 0x6

    const/4 v4, 0x4

    .line 5166
    invoke-virtual {v15, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 5169
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5170
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v4, "02FF02"

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v7, 0x1

    invoke-interface {v2, v7, v4, v5}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_7

    :cond_d
    move-object/from16 v17, v3

    move v3, v4

    goto/16 :goto_e

    :cond_e
    :goto_8
    move-object/from16 v18, v4

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 5098
    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "2"

    if-eqz v1, :cond_15

    const/4 v1, 0x4

    .line 5099
    :try_start_2
    invoke-virtual {v14, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_f
    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 5101
    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_10
    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 5103
    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 5106
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    move-object/from16 v17, v3

    const/4 v2, 0x6

    const/4 v5, 0x4

    .line 5109
    invoke-virtual {v14, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a
    const/4 v2, 0x0

    const/4 v3, 0x2

    goto :goto_b

    :cond_12
    const/4 v2, 0x6

    const/4 v3, 0x4

    .line 5111
    invoke-virtual {v14, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 5112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_13
    const/4 v2, 0x6

    const/4 v3, 0x4

    .line 5113
    invoke-virtual {v14, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 5116
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_15
    move-object/from16 v17, v3

    move v3, v2

    move-object/from16 v1, v17

    const/4 v2, 0x0

    .line 5120
    :goto_b
    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x4

    .line 5121
    invoke-virtual {v15, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_16
    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 5122
    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_17
    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 5123
    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_18
    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 5124
    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 5125
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c
    const/4 v2, 0x6

    const/4 v3, 0x4

    .line 5127
    invoke-virtual {v15, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_d
    const/4 v2, 0x0

    const/4 v3, 0x2

    goto :goto_f

    :cond_1a
    const/4 v2, 0x6

    const/4 v3, 0x4

    .line 5128
    invoke-virtual {v15, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_1b
    const/4 v2, 0x6

    const/4 v3, 0x4

    .line 5129
    invoke-virtual {v15, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_1c
    const/4 v2, 0x6

    const/4 v3, 0x4

    .line 5130
    invoke-virtual {v15, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 5131
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_1e
    :goto_e
    const/4 v2, 0x0

    .line 5176
    :goto_f
    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 5177
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK77sHeadset(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "00"

    if-eqz v2, :cond_23

    const/4 v2, 0x2

    const/4 v4, 0x4

    .line 5178
    :try_start_3
    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_1f
    const/4 v2, 0x2

    const/4 v4, 0x4

    .line 5180
    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 5181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    .line 5183
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5184
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v4, "0301FF"

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v7, 0x1

    invoke-interface {v2, v7, v4, v5}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V

    .line 5189
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "000"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v4, 0x4

    .line 5190
    invoke-virtual {v6, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 5191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_21
    const/4 v2, 0x6

    const/4 v3, 0x4

    .line 5192
    invoke-virtual {v6, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 5193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 5195
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5196
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v3, "03FF01"

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x1

    invoke-interface {v2, v5, v3, v4}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V

    .line 5201
    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "000"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_15

    :cond_23
    const/4 v2, 0x2

    const/4 v4, 0x4

    .line 5203
    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "06"

    if-eqz v2, :cond_24

    .line 5204
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_12
    move-object/from16 v2, v18

    const/16 v5, 0x8

    const/4 v7, 0x5

    goto :goto_13

    :cond_24
    const/4 v2, 0x2

    const/4 v5, 0x4

    .line 5205
    invoke-virtual {v6, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 5206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 5208
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5209
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v5, "0306FF"

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v7, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v8, 0x1

    invoke-interface {v2, v8, v5, v7}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_12

    .line 5213
    :goto_13
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0x9

    const/16 v7, 0xc

    .line 5214
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 5215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x6

    const/4 v8, 0x4

    .line 5216
    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 5217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_26
    const/4 v3, 0x6

    const/4 v5, 0x4

    .line 5218
    invoke-virtual {v6, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 5219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 5221
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5222
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v4, "03FF06"

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v6, 0x1

    invoke-interface {v3, v6, v4, v5}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V

    .line 5225
    :goto_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_28
    :goto_15
    move-object/from16 v2, v18

    goto :goto_16

    :cond_29
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v2, v4

    move-object/from16 v1, v17

    :goto_16
    move-object/from16 v3, p2

    move-object/from16 v4, v17

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 5231
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    const/16 v4, 0x8

    .line 5232
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5233
    invoke-static/range {p1 .. p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->hexToBinaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v5, 0x4

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :catch_0
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_18

    .line 5236
    :cond_2a
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update device init key config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v3, v16

    :try_start_5
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5237
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v5, 0x69

    invoke-interface {v2, v5, v1, v4}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 5238
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->setDeviceConfig(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_19

    :catch_1
    move-exception v0

    goto :goto_18

    :catch_2
    move-exception v0

    move-object v3, v2

    .line 5240
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set fun key config error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void
.end method

.method private refreshGyrStatus()V
    .locals 4

    .line 4394
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportHeadTrackAlgo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4395
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$31;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p0, "MiuiHeadsetFragment"

    const-string/jumbo v0, "refreshGyrStatus  mHandler is null"

    .line 4427
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private refreshInearUi(Z)V
    .locals 0

    .line 5263
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInearTest:Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_0

    .line 5264
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private refreshProfilePreference(Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 9

    const-string v0, "MiuiHeadsetFragment"

    .line 1935
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1940
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1941
    instance-of v2, p2, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1942
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result p0

    if-ne p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 1945
    :cond_1
    instance-of v2, p2, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v2, :cond_3

    .line 1946
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result p0

    if-ne p0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 1949
    :cond_3
    instance-of v2, p2, Lcom/android/settingslib/bluetooth/PanProfile;

    const/4 v5, 0x2

    if-eqz v2, :cond_5

    .line 1950
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-ne p0, v5, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 1955
    :cond_5
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1956
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1958
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1959
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1961
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "le_audio_pre"

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/CheckBoxPreference;

    .line 1962
    iget-object v7, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result v7

    if-eqz v7, :cond_6

    .line 1963
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 1965
    :cond_6
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1967
    :goto_3
    instance-of v7, p2, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v7, :cond_9

    if-eqz v6, :cond_9

    .line 1968
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    if-eq v7, v5, :cond_7

    iget-object v7, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1969
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result v7

    if-eq v7, v3, :cond_7

    .line 1970
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v7, "leAudioPre.setEnabled(false) when HFP is unavailable"

    .line 1971
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "miui_store_audio_share_device_address"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1974
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-eq v8, v5, :cond_8

    iget-object v8, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1975
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result v8

    if-ne v8, v3, :cond_9

    .line 1976
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSCOOn()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isLeAudioCgOn()Z

    move-result v8

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSingleHeadsetConn:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLC3Switching:Z

    if-nez v8, :cond_9

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    .line 1977
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 1978
    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p0, "leAudioPre.setEnabled(true) when HFP/LEAuido is available"

    .line 1979
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v6, :cond_c

    .line 1982
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-lt p0, v5, :cond_c

    .line 1983
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 1984
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    const/16 v5, 0x30

    if-ne p0, v5, :cond_a

    if-eq v2, v3, :cond_b

    :cond_a
    if-ne p0, v3, :cond_c

    if-ne v2, v5, :cond_c

    .line 1986
    :cond_b
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p0, "leAudioPre.setEnabled(false) when power 01 or 10"

    .line 1987
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 1991
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_c
    :goto_4
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private refreshProfiles()V
    .locals 6

    .line 1885
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "MiuiHeadsetFragment"

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1886
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    if-nez v3, :cond_3

    .line 1888
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/CheckBoxPreference;

    move-result-object v3

    .line 1889
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BCProfile"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "refreshProfiles Device support ble audio !"

    .line 1890
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "persist.vendor.service.bt.lea_test"

    const/4 v4, 0x0

    .line 1891
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1892
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "refreshProfiles mBleAudioCategory not null add to show !"

    .line 1893
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1894
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1895
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1896
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "refreshProfiles mBleAudioCategory is null do nothing and return!"

    .line 1898
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1903
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 1906
    :cond_3
    invoke-direct {p0, v3, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshProfilePreference(Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 1909
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1914
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PBAP Server"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 1918
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1920
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from profile list"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 1924
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->showOrHideProfileGroup()V

    return-void
.end method

.method private sendBroadcastEnableOrDisable(Z)V
    .locals 4

    .line 3384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendBroadcastEnableOrDisable enter and value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "miui.bluetooth.absolute_volume_enable_disable"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.bluetooth"

    .line 3387
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "absolute_volume_mac"

    .line 3388
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "absolute_volume_value"

    .line 3389
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3391
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "send msg failed "

    .line 3394
    invoke-static {v1, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private sentIgnorePairDilogIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "00:00:00:00:00:00"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 6403
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 6404
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fast_connect_show_dialog"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 6406
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.bluetooth.FAST_CONNECT_DEVICE_BOND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FAST_CONNECT_CURRENT_DEVICE"

    .line 6407
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FAST_CONNECT_PEER_DEVICE"

    .line 6408
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    const-string v2, "com.xiaomi.bluetooth"

    .line 6409
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.bluetooth"

    .line 6410
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6411
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6412
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sentIgnorePairDilogIntent leMac1 is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " leMac2 is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiHeadsetFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setAncOnClick()V
    .locals 4

    .line 3663
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3667
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAncOnClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK77sHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3670
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->anclayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 3673
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->anclayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3676
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->transport:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3677
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->openAnc:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3678
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->closeAnc:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3680
    new-instance v3, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$24;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$24;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3686
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$25;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$25;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3692
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$26;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$26;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setAudioShareVolume(I)V
    .locals 2

    .line 3561
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v0, "audio_share_volume_pre"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    const-string v0, "MiuiHeadsetFragment"

    if-nez p0, :cond_0

    const-string p0, "BluetoothVolumeSeekBarPreference == null"

    .line 3563
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3566
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 3567
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAudioShareVolume as: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setCodecInfo(I)V
    .locals 4

    const-string v0, "MiuiHeadsetFragment"

    .line 6575
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCodec "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6577
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const v2, 0xf4240

    invoke-direct {p0, v1, p1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->getCodecConfig(Landroid/bluetooth/BluetoothA2dp;II)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    .line 6578
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    if-eqz v3, :cond_1

    .line 6579
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/bluetooth/BluetoothA2dp;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    mul-int/lit8 p1, p1, -0x1

    .line 6583
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v2, "STORE_DEVICE_CODEC"

    invoke-virtual {v1, v2, p1}, Landroid/bluetooth/BluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)Z

    .line 6584
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 v1, 0x66

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string p1, "codecType"

    .line 6585
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    if-eqz p1, :cond_1

    .line 6586
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 6587
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isDeviceIdSupportSetCodec(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 6588
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6592
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set codec failed "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setDeviceAACWhiteListConfig(Z)V
    .locals 4

    .line 6658
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->checkPhoneCodecEnable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string/jumbo v0, "mediatek"

    const-string/jumbo v1, "vendor"

    .line 6659
    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6662
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_3

    .line 6663
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6665
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothCodecConfig;

    if-eqz v2, :cond_2

    .line 6666
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move v1, v3

    goto :goto_0

    :cond_3
    const-string v0, "MiuiHeadsetFragment"

    .line 6672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device support aac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", add aac list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    if-nez v1, :cond_4

    return-void

    .line 6674
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.vendor.bt.a2dp.aac.whitelist"

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 6676
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "null"

    .line 6675
    :goto_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "persist.vendor.bt.a2dp.aac.whitelists"

    if-eqz p1, :cond_6

    .line 6678
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addToWhiteList(Ljava/lang/String;)V

    goto :goto_3

    .line 6680
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->delFromWhiteList(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_7
    :goto_2
    return-void

    :catch_0
    move-exception p0

    .line 6683
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private setHDAudioEnableForLhdc4Changed(Z)V
    .locals 5

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x7d0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 1636
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "hd_audio"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 1637
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 1638
    new-instance v4, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$3;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$3;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;ZLandroidx/preference/CheckBoxPreference;)V

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1655
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private setOtaOnclick()V
    .locals 2

    .line 5281
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 5284
    :cond_0
    sget v1, Lcom/android/settings/R$id;->otaLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5285
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$45;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$45;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 2

    .line 1316
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 1317
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 1318
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x1

    .line 1319
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileGroupIsRemoved:Z

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1321
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 1323
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileGroupIsRemoved:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private startAssist()V
    .locals 4

    .line 5537
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.voiceassist"

    .line 5538
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.miui.voiceassist.FAST_CONNECT_MORE_SETTING"

    .line 5539
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5540
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "classicDeviceMac"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "launch_router_source"

    const/4 v3, 0x2

    .line 5541
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 5542
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5545
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const-string v3, "MiuiHeadsetFragment"

    if-eqz v2, :cond_0

    .line 5548
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "voiceassist start fail"

    .line 5551
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5554
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "voiceassist app version old"

    .line 5555
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "voiceassist not found"

    .line 5557
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startLocalOta()V
    .locals 2

    .line 5506
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz v0, :cond_0

    .line 5508
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->localOta(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiHeadsetFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private unpairDevice()V
    .locals 11

    const-string v0, "MiuiHeadsetFragment"

    .line 2018
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    const-string/jumbo v1, "vendor"

    .line 2020
    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mediatek"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "qcom"

    .line 2021
    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2022
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 2023
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    const/4 v4, 0x1

    const-string v5, "latency_val"

    const-string v6, "latency_pre"

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v3, :cond_0

    .line 2024
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->writeCodecUserConfigureToProperty(Z)V

    .line 2025
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    const-string v9, "LHDC_V3"

    invoke-virtual {v3, v4, v9, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2026
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v9, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2027
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    .line 2028
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2029
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2030
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV2Device:Z

    if-eqz v3, :cond_1

    .line 2031
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->writeCodecUserConfigureToProperty(Z)V

    .line 2032
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    const-string v9, "LHDC_V2"

    invoke-virtual {v3, v4, v9, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2033
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v9, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2034
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    .line 2035
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2036
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2037
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV1Device:Z

    if-eqz v3, :cond_2

    .line 2038
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->writeCodecUserConfigureToProperty(Z)V

    .line 2039
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    const-string v9, "LHDC_V1"

    invoke-virtual {v3, v4, v9, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2040
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v9, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2041
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    .line 2042
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2043
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2044
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLDACDevice:Z

    if-eqz v3, :cond_3

    .line 2045
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->writeCodecUserConfigureToProperty(Z)V

    .line 2046
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    const-string v5, "LDAC"

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2047
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2048
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    goto :goto_0

    .line 2049
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAADevice:Z

    if-eqz v3, :cond_4

    .line 2050
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "aptX Adaptive"

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2051
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v9, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v9, v4, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2052
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2053
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2054
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "aptxadaptive_video"

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2055
    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAACDevice:Z

    const-string/jumbo v4, "zmi_latency"

    if-eqz v3, :cond_5

    .line 2056
    invoke-direct {p0, v7}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->writeCodecUserConfigureToProperty(Z)V

    .line 2057
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v9, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v9, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    .line 2058
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v9, "AAC"

    invoke-virtual {v3, v9, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2059
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v10, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v10, v9, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2060
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2061
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2062
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2063
    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSBCLlDevice:Z

    if-eqz v3, :cond_6

    .line 2064
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2065
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2066
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2070
    :cond_6
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "ABSOLUTEVOLUME"

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2071
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "ABSOLUTEVOLUMEOPERATE"

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2073
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2074
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LEAUDIO"

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_7
    if-eqz v2, :cond_8

    const-string/jumbo v1, "persist.bluetooth.a2dp.absolute.volume.whitelistall"

    .line 2078
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->delFromWhiteListForAbsoluteVolume(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    const-string/jumbo v1, "persist.vendor.bt.a2dp.absolute.volume.whitelistall"

    .line 2080
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->delFromWhiteListForAbsoluteVolume(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string/jumbo v1, "no work to do"

    .line 2082
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->unpairLeAudio()V

    .line 2086
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->deleteSaveMacForLeAudio()V

    .line 2087
    invoke-direct {p0, v7}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setDeviceAACWhiteListConfig(Z)V

    .line 2088
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    if-eqz p0, :cond_a

    .line 2090
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v2, 0x6f

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2089
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 2093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delFromWhiteListForAbsoluteVolume failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    return-void
.end method

.method private unpairLeAudio()V
    .locals 5

    .line 6296
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6298
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6299
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setLeAudioStatus(I)V

    .line 6300
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    return-void

    .line 6305
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "three_mac_for_ble_f"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFragment"

    if-eqz v0, :cond_1

    .line 6307
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 6308
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v2, 0x35

    if-lt v3, v4, :cond_1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    .line 6309
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6310
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startIndex is "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value is "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, v2, 0x12

    add-int/lit8 v3, v2, 0x23

    .line 6311
    invoke-virtual {v0, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, 0x24

    .line 6312
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leStr1 is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " leStr2 is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "00:00:00:00:00:00"

    move-object v0, p0

    .line 6319
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 6321
    invoke-virtual {v2, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 6322
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/16 v2, 0xb

    const/16 v3, 0xa

    if-eqz p0, :cond_3

    .line 6323
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 6324
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 6325
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    goto :goto_1

    .line 6327
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    :goto_1
    const-string/jumbo p0, "remove bond leStr1"

    .line 6329
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_5

    .line 6331
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    if-eq p0, v3, :cond_5

    .line 6332
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    if-ne p0, v2, :cond_4

    .line 6333
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    goto :goto_2

    .line 6335
    :cond_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    :goto_2
    const-string/jumbo p0, "remove bond leStr2"

    .line 6337
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private updateAbsoluteVolume(Z)V
    .locals 2

    .line 4558
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$32;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$32;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateAncLevel(Ljava/lang/String;Z)V
    .locals 6

    :try_start_0
    const-string v0, ""

    .line 3798
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 3799
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v3, 0x66

    invoke-interface {v1, v3, v0, v2}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "MiuiHeadsetFragment"

    .line 3801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAncLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ancStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 3803
    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 3804
    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "anc"

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 3805
    invoke-static {v1, v4}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_a

    const-string v1, "1"

    .line 3829
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3830
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 3831
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->miheadset_anc_indicate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3830
    invoke-static {p2, v0, v3}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    const-string p2, "0201"

    .line 3833
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3834
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetTransparentAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->setCurrentPointIndex(I)V

    goto :goto_0

    :cond_2
    const-string p2, "0200"

    .line 3835
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3836
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetTransparentAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->setCurrentPointIndex(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    if-eqz p2, :cond_7

    const-string v1, "0"

    .line 3806
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3807
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 3808
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->miheadset_anc_indicate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3807
    invoke-static {p2, v0, v3}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    const-string p2, "0201"

    .line 3810
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 3811
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetTransparentAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->setCurrentPointIndex(I)V

    goto :goto_2

    :cond_5
    const-string p2, "0200"

    .line 3812
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3813
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetTransparentAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->setCurrentPointIndex(I)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    if-eqz p2, :cond_a

    const-string v1, "2"

    .line 3817
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const-string v0, "0103"

    .line 3818
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "0102"

    .line 3819
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "0100"

    .line 3820
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "0101"

    .line 3821
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "0104"

    .line 3822
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3823
    :cond_9
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 3824
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->miheadset_single_ear_indicate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3823
    invoke-static {p0, p1, v3}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_a
    if-eqz p2, :cond_b

    .line 3842
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_b

    .line 3843
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3844
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, p1, v1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->changeAncLevel(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 3845
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3846
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3847
    iput v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncPendingStatus:I

    .line 3848
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncUi(Ljava/lang/String;Z)V

    .line 3849
    monitor-exit p2

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_b
    :goto_3
    return-void

    :catch_0
    const-string p0, "MiuiHeadsetFragment"

    const-string/jumbo p1, "update Anc failed"

    .line 3852
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAncMode(IZ)V
    .locals 5

    :try_start_0
    const-string v0, ""

    .line 3703
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 3704
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v3, 0x66

    invoke-interface {v1, v3, v0, v2}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "MiuiHeadsetFragment"

    .line 3706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ancMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", wearStatus= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,updateDeviceMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    const-string v1, "anc"

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 3708
    invoke-static {v1, v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 3722
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 3723
    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_8

    const-string v1, "1"

    .line 3736
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3737
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 3738
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->miheadset_anc_indicate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3737
    invoke-static {p0, p1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    const-string v1, "0"

    .line 3724
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3725
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 3726
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->miheadset_anc_indicate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3725
    invoke-static {p0, p1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_4
    if-eqz p2, :cond_8

    const-string v1, "1"

    .line 3729
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3730
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 3731
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->miheadset_single_ear_indicate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3730
    invoke-static {p0, p1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    const-string v1, "0"

    .line 3709
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3710
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 3711
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->miheadset_anc_indicate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3710
    invoke-static {p0, p1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_6
    if-eqz p2, :cond_8

    const-string v1, "2"

    .line 3715
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    if-ne p1, v2, :cond_8

    .line 3717
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 3718
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->miheadset_single_ear_indicate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3717
    invoke-static {p0, p1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_8
    if-eqz p2, :cond_9

    .line 3743
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_9

    .line 3744
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3745
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, p1, v1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->changeAncMode(ILandroid/bluetooth/BluetoothDevice;)V

    .line 3746
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3747
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3748
    iput v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncPendingStatus:I

    .line 3749
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->getDefaultAncLevel(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncUi(Ljava/lang/String;Z)V

    .line 3750
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    :goto_2
    return-void

    :catch_0
    const-string p0, "MiuiHeadsetFragment"

    const-string/jumbo p1, "update Anc failed"

    .line 3753
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAncRTL()V
    .locals 4

    .line 6541
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 6542
    sget v1, Lcom/android/settings/R$id;->ancAdapterText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 6543
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6544
    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 6545
    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 6546
    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 6547
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportWindNoise(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "anc"

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 6548
    invoke-static {v0, v2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6549
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ancLowText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 6551
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ancLowText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 6553
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ancHighText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x800005

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 6554
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->enhanceVoiceText:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 6555
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->transparentModeText:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2
    return-void
.end method

.method private updateAndEnableCode(Z)V
    .locals 2

    .line 6598
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$52;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$52;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    const-wide/16 p0, 0x32

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6647
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update the codec failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiHeadsetFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateCodecIndex()V
    .locals 8

    const-string v0, "MiuiHeadsetFragment"

    .line 5788
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5789
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5791
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v6, :cond_3

    .line 5792
    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v3

    .line 5794
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5795
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->headset_sbc:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_2

    .line 5797
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothCodecConfig;

    .line 5798
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v7

    if-ne v7, v4, :cond_1

    .line 5799
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5800
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->headset_aac:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5801
    :cond_1
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_0

    .line 5802
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5803
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->headset_aptx_adapter:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p0, "codec config is null!"

    .line 5807
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v3, "codecType"

    .line 5811
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lmiuix/preference/DropDownPreference;

    .line 5812
    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 5814
    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isDeviceIdSupportSetCodec(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 5816
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    .line 5817
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 5818
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/CharSequence;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, p0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 5819
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/CharSequence;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, p0}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 5820
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 5821
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 5824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private updateCodecStatus()V
    .locals 7

    const-string v0, "MiuiHeadsetFragment"

    const-string/jumbo v1, "updateCodecStatus()"

    .line 2711
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "mediatek"

    const-string/jumbo v1, "vendor"

    .line 2714
    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2716
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    return-void

    .line 2717
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2718
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2719
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2721
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    goto :goto_0

    .line 2724
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mUpdatePrefForA2DPConnected:Z

    :cond_2
    const/4 v1, 0x0

    .line 2726
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2728
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LDAC"

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2729
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LHDC_V3"

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2730
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LHDC_V2"

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2731
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LHDC_V1"

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2732
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AAC"

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    if-nez v1, :cond_5

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v0, "support_audio_share"

    const/4 v3, 0x0

    .line 2736
    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2737
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2738
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "miui_store_audio_share_device_address"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "MiuiHeadsetFragment"

    .line 2739
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCodecStatus KEY_STORE_AUDIO_SHARE_DEVICE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8

    const-string/jumbo v4, "pending"

    .line 2741
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2742
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2743
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    return-void

    .line 2747
    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LDAC"

    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2748
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LDAC"

    const-string v5, "LDAC"

    .line 2749
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getCodecName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2748
    invoke-virtual {v0, v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 2753
    :cond_9
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LHDC_V3"

    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2754
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LHDC_V3"

    .line 2755
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getCodecName(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 2756
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getCodecName(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "LHDC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_1

    :cond_a
    move v1, v3

    .line 2754
    :goto_1
    invoke-virtual {v0, v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 2760
    :cond_b
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LHDC_V2"

    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2761
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LHDC_V2"

    .line 2762
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getCodecName(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 2763
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getCodecName(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "LHDC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_2

    :cond_c
    move v1, v3

    .line 2761
    :goto_2
    invoke-virtual {v0, v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_4

    .line 2767
    :cond_d
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LHDC_V1"

    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2768
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LHDC_V1"

    .line 2769
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getCodecName(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 2770
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getCodecName(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "LHDC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_3

    :cond_e
    move v1, v3

    .line 2768
    :goto_3
    invoke-virtual {v0, v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_4

    .line 2774
    :cond_f
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AAC"

    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2775
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "AAC"

    const-string v5, "AAC"

    .line 2776
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getCodecName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2775
    invoke-virtual {v0, v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2781
    :cond_10
    :goto_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ldac_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1a

    .line 2784
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    if-eqz v1, :cond_12

    .line 2785
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "LHDC_V3"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_11

    goto :goto_5

    :cond_11
    move v2, v3

    :goto_5
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_a

    .line 2786
    :cond_12
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV2Device:Z

    if-eqz v1, :cond_14

    .line 2787
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "LHDC_V2"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_13

    goto :goto_6

    :cond_13
    move v2, v3

    :goto_6
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_a

    .line 2788
    :cond_14
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV1Device:Z

    if-eqz v1, :cond_16

    .line 2789
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "LHDC_V1"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_15

    goto :goto_7

    :cond_15
    move v2, v3

    :goto_7
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_a

    .line 2790
    :cond_16
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLDACDevice:Z

    if-eqz v1, :cond_18

    .line 2791
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "LDAC"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_17

    goto :goto_8

    :cond_17
    move v2, v3

    :goto_8
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_a

    .line 2793
    :cond_18
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "AAC"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_19

    goto :goto_9

    :cond_19
    move v2, v3

    :goto_9
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1a
    :goto_a
    return-void

    :catchall_0
    move-exception p0

    .line 2726
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateHeadTrackEnable()V
    .locals 6

    .line 693
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportGyr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->headTrackingCheckBox:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportHeadTrackAlgo:Z

    if-nez v0, :cond_0

    goto :goto_3

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 698
    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 699
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v0, :cond_1

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 700
    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isOffloadCodecInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 704
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->issupportimmerviseaudio:Z

    if-eqz v3, :cond_3

    .line 705
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->immersionAudioCheckBox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 706
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->headTrackingCheckBox:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->immersionAudioCheckBox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 708
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->headTrackingCheckBox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 710
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshGyrStatus()V

    :cond_4
    :goto_3
    return-void
.end method

.method private updateLayoutMargin()V
    .locals 4

    const-string v0, "MiuiHeadsetFragment"

    .line 6445
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "updateLayoutMargin() "

    .line 6446
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6451
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->headset_anc_level_layout_marginLeft:I

    .line 6452
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 6453
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->ancAdjust:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 6454
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateView(Landroid/view/View;I)V

    .line 6455
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->transparentAdjust:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 6456
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateView(Landroid/view/View;I)V

    .line 6458
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->headset_anc_level_Text_marginLeft:I

    .line 6459
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 6460
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->ancAdjustText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 6461
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateView(Landroid/view/View;I)V

    .line 6462
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->transparentAdjustText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 6463
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateView(Landroid/view/View;I)V

    .line 6465
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->headset_divider_layout_marginLeft:I

    .line 6466
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 6467
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->layoutDivider:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 6468
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateView(Landroid/view/View;I)V

    .line 6470
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->headset_ignore_marginLeft:I

    .line 6471
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 6472
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->check_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 6473
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateView(Landroid/view/View;I)V

    .line 6475
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateOtaTextViewLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateLeAudioPreWP(Ljava/lang/String;)V
    .locals 2

    .line 6726
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 6727
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$53;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$53;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    const-wide/16 p0, 0xa

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private updateNotificationSwitchState(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "MiuiHeadsetFragment"

    .line 4334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detail notification status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4335
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4336
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$29;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$29;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4354
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateOtaTextViewLayout()V
    .locals 2

    .line 6482
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->updateTextViewParent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6483
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$51;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$51;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateSilentUpgrdeSwitch(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "MiuiHeadsetFragment"

    .line 4360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detail silentUpgrade status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4362
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$30;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$30;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4382
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4909
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->validateVIDPID(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\\+"

    .line 4910
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4911
    array-length p2, p1

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    .line 4912
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mFwVersionCode:I

    const/4 p2, 0x1

    .line 4913
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mFwVersion:Ljava/lang/String;

    .line 4915
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mFwVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVersion:Ljava/lang/String;

    .line 4916
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 4917
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetOta;->isNewOtaSever(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 p2, 0xa

    if-eqz p1, :cond_1

    const-string p1, "MiuiHeadsetFragment"

    const-string/jumbo v0, "update the version code in new ota servcer"

    .line 4918
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4919
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$38;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$38;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const-string p1, "CN"

    .line 4927
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4928
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$39;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$39;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4949
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$40;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$40;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private updateView(Landroid/view/View;I)V
    .locals 0

    .line 6534
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6535
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 6536
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 6537
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private validateVIDPID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 4961
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVid:Ljava/lang/String;

    .line 4962
    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPid:Ljava/lang/String;

    .line 4963
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "1 mVid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mPid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiHeadsetFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4964
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "000"

    const-string v2, "00"

    const/4 v3, 0x1

    const-string v4, "0"

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-nez p1, :cond_3

    .line 4965
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVid:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v7, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v6, :cond_1

    .line 4968
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVid:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVid:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-ne p1, v5, :cond_2

    .line 4970
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVid:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVid:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    .line 4972
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVid:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVid:Ljava/lang/String;

    .line 4975
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 4976
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPid:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v7, :cond_4

    goto :goto_1

    :cond_4
    if-ne p1, v6, :cond_5

    .line 4979
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPid:Ljava/lang/String;

    goto :goto_1

    :cond_5
    if-ne p1, v5, :cond_6

    .line 4981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPid:Ljava/lang/String;

    goto :goto_1

    :cond_6
    if-ne p1, v3, :cond_7

    .line 4983
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPid:Ljava/lang/String;

    .line 4986
    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2 mVid="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPid:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private waitAndShowFutureResult(Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<",
            "TV;>;I)V"
        }
    .end annotation

    .line 5377
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$46;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;I)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 5425
    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->waitResultTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private writeBluetoothA2dpConfiguration(Z)V
    .locals 8

    .line 3042
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_e

    .line 3043
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->writeCodecUserConfigureToProperty(Z)V

    .line 3045
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    const/4 v1, -0x1

    const v2, 0xf4240

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    const/16 v0, 0xd

    goto :goto_0

    .line 3049
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV2Device:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    const/16 v0, 0xc

    goto :goto_0

    .line 3053
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV1Device:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    const/16 v0, 0xe

    goto :goto_0

    .line 3057
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLDACDevice:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    const/4 v0, 0x4

    goto :goto_0

    .line 3061
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAACDevice:Z

    if-eqz v0, :cond_8

    move v0, p1

    move v1, v2

    goto :goto_0

    :cond_8
    move v1, v2

    move v0, v3

    .line 3069
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    .line 3071
    invoke-virtual {v4}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    move v3, v5

    :cond_a
    const-string/jumbo v4, "support_ldac"

    .line 3073
    invoke-static {v4, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    xor-int/2addr v4, v5

    const-string/jumbo v6, "mediatek"

    const-string/jumbo v7, "vendor"

    .line 3074
    invoke-static {v7}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez p1, :cond_b

    .line 3075
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLDACDevice:Z

    if-eqz p1, :cond_b

    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_b

    if-nez v6, :cond_b

    const-string p1, "MiuiHeadsetFragment"

    const-string/jumbo v0, "music is playing, reconnect a2dp"

    .line 3077
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object p1

    .line 3079
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 3080
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleHeadSetConnect()V

    goto :goto_2

    .line 3082
    :cond_b
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dpLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3083
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->getCodecConfig(Landroid/bluetooth/BluetoothA2dp;II)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v3

    if-ne v1, v2, :cond_c

    .line 3084
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 3085
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->isOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eq v1, v5, :cond_c

    .line 3086
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/bluetooth/BluetoothA2dp;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 3087
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    :cond_c
    if-eqz v3, :cond_d

    .line 3090
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {v0, p0, v3}, Landroid/bluetooth/BluetoothA2dp;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    goto :goto_1

    :cond_d
    const-string p0, "MiuiHeadsetFragment"

    .line 3091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Codec is not selectable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "MiuiHeadsetFragment"

    .line 3093
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "writeBluetoothA2dpConfiguration(): newcodecConfig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 3092
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_e
    :goto_2
    return-void
.end method

.method private writeCodecUserConfigureToProperty(Z)V
    .locals 4

    const-string/jumbo v0, "vendor"

    .line 3185
    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mediatek"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3186
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV2Device:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV1Device:Z

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    const-string/jumbo v1, "persist.bluetooth.a2dp.lhdc.whitelist"

    if-ne p1, v2, :cond_1

    .line 3189
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->delFromWhiteList(Ljava/lang/String;)V

    goto :goto_0

    .line 3191
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addToWhiteList(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    return-void

    .line 3196
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    const-string/jumbo v1, "true"

    const-string v3, "false"

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV2Device:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV1Device:Z

    if-eqz v0, :cond_4

    goto :goto_3

    .line 3205
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLDACDevice:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v3

    :goto_1
    const-string/jumbo p0, "persist.vendor.bt.a2dp.ldac.enabled"

    .line 3207
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3209
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAACDevice:Z

    if-eqz v0, :cond_c

    .line 3210
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    .line 3212
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const-string/jumbo v0, "null"

    :goto_2
    const-string/jumbo v1, "persist.vendor.bt.a2dp.aac.whitelist"

    .line 3211
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.vendor.bt.a2dp.aac.whitelists"

    if-eqz p1, :cond_8

    .line 3214
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addToWhiteList(Ljava/lang/String;)V

    goto :goto_5

    .line 3216
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->delFromWhiteList(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    :goto_3
    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    move-object v1, v3

    :goto_4
    const-string/jumbo v0, "persist.vendor.bt.a2dp.lhdc.enabled"

    .line 3197
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.vendor.bt.a2dp.lhdc.whitelist"

    if-ne p1, v2, :cond_b

    .line 3201
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->delFromWhiteList(Ljava/lang/String;)V

    goto :goto_5

    .line 3203
    :cond_b
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addToWhiteList(Ljava/lang/String;)V

    :cond_c
    :goto_5
    return-void
.end method


# virtual methods
.method public deviceReportInfoAnc(Ljava/lang/String;)V
    .locals 2

    .line 5065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceReportInfoAnc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5066
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5067
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$44;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$44;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    const-wide/16 p0, 0xa

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    .line 5502
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 568
    const-class p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 818
    sget p0, Lcom/android/settings/R$xml;->headsetLayout:I

    return p0
.end method

.method public initHandler()V
    .locals 3

    .line 4387
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HeadSetFragment"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mThread:Landroid/os/HandlerThread;

    .line 4388
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4389
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 4390
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/os/Looper;Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler-IA;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    return-void
.end method

.method public isDeviceIdSupportSetCodec(Ljava/lang/String;)Z
    .locals 1

    .line 6689
    sget-object p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->supportSetCodecDeviceId:[Ljava/lang/String;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    .line 6691
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 6692
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHfpConnected()Z
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1213
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAncLevelChange(I)V
    .locals 5

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAncLevelChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0101"

    const-string v1, "anc"

    const/4 v2, 0x1

    if-eqz p1, :cond_a

    const-string v3, "0100"

    if-eq p1, v2, :cond_7

    const/4 v0, 0x2

    const-string v4, "0102"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    .line 1179
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 1180
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 1181
    invoke-static {v1, p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1183
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportWindNoise(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "0104"

    if-eqz p1, :cond_2

    .line 1184
    invoke-direct {p0, v0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncLevel(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 1185
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1186
    invoke-direct {p0, v0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncLevel(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 1182
    :cond_3
    :goto_0
    invoke-direct {p0, v4, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncLevel(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 1170
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 1171
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 1172
    invoke-static {v1, p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 1175
    :cond_5
    invoke-direct {p0, v4, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncLevel(Ljava/lang/String;Z)V

    goto :goto_4

    .line 1173
    :cond_6
    :goto_1
    invoke-direct {p0, v3, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncLevel(Ljava/lang/String;Z)V

    goto :goto_4

    .line 1161
    :cond_7
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 1162
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 1163
    invoke-static {v1, p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 1166
    :cond_8
    invoke-direct {p0, v3, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncLevel(Ljava/lang/String;Z)V

    goto :goto_4

    .line 1164
    :cond_9
    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncLevel(Ljava/lang/String;Z)V

    goto :goto_4

    .line 1152
    :cond_a
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 1153
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 1154
    invoke-static {v1, p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_3

    .line 1157
    :cond_b
    invoke-direct {p0, v0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncLevel(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_c
    :goto_3
    const-string p1, "0103"

    .line 1155
    invoke-direct {p0, p1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncLevel(Ljava/lang/String;Z)V

    :cond_d
    :goto_4
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 574
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 575
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 576
    check-cast p1, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 577
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getSupport()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupport:Ljava/lang/String;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 6569
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateLayoutMargin()V

    .line 6570
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "vendor"

    .line 582
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 584
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 585
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "MiuiHeadsetFragment"

    if-eqz p1, :cond_0

    .line 586
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v4, "BT_Device"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 587
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v4, "BT_Device_Support"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupport:Ljava/lang/String;

    .line 588
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArguments(), mDevice: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mSupport: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupport:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 592
    sget v4, Lcom/android/settings/R$xml;->headsetLayout:I

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 593
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    const-string/jumbo v4, "profile_container"

    .line 594
    invoke-virtual {p0, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    const-string v4, "ldac_container"

    .line 596
    invoke-virtual {p0, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    if-nez p1, :cond_1

    const-string p1, "Activity started without a remote Bluetooth device"

    .line 600
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->finish()V

    return-void

    .line 604
    :cond_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 606
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    .line 607
    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 608
    invoke-virtual {v4, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez p1, :cond_2

    .line 610
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez p1, :cond_2

    const-string p1, "cacheddevice is null"

    .line 612
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->finish()V

    return-void

    .line 618
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 621
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    .line 622
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v6, "LDAC"

    invoke-virtual {v4, p1, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLDACDevice:Z

    const-string/jumbo p1, "support_lhdc"

    const/4 v4, 0x1

    .line 623
    invoke-static {p1, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "support_lhdc_offload"

    .line 624
    invoke-static {p1, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 625
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    const-string v7, "LHDC_V3"

    invoke-virtual {p1, v6, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    .line 626
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    const-string v7, "LHDC_V2"

    invoke-virtual {p1, v6, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV2Device:Z

    .line 627
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    const-string v7, "LHDC_V1"

    invoke-virtual {p1, v6, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV1Device:Z

    :cond_4
    const-string/jumbo p1, "support_a2dp_latency"

    .line 629
    invoke-static {p1, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 630
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    const-string v7, "aptX Adaptive"

    invoke-virtual {p1, v6, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAADevice:Z

    .line 631
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string/jumbo v6, "zmi_latency"

    invoke-virtual {p1, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v4, :cond_5

    move p1, v4

    goto :goto_0

    :cond_5
    move p1, v5

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSBCLlDevice:Z

    .line 633
    :cond_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    const-string v7, "AAC"

    invoke-virtual {p1, v6, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAACDevice:Z

    const-string p1, "audio_share_container"

    .line 635
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/PreferenceGroup;

    iput-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAudioShareContainer:Landroidx/preference/PreferenceGroup;

    const-string/jumbo v6, "support_audio_share"

    .line 636
    invoke-static {v6, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 637
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addPreferencesForAudioShare()V

    const-string p1, "SUPPORT_AUDIO_SHARE_FEATURE == true"

    .line 638
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 640
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 641
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAudioShareContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 646
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addPreferencesForProfiles()V

    :try_start_0
    const-string/jumbo p1, "mediatek"

    .line 653
    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v6, "qcom"

    .line 654
    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 655
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAbsAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    .line 656
    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAudioStreamMax:I

    if-eqz p1, :cond_a

    .line 658
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "persist_vendor_bt_a2dp_absvolfeature_mtk"

    invoke-static {p1, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_9

    .line 659
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAbsVolFeature:Ljava/lang/String;

    .line 661
    :cond_9
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "persist.bluetooth.a2dp.absolute.volume.whitelistall"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isDeviceInListForAbsoluteVolume(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mIsInAbsWhitelist:Z

    goto :goto_2

    :cond_a
    if-eqz v1, :cond_b

    const-string/jumbo p1, "persist.vendor.bt.a2dp.absvolfeature"

    const-string v1, "default"

    .line 664
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAbsVolFeature:Ljava/lang/String;

    .line 665
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "persist.vendor.bt.a2dp.absolute.volume.whitelistall"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isDeviceInListForAbsoluteVolume(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mIsInAbsWhitelist:Z

    goto :goto_2

    :cond_b
    const-string p1, "addPreferencesForAbsoluteVolume null"

    .line 668
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPreferencesForAbsoluteVolume failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :goto_2
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mIsInAbsWhitelist:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAbsVolFeature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 677
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addPreferencesForAbsoluteVolume()V

    const-string p1, "addPreferencesForAbsoluteVolume on create"

    .line 678
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_c
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceMacAddress:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isLeAudioBrDevice(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mIsBleAudioDevice:Z

    if-eqz p1, :cond_d

    .line 683
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addPreferencesForLeAudio()V

    .line 686
    :cond_d
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addPreferencesForSpecialCodec()V

    .line 688
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->loadDevice()V

    .line 689
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->initSpatialAudioPreferences()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string/jumbo v0, "onCreateView"

    const-string v1, "MiuiHeadsetFragment"

    .line 716
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    const-string p1, "mDevice is null in onCreateView()"

    .line 718
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->finish()V

    const/4 p0, 0x0

    return-object p0

    .line 722
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 723
    sget v0, Lcom/android/settings/R$layout;->headsetLayout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    .line 725
    sget v2, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 726
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 727
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 729
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->ancAdjustView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    .line 730
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x4

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 731
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 732
    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "anc"

    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 733
    invoke-static {p1, p3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 734
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setPointCount(I)V

    .line 736
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setAncLevelChangeListener(Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView$AncLevelChangeListener;)V

    .line 738
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget p3, Lcom/android/settings/R$id;->ancAdjustView2:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustViewWindNoise:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    .line 739
    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setPointCount(I)V

    .line 740
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustViewWindNoise:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setAncLevelChangeListener(Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView$AncLevelChangeListener;)V

    .line 741
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->transparentAdjustView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetTransparentAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    .line 742
    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->setTransparentLevelChangeListener(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$TransparentLevelChangeListener;)V

    .line 744
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->initTws()V

    .line 746
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->initDeviceName()V

    .line 748
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setOtaOnclick()V

    .line 750
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->initResource()V

    .line 752
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setAncOnClick()V

    .line 754
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_3

    .line 755
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    .line 757
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->initHandler()V

    .line 759
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->initButton()V

    const/4 p1, 0x1

    .line 761
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAndEnableCode(Z)V

    .line 763
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPrefConfig:Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInearTest:Landroidx/preference/CheckBoxPreference;

    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAutoAck:Landroidx/preference/CheckBoxPreference;

    if-eqz p3, :cond_4

    .line 765
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;-><init>(Landroid/bluetooth/BluetoothDevice;Landroidx/preference/CheckBoxPreference;Landroidx/preference/CheckBoxPreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPrefConfig:Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;

    .line 766
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;->initPreferenceConfig(Landroid/app/Activity;)V

    :cond_4
    const-string p1, "bleShareAudioCategory"

    .line 770
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_5

    const-string p1, "mBleAudioCategory not null and default remove it !"

    .line 772
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_5
    const-string p1, "mBleAudioCategory is null"

    .line 775
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->addHdAudio()V

    .line 779
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 p2, 0x65

    .line 780
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v2, 0x1f4

    .line 779
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 783
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz p1, :cond_7

    .line 784
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 785
    invoke-static {p1, p2, p3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 786
    :cond_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, p2}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 787
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 p2, 0x68

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 789
    :cond_7
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 p2, 0x6b

    .line 790
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 789
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 791
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportSilentUpgrade:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS02Headset(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 792
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 p2, 0x6d

    .line 793
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 792
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 797
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "miui headset activity service error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 3

    .line 875
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string v0, "MiuiHeadsetFragment"

    const-string v1, "Destory "

    .line 876
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDisconnectDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 879
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDisconnectDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 884
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 885
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->waitResultTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->waitResultTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 892
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 893
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 896
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    .line 897
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 899
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetBattery:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    if-eqz v0, :cond_5

    .line 900
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->clean()V

    .line 901
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetBattery:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    :cond_5
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .line 1874
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refresh()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 5

    .line 1113
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    const-string v0, ""

    const-string v1, "MiuiHeadsetFragment"

    if-nez p1, :cond_2

    .line 1115
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-nez v2, :cond_2

    .line 1116
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 1117
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1118
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1120
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v4, 0x6b

    invoke-interface {v2, v4, v0, v3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 1122
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1124
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onHiddenChanged set service error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    if-nez p1, :cond_6

    if-eqz v2, :cond_6

    .line 1129
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1130
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVersion:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1131
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVersion:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshStatusUi(Ljava/lang/String;)V

    .line 1133
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetBattery:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    if-eqz p1, :cond_5

    .line 1134
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->onHiddenChanged()V

    .line 1138
    :cond_5
    :try_start_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz p1, :cond_6

    .line 1139
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, p0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->getDeviceConfig(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 1142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "miui headset getDeviceConfig error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1065
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "pause "

    const-string v1, "MiuiHeadsetFragment"

    .line 1066
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 1069
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 1072
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1073
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "set scan mode connectable"

    .line 1074
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x15

    .line 1075
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const-string v0, "MiuiHeadsetFragment"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1483
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-nez v3, :cond_0

    const-string/jumbo p2, "preference changed service is null"

    .line 1484
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1487
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "Ineartest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "notificationdisplay"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_2
    const-string v4, "MultiConnectMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :sswitch_3
    const-string v4, "AutoAckMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "virtualSurroundSound"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_5
    const-string v4, "codecType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "silentUpgrade"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_7
    const-string v4, "hd_audio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_8
    const-string v4, "AudioMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v7

    :goto_1
    const-string v4, "01"

    const-string v8, "00"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_7

    .line 1581
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVirtualSurroundSound:Landroidx/preference/CheckBoxPreference;

    const/16 v5, 0x24

    if-eqz v3, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1582
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p2, v5, v4, v3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    goto :goto_2

    .line 1585
    :cond_2
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p2, v5, v8, v3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    :goto_2
    return v2

    .line 1551
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSilentUpgrade:Landroidx/preference/CheckBoxPreference;

    const/16 v4, 0x74

    if-eqz v3, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1552
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->red_dot:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1554
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string/jumbo v3, "true"

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p2, v4, v3, v5}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 1555
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSilentUpgradeStatus:Ljava/lang/Boolean;

    .line 1556
    iget p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mFwVersionCode:I

    if-eq p2, v7, :cond_6

    iget v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineVersionCode:I

    if-eq v3, v7, :cond_6

    if-ge p2, v3, :cond_6

    const-string p2, "The silent upgrade process starts"

    .line 1558
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiBTUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1561
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 1562
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->miheadset_network_not_available:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1561
    invoke-static {p2, v3, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_7

    .line 1566
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->getAccountInfo(I)V

    goto :goto_3

    .line 1570
    :cond_4
    iget p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mFwVersionCode:I

    if-eq p2, v7, :cond_5

    iget v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineVersionCode:I

    if-eq v3, v7, :cond_5

    if-ge p2, v3, :cond_5

    .line 1572
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->red_dot:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1575
    :cond_5
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v3, "false"

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p2, v4, v3, v5}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 1576
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSilentUpgradeStatus:Ljava/lang/Boolean;

    .line 1578
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setOtaOnclick()V

    return v2

    .line 1546
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    move p2, v2

    goto :goto_4

    :cond_7
    move p2, v1

    .line 1547
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "13|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHDValue:Ljava/lang/String;

    .line 1548
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 v3, 0x6a

    invoke-virtual {p2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v2

    .line 1530
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mNotifiDisplay:Landroidx/preference/CheckBoxPreference;

    if-eqz v3, :cond_8

    .line 1531
    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1533
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_8

    .line 1541
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const/16 v5, 0x72

    invoke-interface {v4, v5, p2, v3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    :cond_8
    return v2

    .line 1525
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    check-cast p2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v3, v2, p2, v4}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    return v2

    .line 1515
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMultiConnect:Landroidx/preference/CheckBoxPreference;

    if-eqz v3, :cond_9

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1516
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p2, v6, v4, v3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    goto :goto_5

    .line 1519
    :cond_9
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p2, v6, v8, v3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    :goto_5
    return v2

    .line 1511
    :pswitch_6
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setCodecInfo(I)V

    goto :goto_7

    .line 1497
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAutoAck:Landroidx/preference/CheckBoxPreference;

    if-eqz v3, :cond_a

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1498
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v3, v5, v4, v6}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    goto :goto_6

    .line 1501
    :cond_a
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v3, v5, v8, v4}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 1504
    :goto_6
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPrefConfig:Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;

    if-eqz v3, :cond_b

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_b

    .line 1505
    check-cast p2, Ljava/lang/Boolean;

    const-string v5, "AutoAckModePref"

    invoke-virtual {v3, p2, v5, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;->setSharedPref(Ljava/lang/Boolean;Ljava/lang/String;Landroid/app/Activity;)V

    :cond_b
    return v2

    .line 1489
    :pswitch_8
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPrefConfig:Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;

    if-eqz v3, :cond_c

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_c

    .line 1490
    check-cast p2, Ljava/lang/Boolean;

    const-string v5, "InEarTestPref"

    invoke-virtual {v3, p2, v5, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetPreferenceConfig;->setSharedPref(Ljava/lang/Boolean;Ljava/lang/String;Landroid/app/Activity;)V

    .line 1493
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setInEarStatus()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception p2

    .line 1593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :goto_7
    instance-of p2, p1, Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v0, "support_audio_share"

    if-eqz p2, :cond_11

    .line 1598
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v3, "ldac_pre"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1599
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->onPrefClicked(Landroidx/preference/CheckBoxPreference;)V

    return v2

    :cond_d
    const-string p2, "abs_volume_pre"

    .line 1603
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 1604
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->onAbsVolumePrefClicked(Landroidx/preference/CheckBoxPreference;)V

    return v2

    :cond_e
    const-string p2, "le_audio_pre"

    .line 1608
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 1609
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->onLeAudioPrefClicked(Landroidx/preference/CheckBoxPreference;)V

    return v2

    .line 1613
    :cond_f
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_10

    const-string p2, "audio_share_switch_pre"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 1614
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->onAudioShareSwitchPrefClicked(Landroidx/preference/CheckBoxPreference;)V

    return v2

    .line 1619
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->getProfileOf(Landroidx/preference/Preference;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object p2

    .line 1620
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->onProfileClicked(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroidx/preference/CheckBoxPreference;)V

    return v2

    .line 1624
    :cond_11
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_12

    instance-of p0, p1, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    if-eqz p0, :cond_12

    return v2

    :cond_12
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d597187 -> :sswitch_8
        -0x7aeca12d -> :sswitch_7
        -0x64f0fbf9 -> :sswitch_6
        -0x4302e790 -> :sswitch_5
        -0x4011dada -> :sswitch_4
        -0x354bd703 -> :sswitch_3
        0x391c6ad4 -> :sswitch_2
        0x3e75c177 -> :sswitch_1
        0x751d2003 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 8

    .line 1444
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "localOta"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string p2, "fitness_check"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string p2, "key_config"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string/jumbo p2, "mi_headset_loss_dialog"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string p2, "bleShareAudioBroadcastSwitch"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string p2, "bleAudioBroadcastAdd"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string/jumbo p2, "voicetraining"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v0

    :goto_0
    const-string p1, "MiuiHeadsetFragment"

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1458
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->startLocalOta()V

    goto :goto_1

    .line 1462
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->gotoFitnessFragment()V

    goto :goto_1

    .line 1450
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->gotoKeyConfigFragment()V

    goto :goto_1

    .line 1454
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->miHeadsetLost()V

    goto :goto_1

    :pswitch_4
    const-string/jumbo p0, "preference clicked KEY_BLE_ADUIO_SHARE_BROADCAST_SWITCH"

    .line 1465
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_5
    const-string/jumbo p2, "preference clicked KEY_BLE_ADUIO_BROADCAST_ADD"

    .line 1469
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1471
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string p2, "device"

    invoke-virtual {v3, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1472
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "com.android.settings.bluetooth.MiuiBluetoothShareBroadcastFragment"

    sget v4, Lcom/android/settings/R$string;->bluetooth_share_broadcast:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/settings/MiuiUtils;->startPreferencePanel(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroidx/fragment/app/Fragment;I)V

    goto :goto_1

    .line 1446
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->startAssist()V

    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x645067f4 -> :sswitch_6
        -0x2eda8905 -> :sswitch_5
        -0x1736a5fd -> :sswitch_4
        -0x1587877c -> :sswitch_3
        0x3cfc922 -> :sswitch_2
        0x3394dff1 -> :sswitch_1
        0x714b9bb1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 14

    .line 914
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "onResume "

    const-string v1, "MiuiHeadsetFragment"

    .line 915
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    .line 918
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isFirstOnResume:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 919
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 920
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isFirstOnResume:Z

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetBattery:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    if-nez v0, :cond_1

    .line 924
    new-instance v0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 925
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetBattery:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAnimation:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    if-nez v0, :cond_2

    .line 928
    new-instance v0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 929
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v10, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAnimation:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    .line 931
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    if-nez v0, :cond_3

    .line 932
    new-instance v0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 933
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v10, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    iget-object v11, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v12, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    iget-object v13, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/os/Handler;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    .line 938
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInitedAtUi:Z

    .line 939
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isHfpConnected()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0, v2, v4}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 940
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshInDisconnect()V

    goto :goto_0

    .line 941
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isHfpConnected()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 942
    invoke-static {v0, v2, v4}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 943
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 v2, 0x68

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 945
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->k73HDAudioEable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 946
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 v2, 0x69

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 948
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 953
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_8

    .line 954
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 955
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_8

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error for bond state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refresh()V

    .line 962
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateLayoutMargin()V

    .line 965
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "codec_claimer"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    .line 967
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 968
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV2Device:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV1Device:Z

    if-eqz v4, :cond_9

    goto :goto_1

    .line 975
    :cond_9
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLDACDevice:Z

    if-eqz v4, :cond_c

    .line 976
    sget v4, Lcom/android/settings/R$string;->bt_ldac_declaration:I

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(I)V

    .line 977
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 969
    :cond_a
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 970
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "miui_bluetooth_lhdc_whitelist_cache"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v5, ""

    if-ne v4, v5, :cond_c

    .line 972
    :cond_b
    sget v4, Lcom/android/settings/R$string;->bt_lhdc_declaration:I

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setTitle(I)V

    .line 973
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 979
    :cond_c
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setDeviceAACWhiteListConfig(Z)V

    .line 982
    :cond_d
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    if-eqz v0, :cond_e

    const/16 v4, 0x6c

    .line 983
    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 986
    :cond_e
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 987
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "set scan mode connectable and discoverable"

    .line 988
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x17

    .line 989
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 992
    :cond_f
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    if-eqz v0, :cond_10

    .line 993
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LHDC_V3"

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_10

    move v0, v2

    goto :goto_3

    :cond_10
    move v0, v3

    :goto_3
    const-string/jumbo v4, "support_audio_share"

    .line 995
    invoke-static {v4, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 996
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 997
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "miui_store_audio_share_device_address"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 998
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1000
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "audio_share_switch_pre"

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/CheckBoxPreference;

    .line 1002
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "audio_share_volume_pre"

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    .line 1004
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "ldac_pre"

    invoke-virtual {v7, v8}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/CheckBoxPreference;

    .line 1006
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "latency_pre"

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    check-cast v8, Landroidx/preference/CheckBoxPreference;

    if-eqz v4, :cond_11

    .line 1008
    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1009
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1010
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v9, "AUDIO_SHARE_SWITCH"

    invoke-virtual {v4, v9, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_11
    if-eqz v5, :cond_12

    const/16 v4, 0x32

    .line 1013
    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 1014
    invoke-virtual {v5, v3}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1015
    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1016
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5, v6, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_12
    if-eqz v7, :cond_13

    .line 1019
    invoke-virtual {v7, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_13
    if-eqz v8, :cond_15

    .line 1022
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    if-eqz v4, :cond_14

    .line 1023
    invoke-virtual {v8, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    .line 1025
    :cond_14
    invoke-virtual {v8, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1030
    :cond_15
    :goto_4
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "hd_audio"

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/CheckBoxPreference;

    if-eqz v4, :cond_17

    .line 1032
    iget-boolean v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    if-eqz v5, :cond_16

    .line 1033
    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    .line 1035
    :cond_16
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    if-eqz v5, :cond_17

    .line 1036
    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-string/jumbo v4, "prefHdAudio error!"

    .line 1041
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_17
    :goto_5
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLHDCV3Device:Z

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->configCodec:Lmiuix/preference/DropDownPreference;

    if-eqz v4, :cond_18

    xor-int/2addr v0, v2

    .line 1046
    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1048
    :cond_18
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1050
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "le_audio_pre"

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1a

    .line 1051
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSCOOn()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isLeAudioCgOn()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1052
    :cond_19
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v4, "leAudioPre.setEnabled(false) when calling"

    .line 1053
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz v0, :cond_1b

    .line 1055
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isHfpConnected()Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result p0

    if-eq p0, v2, :cond_1b

    .line 1056
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p0, "leAudioPre.setEnabled(false) when HFP is unavailable x"

    .line 1057
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 908
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 909
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "device"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onServiceConnected()V
    .locals 12

    const-string v0, "MiuiHeadsetFragment"

    .line 1223
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 1224
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    .line 1226
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-nez v1, :cond_5

    .line 1227
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 1228
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1229
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1231
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v2, ""

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v4, 0x6e

    invoke-interface {v1, v4, v2, v3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get local version code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1234
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVersionCodeLocal:I

    .line 1236
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 v2, 0x6b

    .line 1237
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1236
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1238
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportSilentUpgrade:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS02Headset(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1239
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 v2, 0x6d

    .line 1240
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1239
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1242
    :cond_4
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->k73HDAudioEable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1243
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1246
    :cond_5
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAnimation:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->updateService(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;)V

    .line 1248
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    if-nez v1, :cond_6

    .line 1249
    new-instance v1, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 1250
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v8, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    iget-object v9, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v10, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    iget-object v11, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/os/Handler;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    .line 1253
    :cond_6
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->updateService(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;)V

    .line 1255
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity define service error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 6

    .line 823
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    const-string v0, "MiuiHeadsetFragment"

    const-string/jumbo v1, "onStart()"

    .line 824
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    .line 826
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 827
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 828
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.bluetooth.ACTION.MMA_STATUS_CHANGED"

    .line 829
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "support_audio_share"

    const/4 v3, 0x0

    .line 831
    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "MultiA2dp.ACTION.VOLUME_CHANGED"

    .line 832
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 836
    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    if-eqz v0, :cond_1

    .line 837
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 838
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "MultiA2dp.ACTION.RESET_STATE_CHANGED"

    .line 840
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothMultiA2DPStateResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 842
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 843
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfpAudioStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 845
    :cond_1
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 847
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfpAudioStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 850
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->getProfileProxy()V

    return-void
.end method

.method public onStop()V
    .locals 5

    .line 854
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    const-string/jumbo v0, "onstop "

    const-string v1, "MiuiHeadsetFragment"

    .line 855
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "support_audio_share"

    const/4 v2, 0x0

    .line 858
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothMultiA2DPStateResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 860
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfpAudioStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 861
    :cond_0
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfpAudioStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 865
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->closeProfileProxy(I)V

    return-void
.end method

.method public onTransparentLevelChange(I)V
    .locals 2

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTransparentLevelChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "0200"

    .line 1203
    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncLevel(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string p1, "0201"

    .line 1200
    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncLevel(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public refreshConfigInfo(ILjava/lang/String;)V
    .locals 2

    .line 5028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receiver message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5029
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5030
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$43;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$43;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;ILjava/lang/String;)V

    const-wide/16 p0, 0xa

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public refreshFunKeyInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5005
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5006
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$41;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$41;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0xa

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method refreshInDisconnect()V
    .locals 4

    const-string/jumbo v0, "refreshInDisconnect"

    const-string v1, "MiuiHeadsetFragment"

    .line 5462
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5464
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetBattery:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    if-eqz v0, :cond_0

    .line 5465
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->onDeviceDisconnectted()V

    .line 5467
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/android/settings/R$id;->versionName:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 5468
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->miheadset_connectHeadsetForFw:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "-1"

    const/4 v2, 0x0

    .line 5470
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncUi(Ljava/lang/String;Z)V

    .line 5471
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->otaLayout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 5472
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->red_dot:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5473
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mOtaIndicate:Ljava/lang/Boolean;

    .line 5474
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInitedAtUi:Z

    .line 5475
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportGyr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->headTrackingCheckBox:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportHeadTrackAlgo:Z

    if-eqz v3, :cond_1

    .line 5476
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 5478
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportGyr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->immersionAudioCheckBox:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportHeadTrackAlgo:Z

    if-eqz v3, :cond_2

    .line 5479
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 5481
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportInear:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mInearTest:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 5482
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 5484
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mShowAutoAck:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAutoAck:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 5485
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 5487
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportSilentUpgrade:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSilentUpgrade:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 5488
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 5490
    :cond_5
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mVirtualSurroundSound:Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_6

    .line 5491
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method public refreshInearInfo(Z)V
    .locals 2

    .line 5016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get inear succeed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5017
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5018
    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$42;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$42;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    const-wide/16 p0, 0xa

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public refreshStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :try_start_0
    const-string v3, "MiuiHeadsetFragment"

    .line 4642
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshStatus address@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",callbackData=>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4643
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_0

    goto/16 :goto_c

    :cond_0
    const-string v3, "ONLINEVERSION"

    .line 4646
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_1

    .line 4647
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "versionDisplayName"

    .line 4648
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineVerion:Ljava/lang/String;

    const-string/jumbo v2, "version"

    .line 4649
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineVersionCode:I

    const-string/jumbo v2, "url"

    .line 4650
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineUrl:Ljava/lang/String;

    const-string/jumbo v2, "versionDisplayDescription"

    .line 4651
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mLastOnlineMessage:Ljava/lang/String;

    const-string v2, "ONLINEVERSION"

    const-string v3, ""

    .line 4652
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleOtaInfo(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, "SERVER_NOT_ACCESSIBLE"

    .line 4654
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "SERVER_NOT_ACCESSIBLE"

    const-string v3, ""

    .line 4655
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleOtaInfo(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v3, "hd_audio"

    .line 4657
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "hd_audio"

    const-string v4, ""

    .line 4658
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleHdAudio(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v3, "FIRST_INFOS"

    .line 4660
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "FIRST_INFOS"

    const-string v4, ""

    .line 4661
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 4662
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4663
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 4667
    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAtUiInfo(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    const-string v0, "MiuiHeadsetFragment"

    const-string v1, "AT callback data is not belong to the device"

    .line 4664
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const-string v3, "GYR_CTRL"

    .line 4669
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "GYR_CTRL"

    const-string v5, ""

    .line 4670
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 4671
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-boolean v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportHeadTrackAlgo:Z

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_d

    const-wide/16 v5, 0xa

    if-eqz v2, :cond_7

    const-string v3, "1"

    .line 4673
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4674
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$34;

    invoke-direct {v7, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$34;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-virtual {v3, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 4684
    :cond_7
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$35;

    invoke-direct {v7, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$35;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-virtual {v3, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_8
    const-string v3, "WIND_NOISE"

    .line 4695
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "WIND_NOISE"

    const-string v4, ""

    .line 4696
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 4697
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK71Headset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4698
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_a

    .line 4699
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "01"

    .line 4700
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4701
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportWindNoise:Ljava/lang/Boolean;

    const-string v1, "0104"

    .line 4702
    iput-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPendingAnc:Ljava/lang/String;

    goto :goto_1

    .line 4704
    :cond_9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportWindNoise:Ljava/lang/Boolean;

    :cond_a
    :goto_1
    return-void

    :cond_b
    const-string v3, "Virtual_Surround_Sound"

    .line 4708
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v3, 0x24

    .line 4709
    invoke-virtual {v0, v3, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshConfigInfo(ILjava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v3, "MMA_CONNECTION_FAILED"

    .line 4710
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "MiuiHeadsetFragment"

    const-string v5, "ROM: MMA_CONNECTION_FAILED"

    .line 4711
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->handleConnectMmaFailed(Ljava/lang/String;)V

    :cond_d
    :goto_2
    const-string v3, "MiuiHeadsetFragment"

    .line 4714
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mSupportWindNoise:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportWindNoise:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4715
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v5, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v6, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 4716
    invoke-static {v3, v5, v6}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v0, "MiuiHeadsetFragment"

    const-string v1, "mBluetoothHfp null"

    .line 4717
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4720
    :cond_e
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->findLeAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    const-string v3, ""

    :cond_f
    const-string v5, "\\,"

    const/4 v6, -0x1

    .line 4723
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 4724
    iget-object v7, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_10

    const-string v0, "MiuiHeadsetFragment"

    const-string v1, "callback data is not belong to this device"

    .line 4725
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4728
    :cond_10
    array-length v1, v5

    if-eq v1, v4, :cond_11

    return-void

    :cond_11
    const/4 v1, 0x3

    .line 4729
    aget-object v3, v5, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_12

    move v3, v6

    goto :goto_3

    :cond_12
    move v3, v4

    :goto_3
    const/4 v7, 0x4

    .line 4730
    aget-object v8, v5, v7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v8, 0x5

    .line 4731
    aget-object v9, v5, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v9, 0x6

    .line 4732
    aget-object v9, v5, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v9, 0x7

    .line 4733
    aget-object v10, v5, v9

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    move v10, v6

    goto :goto_4

    :cond_13
    move v10, v4

    :goto_4
    const/16 v11, 0x8

    .line 4734
    aget-object v12, v5, v11

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    move v12, v6

    goto :goto_5

    :cond_14
    move v12, v4

    :goto_5
    const/16 v13, 0x9

    .line 4735
    aget-object v14, v5, v13

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_15

    move v14, v6

    goto :goto_6

    :cond_15
    move v14, v4

    :goto_6
    const/16 v15, 0xa

    .line 4736
    aget-object v15, v5, v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    const/16 v15, 0xb

    .line 4737
    aget-object v16, v5, v15

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_16

    move/from16 v16, v6

    goto :goto_7

    :cond_16
    move/from16 v16, v4

    :goto_7
    const/16 v17, 0xc

    .line 4738
    aget-object v18, v5, v17

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_17

    move/from16 v18, v6

    goto :goto_8

    :cond_17
    move/from16 v18, v4

    :goto_8
    const/16 v19, 0xd

    .line 4739
    aget-object v20, v5, v19

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_18

    move/from16 v20, v6

    goto :goto_9

    :cond_18
    move/from16 v20, v4

    :goto_9
    const/16 v21, 0xe

    .line 4740
    aget-object v22, v5, v21

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_19

    move v4, v6

    .line 4742
    :cond_19
    iget-object v15, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetBattery:Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;

    if-eqz v15, :cond_1a

    .line 4743
    invoke-virtual {v15, v5}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetBattery;->onBatteryChanged([Ljava/lang/String;)V

    :cond_1a
    if-eqz v3, :cond_1b

    .line 4746
    aget-object v3, v5, v7

    aget-object v8, v5, v8

    aget-object v15, v5, v1

    invoke-direct {v0, v3, v8, v15}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    if-eqz v10, :cond_1f

    .line 4749
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v8, "MiuiHeadsetFragment"

    .line 4750
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ancLevelExist mAncPendingStatus: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncPendingStatus:I

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " mPendingAnc: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPendingAnc:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " data[7]="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v5, v9

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4753
    iget v8, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncPendingStatus:I

    if-nez v8, :cond_1d

    .line 4754
    iput v6, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncPendingStatus:I

    .line 4755
    iget-object v8, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    const/16 v10, 0x67

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 4756
    iget-object v8, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mWorkHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v1, 0x5dc

    invoke-virtual {v8, v10, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4757
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportWindNoise:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "0104"

    .line 4758
    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->deviceReportInfoAnc(Ljava/lang/String;)V

    goto :goto_a

    .line 4760
    :cond_1c
    aget-object v1, v5, v9

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->deviceReportInfoAnc(Ljava/lang/String;)V

    goto :goto_a

    .line 4763
    :cond_1d
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportWindNoise:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "0104"

    .line 4764
    iput-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPendingAnc:Ljava/lang/String;

    goto :goto_a

    .line 4766
    :cond_1e
    aget-object v1, v5, v9

    iput-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPendingAnc:Ljava/lang/String;

    :goto_a
    const-string v1, "MiuiHeadsetFragment"

    .line 4769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAncPendingStatus: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mAncPendingStatus:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mPendingAnc: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mPendingAnc:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4770
    monitor-exit v3

    goto :goto_b

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_1f
    :goto_b
    if-eqz v14, :cond_20

    .line 4773
    aget-object v1, v5, v13

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshFunKeyInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    if-eqz v12, :cond_21

    .line 4776
    aget-object v1, v5, v11

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshInearInfo(Z)V

    :cond_21
    if-eqz v16, :cond_22

    const/16 v1, 0xb

    .line 4779
    aget-object v1, v5, v1

    invoke-virtual {v0, v6, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshConfigInfo(ILjava/lang/String;)V

    :cond_22
    if-eqz v18, :cond_23

    const-string v1, ""

    .line 4782
    aget-object v2, v5, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshFunKeyInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    if-eqz v20, :cond_24

    .line 4785
    aget-object v1, v5, v19

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshConfigInfo(ILjava/lang/String;)V

    :cond_24
    if-eqz v4, :cond_25

    .line 4788
    aget-object v1, v5, v21

    invoke-virtual {v0, v7, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshConfigInfo(ILjava/lang/String;)V

    :cond_25
    move-object/from16 v1, p2

    .line 4790
    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateLeAudioPreWP(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_d

    :cond_26
    :goto_c
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MiuiHeadsetFragment"

    .line 4792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error to refresh status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method

.method refreshStatusUi(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MiuiHeadsetFragment"

    .line 5441
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    if-nez v1, :cond_0

    const-string/jumbo p0, "mRootView is null"

    .line 5442
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5446
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5447
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->versionName:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5448
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5450
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 5451
    sget v1, Lcom/android/settings/R$id;->anclayout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportAnc:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5453
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mSupportOta:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5454
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->otaLayout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 5457
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public setInEarStatus()V
    .locals 2

    :try_start_0
    const-string v0, "Ineartest"

    .line 5270
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 5271
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5272
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->changePlayStatus(ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 5274
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->changePlayStatus(ILandroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiHeadsetFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPadAlpha(Z)V
    .locals 7

    if-eqz p1, :cond_0

    .line 4171
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->opacity_enabled:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    .line 4172
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ancAdjust:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4173
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ancAdjustText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4174
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->transparentAdjust:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4175
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->transparentAdjustText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4176
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->ancAdjustView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 4177
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->transparentAdjustView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 4179
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->opacity_disabled:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    .line 4180
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ancAdjust:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4181
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->ancAdjustText:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4182
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4183
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->ancAdapterText:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4185
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->transparentAdjust:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4186
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->transparentAdjustText:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4187
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4188
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4189
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4190
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4191
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->ancAdjustView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 4192
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->transparentAdjustView:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public updateAncUi(Ljava/lang/String;Z)V
    .locals 24

    move-object/from16 v0, p0

    .line 3858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAncUi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MiuiHeadsetFragment"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isHfpConnected()Z

    move-result v1

    const-string v5, "-1"

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v6, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v7, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 3860
    invoke-static {v1, v6, v7}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v3, v5

    :cond_0
    if-eqz v3, :cond_24

    const-string v1, ""

    .line 3863
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_12

    .line 3866
    :cond_1
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    if-nez v1, :cond_2

    const-string/jumbo v0, "mRootView is null when to update anc"

    .line 3867
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3870
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->imageTransport:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3872
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->imageopenAnc:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3873
    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->imageCloseAnc:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3875
    iget-object v6, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v7, Lcom/android/settings/R$id;->transport:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 3876
    iget-object v7, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v8, Lcom/android/settings/R$id;->openAnc:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3877
    iget-object v8, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v9, Lcom/android/settings/R$id;->closeAnc:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 3879
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_3

    .line 3880
    invoke-virtual {v6, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 3881
    invoke-virtual {v7, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 3882
    invoke-virtual {v8, v11}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 3884
    :cond_3
    invoke-virtual {v6, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 3885
    invoke-virtual {v7, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 3886
    invoke-virtual {v8, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 3889
    :goto_0
    iget-object v6, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v7, Lcom/android/settings/R$id;->transparents:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 3890
    iget-object v7, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v8, Lcom/android/settings/R$id;->ancText:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3891
    iget-object v8, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v9, Lcom/android/settings/R$id;->closeAncText:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 3892
    iget-object v9, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v12, Lcom/android/settings/R$id;->ancAdapterText:I

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 3893
    iget-object v13, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v14, Lcom/android/settings/R$id;->ancLowText:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 3894
    iget-object v14, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v15, Lcom/android/settings/R$id;->ancMediumText:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3895
    iget-object v15, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v10, Lcom/android/settings/R$id;->ancHighText:I

    invoke-virtual {v15, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 3896
    iget-object v15, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v11, Lcom/android/settings/R$id;->enhanceVoiceText:I

    invoke-virtual {v15, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 3897
    iget-object v15, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    move-object/from16 v16, v5

    sget v5, Lcom/android/settings/R$id;->transparentModeText:I

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3898
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v17, v3

    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v18, v4

    const/4 v4, -0x2

    move-object/from16 v19, v2

    const/4 v2, 0x0

    invoke-direct {v15, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3900
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v20, v1

    const v1, 0x4019999a    # 2.4f

    invoke-direct {v3, v2, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 3902
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "anc"

    const-string v4, " "

    move-object/from16 v21, v5

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 3903
    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 3904
    invoke-static {v2, v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_1

    .line 3919
    :cond_4
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3920
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3921
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustViewWindNoise:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3922
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3923
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3924
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/settings/R$string;->miheadset_ancMild:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3925
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3927
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v22, v2

    sget v2, Lcom/android/settings/R$string;->miheadset_ancEquilibrium:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3930
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->miheadset_ancDepth:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3933
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3934
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->miheadset_windnoise:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    move-object/from16 v22, v2

    .line 3935
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportWindNoise(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3936
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3937
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustViewWindNoise:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3938
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3939
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3940
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->miheadset_ancLow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3941
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3943
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/settings/R$string;->miheadset_ancMedium:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3946
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->miheadset_ancHigh:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3949
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3950
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->miheadset_windnoise:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    :goto_1
    move-object/from16 v22, v2

    .line 3905
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3906
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3908
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/settings/R$string;->miheadset_ancMild:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3910
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    .line 3911
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 3913
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->miheadset_ancEquilibrium:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3915
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3917
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3918
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->miheadset_ancDepth:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3953
    :cond_7
    :goto_2
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->first_text_color:I

    .line 3954
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3953
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3955
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3956
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3955
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3957
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3958
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3957
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3959
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->anc_text_unselect_color:I

    .line 3960
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3959
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3961
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3962
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3961
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3963
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3964
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3963
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3965
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3966
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3965
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3967
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3968
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3967
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3969
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3970
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move-object/from16 v5, v21

    .line 3969
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3972
    move-object/from16 v1, v20

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 3973
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->Transparent_OFF:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3972
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3974
    move-object/from16 v2, v19

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 3975
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$drawable;->openAnc_OFF:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3974
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3976
    move-object/from16 v4, v18

    check-cast v4, Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 3977
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v15, Lcom/android/settings/R$drawable;->closeAnc_OFF:I

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3976
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v3, v20

    const/4 v15, 0x0

    .line 3978
    invoke-virtual {v0, v3, v15}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateImageParament(Landroid/view/View;Z)V

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    .line 3979
    invoke-virtual {v0, v4, v15}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateImageParament(Landroid/view/View;Z)V

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    .line 3980
    invoke-virtual {v0, v8, v15}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateImageParament(Landroid/view/View;Z)V

    .line 3981
    sget-boolean v15, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v15, :cond_8

    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setPadAlpha(Z)V

    .line 3983
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v15

    move-object/from16 v18, v8

    const/16 v23, -0x1

    sparse-switch v15, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v15, "0201"

    move-object/from16 v8, v17

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto/16 :goto_4

    :cond_9
    const/16 v23, 0x8

    goto/16 :goto_4

    :sswitch_1
    move-object/from16 v8, v17

    const-string v15, "0200"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto/16 :goto_4

    :cond_a
    const/4 v8, 0x7

    goto :goto_3

    :sswitch_2
    move-object/from16 v8, v17

    const-string v15, "0104"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_4

    :cond_b
    const/4 v8, 0x6

    goto :goto_3

    :sswitch_3
    move-object/from16 v8, v17

    const-string v15, "0103"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_4

    :cond_c
    const/4 v8, 0x5

    goto :goto_3

    :sswitch_4
    move-object/from16 v8, v17

    const-string v15, "0102"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_4

    :cond_d
    const/4 v8, 0x4

    :goto_3
    move/from16 v23, v8

    goto :goto_4

    :sswitch_5
    move-object/from16 v8, v17

    const-string v15, "0101"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_4

    :cond_e
    const/16 v23, 0x3

    goto :goto_4

    :sswitch_6
    move-object/from16 v8, v17

    const-string v15, "0100"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_4

    :cond_f
    const/16 v23, 0x2

    goto :goto_4

    :sswitch_7
    move-object/from16 v8, v17

    const-string v15, "0000"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_4

    :cond_10
    const/16 v23, 0x1

    goto :goto_4

    :sswitch_8
    move-object/from16 v15, v16

    move-object/from16 v8, v17

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    goto :goto_4

    :cond_11
    const/16 v23, 0x0

    :goto_4
    packed-switch v23, :pswitch_data_0

    goto/16 :goto_11

    .line 3985
    :pswitch_0
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 3986
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$color;->anc_text_color:I

    .line 3987
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 3985
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3988
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 3989
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/settings/R$drawable;->Transparent_ON:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3988
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3990
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ancAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3991
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->ancAdjustText:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3992
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->transparentAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3993
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->transparentAdjustText:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3994
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 3995
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3994
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3996
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetTransparentAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->setCurrentPointIndex(I)V

    const/4 v1, 0x1

    .line 3997
    invoke-virtual {v0, v3, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateImageParament(Landroid/view/View;Z)V

    goto/16 :goto_11

    .line 4000
    :pswitch_1
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4001
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$color;->anc_text_color:I

    .line 4002
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 4000
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4003
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4004
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/android/settings/R$drawable;->Transparent_ON:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4003
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4005
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ancAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4006
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->ancAdjustText:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4007
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->transparentAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4008
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->transparentAdjustText:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4009
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetTransparentAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->setCurrentPointIndex(I)V

    .line 4010
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4011
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4010
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4012
    invoke-virtual {v0, v3, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateImageParament(Landroid/view/View;Z)V

    goto/16 :goto_11

    .line 4119
    :pswitch_2
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4120
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$color;->anc_text_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4119
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4121
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4122
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/settings/R$drawable;->openAnc_ON:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4121
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4123
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ancAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4124
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->ancAdjustText:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4125
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->transparentAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4126
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->transparentAdjustText:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4127
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportWindNoise(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4128
    :cond_12
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustViewWindNoise:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setCurrentPointIndex(I)V

    .line 4129
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4130
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4129
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_13
    const/4 v1, 0x1

    .line 4132
    invoke-virtual {v0, v4, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateImageParament(Landroid/view/View;Z)V

    goto/16 :goto_11

    .line 4015
    :pswitch_3
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4016
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$color;->anc_text_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4015
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4017
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4018
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/settings/R$drawable;->openAnc_ON:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4017
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4019
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ancAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4020
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->ancAdjustText:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4021
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->transparentAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4022
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->transparentAdjustText:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4023
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 4024
    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    move-object/from16 v5, v22

    .line 4026
    invoke-static {v5, v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4027
    :cond_14
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4028
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setCurrentPointIndex(I)V

    .line 4029
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4030
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4029
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_15
    const/4 v1, 0x1

    .line 4032
    invoke-virtual {v0, v4, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateImageParament(Landroid/view/View;Z)V

    goto/16 :goto_11

    :pswitch_4
    move-object/from16 v5, v22

    .line 4091
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4092
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$color;->anc_text_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4091
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4093
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4094
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/settings/R$drawable;->openAnc_ON:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4093
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4095
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ancAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4096
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->ancAdjustText:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4097
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->transparentAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4098
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->transparentAdjustText:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4099
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 4100
    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 4102
    invoke-static {v5, v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_6

    .line 4107
    :cond_16
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportWindNoise(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_5

    .line 4112
    :cond_17
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setCurrentPointIndex(I)V

    .line 4113
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4114
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4113
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    :cond_18
    :goto_5
    const/4 v2, 0x2

    .line 4108
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustViewWindNoise:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setCurrentPointIndex(I)V

    .line 4109
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4110
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4109
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 4103
    :cond_19
    :goto_6
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4104
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setCurrentPointIndex(I)V

    .line 4105
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4106
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4105
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_7
    const/4 v1, 0x1

    .line 4116
    invoke-virtual {v0, v4, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateImageParament(Landroid/view/View;Z)V

    goto/16 :goto_11

    :pswitch_5
    move-object/from16 v5, v22

    .line 4035
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4036
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$color;->anc_text_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4035
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4037
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4038
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/settings/R$drawable;->openAnc_ON:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4037
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4039
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ancAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4040
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->ancAdjustText:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4041
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->transparentAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4042
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->transparentAdjustText:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4043
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 4044
    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 4046
    invoke-static {v5, v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_a

    .line 4051
    :cond_1a
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportWindNoise(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_8

    .line 4056
    :cond_1b
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setCurrentPointIndex(I)V

    .line 4057
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4058
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4057
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    :cond_1c
    :goto_8
    const/4 v2, 0x0

    .line 4052
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustViewWindNoise:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setCurrentPointIndex(I)V

    .line 4053
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4054
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4053
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_9
    const/4 v2, 0x1

    goto :goto_b

    :cond_1d
    :goto_a
    const/4 v2, 0x0

    .line 4047
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4048
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setCurrentPointIndex(I)V

    .line 4049
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4050
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4049
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4060
    :goto_b
    invoke-virtual {v0, v4, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateImageParament(Landroid/view/View;Z)V

    goto/16 :goto_11

    :pswitch_6
    move-object/from16 v5, v22

    .line 4063
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4064
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$color;->anc_text_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4063
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4065
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4066
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/android/settings/R$drawable;->openAnc_ON:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4065
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4067
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ancAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4068
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->ancAdjustText:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4069
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->transparentAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4070
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->transparentAdjustText:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4071
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 4072
    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    .line 4074
    invoke-static {v5, v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_d

    .line 4079
    :cond_1e
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->isSupportWindNoise(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_c

    .line 4084
    :cond_1f
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setCurrentPointIndex(I)V

    .line 4085
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4086
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4085
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextColor(I)V

    move v1, v2

    goto :goto_f

    :cond_20
    :goto_c
    const/4 v2, 0x1

    .line 4080
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustViewWindNoise:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setCurrentPointIndex(I)V

    .line 4081
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4082
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4081
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e

    .line 4075
    :cond_21
    :goto_d
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4076
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAncAdjustView:Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetAncAdjustView;->setCurrentPointIndex(I)V

    .line 4077
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4078
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 4077
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_e
    const/4 v1, 0x1

    .line 4088
    :goto_f
    invoke-virtual {v0, v4, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateImageParament(Landroid/view/View;Z)V

    goto/16 :goto_11

    .line 4135
    :pswitch_7
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4136
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->anc_text_color:I

    .line 4137
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move-object/from16 v8, v19

    .line 4135
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4138
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4139
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->closeAnc_ON:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v4, v20

    .line 4138
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4140
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    .line 4141
    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setPadAlpha(Z)V

    goto :goto_10

    .line 4143
    :cond_22
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ancAdjust:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4144
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->ancAdjustText:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4145
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->transparentAdjust:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4146
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->transparentAdjustText:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    move-object/from16 v1, v18

    const/4 v2, 0x1

    .line 4148
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateImageParament(Landroid/view/View;Z)V

    goto :goto_11

    :pswitch_8
    const/16 v2, 0x8

    .line 4152
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_23

    const/4 v1, 0x0

    .line 4153
    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->setPadAlpha(Z)V

    goto :goto_11

    .line 4155
    :cond_23
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->ancAdjust:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4156
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->ancAdjustText:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4157
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->transparentAdjust:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4158
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mRootView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->transparentAdjustText:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4165
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAncRTL()V

    :cond_24
    :goto_12
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a4 -> :sswitch_8
        0x168c00 -> :sswitch_7
        0x168fc1 -> :sswitch_6
        0x168fc2 -> :sswitch_5
        0x168fc3 -> :sswitch_4
        0x168fc4 -> :sswitch_3
        0x168fc5 -> :sswitch_2
        0x169382 -> :sswitch_1
        0x169383 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateAtUiInfo(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MiuiHeadsetFragment"

    .line 4585
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4586
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$33;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    const-wide/16 p0, 0xa

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateImageParament(Landroid/view/View;Z)V
    .locals 2

    .line 4197
    check-cast p1, Landroid/widget/ImageView;

    .line 4198
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 4199
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz p2, :cond_0

    .line 4201
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4202
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$integer;->headset_set_dimens:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 4204
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mActivity:Landroid/app/Activity;

    .line 4205
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$integer;->headset_unset_dimens:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4206
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
