.class public final Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MiuiAuracastQcomFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$AssistantShowReceiver;,
        Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;,
        Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;,
        Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;,
        Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveClickListener;,
        Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveHandler;,
        Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;,
        Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioJustScanCallbackImpl;
    }
.end annotation


# static fields
.field private static cachedFragment:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static mBroadcastEnabled:Z = false

.field private static mBroadcastPropertyChecked:Z = false


# instance fields
.field private addingDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private assistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/bluetooth/BleBroadcastAudioScanAssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private bcProfile:Lcom/android/settingslib/bluetooth/BCProfile;

.field private groupIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hThread:Landroid/os/HandlerThread;

.field isHandlePassError:Z

.field private mActivity:Landroid/app/Activity;

.field private mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

.field mAssistantReceiver:Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$AssistantShowReceiver;

.field private mAuracastSourceController:Lcom/android/settings/bluetooth/AuracastSourceController;

.field private mAutoDisablePreference:Landroidx/preference/Preference;

.field private mBapBroadcastProfile:Ljava/lang/Object;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBroadcastPinCode:Ljava/lang/String;

.field private mBroadcastSourceIndicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDevicePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceScanResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstAddingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mFoundBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

.field private mGroupOperation:Z

.field private mHandler:Landroid/os/Handler;

.field private mHintDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mIsAddingBusy:Z

.field private mIsLoadingConfigedDevice:Z

.field private mIsRemoveBusy:Z

.field private mIsScanning:Z

.field private mIsSelectBusy:Z

.field private mIsSynchronizingBusy:Z

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mNeedRemovePreference:Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;

.field private mPasswordCallback:Lcom/android/settings/bluetooth/AuracastSourceUtils$PasswordDialogEventCallback;

.field private mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mRefreshListener:Landroid/view/View$OnClickListener;

.field private mRemoveHandler:Landroid/os/Handler;

.field private mRootView:Landroid/view/View;

.field mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

.field private mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

.field private mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;

.field private mSecondAddingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mSelectDevice:Landroid/bluetooth/BluetoothDevice;

.field private mSourcePreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mWaitRemove:Z

.field passwordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field printAuracastScan:Z

.field private removeClick:Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$PreferenceDetailClickListener;

.field selectBCId:I

.field selectEncPBPState:I


# direct methods
.method static bridge synthetic -$$Nest$fgetaddingDeviceMap(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->addingDeviceMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetassistMap(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbcProfile(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Lcom/android/settingslib/bluetooth/BCProfile;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->bcProfile:Lcom/android/settingslib/bluetooth/BCProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupIdList(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->groupIdList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfigedBleAudioSourceCategory(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Landroidx/preference/PreferenceGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevicePreferenceMap(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceScanResultMap(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDeviceScanResultMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFoundBleAudioSourceCategory(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Landroidx/preference/PreferenceGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mFoundBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScanning(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsScanning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalManager(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsScanning(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsScanning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSelectBusy(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsSelectBusy:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedRemovePreference(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mNeedRemovePreference:Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaitRemove(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mWaitRemove:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableScanning(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->disableScanning()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableScanning(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->enableScanning()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastAudioSourceAddedHandle(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->onBleBroadcastAudioSourceAddedHandle(Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastAudioSourceRemovedHandle(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->onBleBroadcastAudioSourceRemovedHandle(Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastAudioSourceUpdatedHandle(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->onBleBroadcastAudioSourceUpdatedHandle(Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastPinUpdatedHandle(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->onBleBroadcastPinUpdatedHandle(Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastSourceFoundHandle(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->onBleBroadcastSourceFoundHandle(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastSourceSelectedHandle(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->onBleBroadcastSourceSelectedHandle(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessPasswordUpdate(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;BLandroid/bluetooth/BleBroadcastSourceInfo;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->processPasswordUpdate(BLandroid/bluetooth/BleBroadcastSourceInfo;Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendRemoveBroadcast(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->sendRemoveBroadcast()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 82
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsScanning:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mGroupOperation:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsLoadingConfigedDevice:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->isHandlePassError:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mWaitRemove:Z

    const/4 v1, 0x0

    .line 133
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBroadcastPinCode:Ljava/lang/String;

    const/4 v2, -0x1

    .line 138
    iput v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->selectEncPBPState:I

    .line 142
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    .line 143
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->addingDeviceMap:Ljava/util/HashMap;

    .line 144
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->passwordMap:Ljava/util/HashMap;

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->groupIdList:Ljava/util/ArrayList;

    .line 148
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBapBroadcastProfile:Ljava/lang/Object;

    .line 150
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSourcePreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 151
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AuracastThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->hThread:Landroid/os/HandlerThread;

    const-string/jumbo v2, "printAuracastScan"

    const/4 v3, 0x2

    .line 152
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->printAuracastScan:Z

    .line 165
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mFirstAddingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 166
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSecondAddingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 167
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAssistantReceiver:Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$AssistantShowReceiver;

    .line 177
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsAddingBusy:Z

    .line 178
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsSelectBusy:Z

    .line 179
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsRemoveBusy:Z

    .line 180
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsSynchronizingBusy:Z

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDeviceScanResultMap:Ljava/util/HashMap;

    .line 187
    new-instance v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$MainHandler;-><init>(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    .line 741
    new-instance v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$ScanClick;-><init>(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mRefreshListener:Landroid/view/View$OnClickListener;

    .line 1514
    new-instance v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioScanAssistCallbackImpl;-><init>(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    .line 1699
    new-instance v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveClickListener;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveClickListener;-><init>(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->removeClick:Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$PreferenceDetailClickListener;

    .line 1744
    new-instance v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$RemoveHandler;-><init>(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mRemoveHandler:Landroid/os/Handler;

    .line 1856
    new-instance v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordCallback:Lcom/android/settings/bluetooth/AuracastSourceUtils$PasswordDialogEventCallback;

    return-void
.end method

.method private addNextConnectedAuraSinkDevice()Z
    .locals 8

    .line 1460
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->bcProfile:Lcom/android/settingslib/bluetooth/BCProfile;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/BCProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 1461
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addNextConnectedAuraSinkDevice  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiAuracastQcomFragment"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v1, v3}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getGroupId(Landroid/bluetooth/BluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)I

    move-result v3

    .line 1464
    invoke-static {v3}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isValidGroupId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1465
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->groupIdList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "group Id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has selected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1470
    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-nez v5, :cond_2

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mScanAssistCallback "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->bcProfile:Lcom/android/settingslib/bluetooth/BCProfile;

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v0, v1, v5}, Lcom/android/settingslib/bluetooth/BCProfile;->getBSAManager(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object v0

    .line 1475
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "registerAppCallback"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1477
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1479
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assistMap put"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    invoke-static {v3}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isValidGroupId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssistManager first select on group Id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->groupIdList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSelectDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBroadcastSourceIndicies:Ljava/util/List;

    .line 1487
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->setGroupOP(I)Z

    move-result v3

    const/4 v5, 0x2

    .line 1485
    invoke-virtual {v0, v2, v5, v4, v3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->addBroadcastSource(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;Z)Z

    .line 1488
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->addingDeviceMap:Ljava/util/HashMap;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    .line 1491
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNextConnectedAuraSinkDevice assistMap has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    return v2
.end method

.method private compareCodeAndInputPin(Ljava/lang/String;[B)Z
    .locals 10

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    return v1

    .line 1295
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compareCodeAndInputPin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->logD(Ljava/lang/String;)V

    const/16 v2, 0x10

    new-array v3, v2, [B

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_4

    .line 1298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1299
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    goto :goto_1

    .line 1301
    :cond_3
    aput-byte v1, v3, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1304
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1305
    array-length v5, p2

    move v6, v1

    :goto_2
    const-string v7, " "

    if-ge v6, v5, :cond_5

    aget-byte v8, p2, v6

    .line 1306
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1308
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compareCodeAndInputPin bad "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MiuiAuracastQcomFragment"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    :goto_3
    if-ge v4, v2, :cond_7

    rsub-int/lit8 v5, v4, 0xf

    .line 1311
    aget-byte v6, p2, v5

    aget-byte v8, v3, v4

    if-eq v6, v8, :cond_6

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pw and bad has "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p2, v5

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, v3, v4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->logD(Ljava/lang/String;)V

    return v1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return v0
.end method

.method private createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;
    .locals 4

    const-string v0, "createDevicePreference  enter !"

    const-string v1, "MiuiAuracastQcomFragment"

    .line 727
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    if-nez v2, :cond_0

    .line 731
    new-instance v2, Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 732
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to the Pref map"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method

.method private disableScanning()V
    .locals 3

    const/4 v0, 0x0

    .line 717
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsScanning:Z

    .line 718
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;->updateRefreshUI(Z)V

    const-string v0, "disableScanning enter"

    const-string v1, "MiuiAuracastQcomFragment"

    .line 719
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz p0, :cond_0

    .line 721
    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->stopSearchforLeAudioBroadcasters()Z

    move-result p0

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableScanning stop search ble audio broacaster ! isStop = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private enableScanning()V
    .locals 2

    const/4 v0, 0x1

    .line 707
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsScanning:Z

    .line 708
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;->updateRefreshUI(Z)V

    const-string v0, "enableScanning enter"

    const-string v1, "MiuiAuracastQcomFragment"

    .line 709
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz v0, :cond_0

    const-string v0, "enableScanning start search ble audio broacaster !"

    .line 711
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->searchforLeAudioBroadcasters()Z

    :cond_0
    return-void
.end method

.method private static extractPublicBroadcastNameBytesFromScanRecord([BII)[B
    .locals 2

    .line 1694
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 1695
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static getPublicBroadcastNameFromScanRecordBytes([B)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "MiuiAuracastQcomFragment"

    if-nez p0, :cond_0

    const-string p0, " Scan record is NULL "

    .line 1663
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v2, "getPublicBroadcastNameFromScanRecordBytes"

    .line 1669
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 1671
    :goto_0
    :try_start_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    .line 1672
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v3, 0x1

    .line 1677
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0x30

    if-eq v3, v5, :cond_2

    goto :goto_1

    .line 1680
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-static {p0, v4, v2}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->extractPublicBroadcastNameBytesFromScanRecord([BII)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1681
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PBS Name"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    :goto_1
    add-int/2addr v2, v4

    goto :goto_0

    :catch_0
    move-object v0, v3

    .line 1688
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse scan record: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-object v0
.end method

.method private getSourceInfoBySourceId(BLandroid/bluetooth/BleBroadcastAudioScanAssistManager;)Landroid/bluetooth/BleBroadcastSourceInfo;
    .locals 3

    .line 1355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSourceInfoBySourceId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiAuracastQcomFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 1357
    invoke-virtual {p2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->getAllBroadcastSourceInformation()Ljava/util/List;

    move-result-object p0

    .line 1358
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 1359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for srcId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceId(Ljava/lang/Object;)B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-static {p2}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceId(Ljava/lang/Object;)B

    move-result v1

    if-ne v1, p1, :cond_0

    const-string p0, "find the source info which need to update"

    .line 1361
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private informNextConnectedAuraSinkDevice(Landroid/bluetooth/le/ScanResult;Z)Z
    .locals 9

    .line 1388
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->bcProfile:Lcom/android/settingslib/bluetooth/BCProfile;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/BCProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p2

    .line 1389
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "informNextConnectedAuraSinkDevice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MiuiAuracastQcomFragment"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0, v2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getGroupId(Landroid/bluetooth/BluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)I

    move-result v2

    .line 1392
    invoke-static {v2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isValidGroupId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1393
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->groupIdList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group Id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has selected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1398
    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-nez v5, :cond_6

    .line 1400
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mScanAssistCallback "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->bcProfile:Lcom/android/settingslib/bluetooth/BCProfile;

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {p2, v0, v5}, Lcom/android/settingslib/bluetooth/BCProfile;->getBSAManager(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object p2

    .line 1403
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "registerAppCallback"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 1405
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1407
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assistMap put"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    invoke-virtual {p2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->getAllBroadcastSourceInformation()Ljava/util/List;

    move-result-object v5

    .line 1410
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 1411
    invoke-virtual {v6}, Landroid/bluetooth/BleBroadcastSourceInfo;->isEmptyEntry()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1412
    invoke-static {v6}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getSyncState(Ljava/lang/Object;)I

    move-result v5

    .line 1414
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xc8

    const/4 v4, -0x1

    if-eq v5, v4, :cond_2

    .line 1416
    invoke-virtual {v6}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcastChannelsSyncStatus()Ljava/util/List;

    move-result-object v1

    .line 1417
    invoke-static {v6}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceId(Ljava/lang/Object;)B

    move-result v5

    invoke-static {v2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isValidGroupId(I)Z

    move-result v2

    invoke-virtual {p2, v5, v4, v1, v2}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->updateBroadcastSource(BILjava/util/List;Z)Z

    move v1, v3

    .line 1420
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/16 v2, 0xcb

    .line 1421
    iput v2, p2, Landroid/os/Message;->what:I

    .line 1422
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1423
    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    iput-object v2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1425
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mRemoveHandler:Landroid/os/Handler;

    int-to-long v4, v1

    invoke-virtual {v2, p2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1427
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/4 v2, 0x6

    .line 1428
    iput v2, p2, Landroid/os/Message;->what:I

    .line 1429
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1430
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SINK_DEVICE"

    .line 1431
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1432
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1433
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    add-int/2addr v1, v3

    int-to-long v0, v1

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v7

    .line 1438
    :cond_3
    invoke-static {v2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isValidGroupId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssistManager first select on group Id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->groupIdList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1442
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->setGroupOP(I)Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->selectBroadcastSource(Landroid/bluetooth/le/ScanResult;Z)Z

    .line 1443
    sget-boolean p1, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isTestUI:Z

    if-eqz p1, :cond_5

    .line 1445
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    if-eqz p0, :cond_5

    const-string p0, " in select "

    .line 1448
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v7

    .line 1453
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "informNextConnectedAuraSinkDevice assistMap has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    return v1
.end method

.method private static isBroadcastEnabled()Z
    .locals 1

    .line 647
    sget-boolean v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBroadcastEnabled:Z

    return v0
.end method

.method private static isBroadcastPropertyChecked()Z
    .locals 1

    .line 639
    sget-boolean v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBroadcastPropertyChecked:Z

    return v0
.end method

.method private isSourceDeviceHasCongfiged(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "MiuiAuracastQcomFragment"

    const-string v1, "isSourceHasCongfiged device is null return"

    .line 1372
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1376
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1377
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;

    .line 1378
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private loadConfigedSourceDevice()V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 946
    iput-boolean v2, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsLoadingConfigedDevice:Z

    .line 947
    iget-object v0, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 948
    iget-object v0, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "BROADCAST_ID_RECORD"

    const/high16 v4, -0x1000000

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 949
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectBroadcastId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MiuiAuracastQcomFragment"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v5, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->bcProfile:Lcom/android/settingslib/bluetooth/BCProfile;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/BCProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    .line 951
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 952
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " mScanAssistCallback "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v9, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->bcProfile:Lcom/android/settingslib/bluetooth/BCProfile;

    iget-object v11, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {v9, v7, v11}, Lcom/android/settingslib/bluetooth/BCProfile;->getBSAManager(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object v9

    .line 954
    iget-object v11, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v11, :cond_9

    if-eqz v9, :cond_9

    .line 955
    invoke-virtual {v9}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->getAllBroadcastSourceInformation()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 957
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "has added source info size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 959
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " source info: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {v12}, Landroid/bluetooth/BleBroadcastSourceInfo;->isEmptyEntry()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v1, v12}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->isLocalSource(Landroid/bluetooth/BleBroadcastSourceInfo;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto/16 :goto_7

    .line 963
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "selectBroadcastId +"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-virtual {v12}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcasterId()I

    move-result v13

    if-eq v0, v13, :cond_4

    .line 965
    invoke-virtual {v12}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAudioSyncState()I

    move-result v13

    if-eq v13, v2, :cond_2

    .line 966
    invoke-virtual {v12}, Landroid/bluetooth/BleBroadcastSourceInfo;->getMetadataSyncState()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    goto :goto_2

    :cond_1
    const-string/jumbo v13, "not sync pa and bis "

    .line 977
    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-virtual {v12}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v12

    invoke-virtual {v9, v12, v8}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->removeBroadcastSource(BZ)Z

    goto/16 :goto_7

    :cond_2
    :goto_2
    if-ne v0, v4, :cond_3

    const-string/jumbo v0, "update selectBroadcastId "

    .line 968
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcasterId()I

    move-result v13

    invoke-static {v0, v3, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 970
    invoke-virtual {v12}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcasterId()I

    move-result v0

    iput v0, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->selectBCId:I

    .line 971
    invoke-virtual {v12}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcasterId()I

    move-result v0

    goto :goto_3

    :cond_3
    const-string/jumbo v12, "sync pa or bis ,not handle"

    .line 973
    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_4
    :goto_3
    move v13, v0

    .line 983
    iget-object v0, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    const/4 v14, 0x0

    invoke-virtual {v0, v7, v14}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " assistMap info: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v7, v0}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getGroupId(Landroid/bluetooth/BluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)I

    move-result v0

    .line 987
    invoke-static {v0}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isValidGroupId(I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 988
    iget-object v14, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->groupIdList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 989
    iget-object v14, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->groupIdList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move v14, v8

    goto :goto_5

    :cond_6
    :goto_4
    move v14, v2

    .line 995
    :goto_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSourceCategory confige "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_7

    .line 998
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "registerAppCallback"

    new-array v14, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1000
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1002
    :goto_6
    iget-object v0, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    invoke-virtual {v1, v12, v7}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->updateSourceCategory(Landroid/bluetooth/BleBroadcastSourceInfo;Landroid/bluetooth/BluetoothDevice;)V

    :cond_7
    move v0, v13

    :cond_8
    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1010
    :cond_a
    iput-boolean v8, v1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsLoadingConfigedDevice:Z

    return-void
.end method

.method private onBleBroadcastAudioSourceAddedHandle(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 3

    .line 1188
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "MiuiAuracastQcomFragment"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onBleBroadcastAudioSourceAddedHandle Activity is finished do nothing and return !"

    .line 1189
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBleBroadcastAudioSourceAddedHandle: rcvr: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " srcId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    .line 1194
    invoke-virtual {v2}, Ljava/util/HashMap;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1193
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_1

    .line 1196
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->resetAddingPreference()V

    .line 1198
    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p3, :cond_2

    .line 1199
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->refreshAfterAdd(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "onBleBroadcastAudioSourceAddedHandle: add select sourrce fail !"

    .line 1203
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    sget p3, Lcom/android/settings/R$string;->assistant_add_fail:I

    const/4 v0, 0x1

    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 1205
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->resetAddingPreference()V

    .line 1209
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->addingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->addingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1211
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    return-void
.end method

.method private onBleBroadcastAudioSourceRemovedHandle(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 4

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBleBroadcastAudioSourceRemovedHandle device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " srcId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiAuracastQcomFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1261
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mWaitRemove:Z

    .line 1262
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mRemoveHandler:Landroid/os/Handler;

    const/16 v3, 0xca

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1263
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mRemoveHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo p0, "operate fail"

    .line 1268
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1270
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->removeprefrenceByInfo(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1271
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz p2, :cond_3

    .line 1274
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string/jumbo v2, "unregisterAppCallback"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {p3, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1276
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1278
    :goto_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getGroupId(Landroid/bluetooth/BluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)I

    move-result p2

    .line 1280
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assistMap remove "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :goto_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->groupIdList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 1282
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->groupIdList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 1283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "remove "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->groupIdList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private onBleBroadcastAudioSourceUpdatedHandle(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    const-string p0, "MiuiAuracastQcomFragment"

    const-string/jumbo p1, "onBleBroadcastAudioSourceUpdatedHandle"

    .line 1225
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onBleBroadcastPinUpdatedHandle(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 2

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBleBroadcastPinUpdatedHandle device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " srcId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiAuracastQcomFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 1250
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->resetAfterError()V

    return-void

    :cond_0
    const-string/jumbo p0, "onBleBroadcastPinUpdated success"

    .line 1254
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onBleBroadcastSourceFoundHandle(Landroid/bluetooth/le/ScanResult;)V
    .locals 5

    .line 1060
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->printAuracastScan:Z

    const-string v1, "MiuiAuracastQcomFragment"

    if-eqz v0, :cond_0

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBleBroadcastSourceFoundHandle "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsScanning:Z

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 1069
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsLoadingConfigedDevice:Z

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->isSourceDeviceHasCongfiged(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 1073
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "The found device is not present!"

    .line 1077
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p0, "cached device is null return!"

    .line 1080
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1084
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isLocalDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v2

    if-nez v2, :cond_6

    .line 1085
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The found device is self device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 1087
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1088
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocalAuracastSource"

    .line 1087
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1089
    sget-boolean v2, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isTestUI:Z

    if-nez v2, :cond_6

    return-void

    .line 1092
    :cond_6
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    if-nez v2, :cond_9

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create preference for found device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1097
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 1098
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1099
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->getPublicBroadcastNameFromScanRecordBytes([B)Ljava/lang/String;

    move-result-object v3

    .line 1101
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The found device name is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 1107
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    move-result-object v2

    .line 1108
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDeviceScanResultMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    :cond_9
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mFoundBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_a

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_a

    .line 1112
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mFoundBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1113
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mFoundBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    .line 1114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "found device cont is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_1
    return-void

    :cond_b
    :goto_2
    const-string/jumbo p0, "onBleBroadcastSourceFoundHandle Activity is finished do nothing and return !"

    .line 1065
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onBleBroadcastSourceSelectedHandle(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    .line 1124
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "MiuiAuracastQcomFragment"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onBleBroadcastSourceSelectedHandle Activity is finished do nothing and return !"

    .line 1125
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1128
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsSelectBusy:Z

    if-nez v0, :cond_1

    const-string/jumbo p0, "onBleBroadcastSourceSelectedHandle select operate has timeout"

    .line 1129
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1132
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsSelectBusy:Z

    .line 1133
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1134
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1136
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBleBroadcastSourceSelectedHandle device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sel indicies: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBroadcastSourceIndicies:Ljava/util/List;

    if-eqz p3, :cond_4

    .line 1139
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BleBroadcastSourceChannel;

    .line 1140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSelected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BleBroadcastSourceChannel;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-virtual {v2}, Landroid/bluetooth/BleBroadcastSourceChannel;->getSubGroupId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1140
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1144
    :try_start_0
    invoke-virtual {v2}, Landroid/bluetooth/BleBroadcastSourceChannel;->getMetadata()[B

    move-result-object v2

    array-length v5, v2

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-byte v7, v2, v6

    .line 1145
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1148
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1150
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " metaData "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-nez p2, :cond_6

    const-string/jumbo p2, "onBleBroadcastSourceSelectedHandle add source to device !"

    .line 1154
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSelectDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_7

    const-string p2, "add device to broadcast source !"

    .line 1156
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz p2, :cond_7

    const-string p3, "AssistManager BASS addBroadcastSource, opGroup true"

    .line 1159
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    sget-boolean p3, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isTestUI:Z

    if-eqz p3, :cond_5

    .line 1161
    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "select Success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1164
    :cond_5
    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1, p3}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getGroupId(Landroid/bluetooth/BluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)I

    move-result p3

    .line 1165
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->addingDeviceMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "BROADCAST_ID_RECORD"

    iget v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->selectBCId:I

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1167
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSelectDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBroadcastSourceIndicies:Ljava/util/List;

    .line 1169
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->setGroupOP(I)Z

    move-result p3

    const/4 v1, 0x2

    .line 1167
    invoke-virtual {p2, p1, v1, v0, p3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->addBroadcastSource(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;Z)Z

    .line 1170
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x1964

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1171
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->addNextConnectedAuraSinkDevice()Z

    goto :goto_2

    :cond_6
    const-string/jumbo p1, "onBleBroadcastSourceSelectedHandle BASS status error do nothing !"

    .line 1175
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    sget p2, Lcom/android/settings/R$string;->assistant_add_fail:I

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1177
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->resetAfterSelectError()V

    :cond_7
    :goto_2
    return-void
.end method

.method private processPasswordUpdate(BLandroid/bluetooth/BleBroadcastSourceInfo;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 6

    const-string p4, "MiuiAuracastQcomFragment"

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BROADCAST_ID_AND_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {p2}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcasterId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1324
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1326
    invoke-static {p2}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getEncryptionStatus(Ljava/lang/Object;)I

    move-result v1

    .line 1327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->logD(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2

    const-string/jumbo v0, "processPasswordUpdate show "

    .line 1329
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    .line 1331
    invoke-virtual {p2}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-object p4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    .line 1332
    invoke-virtual {p4, p3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    .line 1331
    invoke-direct {p0, p2, p1, p3, v3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->showPasswordDialog(Landroid/bluetooth/BluetoothDevice;BLandroid/bluetooth/BleBroadcastAudioScanAssistManager;Z)V

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_4

    .line 1334
    invoke-virtual {p2}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-object p4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    .line 1335
    invoke-virtual {p4, p3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    .line 1334
    invoke-direct {p0, p2, p1, p3, v2}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->showPasswordDialog(Landroid/bluetooth/BluetoothDevice;BLandroid/bluetooth/BleBroadcastAudioScanAssistManager;Z)V

    goto :goto_0

    :cond_2
    const-string v5, "#N#"

    .line 1337
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v0, "processPasswordUpdate The User has ignore "

    .line 1338
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v3, :cond_4

    .line 1340
    invoke-virtual {p2}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-object p4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    .line 1341
    invoke-virtual {p4, p3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    .line 1340
    invoke-direct {p0, p2, p1, p3, v2}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->showPasswordDialog(Landroid/bluetooth/BluetoothDevice;BLandroid/bluetooth/BleBroadcastAudioScanAssistManager;Z)V

    goto :goto_0

    .line 1344
    :cond_3
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p3, p2}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getGroupId(Landroid/bluetooth/BluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)I

    move-result p2

    .line 1346
    :try_start_0
    iget-object p4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    invoke-virtual {p4, p3, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->setGroupOP(I)Z

    move-result p0

    invoke-virtual {p3, p1, v0, p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->setBroadcastCode(BLjava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1348
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string/jumbo p0, "processPasswordUpdate sourceInfo null"

    .line 1320
    invoke-static {p4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private refreshAfterAdd(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5

    .line 820
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    .line 821
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 822
    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->getAllBroadcastSourceInformation()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has added source info size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiAuracastQcomFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 825
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsLoadingConfigedDevice:Z

    .line 826
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "source sync state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAudioSyncState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is source info is empty = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->isEmptyEntry()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " source info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-static {v1}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceId(Ljava/lang/Object;)B

    move-result v3

    if-eq v3, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "needCreateNewPreference = true create new configed preference !"

    .line 832
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-virtual {p0, v1, p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->updateSourceCategory(Landroid/bluetooth/BleBroadcastSourceInfo;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 835
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsLoadingConfigedDevice:Z

    :cond_2
    return-void
.end method

.method private refreshAfterUpdate(BLandroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;)V
    .locals 10

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshAfterUpdate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiuiAuracastQcomFragment"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string/jumbo v3, "refreshAfterUpdate newInfo is not null"

    .line 845
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 848
    :cond_0
    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    .line 849
    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-direct {p0, p1, p3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->getSourceInfoBySourceId(BLandroid/bluetooth/BleBroadcastAudioScanAssistManager;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p3

    .line 851
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshAfterUpdate assistMap "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->hashCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 855
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    .line 858
    :goto_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 859
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;

    .line 861
    invoke-virtual {v4}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->getBleBroadcastSourceInfo()Ljava/util/HashMap;

    move-result-object v5

    .line 862
    invoke-virtual {v5, p2, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 864
    invoke-static {v5}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceId(Ljava/lang/Object;)B

    move-result v5

    if-ne v5, p1, :cond_2

    if-eqz p3, :cond_2

    .line 865
    invoke-virtual {v4, p3, p2}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->updateBleBroadcastSourceInfo(Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V

    .line 866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update the source info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz p3, :cond_d

    .line 872
    invoke-virtual {p3}, Landroid/bluetooth/BleBroadcastSourceInfo;->getEncryptionStatus()I

    move-result v3

    .line 873
    invoke-static {p3}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getMetadataSyncState(Ljava/lang/Object;)I

    move-result v4

    const-string v5, "getAudioSyncState"

    .line 875
    invoke-static {p3, v5}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->invokeIntBleInfoMethod(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    .line 876
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onBleBroadcastAudioSourceUpdate Remove "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mWaitRemove:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " encState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " PA state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " audioSyncState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :try_start_0
    sget-boolean v6, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isTestUI:Z

    if-eqz v6, :cond_4

    .line 880
    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 881
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " E "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "P "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "A "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 880
    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 885
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 887
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    .line 888
    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ENC_PBP_STATE"

    iget v7, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->selectEncPBPState:I

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 889
    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BROADCAST_ID_AND_CODE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {p3}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcasterId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 889
    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x4

    if-ne v4, v7, :cond_5

    if-nez v3, :cond_5

    if-ne v5, v8, :cond_5

    if-nez v6, :cond_5

    const-string/jumbo v0, "refreshAfterUpdate: broadcast has encrypted need input password"

    .line 894
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 896
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 897
    iput v9, v0, Landroid/os/Message;->what:I

    .line 898
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 899
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "UPdevice"

    .line 900
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p2, "srcId"

    .line 901
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 902
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 903
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x1c2

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6

    :cond_5
    if-ne v3, v8, :cond_7

    .line 908
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 909
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 911
    :cond_6
    invoke-direct {p0, p1, p3, p2, v1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->processPasswordUpdate(BLandroid/bluetooth/BleBroadcastSourceInfo;Landroid/bluetooth/BluetoothDevice;Z)V

    goto/16 :goto_6

    :cond_7
    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    .line 913
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 914
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    if-eqz v6, :cond_9

    const-string v3, "#N#"

    .line 917
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 919
    invoke-virtual {p3}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBadBroadcastCode()[B

    move-result-object v3

    .line 918
    invoke-direct {p0, v6, v3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->compareCodeAndInputPin(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v8

    goto :goto_5

    :cond_9
    move v3, v1

    :goto_5
    if-eqz v3, :cond_a

    .line 924
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    sget p2, Lcom/android/settings/R$string;->password_check_fail:I

    invoke-static {p1, p2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 925
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 926
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->sendRemoveBroadcast()V

    return-void

    .line 929
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pw "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {p3}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    .line 931
    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    .line 930
    invoke-direct {p0, p3, p1, p2, v1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->showPasswordDialog(Landroid/bluetooth/BluetoothDevice;BLandroid/bluetooth/BleBroadcastAudioScanAssistManager;Z)V

    goto :goto_6

    :cond_b
    if-ne v3, v7, :cond_d

    .line 935
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 936
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_c
    const-string p0, "code is right"

    .line 938
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_6
    return-void
.end method

.method private removeprefrenceByInfo(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 11

    .line 790
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MiuiAuracastQcomFragment"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 793
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    .line 794
    invoke-virtual {v4, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;

    .line 795
    invoke-virtual {v4}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->getBleBroadcastSourceInfo()Ljava/util/HashMap;

    move-result-object v5

    const/4 v6, 0x0

    .line 796
    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 798
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 799
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeprefrenceByInfo s Infois null, temp has "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 802
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeprefrenceByInfo id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceId(Ljava/lang/Object;)B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-static {v6}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceId(Ljava/lang/Object;)B

    move-result v7

    if-ne v7, p2, :cond_2

    .line 804
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 806
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSourcePreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 807
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 808
    invoke-static {v6}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceDevice(Ljava/lang/Object;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 809
    invoke-virtual {v4}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 810
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "src "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " category "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 812
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not clean "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private sendRemoveBroadcast()V
    .locals 4

    .line 1715
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.close.assistant.broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.bluetooth"

    .line 1716
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x5000000

    .line 1717
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1719
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "MiuiAuracastQcomFragment"

    if-nez v1, :cond_0

    const-string/jumbo p0, "sendRemoveBroadcast mActivity is null"

    .line 1720
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1723
    :cond_0
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1724
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "BROADCAST_ID_RECORD"

    const/high16 v3, -0x1000000

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendRemoveBroadcast"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BROADCAST_ID_AND_CODE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 1729
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mWaitRemove:Z

    .line 1730
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xca

    .line 1731
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1732
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mRemoveHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private static setBroadcastEnabled(Z)V
    .locals 0

    .line 651
    sput-boolean p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBroadcastEnabled:Z

    return-void
.end method

.method private static setBroadcastProperty(Z)V
    .locals 0

    .line 643
    sput-boolean p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBroadcastPropertyChecked:Z

    return-void
.end method

.method private showPasswordDialog(Landroid/bluetooth/BluetoothDevice;BLandroid/bluetooth/BleBroadcastAudioScanAssistManager;Z)V
    .locals 3

    .line 1927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showPasswordDialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiAuracastQcomFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1929
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "showPasswordDialog IsShow"

    .line 1930
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "showPasswordDialog Is not Show"

    .line 1933
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 1937
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordCallback:Lcom/android/settings/bluetooth/AuracastSourceUtils$PasswordDialogEventCallback;

    .line 1938
    invoke-static {v0, p1, p2, v2, p4}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->createPasswordDialog(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;BLcom/android/settings/bluetooth/AuracastSourceUtils$PasswordDialogEventCallback;Z)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 1939
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordCallback:Lcom/android/settings/bluetooth/AuracastSourceUtils$PasswordDialogEventCallback;

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;

    invoke-virtual {p1, p3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;->setAssist(Landroid/bluetooth/BleBroadcastAudioScanAssistManager;)V

    .line 1940
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordCallback:Lcom/android/settings/bluetooth/AuracastSourceUtils$PasswordDialogEventCallback;

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$PasswordDialogEventCallbackImpl;->setFragment(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V

    .line 1941
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_2

    const-string/jumbo p1, "showPasswordDialog show"

    .line 1942
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1944
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 658
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->isBroadcastPropertyChecked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v1, "persist.vendor.service.bt.adv_audio_mask"

    .line 659
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x4

    and-int/2addr v1, v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "persist.bluetooth.broadcast_ui"

    .line 661
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    .line 662
    :goto_0
    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->setBroadcastEnabled(Z)V

    .line 663
    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->setBroadcastProperty(Z)V

    .line 666
    :cond_1
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->isBroadcastEnabled()Z

    move-result v1

    const-string v3, "MiuiAuracastQcomFragment"

    if-nez v1, :cond_2

    const-string p0, "[ZZQ] createPreferenceControllers mBroadcastEnabled is false"

    .line 667
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const-string v1, "createPreferenceControllers for Broadcast"

    .line 671
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :try_start_0
    new-instance v1, Lcom/android/settings/bluetooth/AuracastSourceController;

    const-string v3, "bluetooth_broadcast_enable"

    invoke-direct {v1, p1, v3}, Lcom/android/settings/bluetooth/AuracastSourceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAuracastSourceController:Lcom/android/settings/bluetooth/AuracastSourceController;

    .line 674
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 676
    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->setBroadcastEnabled(Z)V

    .line 677
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method getBroadcastIdFromScanResult(Landroid/bluetooth/le/ScanResult;)I
    .locals 2

    .line 1631
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1634
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanRecord;->getServiceData()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "00001852-0000-1000-8000-00805F9B34FB"

    .line 1636
    invoke-static {p1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    invoke-static {p1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const/4 p1, 0x2

    .line 1638
    aget-byte p1, p0, p1

    shl-int/lit8 p1, p1, 0x10

    const/high16 v0, 0xff0000

    and-int/2addr p1, v0

    const/4 v0, 0x1

    .line 1639
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    const/4 v0, 0x0

    .line 1640
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/high16 p0, -0x1000000

    :goto_0
    return p0
.end method

.method getEncState(Landroid/bluetooth/le/ScanResult;)I
    .locals 1

    .line 1648
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p0

    .line 1649
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanRecord;->getServiceData()Ljava/util/Map;

    move-result-object p0

    const-string p1, "00001856-0000-1000-8000-00805F9B34FB"

    .line 1650
    invoke-static {p1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    invoke-static {p1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-eqz p0, :cond_0

    .line 1653
    array-length p1, p0

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1654
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "MiuiAuracastQcomFragment"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 630
    sget p0, Lcom/android/settings/R$xml;->miui_auracast_settings:I

    return p0
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 3

    .line 684
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mFoundBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    .line 685
    sget v1, Lcom/android/settings/R$layout;->preference_bt_category_paired:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 686
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mFoundBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    const-string v2, "found_ble_audio_source"

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mFoundBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 688
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mFoundBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 690
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    .line 691
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 692
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    const-string v1, "configed_ble_audio_source"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 694
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 696
    new-instance v0, Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;

    const/4 v1, 0x0

    .line 697
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 698
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;

    sget v1, Lcom/android/settings/R$string;->bluetooth_auracast_source_available_connect:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 700
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;

    const-string/jumbo v1, "search_ble_audio_source"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 702
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mRefreshListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/AuracastSourceDeviceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method isLocalSource(Landroid/bluetooth/BleBroadcastSourceInfo;)Z
    .locals 1

    .line 1014
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "LocalAuracastSource"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1016
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "MiuiAuracastQcomFragment"

    const-string p1, "isLocalSource same"

    .line 1017
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 1021
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method logD(Ljava/lang/String;)V
    .locals 0

    .line 1960
    sget-boolean p0, Lcom/android/settings/bluetooth/AuracastSourceUtils;->enableAuracastLog:Z

    if-eqz p0, :cond_0

    const-string p0, "MiuiAuracastQcomFragment"

    .line 1961
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .line 296
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const-string/jumbo v0, "onAttach"

    const-string v1, "MiuiAuracastQcomFragment"

    .line 297
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    .line 300
    :try_start_0
    sget-object p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->cachedFragment:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 301
    sget-object p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->cachedFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result p1

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAttach "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cached "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 304
    sget-object p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->cachedFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    iget-object p1, p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 306
    :cond_0
    sget-object p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->cachedFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 309
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->cachedFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onBleBroadcastAudioSourceUpdatedDetailHandle(Landroid/bluetooth/BluetoothDevice;BILandroid/bluetooth/BleBroadcastSourceInfo;)V
    .locals 2

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBleBroadcastAudioSourceUpdatedDetailHandle device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " srcId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    .line 1232
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiAuracastQcomFragment"

    .line 1231
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 1235
    sget-boolean p1, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isTestUI:Z

    if-eqz p1, :cond_0

    .line 1236
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    const/4 p2, 0x3

    .line 1237
    invoke-static {p1, p2, p3}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getToastMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    .line 1236
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1239
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->resetAfterError()V

    return-void

    .line 1242
    :cond_1
    invoke-direct {p0, p2, p1, p4}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->refreshAfterUpdate(BLandroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 324
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "onCreate"

    const-string v1, "MiuiAuracastQcomFragment"

    .line 325
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    const-string v0, "device"

    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 332
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 335
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "bluetooth_broadcast_enable"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSourcePreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 336
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 337
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_2

    const-string p1, "Local mgr is NULL"

    .line 338
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_2

    const-string p1, "Bluetooth is not supported on this device"

    .line 341
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAuracastSourceController:Lcom/android/settings/bluetooth/AuracastSourceController;

    if-eqz p1, :cond_3

    const-string/jumbo p1, "registerObserver"

    .line 346
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAuracastSourceController:Lcom/android/settings/bluetooth/AuracastSourceController;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/AuracastSourceController;->registerObserver()V

    goto :goto_1

    :cond_3
    const-string p1, "mAuracastSourceController != null"

    .line 349
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "ba_auto_disable"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAutoDisablePreference:Landroidx/preference/Preference;

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mAutoDisable "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAutoDisablePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAutoDisablePreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_4

    .line 356
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 357
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAutoDisablePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 358
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAutoDisablePreference:Landroidx/preference/Preference;

    .line 361
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_5

    const-string p1, " mLocalManager is null!"

    .line 362
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 366
    :cond_5
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.bluetooth.action.auracast.show.source"

    .line 367
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    new-instance v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$AssistantShowReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$AssistantShowReceiver;-><init>(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAssistantReceiver:Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$AssistantShowReceiver;

    .line 369
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, p1, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 370
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 371
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getBroadcastProfile(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBapBroadcastProfile:Ljava/lang/Object;

    .line 372
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 373
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getBCProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/BCProfile;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->bcProfile:Lcom/android/settingslib/bluetooth/BCProfile;

    .line 374
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_7

    .line 375
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/BCProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDevice is null, getConnectedDevices size "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_6

    .line 378
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->bcProfile:Lcom/android/settingslib/bluetooth/BCProfile;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/BCProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_2

    :cond_6
    return-void

    .line 383
    :cond_7
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fragment hashcode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " AssistCallback "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDevice is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->bcProfile:Lcom/android/settingslib/bluetooth/BCProfile;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v3, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioJustScanCallbackImpl;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$BleBroadcastAudioJustScanCallbackImpl;-><init>(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;)V

    invoke-virtual {p1, v0, v3}, Lcom/android/settingslib/bluetooth/BCProfile;->getBSAManager(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz p1, :cond_8

    const-string/jumbo p1, "not able to instantiate scanAssistManager"

    .line 388
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string/jumbo v0, "registerAppCallback"

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    new-array v0, v2, [Ljava/lang/Object;

    .line 391
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 393
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "MiuiAuracastQcomFragment"

    const-string/jumbo v1, "onCreateView"

    .line 501
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    sget v0, Lcom/android/settings/R$layout;->bluetooth_share_broadcast_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mRootView:Landroid/view/View;

    .line 504
    sget v1, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 505
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 506
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 507
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 509
    sget p2, Lcom/android/settings/R$string;->bluetooth_share_broadcast:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->initPreferencesFromPreferenceScreen()V

    .line 512
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->loadConfigedSourceDevice()V

    .line 513
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 6

    .line 562
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string/jumbo v0, "onDestroy"

    const-string v1, "MiuiAuracastQcomFragment"

    .line 563
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :try_start_0
    sget-object v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->cachedFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    sget-object v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->cachedFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v0

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDestroy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cachedHash "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 569
    sget-object v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->cachedFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 570
    sput-object v0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->cachedFragment:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 574
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAuracastSourceController:Lcom/android/settings/bluetooth/AuracastSourceController;

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/AuracastSourceController;->unRegisterObserver()V

    goto :goto_1

    :cond_1
    const-string v0, "mAuracastSourceController != null"

    .line 580
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo v1, "unregisterAppCallback"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 583
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    .line 584
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAssistantReceiver:Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$AssistantShowReceiver;

    if-eqz v0, :cond_3

    .line 586
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 588
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    .line 589
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 591
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 592
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->groupIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 593
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->addingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 596
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 316
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    const-string v0, "MiuiAuracastQcomFragment"

    const-string/jumbo v1, "onDetach"

    .line 317
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1784
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 1785
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    .line 1787
    sget p1, Lcom/android/settings/R$string;->bluetooth_share_broadcast:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 616
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "onPause"

    const-string v1, "MiuiAuracastQcomFragment"

    .line 617
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "set scan mode connectable"

    .line 620
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x15

    .line 621
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 623
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 624
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 6

    .line 1588
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->disableScanning()V

    .line 1589
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBapBroadcastProfile:Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getBroadcastStatus(Ljava/lang/Object;)I

    move-result p1

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceTreeClick enter screen key is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsSelectBusy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->isHandlePassError:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->addingDeviceMap:Ljava/util/HashMap;

    .line 1591
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mWaitRemove:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiAuracastQcomFragment"

    .line 1590
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/16 v2, 0xa

    if-ne p1, v0, :cond_0

    move p1, v2

    .line 1594
    :cond_0
    instance-of v0, p2, Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_1

    .line 1596
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    sget p1, Lcom/android/settings/R$string;->please_stop_broadcast_audio:I

    invoke-static {p0, p1, v4}, Lcom/android/settings/bluetooth/ToastUtil;->show(Landroid/content/Context;II)V

    return v3

    .line 1599
    :cond_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 1600
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    sget p1, Lcom/android/settings/R$string;->please_stop_listen_broadcast_audio:I

    invoke-static {p0, p1, v4}, Lcom/android/settings/bluetooth/ToastUtil;->show(Landroid/content/Context;II)V

    return v3

    .line 1606
    :cond_2
    iget-boolean v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsSelectBusy:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->addingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-gtz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mWaitRemove:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->isHandlePassError:Z

    if-nez v5, :cond_4

    if-eqz v0, :cond_4

    if-ne p1, v2, :cond_4

    .line 1609
    check-cast p2, Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    .line 1610
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 1611
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSelectDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1612
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPreferenceTreeClick mSelectDevice= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSelectDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDeviceScanResultMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/le/ScanResult;

    .line 1614
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->getBroadcastIdFromScanResult(Landroid/bluetooth/le/ScanResult;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->selectBCId:I

    .line 1615
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->getEncState(Landroid/bluetooth/le/ScanResult;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->selectEncPBPState:I

    .line 1616
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "ENC_PBP_STATE"

    iget v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->selectEncPBPState:I

    invoke-static {p2, v0, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1617
    invoke-direct {p0, p1, v3}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->informNextConnectedAuraSinkDevice(Landroid/bluetooth/le/ScanResult;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "calling selectAudioSource"

    .line 1618
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsSelectBusy:Z

    .line 1620
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x1770

    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return v4

    .line 1625
    :cond_4
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mIsSynchronizingBusy:Z

    if-nez p0, :cond_5

    instance-of p0, p2, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;

    if-eqz p0, :cond_5

    const-string/jumbo p0, "update source info sync state"

    .line 1626
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3
.end method

.method public onResume()V
    .locals 3

    .line 602
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string/jumbo v0, "onResume"

    const-string v1, "MiuiAuracastQcomFragment"

    .line 603
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "set scan mode connectable and discoverable"

    .line 606
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x17

    .line 607
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    .line 610
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 519
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStart, hash code ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiAuracastQcomFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "Bluetooth is not supported on this device"

    .line 522
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAuracastSourceController:Lcom/android/settings/bluetooth/AuracastSourceController;

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/AuracastSourceController;->onStart()V

    goto :goto_0

    :cond_1
    const-string v0, "mAuracastSourceController != null"

    .line 528
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 531
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHintDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 534
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 536
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mFoundBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 537
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDeviceScanResultMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 538
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 539
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 544
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStop, hashcode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiAuracastQcomFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPasswordDialog cancel "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 555
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 557
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->disableScanning()V

    return-void
.end method

.method resetAddingPreference()V
    .locals 2

    .line 1217
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mFoundBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    if-eqz v1, :cond_0

    .line 1218
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1219
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1220
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    :cond_0
    return-void
.end method

.method resetAfterError()V
    .locals 2

    const-string v0, "MiuiAuracastQcomFragment"

    const-string/jumbo v1, "resetAfterError"

    .line 1909
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1911
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1913
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    if-eqz v0, :cond_1

    .line 1914
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mFoundBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 1915
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiAuracastSourceFoundedDevicePreference;

    :cond_1
    return-void
.end method

.method resetAfterSelectError()V
    .locals 0

    .line 1923
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->resetAfterError()V

    return-void
.end method

.method setAllBroadcastCode(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 12

    .line 1813
    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceDevice(Ljava/lang/Object;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1814
    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getBroadcasterId(Ljava/lang/Object;)I

    move-result p1

    .line 1815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllBroadcastCode is  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MiuiAuracastQcomFragment"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    .line 1818
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 1819
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->assistMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    .line 1820
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_2

    goto :goto_0

    .line 1822
    :cond_2
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v4, v5}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getGroupId(Landroid/bluetooth/BluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)I

    move-result v11

    .line 1823
    invoke-virtual {v9}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->getAllBroadcastSourceInformation()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 1824
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAllBroadcastCode item is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-static {v5}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getBroadcasterId(Ljava/lang/Object;)I

    move-result v6

    if-ne p1, v6, :cond_3

    .line 1826
    invoke-static {v5}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceDevice(Ljava/lang/Object;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1828
    invoke-static {v5}, Lcom/android/settings/bluetooth/AuracastReflectUtils;->getSourceId(Ljava/lang/Object;)B

    move-result v10

    .line 1829
    invoke-virtual {v5}, Landroid/bluetooth/BleBroadcastSourceInfo;->getMetadataSyncState()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    .line 1830
    invoke-virtual {v5}, Landroid/bluetooth/BleBroadcastSourceInfo;->getEncryptionStatus()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 1831
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBroadcastSourceIndicies:Ljava/util/List;

    invoke-virtual {p0, v11}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->setGroupOP(I)Z

    move-result v5

    invoke-virtual {v9, v10, v6, v4, v5}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->updateBroadcastSource(BILjava/util/List;Z)Z

    .line 1832
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$1;

    move-object v6, v5

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment$1;-><init>(Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;Ljava/lang/String;Landroid/bluetooth/BleBroadcastAudioScanAssistManager;BI)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1844
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1846
    :cond_4
    invoke-virtual {p0, v11}, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->setGroupOP(I)Z

    move-result v4

    invoke-virtual {v9, v10, p2, v4}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->setBroadcastCode(BLjava/lang/String;Z)Z

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method setGroupOP(I)Z
    .locals 1

    .line 1736
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setGroupOP "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiAuracastQcomFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "defaultSetOp"

    const/4 v0, 0x2

    .line 1737
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1741
    :cond_0
    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->isValidGroupId(I)Z

    move-result p0

    return p0
.end method

.method updateSourceCategory(Landroid/bluetooth/BleBroadcastSourceInfo;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcasterId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1029
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LocalAuracastSource"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1031
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MiuiAuracastQcomFragment"

    if-eqz v1, :cond_0

    const-string/jumbo p0, "updateSourceCategory same"

    .line 1032
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1035
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mBapBroadcastProfile:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/settings/bluetooth/AuracastSourceUtils;->getBroadcastStatus(Ljava/lang/Object;)I

    move-result v1

    .line 1036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    const/16 v4, 0xa

    if-ne v1, v3, :cond_1

    move v1, v4

    :cond_1
    if-eq v1, v4, :cond_2

    const-string p0, "Source is enable"

    .line 1039
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1042
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    .line 1043
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;

    .line 1044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " prf "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 1046
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->updateBleBroadcastSourceInfo(Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 1048
    :cond_3
    new-instance v0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/Object;)V

    .line 1050
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->removeClick:Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$PreferenceDetailClickListener;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->setOnPreferenceDetailClickListener(Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$PreferenceDetailClickListener;)V

    .line 1051
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mSourcePreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 1052
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1053
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSourceCategory size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastQcomFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    .line 1054
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1053
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
