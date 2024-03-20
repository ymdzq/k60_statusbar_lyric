.class public Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "MiuiBluetoothBroadcastAudioSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;
    }
.end annotation


# instance fields
.field private final btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAuracastSourceController:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

.field private mBluetoothOnModeChangedListener:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;

.field private mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

.field private mBroadcastService:Landroid/bluetooth/BluetoothLeBroadcast;

.field private final mBroadcastServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

.field mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mDeviceAddress:Ljava/lang/String;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mHandler:Landroid/os/Handler;

.field private mIsScanning:Z

.field private mLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

.field private mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field private mLocalBroadcastMetadata:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;

.field mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPreferenceControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefreshListener:Landroid/view/View$OnClickListener;

.field private mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

.field mSelectedPreference:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

.field private mSourceId:I


# direct methods
.method public static synthetic $r8$lambda$Cx5kqFhbOj_oc_IjHRQVGt_vSwk(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->lambda$addSource$1(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZeU_7VJ-2nfTtGvk2ZlP2cQAtRE(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->lambda$launchBroadcastCodeDialog$2(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nx7x_ooEVwXqvZHCzzWiqaaBf6A(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->lambda$onAttach$0(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuracastSourceController(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mAuracastSourceController:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBroadcastService(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Landroid/bluetooth/BluetoothLeBroadcast;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mBroadcastService:Landroid/bluetooth/BluetoothLeBroadcast;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScanning(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mIsScanning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLeBroadcastAssistant(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchBleAudioSourceCategory(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBroadcastService(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Landroid/bluetooth/BluetoothLeBroadcast;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mBroadcastService:Landroid/bluetooth/BluetoothLeBroadcast;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsScanning(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mIsScanning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableScanning(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->disableScanning()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableScanning(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->enableScanning()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleBassConnectionStateChange(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->handleBassConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSearchStarted(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->handleSearchStarted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSourceRemoved(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->handleSourceRemoved()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveSourcePreference(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->removeSourcePreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateListCategoryFromBroadcastMetadata(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->updateListCategoryFromBroadcastMetadata(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateListCategoryFromBroadcastReceiveState(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->updateListCategoryFromBroadcastReceiveState(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "no_config_bluetooth"

    .line 263
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mPreferenceControllers:Ljava/util/List;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mIsScanning:Z

    .line 124
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$1;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$2;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    .line 225
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$3;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mRefreshListener:Landroid/view/View$OnClickListener;

    .line 445
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$4;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mBroadcastServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 461
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$5;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method private addBroadcastCodeIntoPreference(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;Ljava/lang/String;)V
    .locals 1

    .line 899
    new-instance p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 900
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;-><init>(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 901
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p0

    .line 902
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p0

    const/4 p2, 0x0

    .line 903
    invoke-virtual {p1, p0, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void
.end method

.method private addConnectedSourcePreference()V
    .locals 3

    .line 854
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 855
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    .line 856
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v0

    .line 857
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receiveStateList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiBluetoothBroadcastAudioSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    .line 860
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->isAssociatedReceiver(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 861
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->updateListCategoryFromBroadcastReceiveState(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createBluetoothBroadcastSourcePreference()Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;
    .locals 4

    .line 775
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    .line 776
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V

    const-string p0, "MiuiBluetoothBroadcastAudioSettings"

    const-string v1, "createBluetoothBroadcastSourcePreference"

    .line 777
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private disableScanning()V
    .locals 2

    const/4 v0, 0x0

    .line 597
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mIsScanning:Z

    .line 598
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->updateRefreshUI(Z)V

    const-string v0, "disableScanning enter"

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    .line 599
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_0

    const-string v0, "disableScanning stop search ble audio broacaster !"

    .line 601
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->stopSearchingForSources()V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private enableScanning()V
    .locals 3

    const/4 v0, 0x1

    .line 589
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mIsScanning:Z

    .line 590
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->updateRefreshUI(Z)V

    const-string v0, "MiuiBluetoothBroadcastAudioSettings"

    const-string v1, "enableScanning enter"

    .line 591
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->scanBroadcastSource()V

    .line 593
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private getScanFilter()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 612
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private handleBassConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 840
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz p1, :cond_0

    .line 841
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getBassClientConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 842
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 843
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->disableScanning()V

    .line 844
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->removeAll()V

    .line 845
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    :cond_0
    return-void
.end method

.method private handleSearchStarted()V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    const-string p0, "MiuiBluetoothBroadcastAudioSettings"

    const-string v0, "handleSearchStarted"

    .line 821
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleSourceRemoved()V
    .locals 2

    const-string v0, "MiuiBluetoothBroadcastAudioSettings"

    const-string v1, "handleSearchStarted"

    .line 826
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSelectedPreference:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    if-eqz v0, :cond_1

    .line 828
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSelectedPreference:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSelectedPreference:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->clearReceiveState()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 834
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSelectedPreference:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    return-void
.end method

.method private isAssociatedReceiver(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z
    .locals 3

    const-string v0, "isAssociatedReceiver"

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    .line 756
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "EXTERNAL_SOURCE_ADDR"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "EXTERNAL_SOURCE_BROADCAST_ID"

    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 762
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "EXTERNAL_SOURCE_BROADCAST_ID does not exist"

    .line 763
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    .line 767
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result p1

    if-ne p0, p1, :cond_2

    const-string p0, "Same source has been added before"

    .line 768
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isBroadcastSourceSupport()Z
    .locals 1

    const-string p0, "bluetooth.profile.bap.broadcast.source.enabled"

    const/4 v0, 0x0

    .line 430
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isLocalSourceSynced(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z
    .locals 3

    .line 730
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz p0, :cond_1

    .line 731
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    move-result-object p0

    .line 732
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 734
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 735
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$addSource$1(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;)V
    .locals 2

    .line 789
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v0

    const/4 v1, 0x0

    .line 788
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    const/4 v0, 0x1

    .line 790
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOrder(I)V

    return-void
.end method

.method private synthetic lambda$launchBroadcastCodeDialog$2(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string/jumbo p3, "setPositiveButton: clicked"

    const-string p4, "MiuiBluetoothBroadcastAudioSettings"

    .line 916
    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p0, "BluetoothLeBroadcastMetadata is null, do nothing."

    .line 918
    invoke-static {p4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 921
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->addBroadcastCodeIntoPreference(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;Ljava/lang/String;)V

    .line 922
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->addSource(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;)V

    return-void
.end method

.method private static synthetic lambda$onAttach$0(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerReceivers()V
    .locals 2

    .line 494
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->isBroadcastSourceSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.bluetooth.ACTION_BROADCAST_AUDIO_STATUS_CHANGED"

    .line 496
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    .line 497
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 498
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.action.CONNECTION_STATE_CHANGED"

    .line 499
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private removeSourcePreference()V
    .locals 5

    const-string/jumbo v0, "removeSourcePreference"

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    .line 246
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 248
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 250
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSelectedPreference:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    if-eqz v3, :cond_0

    .line 252
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSelectedPreference:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "listening... do not remove"

    .line 254
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 257
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    invoke-virtual {v3, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private saveAddedSourceInfo(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 4

    const-string/jumbo v0, "saveAddedSourceInfo"

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    .line 806
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo p0, "sourceMetadata is null"

    .line 808
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 811
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 813
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    move-result-object p1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 814
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "EXTERNAL_SOURCE_ADDR"

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 815
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "EXTERNAL_SOURCE_BROADCAST_ID"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 816
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "EXTERNAL_SOURCE_BROADCAST_CODE"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private unregisterReceivers()V
    .locals 1

    .line 505
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->isBroadcastSourceSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->btBroadcastAudioReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private updateListCategoryFromBroadcastMetadata(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V
    .locals 2

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateListCategoryFromBroadcastMetadata isConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MiuiBluetoothBroadcastAudioSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string/jumbo p0, "source null"

    .line 635
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 638
    :cond_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    .line 639
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    .line 640
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->isTargetSourcePaSynced(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)Z

    move-result v0

    if-nez p2, :cond_1

    .line 642
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->createBluetoothBroadcastSourcePreference()Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    move-result-object p2

    .line 643
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 644
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    invoke-virtual {v1, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 646
    :cond_1
    invoke-virtual {p2, p1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    xor-int/lit8 p1, v0, 0x1

    .line 647
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setOrder(I)V

    if-eqz v0, :cond_2

    .line 650
    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSelectedPreference:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    .line 652
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mAuracastSourceController:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->isAnyDeviceSyncedPA()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->setPrefernceAvaiable(Z)V

    return-void
.end method

.method private updateListCategoryFromBroadcastReceiveState(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 6

    const-string/jumbo v0, "updateListCategoryFromBroadcastReceiveState"

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    .line 657
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "[updateListCategoryFromBroadcastReceiveState] state == null;"

    .line 659
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 662
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->isLocalSourceSynced(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "synced local source, return"

    .line 663
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 666
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getPaSyncState()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    .line 668
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    .line 669
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 668
    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    if-eqz v0, :cond_4

    if-nez v2, :cond_3

    .line 672
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->createBluetoothBroadcastSourcePreference()Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    move-result-object v2

    .line 673
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 674
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    invoke-virtual {v5, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 677
    :cond_3
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 678
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getSourceId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->setSourceId(I)V

    .line 679
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSelectedPreference:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 681
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getPaSyncState()I

    move-result v3

    if-eq v3, v4, :cond_5

    .line 683
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    invoke-virtual {v3, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 686
    invoke-virtual {v2, p1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->updateReceiveStateAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;Z)V

    .line 688
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mAuracastSourceController:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->isAnyDeviceSyncedPA()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;->setPrefernceAvaiable(Z)V

    .line 691
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBigEncryptionState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    const-string p1, "BIG_ENCRYPTION_STATE_BAD_CODE"

    .line 693
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 694
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSelectedPreference:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    .line 696
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "EXTERNAL_SOURCE_BROADCAST_CODE"

    .line 695
    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 697
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 698
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->password_check_fail:I

    invoke-static {p1, v1, v4}, Lcom/android/settings/bluetooth/ToastUtil;->show(Landroid/content/Context;II)V

    .line 700
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, ""

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_8
    return-void
.end method


# virtual methods
.method public addSource(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;)V
    .locals 5

    .line 782
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_1

    .line 786
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 793
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 795
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->getConnectedGroupLeadDeviceMap()Ljava/util/Map;

    move-result-object v0

    .line 796
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 797
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 798
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, p1, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->addSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    goto :goto_0

    .line 801
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->saveAddedSourceInfo(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "MiuiBluetoothBroadcastAudioSettings"

    const-string p1, "addSource: LeBroadcastAssistant or CachedDevice is null!"

    .line 783
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 418
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->isBroadcastSourceSupport()Z

    move-result v0

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    if-nez v0, :cond_0

    const-string p1, "createPreferenceControllers mBroadcastEnabled is false"

    .line 419
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mPreferenceControllers:Ljava/util/List;

    return-object p0

    :cond_0
    const-string v0, "createPreferenceControllers for Broadcast"

    .line 422
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 424
    new-instance v0, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mAuracastSourceController:Lcom/android/settings/development/BluetoothBCAudioOnlySourcePreferenceController;

    .line 425
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mPreferenceControllers:Ljava/util/List;

    return-object p0
.end method

.method public getBassClientConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 981
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_0

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBassClientConnectedDevices: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getBassClientConnectedDevices()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 985
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 517
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 518
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public getConnectedGroupLeadDeviceMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;>;"
        }
    .end annotation

    const-string v0, "getConnectedGroupLeadDeviceMap"

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    .line 954
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 956
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->getBassClientConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bassDevicesList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 962
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 964
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 965
    invoke-virtual {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 967
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 968
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 969
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 976
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectedGroupLeadDeviceMap: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getLeAudioActiveDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 881
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 883
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    .line 884
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioProfile()Lcom/android/settingslib/bluetooth/LeAudioProfile;

    move-result-object p0

    .line 885
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LeAudioProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 887
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 889
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activeDevices = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getLeBroadcast()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;
    .locals 2

    .line 531
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v0, 0x0

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    if-nez p0, :cond_0

    const-string p0, "getLeBroadcast: LocalBluetoothManager is null!"

    .line 532
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "getLeBroadcast: LocalBluetoothProfileManager is null!"

    .line 538
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioBroadcastProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    move-result-object p0

    return-object p0
.end method

.method public getLeBroadcastAssistant()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;
    .locals 2

    .line 550
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v0, 0x0

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    if-nez p0, :cond_0

    const-string p0, "getLeBroadcastAssistant: LocalBluetoothManager is null!"

    .line 551
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "getLeBroadcastAssistant: LocalBluetoothProfileManager is null!"

    .line 557
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 561
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioBroadcastAssistantProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    move-result-object p0

    return-object p0
.end method

.method getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 523
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "MiuiBluetoothBroadcastAudioSettings"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 413
    sget p0, Lcom/android/settings/R$xml;->bluetooth_broadcast_audio_settings:I

    return p0
.end method

.method public getSourceId()I
    .locals 0

    .line 869
    iget p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSourceId:I

    return p0
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 4

    const-string v0, "broadcast_audio_pin_code"

    .line 565
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "ba_auto_disable"

    .line 566
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "MiuiBluetoothBroadcastAudioSettings"

    if-eqz v0, :cond_0

    const-string/jumbo v3, "remove pinCodePreference"

    .line 568
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    if-eqz v1, :cond_1

    .line 572
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const-string/jumbo v0, "remove autoDisablePreference"

    .line 573
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_1
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    const/4 v1, 0x0

    .line 577
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 578
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    sget v1, Lcom/android/settings/R$string;->bluetooth_auracast_source_available_connect:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 579
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    const-string v1, "broadcast_source_list"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mRefreshListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBluetoothAudioDeviceFilterCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public isAnyDeviceSyncedPA()Z
    .locals 4

    .line 989
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_3

    .line 990
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getBassClientConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 991
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 992
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v1

    .line 993
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    .line 994
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->isLocalSourceSynced(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "MiuiBluetoothBroadcastAudioSettings"

    const-string/jumbo v3, "synced local source, continue"

    .line 995
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 998
    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getPaSyncState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public isSourceOpened()Z
    .locals 1

    .line 745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 746
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz p0, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    move-result-object v0

    .line 749
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method isTargetSourcePaSynced(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)Z
    .locals 8

    if-eqz p1, :cond_2

    .line 706
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 707
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result p1

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTargetSourcePaSynced, BroadcastMetadata : sourceDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", broadcastId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MiuiBluetoothBroadcastAudioSettings"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v1, :cond_2

    .line 710
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getBassClientConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 711
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 712
    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-virtual {v5, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v4

    .line 713
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    .line 714
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isTargetSourcePaSynced, BroadcastReceiveState : srcDevice = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", syncStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getPaSyncState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 714
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 717
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 718
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getPaSyncState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const-string p0, "Same source is synced"

    .line 719
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public launchBroadcastCodeDialog(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;)V
    .locals 7

    .line 907
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->dialog_edittext_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 909
    sget v1, Lcom/android/settings/R$id;->state_dialog_input_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 910
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 911
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->bluetooth_auracast_assist_add_source:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->getmTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 912
    invoke-virtual {v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000    # @android:string/cancel

    .line 913
    invoke-virtual {v0, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->button_text_ok:I

    new-instance v3, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;Landroid/widget/EditText;)V

    .line 914
    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 924
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 925
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$6;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$6;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 944
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d9

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    .line 945
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 946
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 947
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 948
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x10

    if-le p0, v0, :cond_1

    :cond_0
    const/4 p0, -0x1

    .line 949
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 617
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v0, "onAttach"

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    .line 268
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->getLeBroadcast()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->getLeBroadcastAssistant()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v0, :cond_0

    const-string v0, "mLeBroadcastAssistant null"

    .line 273
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->getLeAudioActiveDevices()Ljava/util/List;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v2, :cond_2

    const-string v0, "No active LE Audio device"

    .line 278
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getBassClientConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 281
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_3

    .line 283
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mDeviceAddress:Ljava/lang/String;

    .line 284
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v2, :cond_3

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCachedDevice = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mExecutor:Ljava/util/concurrent/Executor;

    .line 292
    new-instance v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLocalBroadcastMetadata:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;

    .line 293
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 298
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    const-string p0, "MiuiBluetoothBroadcastAudioSettings"

    const-string p1, "Bluetooth is not supported on this device"

    .line 302
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 306
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->isBroadcastSourceSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->registerReceivers()V

    .line 309
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mBroadcastServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v2, 0x1a

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 312
    new-instance p1, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mBluetoothOnModeChangedListener:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;

    .line 313
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 314
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mBluetoothOnModeChangedListener:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;

    .line 313
    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->initPreferencesFromPreferenceScreen()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "MiuiBluetoothBroadcastAudioSettings"

    const-string/jumbo v1, "onDestroy"

    .line 397
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    .line 399
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->unregisterReceivers()V

    .line 400
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mBluetoothOnModeChangedListener:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V

    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mBluetoothOnModeChangedListener:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$BluetoothOnModeChangedListener;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    const-string/jumbo v0, "onPause"

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    .line 362
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 364
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "set scan mode connectable"

    .line 366
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x15

    .line 367
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 370
    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_4

    const-string v0, "mLeBroadcastAssistant not null"

    .line 376
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->isSearchInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Search is in progress, stop searching."

    .line 378
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->disableScanning()V

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 4

    const-string/jumbo v0, "onResume"

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    .line 331
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    .line 333
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "set scan mode connectable and discoverable"

    .line 335
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x17

    .line 336
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 341
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 343
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz v3, :cond_2

    .line 344
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    move-result-object v0

    .line 346
    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v3, :cond_3

    const-string v3, "mLeBroadcastAssistant null, try to get."

    .line 347
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->getLeBroadcastAssistant()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    .line 350
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v1, :cond_4

    .line 351
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    .line 352
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getBassClientConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 354
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 355
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 357
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->addConnectedSourcePreference()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 321
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    const-string/jumbo v0, "onStart"

    const-string v1, "MiuiBluetoothBroadcastAudioSettings"

    .line 322
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p0, :cond_0

    const-string p0, "Bluetooth is not supported on this device"

    .line 324
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "MiuiBluetoothBroadcastAudioSettings"

    const-string/jumbo v1, "onStop"

    .line 387
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 389
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public scanBroadcastSource()V
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v0, :cond_0

    const-string p0, "MiuiBluetoothBroadcastAudioSettings"

    const-string/jumbo v0, "scanBroadcastSource: LeBroadcastAssistant is null!"

    .line 625
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->getScanFilter()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->startSearchingForSources(Ljava/util/List;)V

    return-void
.end method

.method public setSourceId(I)V
    .locals 0

    .line 873
    iput p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->mSourceId:I

    return-void
.end method
