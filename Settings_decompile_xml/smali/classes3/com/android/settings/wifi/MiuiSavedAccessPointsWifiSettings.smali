.class public Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSavedAccessPointsWifiSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/SavedAccessPointPreference$OnLongClickListener;
.implements Lcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack;
    }
.end annotation


# instance fields
.field private isInActinoMode:Z

.field private mAccessPointPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/SavedAccessPointPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

.field private mEditActionMode:Landroid/view/ActionMode;

.field private mIsDismiss:Z

.field private mIsSelectConfigsNum:I

.field private mMainHandler:Landroid/os/Handler;

.field private mPreferenceGroup:Landroidx/preference/PreferenceCategory;

.field private mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

.field mWifiEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$XfuZ-8tb9ldB9kG3pmPWI9FEPH0(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->lambda$deleteSavedConfig$2(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lwcaweApPLHYNh-9Gbp7d1UZt1g(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->lambda$showDeleteDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pi36TPmczjpjGUj8sc0lb5S9-Xk(Ljava/lang/String;Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->lambda$updateUI$0(Ljava/lang/String;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccessPointPreferenceList(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mAccessPointPreferenceList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEditActionMode(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)Landroid/view/ActionMode;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mEditActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSelectConfigsNum(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mIsSelectConfigsNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisInActinoMode(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->isInActinoMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEditActionMode(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Landroid/view/ActionMode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mEditActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSelectConfigsNum(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mIsSelectConfigsNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteSavedConfig(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->deleteSavedConfig(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteSavedConfigs(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->deleteSavedConfigs()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCheckedNum(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getCheckedNum()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misAllChecked(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->isAllChecked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetAllBtnsChecked(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->setAllBtnsChecked(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInActionMode(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->setInActionMode(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateActionModeTitle(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->updateActionModeTitle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUI(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->updateUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mIsSelectConfigsNum:I

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mIsDismiss:Z

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mWifiEntries:Ljava/util/List;

    return-void
.end method

.method private canModifyNetWork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private deleteSavedConfig(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 6

    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/AutoConnectUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/AutoConnectUtils;

    move-result-object v0

    .line 266
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 267
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getCheckedNum()I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mIsSelectConfigsNum:I

    const-string v2, "MiuiSavedAccessPointsWifiSettings"

    if-nez v1, :cond_3

    .line 269
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 270
    invoke-virtual {p1, v3}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WPA/WPA2/WPA3-Personal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$$ExternalSyntheticLambda2;

    invoke-direct {v4, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 273
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 274
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 276
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    const/4 v5, 0x4

    .line 277
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v4}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    if-nez v1, :cond_3

    return-void

    :cond_2
    const-string p0, "Deleted config failed, wifiConfig is null."

    .line 286
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 291
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->canModifyNetWork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string p0, "Deleted config failed, wifiConfig is lockdown."

    .line 292
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 295
    :cond_4
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/AutoConnectUtils;->isAutoConnect(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 296
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settings/wifi/AutoConnectUtils;->enableAutoConnect(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 298
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/wifi/AutoConnectUtils;->removeNoSecretWifi(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

    if-eqz v0, :cond_6

    .line 300
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v2}, Landroid/net/wifi/AmlMiuiWifiManager;->notifyConfigDeleted(I)V

    .line 302
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v2, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$3;-><init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method private deleteSavedConfigs()V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mAccessPointPreferenceList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 327
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/SavedAccessPointPreference;

    .line 328
    invoke-virtual {v1}, Lcom/android/settings/wifi/SavedAccessPointPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    invoke-virtual {v1}, Lcom/android/settings/wifi/SavedAccessPointPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->isOperatorForbidDelSsid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->deleteSavedConfig(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCheckedNum()I
    .locals 2

    .line 487
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mAccessPointPreferenceList:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 488
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/SavedAccessPointPreference;

    .line 489
    invoke-virtual {v1}, Lcom/android/settings/wifi/SavedAccessPointPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isAllChecked()Z
    .locals 1

    .line 451
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mAccessPointPreferenceList:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 452
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/SavedAccessPointPreference;

    .line 453
    invoke-virtual {v0}, Lcom/android/settings/wifi/SavedAccessPointPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isAllUnChecked()Z
    .locals 1

    .line 462
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mAccessPointPreferenceList:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 463
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/SavedAccessPointPreference;

    .line 464
    invoke-virtual {v0}, Lcom/android/settings/wifi/SavedAccessPointPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isOperatorForbidDelSsid(Ljava/lang/String;)Z
    .locals 0

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/wifi/operatorutils/OperatorFactory;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/operatorutils/Operator;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/operatorutils/Operator;->isForbidDelSsid(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$deleteSavedConfig$2(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    .line 273
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$showDeleteDialog$1(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    .line 256
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mIsDismiss:Z

    return-void
.end method

.method private static synthetic lambda$updateUI$0(Ljava/lang/String;Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 150
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private setAllBtnsChecked(Z)V
    .locals 1

    .line 473
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mAccessPointPreferenceList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 474
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/SavedAccessPointPreference;

    .line 475
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/SavedAccessPointPreference;->setBtnChecked(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setInActionMode(Z)V
    .locals 1

    .line 340
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->isInActinoMode:Z

    .line 341
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mAccessPointPreferenceList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 342
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/SavedAccessPointPreference;

    .line 343
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/SavedAccessPointPreference;->setActionMode(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateActionModeTitle()V
    .locals 4

    .line 481
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mEditActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$plurals;->saved_network_checked_num:I

    .line 482
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getCheckedNum()I

    move-result v3

    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->getCheckedNum()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 481
    invoke-virtual {v1, v2, v3, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateUI()V
    .locals 9

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mPreferenceGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 148
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mPreferenceGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 149
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mWifiEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 150
    invoke-interface {v5}, Ljava/util/stream/Stream;->count()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 151
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mPreferenceGroup:Landroidx/preference/PreferenceCategory;

    .line 156
    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/SavedAccessPointPreference;

    .line 157
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mPreferenceGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 158
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mAccessPointPreferenceList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifitrackerlib/WifiEntry;

    .line 164
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mPreferenceGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_3

    .line 165
    new-instance v3, Lcom/android/settings/wifi/SavedAccessPointPreference;

    invoke-direct {v3, v2, v0}, Lcom/android/settings/wifi/SavedAccessPointPreference;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/content/Context;)V

    .line 166
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v3, p0}, Lcom/android/settings/wifi/SavedAccessPointPreference;->setLongClickListener(Lcom/android/settings/wifi/SavedAccessPointPreference$OnLongClickListener;)V

    .line 169
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mPreferenceGroup:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 170
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mAccessPointPreferenceList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 86
    const-class p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->updateUI()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    sget p1, Lcom/android/settings/R$xml;->saved_wifi:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "access_points"

    .line 93
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mPreferenceGroup:Landroidx/preference/PreferenceCategory;

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mAccessPointPreferenceList:Ljava/util/List;

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    const-string/jumbo p1, "wifi"

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p1, "AmlMiuiWifiService"

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/AmlMiuiWifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

    .line 103
    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiuiSavedAccessPointsWifiSettings{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    .line 106
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 107
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mMainHandler:Landroid/os/Handler;

    .line 108
    new-instance v8, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$1;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v8, p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$1;-><init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Ljava/time/ZoneId;)V

    .line 114
    new-instance p1, Lcom/android/wifitrackerlib/SavedNetworkTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/ConnectivityManager;

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    .line 118
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v9, 0x3a98

    const-wide/16 v11, 0x2710

    move-object v1, p1

    move-object v13, p0

    invoke-direct/range {v1 .. v13}, Lcom/android/wifitrackerlib/SavedNetworkTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 138
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 139
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onDeteleBtnClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->isInActinoMode:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 233
    :cond_0
    instance-of v0, p1, Lcom/android/settings/wifi/SavedAccessPointPreference;

    if-eqz v0, :cond_1

    .line 234
    check-cast p1, Lcom/android/settings/wifi/SavedAccessPointPreference;

    invoke-virtual {p1}, Lcom/android/settings/wifi/SavedAccessPointPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->showDeleteDialog(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceLongClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 217
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->isInActinoMode:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack;-><init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$ActionModeCallBack-IA;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 221
    instance-of p0, p1, Lcom/android/settings/wifi/SavedAccessPointPreference;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 222
    check-cast p1, Lcom/android/settings/wifi/SavedAccessPointPreference;

    .line 223
    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/SavedAccessPointPreference;->setBtnChecked(Z)V

    :cond_1
    return v0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 2

    .line 178
    instance-of v0, p2, Lcom/android/settings/wifi/SavedAccessPointPreference;

    if-eqz v0, :cond_4

    .line 179
    check-cast p2, Lcom/android/settings/wifi/SavedAccessPointPreference;

    .line 180
    iget-boolean p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->isInActinoMode:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 181
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mEditActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v1, Lcom/android/settings/R$id;->delete:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 182
    invoke-virtual {p2}, Lcom/android/settings/wifi/SavedAccessPointPreference;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    .line 183
    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/SavedAccessPointPreference;->setBtnChecked(Z)V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->updateActionModeTitle()V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->isAllUnChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mEditActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz p1, :cond_3

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->saved_wifi:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->isAllChecked()Z

    move-result p1

    const/4 p2, 0x0

    const v1, 0x102001a    # @android:id/button2

    if-eqz p1, :cond_1

    .line 194
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mEditActionMode:Landroid/view/ActionMode;

    check-cast p0, Lmiuix/view/EditActionMode;

    sget p1, Lcom/android/settings/R$drawable;->miuix_action_icon_deselect_all_light:I

    invoke-interface {p0, v1, p2, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 198
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mEditActionMode:Landroid/view/ActionMode;

    check-cast p0, Lmiuix/view/EditActionMode;

    sget p1, Lcom/android/settings/R$drawable;->miuix_action_icon_select_all_dark:I

    invoke-interface {p0, v1, p2, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mEditActionMode:Landroid/view/ActionMode;

    check-cast p0, Lmiuix/view/EditActionMode;

    sget p1, Lcom/android/settings/R$drawable;->miuix_action_icon_select_all_light:I

    invoke-interface {p0, v1, p2, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    :cond_3
    :goto_0
    return v0

    .line 211
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 133
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onSavedWifiEntriesChanged()V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mSavedNetworkTracker:Lcom/android/wifitrackerlib/SavedNetworkTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/SavedNetworkTracker;->getSavedWifiEntries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mWifiEntries:Ljava/util/List;

    .line 505
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->isInActinoMode:Z

    if-nez v0, :cond_0

    .line 506
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->updateUI()V

    :cond_0
    return-void
.end method

.method public onSubscriptionWifiEntriesChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onWifiStateChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public showDeleteDialog(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 5

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/settings/R$string;->wifi_ssid:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/settings/R$string;->wifi_security:I

    .line 243
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v3, Lcom/android/settings/R$string;->delete_saved_network:I

    .line 246
    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 247
    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->wifi_menu_forget:I

    new-instance v3, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$2;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$2;-><init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 248
    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->wifi_setup_cancel:I

    const/4 v3, 0x0

    .line 254
    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;)V

    .line 255
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    .line 258
    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mIsDismiss:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->isOperatorForbidDelSsid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 259
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->mIsDismiss:Z

    .line 260
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
