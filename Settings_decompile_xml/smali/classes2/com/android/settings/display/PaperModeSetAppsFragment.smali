.class public Lcom/android/settings/display/PaperModeSetAppsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaperModeSetAppsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PaperModeSetAppsFragment$FilterItemPreference;
    }
.end annotation


# static fields
.field private static final WHITE_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPaperModeAppsCategory:Landroidx/preference/PreferenceCategory;

.field private mPaperModeOffAppsCategory:Landroidx/preference/PreferenceCategory;

.field private mPkg2PaperMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatepkgListTask:Lmiuix/os/AsyncTaskWithProgress;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/settings/display/PaperModeSetAppsFragment;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPkg2PaperMode(Lcom/android/settings/display/PaperModeSetAppsFragment;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPkg2PaperMode:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmUpdatepkgListTask(Lcom/android/settings/display/PaperModeSetAppsFragment;Lmiuix/os/AsyncTaskWithProgress;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mUpdatepkgListTask:Lmiuix/os/AsyncTaskWithProgress;

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadPackages(Lcom/android/settings/display/PaperModeSetAppsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->loadPackages()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePkgList(Lcom/android/settings/display/PaperModeSetAppsFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PaperModeSetAppsFragment;->updatePkgList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetWHITE_LIST()Ljava/util/HashSet;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/display/PaperModeSetAppsFragment;->WHITE_LIST:Ljava/util/HashSet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-object v0, Lcom/android/settings/display/DisplayUtils;->WHITE_LIST:Ljava/util/HashSet;

    sput-object v0, Lcom/android/settings/display/PaperModeSetAppsFragment;->WHITE_LIST:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 96
    new-instance v0, Lcom/android/settings/display/PaperModeSetAppsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PaperModeSetAppsFragment$1;-><init>(Lcom/android/settings/display/PaperModeSetAppsFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/PaperModeSetAppsFragment;)Landroid/content/Context;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/PaperModeSetAppsFragment;)Landroid/content/Context;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private loadPackages()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 151
    iget-object v2, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "screen_paper_mode_white_list"

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$ScreenEffect;->getScreenModePkgList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPkg2PaperMode:Ljava/util/HashMap;

    .line 153
    iget-object v2, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mUpdatepkgListTask:Lmiuix/os/AsyncTaskWithProgress;

    if-nez v2, :cond_0

    .line 154
    new-instance v2, Lcom/android/settings/display/PaperModeSetAppsFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/display/PaperModeSetAppsFragment$2;-><init>(Lcom/android/settings/display/PaperModeSetAppsFragment;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mUpdatepkgListTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 192
    sget p0, Lcom/android/settings/R$string;->screen_paper_mode_apps_loading:I

    invoke-virtual {v2, p0}, Lmiuix/os/AsyncTaskWithProgress;->setMessage(I)Lmiuix/os/AsyncTaskWithProgress;

    move-result-object p0

    .line 193
    invoke-virtual {p0, v1}, Lmiuix/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiuix/os/AsyncTaskWithProgress;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    .line 194
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private updatePkgList(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/display/PaperModeSetAppsFragment$FilterItemPreference;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/display/PaperModeSetAppsFragment$FilterItemPreference;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 117
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPaperModeAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPaperModeOffAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPaperModeAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v0, v1

    .line 122
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPaperModeAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 128
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPaperModeOffAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 129
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPaperModeOffAppsCategory:Landroidx/preference/PreferenceCategory;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 53
    const-class p0, Lcom/android/settings/display/PaperModeSetAppsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    sget p1, Lcom/android/settings/R$xml;->paper_mode_apps:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "paper_mode_pkg_list"

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPaperModeAppsCategory:Landroidx/preference/PreferenceCategory;

    .line 68
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "paper_mode_off_pkg_list"

    .line 69
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPaperModeOffAppsCategory:Landroidx/preference/PreferenceCategory;

    .line 71
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mUpdatepkgListTask:Lmiuix/os/AsyncTaskWithProgress;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mUpdatepkgListTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 87
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 105
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 106
    instance-of p1, p1, Lcom/android/settings/display/PaperModeSetAppsFragment$FilterItemPreference;

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPkg2PaperMode:Ljava/util/HashMap;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object p1, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settings/display/PaperModeSetAppsFragment;->mPkg2PaperMode:Ljava/util/HashMap;

    const-string/jumbo v0, "screen_paper_mode_white_list"

    invoke-static {p1, p2, v0}, Landroid/provider/MiuiSettings$ScreenEffect;->setScreenModePkgList(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->loadPackages()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/display/PaperModeSetAppsFragment;->loadPackages()V

    return-void
.end method
