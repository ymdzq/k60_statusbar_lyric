.class public final Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/settings/MiuiSettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;,
        Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;,
        Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;,
        Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;,
        Lcom/android/settings/bluetooth/DeviceProfilesSettings$DelayRunnable;
    }
.end annotation


# static fields
.field static final U_SHOW_LEA_AOSP_PROFILE_PHONE_LIST:[Ljava/lang/String;

.field static final U_SHOW_LEA_HEADSET_LIST:[Ljava/lang/String;


# instance fields
.field isBindOTAService:Z

.field private isSingleHeadsetConn:Z

.field private mAACDevice:Z

.field private mAADevice:Z

.field private mAbsAudioManager:Landroid/media/AudioManager;

.field private mAbsVolFeature:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioRepairContainer:Landroidx/preference/PreferenceGroup;

.field private mAudioRepairDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mAudioRepairRunnable:Ljava/lang/Runnable;

.field private mAudioRepairingDialog:Lmiuix/appcompat/app/ProgressDialog;

.field private mAudioShareCheckA2DPActiveExistRunnable:Ljava/lang/Runnable;

.field private mAudioShareContainer:Landroidx/preference/PreferenceGroup;

.field private mAudioStreamMax:I

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

.field private mBleOTAConnection:Landroid/content/ServiceConnection;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mBluetoothA2dpLock:Ljava/lang/Object;

.field private mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothAudioRepairResultReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHfpAudioStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mBluetoothHfpLock:Ljava/lang/Object;

.field private mBluetoothHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothMultiA2DPStateResultReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothOTAReceiver:Landroid/content/BroadcastReceiver;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mCodecConfigRun:Ljava/lang/Runnable;

.field private mCodecContainer:Landroidx/preference/PreferenceGroup;

.field private mDelayOpenAudioShareRunnable:Ljava/lang/Runnable;

.field private mDelayRunnable:Lcom/android/settings/bluetooth/DeviceProfilesSettings$DelayRunnable;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceMacAddress:Ljava/lang/String;

.field private mDeviceNamePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDisableVolumeRun:Ljava/lang/Runnable;

.field private mDisconnectDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDownloadDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDownloadText:Landroid/widget/TextView;

.field private mEtDeviceRename:Landroid/widget/EditText;

.field private mFirmwareVersion:Lcom/android/settings/stylus/CustomColorTextPreference;

.field private mHandler:Landroid/os/Handler;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsBleAudioDevice:Z

.field private mIsInAbsWhitelist:Z

.field private mLC3Switching:Z

.field private mLDACDevice:Z

.field private mLHDCV1Device:Z

.field private mLHDCV2Device:Z

.field private mLHDCV3Device:Z

.field private mLHDCV5Device:Z

.field private mLatestText:Landroid/widget/TextView;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mOTAHandler:Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;

.field public mOTAService:Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

.field private mOTAState:Z

.field private mOtaProgressBar:Landroid/widget/ProgressBar;

.field private final mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mProfileContainer:Landroidx/preference/PreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mRenameDeviceNamePref:Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

.field private mRootView:Landroid/view/View;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSBCLlDevice:Z

.field private mThread:Landroid/os/HandlerThread;

.field private mUpdateBtn:Landroid/widget/Button;

.field private mUpdateConfig:Landroidx/preference/PreferenceGroup;

.field private mUpdatePrefForA2DPConnected:Z

.field private mView:Landroid/view/View;

.field private mWorkHandler:Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;


# direct methods
.method public static synthetic $r8$lambda$D_IzsB2olIMbQ7Q9cYHq4Nu2hOU(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->lambda$onCreate$0(Landroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GGfD0O5v0bvqtSlvkPwY1VoJrrA(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->lambda$onResume$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$PfV2vyjV5OmG7ZfSmamc8NwYAYU(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->lambda$onCreate$1(Landroid/widget/EditText;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisSingleHeadsetConn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isSingleHeadsetConn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAACDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAACDevice:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAbsAudioManager(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/media/AudioManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAbsAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAbsVolFeature(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAbsVolFeature:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioRepairContainer(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroidx/preference/PreferenceGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairContainer:Landroidx/preference/PreferenceGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioRepairDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioRepairRunnable(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioRepairingDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairingDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioShareContainer(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroidx/preference/PreferenceGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioShareContainer:Landroidx/preference/PreferenceGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothA2dpLock(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothHfp(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothHfpLock(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfpLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelayRunnable(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings$DelayRunnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDelayRunnable:Lcom/android/settings/bluetooth/DeviceProfilesSettings$DelayRunnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceMacAddress(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceNamePref(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/miuisettings/preference/EditTextPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDownloadDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDownloadDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFirmwareVersion(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/stylus/CustomColorTextPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFirmwareVersion:Lcom/android/settings/stylus/CustomColorTextPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInAbsWhitelist(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIsInAbsWhitelist:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLC3Switching(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLC3Switching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLDACDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLDACDevice:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLHDCV1Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV1Device:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLHDCV2Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV2Device:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLHDCV3Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLHDCV5Device(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestText(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLatestText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmManager(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOTAHandler(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOTAHandler:Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOTAState(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOTAState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfileManager(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateBtn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUpdateBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateConfig(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroidx/preference/PreferenceGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUpdateConfig:Landroidx/preference/PreferenceGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdatePrefForA2DPConnected(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUpdatePrefForA2DPConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAudioRepairDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAudioRepairingDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lmiuix/appcompat/app/ProgressDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairingDialog:Lmiuix/appcompat/app/ProgressDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothA2dp(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothHfp(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/bluetooth/BluetoothHeadset;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDelayRunnable(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings$DelayRunnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDelayRunnable:Lcom/android/settings/bluetooth/DeviceProfilesSettings$DelayRunnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDownloadDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDownloadDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHandler(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/os/Handler;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLC3Switching(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLC3Switching:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLatestText(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLatestText:Landroid/widget/TextView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOTAState(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOTAState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpdateBtn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/Button;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUpdateBtn:Landroid/widget/Button;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpdatePrefForA2DPConnected(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUpdatePrefForA2DPConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddToWhiteList(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addToWhiteList(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbroadcastMultiA2dpStateChange(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->broadcastMultiA2dpStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanUpOTA(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->cleanUpOTA()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/DeviceProfilesSettings;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->closeProfileProxy(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateDialogForOpenAudioRepair(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createDialogForOpenAudioRepair()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdelFromWhiteList(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->delFromWhiteList(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAudioShareVolume(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->handleAudioShareVolume()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCheckBoxPreferenceEnabled(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroidx/preference/CheckBoxPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->handleCheckBoxPreferenceEnabled(Landroidx/preference/CheckBoxPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMultiA2DPState(Lcom/android/settings/bluetooth/DeviceProfilesSettings;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->handleMultiA2DPState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMultiLeDevices(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->handleMultiLeDevices()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAudioOn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isAudioOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDeviceInListForAudioRepair(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isDeviceInListForAudioRepair(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misLeAudioCgOn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isLeAudioCgOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSCOOn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isSCOOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monAudioShareSwitchPrefClicked(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroidx/preference/CheckBoxPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onAudioShareSwitchPrefClicked(Landroidx/preference/CheckBoxPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshProfilePreference(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshProfiles(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBroadcastEnableOrDisable(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->sendBroadcastEnableOrDisable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msentIgnorePairDilogIntent(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->sentIgnorePairDilogIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAudioShareVolume(Lcom/android/settings/bluetooth/DeviceProfilesSettings;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->setAudioShareVolume(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetOnClick(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->setOnClick(Landroid/widget/Button;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDownloadDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showDownloadDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAbsoluteVolume(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->updateAbsoluteVolume(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCodecStatus(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->updateCodecStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteBluetoothA2dpConfiguration(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->writeBluetoothA2dpConfiguration(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    const-string/jumbo v0, "udqlddq"

    const-string v1, "atqnqa"

    const-string v2, "ctbgalo"

    const-string v3, "lamds"

    .line 283
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->U_SHOW_LEA_AOSP_PROFILE_PHONE_LIST:[Ljava/lang/String;

    const-string v1, "01011803"

    const-string v2, "01011606"

    const-string v3, "01011607"

    const-string v4, "01011700"

    const-string v5, "01011701"

    const-string v6, "01011702"

    const-string v7, "01011703"

    const-string v8, "01011704"

    .line 285
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->U_SHOW_LEA_HEADSET_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 111
    invoke-direct {p0}, Lcom/android/settings/MiuiSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isBindOTAService:Z

    const/4 v1, 0x0

    .line 182
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleOTAConnection:Landroid/content/ServiceConnection;

    .line 183
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOTAService:Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    .line 184
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOTAHandler:Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;

    const/4 v2, 0x1

    .line 187
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOTAState:Z

    .line 228
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    .line 230
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfpLock:Ljava/lang/Object;

    .line 232
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUpdatePrefForA2DPConnected:Z

    .line 233
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLDACDevice:Z

    .line 234
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    .line 235
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    .line 236
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV2Device:Z

    .line 237
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV1Device:Z

    .line 238
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAACDevice:Z

    .line 239
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAADevice:Z

    .line 240
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSBCLlDevice:Z

    .line 241
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLC3Switching:Z

    .line 259
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIsInAbsWhitelist:Z

    .line 272
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isSingleHeadsetConn:Z

    .line 274
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIsBleAudioDevice:Z

    const-string v0, ""

    .line 288
    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceId:Ljava/lang/String;

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    .line 293
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mWorkHandler:Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;

    .line 1611
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 1661
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$6;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 1708
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 1761
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$8;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothMultiA2DPStateResultReceiver:Landroid/content/BroadcastReceiver;

    .line 1863
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$9;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfpAudioStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1910
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$10;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothAudioRepairResultReceiver:Landroid/content/BroadcastReceiver;

    .line 2098
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$11;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 2315
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$13;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRunnable:Ljava/lang/Runnable;

    .line 2466
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$16;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$16;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCodecConfigRun:Ljava/lang/Runnable;

    .line 2799
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$19;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$19;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisableVolumeRun:Ljava/lang/Runnable;

    .line 2904
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$20;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$20;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDelayOpenAudioShareRunnable:Ljava/lang/Runnable;

    .line 2913
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$21;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioShareCheckA2DPActiveExistRunnable:Ljava/lang/Runnable;

    .line 3806
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$28;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$28;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairRunnable:Ljava/lang/Runnable;

    .line 3858
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothOTAReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private addAudioShareConfigPreference()V
    .locals 1

    .line 2957
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createAudioShareConfigPreference()Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    move-result-object v0

    .line 2958
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioShareContainer:Landroidx/preference/PreferenceGroup;

    if-eqz p0, :cond_0

    .line 2959
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string p0, "DeviceProfilesSettings"

    const-string v0, "mAudioShareContainer.addPreference"

    .line 2960
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private addLatencyCodecPreference()V
    .locals 4

    .line 2049
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "latency_pre"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2050
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createLatencyCodecPreference()Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 2051
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 2052
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v3, "latency_val"

    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2053
    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2054
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2055
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createLatencyCodecPreference()Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 2056
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private addPreferencesForAbsoluteVolume()V
    .locals 1

    .line 2664
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createAbsoluteVolumePreference()Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 2665
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private addPreferencesForAudioShare()V
    .locals 9

    .line 2843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCachedDevice.isConnectedA2dpDevice() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceProfilesSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCachedDevice.isActiveDevice = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2846
    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2847
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "audio_share_switch_pre"

    .line 2848
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 2849
    sget v3, Lcom/android/settings/R$string;->bt_audio_share_switch_title:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 2850
    sget v3, Lcom/android/settings/R$string;->bt_audio_share_switch_summary:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v3, 0x0

    .line 2851
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 2852
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2853
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v5, "AUDIO_SHARE_SWITCH"

    invoke-virtual {v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v4

    .line 2855
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "temp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 2857
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "miui_store_audio_share_device_address"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2858
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KEY_STORE_AUDIO_SHARE_DEVICE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_0

    .line 2859
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2861
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v5, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    const-string/jumbo v1, "pending"

    .line 2862
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2863
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2868
    :cond_1
    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2870
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "miui_store_audio_share_window_pop"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2871
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "NeedPop"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 2872
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->handleDelayOpenAudioShare()V

    .line 2873
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HadPoped"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2876
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioShareContainer:Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_3

    .line 2877
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 2879
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addAudioShareConfigPreference()V

    .line 2880
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->handleAudioShareConfigStatus(Z)V

    .line 2881
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->handleCheckA2DPActiveExist()V

    goto :goto_1

    .line 2883
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "audio_share_container"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioShareContainer:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_5

    .line 2885
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioShareContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private addPreferencesForLeAudio()V
    .locals 1

    .line 3118
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createLeAudioPreference()Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 3119
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 8

    .line 957
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 960
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PBAP Server"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "LE_AUDIO"

    .line 963
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->checkLeaudioSupport()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 967
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/CheckBoxPreference;

    move-result-object v2

    .line 968
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BCProfile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "Device support ble audio !"

    const-string v4, "DeviceProfilesSettings"

    .line 969
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "persist.vendor.service.bt.lea_test"

    const/4 v5, 0x0

    .line 970
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 971
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_5

    .line 972
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 973
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    .line 974
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBleAudioCategory not null add to show ! connect state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " profile enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .line 977
    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setOrder(I)V

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v5

    .line 978
    :goto_1
    invoke-virtual {v2, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 979
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 980
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string v2, "bleAudioBroadcastAdd"

    .line 981
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 982
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v6, :cond_0

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    move v5, v4

    .line 983
    :cond_4
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "mBleAudioCategory is null do nothing and return!"

    .line 986
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 991
    :cond_6
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    .line 994
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v0

    if-eqz v0, :cond_8

    .line 997
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 999
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 1000
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1004
    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;

    move-result-object v0

    .line 1005
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    if-eqz v1, :cond_9

    .line 1010
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/MapProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1012
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 1013
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1018
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    return-void
.end method

.method private addPreferencesForSpecialCodec()V
    .locals 5

    .line 1956
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "LE_AUDIO"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 1957
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v0, "LHDC V5"

    .line 1958
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createSpecialCodecPreference(Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 1959
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1960
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addLatencyCodecPreference()V

    goto/16 :goto_0

    .line 1961
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    if-eqz v1, :cond_1

    const-string v0, "LHDC_V3"

    .line 1962
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createSpecialCodecPreference(Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 1963
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1964
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addLatencyCodecPreference()V

    goto/16 :goto_0

    .line 1965
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV2Device:Z

    if-eqz v1, :cond_2

    const-string v0, "LHDC_V2"

    .line 1966
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createSpecialCodecPreference(Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 1967
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1968
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addLatencyCodecPreference()V

    goto/16 :goto_0

    .line 1969
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV1Device:Z

    if-eqz v1, :cond_3

    const-string v0, "LHDC_V1"

    .line 1970
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createSpecialCodecPreference(Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 1971
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1972
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addLatencyCodecPreference()V

    goto :goto_0

    .line 1973
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLDACDevice:Z

    if-eqz v1, :cond_4

    const-string v0, "LDAC"

    .line 1974
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createSpecialCodecPreference(Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 1975
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 1976
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAADevice:Z

    if-eqz v1, :cond_5

    .line 1977
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addLatencyCodecPreference()V

    goto :goto_0

    .line 1978
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAACDevice:Z

    if-eqz v1, :cond_6

    const-string v0, "AAC"

    .line 1979
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createSpecialCodecPreference(Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    .line 1980
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1981
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addLatencyCodecPreference()V

    goto :goto_0

    .line 1982
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSBCLlDevice:Z

    if-eqz v1, :cond_7

    .line 1983
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addLatencyCodecPreference()V

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    .line 1985
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addLatencyCodecPreference()V

    goto :goto_0

    .line 1987
    :cond_8
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ldac_container"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIsInAbsWhitelist:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIsBleAudioDevice:Z

    if-nez v0, :cond_9

    .line 1989
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move v0, v2

    goto :goto_1

    :cond_9
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_c

    .line 1995
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1996
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_store_audio_share_device_address"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "support_audio_share"

    .line 1997
    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    .line 1999
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v4, 0x2

    .line 2000
    invoke-virtual {v1, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v1

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2001
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "pending"

    .line 2002
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2003
    :cond_a
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ldac_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 2004
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v1, "latency_pre"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    .line 2006
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_b
    if-eqz p0, :cond_c

    .line 2008
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_c
    return-void
.end method

.method private addToWhiteList(Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    .line 2584
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToWhiteList(): whitelist before add is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", current dev is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2587
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

    const-string v2, "DeviceProfilesSettings"

    .line 2586
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x5a

    if-lt v1, v3, :cond_0

    const/16 v1, 0x12

    .line 2591
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2595
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2596
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 2597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2598
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    .line 2599
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2600
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

    .line 2601
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "addToWhiteList(): the device has already in whitelist,do nothing"

    .line 2603
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 5

    .line 1236
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1237
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1238
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1239
    sget v1, Lcom/android/settings/R$string;->bluetooth_device:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1242
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1244
    sget v3, Lcom/android/settings/R$string;->bluetooth_disable_profile_title:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1245
    sget v4, Lcom/android/settings/R$string;->bluetooth_disable_profile_message:I

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1248
    new-instance v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 1266
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 1267
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 1266
    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 1269
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private broadcastMultiA2dpStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 3056
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MultiA2dp.ACTION.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.bluetooth"

    .line 3057
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 3058
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "MultiA2dp.EXTRA.STATE"

    .line 3059
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3061
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DeviceProfilesSettings"

    const-string/jumbo p2, "send broadcast failed "

    .line 3063
    invoke-static {p1, p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private broadcastMultiA2dpVolumChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 3045
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MultiA2dp.ACTION.SETVOLUME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 3046
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "MultiA2dp.EXTRA.VOLUME_VALUE"

    .line 3047
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3049
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DeviceProfilesSettings"

    const-string/jumbo p2, "send broadcast failed "

    .line 3051
    invoke-static {p1, p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private checkOtaState()V
    .locals 2

    .line 3938
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOTAService:Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;->checkDFUMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3939
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDownloadDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3940
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOTAState:Z

    .line 3941
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 3942
    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDownloadDialog:Lmiuix/appcompat/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3946
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private cleanUpOTA()V
    .locals 3

    .line 3880
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleOTAConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isBindOTAService:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 3882
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleOTAConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3883
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleOTAConnection:Landroid/content/ServiceConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3885
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3888
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleOTAConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 3889
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isBindOTAService:Z

    .line 3890
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUpdateConfig:Landroidx/preference/PreferenceGroup;

    .line 3891
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFirmwareVersion:Lcom/android/settings/stylus/CustomColorTextPreference;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 3893
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private closeAbsVolume()V
    .locals 3

    .line 2761
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "abs_volume_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    const-string v1, "DeviceProfilesSettings"

    const-string/jumbo v2, "onAbsVolumePrefClicked  set false"

    .line 2764
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioStreamMax:I

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    const/4 v1, 0x0

    .line 2770
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2771
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->handleDisableVolume()V

    .line 2772
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v0, "ABSOLUTEVOLUME"

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private closeLeAudio()V
    .locals 10

    .line 3372
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "le_audio_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 3374
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "abs_volume_pre"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_e

    .line 3378
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "DeviceProfilesSettings"

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3383
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 3384
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 3385
    instance-of v8, v6, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    const/4 v9, 0x2

    if-eqz v8, :cond_2

    const-string v8, "Set hfp enable"

    .line 3386
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    invoke-interface {v6, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v1, v4

    .line 3390
    :cond_1
    invoke-interface {v6, v7, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_0

    .line 3391
    :cond_2
    instance-of v8, v6, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v8, :cond_0

    const-string v8, "Set a2dp enable"

    .line 3392
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    invoke-interface {v6, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-ne v8, v9, :cond_3

    move v2, v4

    .line 3396
    :cond_3
    invoke-interface {v6, v7, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_0

    .line 3399
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onLeAudioPreNegativeClick ,isHfpConnected = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",isA2dpConnected = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_5

    if-eqz v2, :cond_a

    .line 3403
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->findLeAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_6

    const-string v2, ";"

    .line 3407
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3408
    array-length v2, v0

    if-le v2, v4, :cond_6

    .line 3409
    aget-object v2, v0, v3

    .line 3410
    aget-object v0, v0, v4

    goto :goto_1

    :cond_6
    move-object v0, v1

    move-object v2, v0

    .line 3413
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onLeAudioPreNegativeClick,le1Str = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",le2Str = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 3415
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 3416
    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 3417
    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/16 v2, 0xb

    const/16 v4, 0xc

    if-eqz v1, :cond_8

    .line 3419
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6

    if-ne v6, v4, :cond_7

    .line 3421
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v6, :cond_8

    .line 3422
    invoke-virtual {v6, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "disconnect to LE1"

    .line 3424
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->disconnect()I

    goto :goto_2

    :cond_7
    if-ne v6, v2, :cond_8

    const-string v6, "Cancel bond to LE1"

    .line 3429
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    :cond_8
    :goto_2
    if-eqz v0, :cond_a

    .line 3435
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 3437
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v1, :cond_a

    .line 3438
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "disconnect to LE2"

    .line 3440
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->disconnect()I

    goto :goto_3

    :cond_9
    if-ne v1, v2, :cond_a

    const-string v1, "Cancel bond to LE2"

    .line 3445
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 3453
    :cond_a
    :goto_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setLeAudioStatus(I)V

    return-void

    .line 3456
    :cond_b
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_c

    .line 3457
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    const-string v7, "+XIAOMI"

    const-string v8, "FF01020103020400FF"

    invoke-virtual {v2, v6, v7, v8}, Landroid/bluetooth/BluetoothHeadset;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_c
    const-string/jumbo v2, "onLeAudioPrefClicked  set false"

    .line 3460
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v1, :cond_d

    .line 3463
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAbsAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3464
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 3466
    :cond_d
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "LEAUDIO"

    invoke-virtual {v0, v1, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 3468
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->disconnectLeAudio()V

    :cond_e
    return-void
.end method

.method private closeProfileProxy(I)V
    .locals 4

    .line 1585
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1601
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1602
    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    goto :goto_0

    .line 1596
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1597
    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    .line 1589
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1590
    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 1591
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1592
    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    :cond_3
    :goto_0
    return-void
.end method

.method private createAbsoluteVolumePreference()Landroidx/preference/CheckBoxPreference;
    .locals 8

    const-string v0, "DeviceProfilesSettings"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "create createAbsoluteVolumePreference"

    .line 2671
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    new-instance v2, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "abs_volume_pre"

    .line 2673
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 2674
    sget v3, Lcom/android/settings/R$string;->bt_absVolume_pre_title:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 2675
    sget v3, Lcom/android/settings/R$string;->bt_absVolume_summary:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v3, 0x0

    .line 2676
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 2677
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2678
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

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

    .line 2681
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 2682
    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 2684
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAbsVolumePrefClicked mBluetoothA2dp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, p0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2686
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 2688
    :cond_2
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v2

    :catch_0
    move-exception p0

    .line 2692
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2693
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

    .line 2965
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;-><init>(Landroid/content/Context;)V

    .line 2966
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "audio_share_switch_pre"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    const-string v2, "audio_share_volume_pre"

    .line 2968
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 2969
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 2970
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    const/16 v3, 0x64

    .line 2971
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 2972
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 2974
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "miui_bluetooth_audio_share_volume"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DeviceProfilesSettings"

    const/16 v6, 0x32

    if-nez v4, :cond_0

    goto :goto_0

    .line 2979
    :cond_0
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 2981
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

    .line 2984
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KEY_AUDIO_SHARE_VOLUME_PRE = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    invoke-virtual {v0, v6}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 2986
    sget v4, Lcom/android/settings/R$drawable;->ic_bt_headphones_a2dp_bonded:I

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setIcon(I)V

    .line 2987
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    const/16 v2, 0x50

    .line 2988
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 2989
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 2990
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2991
    new-instance v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings$22;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$22;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/content/Context;Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setStopTrackingTouchListener(Lcom/android/settings/widget/SeekBarPreference$StopTrackingTouchListener;)V

    return-object v0
.end method

.method private createDialog()V
    .locals 4

    .line 2377
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ldac_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 2378
    new-instance v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$14;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroidx/preference/CheckBoxPreference;)V

    .line 2416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 2417
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2420
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV2Device:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV1Device:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2423
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLDACDevice:Z

    if-eqz v2, :cond_1

    .line 2424
    sget v2, Lcom/android/settings/R$string;->bt_ldac_open_dialog_title:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 2425
    sget v2, Lcom/android/settings/R$string;->bt_ldac_open_dialog_summary:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 2427
    :cond_1
    sget v2, Lcom/android/settings/R$string;->bt_aac_open_dialog_title:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 2428
    sget v2, Lcom/android/settings/R$string;->bt_aac_open_dialog_summary:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 2421
    :cond_2
    :goto_0
    sget v2, Lcom/android/settings/R$string;->bt_lhdc_open_dialog_title:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 2422
    sget v2, Lcom/android/settings/R$string;->bt_lhdc_open_dialog_summary:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    :goto_1
    const/4 v2, 0x1

    .line 2431
    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x104000a    # @android:string/ok

    .line 2432
    invoke-virtual {v3, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 2433
    invoke-virtual {v3, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 2434
    invoke-virtual {v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 2435
    new-instance v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$15;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroidx/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2455
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createDialogForLeAudio(Landroidx/preference/CheckBoxPreference;)V
    .locals 3

    .line 3183
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "le_audio_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 3185
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "abs_volume_pre"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    .line 3186
    new-instance v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings$23;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$23;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroidx/preference/CheckBoxPreference;Landroidx/preference/CheckBoxPreference;Landroidx/preference/CheckBoxPreference;)V

    .line 3345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 3346
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3348
    sget p1, Lcom/android/settings/R$string;->bt_leaudio_open_dialog_title:I

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3349
    sget p1, Lcom/android/settings/R$string;->bt_leaudio_open_dialog_summary:I

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 3351
    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const p1, 0x104000a    # @android:string/ok

    .line 3352
    invoke-virtual {v1, p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 3353
    invoke-virtual {v1, p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3354
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3355
    new-instance v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings$24;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$24;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroidx/preference/CheckBoxPreference;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3367
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createDialogForOpenAbsVolume()V
    .locals 4

    .line 2724
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "abs_volume_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 2725
    new-instance v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings$17;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$17;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroidx/preference/CheckBoxPreference;)V

    .line 2738
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 2739
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2741
    sget v2, Lcom/android/settings/R$string;->bt_absVolume_open_dialog_title:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 2742
    sget v2, Lcom/android/settings/R$string;->bt_absVolume_open_dialog_summary:I

    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v2, 0x1

    .line 2744
    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x104000a    # @android:string/ok

    .line 2745
    invoke-virtual {v3, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 2746
    invoke-virtual {v3, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 2747
    invoke-virtual {v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 2748
    new-instance v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings$18;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$18;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroidx/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2756
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createDialogForOpenAudioRepair()V
    .locals 3

    .line 3740
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$26;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 3768
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 3769
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3770
    sget v1, Lcom/android/settings/R$string;->bt_audiorepair_open_dialog_title:I

    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 3771
    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3772
    sget v1, Lcom/android/settings/R$string;->bt_audiorepair_open_dialog_summary:I

    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3773
    sget v1, Lcom/android/settings/R$string;->bt_audiorepair_dialog_openok:I

    invoke-virtual {v2, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000    # @android:string/cancel

    const/4 v1, 0x0

    .line 3774
    invoke-virtual {v2, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3775
    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3776
    new-instance v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings$27;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$27;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3782
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createLatencyCodecPreference()Landroidx/preference/CheckBoxPreference;
    .locals 8

    .line 2061
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 2062
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "LE_AUDIO"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    const-string v2, "latency_pre"

    .line 2063
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 2064
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSBCLlDevice:Z

    if-eqz v3, :cond_0

    .line 2065
    sget v3, Lcom/android/settings/R$string;->codec_low_latency_zmi_title:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 2067
    :cond_0
    sget v3, Lcom/android/settings/R$string;->codec_low_latency_title:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 2069
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "aptxadaptive_video"

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2070
    sget v3, Lcom/android/settings/R$string;->codec_low_latency_video_summary:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 2071
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSBCLlDevice:Z

    if-eqz v3, :cond_2

    .line 2072
    sget v3, Lcom/android/settings/R$string;->codec_low_latency_zmi_summary:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 2074
    :cond_2
    sget v3, Lcom/android/settings/R$string;->codec_low_latency_summary:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    const/4 v3, 0x0

    .line 2076
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 2077
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2079
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v6, "LHDC V5"

    invoke-virtual {v5, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v5

    const-string v6, "latency_val"

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v7, "LHDC_V3"

    .line 2080
    invoke-virtual {v5, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v7, "LHDC_V2"

    .line 2081
    invoke-virtual {v5, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v7, "LHDC_V1"

    .line 2082
    invoke-virtual {v5, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    .line 2086
    :cond_3
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    invoke-virtual {v0, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4

    .line 2083
    :cond_5
    :goto_3
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2084
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_4
    if-eqz v1, :cond_6

    .line 2089
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2090
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2092
    :cond_6
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_7

    .line 2093
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v6, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_7
    return-object v0
.end method

.method private createLeAudioPreference()Landroidx/preference/CheckBoxPreference;
    .locals 5

    .line 3123
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "le_audio_pre"

    .line 3124
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 3125
    sget v1, Lcom/android/settings/R$string;->bt_leaudio_pre_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 3126
    sget v1, Lcom/android/settings/R$string;->bt_leaudio_summary:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v1, 0x0

    .line 3127
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 3128
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 3129
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 3130
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 3132
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LEAUDIO"

    invoke-virtual {v2, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 3134
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "miui_store_audio_share_device_address"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3135
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p0, "DeviceProfilesSettings"

    const-string v1, " createLeAudioPreference"

    .line 3136
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/CheckBoxPreference;
    .locals 2

    .line 1042
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 1043
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1044
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v1, 0x0

    .line 1045
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 1046
    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1047
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1059
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1061
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-object v0
.end method

.method private createSpecialCodecPreference(Ljava/lang/String;)Landroidx/preference/CheckBoxPreference;
    .locals 9

    .line 2014
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "ldac_pre"

    .line 2015
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v1, "LDAC"

    .line 2016
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "LHDC_V1"

    const-string v4, "LHDC_V2"

    const-string v5, "LHDC_V3"

    const-string v6, "LHDC V5"

    if-eqz v2, :cond_0

    .line 2017
    sget v2, Lcom/android/settings/R$string;->bt_ldac_pre_title:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    .line 2018
    :cond_0
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2019
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2020
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2021
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2024
    :cond_1
    sget v2, Lcom/android/settings/R$string;->bt_aac_pre_title:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    .line 2022
    :cond_2
    :goto_0
    sget v2, Lcom/android/settings/R$string;->bt_lhdc_pre_title:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 2026
    :goto_1
    sget v2, Lcom/android/settings/R$string;->bt_pre_summary:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v2, 0x0

    .line 2027
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 2028
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2030
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    .line 2031
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v8, :cond_3

    move v2, v8

    :cond_3
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 2032
    :cond_4
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2033
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v8, :cond_5

    move v2, v8

    :cond_5
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 2034
    :cond_6
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2035
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v8, :cond_7

    move v2, v8

    :cond_7
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 2036
    :cond_8
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2037
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v8, :cond_9

    move v2, v8

    :cond_9
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 2038
    :cond_a
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2039
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v8, :cond_b

    move v2, v8

    :cond_b
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 2041
    :cond_c
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string p1, "AAC"

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v8, :cond_d

    move v2, v8

    :cond_d
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_2
    return-object v0
.end method

.method private delFromWhiteList(Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    .line 2609
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2610
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    const-string v4, "DeviceProfilesSettings"

    if-ge v2, v3, :cond_0

    const-string p0, "delFromWhiteList(): no valid device in white list"

    .line 2611
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2614
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delFromWhiteList(): whitelist before del is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", current dev is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2615
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

    .line 2614
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 2619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ";"

    .line 2620
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2621
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
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

    .line 2808
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2809
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    const-string v4, "DeviceProfilesSettings"

    if-ge v2, v3, :cond_0

    const-string p0, "delFromWhiteList(): no valid device in white list"

    .line 2810
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2813
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delFromWhiteList(): whitelist before del is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", current dev is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2814
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

    .line 2813
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    .line 2818
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ";"

    .line 2819
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
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

.method private deleteSaveMacForLeAudio()V
    .locals 8

    .line 3620
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v0

    const-string v1, "DeviceProfilesSettings"

    if-eqz v0, :cond_0

    const-string p0, "deleteSaveMacForLeAudio: do nothing"

    .line 3621
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3625
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3626
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "three_mac_for_ble_f"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3628
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3629
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x36

    rem-int/2addr v4, v5

    if-nez v4, :cond_3

    .line 3631
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 3632
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    if-eqz p0, :cond_2

    add-int/lit8 v6, p0, 0x36

    .line 3634
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 3635
    invoke-virtual {v2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3637
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p0, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3639
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateValue is"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method private disconnectLeAudio()V
    .locals 5

    .line 3585
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3588
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "three_mac_for_ble_f"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceProfilesSettings"

    if-eqz v0, :cond_0

    .line 3590
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3591
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v2, 0x35

    if-lt v3, v4, :cond_0

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    .line 3592
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3593
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

    .line 3594
    invoke-virtual {v0, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, 0x24

    .line 3595
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3596
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

    .line 3602
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3604
    invoke-virtual {v2, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 3605
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/16 v2, 0xa

    if-eqz p0, :cond_1

    .line 3606
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 3608
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->disconnect()I

    const-string p0, "disconnect leStr1"

    .line 3609
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    .line 3611
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    if-eq p0, v2, :cond_2

    .line 3613
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->disconnect()I

    const-string p0, "disconnect leStr2"

    .line 3614
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private getCodecConfig(Landroid/bluetooth/BluetoothA2dp;II)Landroid/bluetooth/BluetoothCodecConfig;
    .locals 5

    .line 2543
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 2547
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

    .line 2548
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    if-ne p2, v1, :cond_1

    const/16 p1, 0x13

    if-eq p2, p1, :cond_2

    const/16 p1, 0xd

    if-eq p2, p1, :cond_2

    const/16 p1, 0xc

    if-eq p2, p1, :cond_2

    const/16 p1, 0xe

    if-ne p2, p1, :cond_3

    .line 2553
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific3()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_3

    .line 2554
    new-instance p1, Landroid/bluetooth/BluetoothCodecConfig$Builder;

    invoke-direct {p1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;-><init>()V

    .line 2555
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecType(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2556
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecPriority(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2557
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setSampleRate(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2558
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setBitsPerSample(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2559
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setChannelMode(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2560
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific1(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2561
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific2()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific2(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 2562
    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific3(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2563
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific4()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific4(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2564
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->build()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    goto :goto_0

    .line 2566
    :cond_3
    new-instance p1, Landroid/bluetooth/BluetoothCodecConfig$Builder;

    invoke-direct {p1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;-><init>()V

    .line 2567
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecType(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2568
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecPriority(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2569
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setSampleRate(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2570
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setBitsPerSample(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2571
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setChannelMode(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2572
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific1(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2573
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific2()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific2(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2574
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific3()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific3(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2575
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific4()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific4(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p1

    .line 2576
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->build()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    return-object p1
.end method

.method private getProfileOf(Landroidx/preference/Preference;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .locals 2

    .line 1459
    instance-of v0, p1, Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1462
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1463
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 1466
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

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

    .line 1473
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result p0

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p0, p1

    return p0
.end method

.method private getProfileProxy()V
    .locals 4

    .line 1575
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1576
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1577
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1579
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method private handleAudioShareConfigStatus(Z)V
    .locals 1

    .line 3036
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v0, "audio_share_volume_pre"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    if-eqz p0, :cond_0

    .line 3038
    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "DeviceProfilesSettings"

    const-string p1, "BluetoothVolumeSeekBarPreference == null"

    .line 3040
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleAudioShareVolume()V
    .locals 3

    .line 3017
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "audio_share_volume_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    .line 3018
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v0

    .line 3019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeekBarPreference value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceProfilesSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->broadcastMultiA2dpVolumChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 3021
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 3022
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

    .line 2891
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2892
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    .line 2894
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioShareCheckA2DPActiveExistRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleCheckBoxPreferenceEnabled(Landroidx/preference/CheckBoxPreference;)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 2281
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2282
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2283
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    :cond_0
    const-string v0, "le_audio_pre"

    .line 2285
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2286
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 2287
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLC3Switching:Z

    .line 2288
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$12;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "DeviceProfilesSettings"

    const-string p1, "leAudioPre: Delay 2s to enable LC3 Pref"

    .line 2308
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2310
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private handleDelayOpenAudioShare()V
    .locals 3

    .line 2898
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2899
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    .line 2901
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDelayOpenAudioShareRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleDisableVolume()V
    .locals 3

    .line 2793
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2794
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    .line 2796
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisableVolumeRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleHeadSetConnect()V
    .locals 3

    .line 2460
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2461
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    .line 2463
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCodecConfigRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleMultiA2DPState(I)V
    .locals 9

    .line 1799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMultiA2DPState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceProfilesSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    .line 1804
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "audio_share_switch_pre"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    .line 1806
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "audio_share_volume_pre"

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    .line 1808
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "ldac_pre"

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/CheckBoxPreference;

    .line 1810
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "latency_pre"

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/CheckBoxPreference;

    const-string v7, "AUDIO_SHARE_SWITCH"

    const/4 v8, 0x0

    if-ne p1, v0, :cond_6

    if-eqz v2, :cond_1

    .line 1814
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1815
    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1816
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, v7, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_1
    if-eqz v3, :cond_2

    .line 1819
    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1820
    invoke-virtual {v3, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1822
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 1823
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "miui_store_audio_share_device_address"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v5, :cond_4

    .line 1824
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v2

    if-eq v2, v0, :cond_3

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1825
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1826
    :cond_3
    invoke-virtual {v5, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    if-eqz v6, :cond_5

    .line 1829
    invoke-virtual {v6, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    const-string p0, "handleMultiA2DPState enabled"

    .line 1831
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    if-nez p1, :cond_10

    if-eqz v2, :cond_7

    .line 1834
    invoke-virtual {v2, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1835
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1836
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, v7, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_7
    if-eqz v3, :cond_8

    const/16 p1, 0x32

    .line 1839
    invoke-virtual {v3, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 1840
    invoke-virtual {v3, v8}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1841
    invoke-virtual {v3, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1842
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, v4, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_8
    if-eqz v5, :cond_9

    .line 1845
    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1848
    :cond_9
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    if-eqz p1, :cond_c

    .line 1849
    :cond_a
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "LHDC_V3"

    invoke-virtual {p1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v0, :cond_b

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "LHDC V5"

    .line 1850
    invoke-virtual {p1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_c

    :cond_b
    move v8, v0

    :cond_c
    if-eqz v6, :cond_f

    .line 1853
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    if-nez p1, :cond_e

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    if-eqz p0, :cond_d

    goto :goto_0

    .line 1856
    :cond_d
    invoke-virtual {v6, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 1854
    :cond_e
    :goto_0
    invoke-virtual {v6, v8}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_f
    :goto_1
    const-string p0, "handleMultiA2DPState disabled"

    .line 1859
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_2
    return-void
.end method

.method private handleMultiLeDevices()V
    .locals 11

    .line 3476
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3478
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "three_mac_for_ble_f"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceProfilesSettings"

    if-eqz v1, :cond_c

    .line 3479
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x36

    if-gt v3, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x0

    .line 3483
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/2addr v5, v4

    if-ge v3, v5, :cond_b

    .line 3484
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

    .line 3485
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 3486
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x11

    if-eq v7, v8, :cond_2

    goto/16 :goto_3

    .line 3487
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMultiLeDevices brMac is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v3, "ignore oneself"

    .line 3489
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3492
    :cond_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 3495
    invoke-virtual {v7, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_4

    goto/16 :goto_3

    .line 3497
    :cond_4
    iget-object v8, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 3498
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v8

    .line 3499
    invoke-virtual {v8, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v8

    if-nez v8, :cond_5

    const-string v8, "mCachedDevice is null and new one "

    .line 3501
    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    new-instance v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-direct {v8, v0, v9, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 3504
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

    .line 3508
    invoke-virtual {v1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x36

    add-int/lit8 v3, v3, -0x1

    .line 3509
    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3510
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

    .line 3511
    invoke-virtual {v7, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 3512
    invoke-virtual {v7, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/16 v7, 0xb

    const/16 v9, 0xa

    if-eqz v5, :cond_7

    .line 3513
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v10

    if-eq v10, v9, :cond_7

    .line 3514
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v10

    if-ne v10, v7, :cond_6

    .line 3515
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    goto :goto_1

    .line 3517
    :cond_6
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    :goto_1
    const-string v5, "handleMultiLeDevices remove bond leStr1"

    .line 3519
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v3, :cond_9

    .line 3521
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    if-eq v5, v9, :cond_9

    .line 3522
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    if-ne v5, v7, :cond_8

    .line 3523
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    goto :goto_2

    .line 3525
    :cond_8
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    :goto_2
    const-string v3, "handleMultiLeDevices remove bond leStr2"

    .line 3527
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v3, "LEAUDIO"

    const/4 v5, 0x2

    .line 3529
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

    .line 3480
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hideSoftInput(Landroid/widget/EditText;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3800
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_1

    const-string v0, "input_method"

    .line 3801
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 3803
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initOtaBroacastReceiver()V
    .locals 1

    .line 3860
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$29;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$29;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothOTAReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private isAudioOn()Z
    .locals 4

    const/4 v0, 0x0

    .line 1697
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 1699
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isAudioOn"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    new-array v2, v0, [Ljava/lang/Object;

    .line 1700
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1698
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1703
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v0
.end method

.method private isDeviceInListForAbsoluteVolume(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string p0, ""

    .line 2779
    invoke-static {p2, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2780
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    const-string v1, "DeviceProfilesSettings"

    if-ne p2, v0, :cond_0

    .line 2782
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

    .line 2785
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

.method private isDeviceInListForAudioRepair(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string p0, ""

    .line 3816
    invoke-static {p2, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3817
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    const-string v1, "DeviceProfilesSettings"

    if-ne p2, v0, :cond_0

    .line 3819
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

    .line 3822
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

.method private isDeviceRenameDialogShowing()Z
    .locals 0

    .line 880
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mEtDeviceRename:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLeAudioBrDevice(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "DeviceProfilesSettings"

    const/4 v1, 0x0

    .line 3663
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3664
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lc3Enable"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3665
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lc3CGState"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Lc3TestMode"

    const/4 v6, 0x2

    .line 3666
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    .line 3667
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    .line 3668
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3669
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cgEnable"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_1

    const-string p0, "false"

    .line 3670
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v7

    :cond_2
    return v1

    .line 3680
    :cond_3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "three_mac_for_ble_f"

    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 3681
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "device isLeAudioBrDevice"

    .line 3682
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_4

    if-eqz v3, :cond_5

    const-string/jumbo p0, "true"

    .line 3683
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_5

    return v7

    :catch_0
    move-exception p0

    .line 3689
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLeAudioBrDevice Exception "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1
.end method

.method private isLeAudioCgOn()Z
    .locals 2

    const/4 v0, 0x0

    .line 3835
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3836
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioManager:Landroid/media/AudioManager;

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

    .line 3839
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private isSCOOn()Z
    .locals 1

    .line 3828
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 3829
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

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

.method private synthetic lambda$onCreate$0(Landroid/widget/EditText;)V
    .locals 1

    .line 501
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const/4 v0, 0x1

    .line 504
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 505
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 506
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showSoftInput(Landroid/widget/EditText;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/widget/EditText;)V
    .locals 3

    .line 499
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mEtDeviceRename:Landroid/widget/EditText;

    .line 500
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/EditText;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$onResume$2()V
    .locals 2

    .line 778
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isDeviceRenameDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mEtDeviceRename:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mEtDeviceRename:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mEtDeviceRename:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 783
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mEtDeviceRename:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 784
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mEtDeviceRename:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 785
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mEtDeviceRename:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showSoftInput(Landroid/widget/EditText;)V

    :cond_1
    return-void
.end method

.method private onAbsVolumePrefClicked(Landroidx/preference/CheckBoxPreference;)V
    .locals 4

    const-string v0, "DeviceProfilesSettings"

    :try_start_0
    const-string v1, ""

    .line 2701
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2702
    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 2704
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDeviceMacAddress is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " activeMac is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    .line 2706
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2707
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "ABSOLUTEVOLUMEOPERATE"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2708
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2710
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createDialogForOpenAbsVolume()V

    goto :goto_0

    .line 2712
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->closeAbsVolume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "onAbsVolumePrefClicked failed "

    .line 2717
    invoke-static {v0, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private onAudioShareSwitchPrefClicked(Landroidx/preference/CheckBoxPreference;)V
    .locals 9

    const-string v0, "DeviceProfilesSettings"

    if-nez p1, :cond_0

    const-string p0, "CheckBoxPreference pref == null"

    .line 3069
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3072
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 3073
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "miui_store_audio_share_device_address"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3074
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "audio_share_volume_pre"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    .line 3076
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_5

    .line 3077
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    const-string v4, "KEY_STORE_AUDIO_SHARE_DEVICE = "

    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 3079
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 3082
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 3083
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cachedDeviceAddress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    .line 3086
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "pending"

    .line 3087
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3088
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v6, v0

    .line 3091
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 3092
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->broadcastMultiA2dpStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1

    .line 3095
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    invoke-virtual {p1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 v1, 0x0

    .line 3097
    invoke-direct {p0, v1, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->broadcastMultiA2dpStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 3098
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->handleAudioShareConfigStatus(Z)V

    const-string v1, "CheckBoxPreference = unchecked"

    .line 3099
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    :cond_3
    :goto_1
    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 3103
    invoke-virtual {v2, v5}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 3105
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "ldac_pre"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 3107
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v0, "latency_pre"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_4

    .line 3109
    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    if-eqz p0, :cond_5

    .line 3112
    invoke-virtual {p0, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method private onLeAudioPrefClicked(Landroidx/preference/CheckBoxPreference;)V
    .locals 4

    const-string v0, "DeviceProfilesSettings"

    .line 3142
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3143
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3144
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3146
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createDialogForLeAudio(Landroidx/preference/CheckBoxPreference;)V

    goto :goto_0

    .line 3148
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->closeLeAudio()V

    .line 3149
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 3150
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->handleCheckBoxPreferenceEnabled(Landroidx/preference/CheckBoxPreference;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, ""

    .line 3157
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 3158
    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3159
    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 3162
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDeviceMacAddress is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " activeMac is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    .line 3163
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    .line 3164
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3165
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3167
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createDialogForLeAudio(Landroidx/preference/CheckBoxPreference;)V

    goto :goto_1

    .line 3169
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->closeLeAudio()V

    .line 3170
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->handleCheckBoxPreferenceEnabled(Landroidx/preference/CheckBoxPreference;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo p1, "onLeAudioPrefClicked failed "

    .line 3176
    invoke-static {v0, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    return-void
.end method

.method private onPrefClicked(Landroidx/preference/CheckBoxPreference;)V
    .locals 3

    .line 2233
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_9

    .line 2234
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2236
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-ne p1, v1, :cond_9

    .line 2238
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createDialog()V

    goto/16 :goto_1

    .line 2241
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    .line 2243
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->writeBluetoothA2dpConfiguration(Z)V

    .line 2245
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2247
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "latency_pre"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 2249
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV2Device:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV1Device:Z

    if-eqz v2, :cond_2

    .line 2250
    :cond_1
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2251
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2255
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    if-eqz v1, :cond_3

    .line 2256
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "LHDC V5"

    invoke-virtual {v1, v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2258
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    if-eqz v1, :cond_4

    .line 2259
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "LHDC_V3"

    invoke-virtual {v1, v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2261
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV2Device:Z

    if-eqz v1, :cond_5

    .line 2262
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "LHDC_V2"

    invoke-virtual {v1, v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2264
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV1Device:Z

    if-eqz v1, :cond_6

    .line 2265
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "LHDC_V1"

    invoke-virtual {v1, v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2267
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLDACDevice:Z

    if-eqz v1, :cond_7

    .line 2268
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "LDAC"

    invoke-virtual {v1, v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 2269
    :cond_7
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAACDevice:Z

    if-eqz v1, :cond_8

    .line 2270
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "AAC"

    invoke-virtual {v1, v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2274
    :cond_8
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->handleCheckBoxPreferenceEnabled(Landroidx/preference/CheckBoxPreference;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private onProfileClicked(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroidx/preference/CheckBoxPreference;)V
    .locals 7

    .line 1156
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1158
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PBAP Server"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 1160
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1159
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result p1

    if-ne p1, v4, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v4

    .line 1162
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    if-ne p1, v4, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    .line 1163
    :goto_1
    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1166
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object p0

    .line 1167
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 1169
    invoke-virtual {p0, v0, v3}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    .line 1172
    invoke-virtual {p0, v0, v4}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    :cond_3
    :goto_2
    return-void

    .line 1178
    :cond_4
    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v4

    goto :goto_3

    :cond_5
    move v1, v3

    .line 1182
    :goto_3
    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    const/16 v6, 0x65

    if-eqz v5, :cond_9

    if-eqz v1, :cond_6

    .line 1184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_4

    .line 1187
    :cond_6
    invoke-interface {p1, v0, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 1188
    instance-of p2, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz p2, :cond_7

    .line 1189
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 1192
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    if-eqz p2, :cond_8

    .line 1194
    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 1199
    :cond_8
    :goto_4
    instance-of p1, p1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mWorkHandler:Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;

    if-eqz p0, :cond_e

    .line 1201
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1200
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    .line 1206
    :cond_9
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v1, :cond_a

    .line 1207
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    goto :goto_5

    .line 1208
    :cond_a
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mWorkHandler:Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;

    if-eqz v1, :cond_b

    .line 1210
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1209
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1215
    :cond_b
    :goto_5
    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1217
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_c

    .line 1218
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_6

    .line 1221
    :cond_c
    invoke-interface {p1, v0, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_6

    .line 1226
    :cond_d
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 1229
    :goto_6
    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    :cond_e
    :goto_7
    return-void
.end method

.method private refresh()V
    .locals 2

    .line 1287
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1288
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1289
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1291
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    return-void
.end method

.method private refreshProfilePreference(Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 9

    .line 1359
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1364
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1365
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1366
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1369
    :cond_1
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_3

    .line 1370
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result p0

    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1373
    :cond_3
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PanProfile;

    const/4 v4, 0x2

    if-eqz v1, :cond_5

    .line 1374
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-ne p0, v4, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1379
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshProfilePreference profile is connected: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "DeviceProfilesSettings"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1381
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "BCProfile"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1382
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 1383
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v6

    if-eqz v1, :cond_6

    if-eqz v6, :cond_6

    move v7, v2

    goto :goto_3

    :cond_6
    move v7, v3

    .line 1384
    :goto_3
    invoke-virtual {p1, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1385
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bc profile enable disable it : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "bleAudioBroadcastAdd"

    .line 1386
    invoke-virtual {p0, v7}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_8

    if-eqz v6, :cond_7

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v3

    .line 1388
    :goto_4
    invoke-virtual {v7, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1391
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "LE_AUDIO"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1392
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    .line 1393
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "latency_pre"

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/CheckBoxPreference;

    if-eqz v6, :cond_9

    if-eqz v1, :cond_9

    .line 1394
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1395
    invoke-virtual {v6, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_9
    if-eqz v6, :cond_c

    .line 1398
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getLeAudioConnectionPolicy()I

    move-result v1

    if-lez v1, :cond_c

    .line 1399
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasConnectedLeAudioDevice()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1400
    invoke-virtual {v6, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1401
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v7, "latency_val"

    invoke-virtual {v1, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_a

    move v1, v2

    goto :goto_5

    :cond_a
    move v1, v3

    :goto_5
    invoke-virtual {v6, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_6

    .line 1403
    :cond_b
    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1404
    invoke-virtual {v6, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1409
    :cond_c
    :goto_6
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1411
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1412
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1414
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "le_audio_pre"

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/CheckBoxPreference;

    .line 1415
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result v7

    if-eqz v7, :cond_d

    .line 1416
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_7

    .line 1418
    :cond_d
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1420
    :goto_7
    instance-of v7, p2, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v7, :cond_10

    if-eqz v6, :cond_10

    .line 1421
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    if-eq v7, v4, :cond_e

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1422
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result v7

    if-eq v7, v2, :cond_e

    .line 1423
    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v7, "leAudioPre.setEnabled(false) when HFP is unavailable"

    .line 1424
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "miui_store_audio_share_device_address"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1427
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-eq v8, v4, :cond_f

    iget-object v8, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1428
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result v8

    if-ne v8, v2, :cond_10

    .line 1429
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isSCOOn()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isLeAudioCgOn()Z

    move-result v8

    if-nez v8, :cond_10

    iget-boolean v8, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isSingleHeadsetConn:Z

    if-nez v8, :cond_10

    iget-boolean v8, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLC3Switching:Z

    if-nez v8, :cond_10

    iget-object v8, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    .line 1430
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 1431
    invoke-virtual {v6, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v7, "leAudioPre.setEnabled(true) when HFP/LEAuido is available"

    .line 1432
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v6, :cond_14

    .line 1436
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v4, :cond_14

    .line 1437
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1438
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x31

    const/16 v8, 0x30

    if-ne v4, v8, :cond_11

    if-eq v1, v7, :cond_12

    :cond_11
    if-ne v4, v7, :cond_13

    if-ne v1, v8, :cond_13

    .line 1440
    :cond_12
    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v1, "leAudioPre.setEnabled(false) when power 01 or 10"

    .line 1441
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isSingleHeadsetConn:Z

    goto :goto_8

    .line 1444
    :cond_13
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isSingleHeadsetConn:Z

    goto :goto_8

    .line 1447
    :cond_14
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isSingleHeadsetConn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    .line 1450
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1455
    :cond_15
    :goto_8
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private refreshProfiles()V
    .locals 8

    .line 1295
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "DeviceProfilesSettings"

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1296
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    if-nez v3, :cond_6

    .line 1298
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/CheckBoxPreference;

    move-result-object v3

    .line 1299
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BCProfile"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "refreshProfiles Device support ble audio !"

    .line 1300
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "persist.vendor.service.bt.lea_test"

    const/4 v5, 0x0

    .line 1301
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1302
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_3

    .line 1303
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 1304
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    .line 1305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "refreshProfiles mBleAudioCategory not null add to show ! connet state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " profile enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 1307
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setOrder(I)V

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v5

    .line 1308
    :goto_1
    invoke-virtual {v3, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1309
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1310
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string v3, "bleAudioBroadcastAdd"

    .line 1311
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    move v5, v2

    .line 1313
    :cond_2
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v1, "refreshProfiles mBleAudioCategory is null do nothing and return!"

    .line 1316
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string v2, "LE_AUDIO"

    .line 1320
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1321
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->checkLeaudioSupport()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 1324
    :cond_5
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    .line 1327
    :cond_6
    invoke-direct {p0, v3, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto/16 :goto_0

    .line 1330
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1335
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PBAP Server"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    .line 1338
    :cond_9
    instance-of v3, v1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v3, :cond_a

    goto :goto_2

    .line 1342
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1344
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

    .line 1345
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 1348
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    return-void
.end method

.method private sendBroadcastEnableOrDisable(Z)V
    .locals 4

    .line 2826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendBroadcastEnableOrDisable enter and value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceProfilesSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "miui.bluetooth.absolute_volume_enable_disable"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.bluetooth"

    .line 2829
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "absolute_volume_mac"

    .line 2830
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "absolute_volume_value"

    .line 2831
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2833
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "send msg failed "

    .line 2836
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

    .line 3649
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 3650
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fast_connect_show_dialog"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3652
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.bluetooth.FAST_CONNECT_DEVICE_BOND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FAST_CONNECT_CURRENT_DEVICE"

    .line 3653
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FAST_CONNECT_PEER_DEVICE"

    .line 3654
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    const-string v2, "com.xiaomi.bluetooth"

    .line 3655
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.bluetooth"

    .line 3656
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3657
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3658
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

    const-string p1, "DeviceProfilesSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setAudioShareVolume(I)V
    .locals 2

    .line 3026
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v0, "audio_share_volume_pre"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    const-string v0, "DeviceProfilesSettings"

    if-nez p0, :cond_0

    const-string p0, "BluetoothVolumeSeekBarPreference == null"

    .line 3028
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3031
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 3032
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

.method private setOnClick(Landroid/widget/Button;)V
    .locals 1

    .line 4059
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$31;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$31;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showDownloadDialog()V
    .locals 3

    const-string v0, "DeviceProfilesSettings"

    const-string/jumbo v1, "show download dialog"

    .line 3951
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3952
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 3954
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3955
    sget v1, Lcom/android/settings/R$layout;->update_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mView:Landroid/view/View;

    .line 3957
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3958
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDownloadDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 3959
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 3960
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDownloadDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings$30;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$30;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3969
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDownloadDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3971
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOtaProgressBar:Landroid/widget/ProgressBar;

    .line 3972
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->downloading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDownloadText:Landroid/widget/TextView;

    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 2

    .line 1022
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 1023
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 1024
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x1

    .line 1025
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1027
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 1029
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private showSoftInput(Landroid/widget/EditText;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3789
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_1

    const-string v0, "input_method"

    .line 3790
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 3792
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3793
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private unpairDevice()V
    .locals 12

    const-string v0, "bluetooth_eir_manufacture"

    const-string v1, "DeviceProfilesSettings"

    .line 1477
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    const-string/jumbo v2, "vendor"

    .line 1479
    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mediatek"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "qcom"

    .line 1480
    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1481
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 1482
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    const/4 v5, 0x1

    const-string v6, "latency_val"

    const-string v7, "latency_pre"

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v4, :cond_0

    .line 1483
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->writeCodecUserConfigureToProperty(Z)V

    .line 1484
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    const-string v10, "LHDC V5"

    invoke-virtual {v4, v5, v10, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1485
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v10, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1486
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v4, v5, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    .line 1487
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v7, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1488
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v6, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1489
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    if-eqz v4, :cond_1

    .line 1490
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->writeCodecUserConfigureToProperty(Z)V

    .line 1491
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    const-string v10, "LHDC_V3"

    invoke-virtual {v4, v5, v10, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1492
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v10, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1493
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v4, v5, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    .line 1494
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v7, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1495
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v6, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1496
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV2Device:Z

    if-eqz v4, :cond_2

    .line 1497
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->writeCodecUserConfigureToProperty(Z)V

    .line 1498
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    const-string v10, "LHDC_V2"

    invoke-virtual {v4, v5, v10, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1499
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v10, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1500
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v4, v5, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    .line 1501
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v7, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1502
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v6, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1503
    :cond_2
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV1Device:Z

    if-eqz v4, :cond_3

    .line 1504
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->writeCodecUserConfigureToProperty(Z)V

    .line 1505
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    const-string v10, "LHDC_V1"

    invoke-virtual {v4, v5, v10, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1506
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v10, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1507
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v4, v5, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    .line 1508
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v7, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1509
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v6, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1510
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLDACDevice:Z

    if-eqz v4, :cond_4

    .line 1511
    invoke-direct {p0, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->writeCodecUserConfigureToProperty(Z)V

    .line 1512
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    const-string v6, "LDAC"

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1513
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v6, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1514
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v4, v5, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    goto :goto_0

    .line 1515
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAADevice:Z

    if-eqz v4, :cond_5

    .line 1516
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v5, "aptX Adaptive"

    invoke-virtual {v4, v5, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1517
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v4, v10, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1518
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v7, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1519
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v6, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1520
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v5, "aptxadaptive_video"

    invoke-virtual {v4, v5, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 1521
    :cond_5
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAACDevice:Z

    const-string/jumbo v5, "zmi_latency"

    if-eqz v4, :cond_6

    .line 1522
    invoke-direct {p0, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->writeCodecUserConfigureToProperty(Z)V

    .line 1523
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v4, v10, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    .line 1524
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v10, "AAC"

    invoke-virtual {v4, v10, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1525
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v11, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v4, v11, v10, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1526
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v7, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1527
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v6, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1528
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v5, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 1529
    :cond_6
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSBCLlDevice:Z

    if-eqz v4, :cond_7

    .line 1530
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v7, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1531
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v6, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1532
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v5, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1537
    :cond_7
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v4

    const/16 v5, 0x420

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1538
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x38f

    if-ne v4, v5, :cond_8

    const-string v4, "Remove Xiaomi EIR Manufacture Data"

    .line 1539
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v0, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1543
    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "ABSOLUTEVOLUME"

    invoke-virtual {v0, v4, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1544
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "ABSOLUTEVOLUMEOPERATE"

    invoke-virtual {v0, v4, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 1545
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1546
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setLeAudioStatus(I)V

    goto :goto_1

    .line 1548
    :cond_9
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LEAUDIO"

    invoke-virtual {v0, v4, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :goto_1
    if-eqz v3, :cond_a

    const-string/jumbo v0, "persist.bluetooth.a2dp.absolute.volume.whitelistall"

    .line 1552
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->delFromWhiteListForAbsoluteVolume(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    if-eqz v2, :cond_b

    const-string/jumbo v0, "persist.vendor.bt.a2dp.absolute.volume.whitelistall"

    .line 1554
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->delFromWhiteListForAbsoluteVolume(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string/jumbo v0, "no work to do"

    .line 1556
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->unpairLeAudio()V

    .line 1560
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->deleteSaveMacForLeAudio()V

    .line 1561
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mWorkHandler:Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;

    if-eqz p0, :cond_c

    .line 1563
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v2, 0x65

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1562
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delFromWhiteListForAbsoluteVolume failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_3
    return-void
.end method

.method private unpairLeAudio()V
    .locals 5

    .line 3537
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3539
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3540
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setLeAudioStatus(I)V

    .line 3541
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    return-void

    .line 3547
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "three_mac_for_ble_f"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceProfilesSettings"

    if-eqz v0, :cond_1

    .line 3549
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3550
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v2, 0x35

    if-lt v3, v4, :cond_1

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    .line 3551
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3552
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

    .line 3553
    invoke-virtual {v0, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, 0x24

    .line 3554
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3555
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

    .line 3561
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3563
    invoke-virtual {v2, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 3564
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/16 v2, 0xb

    const/16 v3, 0xa

    if-eqz p0, :cond_3

    .line 3565
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 3566
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 3567
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    goto :goto_1

    .line 3569
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    :goto_1
    const-string/jumbo p0, "remove bond leStr1"

    .line 3571
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_5

    .line 3573
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    if-eq p0, v3, :cond_5

    .line 3574
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    if-ne p0, v2, :cond_4

    .line 3575
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    goto :goto_2

    .line 3577
    :cond_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    :goto_2
    const-string/jumbo p0, "remove bond leStr2"

    .line 3579
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private updateAbsoluteVolume(Z)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateCodecStatus()V
    .locals 7

    const-string v0, "DeviceProfilesSettings"

    const-string/jumbo v1, "updateCodecStatus()"

    .line 2124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "mediatek"

    const-string/jumbo v1, "vendor"

    .line 2127
    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2129
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    return-void

    .line 2130
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2131
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2132
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2134
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    goto :goto_0

    .line 2137
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUpdatePrefForA2DPConnected:Z

    :cond_2
    const/4 v1, 0x0

    .line 2139
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2141
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LDAC"

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2142
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LHDC V5"

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2143
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LHDC_V3"

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2144
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LHDC_V2"

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2145
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LHDC_V1"

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2146
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

    .line 2150
    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2152
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "miui_store_audio_share_device_address"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "DeviceProfilesSettings"

    .line 2153
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

    .line 2155
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2156
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2157
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    return-void

    .line 2161
    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LDAC"

    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2162
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LDAC"

    const-string v5, "LDAC"

    .line 2163
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getCodecName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2162
    invoke-virtual {v0, v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2167
    :cond_9
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LHDC V5"

    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2168
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LHDC V5"

    .line 2169
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getCodecName(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "LHDC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2168
    invoke-virtual {v0, v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2172
    :cond_a
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LHDC_V3"

    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2173
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LHDC_V3"

    .line 2174
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getCodecName(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "LHDC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2173
    invoke-virtual {v0, v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_1

    .line 2178
    :cond_b
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LHDC_V2"

    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2179
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LHDC_V2"

    .line 2180
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getCodecName(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "LHDC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2179
    invoke-virtual {v0, v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_1

    .line 2184
    :cond_c
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LHDC_V1"

    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2185
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LHDC_V1"

    .line 2186
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getCodecName(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "LHDC"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2185
    invoke-virtual {v0, v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_1

    .line 2190
    :cond_d
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AAC"

    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2191
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "AAC"

    const-string v5, "AAC"

    .line 2192
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getCodecName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2191
    invoke-virtual {v0, v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 2197
    :cond_e
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ldac_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1a

    .line 2200
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    if-eqz v1, :cond_10

    .line 2201
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "LHDC V5"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_f

    move v3, v2

    :cond_f
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 2202
    :cond_10
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    if-eqz v1, :cond_12

    .line 2203
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "LHDC_V3"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_11

    move v3, v2

    :cond_11
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 2204
    :cond_12
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV2Device:Z

    if-eqz v1, :cond_14

    .line 2205
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "LHDC_V2"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_13

    move v3, v2

    :cond_13
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 2206
    :cond_14
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV1Device:Z

    if-eqz v1, :cond_16

    .line 2207
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "LHDC_V1"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_15

    move v3, v2

    :cond_15
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 2208
    :cond_16
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLDACDevice:Z

    if-eqz v1, :cond_18

    .line 2209
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "LDAC"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_17

    move v3, v2

    :cond_17
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 2211
    :cond_18
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "AAC"

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_19

    move v3, v2

    :cond_19
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 2213
    :goto_2
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1a
    return-void

    :catchall_0
    move-exception p0

    .line 2139
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateDeviceIdFromConfig(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 398
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDeviceIdFromConfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceProfilesSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\\,"

    .line 399
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 400
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 401
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceId:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private writeBluetoothA2dpConfiguration(Z)V
    .locals 8

    .line 2478
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_f

    .line 2479
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->writeCodecUserConfigureToProperty(Z)V

    .line 2481
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    const/4 v1, -0x1

    const v2, 0xf4240

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    const/16 v0, 0x13

    goto :goto_0

    .line 2485
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    const/16 v0, 0xd

    goto :goto_0

    .line 2489
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV2Device:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    const/16 v0, 0xc

    goto :goto_0

    .line 2493
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV1Device:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    const/16 v0, 0xe

    goto :goto_0

    .line 2497
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLDACDevice:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    move v1, v2

    :cond_8
    const/4 v0, 0x4

    goto :goto_0

    .line 2501
    :cond_9
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAACDevice:Z

    if-eqz v0, :cond_a

    move v0, p1

    move v1, v2

    goto :goto_0

    :cond_a
    move v1, v2

    move v0, v3

    :goto_0
    const-string v4, "audio"

    .line 2509
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    if-eqz v4, :cond_b

    .line 2511
    invoke-virtual {v4}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    :cond_b
    const-string/jumbo v4, "support_ldac"

    const/4 v5, 0x1

    .line 2513
    invoke-static {v4, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    xor-int/2addr v4, v5

    const-string/jumbo v6, "mediatek"

    const-string/jumbo v7, "vendor"

    .line 2514
    invoke-static {v7}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez p1, :cond_c

    .line 2515
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLDACDevice:Z

    if-eqz p1, :cond_c

    if-eqz v4, :cond_c

    if-eqz v3, :cond_c

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_c

    if-nez v6, :cond_c

    const-string p1, "DeviceProfilesSettings"

    const-string/jumbo v0, "music is playing, reconnect a2dp"

    .line 2517
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object p1

    .line 2519
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 2520
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->handleHeadSetConnect()V

    goto :goto_2

    .line 2522
    :cond_c
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2523
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getCodecConfig(Landroid/bluetooth/BluetoothA2dp;II)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v3

    if-ne v1, v2, :cond_d

    .line 2524
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 2526
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothA2dp;->isOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eq v1, v5, :cond_d

    .line 2528
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/bluetooth/BluetoothA2dp;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 2529
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    :cond_d
    if-eqz v3, :cond_e

    .line 2531
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_e

    .line 2532
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/BluetoothA2dp;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    goto :goto_1

    :cond_e
    const-string p0, "DeviceProfilesSettings"

    .line 2533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Codec is not selectable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "DeviceProfilesSettings"

    .line 2535
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

    .line 2534
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_f
    :goto_2
    return-void
.end method

.method private writeCodecUserConfigureToProperty(Z)V
    .locals 3

    const-string/jumbo v0, "vendor"

    .line 2627
    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mediatek"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2628
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV2Device:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV1Device:Z

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    const-string/jumbo v1, "persist.bluetooth.a2dp.lhdc.whitelist"

    if-ne p1, v2, :cond_1

    .line 2631
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->delFromWhiteList(Ljava/lang/String;)V

    goto :goto_0

    .line 2633
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addToWhiteList(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    return-void

    .line 2638
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV2Device:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV1Device:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 2647
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLDACDevice:Z

    if-eqz v0, :cond_5

    goto :goto_4

    .line 2651
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAACDevice:Z

    if-eqz v0, :cond_b

    .line 2652
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 2654
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "null"

    :goto_1
    const-string/jumbo v1, "persist.vendor.bt.a2dp.aac.whitelist"

    .line 2653
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.vendor.bt.a2dp.aac.whitelists"

    if-eqz p1, :cond_7

    .line 2656
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addToWhiteList(Ljava/lang/String;)V

    goto :goto_4

    .line 2658
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->delFromWhiteList(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    const-string/jumbo v0, "true"

    goto :goto_3

    :cond_9
    const-string v0, "false"

    :goto_3
    const-string/jumbo v1, "persist.vendor.bt.a2dp.lhdc.enabled"

    .line 2639
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.vendor.bt.a2dp.lhdc.whitelist"

    if-ne p1, v2, :cond_a

    .line 2643
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->delFromWhiteList(Ljava/lang/String;)V

    goto :goto_4

    .line 2645
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addToWhiteList(Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method


# virtual methods
.method checkLeaudioSupport()Z
    .locals 10

    const-string v0, "CheckLeaudioSupport"

    const/4 v1, 0x2

    .line 916
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "DeviceProfilesSettings"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p0, "is test for leaudio return"

    .line 918
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const-string p0, "is Third-party headphones, do not show leaudio profile"

    .line 923
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    const-string/jumbo v0, "ro.product.device"

    .line 927
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 929
    sget-object v6, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->U_SHOW_LEA_AOSP_PROFILE_PHONE_LIST:[Ljava/lang/String;

    array-length v7, v6

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 930
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_1
    if-nez v5, :cond_5

    .line 937
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "support_le_audio"

    .line 938
    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 939
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v4

    :cond_5
    :goto_2
    if-nez v5, :cond_6

    const-string/jumbo p0, "the phone dose not display leaudio profile"

    .line 943
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 947
    :cond_6
    sget-object v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->U_SHOW_LEA_HEADSET_LIST:[Ljava/lang/String;

    array-length v3, v0

    move v5, v4

    :goto_3
    if-ge v5, v3, :cond_8

    aget-object v6, v0, v5

    .line 948
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo p0, "the xiaomi headset need to display leaudio profile"

    .line 949
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    const-string/jumbo p0, "the xiaomi headset need not to display leaudio profile"

    .line 953
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 903
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 904
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 905
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-ne v1, v2, :cond_0

    .line 906
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 908
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    .line 909
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 912
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLeAudioConnectionPolicy()I
    .locals 4

    .line 733
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 734
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LE_AUDIO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 393
    const-class p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initForOta()V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "support_handle_oobservice"

    const/4 v1, 0x0

    .line 3914
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3915
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleOTAConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 3916
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$ServiceConnectionOTA;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleOTAConnection:Landroid/content/ServiceConnection;

    .line 3917
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.bluetooth.mible.MiuiBleOTAService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.bluetooth"

    .line 3918
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3920
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleOTAConnection:Landroid/content/ServiceConnection;

    const/4 v3, -0x1

    .line 3922
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    .line 3921
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/app/Activity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isBindOTAService:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3924
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3926
    :goto_0
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOTAHandler:Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;

    goto :goto_1

    :cond_0
    const-string p0, "DeviceProfilesSettings"

    const-string/jumbo v0, "the update connection is not null when init"

    .line 3928
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 3932
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public initOtaView()V
    .locals 2

    const-string v0, "DeviceProfilesSettings"

    const-string v1, "init ota view"

    .line 3898
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v0, "update_ota"

    .line 3901
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUpdateConfig:Landroidx/preference/PreferenceGroup;

    const-string v0, "firmwareOta"

    .line 3902
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/stylus/CustomColorTextPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFirmwareVersion:Lcom/android/settings/stylus/CustomColorTextPreference;

    .line 3903
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUpdateConfig:Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3904
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 3905
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUpdateConfig:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3908
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isHfpConnected()Z
    .locals 3

    .line 3846
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 3847
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-eqz p0, :cond_0

    .line 3848
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3853
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHfpConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceProfilesSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "vendor"

    .line 408
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 409
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, ""

    const-string v4, "XIAOMICONFIG"

    const-string v5, "device"

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 413
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceId:Ljava/lang/String;

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 416
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 417
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->updateDeviceIdFromConfig(Ljava/lang/String;)V

    .line 421
    :goto_0
    sget p1, Lcom/android/settings/R$xml;->bluetooth_device_advanced:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 422
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    const-string/jumbo p1, "profile_container"

    .line 423
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    const-string p1, "ldac_container"

    .line 425
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCodecContainer:Landroidx/preference/PreferenceGroup;

    const-string/jumbo p1, "rename_device"

    .line 426
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string p1, "bleShareAudioCategory"

    .line 428
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    const-string v4, "DeviceProfilesSettings"

    if-eqz p1, :cond_1

    const-string p1, "mBleAudioCategory not null and default remove it !"

    .line 431
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBleAudioCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_1
    const-string p1, "mBleAudioCategory is null"

    .line 434
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v5, :cond_2

    const-string p1, "Activity started without a remote Bluetooth device"

    .line 438
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 442
    :cond_2
    new-instance p1, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    const/4 v6, 0x0

    invoke-direct {p1, p0, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference-IA;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    .line 443
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 445
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    .line 446
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 447
    invoke-virtual {p1, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez p1, :cond_3

    const-string p1, "Device not found, cannot connect to it"

    .line 449
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 454
    :cond_3
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 455
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v5, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v5, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 457
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 460
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    .line 461
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v7, "LDAC"

    invoke-virtual {v5, p1, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLDACDevice:Z

    const-string/jumbo p1, "support_lhdc"

    const/4 v5, 0x1

    .line 462
    invoke-static {p1, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "support_lhdc_offload"

    .line 463
    invoke-static {p1, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 464
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    const-string v8, "LHDC V5"

    invoke-virtual {p1, v7, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    .line 465
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    const-string v8, "LHDC_V3"

    invoke-virtual {p1, v7, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    .line 466
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    const-string v8, "LHDC_V2"

    invoke-virtual {p1, v7, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV2Device:Z

    .line 467
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    const-string v8, "LHDC_V1"

    invoke-virtual {p1, v7, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV1Device:Z

    :cond_5
    const-string/jumbo p1, "support_a2dp_latency"

    .line 469
    invoke-static {p1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 470
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    const-string v8, "aptX Adaptive"

    invoke-virtual {p1, v7, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAADevice:Z

    .line 471
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string/jumbo v7, "zmi_latency"

    invoke-virtual {p1, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v5, :cond_6

    move p1, v5

    goto :goto_2

    :cond_6
    move p1, v2

    :goto_2
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSBCLlDevice:Z

    .line 474
    :cond_7
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    const-string v8, "AAC"

    invoke-virtual {p1, v7, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAACDevice:Z

    .line 475
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    new-instance v7, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    invoke-virtual {p1, v7}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 498
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    new-instance v7, Lcom/android/settings/bluetooth/DeviceProfilesSettings$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    invoke-virtual {p1, v7}, Landroidx/preference/EditTextPreference;->setOnBindEditTextListener(Landroidx/preference/EditTextPreference$OnBindEditTextListener;)V

    const-string p1, "audio_share_container"

    .line 510
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/PreferenceGroup;

    iput-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioShareContainer:Landroidx/preference/PreferenceGroup;

    const-string/jumbo v7, "support_audio_share"

    .line 511
    invoke-static {v7, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 512
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesForAudioShare()V

    const-string p1, "SUPPORT_AUDIO_SHARE_FEATURE == true"

    .line 513
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 515
    :cond_8
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioShareContainer:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_9

    .line 517
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioShareContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    :goto_3
    const-string p1, "audio_repair_container"

    .line 520
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/PreferenceGroup;

    iput-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairContainer:Landroidx/preference/PreferenceGroup;

    .line 529
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 530
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 535
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    :try_start_0
    const-string/jumbo p1, "mediatek"

    .line 542
    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v7, "qcom"

    .line 543
    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 544
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAbsAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    .line 545
    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioStreamMax:I

    if-eqz p1, :cond_c

    .line 547
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "persist_vendor_bt_a2dp_absvolfeature_mtk"

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v5, :cond_b

    .line 548
    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAbsVolFeature:Ljava/lang/String;

    .line 550
    :cond_b
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "persist.bluetooth.a2dp.absolute.volume.whitelistall"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isDeviceInListForAbsoluteVolume(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIsInAbsWhitelist:Z

    goto :goto_4

    :cond_c
    if-eqz v1, :cond_d

    const-string/jumbo p1, "persist.vendor.bt.a2dp.absvolfeature"

    const-string v1, "default"

    .line 553
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAbsVolFeature:Ljava/lang/String;

    .line 554
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "persist.vendor.bt.a2dp.absolute.volume.whitelistall"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isDeviceInListForAbsoluteVolume(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIsInAbsWhitelist:Z

    goto :goto_4

    :cond_d
    const-string p1, "addPreferencesForAbsoluteVolume null"

    .line 557
    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPreferencesForAbsoluteVolume failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :goto_4
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIsInAbsWhitelist:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAbsVolFeature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 565
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesForAbsoluteVolume()V

    const-string p1, "addPreferencesForAbsoluteVolume on create"

    .line 566
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_e
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceMacAddress:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isLeAudioBrDevice(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIsBleAudioDevice:Z

    if-eqz p1, :cond_f

    .line 570
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesForLeAudio()V

    .line 572
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesForSpecialCodec()V

    .line 574
    :try_start_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_10

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    .line 575
    :cond_10
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "btdetailinfo"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mThread:Landroid/os/HandlerThread;

    .line 576
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 577
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 578
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;

    invoke-direct {v0, p0, p1, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/os/Looper;Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler-IA;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mWorkHandler:Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 580
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 582
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->initForOta()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 590
    sget v0, Lcom/android/settings/R$layout;->bluetooth_device_advanced:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    .line 592
    sget v0, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 593
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 594
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 596
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->initOtaView()V

    .line 598
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 690
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 691
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 693
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 699
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 703
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 704
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mThread:Landroid/os/HandlerThread;

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 708
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 709
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 712
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairingDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_4

    .line 713
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 714
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairingDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 717
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 718
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 721
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->cleanUpOTA()V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .line 1283
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 885
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isDeviceRenameDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mEtDeviceRename:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->hideSoftInput(Landroid/widget/EditText;)V

    .line 888
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 890
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 891
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 894
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 895
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DeviceProfilesSettings"

    const-string/jumbo v1, "set scan mode connectable"

    .line 896
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x15

    .line 897
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 1096
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    .line 1099
    check-cast p2, Ljava/lang/String;

    .line 1100
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 1103
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v3, 0x1f

    if-le v0, v3, :cond_2

    sub-int/2addr p2, v2

    :goto_0
    if-lez p2, :cond_2

    .line 1105
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v3, :cond_0

    .line 1106
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 1112
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1114
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    return v2

    .line 1116
    :cond_3
    instance-of p2, p1, Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v0, "support_audio_share"

    if-eqz p2, :cond_9

    .line 1118
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v3, "ldac_pre"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1119
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onPrefClicked(Landroidx/preference/CheckBoxPreference;)V

    return v2

    :cond_4
    const-string p2, "abs_volume_pre"

    .line 1123
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1124
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onAbsVolumePrefClicked(Landroidx/preference/CheckBoxPreference;)V

    return v2

    :cond_5
    const-string p2, "le_audio_pre"

    .line 1128
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1129
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onLeAudioPrefClicked(Landroidx/preference/CheckBoxPreference;)V

    return v2

    .line 1133
    :cond_6
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "audio_share_switch_pre"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1134
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onAudioShareSwitchPrefClicked(Landroidx/preference/CheckBoxPreference;)V

    return v2

    .line 1139
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroidx/preference/Preference;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1141
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroidx/preference/CheckBoxPreference;)V

    :cond_8
    return v2

    .line 1146
    :cond_9
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_a

    instance-of p0, p1, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    if-eqz p0, :cond_a

    return v2

    :cond_a
    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 11

    .line 1068
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preference clicked key is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceProfilesSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "bleShareAudioBroadcastSwitch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "bleAudioBroadcastAdd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "unpair"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 1089
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string/jumbo p0, "preference clicked KEY_BLE_ADUIO_SHARE_BROADCAST_SWITCH"

    .line 1077
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    const-string/jumbo p1, "preference clicked KEY_BLE_ADUIO_BROADCAST_ADD"

    .line 1081
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1083
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const-string p2, "device"

    invoke-virtual {v6, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1084
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "com.android.settings.bluetooth.MiuiBluetoothShareBroadcastFragment"

    sget v7, Lcom/android/settings/R$string;->bluetooth_share_broadcast:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/settings/MiuiUtils;->startPreferencePanel(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroidx/fragment/app/Fragment;I)V

    goto :goto_1

    .line 1072
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->unpairDevice()V

    .line 1073
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_1
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x3216830d -> :sswitch_2
        -0x2eda8905 -> :sswitch_1
        -0x1736a5fd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 9

    .line 743
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 745
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 750
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 752
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 753
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 764
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 765
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 767
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 768
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v3}, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    .line 769
    instance-of v4, v3, Lmiuix/appcompat/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 770
    check-cast v3, Lmiuix/appcompat/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 771
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 775
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isDeviceRenameDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 776
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mEtDeviceRename:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/bluetooth/DeviceProfilesSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 791
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mWorkHandler:Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;

    if-eqz v0, :cond_4

    const/16 v3, 0x64

    .line 792
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 795
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "codec_claimer"

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 797
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 798
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV2Device:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV1Device:Z

    if-eqz v3, :cond_5

    goto :goto_1

    .line 805
    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLDACDevice:Z

    if-eqz v3, :cond_8

    .line 806
    sget v3, Lcom/android/settings/R$string;->bt_ldac_declaration:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 807
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 799
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 800
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "miui_bluetooth_lhdc_whitelist_cache"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, ""

    if-ne v3, v4, :cond_8

    .line 802
    :cond_7
    sget v3, Lcom/android/settings/R$string;->bt_lhdc_declaration:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 803
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 811
    :cond_8
    :goto_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-string v3, "DeviceProfilesSettings"

    if-eqz v0, :cond_9

    .line 812
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "set scan mode connectable and discoverable"

    .line 813
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x17

    .line 814
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    :cond_9
    const-string/jumbo v0, "support_audio_share"

    .line 817
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 818
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 819
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "miui_store_audio_share_device_address"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 820
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 822
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v4, "audio_share_switch_pre"

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 824
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "audio_share_volume_pre"

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    .line 826
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "ldac_pre"

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/CheckBoxPreference;

    .line 828
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "latency_pre"

    invoke-virtual {v7, v8}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    .line 830
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 831
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 832
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v8, "AUDIO_SHARE_SWITCH"

    invoke-virtual {v0, v8, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_a
    if-eqz v4, :cond_b

    const/16 v0, 0x32

    .line 835
    invoke-virtual {v4, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 836
    invoke-virtual {v4, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 837
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 838
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4, v5, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :cond_b
    if-eqz v6, :cond_c

    .line 841
    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 844
    :cond_c
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    if-eqz v0, :cond_d

    goto :goto_3

    :cond_d
    move v0, v2

    goto :goto_4

    .line 845
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LHDC_V3"

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LHDC V5"

    .line 846
    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_d

    :cond_f
    move v0, v1

    :goto_4
    if-eqz v7, :cond_15

    .line 849
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getLeAudioConnectionPolicy()I

    move-result v4

    if-lez v4, :cond_12

    .line 850
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasConnectedLeAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 851
    invoke-virtual {v7, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 852
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "latency_val"

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_10

    goto :goto_5

    :cond_10
    move v1, v2

    :goto_5
    invoke-virtual {v7, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_7

    .line 854
    :cond_11
    invoke-virtual {v7, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 855
    invoke-virtual {v7, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_7

    .line 858
    :cond_12
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV3Device:Z

    if-nez v4, :cond_14

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mLHDCV5Device:Z

    if-eqz v4, :cond_13

    goto :goto_6

    .line 861
    :cond_13
    invoke-virtual {v7, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_7

    .line 859
    :cond_14
    :goto_6
    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 868
    :cond_15
    :goto_7
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 870
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "le_audio_pre"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_17

    .line 871
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isSCOOn()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isLeAudioCgOn()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 872
    :cond_16
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p0, "leAudioPre.setEnabled(false) when calling"

    .line 873
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 727
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 728
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "XIAOMICONFIG"

    .line 729
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 603
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 605
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    .line 606
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "support_audio_share"

    const/4 v2, 0x0

    .line 608
    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MultiA2dp.ACTION.VOLUME_CHANGED"

    .line 609
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 613
    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    if-eqz v0, :cond_1

    .line 614
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 615
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 616
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "MultiA2dp.ACTION.RESET_STATE_CHANGED"

    .line 617
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothMultiA2DPStateResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 620
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 621
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfpAudioStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 623
    :cond_1
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 625
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfpAudioStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 628
    :cond_2
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairingDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 630
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairingDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 631
    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAudioRepairingDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 634
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 635
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothAudioRepairResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothOTAReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4

    .line 639
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.bluetooth.ble.app.mihandle.replyMessage"

    .line 640
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->initOtaBroacastReceiver()V

    .line 642
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothOTAReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "mBluetoothOTAReceiver is not null"

    .line 644
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 647
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 650
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->checkOtaState()V

    .line 652
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfileProxy()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 657
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isDeviceRenameDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mEtDeviceRename:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->hideSoftInput(Landroid/widget/EditText;)V

    .line 660
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 662
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 663
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothAudioRepairResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothOTAReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothOTAReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 667
    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothOTAReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const-string/jumbo v0, "support_audio_share"

    const/4 v1, 0x0

    .line 672
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothMultiA2DPStateResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 674
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfpAudioStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    .line 675
    :cond_2
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 677
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mBluetoothHfpAudioStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 679
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 684
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->closeProfileProxy(I)V

    return-void
.end method
