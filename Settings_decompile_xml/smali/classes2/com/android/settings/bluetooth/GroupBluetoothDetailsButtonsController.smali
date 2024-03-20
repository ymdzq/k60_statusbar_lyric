.class public Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;
.super Lcom/android/settings/bluetooth/GroupBluetoothDetailsController;
.source "GroupBluetoothDetailsButtonsController.java"


# static fields
.field private static final DBG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private isRefreshClicked:Z

.field private mDevicesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscoveredSize:I

.field private mGroupId:I

.field private mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

.field private mGroupSize:I

.field private mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

.field private mIsUpdate:Z


# direct methods
.method public static synthetic $r8$lambda$DEsbSoCq6aW_aoqh0afEzrOIQ58(Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->lambda$init$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NZJj2b-yHlgP_S6--FTBgQ50J1E(Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->lambda$init$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O0y9mpBjKGvoIObwzygMUrvQEfI(Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->lambda$init$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T8eqgt7Cjdk4u1dBvjkdPGOGUNY(Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WAhlRfbCaxMPuwOqosfW4oimkUM(Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->lambda$init$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZIpVCZ-xCmHPvg7FuX16Rcd4IHw(Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->lambda$init$5(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget-boolean v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->DBG_GROUP:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    const-string v0, "GroupBluetoothDetailsButtonsController"

    .line 58
    sput-object v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;ILcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;ILcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const/4 p2, 0x0

    .line 62
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mIsUpdate:Z

    const/4 p4, -0x1

    .line 65
    iput p4, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupSize:I

    .line 66
    iput p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mDiscoveredSize:I

    .line 67
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->isRefreshClicked:Z

    .line 68
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mDevicesList:Ljava/util/ArrayList;

    .line 74
    iput p3, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    .line 75
    new-instance p2, Lcom/android/settings/bluetooth/GroupUtils;

    invoke-direct {p2, p1}, Lcom/android/settings/bluetooth/GroupUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    .line 76
    iget p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {p2, p1}, Lcom/android/settings/bluetooth/GroupUtils;->getGroupSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupSize:I

    return-void
.end method

.method private disableScanning()V
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->isRefreshClicked:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/GroupUtils;->stopGroupDiscovery(I)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->onForgetButtonPressed()V

    return-void
.end method

.method private synthetic lambda$init$1(Landroid/view/View;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->onConnectButtonPressed()V

    return-void
.end method

.method private synthetic lambda$init$2(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->onDisConnectButtonPressed()V

    return-void
.end method

.method private synthetic lambda$init$3(Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->onCacelRefreshButtonPressed()V

    return-void
.end method

.method private synthetic lambda$init$4(Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->onRefreshButtonPressed()V

    return-void
.end method

.method private synthetic lambda$init$5(Landroid/view/View;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->onAddSourceGroupButtonPressed()V

    return-void
.end method

.method private onAddSourceGroupButtonPressed()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/GroupUtils;->launchAddSourceGroup(I)V

    return-void
.end method

.method private onCacelRefreshButtonPressed()V
    .locals 3

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->isRefreshClicked:Z

    .line 291
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/GroupUtils;->stopGroupDiscovery(I)Z

    move-result p0

    .line 292
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCacelRefreshButtonPressed stopDiscovery "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onConnectButtonPressed()V
    .locals 3

    .line 266
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->disableScanning()V

    .line 267
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/GroupUtils;->connectGroup(I)Z

    move-result p0

    .line 268
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectButtonPressed connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onDisConnectButtonPressed()V
    .locals 3

    .line 274
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->disableScanning()V

    .line 275
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/GroupUtils;->disconnectGroup(I)Z

    move-result p0

    .line 276
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v0, :cond_0

    .line 277
    sget-object v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisConnectButtonPressed disconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onForgetButtonPressed()V
    .locals 2

    .line 258
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onForgetButtonPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-static {v0}, Lcom/android/settings/bluetooth/GroupForgetDialogFragment;->newInstance(I)Lcom/android/settings/bluetooth/GroupForgetDialogFragment;

    move-result-object v0

    .line 262
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "GroupForgetDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private onRefreshButtonPressed()V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/GroupUtils;->startGroupDiscovery(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->isRefreshClicked:Z

    .line 283
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRefreshButtonPressed isRefreshClicked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->isRefreshClicked:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateProgressScan()V
    .locals 5

    .line 299
    iget v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupSize:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget v3, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mDiscoveredSize:I

    if-le v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 302
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget v4, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/GroupUtils;->isGroupDiscoveryInProgress(I)Z

    move-result v3

    if-eqz v0, :cond_2

    if-eqz v3, :cond_1

    .line 305
    iget-object v4, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/widget/GroupOptionsPreference;->setProgressScanVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 306
    iget-object v4, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {v4, v2}, Lcom/android/settings/widget/GroupOptionsPreference;->setRefreshButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 307
    iget-object v2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/GroupOptionsPreference;->setCancelRefreshButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    goto :goto_1

    .line 309
    :cond_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {v4, v2}, Lcom/android/settings/widget/GroupOptionsPreference;->setProgressScanVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 310
    iget-object v4, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/widget/GroupOptionsPreference;->setRefreshButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 311
    iget-object v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/GroupOptionsPreference;->setCancelRefreshButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    goto :goto_1

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/GroupOptionsPreference;->setProgressScanVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 315
    iget-object v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/GroupOptionsPreference;->setCancelRefreshButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 316
    iget-object v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/GroupOptionsPreference;->setRefreshButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 318
    :goto_1
    sget-boolean v1, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v1, :cond_3

    .line 319
    sget-object v1, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateProgressScan showRefresh "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isRefreshing "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mDiscoveredSize "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mDiscoveredSize:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "group_options"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 81
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    const-string v1, "init "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/GroupOptionsPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->group_id:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget v2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    .line 87
    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/GroupUtils;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/GroupOptionsPreference;->setTextViewText(Ljava/lang/String;)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 88
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    sget v0, Lcom/android/settings/R$string;->forget_group:I

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/GroupOptionsPreference;->setForgetButtonText(I)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 89
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    new-instance v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/GroupOptionsPreference;->setForgetButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 90
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/GroupOptionsPreference;->setForgetButtonEnabled(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 91
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    sget v1, Lcom/android/settings/R$string;->active:I

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/GroupOptionsPreference;->setTexStatusText(I)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 92
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    sget v1, Lcom/android/settings/R$string;->connect_group:I

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/GroupOptionsPreference;->setConnectButtonText(I)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 93
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    new-instance v1, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;)V

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/GroupOptionsPreference;->setConnectButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 94
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    sget v1, Lcom/android/settings/R$string;->disconnect_group:I

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/GroupOptionsPreference;->setDisconnectButtonText(I)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 95
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    new-instance v1, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;)V

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/GroupOptionsPreference;->setDisconnectButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 96
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    sget v1, Lcom/android/settings/R$string;->cancel_refresh_group:I

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/GroupOptionsPreference;->setCancelRefreshButtonText(I)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 97
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    new-instance v1, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;)V

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/GroupOptionsPreference;->setCancelRefreshButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 99
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/GroupOptionsPreference;->setCancelRefreshButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 100
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    sget v2, Lcom/android/settings/R$string;->refresh_group:I

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/GroupOptionsPreference;->setRefreshButtonText(I)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 101
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    new-instance v2, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;)V

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/GroupOptionsPreference;->setRefreshButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 102
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/GroupOptionsPreference;->setRefreshButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 103
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mIsUpdate:Z

    .line 105
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget v2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {p1, v2}, Lcom/android/settings/bluetooth/GroupUtils;->getAnyBCConnectedDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 110
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    sget v1, Lcom/android/settings/R$string;->add_source_group:I

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/GroupOptionsPreference;->setAddSourceGroupButtonText(I)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 111
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/GroupOptionsPreference;->setAddSourceGroupButtonEnabled(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 112
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/GroupOptionsPreference;->setAddSourceGroupButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    if-eqz v0, :cond_2

    .line 114
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    new-instance v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/GroupOptionsPreference;->setAddSourceGroupButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/GroupOptionsPreference;

    :cond_2
    return-void
.end method

.method protected loadDevices()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/GroupUtils;->getCahcedDevice(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mDevicesList:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mDiscoveredSize:I

    .line 193
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDevices mGroupId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mGroupSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDiscoveredSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mDiscoveredSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->updateProgressScan()V

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3

    .line 125
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectionStateChanged cachedDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->isUpdate(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->refresh()V

    :cond_1
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 4

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mDevicesList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/bluetooth/GroupUtils;->addDevice(Ljava/util/ArrayList;ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mDevicesList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/bluetooth/GroupUtils;->removeDevice(Ljava/util/ArrayList;ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 154
    iget-object v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mDevicesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mDiscoveredSize:I

    .line 156
    :cond_2
    sget-boolean v1, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v1, :cond_3

    .line 157
    sget-object v1, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceBondStateChanged cachedDevice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " bondState "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isUpdated "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mDiscoveredSize "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mDiscoveredSize:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    .line 162
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->updateProgressScan()V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->refresh()V

    :cond_4
    return-void
.end method

.method public onGroupDiscoveryStatusChanged(III)V
    .locals 3

    .line 177
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetDiscoveryStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Reason :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    iget p3, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    if-ne p1, p3, :cond_2

    .line 182
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->isRefreshClicked:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    .line 183
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->isRefreshClicked:Z

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->updateProgressScan()V

    :cond_2
    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 2

    .line 136
    sget-boolean p3, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz p3, :cond_0

    .line 137
    sget-object p3, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProfileConnectionStateChanged cachedDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget p3, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupId:I

    invoke-virtual {p2, p3, p1}, Lcom/android/settings/bluetooth/GroupUtils;->isUpdate(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->refresh()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 168
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsController;->onStop()V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->disableScanning()V

    return-void
.end method

.method protected refresh()V
    .locals 11

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mDevicesList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    sget-boolean v1, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v1, :cond_0

    .line 208
    sget-object v1, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFlags list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 211
    sget-boolean v8, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v8, :cond_2

    .line 212
    sget-object v8, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "refresh cacheDevice "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " connected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " busy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 212
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v2, :cond_3

    .line 215
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 217
    iput-boolean v7, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mIsUpdate:Z

    move v2, v7

    :cond_3
    if-nez v4, :cond_4

    .line 219
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 221
    iput-boolean v7, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mIsUpdate:Z

    move v4, v7

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    .line 222
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v8

    if-nez v8, :cond_5

    .line 224
    iput-boolean v7, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mIsUpdate:Z

    move v3, v7

    :cond_5
    :goto_1
    if-nez v5, :cond_1

    .line 225
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x2

    .line 226
    invoke-virtual {v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 227
    invoke-virtual {v6, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v8

    if-nez v8, :cond_6

    const/16 v8, 0x15

    .line 228
    invoke-virtual {v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_6
    move v5, v7

    goto :goto_0

    .line 232
    :cond_7
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->DBG:Z

    if-eqz v0, :cond_8

    .line 233
    sget-object v0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "refresh isBusy "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " showConnect "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " showDisconnect :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isActive "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mIsUpdate "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mIsUpdate:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mIsUpdate:Z

    if-nez v0, :cond_9

    return-void

    .line 240
    :cond_9
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/GroupOptionsPreference;->setConnectButtonEnabled(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 241
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/GroupOptionsPreference;->setDisconnectButtonEnabled(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 242
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/GroupOptionsPreference;->setRefreshButtonEnabled(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 243
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    xor-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/GroupOptionsPreference;->setCancelRefreshButtonEnabled(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 244
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/GroupOptionsPreference;->setDisconnectButtonEnabled(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 245
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/GroupOptionsPreference;->setDisconnectButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 246
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/GroupOptionsPreference;->setConnectButtonEnabled(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 247
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/GroupOptionsPreference;->setConnectButtonVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 248
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mGroupOptions:Lcom/android/settings/widget/GroupOptionsPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/GroupOptionsPreference;->setTvStatusVisible(Z)Lcom/android/settings/widget/GroupOptionsPreference;

    .line 249
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;->mIsUpdate:Z

    return-void
.end method
