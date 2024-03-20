.class public Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final SUPPORT_DATASYNC_CN_HEADSET_DEVICEID:[Ljava/lang/String;

.field public static final SUPPORT_DATASYNC_GLOBAL_HEADSET_DEVICEID:[Ljava/lang/String;

.field private static mSettingsDialogView:Landroid/view/View;

.field private static final operatorsAllProducts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final operatorsPartProducts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAACDialogCreated:Z

.field private mAudioShareJumpPage:Lcom/android/settings/bluetooth/BluetoothDevicePreference$AudioShareJumpPage;

.field protected mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mBluetoothA2dpLock:Ljava/lang/Object;

.field mBluetoothEnablePreference:Landroidx/preference/CheckBoxPreference;

.field protected mBluetoothEnabler:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

.field private mBluetoothLeAudio:Landroid/bluetooth/BluetoothLeAudio;

.field private mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mBtA2dpServiceListener:Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDialogCreatedForConnected:Z

.field protected mGattProfile:Lcom/android/settings/bluetooth/GattProfile;

.field protected mHandler:Landroid/os/Handler;

.field private mInitialScanStarted:Z

.field private mInitiateDiscoverable:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mLeAudioServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field protected mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

.field protected mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mTempBLEDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothLeAudio(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/bluetooth/BluetoothLeAudio;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/BluetoothSettings;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothLeAudio(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothLeAudio;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInitiateDiscoverable(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/BluetoothSettings;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->closeProfileProxy(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleServiceConnected(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->handleServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misDeviceIdSupportShow(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->isDeviceIdSupportShow(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtwoLeNotAllDisconnected(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->twoLeNotAllDisconnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateA2dpCodecIcon(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateA2dpCodecIcon()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAospLeAudioCodecIcon(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateAospLeAudioCodecIcon(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCodecIcon(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateCodecIcon()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCodecIcon(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateCodecIcon(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCodecIconForLc3(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateCodecIconForLc3()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLeAudioCodecIcon(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateLeAudioCodecIcon(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 155
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->operatorsPartProducts:Ljava/util/HashSet;

    .line 159
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->operatorsAllProducts:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 163
    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    const-string v0, "0201010001"

    .line 231
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->SUPPORT_DATASYNC_GLOBAL_HEADSET_DEVICEID:[Ljava/lang/String;

    const-string v0, "0201010000"

    .line 235
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->SUPPORT_DATASYNC_CN_HEADSET_DEVICEID:[Ljava/lang/String;

    .line 1096
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$10;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothSettings$10;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "no_config_bluetooth"

    .line 320
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAACDialogCreated:Z

    .line 214
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDialogCreatedForConnected:Z

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtA2dpServiceListener:Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;

    .line 237
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$3;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLeAudioServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 255
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$4;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    .line 274
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$5;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAudioShareJumpPage:Lcom/android/settings/bluetooth/BluetoothDevicePreference$AudioShareJumpPage;

    .line 287
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$6;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 996
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$9;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 1346
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$12;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/content/Intent;
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private closeProfileProxy()V
    .locals 5

    .line 1295
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "BluetoothSettings"

    const-string v3, "closeProfileProxy()"

    .line 1297
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1299
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    .line 1300
    invoke-virtual {v0, v4, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1301
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 1303
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz v2, :cond_1

    const/16 v3, 0x16

    .line 1305
    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1306
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1303
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1309
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtA2dpServiceListener:Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;

    .line 1311
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1312
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1313
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method private closeProfileProxy(I)V
    .locals 3

    .line 1319
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeProfileProxy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/16 v1, 0x16

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1331
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz p1, :cond_2

    .line 1332
    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1333
    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    goto :goto_0

    .line 1324
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz p1, :cond_2

    .line 1325
    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1326
    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 1327
    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtA2dpServiceListener:Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;

    .line 1339
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 1340
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1341
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    return-void
.end method

.method private createDialog(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/String;)V
    .locals 10

    .line 1170
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$11;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings$11;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 1206
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 1207
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1210
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LHDC V5"

    .line 1211
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "LHDC_V3"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "LHDC_V2"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "LHDC_V1"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v8, "LDAC"

    .line 1214
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1215
    sget p2, Lcom/android/settings/R$string;->bt_ldac_dialog_title:I

    invoke-virtual {v2, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1216
    invoke-virtual {p1, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1217
    invoke-virtual {p1, v3, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1218
    invoke-virtual {p1, v3, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1219
    invoke-virtual {p1, v3, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1220
    sget p1, Lcom/android/settings/R$string;->bt_ldac_dialog_summary:I

    invoke-virtual {v2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    const-string v9, "AAC"

    .line 1222
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1223
    sget p2, Lcom/android/settings/R$string;->bt_aac_dialog_title:I

    invoke-virtual {v2, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1224
    invoke-virtual {p1, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1225
    invoke-virtual {p1, v3, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1226
    invoke-virtual {p1, v3, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1227
    invoke-virtual {p1, v3, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1228
    :cond_2
    invoke-virtual {p1, v3, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1229
    :cond_3
    sget p1, Lcom/android/settings/R$string;->bt_aac_dialog_summary:I

    invoke-virtual {v2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 1212
    :cond_4
    :goto_0
    sget p1, Lcom/android/settings/R$string;->bt_lhdc_dialog_title:I

    invoke-virtual {v2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1213
    sget p1, Lcom/android/settings/R$string;->bt_lhdc_dialog_summary:I

    invoke-virtual {v2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    :cond_5
    :goto_1
    const/4 p1, 0x1

    .line 1233
    invoke-virtual {v2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const p1, 0x104000a    # @android:string/ok

    .line 1234
    invoke-virtual {v2, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1235
    sget p1, Lcom/android/settings/R$string;->bt_dialog_settings:I

    invoke-virtual {v2, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1236
    sget p1, Lcom/android/settings/R$string;->bt_dialog_remember_choice:I

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v2, p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1237
    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 1238
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private getProfileProxy()V
    .locals 4

    .line 1280
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtA2dpServiceListener:Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;

    if-nez v0, :cond_0

    .line 1281
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtA2dpServiceListener:Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;

    .line 1282
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1283
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BluetoothSettings"

    const-string v2, "getProfileProxy()"

    .line 1284
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtA2dpServiceListener:Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1287
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeAudioSupported()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLeAudioServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_1
    return-void
.end method

.method private handleServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 3

    .line 1268
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1269
    :try_start_0
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 1270
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1272
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1273
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1275
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 1270
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private isAlwaysDiscoverable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.android.settings.SEARCH_RESULT_TRAMPOLINE"

    .line 798
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "com.android.settings"

    .line 799
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.android.systemui"

    .line 800
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p2, 0x1

    :cond_2
    :goto_0
    return p2
.end method

.method private isCodecTopAACDevice(Landroid/bluetooth/BluetoothCodecStatus;)Z
    .locals 6

    .line 1608
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothCodecConfig;

    .line 1609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A2DP Codec Selectable Capability: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BluetoothSettings"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v2

    const/16 v4, 0x13

    if-eq v2, v4, :cond_3

    const/16 v4, 0xd

    if-eq v2, v4, :cond_3

    const/16 v4, 0xc

    if-eq v2, v4, :cond_3

    const/16 v4, 0xe

    if-eq v2, v4, :cond_3

    const/4 v4, 0x7

    if-eq v2, v4, :cond_3

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    if-ne v2, v3, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    if-nez v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_3
    :goto_1
    return p1

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    move p1, v3

    :cond_5
    return p1
.end method

.method private isDeviceIdSupportShow(Ljava/lang/String;)Z
    .locals 4

    .line 1880
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BluetoothSettings"

    if-eqz v0, :cond_0

    const-string p0, "deviceid from database is null"

    .line 1881
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1885
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 1886
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->SUPPORT_DATASYNC_GLOBAL_HEADSET_DEVICEID:[Ljava/lang/String;

    goto :goto_0

    .line 1888
    :cond_1
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->SUPPORT_DATASYNC_CN_HEADSET_DEVICEID:[Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_3

    .line 1891
    array-length v3, v0

    if-lez v3, :cond_3

    .line 1892
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 1893
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "support deviceId is empty"

    .line 1898
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->isCloudSharedDeviceId(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private twoLeNotAllDisconnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8

    const-string v0, "00:00:00:00:00:00"

    if-eqz p1, :cond_0

    .line 1827
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 1829
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1830
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "three_mac_for_ble_f"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1833
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1834
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1835
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v3, 0x24

    sub-int/2addr v5, v2

    const/16 v6, 0x12

    if-lt v4, v5, :cond_1

    add-int/2addr v3, v6

    .line 1836
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_1

    :cond_1
    if-lt v3, v6, :cond_2

    add-int/lit8 v4, v3, -0x12

    sub-int/2addr v3, v2

    .line 1838
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 1841
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "value is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " leMac is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " otherLeMac1 is "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " otherLeMac2 is "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothSettings"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz p1, :cond_7

    .line 1845
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1846
    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 1850
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    .line 1852
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    .line 1854
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    .line 1855
    invoke-virtual {v5, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    .line 1856
    invoke-virtual {v5, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    if-nez v6, :cond_3

    const-string v6, "mCachedDevice1 is null and new one "

    .line 1859
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    new-instance v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v6, p0, v3, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    :cond_3
    if-nez v5, :cond_4

    const-string v0, "mCachedDevice2 is null and new one "

    .line 1864
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    new-instance v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v5, p0, v3, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 1869
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mCachedDevice1  isLeAudioConnected "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mCachedDevice2  isLeAudioConnected "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1869
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v4

    :cond_6
    :goto_2
    return v2

    :cond_7
    return v4
.end method

.method private updateA2dpCodecIcon()V
    .locals 13

    .line 1498
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1499
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_15

    .line 1500
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 1504
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 1507
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1508
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1509
    instance-of v5, v5, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v5, :cond_1

    .line 1510
    monitor-exit v0

    return-void

    .line 1514
    :cond_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1515
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 1517
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v6, v4}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    move-object v8, v7

    goto :goto_1

    .line 1518
    :cond_2
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v8

    :goto_1
    if-eqz v8, :cond_3

    .line 1520
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v3

    :cond_3
    const/4 v9, 0x1

    if-eqz v5, :cond_d

    .line 1523
    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5, v10}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->updateCodecIcon(Landroid/bluetooth/BluetoothA2dp;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-boolean v10, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDialogCreatedForConnected:Z

    if-nez v10, :cond_d

    const/16 v4, 0x13

    if-ne v3, v4, :cond_5

    const-string/jumbo v4, "support_lhdc"

    .line 1526
    invoke-static {v4, v9}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "support_lhdc_offload"

    .line 1527
    invoke-static {v4, v9}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1528
    :cond_4
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    const-string v5, "LHDC V5"

    invoke-direct {p0, v4, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->createDialog(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 v4, 0xd

    if-ne v3, v4, :cond_7

    const-string/jumbo v4, "support_lhdc"

    .line 1530
    invoke-static {v4, v9}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "support_lhdc_offload"

    .line 1531
    invoke-static {v4, v9}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1532
    :cond_6
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    const-string v5, "LHDC_V3"

    invoke-direct {p0, v4, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->createDialog(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/16 v4, 0xc

    if-ne v3, v4, :cond_9

    const-string/jumbo v4, "support_lhdc"

    .line 1534
    invoke-static {v4, v9}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "support_lhdc_offload"

    .line 1535
    invoke-static {v4, v9}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1536
    :cond_8
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    const-string v5, "LHDC_V2"

    invoke-direct {p0, v4, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->createDialog(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const/16 v4, 0xe

    if-ne v3, v4, :cond_b

    const-string/jumbo v4, "support_lhdc"

    .line 1538
    invoke-static {v4, v9}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "support_lhdc_offload"

    .line 1539
    invoke-static {v4, v9}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1540
    :cond_a
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    const-string v5, "LHDC_V1"

    invoke-direct {p0, v4, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->createDialog(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    .line 1542
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    const-string v5, "LDAC"

    invoke-direct {p0, v4, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->createDialog(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/String;)V

    .line 1545
    :cond_c
    :goto_2
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDialogCreatedForConnected:Z

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v10, "vendor"

    .line 1550
    invoke-static {v10}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "qcom"

    .line 1551
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_0

    :cond_e
    if-nez v5, :cond_f

    goto :goto_3

    .line 1552
    :cond_f
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    :goto_3
    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    const/4 v5, 0x2

    .line 1555
    invoke-virtual {v7, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1556
    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->isCodecTopAACDevice(Landroid/bluetooth/BluetoothCodecStatus;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "AAC"

    .line 1558
    invoke-virtual {v7, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v5

    const-string v6, "BluetoothSettings"

    .line 1559
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AAC]: device="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " isSupportedCodec="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AAC"

    invoke-virtual {v7, v11, v12}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " getSpecificCodecStatus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mAACDialogCreated="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAACDialogCreated:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1559
    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    .line 1564
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v10, "miui_store_audio_share_device_address"

    invoke-static {v6, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "support_audio_share"

    .line 1565
    invoke-static {v10, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    goto/16 :goto_0

    :cond_10
    if-nez v3, :cond_12

    .line 1569
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AAC"

    invoke-virtual {v7, v5, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1570
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AAC"

    invoke-virtual {v7, v4, v5, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v4, "persist.vendor.bt.a2dp.aac.whitelist"

    const-string/jumbo v5, "null"

    .line 1571
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAACDialogCreated:Z

    if-nez v4, :cond_11

    .line 1573
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAACDialogCreated:Z

    const-string v4, "AAC"

    .line 1574
    invoke-direct {p0, v7, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->createDialog(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Ljava/lang/String;)V

    .line 1577
    :cond_11
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific3()J

    move-result-wide v4

    const-wide/16 v8, 0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    const-string v4, "AAC"

    .line 1578
    invoke-virtual {v7, v4, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1581
    :cond_12
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    const-string v8, "AAC"

    invoke-virtual {v7, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 1582
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AAC"

    invoke-virtual {v7, v4, v6, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_13
    if-eqz v5, :cond_0

    const-string v4, "AAC"

    .line 1585
    invoke-virtual {v7, v4, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1590
    :cond_14
    monitor-exit v0

    return-void

    .line 1502
    :cond_15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 1590
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private updateAospLeAudioCodecIcon(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1433
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 1437
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateMainDeviceCodecIcon(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1440
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1442
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 1445
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->updateCodecIcon(Landroid/bluetooth/BluetoothLeAudio;)V

    goto :goto_2

    .line 1448
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateAospLeAudioCodecIcon getConnectedDevices:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudio;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudio;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1451
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1452
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v1, :cond_2

    .line 1454
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->updateCodecIcon(Landroid/bluetooth/BluetoothLeAudio;)V

    goto :goto_1

    .line 1456
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateMainDeviceCodecIcon(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private updateCodecIcon()V
    .locals 1

    .line 1594
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateA2dpCodecIcon()V

    const/4 v0, 0x0

    .line 1595
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateAospLeAudioCodecIcon(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private updateCodecIcon(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1599
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1600
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 1602
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->updateCodecIcon(Landroid/bluetooth/BluetoothA2dp;)Z

    :cond_0
    return-void
.end method

.method private updateCodecIconForLc3()V
    .locals 12

    :try_start_0
    const-string v0, "BluetoothSettings"

    const-string v1, "enter updateCodecIconForLc3 "

    .line 1678
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1682
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 1683
    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 1684
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1686
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioConnectedDevices()Ljava/util/List;

    move-result-object v4

    :cond_0
    :goto_0
    if-eqz v4, :cond_9

    .line 1689
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1690
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_0

    .line 1692
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    .line 1693
    invoke-virtual {v6, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1695
    new-instance v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v7, v0, v3, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 1699
    :cond_1
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->findBrAddress()Ljava/lang/String;

    move-result-object v5

    .line 1701
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v6

    .line 1702
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1703
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 1704
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMemberDevice()Ljava/util/Set;

    move-result-object v9

    .line 1705
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    .line 1708
    :cond_3
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v10, :cond_4

    .line 1709
    invoke-virtual {v10, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1710
    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1711
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v10, :cond_4

    .line 1713
    invoke-virtual {v10}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->updateCodecIconForLeAudio()V

    return-void

    :cond_5
    if-nez v5, :cond_6

    goto :goto_0

    .line 1722
    :cond_6
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1723
    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v6, :cond_7

    const-string p0, "BluetoothSettings"

    const-string/jumbo v0, "preference is null "

    .line 1725
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1728
    :cond_7
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string p0, "BluetoothSettings"

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCodecIconForLeAudio for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->updateCodecIconForLeAudio()V

    return-void

    :cond_8
    const-string v7, "BluetoothSettings"

    .line 1733
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateCodecIconForNOLeAudio for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->updateCodecIconForNoLeAudio()V

    goto/16 :goto_0

    :cond_9
    return-void

    .line 1744
    :cond_a
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "three_mac_for_ble_f"

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "BluetoothSettings"

    .line 1745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "value is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_13

    .line 1747
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x36

    if-ge v2, v3, :cond_13

    add-int/lit8 v3, v2, 0x11

    .line 1748
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "BluetoothSettings"

    .line 1749
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "brMac is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    .line 1751
    :try_start_1
    invoke-static {v5}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1753
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v3, "BluetoothSettings"

    const-string/jumbo v5, "updateCodecIconForLc3 is active so return"

    .line 1754
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    monitor-exit v4

    goto/16 :goto_4

    .line 1757
    :cond_b
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1759
    :try_start_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 1761
    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_c

    goto/16 :goto_4

    .line 1767
    :cond_c
    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v5

    .line 1769
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    .line 1771
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, "BluetoothSettings"

    .line 1772
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startIndex is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v7, 0x12

    add-int/lit8 v9, v7, 0x23

    .line 1773
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v7, 0x24

    add-int/lit8 v7, v7, 0x35

    .line 1774
    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_12

    if-nez v7, :cond_d

    goto/16 :goto_4

    :cond_d
    const-string v9, "BluetoothSettings"

    .line 1776
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "leStr1 is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " leStr2 is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    invoke-virtual {v4, v8}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    .line 1778
    invoke-virtual {v4, v7}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 1780
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    .line 1781
    invoke-virtual {v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    .line 1782
    invoke-virtual {v6, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    if-nez v7, :cond_e

    const-string v7, "BluetoothSettings"

    const-string v9, "mCachedDevice1 is null and new one "

    .line 1785
    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    new-instance v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v7, v0, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    :cond_e
    if-nez v6, :cond_f

    const-string v6, "BluetoothSettings"

    const-string v8, "mCachedDevice2 is null and new one "

    .line 1790
    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    new-instance v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v6, v0, v5, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    :cond_f
    const-string v4, "BluetoothSettings"

    .line 1794
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCachedDevice1  isLeAudioConnected "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mCachedDevice2  isLeAudioConnected "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1794
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1800
    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v3, :cond_12

    const-string v4, "BluetoothSettings"

    const-string v5, "enter updateCodecIconForLc3 "

    .line 1802
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1804
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedLeAudioDevice()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_3

    .line 1807
    :cond_10
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->updateCodecIconForNoLeAudio()V

    goto :goto_4

    .line 1805
    :cond_11
    :goto_3
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->updateCodecIconForLeAudio()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_12
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    .line 1757
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "BluetoothSettings"

    const-string/jumbo v1, "updateCodecIconForLc3 Exception error is "

    .line 1814
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    return-void
.end method

.method private updateLeAudioCodecIcon(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    const-string v0, "enter updateLeAudioCodecIcon "

    const-string v1, "BluetoothSettings"

    .line 1631
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "00:00:00:00:00:00"

    if-eqz p1, :cond_0

    .line 1636
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 1638
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 1639
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "three_mac_for_ble_f"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1640
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "value is  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " leMac is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    .line 1641
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1642
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x36

    rem-int/2addr v5, v6

    if-nez v5, :cond_2

    .line 1643
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_2

    .line 1644
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 1645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startIndex is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    div-int/lit8 v2, p1, 0x12

    rem-int/lit8 v2, v2, 0x12

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, p1, -0x12

    sub-int/2addr p1, v3

    .line 1647
    invoke-virtual {v4, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brMac come from le1 and address is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, p1

    goto :goto_2

    :cond_1
    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    add-int/lit8 v0, p1, -0x24

    add-int/lit8 p1, p1, -0x12

    sub-int/2addr p1, v3

    .line 1650
    invoke-virtual {v4, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brMac come from le2 and address is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1653
    :cond_2
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1654
    invoke-static {v3}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 1655
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    .line 1656
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 1657
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1659
    new-instance v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v0, v3, v2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 1661
    :cond_3
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->findBrAddress()Ljava/lang/String;

    move-result-object v0

    .line 1662
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brMac is "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 1666
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1667
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz p0, :cond_5

    .line 1669
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->updateCodecIconForLeAudio()V

    :cond_5
    return-void
.end method

.method private updateMainDeviceCodecIcon(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 1465
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 1466
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 1468
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 1469
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1470
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1471
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMemberDevice()Ljava/util/Set;

    move-result-object v2

    .line 1472
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1475
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v3, :cond_2

    .line 1476
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1477
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1478
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v3, :cond_2

    .line 1480
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v3, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->updateCodecIcon(Landroid/bluetooth/BluetoothLeAudio;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private updateOnSavedDevice()V
    .locals 2

    .line 811
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 813
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothSettings$7;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings$7;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public addDeviceCategory(Landroidx/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 2

    .line 635
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 638
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "available_devices_category"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 642
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 643
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroidx/preference/PreferenceGroup;)V

    if-eqz p4, :cond_1

    .line 645
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    :cond_1
    const/4 p2, 0x1

    .line 647
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method public addNewOnSavedDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public checkStartMiuiHeadset(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getConfigByDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceListKey()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 1092
    sget p0, Lcom/android/settings/R$string;->help_url_bluetooth:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "BluetoothSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x18

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1135
    const-class p0, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 1145
    sget p0, Lcom/android/settings/R$xml;->bluetooth_settings:I

    return p0
.end method

.method protected initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3

    .line 1062
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 1068
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 1069
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1070
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/GattProfile;->isBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1072
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 1074
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAudioShareJumpPage:Lcom/android/settings/bluetooth/BluetoothDevicePreference$AudioShareJumpPage;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setAudioShareJumpPage(Lcom/android/settings/bluetooth/BluetoothDevicePreference$AudioShareJumpPage;)V

    .line 1076
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 1077
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1078
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public initPreferencesFromPreferenceScreen()V
    .locals 4

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 449
    new-instance v1, Landroidx/preference/PreferenceCategory;

    invoke-direct {v1, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 451
    sget v2, Lcom/android/settings/R$layout;->preference_bt_category_paired:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 452
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    const-string/jumbo v2, "paired_devices"

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 454
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 458
    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-direct {v1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x0

    .line 459
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    sget v1, Lcom/android/settings/R$string;->bluetooth_preference_found_devices:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 462
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 463
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 471
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public isCloudSharedDeviceId(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 349
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "scan_started"

    .line 355
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-eqz p1, :cond_1

    const-string v1, "initiate_discoverable"

    .line 357
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2

    .line 942
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    const/16 v0, 0xc

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 952
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 953
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 954
    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDialogCreatedForConnected:Z

    .line 955
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAACDialogCreated:Z

    .line 957
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getProfileProxy()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 955
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    const/16 v0, 0xa

    if-ne v0, p1, :cond_1

    .line 959
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 960
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->closeProfileProxy()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 373
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 374
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 326
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 327
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .line 538
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 543
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 544
    sget v4, Lcom/android/settings/R$string;->bluetooth_searching_for_devices:I

    goto :goto_1

    .line 545
    :cond_3
    sget v4, Lcom/android/settings/R$string;->bluetooth_search_for_devices:I

    .line 546
    :goto_1
    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 547
    :goto_2
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    .line 548
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v1, 0x2

    .line 549
    sget v2, Lcom/android/settings/R$string;->bluetooth_rename_device:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 550
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    .line 551
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x3

    .line 552
    sget v1, Lcom/android/settings/R$string;->bluetooth_show_received_files:I

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 553
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 554
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 427
    invoke-super {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onDestroyView()V

    .line 433
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 435
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtA2dpServiceListener:Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;

    if-eqz v0, :cond_1

    .line 439
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtA2dpServiceListener:Lcom/android/settings/bluetooth/BluetoothSettings$LocalBtA2dpServiceListener;

    :cond_1
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    const/4 p1, 0x0

    .line 982
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAACDialogCreated:Z

    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 629
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 559
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 591
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 584
    :cond_0
    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v3, 0xa2

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 586
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.bluetooth"

    .line 587
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return v2

    .line 575
    :cond_1
    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/16 v0, 0xa1

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return v2

    .line 561
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_4

    .line 562
    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v3, 0xa0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 565
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 566
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0

    .line 568
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    :cond_4
    :goto_0
    return v2
.end method

.method public onResume()V
    .locals 1

    .line 1086
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 1087
    sget v0, Lcom/android/settings/R$string;->bluetooth_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->updateActionBarTitleView(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 341
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "scan_started"

    .line 342
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "initiate_discoverable"

    .line 343
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    .line 967
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 969
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 972
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->resume()V

    .line 483
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroidx/preference/PreferenceGroup;)V

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->bluetooth_empty_list_user_restricted:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    return-void

    .line 496
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 504
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    .line 505
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 506
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 507
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 508
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    .line 509
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    .line 510
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "MultiA2dp.ACTION.RESET_STATE_CHANGED"

    .line 511
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 513
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getProfileProxy()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 519
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    .line 520
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;->pause()V

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 528
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 531
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 532
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->closeProfileProxy()V

    return-void
.end method

.method setDeviceListGroup(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .line 1139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDeviceListGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method setTextSpan(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .line 988
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 989
    check-cast p1, Landroid/text/Spannable;

    .line 990
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    .line 991
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v1, 0x1030044    # @android:style/TextAppearance.Medium

    invoke-direct {v0, p0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 992
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/16 p2, 0x21

    const/4 v1, 0x0

    .line 990
    invoke-interface {p1, v0, v1, p0, p2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method startScanning()V
    .locals 3

    .line 595
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 599
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 600
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 601
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 608
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 610
    sget-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 611
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroidx/preference/PreferenceGroup;)V

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 616
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 617
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    goto :goto_0

    :cond_3
    const-string v0, "BluetoothSettings"

    const-string v2, "mAvailableDevicesCategory is null."

    .line 619
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 623
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    return-void
.end method

.method protected updateContent(I)V
    .locals 6

    const-string v0, "BluetoothSettings"

    .line 654
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    .line 659
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 660
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mTempDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 662
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_6

    .line 674
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez p1, :cond_1

    .line 675
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 676
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_1

    .line 677
    check-cast p1, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->removeAll()V

    .line 683
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    sget v3, Lcom/android/settings/R$string;->bluetooth_preference_paired_devices:I

    sget-object v4, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroidx/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 689
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateOnSavedDevice()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOnSavedDevice throw Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    .line 694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "numberOfPairedDevices = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v3

    const-string/jumbo v4, "paired_devices"

    if-nez v3, :cond_3

    if-gtz p1, :cond_2

    goto :goto_1

    .line 710
    :cond_2
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_5

    .line 711
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 698
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_4

    .line 699
    check-cast p1, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {p1, v5}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->setShowDivider(Z)V

    .line 702
    :cond_4
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 703
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "numberOfPairedAgain = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_5

    .line 706
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 716
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    sget v1, Lcom/android/settings/R$string;->bluetooth_preference_found_devices:I

    sget-object v3, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroidx/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 720
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez p1, :cond_6

    .line 721
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 724
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 725
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    .line 726
    invoke-static {p1}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    .line 731
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 735
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz p1, :cond_a

    .line 738
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getInitialCallingPackage()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " throw Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 742
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    const-string v1, ""

    .line 743
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling package name is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v3, :cond_9

    .line 747
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 748
    invoke-direct {p0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->isAlwaysDiscoverable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string/jumbo p1, "set scan mode connectable and discoverable"

    .line 749
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_5

    :cond_8
    const-string/jumbo p1, "set scan mode connectable"

    .line 752
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_5

    :cond_9
    const-string/jumbo p1, "set scan mode null"

    .line 756
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :goto_5
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    :cond_a
    return-void

    .line 776
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    goto :goto_6

    .line 769
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    .line 780
    :goto_6
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroidx/preference/PreferenceGroup;)V

    .line 781
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 784
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 790
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result p1

    if-nez p1, :cond_b

    .line 793
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->invalidateOptionsMenu()V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
