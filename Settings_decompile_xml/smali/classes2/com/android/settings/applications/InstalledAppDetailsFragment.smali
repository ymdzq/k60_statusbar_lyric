.class public Lcom/android/settings/applications/InstalledAppDetailsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InstalledAppDetailsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/InstalledAppDetailsFragment$CheckKillProcessesReceiver;,
        Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;,
        Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver;,
        Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;,
        Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;,
        Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;,
        Lcom/android/settings/applications/InstalledAppDetailsFragment$PackageMoveObserver;
    }
.end annotation


# instance fields
.field private mAlwaysEnabledAppList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

.field private mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFinishEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mItemFinish:Landroid/view/MenuItem;

.field private mItemUninstall:Landroid/view/MenuItem;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMiHomeManager:Lcom/android/settings/cust/MiHomeManager;

.field private mMoveInProgress:Z

.field private mNeedRefreshFloatingWindow:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPrefAppInfo:Lcom/android/settings/applications/AppInfoPreference;

.field private mPrefApplicationSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mPrefCacheSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mPrefClearCache:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

.field private mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

.field private mPrefClearDefaultSettings:Landroidx/preference/Preference;

.field private mPrefDataSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mPrefExternalCodeSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mPrefExternalDataSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mPrefFloatingWindowSwitch:Landroidx/preference/CheckBoxPreference;

.field private mPrefNotificationSwitch:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mPrefPermissionDetailInfo:Landroidx/preference/Preference;

.field private mPrefPermissionManage:Landroidx/preference/Preference;

.field private mPrefPermissionSettings:Landroidx/preference/Preference;

.field private mPrefTotalSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mShowMenus:Z

.field private mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mUninstallEnable:Z

.field private mUninstallIconRes:I

.field private mUninstallTextRes:I

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field mUserId:I


# direct methods
.method public static synthetic $r8$lambda$FASe2rjqtr2s-fbl7URdzVkBQMA(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->lambda$setIntentAndFinish$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppEntry(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/content/pm/IPackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefClearData(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settingslib/miuisettings/preference/ButtonPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefFloatingWindowSwitch(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNeedRefreshFloatingWindow(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mNeedRefreshFloatingWindow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mforceStopPackage(Lcom/android/settings/applications/InstalledAppDetailsFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMoveErrMsg(Lcom/android/settings/applications/InstalledAppDetailsFragment;I)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhasRelativeXSpaceApp(Lcom/android/settings/applications/InstalledAppDetailsFragment;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->hasRelativeXSpaceApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minitiateClearUserData(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initiateClearUserData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnoNeedToProtect(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->noNeedToProtect()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mprocessClearMsg(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessMoveMsg(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFloatingWindowEnabled(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setFloatingWindowEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetIntentAndFinish(Lcom/android/settings/applications/InstalledAppDetailsFragment;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDialogInner(Lcom/android/settings/applications/InstalledAppDetailsFragment;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$muninstallPkg(Lcom/android/settings/applications/InstalledAppDetailsFragment;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->uninstallPkg(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateForceStopButton(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateForceStopButton(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMoveInProgress:Z

    .line 147
    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUpdatedSysApp:Z

    const/4 v1, 0x1

    .line 150
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanClearData:Z

    .line 153
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mNeedRefreshFloatingWindow:Z

    .line 157
    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mFinishEnable:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallEnable:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mShowMenus:Z

    .line 163
    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHaveSizes:Z

    const-wide/16 v0, -0x1

    .line 164
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCodeSize:J

    .line 165
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastDataSize:J

    .line 166
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalCodeSize:J

    .line 167
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalDataSize:J

    .line 168
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCacheSize:J

    .line 169
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastTotalSize:J

    .line 205
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHandler:Landroid/os/Handler;

    .line 1463
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$CheckKillProcessesReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment$CheckKillProcessesReceiver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;Lcom/android/settings/applications/InstalledAppDetailsFragment$CheckKillProcessesReceiver-IA;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkForceStop()V
    .locals 10

    .line 1492
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "android"

    .line 1494
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.miui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMiHomeManager:Lcom/android/settings/cust/MiHomeManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1495
    invoke-virtual {v0, v1}, Lcom/android/settings/cust/MiHomeManager;->isWhiteListPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1501
    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateForceStopButton(Z)V

    goto/16 :goto_1

    .line 1503
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "package"

    .line 1504
    invoke-static {v3, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1505
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1507
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1508
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force stop, package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstalledAppDetails"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v3, Landroid/os/UserHandle;

    iget v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 1497
    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateForceStopButton(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2

    .line 1235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1239
    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 1241
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 1242
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1244
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1246
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->checkForceStop()V

    return-void
.end method

.method private getExtraPkgName()Ljava/lang/String;
    .locals 5

    .line 416
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "package"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_4

    .line 419
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 421
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 422
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 424
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 425
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v0, :cond_4

    .line 429
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "intent"

    .line 430
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    if-eqz p0, :cond_3

    .line 431
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 432
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v3, v2

    :cond_4
    return-object v3
.end method

.method private getExtraXspaceApp()Z
    .locals 4

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_xspace_app"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 445
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/MiuiSettings;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 446
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_1
    return v0
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 1

    const/16 v0, -0xa

    if-eq p1, v0, :cond_4

    const/4 v0, -0x5

    if-eq p1, v0, :cond_3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1252
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->insufficient_storage:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1254
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->does_not_exist:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1260
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->system_package:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1258
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->invalid_location:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1256
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->app_forward_locked:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 272
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 274
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handlePermissonManagerPreference(Landroidx/preference/PreferenceCategory;)V
    .locals 2

    .line 395
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getExtraPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionManage:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private hasRelativeXSpaceApp(Ljava/lang/String;)Z
    .locals 4

    .line 770
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 774
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v2, 0x0

    const/16 v0, 0x3e7

    invoke-interface {p0, p1, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    const-string p0, "InstalledAppDetails"

    const-string p1, "Can\'t talk packageManager."

    .line 779
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private initDataButtons()V
    .locals 2

    .line 871
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 874
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    sget v1, Lcom/android/settings/R$string;->manage_space_text:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->setText(I)V

    goto :goto_0

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    sget v1, Lcom/android/settings/R$string;->clear_user_data_text:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->setText(I)V

    .line 884
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2

    .line 875
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    sget v1, Lcom/android/settings/R$string;->clear_user_data_text:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->setText(I)V

    .line 876
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 877
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanClearData:Z

    :goto_2
    return-void
.end method

.method private initFloatingWindowButton()V
    .locals 6

    .line 845
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 848
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 849
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_5

    .line 850
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 851
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 852
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mNeedRefreshFloatingWindow:Z

    if-eqz v0, :cond_2

    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x18

    invoke-virtual {v0, v5, v4, v3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 858
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 860
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 863
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mNeedRefreshFloatingWindow:Z

    if-eqz v0, :cond_4

    .line 864
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 866
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mNeedRefreshFloatingWindow:Z

    :cond_5
    return-void
.end method

.method private initNotificationButton()V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-nez v0, :cond_0

    return-void

    .line 835
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, ""

    .line 840
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 841
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    return-void
.end method

.method private initUninstallButtons()V
    .locals 6

    .line 1521
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 1522
    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUpdatedSysApp:Z

    if-eqz v4, :cond_2

    .line 1527
    sget v0, Lcom/android/settings/R$string;->app_factory_reset:I

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    goto :goto_3

    :cond_2
    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    .line 1535
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    .line 1536
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1537
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1538
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1539
    iget v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {v4, v0, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1541
    sget v4, Lcom/android/settings/R$drawable;->action_button_stop:I

    iput v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    if-eqz v0, :cond_3

    .line 1542
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->isThisASystemPackage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1544
    :cond_4
    sget v0, Lcom/android/settings/R$string;->disable_text:I

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    :goto_2
    move v3, v2

    goto :goto_3

    .line 1545
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_6

    .line 1546
    sget v0, Lcom/android/settings/R$string;->disable_text:I

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    goto :goto_2

    .line 1549
    :cond_6
    sget v0, Lcom/android/settings/R$string;->enable_text:I

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    goto :goto_3

    .line 1554
    :cond_7
    sget v0, Lcom/android/settings/R$drawable;->miuix_action_icon_delete_light:I

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    .line 1555
    sget v0, Lcom/android/settings/R$string;->uninstall_text:I

    iput v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    .line 1561
    :goto_3
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    move v2, v3

    .line 1565
    :goto_4
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateUnintallItem(Z)V

    return-void
.end method

.method private initiateClearUserData()V
    .locals 8

    .line 1212
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1217
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InstalledAppDetails"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    if-nez v2, :cond_1

    .line 1220
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    .line 1223
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearUserDataObserver;

    iget v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    const/4 v6, 0x1

    invoke-interface {v2, v0, v6, v4, v5}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    .line 1224
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    sget v4, Lcom/android/settings/R$string;->recompute_size:I

    invoke-virtual {v2, v4}, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->setText(I)V

    .line 1225
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x32

    invoke-virtual {v2, v7, v5, v4, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    .line 1230
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 405
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 407
    :try_start_0
    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 408
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    move p0, p2

    :cond_1
    return p0

    :catch_0
    move-exception p1

    const-string p2, "InstalledAppDetails"

    .line 410
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isThisASystemPackage()Z
    .locals 6

    .line 890
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.documentsui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 894
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string v2, "android"

    iget v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    const-wide/16 v4, 0x40

    invoke-interface {v0, v2, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 895
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_3

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    aget-object v2, v2, v1

    .line 896
    invoke-virtual {v0, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAlwaysEnabledAppList:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 897
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :catch_0
    :cond_3
    return v1
.end method

.method private synthetic lambda$setIntentAndFinish$0()V
    .locals 0

    .line 796
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method private noNeedToProtect()Z
    .locals 3

    .line 1587
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1590
    :cond_0
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 1591
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 3

    .line 636
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 637
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 638
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    sget v2, Lcom/android/settings/R$string;->clear_user_data_text:I

    invoke-virtual {v1, v2}, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->setText(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 640
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleared user data for package : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InstalledAppDetails"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_0

    .line 644
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 646
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->checkForceStop()V

    .line 648
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.android.settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 649
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->forceStopPackage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 2

    .line 616
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 617
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 619
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMoveInProgress:Z

    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 621
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moved resources for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InstalledAppDetails"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 626
    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    .line 628
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshUi()Z

    return-void
.end method

.method private refreshButtons()V
    .locals 1

    .line 809
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 810
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initUninstallButtons()V

    .line 811
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initDataButtons()V

    .line 812
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initNotificationButton()V

    .line 813
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->initFloatingWindowButton()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 815
    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->updateUnintallItem(Z)V

    :goto_0
    return-void
.end method

.method private refreshPermissions()V
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    return-void

    .line 824
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mShowMenus:Z

    if-eqz v1, :cond_2

    .line 825
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 826
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionManage:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private refreshSizeInfo()V
    .locals 9

    .line 904
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v3, -0x2

    cmp-long v3, v1, v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_b

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 917
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHaveSizes:Z

    .line 918
    iget-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->codeSize:J

    .line 919
    iget-wide v4, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->dataSize:J

    .line 920
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v7, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    add-long/2addr v2, v7

    .line 922
    iget-wide v7, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v4, v7

    .line 924
    :cond_1
    iget-wide v7, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCodeSize:J

    cmp-long v0, v7, v2

    if-eqz v0, :cond_2

    .line 925
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCodeSize:J

    .line 926
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefApplicationSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 928
    :cond_2
    iget-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastDataSize:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 929
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastDataSize:J

    .line 930
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefDataSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 932
    :cond_3
    iget-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalCodeSize:J

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v4, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 933
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalCodeSize:J

    .line 934
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefExternalCodeSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 937
    :cond_4
    iget-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalDataSize:J

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v4, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    .line 938
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastExternalDataSize:J

    .line 939
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefExternalDataSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 941
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-wide v4, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    add-long/2addr v2, v4

    .line 942
    iget-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCacheSize:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_6

    .line 943
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCacheSize:J

    .line 944
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefCacheSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 946
    :cond_6
    iget-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastTotalSize:J

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v7, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_7

    .line 947
    iput-wide v7, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastTotalSize:J

    .line 948
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefTotalSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getSizeStr(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 951
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v4, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->dataSize:J

    iget-wide v7, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v4, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mCanClearData:Z

    if-nez v0, :cond_8

    goto :goto_0

    .line 954
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 952
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    cmp-long v0, v2, v7

    if-gtz v0, :cond_a

    .line 957
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    invoke-virtual {p0, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 959
    :cond_a
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 960
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_3

    .line 906
    :cond_b
    :goto_2
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastTotalSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCacheSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastDataSize:J

    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mLastCodeSize:J

    .line 907
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mHaveSizes:Z

    if-nez v0, :cond_c

    .line 908
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefApplicationSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefDataSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefCacheSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefTotalSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 913
    :cond_c
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 914
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    invoke-virtual {p0, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_3
    return-void
.end method

.method private refreshUi()Z
    .locals 9

    const-string v0, "InstalledAppDetails"

    .line 485
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMoveInProgress:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 488
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getExtraXspaceApp()Z

    move-result v1

    .line 489
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getExtraPkgName()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    const/16 v1, 0x3e7

    goto :goto_0

    .line 493
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    .line 494
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v4, v3, v1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v4, 0x0

    if-nez v1, :cond_2

    return v4

    .line 502
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    const-wide/16 v7, 0x2240

    invoke-interface {v5, v1, v7, v8, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v1, :cond_3

    return v4

    .line 518
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 521
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 523
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v5, v1, v3}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 533
    :try_start_2
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget v6, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-interface {v5, v3, v6}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v5, "mUsbManager.hasDefaults"

    .line 535
    invoke-static {v0, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 549
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 551
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 555
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_4

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    const/4 v1, 0x0

    if-nez v0, :cond_5

    if-nez v3, :cond_5

    .line 557
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_6

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    move v5, v2

    goto :goto_4

    :cond_6
    move v5, v4

    .line 562
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$dimen;->installed_app_details_bullet_offset:I

    .line 563
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const-string v7, "\n"

    if-eqz v0, :cond_8

    .line 565
    sget v0, Lcom/android/settings/R$string;->auto_launch_enable_text:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 566
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_7

    .line 568
    new-instance v8, Landroid/text/style/BulletSpan;

    invoke-direct {v8, v6}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, v8, v4, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 571
    :cond_7
    filled-new-array {v1, v7}, [Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_8
    if-eqz v3, :cond_b

    .line 574
    sget v0, Lcom/android/settings/R$string;->always_allow_bind_appwidgets_text:I

    .line 575
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 576
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_9

    .line 578
    new-instance v5, Landroid/text/style/BulletSpan;

    invoke-direct {v5, v6}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 579
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 578
    invoke-virtual {v3, v5, v4, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_9
    if-nez v1, :cond_a

    .line 582
    filled-new-array {v3, v7}, [Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    :cond_a
    filled-new-array {v1, v7, v3, v7}, [Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_5
    move-object v1, v0

    .line 584
    :cond_b
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mShowMenus:Z

    if-eqz v0, :cond_c

    .line 585
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 587
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 594
    :cond_c
    :goto_6
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->checkForceStop()V

    .line 595
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 596
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshButtons()V

    .line 597
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshSizeInfo()V

    .line 598
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshPermissions()V

    return v2

    :catch_2
    move-exception v1

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when getPreferredActivities for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :catch_3
    move-exception v1

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when retrieving package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 800
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroidx/preference/Preference;

    if-nez p1, :cond_0

    return-void

    .line 803
    :cond_0
    sget p2, Lcom/android/settings/R$string;->auto_launch_disable_text:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 805
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroidx/preference/Preference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 607
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->version_text:I

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 p1, 0x0

    .line 612
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefAppInfo:Lcom/android/settings/applications/AppInfoPreference;

    new-instance v2, Lcom/android/settings/applications/AppInfoPreference$AppInfo;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-direct {v2, v3, p0, p1, v0}, Lcom/android/settings/applications/AppInfoPreference$AppInfo;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/AppInfoPreference;->setAppInfo(Lcom/android/settings/applications/AppInfoPreference$AppInfo;)V

    return-void
.end method

.method private setFloatingWindowEnabled(Z)V
    .locals 3

    .line 1268
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    xor-int/lit8 p1, p1, 0x1

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1, p0, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 0

    .line 796
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/android/settings/applications/InstalledAppDetailsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showDialogInner(II)V
    .locals 1

    const-string v0, ""

    .line 655
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showDialogInner(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_0

    return-void

    .line 662
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->newInstance(IILjava/lang/String;Ljava/lang/String;)Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    move-result-object p2

    const/4 p3, 0x0

    .line 663
    invoke-virtual {p2, p0, p3}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 666
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "dialog "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 668
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startAppManagerDetailActivity()Z
    .locals 5

    .line 370
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mShowMenus:Z

    if-eqz v0, :cond_2

    .line 371
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->getExtraPkgName()Ljava/lang/String;

    move-result-object v0

    .line 372
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.APP_MANAGER_APPLICATION_DETAIL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.miui.securitycenter"

    .line 373
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "package_name"

    .line 374
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "miui.intent.extra.USER_ID"

    .line 377
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v4, "is_xspace_app"

    .line 380
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e7

    goto :goto_0

    .line 381
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 383
    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 386
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private uninstallPkg(Ljava/lang/String;I)V
    .locals 6

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uninstall package, package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstalledAppDetails"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "uninstall package, pm is null."

    .line 745
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 748
    :cond_0
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v2

    const-string v3, "Error when uninstall package, "

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 750
    :try_start_0
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver-IA;)V

    invoke-virtual {v0, p1, v2, v4, p2}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 753
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 757
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;Lcom/android/settings/applications/InstalledAppDetailsFragment$DeleteObserver-IA;)V

    invoke-virtual {v0, p1, v2, v4, p2}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 758
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->hasRelativeXSpaceApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x3e7

    .line 759
    invoke-virtual {v0, p1, v5, v4, p0}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 763
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 0

    .line 1485
    iput-boolean p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mFinishEnable:Z

    .line 1486
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    if-eqz p0, :cond_0

    .line 1487
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private updateUnintallItem(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMiHomeManager:Lcom/android/settings/cust/MiHomeManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/cust/MiHomeManager;->isWhiteListPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.amazon.appmanager"

    .line 1570
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 1574
    :cond_2
    iput-boolean p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallEnable:Z

    .line 1576
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 1577
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1578
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    iget v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1579
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    iget p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 267
    const-class p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .line 0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 279
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "show_menus"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mShowMenus:Z

    .line 282
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->startAppManagerDetailActivity()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 286
    :cond_0
    sget p1, Lcom/android/settings/R$string;->uninstall_text:I

    iput p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    .line 287
    sget p1, Lcom/android/settings/R$drawable;->action_button_stop:I

    iput p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    .line 289
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->computing_size:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mComputingStr:Ljava/lang/CharSequence;

    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->always_enabled_app_list:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 292
    new-instance v0, Ljava/util/HashSet;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAlwaysEnabledAppList:Ljava/util/HashSet;

    .line 293
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    .line 294
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAlwaysEnabledAppList:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/cust/MiHomeManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/cust/MiHomeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mMiHomeManager:Lcom/android/settings/cust/MiHomeManager;

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 299
    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    const-string/jumbo p1, "package"

    .line 300
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string/jumbo p1, "usb"

    .line 302
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 303
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 304
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 305
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 307
    sget-boolean p1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz p1, :cond_2

    sget p1, Lcom/android/settings/R$xml;->installed_app_details_fragment_global:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/android/settings/R$xml;->installed_app_details_fragment:I

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "applications_info"

    .line 309
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/AppInfoPreference;

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefAppInfo:Lcom/android/settings/applications/AppInfoPreference;

    .line 310
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    const-string/jumbo p1, "total_size"

    .line 311
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefTotalSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string p1, "application_size"

    .line 312
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefApplicationSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string p1, "external_code_size"

    .line 313
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefExternalCodeSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string p1, "data_size"

    .line 314
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefDataSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string p1, "external_data_size"

    .line 315
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefExternalDataSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string p1, "cache_size"

    .line 316
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefCacheSize:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string p1, "clear_data"

    .line 317
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearData:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    const-string p1, "clear_cache"

    .line 318
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearCache:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    .line 319
    sget v0, Lcom/android/settings/R$string;->clear_cache_btn_text:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->setText(I)V

    const-string/jumbo p1, "notification_switch"

    .line 320
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string p1, "floating_window_switch"

    .line 321
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroidx/preference/CheckBoxPreference;

    const-string p1, "clear_default_settings"

    .line 322
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefClearDefaultSettings:Landroidx/preference/Preference;

    const-string/jumbo p1, "permission_detail_info"

    .line 323
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionDetailInfo:Landroidx/preference/Preference;

    .line 324
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "permission_manage"

    .line 325
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionManage:Landroidx/preference/Preference;

    const-string/jumbo p1, "permission_settings"

    .line 326
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionSettings:Landroidx/preference/Preference;

    const-string/jumbo p1, "notification_label"

    .line 328
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "permissions_label"

    .line 329
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v3, "auto_launch_label"

    .line 330
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    .line 331
    iget-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mShowMenus:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 332
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_3

    .line 333
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 334
    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroidx/preference/CheckBoxPreference;

    .line 338
    :cond_3
    sget-boolean p1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz p1, :cond_4

    .line 339
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionSettings:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 340
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionManage:Landroidx/preference/Preference;

    if-eqz p1, :cond_5

    .line 341
    sget v2, Lcom/android/settings/R$string;->permission_manage_global_build_title:I

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_2

    .line 344
    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionSettings:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 345
    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionSettings:Landroidx/preference/Preference;

    .line 348
    :cond_5
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->handlePermissonManagerPreference(Landroidx/preference/PreferenceCategory;)V

    .line 351
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionDetailInfo:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 352
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionManage:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 353
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    goto :goto_3

    .line 355
    :cond_6
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 356
    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefFloatingWindowSwitch:Landroidx/preference/CheckBoxPreference;

    .line 357
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 358
    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefNotificationSwitch:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 359
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 361
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 363
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 365
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    :goto_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 1395
    sget p2, Lcom/android/settings/R$string;->finish_application:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    .line 1396
    sget v2, Lcom/android/settings/R$drawable;->action_button_discard:I

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1397
    iget-object p2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mFinishEnable:Z

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1398
    iget-object p2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemFinish:Landroid/view/MenuItem;

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p2, 0x2

    .line 1400
    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallTextRes:I

    invoke-interface {p1, v0, p2, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    .line 1401
    iget p2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallIconRes:I

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1402
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    iget-boolean p2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUninstallEnable:Z

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1403
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mItemUninstall:Landroid/view/MenuItem;

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 478
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 479
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz p0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 1409
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    .line 1415
    :cond_0
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1416
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1417
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1418
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    .line 1419
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1421
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 1424
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUpdatedSysApp:Z

    if-eqz v0, :cond_2

    .line 1425
    invoke-direct {p0, v3, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto/16 :goto_2

    .line 1427
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_4

    .line 1428
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    .line 1429
    invoke-direct {p0, v0, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto/16 :goto_2

    .line 1431
    :cond_3
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/content/pm/ApplicationInfo;I)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 1433
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 1435
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->noNeedToProtect()Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_8

    .line 1438
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    const-string v4, "app_description_title"

    .line 1439
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1440
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "app_description_content"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 1443
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v0, v5}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1444
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v4, v5}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v3

    .line 1447
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 1451
    :cond_6
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xb

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1449
    :cond_7
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto :goto_2

    .line 1454
    :cond_8
    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto :goto_2

    :cond_9
    const/4 v0, 0x5

    .line 1411
    invoke-direct {p0, v0, v2}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    .line 1460
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 678
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshUi()Z

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshSizeInfo()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 470
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 471
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz p0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 1274
    iget-object p2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1277
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p2, "floating_window_switch"

    .line 1278
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    .line 1279
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 1287
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1290
    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1291
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "notification_switch"

    .line 1293
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 1294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 1299
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1301
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v3, :cond_2

    return v1

    .line 1306
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.MAIN"

    .line 1307
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$NotificationFilterActivity"

    .line 1308
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    const-string v3, "appName"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "packageName"

    .line 1310
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1313
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    const-string v2, ":miui:starting_window_label"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_3
    const-string v2, "clear_data"

    .line 1315
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1316
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 1317
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-nez p1, :cond_d

    .line 1318
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1323
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 p0, -0x1

    invoke-virtual {v0, p1, p0, v2}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto/16 :goto_3

    :cond_4
    const/4 p1, 0x1

    .line 1329
    invoke-direct {p0, p1, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->showDialogInner(II)V

    goto/16 :goto_3

    :cond_5
    const-string v2, "clear_cache"

    .line 1331
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "InstalledAppDetails"

    if-eqz v2, :cond_7

    .line 1332
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    if-nez p1, :cond_6

    .line 1333
    new-instance p1, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    .line 1338
    :cond_6
    :try_start_1
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetailsFragment$ClearCacheObserver;

    invoke-interface {p1, v0, v2, p0}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p0

    const-string p1, "Can not clear cache for pkg,"

    .line 1341
    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_7
    const-string v2, "clear_default_settings"

    .line 1343
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1345
    :try_start_2
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p1, v0}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1350
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-interface {p1, v0, v2}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    const-string/jumbo v2, "mUsbManager.clearDefaults"

    .line 1352
    invoke-static {v4, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1354
    :goto_1
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1355
    invoke-direct {p0, v3, v3}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v2, "permission_detail_info"

    .line 1356
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1357
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    const-string v0, "extra_package_application"

    if-eqz p1, :cond_9

    .line 1358
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1359
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1360
    const-class p1, Lcom/android/settings/applications/PermissionInfoFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_3

    .line 1362
    :cond_9
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/android/settings/applications/PermissionInfoActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1363
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1364
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_a
    const-string/jumbo v2, "permission_manage"

    .line 1366
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    const-string v5, "android.intent.action.MANAGE_APP_PERMISSIONS"

    if-eqz v2, :cond_c

    .line 1368
    :try_start_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1369
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1370
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1371
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_b
    const-string/jumbo v2, "miui.intent.action.APP_PERM_EDITOR_PRIVATE"

    .line 1373
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_pkgname"

    .line 1374
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1376
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    const-string p1, "No app can handle MANAGE_APP_PERMISSIONS or APP_PERM_EDITOR_PRIVATE"

    .line 1378
    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_c
    const-string/jumbo v0, "permission_settings"

    .line 1380
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1381
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1384
    :try_start_4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    const-string p1, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    .line 1386
    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_3
    return v1
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 453
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 455
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onResume()V

    .line 456
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 457
    invoke-direct {p0, v0, v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->setIntentAndFinish(ZZ)V

    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionDetailInfo:Landroidx/preference/Preference;

    if-nez v0, :cond_1

    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/PermissionInfoFragment;->parsePermission(ILandroid/content/Context;)Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mPrefPermissionDetailInfo:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->permission_detail_info_summary:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 465
    invoke-virtual {v0}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->getSecurityCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->getPrivacyCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/applications/PermissionInfoFragment$PermissionSet;->getOtherCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 464
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method
