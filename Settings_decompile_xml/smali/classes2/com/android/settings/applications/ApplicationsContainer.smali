.class public Lcom/android/settings/applications/ApplicationsContainer;
.super Lcom/android/settings/BaseFragment;
.source "ApplicationsContainer.java"

# interfaces
.implements Lcom/android/settings/applications/ManageAppClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ApplicationsContainer$TabInfo;,
        Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;
    }
.end annotation


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mActivity:Lmiuix/appcompat/app/AppCompatActivity;

.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field public mCurTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

.field mCurrentEntity:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mOptionsMenu:Landroid/view/Menu;

.field private mResetDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mSortOrder:I

.field private mState:Lcom/android/settings/applications/RunningState;

.field private mTabTexts:[I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ApplicationsContainer$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityResumed(Lcom/android/settings/applications/ApplicationsContainer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActivityResumed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSortOrder(Lcom/android/settings/applications/ApplicationsContainer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mSortOrder:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTabs(Lcom/android/settings/applications/ApplicationsContainer;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 4

    .line 77
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    const/4 v0, 0x4

    .line 111
    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mSortOrder:I

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabs:Ljava/util/ArrayList;

    .line 126
    sget v0, Lcom/android/settings/R$string;->filter_apps_all:I

    sget v1, Lcom/android/settings/R$string;->filter_apps_third_party:I

    sget v2, Lcom/android/settings/R$string;->filter_apps_running:I

    sget v3, Lcom/android/settings/R$string;->filter_apps_cached:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabTexts:[I

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mDefaultListType:I

    return-void
.end method

.method private handleRunningState(I)V
    .locals 2

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 352
    :cond_0
    sget p1, Lcom/android/settings/R$string;->filter_apps_cached:I

    .line 353
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/RunningApplicationsFragment;

    goto :goto_0

    .line 347
    :cond_1
    sget p1, Lcom/android/settings/R$string;->filter_apps_running:I

    .line 348
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 347
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/RunningApplicationsFragment;

    :goto_0
    if-eqz p1, :cond_2

    .line 358
    invoke-virtual {p1}, Lcom/android/settings/applications/RunningApplicationsFragment;->resumeRunningState()V

    goto :goto_1

    .line 361
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/ApplicationsContainer;->pauseRunningState()V

    :goto_1
    return-void
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "sortOrder"

    .line 230
    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mSortOrder:I

    const-string v0, "defaultListType"

    const/4 v1, -0x1

    .line 231
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 233
    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mDefaultListType:I

    :cond_1
    const-string/jumbo v0, "resetDialog"

    .line 236
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/applications/ApplicationsContainer;->buildResetDialog()V

    :cond_2
    return-void
.end method

.method private onViewPagerChanged(I)V
    .locals 1

    .line 335
    iput p1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mDefaultListType:I

    .line 336
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mCurTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsContainer;->updateCurrentTab(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)V

    .line 339
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer;->handleRunningState(I)V

    return-void
.end method

.method private pauseRunningState()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mState:Lcom/android/settings/applications/RunningState;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    if-eqz v0, :cond_0

    const-string v0, "ApplicationsContainer"

    const-string/jumbo v1, "pause RunningState"

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningState;->pause()V

    :cond_0
    return-void
.end method

.method private setupContents()V
    .locals 10

    .line 259
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 263
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;Z)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    move v0, v2

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabTexts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 267
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v5

    .line 268
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabTexts:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 269
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabTexts:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    move-object v7, v1

    move v1, v2

    goto :goto_3

    .line 291
    :cond_1
    const-class v3, Lcom/android/settings/applications/RunningApplicationsFragment;

    goto :goto_2

    .line 286
    :cond_2
    const-class v3, Lcom/android/settings/applications/RunningApplicationsFragment;

    goto :goto_2

    .line 281
    :cond_3
    const-class v3, Lcom/android/settings/applications/ManageApplicationsFragment;

    :goto_2
    move-object v7, v3

    goto :goto_3

    .line 276
    :cond_4
    const-class v1, Lcom/android/settings/applications/ManageApplicationsFragment;

    goto :goto_1

    .line 295
    :goto_3
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v3, "filter_app_key"

    .line 296
    invoke-virtual {v8, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v9, 0x1

    move v6, v0

    invoke-virtual/range {v3 .. v9}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;ILjava/lang/Class;Landroid/os/Bundle;Z)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    iget p0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mDefaultListType:I

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 3

    .line 518
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.InstalledAppDetailsTop"

    .line 519
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "package"

    .line 520
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsContainer;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mCurrentEntity:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-boolean v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isXSpaceApp:Z

    const-string v2, "is_xspace_app"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, ":android:show_fragment_title"

    .line 522
    sget v2, Lcom/android/settings/R$string;->application_info_label:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .line 930
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mResetDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 931
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 932
    sget v1, Lcom/android/settings/R$string;->reset_app_preferences_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 933
    sget v1, Lcom/android/settings/R$string;->reset_app_preferences_desc:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 934
    sget v1, Lcom/android/settings/R$string;->reset_app_preferences_button:I

    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 935
    sget v1, Lcom/android/settings/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 936
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mResetDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 937
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public getDefaultListType()I
    .locals 0

    .line 926
    iget p0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mDefaultListType:I

    return p0
.end method

.method public getTabs()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ApplicationsContainer$TabInfo;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 169
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 170
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.miui.securitycenter"

    const-string v1, "com.miui.appmanager.AppManagerMainActivity"

    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "enter_way"

    const-string/jumbo v1, "settings"

    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/MiuiUtils;->isActivityAvalible(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 950
    iget-object p2, p0, Lcom/android/settings/applications/ApplicationsContainer;->mResetDialog:Lmiuix/appcompat/app/AlertDialog;

    if-ne p2, p1, :cond_0

    .line 951
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo p1, "notification"

    .line 953
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 952
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 954
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    .line 955
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 956
    new-instance p1, Lcom/android/settings/applications/ApplicationsContainer$1;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/ApplicationsContainer$1;-><init>(Lcom/android/settings/applications/ApplicationsContainer;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 1015
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    .line 138
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 139
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.APPLICATION_LIST_TYPE"

    const/4 v2, 0x0

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mDefaultListType:I

    .line 141
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mState:Lcom/android/settings/applications/RunningState;

    .line 143
    new-instance v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsContainer;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    sget v1, Lcom/android/settings/R$string;->filter_apps_all:I

    .line 144
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;-><init>(Lcom/android/settings/applications/ApplicationsContainer;Lcom/android/settingslib/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/ManageAppClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsContainer;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    sget v1, Lcom/android/settings/R$string;->filter_apps_third_party:I

    .line 149
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v2, v0

    move-object v3, p0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;-><init>(Lcom/android/settings/applications/ApplicationsContainer;Lcom/android/settingslib/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/ManageAppClickListener;)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsContainer;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    sget v1, Lcom/android/settings/R$string;->filter_apps_running:I

    .line 154
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;-><init>(Lcom/android/settings/applications/ApplicationsContainer;Lcom/android/settingslib/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/ManageAppClickListener;)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsContainer;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    sget v1, Lcom/android/settings/R$string;->filter_apps_cached:I

    .line 159
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;-><init>(Lcom/android/settings/applications/ApplicationsContainer;Lcom/android/settingslib/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/ManageAppClickListener;)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo p0, "setting_Apps_appmanger"

    .line 164
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 858
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 860
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mOptionsMenu:Landroid/view/Menu;

    const/4 p0, 0x1

    .line 863
    sget p2, Lcom/android/settings/R$string;->sort_order_alpha:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1, p0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    .line 865
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p0, 0x2

    .line 866
    sget p2, Lcom/android/settings/R$string;->sort_order_size:I

    const/4 v2, 0x5

    invoke-interface {p1, v0, v2, p0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    .line 868
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 p0, 0x8

    .line 869
    sget p2, Lcom/android/settings/R$string;->reset_app_preferences:I

    invoke-interface {p1, v0, p0, v1, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    .line 870
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 p0, 0x9

    .line 871
    sget p2, Lcom/android/settings/R$string;->preferred_app_settings:I

    invoke-interface {p1, v0, p0, v2, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    sget p1, Lcom/android/settings/R$drawable;->action_button_setting:I

    .line 872
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p0

    .line 873
    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    const/4 v0, 0x0

    .line 305
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabTexts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->detachView()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onDetach()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mResetDialog:Lmiuix/appcompat/app/AlertDialog;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 944
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mResetDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/android/settings/applications/ApplicationsContainer;->setupContents()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onItemClick(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/ApplicationsContainer$TabInfo;",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 499
    iget-object p2, p1, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mApplications:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->getCount()I

    move-result p2

    if-le p2, p4, :cond_1

    .line 500
    iget-object p1, p1, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mApplications:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {p1, p4}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mCurrentEntity:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 501
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mCurrentPkgName:Ljava/lang/String;

    .line 502
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    instance-of p1, p1, Lcom/android/settings/MiuiSettings;

    if-eqz p1, :cond_0

    .line 503
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p1, "package"

    .line 504
    iget-object p2, p0, Lcom/android/settings/applications/ApplicationsContainer;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    sget v5, Lcom/android/settings/R$string;->application_info_label:I

    const-string p1, ":android:show_fragment_title"

    invoke-virtual {v4, p1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 506
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mCurrentEntity:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-boolean p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isXSpaceApp:Z

    const-string p2, "is_xspace_app"

    invoke-virtual {v4, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 507
    const-class p1, Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/BaseFragment;->startFragment(Lmiuix/appcompat/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/ApplicationsContainer;->startApplicationDetailsActivity()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    .line 906
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 915
    invoke-virtual {p0}, Lcom/android/settings/applications/ApplicationsContainer;->buildResetDialog()V

    goto :goto_3

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 917
    const-class p1, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/BaseFragment;->startFragment(Lmiuix/appcompat/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_3

    .line 920
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 908
    :cond_3
    :goto_0
    iget p1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mSortOrder:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    move p1, v2

    goto :goto_1

    :cond_4
    move p1, v1

    .line 909
    :goto_1
    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mSortOrder:I

    :goto_2
    if-gt v1, v2, :cond_5

    .line 911
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->setUpdate(Z)V

    .line 912
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsContainer;->updateCurrentTab(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v2
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer;->onViewPagerChanged(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 210
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActivityResumed:Z

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->pause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/ApplicationsContainer;->pauseRunningState()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 879
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 881
    invoke-virtual {p0}, Lcom/android/settings/applications/ApplicationsContainer;->updateOptionsMenu()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 190
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActivityResumed:Z

    const/4 v0, -0x1

    .line 193
    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mDefaultListType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mDefaultListType:I

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mTabs:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mDefaultListType:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mCurTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    .line 201
    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mDefaultListType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    iget-boolean v1, v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mIsBuild:Z

    if-eqz v1, :cond_3

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsContainer;->updateCurrentTab(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)V

    goto :goto_1

    .line 202
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ApplicationsContainer;->handleRunningState(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 243
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sortOrder"

    .line 245
    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "defaultListType"

    .line 247
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mResetDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p0, :cond_1

    const-string/jumbo p0, "resetDialog"

    const/4 v0, 0x1

    .line 250
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 181
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    .line 182
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mResetDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mResetDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public updateCurrentTab(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)V
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/applications/ApplicationsContainer;->updateOptionsMenu()V

    .line 481
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->invalidateOptionsMenu()V

    .line 483
    invoke-virtual {p1}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 486
    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mCurTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    .line 489
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mActivityResumed:Z

    if-eqz v0, :cond_1

    .line 490
    iget p0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mSortOrder:I

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->resume(I)V

    goto :goto_0

    .line 492
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->pause()V

    :goto_0
    return-void
.end method

.method updateOptionsMenu()V
    .locals 7

    .line 885
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    .line 893
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mCurTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    iget v1, v1, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mListType:I

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v6, :cond_4

    .line 894
    :cond_1
    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mSortOrder:I

    if-eq v1, v4, :cond_2

    move v1, v6

    goto :goto_0

    :cond_2
    move v1, v5

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 895
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer;->mSortOrder:I

    if-eq v1, v3, :cond_3

    move v5, v6

    :cond_3
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 896
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 898
    :cond_4
    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 899
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 900
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return-void
.end method
