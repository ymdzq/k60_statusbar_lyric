.class public Lcom/android/settings/device/MiuiMyDeviceSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MiuiMyDeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/device/MiuiMyDeviceSettings$ReadVersionTask;
    }
.end annotation


# static fields
.field public static final DEVICE_MODEL_ORDER:I

.field public static final DEVICE_NAME_ORDER:I


# instance fields
.field private mCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceBasicInfoPresenter:Lcom/android/settings/device/DeviceBasicInfoPresenter;

.field mDeviceNameCardView:Lcom/android/settings/device/MiuiDeviceNameCard;

.field private mGridViewRoot:Landroid/view/View;

.field mGuaranteeCardView:Lcom/android/settings/device/MiuiGuaranteeCard;

.field private mIsNeedShowAndroid12:Z

.field private mIsOwnerUser:Z

.field mMallCard:Lcom/android/settings/device/MiuiDeviceBenefitsCard;

.field mMemoryCardView:Lcom/android/settings/device/MiuiMemoryCard;

.field private mMiuiDesktopModeGuideSettingsObserver:Landroid/database/ContentObserver;

.field private mParamsCallback:Ljava/lang/Runnable;

.field private mRootView:Landroid/view/View;

.field mVersionCardView:Lcom/android/settings/device/MiuiVersionCard;


# direct methods
.method public static synthetic $r8$lambda$_Ys-ZP-C9RGhFXKPUE71_gBTexA(Lcom/android/settings/device/MiuiMyDeviceSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMyDeviceSettings;->lambda$updateCpuIconIfNeed$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceBasicInfoPresenter(Lcom/android/settings/device/MiuiMyDeviceSettings;)Lcom/android/settings/device/DeviceBasicInfoPresenter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mDeviceBasicInfoPresenter:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGridViewRoot(Lcom/android/settings/device/MiuiMyDeviceSettings;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mGridViewRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsNeedShowAndroid12(Lcom/android/settings/device/MiuiMyDeviceSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mIsNeedShowAndroid12:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 84
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->hasMarketName()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput v0, Lcom/android/settings/device/MiuiMyDeviceSettings;->DEVICE_MODEL_ORDER:I

    .line 85
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->hasMarketName()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    sput v1, Lcom/android/settings/device/MiuiMyDeviceSettings;->DEVICE_NAME_ORDER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 71
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.miui.ui.version.code"

    .line 72
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mIsNeedShowAndroid12:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mCards:Ljava/util/List;

    .line 88
    new-instance v0, Lcom/android/settings/device/MiuiMyDeviceSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/device/MiuiMyDeviceSettings$1;-><init>(Lcom/android/settings/device/MiuiMyDeviceSettings;)V

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mParamsCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/device/MiuiMyDeviceSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private adjustBackgroundForOverlay()V
    .locals 2

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->my_device_background_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method private initCardView()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mVersionCardView:Lcom/android/settings/device/MiuiVersionCard;

    invoke-virtual {v0, p0}, Lcom/android/settings/device/MiuiVersionCard;->setFragment(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mDeviceNameCardView:Lcom/android/settings/device/MiuiDeviceNameCard;

    invoke-virtual {v0, p0}, Lcom/android/settings/device/MiuiDeviceNameCard;->setFragment(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mMemoryCardView:Lcom/android/settings/device/MiuiMemoryCard;

    invoke-virtual {v0, p0}, Lcom/android/settings/device/MiuiMemoryCard;->setFragment(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mGuaranteeCardView:Lcom/android/settings/device/MiuiGuaranteeCard;

    invoke-virtual {v0, p0}, Lcom/android/settings/device/MiuiGuaranteeCard;->setFragment(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mMallCard:Lcom/android/settings/device/MiuiDeviceBenefitsCard;

    invoke-virtual {v0, p0}, Lcom/android/settings/device/MiuiDeviceBenefitsCard;->setFragment(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mCards:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mDeviceNameCardView:Lcom/android/settings/device/MiuiDeviceNameCard;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mCards:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mMemoryCardView:Lcom/android/settings/device/MiuiMemoryCard;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mVersionCardView:Lcom/android/settings/device/MiuiVersionCard;

    invoke-virtual {v0}, Lcom/android/settings/device/MiuiVersionCard;->refreshUpdateStatus()V

    .line 252
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mDeviceNameCardView:Lcom/android/settings/device/MiuiDeviceNameCard;

    invoke-virtual {v0}, Lcom/android/settings/device/MiuiDeviceNameCard;->refreshDeviceName()V

    .line 253
    iget-boolean v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mIsNeedShowAndroid12:Z

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Lcom/android/settings/device/MiuiMyDeviceSettings$ReadVersionTask;

    invoke-direct {v0, p0}, Lcom/android/settings/device/MiuiMyDeviceSettings$ReadVersionTask;-><init>(Lcom/android/settings/device/MiuiMyDeviceSettings;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateCpuIconIfNeed$0()V
    .locals 0

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->queryAndUpdateCpuIcon(Landroid/content/Context;)V

    return-void
.end method

.method private onChangeMaintenancePreference()V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/device/MiuiMyDeviceSettings;->AllowRegisterContenObserverMiuiDktMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->showingMiuiDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "maintenancemode_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 161
    :cond_1
    new-instance v0, Lcom/android/settings/device/MiuiMyDeviceSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/device/MiuiMyDeviceSettings$2;-><init>(Lcom/android/settings/device/MiuiMyDeviceSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mMiuiDesktopModeGuideSettingsObserver:Landroid/database/ContentObserver;

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_dkt_mode"

    .line 177
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mMiuiDesktopModeGuideSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private triggerSystemUpdate()V
    .locals 4

    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getUpdateInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MiuiMyDeviceSettings"

    const-string/jumbo v1, "trigger system update"

    .line 361
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 363
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.updater"

    const-string v3, "com.android.updater.UpdateService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "extra_command"

    const/4 v2, 0x1

    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "UpdateService.who"

    .line 365
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private updateCpuIconIfNeed()V
    .locals 1

    .line 194
    new-instance v0, Lcom/android/settings/device/MiuiMyDeviceSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/device/MiuiMyDeviceSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/device/MiuiMyDeviceSettings;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public AllowRegisterContenObserverMiuiDktMode()Z
    .locals 1

    .line 181
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportMiuiDesktopMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 183
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "zh-CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v1, Lcom/android/settings/device/controller/MiuiVersionController;

    invoke-direct {v1, p1}, Lcom/android/settings/device/controller/MiuiVersionController;-><init>(Landroid/content/Context;)V

    .line 302
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/device/controller/BaseDeviceInfoController;->setIsAvailable(Z)V

    .line 303
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v1, Lcom/android/settings/device/controller/MiuiFirmwareVersionController;

    invoke-direct {v1, p1}, Lcom/android/settings/device/controller/MiuiFirmwareVersionController;-><init>(Landroid/content/Context;)V

    .line 306
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/device/controller/BaseDeviceInfoController;->setIsAvailable(Z)V

    .line 307
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v1, Lcom/android/settings/device/controller/MiuiDeviceSecurityPatchController;

    invoke-direct {v1, p1}, Lcom/android/settings/device/controller/MiuiDeviceSecurityPatchController;-><init>(Landroid/content/Context;)V

    .line 310
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/device/controller/BaseDeviceInfoController;->setIsAvailable(Z)V

    .line 311
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v1, Lcom/android/settings/device/controller/MiuiAllSpecsController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/device/controller/MiuiAllSpecsController;-><init>(Landroid/content/Context;Lcom/android/settings/device/MiuiMyDeviceSettings;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v1, Lcom/android/settings/device/controller/MiuiBackupController;

    invoke-direct {v1, p1}, Lcom/android/settings/device/controller/MiuiBackupController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v1, Lcom/android/settings/device/controller/MiuiOneKeyMirgrateController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/android/settings/device/controller/MiuiOneKeyMirgrateController;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance p0, Lcom/android/settings/device/controller/MiuiFactoryResetController;

    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/MiuiFactoryResetController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance p0, Lcom/android/settings/device/controller/MiuiTransferRecordController;

    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/MiuiTransferRecordController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance p0, Lcom/android/settings/device/controller/MaintenanceModeController;

    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/MaintenanceModeController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance p0, Lcom/android/settings/device/controller/MiuiCredentialsController;

    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/MiuiCredentialsController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance p0, Lcom/android/settings/device/controller/MiuiCareController;

    const-string v1, "after_sale_service"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/device/controller/MiuiCareController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance p0, Lcom/android/settings/device/controller/MiuiCareController;

    const-string/jumbo v1, "trade_in"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/device/controller/MiuiCareController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 295
    const-class p0, Lcom/android/settings/device/MiuiMyDeviceSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 201
    const-class p0, Lcom/android/settings/device/MiuiMyDeviceSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 290
    sget p0, Lcom/android/settings/R$xml;->my_device_settings:I

    return p0
.end method

.method public getPresenter()Lcom/android/settings/device/DeviceBasicInfoPresenter;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mDeviceBasicInfoPresenter:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$style;->ThemeMiuiSettings_MiuiSettings_MyDevice:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMyDeviceSettings;->updateCpuIconIfNeed()V

    .line 107
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mIsOwnerUser:Z

    .line 108
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 109
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isShowMyDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->my_device:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->about_settings:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 114
    :goto_1
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_2

    .line 115
    new-instance p1, Lcom/android/settings/device/DeviceBasicInfoPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mDeviceBasicInfoPresenter:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    .line 117
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMyDeviceSettings;->triggerSystemUpdate()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 122
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/MiuiUtils;->updateFragmentView(Landroid/app/Activity;Landroid/view/View;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mRootView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 126
    sget v0, Lcom/android/settings/R$layout;->my_device_settings:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mRootView:Landroid/view/View;

    .line 129
    sget v2, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 130
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 131
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 134
    instance-of p3, p2, Lmiuix/springback/view/SpringBackLayout;

    if-eqz p3, :cond_1

    .line 135
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 136
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p3

    invoke-virtual {p1, p2, v1, p3, v1}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->device_params:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mGridViewRoot:Landroid/view/View;

    const/16 p2, 0x8

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->miui_version_card_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/device/MiuiVersionCard;

    iput-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mVersionCardView:Lcom/android/settings/device/MiuiVersionCard;

    .line 142
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->device_name_card_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/device/MiuiDeviceNameCard;

    iput-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mDeviceNameCardView:Lcom/android/settings/device/MiuiDeviceNameCard;

    .line 143
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->device_memory_card_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/device/MiuiMemoryCard;

    iput-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mMemoryCardView:Lcom/android/settings/device/MiuiMemoryCard;

    .line 144
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->device_guarantee_card_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/device/MiuiGuaranteeCard;

    iput-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mGuaranteeCardView:Lcom/android/settings/device/MiuiGuaranteeCard;

    .line 145
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mRootView:Landroid/view/View;

    sget p2, Lcom/android/settings/R$id;->device_mall_card_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/device/MiuiDeviceBenefitsCard;

    iput-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mMallCard:Lcom/android/settings/device/MiuiDeviceBenefitsCard;

    .line 147
    iget-object p1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mParamsCallback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/device/DeviceParamsManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/DeviceParamsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mParamsCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/android/settings/device/DeviceParamsManager;->setCallback(Ljava/lang/Runnable;)V

    .line 150
    :cond_2
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 285
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 271
    invoke-super {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mRootView:Landroid/view/View;

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 264
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo p0, "provision_about_page_v85x"

    .line 266
    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 206
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string/jumbo v0, "provision_about_page_v85x"

    .line 207
    invoke-static {v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPageStart(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mMemoryCardView:Lcom/android/settings/device/MiuiMemoryCard;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/android/settings/device/MiuiMemoryCard;->getCallBack()Lcom/android/settings/device/MemoryInfoHelper$Callback;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/device/MemoryInfoHelper;->getAvailableMemorySize(Lcom/android/settings/device/MemoryInfoHelper$Callback;)V

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMyDeviceSettings;->initCardView()V

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/device/DeviceParamsManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/DeviceParamsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mParamsCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/settings/device/DeviceParamsManager;->setCallback(Ljava/lang/Runnable;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 219
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 221
    :cond_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->my_device_background_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBar;->getExpandTitle()Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMyDeviceSettings;->adjustBackgroundForOverlay()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 188
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mMallCard:Lcom/android/settings/device/MiuiDeviceBenefitsCard;

    invoke-virtual {v0}, Lcom/android/settings/device/MiuiDeviceBenefitsCard;->initMallCard()V

    .line 190
    invoke-direct {p0}, Lcom/android/settings/device/MiuiMyDeviceSettings;->onChangeMaintenancePreference()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 277
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mMiuiDesktopModeGuideSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceSettings;->mMiuiDesktopModeGuideSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
