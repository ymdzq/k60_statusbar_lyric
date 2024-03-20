.class public Lcom/android/settings/device/MiuiMyDeviceDetailSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MiuiMyDeviceDetailSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/device/MiuiMyDeviceDetailSettings$UpdateMemoryCallBack;,
        Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;,
        Lcom/android/settings/device/MiuiMyDeviceDetailSettings$UpdateCpuCallBack;,
        Lcom/android/settings/device/MiuiMyDeviceDetailSettings$VerisonSpaceItemDecoration;,
        Lcom/android/settings/device/MiuiMyDeviceDetailSettings$SpaceItemDecoration;
    }
.end annotation


# static fields
.field private static final CPU_CLOUD_CONFIG_KEY:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/android/settings/device/MemoryInfoHelper$Callback;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mGridView:Landroid/view/View;

.field private mHardwareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/device/DeviceCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNeedAddBasicCpu:Z

.field private mIsNeedUpdateCpu:Z

.field private mMemoryCardItem:Lcom/android/settings/device/BorderedBaseDeviceCardItem;

.field private mParamsCallback:Ljava/lang/Runnable;

.field private mPresenter:Lcom/android/settings/device/DeviceBasicInfoPresenter;

.field private mRootView:Landroid/view/View;

.field private mScrollView:Lmiuix/core/widget/NestedScrollView;

.field private mVersionlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/device/DeviceCardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmClickListener(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGridView(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mGridView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNeedAddBasicCpu(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mIsNeedAddBasicCpu:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNeedUpdateCpu(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mIsNeedUpdateCpu:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMemoryCardItem(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Lcom/android/settings/device/BorderedBaseDeviceCardItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mMemoryCardItem:Lcom/android/settings/device/BorderedBaseDeviceCardItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPresenter(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Lcom/android/settings/device/DeviceBasicInfoPresenter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mPresenter:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsNeedAddBasicCpu(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mIsNeedAddBasicCpu:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsNeedUpdateCpu(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mIsNeedUpdateCpu:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCPU_CLOUD_CONFIG_KEY()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->CPU_CLOUD_CONFIG_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 89
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->CPU_CLOUD_CONFIG_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mIsNeedUpdateCpu:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mIsNeedAddBasicCpu:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mVersionlist:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mHardwareList:Ljava/util/List;

    .line 103
    new-instance v0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$1;-><init>(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)V

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mParamsCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private disableRecyclerViewScrollDispatch()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    sget v1, Lcom/android/settings/R$id;->description_grid:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 172
    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->verison_info:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 173
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->hardware_info_list:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :cond_1
    if-eqz v1, :cond_2

    .line 178
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :cond_2
    if-eqz p0, :cond_3

    .line 181
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :cond_3
    return-void
.end method

.method private initGridView()V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->device_params:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mGridView:Landroid/view/View;

    const/16 v1, 0x8

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lcom/android/settings/device/DeviceBasicInfoPresenter;

    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/device/DeviceBasicInfoPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mPresenter:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    .line 190
    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mGridView:Landroid/view/View;

    const-string v2, ""

    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mClickListener:Landroid/view/View$OnClickListener;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->showBasicInfoGridView(Landroid/view/View;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->startUpdateInfoAsync()V

    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "cards_data"

    .line 197
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 198
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    array-length v1, v0

    const-class v2, [Lcom/android/settings/device/DeviceCardInfo;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/device/DeviceCardInfo;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 203
    array-length v1, v0

    if-lez v1, :cond_3

    .line 204
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 205
    iget-object v4, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/settings/device/DeviceCardInfo;->setListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    :cond_2
    new-instance v1, Lcom/android/settings/device/DeviceBasicInfoPresenter;

    iget-object v2, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;-><init>(Landroid/content/Context;[Lcom/android/settings/device/DeviceCardInfo;)V

    iput-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mPresenter:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    .line 208
    invoke-virtual {v1}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->covertToMiui14CardsStyle()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mPresenter:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mGridView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->showBasicInfoGridView(Landroid/view/View;)V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->startUpdateInfoAsync()V

    goto :goto_2

    .line 212
    :cond_3
    new-instance v0, Lcom/android/settings/device/DeviceBasicInfoPresenter;

    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/device/DeviceBasicInfoPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mPresenter:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    .line 213
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mParamsCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/device/DeviceParamsManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/DeviceParamsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mParamsCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/settings/device/DeviceParamsManager;->setCallback(Ljava/lang/Runnable;)V

    .line 215
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->startUpdateInfoAsync()V

    :goto_2
    return-void
.end method

.method private initHardWareVersion()V
    .locals 10

    .line 290
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 291
    new-instance v0, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {v0}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 292
    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->model_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    const-string v3, "diting"

    .line 293
    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    invoke-static {}, Lcom/android/settings/credentials/MiuiCredentialsUpdater;->getGlobalCertNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    invoke-static {}, Lcom/android/settings/credentials/MiuiCredentialsUpdater;->getGlobalCertNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 296
    invoke-static {}, Lcom/android/settings/credentials/MiuiCredentialsUpdater;->getGlobalCertNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    const-string v5, "art"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    invoke-static {}, Lcom/android/settings/credentials/MiuiCredentialsUpdater;->getGlobalCertNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-static {}, Lcom/android/settings/credentials/MiuiCredentialsUpdater;->getGlobalCertNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    .line 301
    :goto_0
    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mHardwareList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 302
    :cond_1
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getCTANumble()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    new-instance v0, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {v0}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 305
    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->model_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getCTANumble()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mHardwareList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 311
    new-instance v0, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {v0}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 312
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isCustomizationTest()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Domestic operators"

    .line 313
    invoke-virtual {v0, v3}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 315
    :cond_3
    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    .line 316
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gsm.version.baseband"

    .line 315
    invoke-static {v4, v1, v3}, Lcom/android/settings/PlatformUtils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    .line 318
    :goto_2
    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->baseband_version:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mHardwareList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_4
    new-instance v0, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {v0}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 323
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isCustomizationTest()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Unavailable"

    .line 324
    invoke-virtual {v0, v3}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 326
    :cond_5
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    .line 328
    :goto_3
    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->kernel_version:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    const-string v3, "kernel_version"

    .line 329
    invoke-virtual {v0, v3}, Lcom/android/settings/device/DeviceCardInfo;->setKey(Ljava/lang/String;)V

    .line 330
    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mHardwareList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ro.miui.cust_hardware"

    const-string v3, ""

    .line 332
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 334
    new-instance v3, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {v3}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 335
    iget-object v4, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->hardware_version:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v3, v0}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mHardwareList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_6
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mHardwareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/device/DeviceCardInfo;

    .line 341
    iget-object v5, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Lcom/android/settings/device/DeviceCardInfo;->setListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-virtual {v3, v4}, Lcom/android/settings/device/DeviceCardInfo;->setType(I)V

    goto :goto_4

    .line 345
    :cond_7
    new-instance v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "imei_info"

    invoke-direct {v0, v3, v5}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getAvailabilityStatus()I

    move-result v3

    if-nez v3, :cond_9

    .line 347
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 348
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    .line 349
    new-instance v7, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v3, v6}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;)V

    .line 350
    invoke-virtual {v0, p0, v7}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->init(Landroidx/fragment/app/Fragment;Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;)V

    move v3, v1

    .line 351
    :goto_5
    invoke-virtual {v7}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 353
    new-instance v6, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {v6}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 354
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v7}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result v8

    if-ne v8, v2, :cond_8

    const-string v8, "IMEI"

    goto :goto_6

    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMEI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_6
    invoke-virtual {v6, v8}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    .line 356
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/settings/device/DeviceCardInfo;->setKey(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v6, v4}, Lcom/android/settings/device/DeviceCardInfo;->setType(I)V

    .line 358
    new-instance v8, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$2;

    invoke-direct {v8, p0, v0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$2;-><init>(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;)V

    invoke-virtual {v6, v8}, Lcom/android/settings/device/DeviceCardInfo;->setListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v8, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mHardwareList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 369
    :cond_9
    new-instance v0, Lcom/android/settings/device/DeviceInfoAdapter;

    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/settings/device/DeviceInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 370
    invoke-virtual {v0}, Lcom/android/settings/device/DeviceInfoAdapter;->closeValueTextLineLimit()V

    .line 371
    invoke-virtual {v0, v2}, Lcom/android/settings/device/DeviceInfoAdapter;->setType(I)V

    .line 372
    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mRootView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->hardware_info_list:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 373
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v5, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 374
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 375
    iget-object v2, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mHardwareList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/settings/device/DeviceCardInfo;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/settings/device/DeviceCardInfo;

    invoke-virtual {v0, v2}, Lcom/android/settings/device/DeviceInfoAdapter;->setDataList([Lcom/android/settings/device/DeviceCardInfo;)V

    .line 376
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 377
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 378
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    if-nez v0, :cond_b

    .line 379
    :cond_a
    new-instance v0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$SpaceItemDecoration;

    invoke-direct {v0, p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$SpaceItemDecoration;-><init>(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)V

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_b
    return-void
.end method

.method private initMemoryInfo()V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->memory:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/device/BorderedBaseDeviceCardItem;

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mMemoryCardItem:Lcom/android/settings/device/BorderedBaseDeviceCardItem;

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->device_total_memory:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    .line 386
    invoke-static {v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getShortTotalMemory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mMemoryCardItem:Lcom/android/settings/device/BorderedBaseDeviceCardItem;

    invoke-virtual {v1, v0}, Lcom/android/settings/device/BaseDeviceCardItem;->setValue(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mMemoryCardItem:Lcom/android/settings/device/BorderedBaseDeviceCardItem;

    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->device_internal_memory:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/device/BaseDeviceCardItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mMemoryCardItem:Lcom/android/settings/device/BorderedBaseDeviceCardItem;

    const-string v1, "device_internal_memory"

    invoke-virtual {v0, v1}, Lcom/android/settings/device/BaseDeviceCardItem;->setKey(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mMemoryCardItem:Lcom/android/settings/device/BorderedBaseDeviceCardItem;

    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mMemoryCardItem:Lcom/android/settings/device/BorderedBaseDeviceCardItem;

    const/4 v2, 0x0

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 391
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mMemoryCardItem:Lcom/android/settings/device/BorderedBaseDeviceCardItem;

    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initSoftWareVersion()V
    .locals 7

    .line 227
    new-instance v0, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {v0}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 228
    new-instance v1, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {v1}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 229
    new-instance v1, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {v1}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 230
    sget-boolean v2, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    const-string v3, " | "

    if-nez v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lmiui/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->security_patch_subtitle:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->security_patch_subtitle:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    .line 235
    :goto_1
    iget-object v2, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->firmware_version:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 236
    invoke-virtual {v0, v2}, Lcom/android/settings/device/DeviceCardInfo;->setType(I)V

    const-string v3, "firmware_version"

    .line 237
    invoke-virtual {v0, v3}, Lcom/android/settings/device/DeviceCardInfo;->setKey(Ljava/lang/String;)V

    .line 238
    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->device_miui_version:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getMiuiVersionInCard(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1, v2}, Lcom/android/settings/device/DeviceCardInfo;->setType(I)V

    const-string/jumbo v3, "miui_version"

    .line 241
    invoke-virtual {v1, v3}, Lcom/android/settings/device/DeviceCardInfo;->setKey(Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mVersionlist:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mVersionlist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_NEED_OPCUST_VERSION:Z

    if-eqz v0, :cond_3

    .line 246
    new-instance v0, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {v0}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 247
    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->device_opcust_version:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    const-string/jumbo v1, "ro.miui.opcust.version"

    const-string v3, ""

    .line 248
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getOpconfigVersion()Ljava/lang/String;

    move-result-object v5

    .line 250
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v2}, Lcom/android/settings/device/DeviceCardInfo;->setType(I)V

    const-string v1, "device_opcust_version"

    .line 252
    invoke-virtual {v0, v1}, Lcom/android/settings/device/DeviceCardInfo;->setKey(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mVersionlist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mVersionlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/device/DeviceCardInfo;

    .line 257
    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/android/settings/device/DeviceCardInfo;->setListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 259
    :cond_4
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->verison_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 260
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 261
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 262
    new-instance v3, Lcom/android/settings/device/DeviceInfoAdapter;

    iget-object v5, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/settings/device/DeviceInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-virtual {v3, v2}, Lcom/android/settings/device/DeviceInfoAdapter;->setType(I)V

    .line 264
    iget-object v2, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mVersionlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/settings/device/DeviceCardInfo;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/settings/device/DeviceCardInfo;

    invoke-virtual {v3, v2}, Lcom/android/settings/device/DeviceInfoAdapter;->setDataList([Lcom/android/settings/device/DeviceCardInfo;)V

    .line 265
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 266
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v2

    if-nez v2, :cond_6

    .line 267
    :cond_5
    new-instance v2, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$VerisonSpaceItemDecoration;

    invoke-direct {v2, p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$VerisonSpaceItemDecoration;-><init>(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 269
    :cond_6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private startUpdateInfoAsync()V
    .locals 3

    .line 220
    iget-boolean v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mIsNeedUpdateCpu:Z

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;

    new-instance v1, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$UpdateCpuCallBack;

    invoke-direct {v1, p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$UpdateCpuCallBack;-><init>(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$ReadCpuInfoTask;-><init>(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;Lcom/android/settings/device/controller/MiuiDeviceCpuInfoController$CallBack;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mCallback:Lcom/android/settings/device/MemoryInfoHelper$Callback;

    invoke-static {p0}, Lcom/android/settings/device/MemoryInfoHelper;->getAvailableMemorySize(Lcom/android/settings/device/MemoryInfoHelper$Callback;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 447
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 449
    new-instance v0, Lcom/android/settings/device/controller/MiuiPreInstallController;

    invoke-direct {v0, p1}, Lcom/android/settings/device/controller/MiuiPreInstallController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v0, Lcom/android/settings/device/controller/MiuiSafetylegalController;

    invoke-direct {v0, p1}, Lcom/android/settings/device/controller/MiuiSafetylegalController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    new-instance v0, Lcom/android/settings/device/controller/MiuiInstructionController;

    invoke-direct {v0, p1}, Lcom/android/settings/device/controller/MiuiInstructionController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance v0, Lcom/android/settings/device/controller/MiuiLegalInfoController;

    invoke-direct {v0, p1}, Lcom/android/settings/device/controller/MiuiLegalInfoController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v0, Lcom/android/settings/device/controller/MiuiDeviceStatusInfoController;

    invoke-direct {v0, p1}, Lcom/android/settings/device/controller/MiuiDeviceStatusInfoController;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "MiuiMyDeviceDetail"

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 126
    const-class p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 418
    sget p0, Lcom/android/settings/R$xml;->my_device_detail_settings:I

    return p0
.end method

.method public initView()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->initGridView()V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->initSoftWareVersion()V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->initHardWareVersion()V

    .line 161
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->initMemoryInfo()V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->disableRecyclerViewScrollDispatch()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Lcom/android/settings/device/DeviceDetailOnClickListener;

    invoke-direct {v0, p1}, Lcom/android/settings/device/DeviceDetailOnClickListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mClickListener:Landroid/view/View$OnClickListener;

    .line 135
    new-instance p1, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$UpdateMemoryCallBack;

    invoke-direct {p1, p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$UpdateMemoryCallBack;-><init>(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)V

    iput-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mCallback:Lcom/android/settings/device/MemoryInfoHelper$Callback;

    const-string/jumbo p1, "setting_About_phone_device"

    .line 136
    invoke-static {p1}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 405
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x104000a    # @android:string/ok

    const/4 v1, 0x0

    .line 406
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 407
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 409
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/settings/R$layout;->type_approved_content:I

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 410
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    return-object p1

    .line 413
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 142
    sget v0, Lcom/android/settings/R$layout;->miui_all_specs:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mRootView:Landroid/view/View;

    .line 144
    sget v0, Lcom/android/settings/R$id;->scrollview:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mScrollView:Lmiuix/core/widget/NestedScrollView;

    .line 145
    iget-object p2, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p3, 0x102003f    # @android:id/list_container

    .line 148
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lmiuix/springback/view/SpringBackLayout;

    if-eqz p3, :cond_0

    .line 150
    invoke-virtual {p3, v1}, Lmiuix/springback/view/SpringBackLayout;->setEnabled(Z)V

    .line 152
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->initView()V

    .line 154
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 442
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 434
    invoke-super {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 435
    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mRootView:Landroid/view/View;

    .line 436
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mVersionlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 437
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mHardwareList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 2

    .line 396
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi_type_approval"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 397
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 399
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 428
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 429
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/device/DeviceParamsManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/DeviceParamsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mParamsCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/settings/device/DeviceParamsManager;->setCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestHighlight(Ljava/lang/String;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->requestHighlight(Ljava/lang/String;)V

    const-string v0, "device_params_interpretation"

    .line 119
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->mScrollView:Lmiuix/core/widget/NestedScrollView;

    if-eqz p0, :cond_0

    const/16 p1, 0x82

    .line 120
    invoke-virtual {p0, p1}, Lmiuix/core/widget/NestedScrollView;->fullScroll(I)Z

    :cond_0
    return-void
.end method
