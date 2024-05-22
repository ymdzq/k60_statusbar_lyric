.class public Lcom/android/settings/MiuiMasterClear;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiMasterClear.java"

# interfaces
.implements Lcom/android/settings/FragmentResultCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;,
        Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;,
        Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;,
        Lcom/android/settings/MiuiMasterClear$UninstallTask;,
        Lcom/android/settings/MiuiMasterClear$WipeCallback;,
        Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;,
        Lcom/android/settings/MiuiMasterClear$AccountStartActivityCallback;
    }
.end annotation


# static fields
.field private static DEFALUT_MCC_MNC_ENFORCED_WIFI_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static DEFALUT_SPN_ENFORCED_WIFI_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ESIM_TIMEOUT_MSG:I

.field private isShowOnce:Z

.field private mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckEsimStatusForDeleteTask:Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;

.field private mCheckFindDeviceStatusTask:Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;

.field private mClearListAdapter:Lcom/android/settings/device/CommonIconListAdapter;

.field private mClosingFindDevicePasswordVerified:Z

.field private mESimInitialState:I

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mEraseApplication:Landroidx/preference/CheckBoxPreference;

.field private mEraseEsim:Z

.field private mEraseExternalStorage:Landroidx/preference/CheckBoxPreference;

.field private mFactoryResetDialog:Landroid/app/Dialog;

.field private mGridView:Landroidx/recyclerview/widget/RecyclerView;

.field private mHandler:Landroid/os/Handler;

.field private mHasBaseRestriction:Z

.field private mIsClearAll:Z

.field private mPassWord:Ljava/lang/String;

.field private mPinConfirmed:Z

.field private mSdCardCheckPreference:Landroidx/preference/CheckBoxPreference;

.field private mShutDownFindDeviceTask:Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;

.field protected mUserId:I

.field private miTsmCleanSeService:Lcom/miui/tsmclient/service/IMiTsmCleanSeService;

.field private needCleanWallet:Z

.field private needShowBackupDialg:Z

.field private remoteConnection:Landroid/content/ServiceConnection;

.field private walletCleanupCallback:Lcom/miui/tsmclient/service/ICallback;

.field private walletSkipCallback:Lcom/miui/tsmclient/service/ICallback;


# direct methods
.method public static synthetic $r8$lambda$1oaeL6pDFDeE2Et4ZK_NcBL5wxM(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->showConfirmDialog()V

    return-void
.end method

.method public static synthetic $r8$lambda$I9pz8_yvfdmzfrOrABr4Yy3xaSg(Lcom/android/settings/MiuiMasterClear;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiMasterClear;->lambda$setESimStateIfNeed$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$z69lt05KqjEdwrNU9wj6s4RrHbg(Lcom/android/settings/MiuiMasterClear;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiMasterClear;->clearAllDataClick(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAccountManagerFuture(Lcom/android/settings/MiuiMasterClear;)Landroid/accounts/AccountManagerFuture;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear;->mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCheckEsimStatusForDeleteTask(Lcom/android/settings/MiuiMasterClear;)Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear;->mCheckEsimStatusForDeleteTask:Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmESimInitialState(Lcom/android/settings/MiuiMasterClear;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/MiuiMasterClear;->mESimInitialState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFactoryResetDialog(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/MiuiMasterClear;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmiTsmCleanSeService(Lcom/android/settings/MiuiMasterClear;)Lcom/miui/tsmclient/service/IMiTsmCleanSeService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear;->miTsmCleanSeService:Lcom/miui/tsmclient/service/IMiTsmCleanSeService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwalletCleanupCallback(Lcom/android/settings/MiuiMasterClear;)Lcom/miui/tsmclient/service/ICallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear;->walletCleanupCallback:Lcom/miui/tsmclient/service/ICallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwalletSkipCallback(Lcom/android/settings/MiuiMasterClear;)Lcom/miui/tsmclient/service/ICallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear;->walletSkipCallback:Lcom/miui/tsmclient/service/ICallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisShowOnce(Lcom/android/settings/MiuiMasterClear;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiMasterClear;->isShowOnce:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccountManagerFuture(Lcom/android/settings/MiuiMasterClear;Landroid/accounts/AccountManagerFuture;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear;->mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCheckFindDeviceStatusTask(Lcom/android/settings/MiuiMasterClear;Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear;->mCheckFindDeviceStatusTask:Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEraseEsim(Lcom/android/settings/MiuiMasterClear;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiMasterClear;->mEraseEsim:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShutDownFindDeviceTask(Lcom/android/settings/MiuiMasterClear;Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear;->mShutDownFindDeviceTask:Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmiTsmCleanSeService(Lcom/android/settings/MiuiMasterClear;Lcom/miui/tsmclient/service/IMiTsmCleanSeService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear;->miTsmCleanSeService:Lcom/miui/tsmclient/service/IMiTsmCleanSeService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputneedCleanWallet(Lcom/android/settings/MiuiMasterClear;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiMasterClear;->needCleanWallet:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputneedShowBackupDialg(Lcom/android/settings/MiuiMasterClear;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiMasterClear;->needShowBackupDialg:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$malertCheckFindDeviceStatusFailure(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->alertCheckFindDeviceStatusFailure()V

    return-void
.end method

.method static bridge synthetic -$$Nest$malertShutDownFindDeviceFailure(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->alertShutDownFindDeviceFailure()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearESIMAndCheckFindDevice(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->clearESIMAndCheckFindDevice()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoFactoryReset(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->doFactoryReset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoMasterClear(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->doMasterClear()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunCheckEsimStatusForDelete(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->runCheckEsimStatusForDelete()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunFindDeviceCheckAndDoMasterClean(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->runFindDeviceCheckAndDoMasterClean()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetESimStateIfNeed(Lcom/android/settings/MiuiMasterClear;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiMasterClear;->setESimStateIfNeed(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowConfirmDialog(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->showConfirmDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFinalConfirmation(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartFactoryReset(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->startFactoryReset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetEsimGPIOState()I
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/settings/MiuiMasterClear;->getEsimGPIOState()I

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smgetProgressDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->getProgressDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiMasterClear;->DEFALUT_SPN_ENFORCED_WIFI_SET:Ljava/util/Set;

    const-string v1, "Bouygues Telecom"

    .line 162
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/android/settings/MiuiMasterClear;->DEFALUT_SPN_ENFORCED_WIFI_SET:Ljava/util/Set;

    const-string v1, "DNA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiMasterClear;->DEFALUT_MCC_MNC_ENFORCED_WIFI_SET:Ljava/util/Set;

    const-string v1, "02F802"

    .line 169
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/android/settings/MiuiMasterClear;->DEFALUT_MCC_MNC_ENFORCED_WIFI_SET:Ljava/util/Set;

    const-string v1, "02F812"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/android/settings/MiuiMasterClear;->DEFALUT_MCC_MNC_ENFORCED_WIFI_SET:Ljava/util/Set;

    const-string v1, "02F888"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/android/settings/MiuiMasterClear;->DEFALUT_MCC_MNC_ENFORCED_WIFI_SET:Ljava/util/Set;

    const-string v1, "42F440"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/android/settings/MiuiMasterClear;->DEFALUT_MCC_MNC_ENFORCED_WIFI_SET:Ljava/util/Set;

    const-string v1, "42F430"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/android/settings/MiuiMasterClear;->DEFALUT_MCC_MNC_ENFORCED_WIFI_SET:Ljava/util/Set;

    const-string v1, "42F431"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/android/settings/MiuiMasterClear;->DEFALUT_MCC_MNC_ENFORCED_WIFI_SET:Ljava/util/Set;

    const-string v1, "42F421"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 135
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->needCleanWallet:Z

    .line 198
    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->needShowBackupDialg:Z

    const/4 v1, 0x1

    .line 199
    iput-boolean v1, p0, Lcom/android/settings/MiuiMasterClear;->isShowOnce:Z

    .line 200
    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->mEraseEsim:Z

    const/4 v0, -0x1

    .line 204
    iput v0, p0, Lcom/android/settings/MiuiMasterClear;->mESimInitialState:I

    .line 208
    new-instance v0, Lcom/android/settings/MiuiMasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiMasterClear$1;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    .line 220
    iput v0, p0, Lcom/android/settings/MiuiMasterClear;->ESIM_TIMEOUT_MSG:I

    .line 794
    new-instance v0, Lcom/android/settings/MiuiMasterClear$10;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiMasterClear$10;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->remoteConnection:Landroid/content/ServiceConnection;

    .line 814
    new-instance v0, Lcom/android/settings/MiuiMasterClear$11;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiMasterClear$11;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->walletSkipCallback:Lcom/miui/tsmclient/service/ICallback;

    .line 837
    new-instance v0, Lcom/android/settings/MiuiMasterClear$12;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiMasterClear$12;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->walletCleanupCallback:Lcom/miui/tsmclient/service/ICallback;

    return-void
.end method

.method private alertCheckFindDeviceStatusFailure()V
    .locals 3

    .line 293
    sget v0, Lcom/android/settings/R$string;->failed_to_check_find_device_status_title:I

    .line 294
    sget v1, Lcom/android/settings/R$string;->failed_to_check_find_device_status_content:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 296
    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 297
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->check_find_device_status_failure_confirm:I

    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 299
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private alertShutDownFindDeviceFailure()V
    .locals 3

    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/net/ConnectivityHelper;->getInstance(Landroid/content/Context;)Lmiuix/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/net/ConnectivityHelper;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    sget v0, Lcom/android/settings/R$string;->failed_to_shut_down_find_device_title:I

    .line 309
    sget v1, Lcom/android/settings/R$string;->failed_to_shut_down_find_device_content:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 311
    :cond_0
    sget v0, Lcom/android/settings/R$string;->shut_down_find_device_network_failure_title:I

    .line 312
    sget v1, Lcom/android/settings/R$string;->shut_down_find_device_network_failure_content:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 315
    :goto_0
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 317
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->shut_down_find_device_failure_confirm:I

    const/4 v1, 0x0

    .line 318
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private cleanWalletData()V
    .locals 4

    .line 761
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    .line 764
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 765
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 766
    sget v1, Lcom/android/settings/R$string;->wallet_reset_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wallet_reset:I

    .line 767
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wallet_reset_ok_btn:I

    new-instance v3, Lcom/android/settings/MiuiMasterClear$9;

    invoke-direct {v3, p0}, Lcom/android/settings/MiuiMasterClear$9;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    .line 768
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wallet_reset_cancel_btn:I

    new-instance v3, Lcom/android/settings/MiuiMasterClear$8;

    invoke-direct {v3, p0}, Lcom/android/settings/MiuiMasterClear$8;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    .line 778
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 790
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private clearAllDataClick(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x0

    .line 518
    iput-boolean p1, p0, Lcom/android/settings/MiuiMasterClear;->mPinConfirmed:Z

    .line 519
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->runRestrictionsChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 522
    :cond_0
    sget-boolean v0, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->isBatteryLow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 524
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->miui_master_clear_prompt_battery_low:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 525
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 524
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 526
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->button_text_ok:I

    const/4 v0, 0x0

    .line 527
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 528
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void

    :cond_1
    const/16 p1, 0x37

    .line 531
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiMasterClear;->runKeyguardConfirmation(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 534
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 537
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "factoryReset"

    invoke-static {p1, v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackMasterClearClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackMasterClearClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 543
    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/MiuiMasterClear;->needCleanWallet:Z

    if-eqz p1, :cond_5

    .line 544
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->cleanWalletData()V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 546
    iput-boolean p1, p0, Lcom/android/settings/MiuiMasterClear;->needShowBackupDialg:Z

    .line 547
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->showConfirmDialog()V

    :goto_0
    return-void
.end method

.method private clearESIMAndCheckFindDevice()V
    .locals 1

    .line 716
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedESIMCustmized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 717
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedESIMFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->showWipeEuicc()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->runFindDeviceCheckAndDoMasterClean()V

    goto :goto_1

    .line 718
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->showResetESimConfirmDialog()V

    :goto_1
    return-void
.end method

.method private clearSkipBackUp()Z
    .locals 1

    .line 708
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isBackupNeededInternal(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 711
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->clearESIMAndCheckFindDevice()V

    const/4 p0, 0x1

    return p0
.end method

.method private createFactoryResetDialog()V
    .locals 4

    .line 864
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x103006d    # @android:style/Theme.Holo.NoActionBar.Fullscreen

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    .line 865
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x110c002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 866
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 867
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 868
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v3, 0x1

    .line 869
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 870
    iget-object v3, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 871
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x7e5

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 872
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 873
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const v1, 0x110a00c6

    .line 875
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 876
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 877
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 878
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x110b003c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 880
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x110b003d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 882
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 884
    new-instance v0, Lcom/android/settings/MiuiMasterClear$UninstallTask;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiMasterClear$UninstallTask;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    new-array p0, v2, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private doFactoryReset()V
    .locals 2

    .line 889
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    invoke-static {v1}, Lmiui/os/MiuiInit;->doFactoryReset(Z)V

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doFactoryReset hex password:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mPassWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MasterClearRec"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    .line 897
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->wipeFrpBlockDataAndDoMasterClear()V

    goto :goto_1

    .line 899
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->doMasterClear()V

    :goto_1
    return-void
.end method

.method private doMasterClear()V
    .locals 9

    .line 1008
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroidx/preference/CheckBoxPreference;

    const/high16 v1, 0x10000000

    const-string v2, "com.android.internal.intent.extra.WIPE_ESIMS"

    const/4 v3, 0x1

    const-string v4, "format_sdcard"

    const-string v5, "android"

    const-string v6, "android.intent.action.FACTORY_RESET"

    const/4 v7, 0x0

    const-string/jumbo v8, "support_erase_external_storage"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    invoke-static {v8, v7}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1010
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1012
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1013
    iget-boolean v3, p0, Lcom/android/settings/MiuiMasterClear;->mEraseEsim:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1014
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1015
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1017
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->isNeedPassWord()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1018
    invoke-static {v8, v7}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1019
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1022
    iget-boolean v3, p0, Lcom/android/settings/MiuiMasterClear;->mEraseEsim:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1023
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1024
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mPassWord:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "password"

    .line 1025
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mPassWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 1026
    iput-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mPassWord:Ljava/lang/String;

    .line 1028
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1031
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mSdCardCheckPreference:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1032
    invoke-virtual {p0}, Lcom/android/settings/MiuiMasterClear;->formatSdCardAndFactoryReset()V

    goto :goto_0

    .line 1034
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->startFactoryReset()V

    .line 1038
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doMasterClear:mEraseEsim "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/MiuiMasterClear;->mEraseEsim:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiMasterClear"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private enableStatusBar(Z)V
    .locals 1

    const-string/jumbo v0, "statusbar"

    .line 1128
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-nez p1, :cond_0

    const/high16 p1, 0x1610000

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1137
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    return-void
.end method

.method private static getEsimGPIOState()I
    .locals 8

    const-string v0, "getEsimGPIOState(): "

    const-string v1, "MiuiMasterClear"

    const/4 v2, -0x1

    :try_start_0
    const-string/jumbo v3, "miui.telephony.TelephonyManagerEx"

    .line 1729
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getDefault"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 1730
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "getEsimGPIOState"

    new-array v7, v5, [Ljava/lang/Class;

    .line 1731
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1734
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public static getEsimTipDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog;
    .locals 1

    .line 1711
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1712
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1713
    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1714
    invoke-virtual {v0, p3, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1716
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static getProgressDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 2

    .line 996
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 997
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    .line 998
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 999
    sget v1, Lcom/android/settings/R$string;->master_clear_progress_title:I

    .line 1000
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 999
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1001
    sget v1, Lcom/android/settings/R$string;->master_clear_progress_text:I

    .line 1002
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1001
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private initClearList(Landroid/view/View;)V
    .locals 4

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    new-instance v1, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->contact_data:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_clear_contact_data:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v1, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->photo_data:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_app_photo:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v1, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->application_data:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_clear_app_data:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance v1, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->acount_data:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_clear_account_data:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v1, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->backup_data:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_clear_backup_data:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v1, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sd_data:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_clear_sdcard_data:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance v1, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->other_data:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_clear_other_data:I

    invoke-direct {v1, v2, v3}, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    sget-boolean v1, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->hasSDCard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-boolean v1, Lcom/android/settings/RegionUtils;->IS_JP_SB:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x5

    .line 497
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 500
    :cond_2
    sget v1, Lcom/android/settings/R$id;->clear_list:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    .line 501
    new-instance p1, Lcom/android/settings/device/CommonIconListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/android/settings/device/CommonIconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear;->mClearListAdapter:Lcom/android/settings/device/CommonIconListAdapter;

    .line 502
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 503
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 505
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear;->mGridView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear;->mClearListAdapter:Lcom/android/settings/device/CommonIconListAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private isBatteryLow()Z
    .locals 3

    .line 579
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "level"

    const/4 v1, 0x0

    .line 581
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isEuiccEnabled(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "euicc"

    .line 1415
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/euicc/EuiccManager;

    .line 1416
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public static isExtStorageEncrypted()Z
    .locals 2

    const-string/jumbo v0, "ro.crypto.state"

    .line 1050
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encrypted"

    .line 1051
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNeedPassWord()Z
    .locals 1

    const-string/jumbo p0, "ro.product.device"

    const-string v0, "UNKNOWN"

    .line 1388
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "leo"

    .line 1389
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/settings/MiuiMasterClear;->isExtStorageEncrypted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isRemoveEraseExternalStorage()Z
    .locals 2

    .line 412
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "support_erase_external_storage"

    .line 413
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/MiuiMasterClear;->isExtStorageEncrypted()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private synthetic lambda$setESimStateIfNeed$0(I)V
    .locals 6

    .line 1429
    monitor-enter p0

    :try_start_0
    const-string v0, "MiuiMasterClear"

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setESimStateIfNeed pass state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, "miui.telephony.TelephonyManagerEx"

    .line 1433
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDefault"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 1434
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "getEsimGPIOState"

    new-array v5, v2, [Ljava/lang/Class;

    .line 1435
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "MiuiMasterClear"

    .line 1436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setESimStateIfNeed --> current status "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1442
    :try_start_2
    iget v1, p0, Lcom/android/settings/MiuiMasterClear;->mESimInitialState:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1443
    iput v0, p0, Lcom/android/settings/MiuiMasterClear;->mESimInitialState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    if-eq v0, p1, :cond_1

    :try_start_3
    const-string/jumbo v0, "miui.telephony.TelephonyManagerEx"

    .line 1447
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDefault"

    new-array v3, v2, [Ljava/lang/Class;

    .line 1448
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 1449
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-string/jumbo v5, "setEsimState"

    .line 1450
    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "MiuiMasterClear"

    .line 1451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEsimState, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    const-string v0, "MiuiMasterClear"

    const-string/jumbo v1, "setEsimState: "

    .line 1453
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1456
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    const-string v0, "MiuiMasterClear"

    const-string v1, "getEsimGPIOState: "

    .line 1438
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1456
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private runCheckEsimStatusForDelete()V
    .locals 4

    const-string v0, "MiuiMasterClear"

    const-string/jumbo v1, "runCheckEsimStatusForDelete"

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mCheckEsimStatusForDeleteTask:Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 275
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 277
    :cond_0
    new-instance v0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;-><init>(Lcom/android/settings/MiuiMasterClear;Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask-IA;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mCheckEsimStatusForDeleteTask:Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;

    .line 278
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 279
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear;->mCheckEsimStatusForDeleteTask:Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private runFindDeviceCheckAndDoMasterClean()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mCheckFindDeviceStatusTask:Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 262
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 267
    :cond_1
    new-instance v0, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;-><init>(Lcom/android/settings/MiuiMasterClear;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mCheckFindDeviceStatusTask:Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 269
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 243
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 245
    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->master_clear_title:I

    .line 246
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p0

    return p0
.end method

.method private runRestrictionsChallenge()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->mHasBaseRestriction:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setESimStateIfNeed(I)V
    .locals 2

    .line 1420
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedESIMFeature()Z

    move-result v0

    const-string v1, "MiuiMasterClear"

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->showWipeEuicc()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1424
    :cond_0
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedSkipESIMSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Skip setting eSIM status"

    .line 1425
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1428
    :cond_1
    new-instance v0, Lcom/android/settings/MiuiMasterClear$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/MiuiMasterClear$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/MiuiMasterClear;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_2
    :goto_0
    const-string p0, "eSIM is not supported!"

    .line 1421
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showConfirmDialog()V
    .locals 4

    .line 725
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->clearSkipBackUp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 728
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->isShowOnce:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 729
    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->isShowOnce:Z

    .line 730
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 731
    sget v1, Lcom/android/settings/R$string;->dialog_backup_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 732
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 733
    sget v2, Lcom/android/settings/R$string;->clear_data_alert_info_pad:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/android/settings/R$string;->clear_data_alert_info:I

    .line 732
    :goto_0
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->backup_at_once:I

    new-instance v3, Lcom/android/settings/MiuiMasterClear$6;

    invoke-direct {v3, p0}, Lcom/android/settings/MiuiMasterClear$6;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    .line 734
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->continue_reset_factory:I

    new-instance v3, Lcom/android/settings/MiuiMasterClear$5;

    invoke-direct {v3, p0}, Lcom/android/settings/MiuiMasterClear$5;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    .line 745
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 751
    new-instance v1, Lcom/android/settings/MiuiMasterClear$7;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiMasterClear$7;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 757
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showFinalConfirmation()V
    .locals 4

    .line 854
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.MiuiMasterClearApplyActivity"

    .line 855
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v3, "format_internal_storage"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x39

    .line 857
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 858
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private showResetESimConfirmDialog()V
    .locals 4

    .line 552
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 553
    sget v1, Lcom/android/settings/R$string;->dialog_softbank_esim_wipe_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->dialog_softbank_esim_wipe_info:I

    .line 554
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->dialog_softbank_esim_wipe_ok:I

    new-instance v3, Lcom/android/settings/MiuiMasterClear$4;

    invoke-direct {v3, p0}, Lcom/android/settings/MiuiMasterClear$4;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    .line 555
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->dialog_softbank_esim_wipe_cancel:I

    new-instance v3, Lcom/android/settings/MiuiMasterClear$3;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/MiuiMasterClear$3;-><init>(Lcom/android/settings/MiuiMasterClear;Lmiuix/appcompat/app/AlertDialog$Builder;)V

    .line 567
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 575
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showWipeEuicc()Z
    .locals 4

    .line 1396
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1400
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->isEuiccEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    .line 1405
    :cond_1
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedESIMCustmized()Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_4

    .line 1406
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "euicc_provisioned"

    .line 1407
    invoke-static {p0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2

    .line 1408
    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method private shutFindDeviceDownAndShowFinalConfirm()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mShutDownFindDeviceTask:Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 285
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 287
    :cond_0
    new-instance v0, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;-><init>(Lcom/android/settings/MiuiMasterClear;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mShutDownFindDeviceTask:Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 289
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private startFactoryReset()V
    .locals 3

    .line 1042
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 1043
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1044
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.extra.WIPE_ESIMS"

    .line 1045
    iget-boolean v2, p0, Lcom/android/settings/MiuiMasterClear;->mEraseEsim:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1046
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static supportDeleteEsimRequireNetwork(Landroid/content/Context;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method private toggleScreenButtonState(Z)V
    .locals 1

    .line 1121
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_buttons_state"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private wipeFrpBlockDataAndDoMasterClear()V
    .locals 2

    .line 905
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/MiuiMasterClear$13;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiMasterClear$13;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiMasterClear;->wipeFrpBlockDataAndDoMasterClear(Landroid/app/Activity;Lcom/android/settings/MiuiMasterClear$WipeCallback;)V

    return-void
.end method


# virtual methods
.method public formatSdCardAndFactoryReset()V
    .locals 5

    .line 418
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 420
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 421
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 422
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    iget v3, v3, Landroid/os/storage/DiskInfo;->flags:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 428
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 429
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 430
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/settings/MiuiMasterClear$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/MiuiMasterClear$2;-><init>(Lcom/android/settings/MiuiMasterClear;Landroid/os/storage/StorageManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 436
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 438
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->startFactoryReset()V

    goto :goto_1

    .line 441
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->startFactoryReset()V

    :goto_1
    return-void
.end method

.method public getAllEsimProfiles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "MiuiMasterClear"

    .line 1660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "miui.telephony.TelephonyManagerEx"

    .line 1662
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAllEsimProfiles"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 1663
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "getDefault"

    new-array v5, v3, [Ljava/lang/Class;

    .line 1664
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1665
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 1667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllEsimProfiles error\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMccMncEnforcedWifi(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "MiuiMasterClear"

    .line 1691
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1692
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "EsimForceWifiCarrierList"

    invoke-static {p1, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1694
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    invoke-virtual {p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "mccmnc_enforced_wifi"

    .line 1695
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1696
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1697
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMccMncEnforcedWifi error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "getMccMncEnforcedWifi from network get a empty list"

    .line 1703
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    sget-object p0, Lcom/android/settings/MiuiMasterClear;->DEFALUT_MCC_MNC_ENFORCED_WIFI_SET:Ljava/util/Set;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 224
    const-class p0, Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSpnEnforcedWifi(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "MiuiMasterClear"

    .line 1673
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1674
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "EsimForceWifiCarrierList"

    invoke-static {p1, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1676
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    invoke-virtual {p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "spn_enforced_wifi"

    .line 1677
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1678
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1679
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpnEnforcedWifi error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "getSpnEnforcedWifi from network get a empty list"

    .line 1685
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    sget-object p0, Lcom/android/settings/MiuiMasterClear;->DEFALUT_SPN_ENFORCED_WIFI_SET:Ljava/util/Set;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 587
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3a

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 591
    iput-boolean v3, p0, Lcom/android/settings/MiuiMasterClear;->mClosingFindDevicePasswordVerified:Z

    :cond_1
    const/16 v0, 0x38

    if-ne p1, v0, :cond_3

    if-ne p2, v2, :cond_2

    .line 596
    iput-boolean v3, p0, Lcom/android/settings/MiuiMasterClear;->mPinConfirmed:Z

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0x39

    if-ne p1, v0, :cond_8

    if-ne p2, v2, :cond_6

    .line 601
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 605
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/settings/MiuiMasterClear;->toggleScreenButtonState(Z)V

    .line 606
    invoke-direct {p0, v1}, Lcom/android/settings/MiuiMasterClear;->enableStatusBar(Z)V

    .line 608
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 609
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->createFactoryResetDialog()V

    goto :goto_1

    .line 611
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->doFactoryReset()V

    goto :goto_1

    .line 614
    :cond_6
    iget p1, p0, Lcom/android/settings/MiuiMasterClear;->mESimInitialState:I

    if-ne p1, v3, :cond_7

    .line 615
    invoke-direct {p0, v3}, Lcom/android/settings/MiuiMasterClear;->setESimStateIfNeed(I)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    const/16 v0, 0x37

    if-eq p1, v0, :cond_9

    return-void

    :cond_9
    if-ne p2, v2, :cond_d

    .line 625
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->isNeedPassWord()Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz p3, :cond_a

    const-string/jumbo p1, "password"

    .line 626
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 627
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 628
    invoke-static {}, Lcom/android/settings/AESUtil;->getDefaultAESKeyPlaintext()Ljava/lang/String;

    move-result-object p2

    .line 630
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/settings/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear;->mPassWord:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "MiuiMasterClear"

    .line 632
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_a
    :goto_2
    iget-boolean p1, p0, Lcom/android/settings/MiuiMasterClear;->needCleanWallet:Z

    if-eqz p1, :cond_b

    .line 637
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->cleanWalletData()V

    goto :goto_3

    .line 639
    :cond_b
    iput-boolean v3, p0, Lcom/android/settings/MiuiMasterClear;->needShowBackupDialg:Z

    .line 640
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 641
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/MiuiMasterClear$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/settings/MiuiMasterClear$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 643
    :cond_c
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->showConfirmDialog()V

    :cond_d
    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 341
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "need_show_backup_dialg"

    .line 343
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/MiuiMasterClear;->needShowBackupDialg:Z

    .line 345
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 346
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    const/4 p1, 0x1

    .line 348
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 349
    sget v1, Lcom/android/settings/R$xml;->master_clear:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 351
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/MiuiMasterClear;->mUserId:I

    const-string v1, "erase_application"

    .line 352
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroidx/preference/CheckBoxPreference;

    const-string v1, "erase_external_storage"

    .line 353
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v1, "remove_sd_data_check"

    .line 354
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiMasterClear;->mSdCardCheckPreference:Landroidx/preference/CheckBoxPreference;

    const-string v1, "erase_optional"

    .line 356
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    const-string/jumbo v2, "support_erase_application"

    .line 357
    invoke-static {v2, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 358
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 359
    iput-object v3, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroidx/preference/CheckBoxPreference;

    .line 362
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    .line 365
    invoke-static {}, Lcom/android/settings/MiuiMasterClear;->isRemoveEraseExternalStorage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 366
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 367
    iput-object v3, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroidx/preference/CheckBoxPreference;

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 369
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroidx/preference/CheckBoxPreference;

    sget v4, Lcom/android/settings/R$string;->erase_internal_storage:I

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(I)V

    .line 370
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroidx/preference/CheckBoxPreference;

    sget v4, Lcom/android/settings/R$string;->erase_internal_storage_description:I

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setSummary(I)V

    .line 383
    :cond_4
    :goto_0
    sget-boolean v2, Lcom/android/settings/RegionUtils;->IS_JP_SB:Z

    if-nez v2, :cond_5

    .line 384
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mSdCardCheckPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 385
    iput-object v3, p0, Lcom/android/settings/MiuiMasterClear;->mSdCardCheckPreference:Landroidx/preference/CheckBoxPreference;

    .line 388
    :cond_5
    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroidx/preference/CheckBoxPreference;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroidx/preference/CheckBoxPreference;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mSdCardCheckPreference:Landroidx/preference/CheckBoxPreference;

    if-nez v2, :cond_6

    .line 389
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 392
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "clear_all"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->mIsClearAll:Z

    if-eqz v0, :cond_9

    .line 394
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mEraseExternalStorage:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    .line 395
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 397
    :cond_7
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_8

    .line 398
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->createFactoryResetDialog()V

    goto :goto_1

    .line 400
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->doFactoryReset()V

    .line 404
    :cond_9
    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.miui.tsmclient.action.CLEAN_SE_SERVICE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.tsmclient"

    .line 405
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 407
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear;->remoteConnection:Landroid/content/ServiceConnection;

    const/16 v1, 0x201

    invoke-virtual {v0, p1, p0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_a
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 447
    sget v0, Lcom/android/settings/R$layout;->remove_all_data_lyt:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 449
    sget v2, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 450
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 451
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 452
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 453
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 454
    instance-of p2, p1, Lmiuix/springback/view/SpringBackLayout;

    if-eqz p2, :cond_0

    .line 455
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    const-string p1, "erase_optional"

    .line 457
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->device_params_padding_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 458
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p2, p3, p1, v2, v1}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 461
    :cond_2
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 462
    sget p1, Lcom/android/settings/R$id;->reset_confirm_directory_text:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 463
    sget p2, Lcom/android/settings/R$string;->reset_confirm_directory_pad:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 466
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->initClearList(Landroid/view/View;)V

    .line 468
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "enable_demo_mode"

    invoke-static {p1, p2, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    .line 470
    sget p2, Lcom/android/settings/R$id;->clear_all_data_text:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 472
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-string v2, "disallow_factoryreset"

    invoke-static {p3, v2}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 474
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object p3

    invoke-interface {p3, v2}, Lmiui/enterprise/IRestrictionsHelper;->isRestriction(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    xor-int/lit8 p1, p1, 0x1

    .line 480
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    const-string p1, "MiuiMasterClear"

    const-string p3, "Device is in enterprise mode, factory reset is restricted by enterprise!"

    .line 476
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 482
    :goto_2
    new-instance p1, Lcom/android/settings/MiuiMasterClear$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/MiuiMasterClear$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/MiuiMasterClear;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 1063
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mFactoryResetDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mCheckFindDeviceStatusTask:Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1068
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1069
    iput-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mCheckFindDeviceStatusTask:Lcom/android/settings/MiuiMasterClear$CheckFindDeviceStatusTask;

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mShutDownFindDeviceTask:Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;

    if-eqz v0, :cond_2

    .line 1073
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1074
    iput-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mShutDownFindDeviceTask:Lcom/android/settings/MiuiMasterClear$ShutDownFindDeviceTask;

    .line 1077
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;

    if-eqz v0, :cond_3

    .line 1078
    invoke-interface {v0, v1}, Landroid/accounts/AccountManagerFuture;->cancel(Z)Z

    .line 1079
    iput-object v2, p0, Lcom/android/settings/MiuiMasterClear;->mAccountManagerFuture:Landroid/accounts/AccountManagerFuture;

    .line 1082
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1083
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear;->remoteConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1085
    :cond_4
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mCheckEsimStatusForDeleteTask:Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;

    if-eqz v0, :cond_5

    .line 1086
    invoke-virtual {v0}, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->unregisterReceiver()V

    .line 1088
    :cond_5
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 1089
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1091
    :cond_6
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "miui_security_fragment_result"

    .line 651
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    if-nez v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 656
    iput-boolean v3, p0, Lcom/android/settings/MiuiMasterClear;->mClosingFindDevicePasswordVerified:Z

    :cond_1
    const/16 v1, 0x38

    if-ne p1, v1, :cond_3

    if-nez v0, :cond_2

    .line 662
    iput-boolean v3, p0, Lcom/android/settings/MiuiMasterClear;->mPinConfirmed:Z

    :cond_2
    return-void

    :cond_3
    const/16 v1, 0x39

    if-ne p1, v1, :cond_8

    if-nez v0, :cond_6

    .line 667
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 671
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/settings/MiuiMasterClear;->toggleScreenButtonState(Z)V

    .line 672
    invoke-direct {p0, v2}, Lcom/android/settings/MiuiMasterClear;->enableStatusBar(Z)V

    .line 674
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear;->mEraseApplication:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 675
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->createFactoryResetDialog()V

    goto :goto_1

    .line 677
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->doFactoryReset()V

    goto :goto_1

    .line 680
    :cond_6
    iget p1, p0, Lcom/android/settings/MiuiMasterClear;->mESimInitialState:I

    if-ne p1, v3, :cond_7

    .line 681
    invoke-direct {p0, v3}, Lcom/android/settings/MiuiMasterClear;->setESimStateIfNeed(I)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    const/16 v1, 0x37

    if-eq p1, v1, :cond_9

    return-void

    :cond_9
    if-nez v0, :cond_b

    .line 691
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->isNeedPassWord()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string/jumbo p1, "password"

    .line 692
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 693
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 694
    invoke-static {}, Lcom/android/settings/AESUtil;->getDefaultAESKeyPlaintext()Ljava/lang/String;

    move-result-object p2

    .line 696
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/settings/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear;->mPassWord:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "MiuiMasterClear"

    .line 698
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->runFindDeviceCheckAndDoMasterClean()V

    :cond_b
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1056
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 1057
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->toggleScreenButtonState(Z)V

    const/4 v0, 0x1

    .line 1058
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->enableStatusBar(Z)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1096
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1097
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/MiuiMasterClear;->mUserId:I

    const-string/jumbo v2, "no_factory_reset"

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiMasterClear;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 1099
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/MiuiMasterClear;->mUserId:I

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->mHasBaseRestriction:Z

    .line 1103
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->mPinConfirmed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1104
    iput-boolean v1, p0, Lcom/android/settings/MiuiMasterClear;->mPinConfirmed:Z

    const/16 v0, 0x37

    .line 1105
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiMasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1106
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->runFindDeviceCheckAndDoMasterClean()V

    .line 1110
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->mClosingFindDevicePasswordVerified:Z

    if-eqz v0, :cond_1

    .line 1111
    iput-boolean v1, p0, Lcom/android/settings/MiuiMasterClear;->mClosingFindDevicePasswordVerified:Z

    .line 1112
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->shutFindDeviceDownAndShowFinalConfirm()V

    .line 1115
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/MiuiMasterClear;->needShowBackupDialg:Z

    if-eqz v0, :cond_2

    .line 1116
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->showConfirmDialog()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 229
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "need_show_backup_dialg"

    .line 231
    iget-boolean p0, p0, Lcom/android/settings/MiuiMasterClear;->needShowBackupDialg:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public wipeFrpBlockDataAndDoMasterClear(Landroid/app/Activity;Lcom/android/settings/MiuiMasterClear$WipeCallback;)V
    .locals 2

    .line 940
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "persistent_data_block"

    .line 945
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz v0, :cond_1

    .line 946
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 947
    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    new-instance v1, Lcom/android/settings/MiuiMasterClear$14;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/settings/MiuiMasterClear$14;-><init>(Lcom/android/settings/MiuiMasterClear;Landroid/service/persistentdata/PersistentDataBlockManager;Landroid/app/Activity;Lcom/android/settings/MiuiMasterClear$WipeCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 983
    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 986
    invoke-interface {p2}, Lcom/android/settings/MiuiMasterClear$WipeCallback;->onWipeFinished()V

    goto :goto_0

    .line 988
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MiuiMasterClear;->doMasterClear()V

    :goto_0
    return-void
.end method
